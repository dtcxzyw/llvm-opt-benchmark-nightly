inline.NumInlined: 32791
inline.NumDeleted: 4746
loop-unroll.NumCompletelyUnrolled: 60
loop-unroll.NumRuntimeUnrolled: 1718
loop-unroll.NumUnrolled: 1778
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_29FastPackedSmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE0EEEE21PrependElementIndicesEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE:bb.a
  %.0.in.in.i.i.i.i.i = lshr i64 %.0.in.in.in.i.i.i.i.i, 32
  %i.cw = icmp samesign ult i64 %.02651.i.i, %.0.in.in.i.i.i.i.i
  br i1 %i.cw, label %bb.k, label %bb.t

bb.k:                                             ; preds = %.lr.ph.split.i.i
  %i.cx = icmp samesign ult i64 %.02651.i.i, 2147483648
  br i1 %i.cx, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cy = shl nuw nsw i64 %.02651.i.i, 32         ; 2 uses
  %i.cz = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.da = load ptr, ptr %i.aw, align 8
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %bb.m, label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i, !prof !5

bb.m:                                             ; preds = %bb.l
  %i.dc = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %1) #23
  br label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i

_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i = phi ptr [ %i.dc, %bb.m ], [ %i.cz, %bb.l ] ; 2 uses
  %i.dd = ptrtoint ptr %.0.i.i.i.i.i.i to i64
  %i.de = add i64 %i.dd, 8
  %i.df = inttoptr i64 %i.de to ptr
  store ptr %i.df, ptr %i.av, align 8
  store i64 %i.cy, ptr %.0.i.i.i.i.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i

bb.n:                                             ; preds = %bb.k
  %i.dg = uitofp nneg i64 %.02651.i.i to double
  %i.dh = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #23 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = add i64 %i.di, -1
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store double %i.dg, ptr %i.dl, align 1
  %.pre.i.i = load i64, ptr %i.dh, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i

_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i: ; preds = %bb.n, %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i
  %i.dm = phi i64 [ %i.cy, %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i ], [ %.pre.i.i, %bb.n ] ; 5 uses
  %i.dn = load i64, ptr %.sroa.069.0.i, align 8
  %i.do = add i64 %i.dn, -1                       ; 3 uses
  %i.dp = inttoptr i64 %i.do to ptr
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = sext i32 %.054.i.i to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.dr ; 2 uses
  store atomic volatile i64 %i.dm, ptr %i.ds monotonic, align 8
  %i.dt = trunc i64 %i.dm to i1
  br i1 %i.dt, label %bb.o, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i

bb.o:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i
  %i.du = or disjoint i64 %i.do, 1                ; 2 uses
  %i.dv = ptrtoint ptr %i.ds to i64               ; 2 uses
  %i.dw = and i64 %i.do, -262144
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = load i64, ptr %i.dx, align 262144       ; 2 uses
  %i.dz = and i64 %i.dy, 32
  %.not.i.i.i.i.i27.i.i = icmp eq i64 %i.dz, 0
  %i.ea = and i64 %i.dy, 25
  %.not37.i.i.i.i.i28.i.i = icmp eq i64 %i.ea, 0
  br i1 %.not37.i.i.i.i.i28.i.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.eb = and i64 %i.dm, -262144
  %i.ec = inttoptr i64 %i.eb to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i29.i.i = load i64, ptr %i.ec, align 262144
  %i.ed = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i29.i.i, 25
  %.not38.i.i.i.i.i30.i.i = icmp eq i64 %i.ed, 0
  br i1 %.not38.i.i.i.i.i30.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.du, i64 noundef %i.dv, i64 %i.dm) #23
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  br i1 %.not.i.i.i.i.i27.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i, label %bb.s, !prof !13

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.du, i64 %i.dv, i64 %i.dm) #23
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i: ; preds = %bb.s, %bb.r, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i
  %i.ee = add i32 %.054.i.i, 1
  br label %bb.t

bb.t:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i, %.lr.ph.split.i.i
  %.1.i.i = phi i32 [ %i.ee, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i ], [ %.054.i.i, %.lr.ph.split.i.i ] ; 2 uses
  %i.ef = add nuw nsw i64 %.02651.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ef, %.0.in.in.i.i58.i
  br i1 %exitcond.not.i.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_29FastPackedSmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE0EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i, label %.lr.ph.split.i.i, !llvm.loop !3332

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_29FastPackedSmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE0EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i: ; preds = %bb.t, %bb.j, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i
  %.0.lcssa.i.i = phi i32 [ 0, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i ], [ %.1.us.i.i, %bb.j ], [ %.1.i.i, %bb.t ] ; 3 uses
  %i.eg = load i64, ptr %4, align 8               ; 2 uses
  %i.eh = load i64, ptr %.sroa.069.0.i, align 8   ; 3 uses
  %i.ei = icmp slt i64 %i.e, 0
  br i1 %i.ei, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_29FastPackedSmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE0EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i
  %i.ej = add i64 %i.eg, -1
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load i64, ptr %i.el, align 8
  %i.en = lshr i64 %i.em, 32
  %i.eo = trunc nuw i64 %i.en to i32
  %i.ep = add i64 %i.eh, -1
  %i.eq = inttoptr i64 %i.ep to ptr               ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load i64, ptr %i.er, align 8
  %i.et = lshr i64 %i.es, 32
  %i.eu = trunc nuw i64 %i.et to i32              ; 2 uses
  %i.ev = sub i32 %i.eu, %.0.lcssa.i.i
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %i.ev, i32 %i.eo) ; 3 uses
  %i.ew = add i32 %.sroa.speculated.i.i, %.0.lcssa.i.i ; 2 uses
  %i.ex = sub nsw i32 %i.eu, %i.ew                ; 2 uses
  %i.ey = icmp sgt i32 %i.ex, 0
  br i1 %i.ey, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.fa = sext i32 %i.ew to i64
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = zext nneg i32 %i.ex to i64
  %i.ff = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.fd, i64 %i.fe, ptr nonnull %i.fb) #23, !srcloc !3333 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_29FastPackedSmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE0EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i
  %.0.i59.i = phi i32 [ %i.g, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_29FastPackedSmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE0EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i ], [ %.sroa.speculated.i.i, %bb.v ], [ %.sroa.speculated.i.i, %bb.u ] ; 2 uses
  %i.fg = icmp eq i32 %.0.i59.i, 0
  br i1 %i.fg, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_29FastPackedSmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE0EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit, label %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i

_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i: ; preds = %bb.w
  %i.fh = sext i32 %.0.lcssa.i.i to i64
  %i.fi = add i64 %i.eh, 15
  %.idx.i.i.i.i = shl nsw i64 %i.fh, 3
  %i.fj = add i64 %i.fi, %.idx.i.i.i.i
  %i.fk = add i64 %i.eg, 15
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 55464
  tail call void @_ZN2v88internal4Heap9CopyRangeINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S7_iNS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(2992) %i.fl, i64 %i.eh, i64 %i.fj, i64 %i.fk, i32 noundef %.0.i59.i, i32 noundef 4) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_29FastPackedSmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE0EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_29FastPackedSmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE0EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit: ; preds = %bb.b, %bb.w, %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i
  %.sroa.083.1.i = phi ptr [ null, %bb.b ], [ %.sroa.069.0.i, %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i ], [ %.sroa.069.0.i, %bb.w ]
  ret ptr %.sroa.083.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_29FastPackedSmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE0EEEE27AddElementsToKeyAccumulatorENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8                ; 4 uses
  %i.b = load i64, ptr %1, align 8
  %i.c = add i64 %i.b, 15
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 560 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
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
  %i.o = load i64, ptr %1, align 8                ; 2 uses
  %i.p = add i64 %i.o, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.s = add i64 %i.r, 11
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i16, ptr %i.t monotonic, align 2
  %i.v = icmp eq i16 %i.u, 2119
  %i.w = add i64 %i.o, 23
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = add i64 %i.e, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.0.in.in.in.in.i.i.i = select i1 %i.v, ptr %i.x, ptr %i.aa
  %.0.in.in.in.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i, align 8
  %.0.in.in.i.i.i = lshr i64 %.0.in.in.in.i.i.i, 32 ; 2 uses
  %.not44.i = icmp eq i64 %.0.in.in.i.i.i, 0
  br i1 %.not44.i, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_29FastPackedSmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE0EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_29FastPackedSmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE0EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i
  %.02245.i = phi i64 [ %i.aq, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_29FastPackedSmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE0EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i ], [ 0, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ] ; 2 uses
  %i.ab = load i64, ptr %.0.i.i.i, align 8
  %i.ac = add i64 %i.ab, -1
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %sext.i25.i = shl i64 %.02245.i, 32
  %i.af = ashr exact i64 %sext.i25.i, 29
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 %i.af
  %i.ah = load atomic volatile i64, ptr %i.ag monotonic, align 8
  %i.ai = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.aj = load ptr, ptr %i.h, align 8
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.c, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_29FastPackedSmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE0EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i, !prof !5

bb.c:                                             ; preds = %.lr.ph.i
  %i.al = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.a) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_29FastPackedSmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE0EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_29FastPackedSmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE0EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i: ; preds = %bb.c, %.lr.ph.i
  %.0.i.i26.i = phi ptr [ %i.al, %bb.c ], [ %i.ai, %.lr.ph.i ] ; 3 uses
  %i.am = ptrtoint ptr %.0.i.i26.i to i64
  %i.an = add i64 %i.am, 8
  %i.ao = inttoptr i64 %i.an to ptr
  store ptr %i.ao, ptr %i.f, align 8
  store i64 %i.ah, ptr %.0.i.i26.i, align 8
  %i.ap = tail call noundef zeroext i1 @_ZN2v88internal14KeyAccumulator6AddKeyENS0_12DirectHandleINS0_6ObjectEEENS0_16AddKeyConversionE(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr nonnull %.0.i.i26.i, i32 noundef %3) #23 ; 2 uses
  %i.aq = add nuw nsw i64 %.02245.i, 1            ; 2 uses
  %exitcond.not.i = icmp ne i64 %i.aq, %.0.in.in.i.i.i
  %or.cond.not = select i1 %i.ap, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_29FastPackedSmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE0EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit, !llvm.loop !3334

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_29FastPackedSmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE0EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_29FastPackedSmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE0EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.not.lcssa.i = phi i1 [ true, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.ap, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_29FastPackedSmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE0EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i ]
  ret i1 %.not.lcssa.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_29FastPackedSmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE0EEEE22TransitionElementsKindEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_3MapEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr %2, ptr %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i.i, align 8
  %i.n = add i64 %i.d, 14
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i8, ptr %i.o, align 1               ; 3 uses
  %i.q = lshr i8 %i.p, 2                          ; 4 uses
  %i.r = load i64, ptr %3, align 8
  %i.s = add i64 %i.r, 14
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i8, ptr %i.t, align 1
  %i.v = lshr i8 %i.u, 2                          ; 3 uses
  %i.w = trunc i8 %i.q to i1
  %i.x = icmp ult i8 %i.p, 24
  %i.y = and i1 %i.x, %i.w
  br i1 %i.y, label %bb.c, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  switch i8 %i.v, label %bb.f [
    i8 0, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i
    i8 4, label %bb.d
    i8 2, label %bb.e
    i8 6, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  ]

bb.d:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.e:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.f:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.0.i = phi i8 [ %i.v, %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.v, %bb.f ], [ 5, %bb.d ], [ 3, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %.not.i = icmp eq i8 %i.q, %.0.i
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_29FastPackedSmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE0EEEE26TransitionElementsKindImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_3MapEEE.exit, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i: ; preds = %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i, %bb.c
  %.0103.i = phi i8 [ %.0.i, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i ], [ 7, %bb.c ] ; 2 uses
  %i.z = load i64, ptr %2, align 8
  %i.aa = add i64 %i.z, 15
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ae = load ptr, ptr %i.g, align 8
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.g, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i, !prof !5

bb.g:                                             ; preds = %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  %i.ag = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i: ; preds = %bb.g, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  %.0.i.i38.i = phi ptr [ %i.ag, %bb.g ], [ %i.ad, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i ] ; 4 uses
  %i.ah = ptrtoint ptr %.0.i.i38.i to i64
  %i.ai = add i64 %i.ah, 8
  %i.aj = inttoptr i64 %i.ai to ptr
  store ptr %i.aj, ptr %i.e, align 8
  store i64 %i.ac, ptr %.0.i.i38.i, align 8
  %i.ak = load i64, ptr %2, align 8
  %i.al = add i64 %i.ak, 15
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 864
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = icmp eq i64 %i.an, %i.ap
  br i1 %i.aq, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i
  %i.ar = and i8 %i.p, -8
  %i.as = icmp eq i8 %i.ar, 16
  %i.at = and i8 %.0103.i, -2
  %i.au = icmp eq i8 %i.at, 4
  %i.av = xor i1 %i.as, %i.au
  br i1 %i.av, label %bb.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.h, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i
  tail call void @_ZN2v88internal8JSObject12MigrateToMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEEi(ptr noundef nonnull %1, ptr nonnull %2, ptr nonnull %3, i32 noundef 0) #23
  br label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

bb.i:                                             ; preds = %bb.h
  %i.aw = add i64 %i.an, -1
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = lshr i64 %i.az, 32
  %i.bb = trunc nuw i64 %i.ba to i32
  %i.bc = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_29FastPackedSmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE0EEEE27ConvertElementsWithCapacityEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEES5_jjj(ptr noundef nonnull %1, ptr nonnull readonly %2, ptr nonnull readonly %.0.i.i38.i, i8 noundef zeroext %i.q, i32 noundef %i.bb, i32 noundef 0) ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.j, label %_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i, !prof !5

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.27) #24
  unreachable

_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i: ; preds = %bb.i
  tail call void @_ZN2v88internal8JSObject12MigrateToMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEEi(ptr noundef nonnull %1, ptr nonnull %2, ptr nonnull %3, i32 noundef 0) #23
  %i.be = load i64, ptr %2, align 8               ; 4 uses
  %i.bf = load i64, ptr %i.bc, align 8            ; 5 uses
  %i.bg = add i64 %i.be, 15                       ; 3 uses
  %i.bh = inttoptr i64 %i.bg to ptr
  store atomic volatile i64 %i.bf, ptr %i.bh monotonic, align 8
  %i.bi = trunc i64 %i.bf to i1
  br i1 %i.bi, label %bb.k, label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

bb.k:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i
  %i.bj = and i64 %i.be, -262144
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load i64, ptr %i.bk, align 262144       ; 2 uses
  %i.bm = and i64 %i.bl, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.bm, 0
  %i.bn = and i64 %i.bl, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not37.i.i.i.i.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bo = and i64 %i.bf, -262144
  %i.bp = inttoptr i64 %i.bo to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bp, align 262144
  %i.bq = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not38.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.be, i64 noundef %i.bg, i64 %i.bf) #23
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i, label %bb.o, !prof !13

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.be, i64 %i.bg, i64 %i.bf) #23
  br label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i: ; preds = %bb.o, %bb.n, %_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i, %.critedge.i
  %i.br = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1925), align 1, !range !16, !noundef !17
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.p, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_29FastPackedSmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE0EEEE26TransitionElementsKindImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_3MapEEE.exit

bb.p:                                             ; preds = %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i
  %i.bt = load ptr, ptr @stdout, align 8
  %i.bu = load i64, ptr %2, align 8
  %i.bv = add i64 %i.bu, 15
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = load ptr, ptr %i.e, align 8             ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE8ValidateEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE:bb.a
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2
  %i.s = icmp eq i16 %i.r, 2119
  br i1 %i.s, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.u = add i64 %i.t, 11
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i16, ptr %i.v monotonic, align 2
  %i.x = icmp eq i16 %i.w, 2061
  br i1 %i.x, label %bb.d, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit

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
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit: ; preds = %bb.a, %bb.b, %bb.c, %_ZNK2v88internal12JSTypedArray9GetLengthEv.exit.i
  ret void
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE10HasElementEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEjNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2, i32 noundef %3, i64 %4, i32 %5) unnamed_addr #10 align 2 {
bb.a:
  %i.a = zext i32 %3 to i64                       ; 2 uses
  %i.b = add i64 %2, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 2119
  %i.i = add i64 %2, 23
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = add i64 %4, -1
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.0.in.in.in.in.i.i.i = select i1 %i.h, ptr %i.j, ptr %i.m
  %.0.in.in.in.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i, align 8
  %.0.in.in.i.i.i = lshr i64 %.0.in.in.in.i.i.i, 32
  %i.n = icmp samesign ugt i64 %.0.in.in.i.i.i, %i.a
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %sext.i.i = shl nuw i64 %i.a, 32
  %i.p = ashr exact i64 %sext.i.i, 29
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 %i.p
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %i.r, %i.t
  br i1 %i.u, label %bb.c, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit: ; preds = %bb.b, %bb.c
  %.sroa.013.1.i.i = phi i1 [ false, %bb.c ], [ true, %bb.b ]
  ret i1 %.sroa.013.1.i.i
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE8HasEntryEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENS0_13InternalIndexE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2, i64 %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = add i64 %2, 15
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %sext.i = shl i64 %3, 32
  %i.g = ashr exact i64 %sext.i, 29
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 %i.g
  %i.i = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp ne i64 %i.i, %i.k
  ret i1 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE3GetEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %2, i64 %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %sext.i.i = shl i64 %3, 32
  %i.h = ashr exact i64 %sext.i.i, 29
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE15GetInternalImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE15GetInternalImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE15GetInternalImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi ptr [ %i.p, %bb.b ], [ %i.l, %bb.a ] ; 3 uses
  %i.q = ptrtoint ptr %.0.i.i.i to i64
  %i.r = add i64 %i.q, 8
  %i.s = inttoptr i64 %i.r to ptr
  store ptr %i.s, ptr %i.k, align 8
  store i64 %i.j, ptr %.0.i.i.i, align 8
  ret ptr %.0.i.i.i
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE9GetAtomicEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE12HasAccessorsENS0_6TaggedINS0_8JSObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1) unnamed_addr #12 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef range(i64 0, 4294967296) i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE16NumberOfElementsEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2) unnamed_addr #10 align 2 {
bb.a:
  %i.a = add i64 %2, 15
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %2, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = icmp eq i16 %i.i, 2119
  %i.k = add i64 %2, 23
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = add i64 %i.c, -1
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.0.in.in.in.in.i.i = select i1 %i.j, ptr %i.l, ptr %i.o
  %.0.in.in.in.i.i = load i64, ptr %.0.in.in.in.in.i.i, align 8
  %.0.in.in.in.i.i.fr = freeze i64 %.0.in.in.in.i.i ; 2 uses
  %.0.in.in.i.i = lshr i64 %.0.in.in.in.i.i.fr, 32 ; 4 uses
  %.not17.i = icmp eq i64 %.0.in.in.i.i, 0
  br i1 %.not17.i, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 2 uses
  %i.r = icmp eq i64 %.0.in.in.i.i, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.0.in.in.i.i, 4294967294
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.01316.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ac, %bb.b ] ; 3 uses
  %.01415.i = phi i32 [ 0, %.lr.ph.i.new ], [ %spec.select.i.1, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %sext.i.i = shl i64 %.01316.i, 32
  %i.s = ashr exact i64 %sext.i.i, 29
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 %i.s
  %i.u = load atomic volatile i64, ptr %i.t monotonic, align 8
  %i.v = load i64, ptr %i.q, align 8              ; 2 uses
  %.not.i = icmp ne i64 %i.u, %i.v
  %i.w = zext i1 %.not.i to i32
  %spec.select.i = add i32 %.01415.i, %i.w
  %i.x = shl i64 %.01316.i, 32
  %sext.i.i.1 = ashr exact i64 %i.x, 29
  %i.y = getelementptr i8, ptr %i.p, i64 %sext.i.i.1
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %i.aa = load atomic volatile i64, ptr %i.z monotonic, align 8
  %.not.i.1 = icmp ne i64 %i.aa, %i.v
  %i.ab = zext i1 %.not.i.1 to i32
  %spec.select.i.1 = add i32 %spec.select.i, %i.ab ; 3 uses
  %i.ac = add nuw nsw i64 %.01316.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !3373

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %i.ad = and i64 %.0.in.in.in.i.i.fr, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.ad, 0
  br i1 %lcmp.mod.not, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.01316.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ac, %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa ]
  %.01415.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %spec.select.i.1, %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod6 = trunc i64 %.0.in.in.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod6)
  %sext.i.i.epil = shl i64 %.01316.i.epil.init, 32
  %i.ae = ashr exact i64 %sext.i.i.epil, 29
  %i.af = getelementptr inbounds i8, ptr %i.p, i64 %i.ae
  %i.ag = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.ah = load i64, ptr %i.q, align 8
  %.not.i.epil = icmp ne i64 %i.ag, %i.ah
  %i.ai = zext i1 %.not.i.epil to i32
  %spec.select.i.epil = add i32 %.01415.i.epil.init, %i.ai
  br label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit: ; preds = %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa, %.epil.preheader
  %spec.select.i.lcssa = phi i32 [ %spec.select.i.1, %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa ], [ %spec.select.i.epil, %.epil.preheader ]
  %i.aj = zext i32 %spec.select.i.lcssa to i64
  br label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit, %bb.a
  %.014.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.aj, %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit ]
  ret i64 %.014.lcssa.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i16 0, 258) i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE9SetLengthEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 5 uses
  %i.k = ptrtoint ptr %.0.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i, align 8
  %i.n = load i64, ptr %2, align 8                ; 2 uses
  %i.o = add i64 %i.n, 23
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8              ; 4 uses
  %i.r = and i64 %i.q, 1
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.c, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.t = icmp sgt i64 %i.q, -1
  br i1 %i.t, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread131.i, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i, !prof !107

_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread131.i: ; preds = %bb.c
  %i.u = lshr i64 %i.q, 32
  %i.v = trunc nuw nsw i64 %i.u to i32
  br label %bb.e

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i: ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.w = add nsw i64 %i.q, -1
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = load atomic volatile i64, ptr %i.x monotonic, align 8
  %i.z = add i64 %i.y, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = icmp eq i16 %i.ab, 130
  br i1 %i.ac, label %bb.d, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i, !prof !107

bb.d:                                             ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.ad, align 8 ; 2 uses
  %i.ae = fadd double %.0.copyload.i.i.i.i.i.i.i, f0x4330000000000000
  %i.af = bitcast double %i.ae to i64             ; 2 uses
  %.mask.i.i.i.i = and i64 %i.af, -4294967296
  %i.ag = icmp eq i64 %.mask.i.i.i.i, 4841369599423283200
  br i1 %i.ag, label %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i, !prof !107

_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i: ; preds = %bb.d
  %i.ah = trunc i64 %i.af to i32                  ; 3 uses
  %i.ai = uitofp i32 %i.ah to double
  %i.aj = fcmp oeq double %.0.copyload.i.i.i.i.i.i.i, %i.ai
  %i.ak = icmp ne i32 %i.ah, -1
  %or.cond.i = and i1 %i.ak, %i.aj
  br i1 %or.cond.i, label %bb.e, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i, !prof !3326

_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i: ; preds = %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i, %bb.d, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.26) #24
  unreachable

bb.e:                                             ; preds = %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i, %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread131.i
  %.0133.i = phi i32 [ %i.v, %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread131.i ], [ %i.ah, %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i ] ; 3 uses
  %i.al = icmp ult i32 %.0133.i, %3
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.am = add i64 %i.n, -1
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load atomic volatile i64, ptr %i.an monotonic, align 8
  %i.ap = add i64 %i.ao, 14
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load i8, ptr %i.aq, align 1             ; 3 uses
  %i.as = lshr i8 %i.ar, 2                        ; 4 uses
  %i.at = trunc i8 %i.as to i1
  %i.au = icmp ult i8 %i.ar, 24
  %i.av = and i1 %i.au, %i.at
  br i1 %i.av, label %.thread, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i: ; preds = %bb.f
  %i.aw = icmp ult i8 %i.ar, 28
  %switch.shifted = lshr i8 85, %i.as
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.aw, i1 %switch.lobit, i1 false
  %switch.cast = zext nneg i8 %i.as to i56
  %switch.shiftamt = shl nuw nsw i56 %switch.cast, 3
  %switch.downshift = lshr i56 1970346312007681, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  %.0.i.i5 = select i1 %or.cond, i8 %switch.masked, i8 %i.as
  tail call void @_ZN2v88internal8JSObject22TransitionElementsKindEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_12ElementsKindE(ptr noundef nonnull %1, ptr nonnull %2, i8 noundef zeroext %.0.i.i5) #23
  %.pre = load i64, ptr %.0.i.i, align 8
  br label %.thread

.thread:                                          ; preds = %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i, %bb.f
  %.ph = phi i64 [ %i.d, %bb.f ], [ %.pre, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i ] ; 2 uses
  %i.ax = add i64 %.ph, -1
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = lshr i64 %i.ba, 32                      ; 2 uses
  %i.bc = trunc nuw i64 %i.bb to i32              ; 2 uses
  %.sroa.speculated73.i27 = tail call i32 @llvm.umin.i32(i32 %.0133.i, i32 %i.bc)
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.bd = add i64 %i.d, -1
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = lshr i64 %i.bg, 32                      ; 2 uses
  %i.bi = trunc nuw i64 %i.bh to i32              ; 2 uses
  %.sroa.speculated73.i = tail call i32 @llvm.umin.i32(i32 %.0133.i, i32 %i.bi)
  %i.bj = icmp eq i32 %3, 0
  br i1 %i.bj, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.bk = load i64, ptr %2, align 8               ; 2 uses
  %i.bl = add i64 %i.bk, -1
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load atomic volatile i64, ptr %i.bm monotonic, align 8
  %i.bo = add i64 %i.bn, 14
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = load i8, ptr %i.bp, align 1             ; 4 uses
  %i.br = icmp ult i8 %i.bq, 24
  br i1 %i.br, label %_ZN2v88internal8JSObject19initialize_elementsEv.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.mask.i.i.i37.i = and i8 %i.bq, -4             ; 2 uses
  %i.bs = icmp eq i8 %.mask.i.i.i37.i, 64
  %i.bt = icmp ult i8 %i.bq, 52
  %or.cond.i.i.i = or i1 %i.bt, %i.bs
  br i1 %or.cond.i.i.i, label %_ZN2v88internal8JSObject19initialize_elementsEv.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = lshr i8 %i.bq, 2
  %i.bv = add nsw i8 %i.bu, -18
  %i.bw = icmp ult i8 %i.bv, 24
  br i1 %i.bw, label %_ZN2v88internal8JSObject19initialize_elementsEv.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = icmp eq i8 %.mask.i.i.i37.i, 52
  br i1 %i.bx, label %_ZN2v88internal8JSObject19initialize_elementsEv.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable

_ZN2v88internal8JSObject19initialize_elementsEv.exit.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.sink13.i.i.i = phi i64 [ 312, %bb.h ], [ 1272, %bb.j ], [ 312, %bb.i ], [ 1304, %bb.k ]
  %i.by = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 10624
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sink13.i.i.i
  %.sroa.06.0.i.i.i = load i64, ptr %i.cb, align 8
  %i.cc = add i64 %i.bk, 15
  %i.cd = inttoptr i64 %i.cc to ptr
  store atomic volatile i64 %.sroa.06.0.i.i.i, ptr %i.cd monotonic, align 8
  br label %_ZN2v88internal10FixedArray13FillWithHolesEii.exit.i

bb.m:                                             ; preds = %.thread, %bb.g
  %.sroa.speculated73.i28 = phi i32 [ %.sroa.speculated73.i27, %.thread ], [ %.sroa.speculated73.i, %bb.g ] ; 2 uses
  %i.ce = phi i32 [ %i.bc, %.thread ], [ %i.bi, %bb.g ] ; 3 uses
  %i.cf = phi i64 [ %i.bb, %.thread ], [ %i.bh, %bb.g ]
  %i.cg = phi i64 [ %.ph, %.thread ], [ %i.d, %bb.g ]
  %.not.i = icmp ugt i32 %3, %i.ce
  br i1 %.not.i, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ch = load i64, ptr %2, align 8
end_hunk_1
begin_hunk_2_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE22CollectValuesOrEntriesEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE:bb.a

bb.g:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i
  %i.bf = or disjoint i64 %i.ax, 1                ; 2 uses
  %i.bg = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bh = and i64 %i.ax, -262144
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load i64, ptr %i.bi, align 262144       ; 2 uses
  %i.bk = and i64 %i.bj, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bk, 0
  %i.bl = and i64 %i.bj, 25
  %.not37.i.i.i.i.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not37.i.i.i.i.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bm = and i64 %i.ba, -262144
  %i.bn = inttoptr i64 %i.bm to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.bn, align 262144
  %i.bo = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.bf, i64 noundef %i.bg, i64 %i.ba) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i, label %bb.k, !prof !13

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.bf, i64 %i.bg, i64 %i.ba) #23
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i: ; preds = %bb.k, %bb.j, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i, %bb.d
  %.1.i = phi i32 [ %.098.i, %bb.d ], [ %i.az, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i ], [ %i.az, %bb.j ], [ %i.az, %bb.k ] ; 2 uses
  %indvars.iv.next106.i = add nuw nsw i64 %indvars.iv105.i, 1 ; 2 uses
  %exitcond109.not.i = icmp eq i64 %indvars.iv.next106.i, %i.r
  br i1 %exitcond109.not.i, label %_ZN2v88internal12_GLOBAL__N_131FastSmiOrObjectElementsAccessorINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE26CollectValuesOrEntriesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE.exit, label %bb.d, !llvm.loop !3376

bb.l:                                             ; preds = %bb.a
  %i.bp = add i64 %i.d, -1
  %i.bq = inttoptr i64 %i.bp to ptr               ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = lshr i64 %i.bs, 32                      ; 2 uses
  %.not101.i = icmp eq i64 %i.bt, 0
  br i1 %.not101.i, label %_ZN2v88internal12_GLOBAL__N_131FastSmiOrObjectElementsAccessorINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE26CollectValuesOrEntriesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 656
  br label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i ] ; 2 uses
  %.296.i = phi i32 [ 0, %.lr.ph.i ], [ %.3.i, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i ] ; 3 uses
  %sext.i46.i = shl nuw i64 %indvars.iv.i, 32
  %i.bw = ashr exact i64 %sext.i46.i, 29
  %i.bx = getelementptr inbounds i8, ptr %i.bu, i64 %i.bw ; 2 uses
  %i.by = load atomic volatile i64, ptr %i.bx monotonic, align 8
  %i.bz = load i64, ptr %i.bv, align 8
  %.not.i = icmp eq i64 %i.by, %i.bz
  br i1 %.not.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = load atomic volatile i64, ptr %i.bx monotonic, align 8 ; 5 uses
  %i.cb = load i64, ptr %3, align 8
  %i.cc = add i64 %i.cb, -1                       ; 3 uses
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = add nsw i32 %.296.i, 1                  ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cg = sext i32 %.296.i to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.cg ; 2 uses
  store atomic volatile i64 %i.ca, ptr %i.ch monotonic, align 8
  %i.ci = trunc i64 %i.ca to i1
  br i1 %i.ci, label %bb.o, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i

bb.o:                                             ; preds = %bb.n
  %i.cj = or disjoint i64 %i.cc, 1                ; 2 uses
  %i.ck = ptrtoint ptr %i.ch to i64               ; 2 uses
  %i.cl = and i64 %i.cc, -262144
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = load i64, ptr %i.cm, align 262144       ; 2 uses
  %i.co = and i64 %i.cn, 32
  %.not.i.i.i.i.i48.i = icmp eq i64 %i.co, 0
  %i.cp = and i64 %i.cn, 25
  %.not37.i.i.i.i.i49.i = icmp eq i64 %i.cp, 0
  br i1 %.not37.i.i.i.i.i49.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cq = and i64 %i.ca, -262144
  %i.cr = inttoptr i64 %i.cq to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i50.i = load i64, ptr %i.cr, align 262144
  %i.cs = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i50.i, 25
  %.not38.i.i.i.i.i51.i = icmp eq i64 %i.cs, 0
  br i1 %.not38.i.i.i.i.i51.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.cj, i64 noundef %i.ck, i64 %i.ca) #23
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  br i1 %.not.i.i.i.i.i48.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i, label %bb.s, !prof !13

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.cj, i64 %i.ck, i64 %i.ca) #23
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i: ; preds = %bb.s, %bb.r, %bb.n, %bb.m
  %.3.i = phi i32 [ %.296.i, %bb.m ], [ %i.ce, %bb.n ], [ %i.ce, %bb.r ], [ %i.ce, %bb.s ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.bt
  br i1 %exitcond.not.i, label %_ZN2v88internal12_GLOBAL__N_131FastSmiOrObjectElementsAccessorINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE26CollectValuesOrEntriesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE.exit, label %bb.m, !llvm.loop !3377

_ZN2v88internal12_GLOBAL__N_131FastSmiOrObjectElementsAccessorINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE26CollectValuesOrEntriesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE.exit: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %bb.l
  %.4.i = phi i32 [ %.1.i, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i ], [ 0, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ 0, %bb.l ], [ %.3.i, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i ]
  store i32 %.4.i, ptr %5, align 4
  ret i16 257
}

; Function Attrs: mustprogress nounwind uwtable
define internal ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE21PrependElementIndicesEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %2, ptr nofree readonly captures(none) %3, ptr nofree readonly captures(none) %4, i32 noundef %5, i32 %6) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %4, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = lshr i64 %i.e, 32                        ; 3 uses
  %i.g = trunc nuw i64 %i.f to i32                ; 3 uses
  %i.h = load i64, ptr %2, align 8                ; 2 uses
  %i.i = load i64, ptr %3, align 8
  %i.j = add i64 %i.h, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.m = add i64 %i.l, 11
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i16, ptr %i.n monotonic, align 2
  %i.p = icmp eq i16 %i.o, 2119
  %i.q = add i64 %i.h, 23
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = add i64 %i.i, -1
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.0.in.in.in.in.i.i.i = select i1 %i.p, ptr %i.r, ptr %i.u
  %.0.in.in.in.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i, align 8
  %.0.in.in.i.i.i = lshr i64 %.0.in.in.in.i.i.i, 32 ; 2 uses
  %i.v = sub nsw i64 134217728, %i.f
  %i.w = and i64 %i.v, 4294967295
  %i.x = icmp samesign ugt i64 %.0.in.in.i.i.i, %i.w
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = tail call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef 238, ptr null, i64 0) #23
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %1, i64 %i.z, ptr noundef null) #23 ; 0 uses
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit

bb.c:                                             ; preds = %bb.a
  %i.ab = add nuw nsw i64 %.0.in.in.i.i.i, %i.f
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = tail call ptr @_ZN2v88internal7Factory16TryNewFixedArrayEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.ac, i8 noundef zeroext 0) #23 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i, label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i

_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i: ; preds = %bb.c
  %i.af = load i64, ptr %2, align 8               ; 2 uses
  %i.ag = load i64, ptr %3, align 8
  %i.ah = add i64 %i.af, -1
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i64, ptr %i.ai monotonic, align 8
  %i.ak = add i64 %i.aj, 11
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i16, ptr %i.al monotonic, align 2
  %i.an = icmp eq i16 %i.am, 2119
  %i.ao = add i64 %i.af, 23
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = add i64 %i.ag, -1
  %i.ar = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.0.in.in.in.in.i.i53.i = select i1 %i.an, ptr %i.ap, ptr %i.as
  %.0.in.in.in.i.i54.i = load i64, ptr %.0.in.in.in.in.i.i53.i, align 8
  %.0.in.in.in.i.i54.i.fr = freeze i64 %.0.in.in.in.i.i54.i ; 2 uses
  %.0.in.in.i.i55.i = lshr i64 %.0.in.in.in.i.i54.i.fr, 32 ; 4 uses
  %.not17.i.i = icmp eq i64 %.0.in.in.i.i55.i, 0
  br i1 %.not17.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 2 uses
  %i.av = icmp eq i64 %.0.in.in.i.i55.i, 1
  br i1 %i.av, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.0.in.in.i.i55.i, 4294967294
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.new
  %.01316.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.bg, %bb.d ] ; 3 uses
  %.01415.i.i = phi i32 [ 0, %.lr.ph.i.i.new ], [ %spec.select.i.i.1, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.d ]
  %sext.i.i.i = shl i64 %.01316.i.i, 32
  %i.aw = ashr exact i64 %sext.i.i.i, 29
  %i.ax = getelementptr inbounds i8, ptr %i.at, i64 %i.aw
  %i.ay = load atomic volatile i64, ptr %i.ax monotonic, align 8
  %i.az = load i64, ptr %i.au, align 8            ; 2 uses
  %.not.i.i = icmp ne i64 %i.ay, %i.az
  %i.ba = zext i1 %.not.i.i to i32
  %spec.select.i.i = add i32 %.01415.i.i, %i.ba
  %i.bb = shl i64 %.01316.i.i, 32
  %sext.i.i.i.1 = ashr exact i64 %i.bb, 29
  %i.bc = getelementptr i8, ptr %i.at, i64 %sext.i.i.i.1
  %i.bd = getelementptr i8, ptr %i.bc, i64 8
  %i.be = load atomic volatile i64, ptr %i.bd monotonic, align 8
  %.not.i.i.1 = icmp ne i64 %i.be, %i.az
  %i.bf = zext i1 %.not.i.i.1 to i32
  %spec.select.i.i.1 = add i32 %spec.select.i.i, %i.bf ; 3 uses
  %i.bg = add nuw nsw i64 %.01316.i.i, 2          ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !3373

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %bb.d
  %i.bh = and i64 %.0.in.in.in.i.i54.i.fr, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.bh, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %.01316.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bg, %.loopexit.i.loopexit.unr-lcssa ]
  %.01415.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.1, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod18 = trunc i64 %.0.in.in.i.i55.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod18)
  %sext.i.i.i.epil = shl i64 %.01316.i.i.epil.init, 32
  %i.bi = ashr exact i64 %sext.i.i.i.epil, 29
  %i.bj = getelementptr inbounds i8, ptr %i.at, i64 %i.bi
  %i.bk = load atomic volatile i64, ptr %i.bj monotonic, align 8
  %i.bl = load i64, ptr %i.au, align 8
  %.not.i.i.epil = icmp ne i64 %i.bk, %i.bl
  %i.bm = zext i1 %.not.i.i.epil to i32
  %spec.select.i.i.epil = add i32 %.01415.i.i.epil.init, %i.bm
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i
  %.014.lcssa.i.i = phi i32 [ 0, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i ], [ %spec.select.i.i.1, %.loopexit.i.loopexit.unr-lcssa ], [ %spec.select.i.i.epil, %.epil.preheader ]
  %i.bn = add i32 %.014.lcssa.i.i, %i.g
  %i.bo = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.bn, i8 noundef zeroext 0, i8 0) #23
  br label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i

_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i: ; preds = %.loopexit.i, %bb.c
  %.sroa.072.0.i = phi ptr [ %i.bo, %.loopexit.i ], [ %i.ad, %bb.c ] ; 4 uses
  %i.bp = load i64, ptr %2, align 8               ; 2 uses
  %i.bq = load i64, ptr %3, align 8
  %i.br = add i64 %i.bp, -1
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = load atomic volatile i64, ptr %i.bs monotonic, align 8
  %i.bu = add i64 %i.bt, 11
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load atomic volatile i16, ptr %i.bv monotonic, align 2
  %i.bx = icmp eq i16 %i.bw, 2119
  %i.by = add i64 %i.bp, 23
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = add i64 %i.bq, -1
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.0.in.in.in.in.i.i56.i = select i1 %i.bx, ptr %i.bz, ptr %i.cc
  %.0.in.in.in.i.i57.i = load i64, ptr %.0.in.in.in.in.i.i56.i, align 8
  %.0.in.in.i.i58.i = lshr i64 %.0.in.in.in.i.i57.i, 32 ; 3 uses
  %.not.i59.i = icmp eq i64 %.0.in.in.i.i58.i, 0
  br i1 %.not.i59.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i, label %.lr.ph.i60.i

.lr.ph.i60.i:                                     ; preds = %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 2 uses
  %i.ce = icmp eq i32 %5, 0
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 568
  br i1 %i.ce, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i60.i, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i
  %.055.us.i.i = phi i32 [ %.1.us.i.i, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i ], [ 0, %.lr.ph.i60.i ] ; 4 uses
  %.02652.us.i.i = phi i64 [ %i.dx, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i ], [ 0, %.lr.ph.i60.i ] ; 5 uses
  %i.ch = load i64, ptr %2, align 8               ; 2 uses
  %i.ci = load i64, ptr %3, align 8
  %i.cj = add i64 %i.ch, -1
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = load atomic volatile i64, ptr %i.ck monotonic, align 8
  %i.cm = add i64 %i.cl, 11
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = load atomic volatile i16, ptr %i.cn monotonic, align 2
  %i.cp = icmp eq i16 %i.co, 2119
  %i.cq = add i64 %i.ch, 23
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = add i64 %i.ci, -1
  %i.ct = inttoptr i64 %i.cs to ptr               ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.0.in.in.in.in.i.i.i.us.i.i = select i1 %i.cp, ptr %i.cr, ptr %i.cu
  %.0.in.in.in.i.i.i.us.i.i = load i64, ptr %.0.in.in.in.in.i.i.i.us.i.i, align 8
  %.0.in.in.i.i.i.us.i.i = lshr i64 %.0.in.in.in.i.i.i.us.i.i, 32
  %i.cv = icmp samesign ult i64 %.02652.us.i.i, %.0.in.in.i.i.i.us.i.i
  br i1 %i.cv, label %bb.e, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i

bb.e:                                             ; preds = %.lr.ph.split.us.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %sext.i.i.us.i.i = shl nuw i64 %.02652.us.i.i, 32
  %i.cx = ashr exact i64 %sext.i.i.us.i.i, 29
  %i.cy = getelementptr inbounds i8, ptr %i.cw, i64 %i.cx
  %i.cz = load atomic volatile i64, ptr %i.cy monotonic, align 8
  %i.da = load i64, ptr %i.cd, align 8
  %i.db = icmp eq i64 %i.cz, %i.da
  br i1 %i.db, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dc = icmp samesign ult i64 %.02652.us.i.i, 67108864
  %i.dd = tail call ptr @_ZN2v88internal7Factory12SizeToStringEmb(ptr noundef nonnull align 1 dereferenceable(1) %1, i64 noundef %.02652.us.i.i, i1 noundef zeroext %i.dc) #23
  %i.de = load i64, ptr %.sroa.072.0.i, align 8
  %i.df = add i64 %i.de, -1                       ; 3 uses
  %i.dg = inttoptr i64 %i.df to ptr
  %i.dh = load i64, ptr %i.dd, align 8            ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dj = sext i32 %.055.us.i.i to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dj ; 2 uses
  store atomic volatile i64 %i.dh, ptr %i.dk monotonic, align 8
  %i.dl = trunc i64 %i.dh to i1
  br i1 %i.dl, label %bb.g, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us.i.i

bb.g:                                             ; preds = %bb.f
  %i.dm = or disjoint i64 %i.df, 1                ; 2 uses
  %i.dn = ptrtoint ptr %i.dk to i64               ; 2 uses
  %i.do = and i64 %i.df, -262144
  %i.dp = inttoptr i64 %i.do to ptr
  %i.dq = load i64, ptr %i.dp, align 262144       ; 2 uses
  %i.dr = and i64 %i.dq, 32
  %.not.i.i.i.i.i.us.i.i = icmp eq i64 %i.dr, 0
  %i.ds = and i64 %i.dq, 25
  %.not37.i.i.i.i.i.us.i.i = icmp eq i64 %i.ds, 0
  br i1 %.not37.i.i.i.i.i.us.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.dt = and i64 %i.dh, -262144
  %i.du = inttoptr i64 %i.dt to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.us.i.i = load i64, ptr %i.du, align 262144
  %i.dv = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.us.i.i, 25
  %.not38.i.i.i.i.i.us.i.i = icmp eq i64 %i.dv, 0
  br i1 %.not38.i.i.i.i.i.us.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.dm, i64 noundef %i.dn, i64 %i.dh) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  br i1 %.not.i.i.i.i.i.us.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us.i.i, label %bb.k, !prof !13

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.dm, i64 %i.dn, i64 %i.dh) #23
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us.i.i

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us.i.i: ; preds = %bb.k, %bb.j, %bb.f
  %i.dw = add i32 %.055.us.i.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us.i.i, %bb.e, %.lr.ph.split.us.i.i
  %.1.us.i.i = phi i32 [ %i.dw, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us.i.i ], [ %.055.us.i.i, %.lr.ph.split.us.i.i ], [ %.055.us.i.i, %bb.e ] ; 2 uses
  %i.dx = add nuw nsw i64 %.02652.us.i.i, 1       ; 2 uses
  %exitcond57.not.i.i = icmp eq i64 %i.dx, %.0.in.in.i.i58.i
  br i1 %exitcond57.not.i.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i, label %.lr.ph.split.us.i.i, !llvm.loop !3378

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i60.i, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i
  %.055.i.i = phi i32 [ %.1.i.i, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i ], [ 0, %.lr.ph.i60.i ] ; 4 uses
  %.02652.i.i = phi i64 [ %i.ga, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i ], [ 0, %.lr.ph.i60.i ] ; 5 uses
  %i.dy = load i64, ptr %2, align 8               ; 2 uses
  %i.dz = load i64, ptr %3, align 8
  %i.ea = add i64 %i.dy, -1
  %i.eb = inttoptr i64 %i.ea to ptr
  %i.ec = load atomic volatile i64, ptr %i.eb monotonic, align 8
  %i.ed = add i64 %i.ec, 11
  %i.ee = inttoptr i64 %i.ed to ptr
  %i.ef = load atomic volatile i16, ptr %i.ee monotonic, align 2
  %i.eg = icmp eq i16 %i.ef, 2119
  %i.eh = add i64 %i.dy, 23
  %i.ei = inttoptr i64 %i.eh to ptr
  %i.ej = add i64 %i.dz, -1
  %i.ek = inttoptr i64 %i.ej to ptr               ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %.0.in.in.in.in.i.i.i.i.i = select i1 %i.eg, ptr %i.ei, ptr %i.el
  %.0.in.in.in.i.i.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i.i.i, align 8
  %.0.in.in.i.i.i.i.i = lshr i64 %.0.in.in.in.i.i.i.i.i, 32
  %i.em = icmp samesign ult i64 %.02652.i.i, %.0.in.in.i.i.i.i.i
  br i1 %i.em, label %bb.l, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i

bb.l:                                             ; preds = %.lr.ph.split.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %sext.i.i.i.i = shl nuw i64 %.02652.i.i, 32     ; 3 uses
  %i.eo = ashr exact i64 %sext.i.i.i.i, 29
  %i.ep = getelementptr inbounds i8, ptr %i.en, i64 %i.eo
  %i.eq = load atomic volatile i64, ptr %i.ep monotonic, align 8
  %i.er = load i64, ptr %i.cd, align 8
  %i.es = icmp eq i64 %i.eq, %i.er
  br i1 %i.es, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.et = icmp samesign ult i64 %.02652.i.i, 2147483648
  br i1 %i.et, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.eu = load ptr, ptr %i.cf, align 8            ; 2 uses
  %i.ev = load ptr, ptr %i.cg, align 8
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %bb.o, label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i, !prof !5

bb.o:                                             ; preds = %bb.n
  %i.ex = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %1) #23
  br label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i

_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i = phi ptr [ %i.ex, %bb.o ], [ %i.eu, %bb.n ] ; 2 uses
  %i.ey = ptrtoint ptr %.0.i.i.i.i.i.i to i64
  %i.ez = add i64 %i.ey, 8
  %i.fa = inttoptr i64 %i.ez to ptr
  store ptr %i.fa, ptr %i.cf, align 8
  store i64 %sext.i.i.i.i, ptr %.0.i.i.i.i.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i

bb.p:                                             ; preds = %bb.m
  %i.fb = uitofp nneg i64 %.02652.i.i to double
  %i.fc = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #23 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = add i64 %i.fd, -1
  %i.ff = inttoptr i64 %i.fe to ptr
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store double %i.fb, ptr %i.fg, align 1
  %.pre.i.i = load i64, ptr %i.fc, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i

_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i: ; preds = %bb.p, %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i
  %i.fh = phi i64 [ %sext.i.i.i.i, %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i ], [ %.pre.i.i, %bb.p ] ; 5 uses
  %i.fi = load i64, ptr %.sroa.072.0.i, align 8
  %i.fj = add i64 %i.fi, -1                       ; 3 uses
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = sext i32 %.055.i.i to i64
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.fm ; 2 uses
  store atomic volatile i64 %i.fh, ptr %i.fn monotonic, align 8
  %i.fo = trunc i64 %i.fh to i1
  br i1 %i.fo, label %bb.q, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i

bb.q:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i
  %i.fp = or disjoint i64 %i.fj, 1                ; 2 uses
  %i.fq = ptrtoint ptr %i.fn to i64               ; 2 uses
  %i.fr = and i64 %i.fj, -262144
  %i.fs = inttoptr i64 %i.fr to ptr
  %i.ft = load i64, ptr %i.fs, align 262144       ; 2 uses
  %i.fu = and i64 %i.ft, 32
  %.not.i.i.i.i.i27.i.i = icmp eq i64 %i.fu, 0
  %i.fv = and i64 %i.ft, 25
  %.not37.i.i.i.i.i28.i.i = icmp eq i64 %i.fv, 0
  br i1 %.not37.i.i.i.i.i28.i.i, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.fw = and i64 %i.fh, -262144
  %i.fx = inttoptr i64 %i.fw to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i29.i.i = load i64, ptr %i.fx, align 262144
  %i.fy = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i29.i.i, 25
  %.not38.i.i.i.i.i30.i.i = icmp eq i64 %i.fy, 0
  br i1 %.not38.i.i.i.i.i30.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.fp, i64 noundef %i.fq, i64 %i.fh) #23
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  br i1 %.not.i.i.i.i.i27.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i, label %bb.u, !prof !13

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.fp, i64 %i.fq, i64 %i.fh) #23
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i: ; preds = %bb.u, %bb.t, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i
  %i.fz = add i32 %.055.i.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i, %bb.l, %.lr.ph.split.i.i
  %.1.i.i = phi i32 [ %i.fz, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i ], [ %.055.i.i, %.lr.ph.split.i.i ], [ %.055.i.i, %bb.l ] ; 2 uses
  %i.ga = add nuw nsw i64 %.02652.i.i, 1          ; 2 uses
  %exitcond.not.i61.i = icmp eq i64 %i.ga, %.0.in.in.i.i58.i
  br i1 %exitcond.not.i61.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i, label %.lr.ph.split.i.i, !llvm.loop !3378

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i: ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i
  %.0.lcssa.i.i = phi i32 [ 0, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i ], [ %.1.us.i.i, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i ], [ %.1.i.i, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i ] ; 4 uses
  %i.gb = load i64, ptr %4, align 8               ; 2 uses
  %i.gc = load i64, ptr %.sroa.072.0.i, align 8   ; 3 uses
  %i.gd = icmp slt i64 %i.e, 0
  br i1 %i.gd, label %bb.v, label %bb.x

bb.v:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i
  %i.ge = add i64 %i.gb, -1
  %i.gf = inttoptr i64 %i.ge to ptr
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load i64, ptr %i.gg, align 8
  %i.gi = lshr i64 %i.gh, 32
  %i.gj = trunc nuw i64 %i.gi to i32
  %i.gk = add i64 %i.gc, -1
  %i.gl = inttoptr i64 %i.gk to ptr               ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = load i64, ptr %i.gm, align 8
  %i.go = lshr i64 %i.gn, 32
  %i.gp = trunc nuw i64 %i.go to i32              ; 2 uses
  %i.gq = sub i32 %i.gp, %.0.lcssa.i.i
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %i.gq, i32 %i.gj) ; 3 uses
  %i.gr = add i32 %.sroa.speculated.i.i, %.0.lcssa.i.i ; 2 uses
  %i.gs = sub nsw i32 %i.gp, %i.gr                ; 2 uses
  %i.gt = icmp sgt i32 %i.gs, 0
  br i1 %i.gt, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gv = sext i32 %i.gr to i64
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.gu, i64 %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.gy = load i64, ptr %i.gx, align 8
  %i.gz = zext nneg i32 %i.gs to i64
  %i.ha = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.gy, i64 %i.gz, ptr nonnull %i.gw) #23, !srcloc !3333 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i
  %.0.i62.i = phi i32 [ %i.g, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i ], [ %.sroa.speculated.i.i, %bb.w ], [ %.sroa.speculated.i.i, %bb.v ] ; 2 uses
  %i.hb = icmp eq i32 %.0.i62.i, 0
  br i1 %i.hb, label %bb.y, label %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i

_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i: ; preds = %bb.x
  %i.hc = sext i32 %.0.lcssa.i.i to i64
  %i.hd = add i64 %i.gc, 15
  %.idx.i.i.i.i = shl nsw i64 %i.hc, 3
  %i.he = add i64 %i.hd, %.idx.i.i.i.i
  %i.hf = add i64 %i.gb, 15
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 55464
  tail call void @_ZN2v88internal4Heap9CopyRangeINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S7_iNS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(2992) %i.hg, i64 %i.gc, i64 %i.he, i64 %i.hf, i32 noundef %.0.i62.i, i32 noundef 4) #23
  br label %bb.y

bb.y:                                             ; preds = %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i, %bb.x
  %i.hh = add i32 %.0.lcssa.i.i, %i.g
  %i.hi = tail call ptr @_ZN2v88internal10FixedArray16RightTrimOrEmptyINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEES5_PNS0_7IsolateES5_i(ptr noundef nonnull %1, ptr nonnull %.sroa.072.0.i, i32 noundef %i.hh) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit: ; preds = %bb.b, %bb.y
  %.sroa.086.1.i = phi ptr [ null, %bb.b ], [ %i.hi, %bb.y ]
  ret ptr %.sroa.086.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE27AddElementsToKeyAccumulatorENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8                ; 5 uses
  %i.b = load i64, ptr %1, align 8
  %i.c = add i64 %i.b, 15
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 560 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
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
  %i.o = load i64, ptr %1, align 8                ; 2 uses
  %i.p = add i64 %i.o, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.s = add i64 %i.r, 11
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i16, ptr %i.t monotonic, align 2
  %i.v = icmp eq i16 %i.u, 2119
  %i.w = add i64 %i.o, 23
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = add i64 %i.e, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.0.in.in.in.in.i.i.i = select i1 %i.v, ptr %i.x, ptr %i.aa
  %.0.in.in.in.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i, align 8
  %.0.in.in.i.i.i = lshr i64 %.0.in.in.in.i.i.i, 32 ; 2 uses
  %.not45.i = icmp eq i64 %.0.in.in.i.i.i, 0
  br i1 %.not45.i, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i
  %.02246.i = phi i64 [ 0, %.lr.ph.i ], [ %i.at, %bb.f ] ; 2 uses
  %i.ac = load i64, ptr %.0.i.i.i, align 8
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %sext.i.i = shl i64 %.02246.i, 32
  %i.ag = ashr exact i64 %sext.i.i, 29
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag ; 2 uses
  %i.ai = load atomic volatile i64, ptr %i.ah monotonic, align 8
  %i.aj = load i64, ptr %i.ab, align 8
  %.not44.i = icmp eq i64 %i.ai, %i.aj
  br i1 %.not44.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = load atomic volatile i64, ptr %i.ah monotonic, align 8
  %i.al = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.am = load ptr, ptr %i.h, align 8
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.e, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i, !prof !5

bb.e:                                             ; preds = %bb.d
  %i.ao = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.a) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i26.i = phi ptr [ %i.ao, %bb.e ], [ %i.al, %bb.d ] ; 3 uses
  %i.ap = ptrtoint ptr %.0.i.i26.i to i64
  %i.aq = add i64 %i.ap, 8
  %i.ar = inttoptr i64 %i.aq to ptr
  store ptr %i.ar, ptr %i.f, align 8
  store i64 %i.ak, ptr %.0.i.i26.i, align 8
  %i.as = tail call noundef zeroext i1 @_ZN2v88internal14KeyAccumulator6AddKeyENS0_12DirectHandleINS0_6ObjectEEENS0_16AddKeyConversionE(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr nonnull %.0.i.i26.i, i32 noundef %3) #23
  br i1 %i.as, label %bb.f, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit

bb.f:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i, %bb.c
  %i.at = add nuw nsw i64 %.02246.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.at, %.0.in.in.i.i.i
  br i1 %exitcond.not.i, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit, label %bb.c, !llvm.loop !3379

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i, %bb.f, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.not.lcssa.i = phi i1 [ true, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ false, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i ], [ true, %bb.f ]
  ret i1 %.not.lcssa.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE22TransitionElementsKindEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_3MapEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr %2, ptr %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i.i, align 8
  %i.n = add i64 %i.d, 14
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i8, ptr %i.o, align 1               ; 3 uses
  %i.q = lshr i8 %i.p, 2                          ; 4 uses
  %i.r = load i64, ptr %3, align 8
  %i.s = add i64 %i.r, 14
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i8, ptr %i.t, align 1
  %i.v = lshr i8 %i.u, 2                          ; 3 uses
  %i.w = trunc i8 %i.q to i1
  %i.x = icmp ult i8 %i.p, 24
  %i.y = and i1 %i.x, %i.w
  br i1 %i.y, label %bb.c, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  switch i8 %i.v, label %bb.f [
    i8 0, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i
    i8 4, label %bb.d
    i8 2, label %bb.e
    i8 6, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  ]

bb.d:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.e:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.f:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.0.i = phi i8 [ %i.v, %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.v, %bb.f ], [ 5, %bb.d ], [ 3, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %.not.i = icmp eq i8 %i.q, %.0.i
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE26TransitionElementsKindImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_3MapEEE.exit, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i: ; preds = %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i, %bb.c
  %.0103.i = phi i8 [ %.0.i, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i ], [ 7, %bb.c ] ; 2 uses
  %i.z = load i64, ptr %2, align 8
  %i.aa = add i64 %i.z, 15
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ae = load ptr, ptr %i.g, align 8
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.g, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i, !prof !5

bb.g:                                             ; preds = %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  %i.ag = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i: ; preds = %bb.g, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  %.0.i.i38.i = phi ptr [ %i.ag, %bb.g ], [ %i.ad, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i ] ; 4 uses
  %i.ah = ptrtoint ptr %.0.i.i38.i to i64
  %i.ai = add i64 %i.ah, 8
  %i.aj = inttoptr i64 %i.ai to ptr
  store ptr %i.aj, ptr %i.e, align 8
  store i64 %i.ac, ptr %.0.i.i38.i, align 8
  %i.ak = load i64, ptr %2, align 8
  %i.al = add i64 %i.ak, 15
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 864
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = icmp eq i64 %i.an, %i.ap
  br i1 %i.aq, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i
  %i.ar = and i8 %i.p, -8
  %i.as = icmp eq i8 %i.ar, 16
  %i.at = and i8 %.0103.i, -2
  %i.au = icmp eq i8 %i.at, 4
  %i.av = xor i1 %i.as, %i.au
  br i1 %i.av, label %bb.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.h, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i
  tail call void @_ZN2v88internal8JSObject12MigrateToMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEEi(ptr noundef nonnull %1, ptr nonnull %2, ptr nonnull %3, i32 noundef 0) #23
  br label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

bb.i:                                             ; preds = %bb.h
  %i.aw = add i64 %i.an, -1
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = lshr i64 %i.az, 32
  %i.bb = trunc nuw i64 %i.ba to i32
  %i.bc = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE27ConvertElementsWithCapacityEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEES5_jjj(ptr noundef nonnull %1, ptr nonnull readonly %2, ptr nonnull readonly %.0.i.i38.i, i8 noundef zeroext %i.q, i32 noundef %i.bb, i32 noundef 0) ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.j, label %_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i, !prof !5

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.27) #24
  unreachable

_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i: ; preds = %bb.i
  tail call void @_ZN2v88internal8JSObject12MigrateToMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEEi(ptr noundef nonnull %1, ptr nonnull %2, ptr nonnull %3, i32 noundef 0) #23
  %i.be = load i64, ptr %2, align 8               ; 4 uses
  %i.bf = load i64, ptr %i.bc, align 8            ; 5 uses
  %i.bg = add i64 %i.be, 15                       ; 3 uses
  %i.bh = inttoptr i64 %i.bg to ptr
  store atomic volatile i64 %i.bf, ptr %i.bh monotonic, align 8
  %i.bi = trunc i64 %i.bf to i1
  br i1 %i.bi, label %bb.k, label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

bb.k:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i
  %i.bj = and i64 %i.be, -262144
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load i64, ptr %i.bk, align 262144       ; 2 uses
  %i.bm = and i64 %i.bl, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.bm, 0
  %i.bn = and i64 %i.bl, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not37.i.i.i.i.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bo = and i64 %i.bf, -262144
  %i.bp = inttoptr i64 %i.bo to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bp, align 262144
  %i.bq = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not38.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.be, i64 noundef %i.bg, i64 %i.bf) #23
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i, label %bb.o, !prof !13

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.be, i64 %i.bg, i64 %i.bf) #23
  br label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i: ; preds = %bb.o, %bb.n, %_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i, %.critedge.i
  %i.br = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1925), align 1, !range !16, !noundef !17
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.p, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_28FastHoleySmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE1EEEE26TransitionElementsKindImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_3MapEEE.exit
end_hunk_2
begin_hunk_3_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE2EEEE21PrependElementIndicesEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE:bb.a
  %.0.in.in.i.i.i.i.i = lshr i64 %.0.in.in.in.i.i.i.i.i, 32
  %i.cw = icmp samesign ult i64 %.02651.i.i, %.0.in.in.i.i.i.i.i
  br i1 %i.cw, label %bb.k, label %bb.t

bb.k:                                             ; preds = %.lr.ph.split.i.i
  %i.cx = icmp samesign ult i64 %.02651.i.i, 2147483648
  br i1 %i.cx, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cy = shl nuw nsw i64 %.02651.i.i, 32         ; 2 uses
  %i.cz = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.da = load ptr, ptr %i.aw, align 8
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %bb.m, label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i, !prof !5

bb.m:                                             ; preds = %bb.l
  %i.dc = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %1) #23
  br label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i

_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i = phi ptr [ %i.dc, %bb.m ], [ %i.cz, %bb.l ] ; 2 uses
  %i.dd = ptrtoint ptr %.0.i.i.i.i.i.i to i64
  %i.de = add i64 %i.dd, 8
  %i.df = inttoptr i64 %i.de to ptr
  store ptr %i.df, ptr %i.av, align 8
  store i64 %i.cy, ptr %.0.i.i.i.i.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i

bb.n:                                             ; preds = %bb.k
  %i.dg = uitofp nneg i64 %.02651.i.i to double
  %i.dh = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #23 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = add i64 %i.di, -1
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store double %i.dg, ptr %i.dl, align 1
  %.pre.i.i = load i64, ptr %i.dh, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i

_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i: ; preds = %bb.n, %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i
  %i.dm = phi i64 [ %i.cy, %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i ], [ %.pre.i.i, %bb.n ] ; 5 uses
  %i.dn = load i64, ptr %.sroa.069.0.i, align 8
  %i.do = add i64 %i.dn, -1                       ; 3 uses
  %i.dp = inttoptr i64 %i.do to ptr
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = sext i32 %.054.i.i to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.dr ; 2 uses
  store atomic volatile i64 %i.dm, ptr %i.ds monotonic, align 8
  %i.dt = trunc i64 %i.dm to i1
  br i1 %i.dt, label %bb.o, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i

bb.o:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i
  %i.du = or disjoint i64 %i.do, 1                ; 2 uses
  %i.dv = ptrtoint ptr %i.ds to i64               ; 2 uses
  %i.dw = and i64 %i.do, -262144
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = load i64, ptr %i.dx, align 262144       ; 2 uses
  %i.dz = and i64 %i.dy, 32
  %.not.i.i.i.i.i27.i.i = icmp eq i64 %i.dz, 0
  %i.ea = and i64 %i.dy, 25
  %.not37.i.i.i.i.i28.i.i = icmp eq i64 %i.ea, 0
  br i1 %.not37.i.i.i.i.i28.i.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.eb = and i64 %i.dm, -262144
  %i.ec = inttoptr i64 %i.eb to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i29.i.i = load i64, ptr %i.ec, align 262144
  %i.ed = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i29.i.i, 25
  %.not38.i.i.i.i.i30.i.i = icmp eq i64 %i.ed, 0
  br i1 %.not38.i.i.i.i.i30.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.du, i64 noundef %i.dv, i64 %i.dm) #23
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  br i1 %.not.i.i.i.i.i27.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i, label %bb.s, !prof !13

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.du, i64 %i.dv, i64 %i.dm) #23
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i: ; preds = %bb.s, %bb.r, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i
  %i.ee = add i32 %.054.i.i, 1
  br label %bb.t

bb.t:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i, %.lr.ph.split.i.i
  %.1.i.i = phi i32 [ %i.ee, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i ], [ %.054.i.i, %.lr.ph.split.i.i ] ; 2 uses
  %i.ef = add nuw nsw i64 %.02651.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ef, %.0.in.in.i.i58.i
  br i1 %exitcond.not.i.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE2EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i, label %.lr.ph.split.i.i, !llvm.loop !3399

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE2EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i: ; preds = %bb.t, %bb.j, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i
  %.0.lcssa.i.i = phi i32 [ 0, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i ], [ %.1.us.i.i, %bb.j ], [ %.1.i.i, %bb.t ] ; 3 uses
  %i.eg = load i64, ptr %4, align 8               ; 2 uses
  %i.eh = load i64, ptr %.sroa.069.0.i, align 8   ; 3 uses
  %i.ei = icmp slt i64 %i.e, 0
  br i1 %i.ei, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE2EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i
  %i.ej = add i64 %i.eg, -1
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load i64, ptr %i.el, align 8
  %i.en = lshr i64 %i.em, 32
  %i.eo = trunc nuw i64 %i.en to i32
  %i.ep = add i64 %i.eh, -1
  %i.eq = inttoptr i64 %i.ep to ptr               ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load i64, ptr %i.er, align 8
  %i.et = lshr i64 %i.es, 32
  %i.eu = trunc nuw i64 %i.et to i32              ; 2 uses
  %i.ev = sub i32 %i.eu, %.0.lcssa.i.i
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %i.ev, i32 %i.eo) ; 3 uses
  %i.ew = add i32 %.sroa.speculated.i.i, %.0.lcssa.i.i ; 2 uses
  %i.ex = sub nsw i32 %i.eu, %i.ew                ; 2 uses
  %i.ey = icmp sgt i32 %i.ex, 0
  br i1 %i.ey, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.fa = sext i32 %i.ew to i64
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = zext nneg i32 %i.ex to i64
  %i.ff = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.fd, i64 %i.fe, ptr nonnull %i.fb) #23, !srcloc !3333 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE2EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i
  %.0.i59.i = phi i32 [ %i.g, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE2EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i ], [ %.sroa.speculated.i.i, %bb.v ], [ %.sroa.speculated.i.i, %bb.u ] ; 2 uses
  %i.fg = icmp eq i32 %.0.i59.i, 0
  br i1 %i.fg, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE2EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit, label %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i

_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i: ; preds = %bb.w
  %i.fh = sext i32 %.0.lcssa.i.i to i64
  %i.fi = add i64 %i.eh, 15
  %.idx.i.i.i.i = shl nsw i64 %i.fh, 3
  %i.fj = add i64 %i.fi, %.idx.i.i.i.i
  %i.fk = add i64 %i.eg, 15
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 55464
  tail call void @_ZN2v88internal4Heap9CopyRangeINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S7_iNS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(2992) %i.fl, i64 %i.eh, i64 %i.fj, i64 %i.fk, i32 noundef %.0.i59.i, i32 noundef 4) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE2EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE2EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit: ; preds = %bb.b, %bb.w, %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i
  %.sroa.083.1.i = phi ptr [ null, %bb.b ], [ %.sroa.069.0.i, %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i ], [ %.sroa.069.0.i, %bb.w ]
  ret ptr %.sroa.083.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE2EEEE27AddElementsToKeyAccumulatorENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8                ; 4 uses
  %i.b = load i64, ptr %1, align 8
  %i.c = add i64 %i.b, 15
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 560 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
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
  %i.o = load i64, ptr %1, align 8                ; 2 uses
  %i.p = add i64 %i.o, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.s = add i64 %i.r, 11
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i16, ptr %i.t monotonic, align 2
  %i.v = icmp eq i16 %i.u, 2119
  %i.w = add i64 %i.o, 23
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = add i64 %i.e, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.0.in.in.in.in.i.i.i = select i1 %i.v, ptr %i.x, ptr %i.aa
  %.0.in.in.in.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i, align 8
  %.0.in.in.i.i.i = lshr i64 %.0.in.in.in.i.i.i, 32 ; 2 uses
  %.not44.i = icmp eq i64 %.0.in.in.i.i.i, 0
  br i1 %.not44.i, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_32FastPackedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE2EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE2EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i
  %.02245.i = phi i64 [ %i.aq, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE2EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i ], [ 0, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ] ; 2 uses
  %i.ab = load i64, ptr %.0.i.i.i, align 8
  %i.ac = add i64 %i.ab, -1
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %sext.i25.i = shl i64 %.02245.i, 32
  %i.af = ashr exact i64 %sext.i25.i, 29
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 %i.af
  %i.ah = load atomic volatile i64, ptr %i.ag monotonic, align 8
  %i.ai = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.aj = load ptr, ptr %i.h, align 8
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.c, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE2EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i, !prof !5

bb.c:                                             ; preds = %.lr.ph.i
  %i.al = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.a) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE2EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE2EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i: ; preds = %bb.c, %.lr.ph.i
  %.0.i.i26.i = phi ptr [ %i.al, %bb.c ], [ %i.ai, %.lr.ph.i ] ; 3 uses
  %i.am = ptrtoint ptr %.0.i.i26.i to i64
  %i.an = add i64 %i.am, 8
  %i.ao = inttoptr i64 %i.an to ptr
  store ptr %i.ao, ptr %i.f, align 8
  store i64 %i.ah, ptr %.0.i.i26.i, align 8
  %i.ap = tail call noundef zeroext i1 @_ZN2v88internal14KeyAccumulator6AddKeyENS0_12DirectHandleINS0_6ObjectEEENS0_16AddKeyConversionE(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr nonnull %.0.i.i26.i, i32 noundef %3) #23 ; 2 uses
  %i.aq = add nuw nsw i64 %.02245.i, 1            ; 2 uses
  %exitcond.not.i = icmp ne i64 %i.aq, %.0.in.in.i.i.i
  %or.cond.not = select i1 %i.ap, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_32FastPackedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE2EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit, !llvm.loop !3400

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_32FastPackedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE2EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE2EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.not.lcssa.i = phi i1 [ true, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.ap, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE2EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i ]
  ret i1 %.not.lcssa.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE2EEEE22TransitionElementsKindEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_3MapEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr %2, ptr %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i.i, align 8
  %i.n = add i64 %i.d, 14
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i8, ptr %i.o, align 1               ; 3 uses
  %i.q = lshr i8 %i.p, 2                          ; 4 uses
  %i.r = load i64, ptr %3, align 8
  %i.s = add i64 %i.r, 14
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i8, ptr %i.t, align 1
  %i.v = lshr i8 %i.u, 2                          ; 3 uses
  %i.w = trunc i8 %i.q to i1
  %i.x = icmp ult i8 %i.p, 24
  %i.y = and i1 %i.x, %i.w
  br i1 %i.y, label %bb.c, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  switch i8 %i.v, label %bb.f [
    i8 0, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i
    i8 4, label %bb.d
    i8 2, label %bb.e
    i8 6, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  ]

bb.d:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.e:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.f:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.0.i = phi i8 [ %i.v, %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.v, %bb.f ], [ 5, %bb.d ], [ 3, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %.not.i = icmp eq i8 %i.q, %.0.i
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE2EEEE26TransitionElementsKindImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_3MapEEE.exit, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i: ; preds = %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i, %bb.c
  %.0103.i = phi i8 [ %.0.i, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i ], [ 7, %bb.c ] ; 2 uses
  %i.z = load i64, ptr %2, align 8
  %i.aa = add i64 %i.z, 15
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ae = load ptr, ptr %i.g, align 8
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.g, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i, !prof !5

bb.g:                                             ; preds = %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  %i.ag = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i: ; preds = %bb.g, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  %.0.i.i38.i = phi ptr [ %i.ag, %bb.g ], [ %i.ad, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i ] ; 4 uses
  %i.ah = ptrtoint ptr %.0.i.i38.i to i64
  %i.ai = add i64 %i.ah, 8
  %i.aj = inttoptr i64 %i.ai to ptr
  store ptr %i.aj, ptr %i.e, align 8
  store i64 %i.ac, ptr %.0.i.i38.i, align 8
  %i.ak = load i64, ptr %2, align 8
  %i.al = add i64 %i.ak, 15
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 864
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = icmp eq i64 %i.an, %i.ap
  br i1 %i.aq, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i
  %i.ar = and i8 %i.p, -8
  %i.as = icmp eq i8 %i.ar, 16
  %i.at = and i8 %.0103.i, -2
  %i.au = icmp eq i8 %i.at, 4
  %i.av = xor i1 %i.as, %i.au
  br i1 %i.av, label %bb.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.h, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i
  tail call void @_ZN2v88internal8JSObject12MigrateToMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEEi(ptr noundef nonnull %1, ptr nonnull %2, ptr nonnull %3, i32 noundef 0) #23
  br label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

bb.i:                                             ; preds = %bb.h
  %i.aw = add i64 %i.an, -1
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = lshr i64 %i.az, 32
  %i.bb = trunc nuw i64 %i.ba to i32
  %i.bc = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE2EEEE27ConvertElementsWithCapacityEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEES5_jjj(ptr noundef nonnull %1, ptr nonnull readonly %2, ptr nonnull readonly %.0.i.i38.i, i8 noundef zeroext %i.q, i32 noundef %i.bb, i32 noundef 0) ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.j, label %_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i, !prof !5

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.27) #24
  unreachable

_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i: ; preds = %bb.i
  tail call void @_ZN2v88internal8JSObject12MigrateToMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEEi(ptr noundef nonnull %1, ptr nonnull %2, ptr nonnull %3, i32 noundef 0) #23
  %i.be = load i64, ptr %2, align 8               ; 4 uses
  %i.bf = load i64, ptr %i.bc, align 8            ; 5 uses
  %i.bg = add i64 %i.be, 15                       ; 3 uses
  %i.bh = inttoptr i64 %i.bg to ptr
  store atomic volatile i64 %i.bf, ptr %i.bh monotonic, align 8
  %i.bi = trunc i64 %i.bf to i1
  br i1 %i.bi, label %bb.k, label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

bb.k:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i
  %i.bj = and i64 %i.be, -262144
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load i64, ptr %i.bk, align 262144       ; 2 uses
  %i.bm = and i64 %i.bl, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.bm, 0
  %i.bn = and i64 %i.bl, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not37.i.i.i.i.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bo = and i64 %i.bf, -262144
  %i.bp = inttoptr i64 %i.bo to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bp, align 262144
  %i.bq = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not38.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.be, i64 noundef %i.bg, i64 %i.bf) #23
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i, label %bb.o, !prof !13

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.be, i64 %i.bg, i64 %i.bf) #23
  br label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i: ; preds = %bb.o, %bb.n, %_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i, %.critedge.i
  %i.br = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1925), align 1, !range !16, !noundef !17
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.p, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE2EEEE26TransitionElementsKindImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_3MapEEE.exit

bb.p:                                             ; preds = %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i
  %i.bt = load ptr, ptr @stdout, align 8
  %i.bu = load i64, ptr %2, align 8
  %i.bv = add i64 %i.bu, 15
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = load ptr, ptr %i.e, align 8             ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE8ValidateEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE:bb.a
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2
  %i.s = icmp eq i16 %i.r, 2119
  br i1 %i.s, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.u = add i64 %i.t, 11
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i16, ptr %i.v monotonic, align 2
  %i.x = icmp eq i16 %i.w, 2061
  br i1 %i.x, label %bb.d, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit

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
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit: ; preds = %bb.a, %bb.b, %bb.c, %_ZNK2v88internal12JSTypedArray9GetLengthEv.exit.i
  ret void
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE10HasElementEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEjNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2, i32 noundef %3, i64 %4, i32 %5) unnamed_addr #10 align 2 {
bb.a:
  %i.a = zext i32 %3 to i64                       ; 2 uses
  %i.b = add i64 %2, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 2119
  %i.i = add i64 %2, 23
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = add i64 %4, -1
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.0.in.in.in.in.i.i.i = select i1 %i.h, ptr %i.j, ptr %i.m
  %.0.in.in.in.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i, align 8
  %.0.in.in.i.i.i = lshr i64 %.0.in.in.in.i.i.i, 32
  %i.n = icmp samesign ugt i64 %.0.in.in.i.i.i, %i.a
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %sext.i.i = shl nuw i64 %i.a, 32
  %i.p = ashr exact i64 %sext.i.i, 29
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 %i.p
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %i.r, %i.t
  br i1 %i.u, label %bb.c, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit: ; preds = %bb.b, %bb.c
  %.sroa.013.1.i.i = phi i1 [ false, %bb.c ], [ true, %bb.b ]
  ret i1 %.sroa.013.1.i.i
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE8HasEntryEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENS0_13InternalIndexE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2, i64 %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = add i64 %2, 15
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %sext.i = shl i64 %3, 32
  %i.g = ashr exact i64 %sext.i, 29
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 %i.g
  %i.i = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp ne i64 %i.i, %i.k
  ret i1 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE3GetEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %2, i64 %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %sext.i.i = shl i64 %3, 32
  %i.h = ashr exact i64 %sext.i.i, 29
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE15GetInternalImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE15GetInternalImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE15GetInternalImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi ptr [ %i.p, %bb.b ], [ %i.l, %bb.a ] ; 3 uses
  %i.q = ptrtoint ptr %.0.i.i.i to i64
  %i.r = add i64 %i.q, 8
  %i.s = inttoptr i64 %i.r to ptr
  store ptr %i.s, ptr %i.k, align 8
  store i64 %i.j, ptr %.0.i.i.i, align 8
  ret ptr %.0.i.i.i
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE9GetAtomicEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE12HasAccessorsENS0_6TaggedINS0_8JSObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1) unnamed_addr #12 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef range(i64 0, 4294967296) i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE16NumberOfElementsEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2) unnamed_addr #10 align 2 {
bb.a:
  %i.a = add i64 %2, 15
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %2, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = icmp eq i16 %i.i, 2119
  %i.k = add i64 %2, 23
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = add i64 %i.c, -1
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.0.in.in.in.in.i.i = select i1 %i.j, ptr %i.l, ptr %i.o
  %.0.in.in.in.i.i = load i64, ptr %.0.in.in.in.in.i.i, align 8
  %.0.in.in.in.i.i.fr = freeze i64 %.0.in.in.in.i.i ; 2 uses
  %.0.in.in.i.i = lshr i64 %.0.in.in.in.i.i.fr, 32 ; 4 uses
  %.not17.i = icmp eq i64 %.0.in.in.i.i, 0
  br i1 %.not17.i, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 2 uses
  %i.r = icmp eq i64 %.0.in.in.i.i, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.0.in.in.i.i, 4294967294
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.01316.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ac, %bb.b ] ; 3 uses
  %.01415.i = phi i32 [ 0, %.lr.ph.i.new ], [ %spec.select.i.1, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %sext.i.i = shl i64 %.01316.i, 32
  %i.s = ashr exact i64 %sext.i.i, 29
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 %i.s
  %i.u = load atomic volatile i64, ptr %i.t monotonic, align 8
  %i.v = load i64, ptr %i.q, align 8              ; 2 uses
  %.not.i = icmp ne i64 %i.u, %i.v
  %i.w = zext i1 %.not.i to i32
  %spec.select.i = add i32 %.01415.i, %i.w
  %i.x = shl i64 %.01316.i, 32
  %sext.i.i.1 = ashr exact i64 %i.x, 29
  %i.y = getelementptr i8, ptr %i.p, i64 %sext.i.i.1
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %i.aa = load atomic volatile i64, ptr %i.z monotonic, align 8
  %.not.i.1 = icmp ne i64 %i.aa, %i.v
  %i.ab = zext i1 %.not.i.1 to i32
  %spec.select.i.1 = add i32 %spec.select.i, %i.ab ; 3 uses
  %i.ac = add nuw nsw i64 %.01316.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !3418

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %i.ad = and i64 %.0.in.in.in.i.i.fr, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.ad, 0
  br i1 %lcmp.mod.not, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.01316.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ac, %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa ]
  %.01415.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %spec.select.i.1, %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod6 = trunc i64 %.0.in.in.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod6)
  %sext.i.i.epil = shl i64 %.01316.i.epil.init, 32
  %i.ae = ashr exact i64 %sext.i.i.epil, 29
  %i.af = getelementptr inbounds i8, ptr %i.p, i64 %i.ae
  %i.ag = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.ah = load i64, ptr %i.q, align 8
  %.not.i.epil = icmp ne i64 %i.ag, %i.ah
  %i.ai = zext i1 %.not.i.epil to i32
  %spec.select.i.epil = add i32 %.01415.i.epil.init, %i.ai
  br label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit: ; preds = %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa, %.epil.preheader
  %spec.select.i.lcssa = phi i32 [ %spec.select.i.1, %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa ], [ %spec.select.i.epil, %.epil.preheader ]
  %i.aj = zext i32 %spec.select.i.lcssa to i64
  br label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit, %bb.a
  %.014.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.aj, %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit ]
  ret i64 %.014.lcssa.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i16 0, 258) i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE9SetLengthEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 5 uses
  %i.k = ptrtoint ptr %.0.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i, align 8
  %i.n = load i64, ptr %2, align 8                ; 2 uses
  %i.o = add i64 %i.n, 23
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8              ; 4 uses
  %i.r = and i64 %i.q, 1
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.c, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.t = icmp sgt i64 %i.q, -1
  br i1 %i.t, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread131.i, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i, !prof !107

_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread131.i: ; preds = %bb.c
  %i.u = lshr i64 %i.q, 32
  %i.v = trunc nuw nsw i64 %i.u to i32
  br label %bb.e

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i: ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.w = add nsw i64 %i.q, -1
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = load atomic volatile i64, ptr %i.x monotonic, align 8
  %i.z = add i64 %i.y, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = icmp eq i16 %i.ab, 130
  br i1 %i.ac, label %bb.d, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i, !prof !107

bb.d:                                             ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.ad, align 8 ; 2 uses
  %i.ae = fadd double %.0.copyload.i.i.i.i.i.i.i, f0x4330000000000000
  %i.af = bitcast double %i.ae to i64             ; 2 uses
  %.mask.i.i.i.i = and i64 %i.af, -4294967296
  %i.ag = icmp eq i64 %.mask.i.i.i.i, 4841369599423283200
  br i1 %i.ag, label %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i, !prof !107

_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i: ; preds = %bb.d
  %i.ah = trunc i64 %i.af to i32                  ; 3 uses
  %i.ai = uitofp i32 %i.ah to double
  %i.aj = fcmp oeq double %.0.copyload.i.i.i.i.i.i.i, %i.ai
  %i.ak = icmp ne i32 %i.ah, -1
  %or.cond.i = and i1 %i.ak, %i.aj
  br i1 %or.cond.i, label %bb.e, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i, !prof !3326

_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i: ; preds = %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i, %bb.d, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.26) #24
  unreachable

bb.e:                                             ; preds = %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i, %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread131.i
  %.0133.i = phi i32 [ %i.v, %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread131.i ], [ %i.ah, %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i ] ; 3 uses
  %i.al = icmp ult i32 %.0133.i, %3
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.am = add i64 %i.n, -1
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load atomic volatile i64, ptr %i.an monotonic, align 8
  %i.ap = add i64 %i.ao, 14
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load i8, ptr %i.aq, align 1             ; 3 uses
  %i.as = lshr i8 %i.ar, 2                        ; 4 uses
  %i.at = trunc i8 %i.as to i1
  %i.au = icmp ult i8 %i.ar, 24
  %i.av = and i1 %i.au, %i.at
  br i1 %i.av, label %.thread, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i: ; preds = %bb.f
  %i.aw = icmp ult i8 %i.ar, 28
  %switch.shifted = lshr i8 85, %i.as
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.aw, i1 %switch.lobit, i1 false
  %switch.cast = zext nneg i8 %i.as to i56
  %switch.shiftamt = shl nuw nsw i56 %switch.cast, 3
  %switch.downshift = lshr i56 1970346312007681, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  %.0.i.i5 = select i1 %or.cond, i8 %switch.masked, i8 %i.as
  tail call void @_ZN2v88internal8JSObject22TransitionElementsKindEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_12ElementsKindE(ptr noundef nonnull %1, ptr nonnull %2, i8 noundef zeroext %.0.i.i5) #23
  %.pre = load i64, ptr %.0.i.i, align 8
  br label %.thread

.thread:                                          ; preds = %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i, %bb.f
  %.ph = phi i64 [ %i.d, %bb.f ], [ %.pre, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i ] ; 2 uses
  %i.ax = add i64 %.ph, -1
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = lshr i64 %i.ba, 32                      ; 2 uses
  %i.bc = trunc nuw i64 %i.bb to i32              ; 2 uses
  %.sroa.speculated73.i27 = tail call i32 @llvm.umin.i32(i32 %.0133.i, i32 %i.bc)
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.bd = add i64 %i.d, -1
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = lshr i64 %i.bg, 32                      ; 2 uses
  %i.bi = trunc nuw i64 %i.bh to i32              ; 2 uses
  %.sroa.speculated73.i = tail call i32 @llvm.umin.i32(i32 %.0133.i, i32 %i.bi)
  %i.bj = icmp eq i32 %3, 0
  br i1 %i.bj, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.bk = load i64, ptr %2, align 8               ; 2 uses
  %i.bl = add i64 %i.bk, -1
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load atomic volatile i64, ptr %i.bm monotonic, align 8
  %i.bo = add i64 %i.bn, 14
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = load i8, ptr %i.bp, align 1             ; 4 uses
  %i.br = icmp ult i8 %i.bq, 24
  br i1 %i.br, label %_ZN2v88internal8JSObject19initialize_elementsEv.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.mask.i.i.i37.i = and i8 %i.bq, -4             ; 2 uses
  %i.bs = icmp eq i8 %.mask.i.i.i37.i, 64
  %i.bt = icmp ult i8 %i.bq, 52
  %or.cond.i.i.i = or i1 %i.bt, %i.bs
  br i1 %or.cond.i.i.i, label %_ZN2v88internal8JSObject19initialize_elementsEv.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = lshr i8 %i.bq, 2
  %i.bv = add nsw i8 %i.bu, -18
  %i.bw = icmp ult i8 %i.bv, 24
  br i1 %i.bw, label %_ZN2v88internal8JSObject19initialize_elementsEv.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = icmp eq i8 %.mask.i.i.i37.i, 52
  br i1 %i.bx, label %_ZN2v88internal8JSObject19initialize_elementsEv.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable

_ZN2v88internal8JSObject19initialize_elementsEv.exit.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.sink13.i.i.i = phi i64 [ 312, %bb.h ], [ 1272, %bb.j ], [ 312, %bb.i ], [ 1304, %bb.k ]
  %i.by = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 10624
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sink13.i.i.i
  %.sroa.06.0.i.i.i = load i64, ptr %i.cb, align 8
  %i.cc = add i64 %i.bk, 15
  %i.cd = inttoptr i64 %i.cc to ptr
  store atomic volatile i64 %.sroa.06.0.i.i.i, ptr %i.cd monotonic, align 8
  br label %_ZN2v88internal10FixedArray13FillWithHolesEii.exit.i

bb.m:                                             ; preds = %.thread, %bb.g
  %.sroa.speculated73.i28 = phi i32 [ %.sroa.speculated73.i27, %.thread ], [ %.sroa.speculated73.i, %bb.g ] ; 2 uses
  %i.ce = phi i32 [ %i.bc, %.thread ], [ %i.bi, %bb.g ] ; 3 uses
  %i.cf = phi i64 [ %i.bb, %.thread ], [ %i.bh, %bb.g ]
  %i.cg = phi i64 [ %.ph, %.thread ], [ %i.d, %bb.g ]
  %.not.i = icmp ugt i32 %3, %i.ce
  br i1 %.not.i, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ch = load i64, ptr %2, align 8
end_hunk_4
begin_hunk_5_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE22CollectValuesOrEntriesEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE:bb.a
bb.g:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i
  %i.bf = or disjoint i64 %i.ax, 1                ; 2 uses
  %i.bg = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bh = and i64 %i.ax, -262144
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load i64, ptr %i.bi, align 262144       ; 2 uses
  %i.bk = and i64 %i.bj, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bk, 0
  %i.bl = and i64 %i.bj, 25
  %.not37.i.i.i.i.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not37.i.i.i.i.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bm = and i64 %i.ba, -262144
  %i.bn = inttoptr i64 %i.bm to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.bn, align 262144
  %i.bo = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.bf, i64 noundef %i.bg, i64 %i.ba) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i, label %bb.k, !prof !13

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.bf, i64 %i.bg, i64 %i.ba) #23
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i: ; preds = %bb.k, %bb.j, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i, %bb.d
  %.1.i = phi i32 [ %.098.i, %bb.d ], [ %i.az, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i ], [ %i.az, %bb.j ], [ %i.az, %bb.k ] ; 2 uses
  %indvars.iv.next106.i = add nuw nsw i64 %indvars.iv105.i, 1 ; 2 uses
  %exitcond109.not.i = icmp eq i64 %indvars.iv.next106.i, %i.r
  br i1 %exitcond109.not.i, label %_ZN2v88internal12_GLOBAL__N_131FastSmiOrObjectElementsAccessorINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE26CollectValuesOrEntriesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE.exit, label %bb.d, !llvm.loop !3420

bb.l:                                             ; preds = %bb.a
  %i.bp = add i64 %i.d, -1
  %i.bq = inttoptr i64 %i.bp to ptr               ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = lshr i64 %i.bs, 32                      ; 2 uses
  %.not101.i = icmp eq i64 %i.bt, 0
  br i1 %.not101.i, label %_ZN2v88internal12_GLOBAL__N_131FastSmiOrObjectElementsAccessorINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE26CollectValuesOrEntriesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 656
  br label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i ] ; 2 uses
  %.296.i = phi i32 [ 0, %.lr.ph.i ], [ %.3.i, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i ] ; 3 uses
  %sext.i46.i = shl nuw i64 %indvars.iv.i, 32
  %i.bw = ashr exact i64 %sext.i46.i, 29
  %i.bx = getelementptr inbounds i8, ptr %i.bu, i64 %i.bw ; 2 uses
  %i.by = load atomic volatile i64, ptr %i.bx monotonic, align 8
  %i.bz = load i64, ptr %i.bv, align 8
  %.not.i = icmp eq i64 %i.by, %i.bz
  br i1 %.not.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = load atomic volatile i64, ptr %i.bx monotonic, align 8 ; 5 uses
  %i.cb = load i64, ptr %3, align 8
  %i.cc = add i64 %i.cb, -1                       ; 3 uses
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = add nsw i32 %.296.i, 1                  ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cg = sext i32 %.296.i to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.cg ; 2 uses
  store atomic volatile i64 %i.ca, ptr %i.ch monotonic, align 8
  %i.ci = trunc i64 %i.ca to i1
  br i1 %i.ci, label %bb.o, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i

bb.o:                                             ; preds = %bb.n
  %i.cj = or disjoint i64 %i.cc, 1                ; 2 uses
  %i.ck = ptrtoint ptr %i.ch to i64               ; 2 uses
  %i.cl = and i64 %i.cc, -262144
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = load i64, ptr %i.cm, align 262144       ; 2 uses
  %i.co = and i64 %i.cn, 32
  %.not.i.i.i.i.i48.i = icmp eq i64 %i.co, 0
  %i.cp = and i64 %i.cn, 25
  %.not37.i.i.i.i.i49.i = icmp eq i64 %i.cp, 0
  br i1 %.not37.i.i.i.i.i49.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cq = and i64 %i.ca, -262144
  %i.cr = inttoptr i64 %i.cq to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i50.i = load i64, ptr %i.cr, align 262144
  %i.cs = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i50.i, 25
  %.not38.i.i.i.i.i51.i = icmp eq i64 %i.cs, 0
  br i1 %.not38.i.i.i.i.i51.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.cj, i64 noundef %i.ck, i64 %i.ca) #23
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  br i1 %.not.i.i.i.i.i48.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i, label %bb.s, !prof !13

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.cj, i64 %i.ck, i64 %i.ca) #23
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i: ; preds = %bb.s, %bb.r, %bb.n, %bb.m
  %.3.i = phi i32 [ %.296.i, %bb.m ], [ %i.ce, %bb.n ], [ %i.ce, %bb.r ], [ %i.ce, %bb.s ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.bt
  br i1 %exitcond.not.i, label %_ZN2v88internal12_GLOBAL__N_131FastSmiOrObjectElementsAccessorINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE26CollectValuesOrEntriesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE.exit, label %bb.m, !llvm.loop !3421

_ZN2v88internal12_GLOBAL__N_131FastSmiOrObjectElementsAccessorINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE26CollectValuesOrEntriesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE.exit: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %bb.l
  %.4.i = phi i32 [ %.1.i, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i ], [ 0, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ 0, %bb.l ], [ %.3.i, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i ]
  store i32 %.4.i, ptr %5, align 4
  ret i16 257
}

; Function Attrs: mustprogress nounwind uwtable
define internal ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE21PrependElementIndicesEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %2, ptr nofree readonly captures(none) %3, ptr nofree readonly captures(none) %4, i32 noundef %5, i32 %6) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load i64, ptr %4, align 8
  %i.c = add i64 %i.b, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = lshr i64 %i.f, 32                        ; 3 uses
  %i.h = trunc nuw i64 %i.g to i32                ; 3 uses
  %i.i = load i64, ptr %2, align 8                ; 2 uses
  %i.j = load i64, ptr %3, align 8
  %i.k = add i64 %i.i, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8
  %i.n = add i64 %i.m, 11
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i16, ptr %i.o monotonic, align 2
  %i.q = icmp eq i16 %i.p, 2119
  %i.r = add i64 %i.i, 23
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = add i64 %i.j, -1
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.0.in.in.in.in.i.i.i = select i1 %i.q, ptr %i.s, ptr %i.v
  %.0.in.in.in.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i, align 8
  %.0.in.in.i.i.i = lshr i64 %.0.in.in.in.i.i.i, 32 ; 2 uses
  %i.w = sub nsw i64 134217728, %i.g
  %i.x = and i64 %i.w, 4294967295
  %i.y = icmp samesign ugt i64 %.0.in.in.i.i.i, %i.x
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.z = tail call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef 238, ptr null, i64 0) #23
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %1, i64 %i.aa, ptr noundef null) #23 ; 0 uses
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit

bb.c:                                             ; preds = %bb.a
  %i.ac = add nuw nsw i64 %.0.in.in.i.i.i, %i.g
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = tail call ptr @_ZN2v88internal7Factory16TryNewFixedArrayEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.ad, i8 noundef zeroext 0) #23 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i, label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i

_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i: ; preds = %bb.c
  %i.ag = load i64, ptr %2, align 8               ; 2 uses
  %i.ah = load i64, ptr %3, align 8
  %i.ai = add i64 %i.ag, -1
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load atomic volatile i64, ptr %i.aj monotonic, align 8
  %i.al = add i64 %i.ak, 11
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load atomic volatile i16, ptr %i.am monotonic, align 2
  %i.ao = icmp eq i16 %i.an, 2119
  %i.ap = add i64 %i.ag, 23
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = add i64 %i.ah, -1
  %i.as = inttoptr i64 %i.ar to ptr               ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.0.in.in.in.in.i.i53.i = select i1 %i.ao, ptr %i.aq, ptr %i.at
  %.0.in.in.in.i.i54.i = load i64, ptr %.0.in.in.in.in.i.i53.i, align 8
  %.0.in.in.in.i.i54.i.fr = freeze i64 %.0.in.in.in.i.i54.i ; 2 uses
  %.0.in.in.i.i55.i = lshr i64 %.0.in.in.in.i.i54.i.fr, 32 ; 4 uses
  %.not17.i.i = icmp eq i64 %.0.in.in.i.i55.i, 0
  br i1 %.not17.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 2 uses
  %i.aw = icmp eq i64 %.0.in.in.i.i55.i, 1
  br i1 %i.aw, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.0.in.in.i.i55.i, 4294967294
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.new
  %.01316.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.bh, %bb.d ] ; 3 uses
  %.01415.i.i = phi i32 [ 0, %.lr.ph.i.i.new ], [ %spec.select.i.i.1, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.d ]
  %sext.i.i.i = shl i64 %.01316.i.i, 32
  %i.ax = ashr exact i64 %sext.i.i.i, 29
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 %i.ax
  %i.az = load atomic volatile i64, ptr %i.ay monotonic, align 8
  %i.ba = load i64, ptr %i.av, align 8            ; 2 uses
  %.not.i.i = icmp ne i64 %i.az, %i.ba
  %i.bb = zext i1 %.not.i.i to i32
  %spec.select.i.i = add i32 %.01415.i.i, %i.bb
  %i.bc = shl i64 %.01316.i.i, 32
  %sext.i.i.i.1 = ashr exact i64 %i.bc, 29
  %i.bd = getelementptr i8, ptr %i.au, i64 %sext.i.i.i.1
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  %i.bf = load atomic volatile i64, ptr %i.be monotonic, align 8
  %.not.i.i.1 = icmp ne i64 %i.bf, %i.ba
  %i.bg = zext i1 %.not.i.i.1 to i32
  %spec.select.i.i.1 = add i32 %spec.select.i.i, %i.bg ; 3 uses
  %i.bh = add nuw nsw i64 %.01316.i.i, 2          ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !3418

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %bb.d
  %i.bi = and i64 %.0.in.in.in.i.i54.i.fr, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.bi, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %.01316.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bh, %.loopexit.i.loopexit.unr-lcssa ]
  %.01415.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.1, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod10 = trunc i64 %.0.in.in.i.i55.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod10)
  %sext.i.i.i.epil = shl i64 %.01316.i.i.epil.init, 32
  %i.bj = ashr exact i64 %sext.i.i.i.epil, 29
  %i.bk = getelementptr inbounds i8, ptr %i.au, i64 %i.bj
  %i.bl = load atomic volatile i64, ptr %i.bk monotonic, align 8
  %i.bm = load i64, ptr %i.av, align 8
  %.not.i.i.epil = icmp ne i64 %i.bl, %i.bm
  %i.bn = zext i1 %.not.i.i.epil to i32
  %spec.select.i.i.epil = add i32 %.01415.i.i.epil.init, %i.bn
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i
  %.014.lcssa.i.i = phi i32 [ 0, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i ], [ %spec.select.i.i.1, %.loopexit.i.loopexit.unr-lcssa ], [ %spec.select.i.i.epil, %.epil.preheader ]
  %i.bo = add i32 %.014.lcssa.i.i, %i.h
  %i.bp = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.bo, i8 noundef zeroext 0, i8 0) #23
  br label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i

_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i: ; preds = %.loopexit.i, %bb.c
  %.sroa.063.0.i = phi ptr [ %i.bp, %.loopexit.i ], [ %i.ae, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4
  %i.bq = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj(ptr noundef nonnull %1, ptr nonnull readonly %2, ptr nonnull readonly %3, i32 noundef %5, ptr %.sroa.063.0.i, ptr noundef %i.a, i32 noundef 0) ; 0 uses
  %i.br = load i64, ptr %4, align 8               ; 2 uses
  %i.bs = load i64, ptr %.sroa.063.0.i, align 8   ; 3 uses
  %i.bt = load i32, ptr %i.a, align 4             ; 4 uses
  %i.bu = icmp slt i64 %i.f, 0
  br i1 %i.bu, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i
  %i.bv = add i64 %i.br, -1
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = lshr i64 %i.by, 32
  %i.ca = trunc nuw i64 %i.bz to i32
  %i.cb = add i64 %i.bs, -1
  %i.cc = inttoptr i64 %i.cb to ptr               ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = lshr i64 %i.ce, 32
  %i.cg = trunc nuw i64 %i.cf to i32              ; 2 uses
  %i.ch = sub i32 %i.cg, %i.bt
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %i.ch, i32 %i.ca) ; 3 uses
  %i.ci = add i32 %.sroa.speculated.i.i, %i.bt    ; 2 uses
  %i.cj = sub nsw i32 %i.cg, %i.ci                ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cm = sext i32 %i.ci to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = zext nneg i32 %i.cj to i64
  %i.cr = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.cp, i64 %i.cq, ptr nonnull %i.cn) #23, !srcloc !3333 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i
  %.0.i56.i = phi i32 [ %i.h, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i ], [ %.sroa.speculated.i.i, %bb.f ], [ %.sroa.speculated.i.i, %bb.e ] ; 2 uses
  %i.cs = icmp eq i32 %.0.i56.i, 0
  br i1 %i.cs, label %bb.h, label %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i

_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i: ; preds = %bb.g
  %i.ct = sext i32 %i.bt to i64
  %i.cu = add i64 %i.bs, 15
  %.idx.i.i.i.i = shl nsw i64 %i.ct, 3
  %i.cv = add i64 %i.cu, %.idx.i.i.i.i
  %i.cw = add i64 %i.br, 15
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 55464
  tail call void @_ZN2v88internal4Heap9CopyRangeINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S7_iNS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(2992) %i.cx, i64 %i.bs, i64 %i.cv, i64 %i.cw, i32 noundef %.0.i56.i, i32 noundef 4) #23
  br label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i, %bb.g
  %i.cy = add i32 %i.bt, %i.h
  %i.cz = tail call ptr @_ZN2v88internal10FixedArray16RightTrimOrEmptyINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEES5_PNS0_7IsolateES5_i(ptr noundef nonnull %1, ptr nonnull %.sroa.063.0.i, i32 noundef %i.cy) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit: ; preds = %bb.b, %bb.h
  %.sroa.077.1.i = phi ptr [ null, %bb.b ], [ %i.cz, %bb.h ]
  ret ptr %.sroa.077.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE27AddElementsToKeyAccumulatorENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE(ptr %1, ptr noundef %2, i32 noundef %3)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE22TransitionElementsKindEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_3MapEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr %2, ptr %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i.i, align 8
  %i.n = add i64 %i.d, 14
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i8, ptr %i.o, align 1               ; 3 uses
  %i.q = lshr i8 %i.p, 2                          ; 4 uses
  %i.r = load i64, ptr %3, align 8
  %i.s = add i64 %i.r, 14
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i8, ptr %i.t, align 1
  %i.v = lshr i8 %i.u, 2                          ; 3 uses
  %i.w = trunc i8 %i.q to i1
  %i.x = icmp ult i8 %i.p, 24
  %i.y = and i1 %i.x, %i.w
  br i1 %i.y, label %bb.c, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  switch i8 %i.v, label %bb.f [
    i8 0, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i
    i8 4, label %bb.d
    i8 2, label %bb.e
    i8 6, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  ]

bb.d:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.e:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.f:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.0.i = phi i8 [ %i.v, %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.v, %bb.f ], [ 5, %bb.d ], [ 3, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %.not.i = icmp eq i8 %i.q, %.0.i
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE26TransitionElementsKindImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_3MapEEE.exit, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i: ; preds = %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i, %bb.c
  %.0103.i = phi i8 [ %.0.i, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i ], [ 7, %bb.c ] ; 2 uses
  %i.z = load i64, ptr %2, align 8
  %i.aa = add i64 %i.z, 15
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ae = load ptr, ptr %i.g, align 8
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.g, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i, !prof !5

bb.g:                                             ; preds = %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  %i.ag = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i: ; preds = %bb.g, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  %.0.i.i38.i = phi ptr [ %i.ag, %bb.g ], [ %i.ad, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i ] ; 4 uses
  %i.ah = ptrtoint ptr %.0.i.i38.i to i64
  %i.ai = add i64 %i.ah, 8
  %i.aj = inttoptr i64 %i.ai to ptr
  store ptr %i.aj, ptr %i.e, align 8
  store i64 %i.ac, ptr %.0.i.i38.i, align 8
  %i.ak = load i64, ptr %2, align 8
  %i.al = add i64 %i.ak, 15
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 864
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = icmp eq i64 %i.an, %i.ap
  br i1 %i.aq, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i
  %i.ar = and i8 %i.p, -8
  %i.as = icmp eq i8 %i.ar, 16
  %i.at = and i8 %.0103.i, -2
  %i.au = icmp eq i8 %i.at, 4
  %i.av = xor i1 %i.as, %i.au
  br i1 %i.av, label %bb.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.h, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i
  tail call void @_ZN2v88internal8JSObject12MigrateToMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEEi(ptr noundef nonnull %1, ptr nonnull %2, ptr nonnull %3, i32 noundef 0) #23
  br label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

bb.i:                                             ; preds = %bb.h
  %i.aw = add i64 %i.an, -1
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = lshr i64 %i.az, 32
  %i.bb = trunc nuw i64 %i.ba to i32
end_hunk_5
begin_hunk_6_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj:bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  br i1 %.not.i.i.i.i.i.us, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us, label %bb.h, !prof !13

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ax, i64 %i.ay, i64 %i.as) #23
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us: ; preds = %bb.h, %bb.g, %bb.c
  %i.bh = add i32 %.055.us, 1
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us, %bb.b, %.lr.ph.split.us
  %.1.us = phi i32 [ %i.bh, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us ], [ %.055.us, %.lr.ph.split.us ], [ %.055.us, %bb.b ] ; 2 uses
  %i.bi = add nuw nsw i64 %.02652.us, 1           ; 2 uses
  %exitcond57.not = icmp eq i64 %i.bi, %.0.in.in.i
  br i1 %exitcond57.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !3430

._crit_edge:                                      ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us, %bb.a
  %.0.lcssa = phi i32 [ %6, %bb.a ], [ %.1.us, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us ], [ %.1, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit ]
  store i32 %.0.lcssa, ptr %5, align 4
  ret ptr %4

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit
  %.055 = phi i32 [ %.1, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit ], [ %6, %.lr.ph ] ; 4 uses
  %.02652 = phi i64 [ %i.dl, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit ], [ 0, %.lr.ph ] ; 5 uses
  %i.bj = load i64, ptr %1, align 8               ; 2 uses
  %i.bk = load i64, ptr %2, align 8
  %i.bl = add i64 %i.bj, -1
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load atomic volatile i64, ptr %i.bm monotonic, align 8
  %i.bo = add i64 %i.bn, 11
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = load atomic volatile i16, ptr %i.bp monotonic, align 2
  %i.br = icmp eq i16 %i.bq, 2119
  %i.bs = add i64 %i.bj, 23
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = add i64 %i.bk, -1
  %i.bv = inttoptr i64 %i.bu to ptr               ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.0.in.in.in.in.i.i.i = select i1 %i.br, ptr %i.bt, ptr %i.bw
  %.0.in.in.in.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i, align 8
  %.0.in.in.i.i.i = lshr i64 %.0.in.in.in.i.i.i, 32
  %i.bx = icmp samesign ult i64 %.02652, %.0.in.in.i.i.i
  br i1 %i.bx, label %bb.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit

bb.i:                                             ; preds = %.lr.ph.split
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %sext.i.i = shl nuw i64 %.02652, 32             ; 3 uses
  %i.bz = ashr exact i64 %sext.i.i, 29
  %i.ca = getelementptr inbounds i8, ptr %i.by, i64 %i.bz
  %i.cb = load atomic volatile i64, ptr %i.ca monotonic, align 8
  %i.cc = load i64, ptr %i.o, align 8
  %i.cd = icmp eq i64 %i.cb, %i.cc
  br i1 %i.cd, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ce = icmp samesign ult i64 %.02652, 2147483648
  br i1 %i.ce, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.cf = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.cg = load ptr, ptr %i.r, align 8
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %bb.l, label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

bb.l:                                             ; preds = %bb.k
  %i.ci = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #23
  br label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi ptr [ %i.ci, %bb.l ], [ %i.cf, %bb.k ] ; 2 uses
  %i.cj = ptrtoint ptr %.0.i.i.i.i to i64
  %i.ck = add i64 %i.cj, 8
  %i.cl = inttoptr i64 %i.ck to ptr
  store ptr %i.cl, ptr %i.q, align 8
  store i64 %sext.i.i, ptr %.0.i.i.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit

bb.m:                                             ; preds = %bb.j
  %i.cm = uitofp nneg i64 %.02652 to double
  %i.cn = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #23 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = add i64 %i.co, -1
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store double %i.cm, ptr %i.cr, align 1
  %.pre = load i64, ptr %i.cn, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit

_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit: ; preds = %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %bb.m
  %i.cs = phi i64 [ %sext.i.i, %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %.pre, %bb.m ] ; 5 uses
  %i.ct = load i64, ptr %4, align 8
  %i.cu = add i64 %i.ct, -1                       ; 3 uses
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = sext i32 %.055 to i64
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %i.cx ; 2 uses
  store atomic volatile i64 %i.cs, ptr %i.cy monotonic, align 8
  %i.cz = trunc i64 %i.cs to i1
  br i1 %i.cz, label %bb.n, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.n:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit
  %i.da = or disjoint i64 %i.cu, 1                ; 2 uses
  %i.db = ptrtoint ptr %i.cy to i64               ; 2 uses
  %i.dc = and i64 %i.cu, -262144
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = load i64, ptr %i.dd, align 262144       ; 2 uses
  %i.df = and i64 %i.de, 32
  %.not.i.i.i.i.i27 = icmp eq i64 %i.df, 0
  %i.dg = and i64 %i.de, 25
  %.not37.i.i.i.i.i28 = icmp eq i64 %i.dg, 0
  br i1 %.not37.i.i.i.i.i28, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.dh = and i64 %i.cs, -262144
  %i.di = inttoptr i64 %i.dh to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i29 = load i64, ptr %i.di, align 262144
  %i.dj = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i29, 25
  %.not38.i.i.i.i.i30 = icmp eq i64 %i.dj, 0
  br i1 %.not38.i.i.i.i.i30, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.da, i64 noundef %i.db, i64 %i.cs) #23
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  br i1 %.not.i.i.i.i.i27, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.r, !prof !13

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.da, i64 %i.db, i64 %i.cs) #23
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.r, %bb.q, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit
  %i.dk = add i32 %.055, 1
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit: ; preds = %bb.i, %.lr.ph.split, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %.1 = phi i32 [ %i.dk, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ], [ %.055, %.lr.ph.split ], [ %.055, %bb.i ] ; 2 uses
  %i.dl = add nuw nsw i64 %.02652, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.dl, %.0.in.in.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !3430
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE(ptr nofree readonly captures(none) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 5 uses
  %i.b = load i64, ptr %0, align 8
  %i.c = add i64 %i.b, 15
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 560 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %bb.b, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.a) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.k, %bb.b ], [ %i.g, %bb.a ] ; 3 uses
  %i.l = ptrtoint ptr %.0.i.i to i64
  %i.m = add i64 %i.l, 8
  %i.n = inttoptr i64 %i.m to ptr
  store ptr %i.n, ptr %i.f, align 8
  store i64 %i.e, ptr %.0.i.i, align 8
  %i.o = load i64, ptr %0, align 8                ; 2 uses
  %i.p = add i64 %i.o, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.s = add i64 %i.r, 11
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i16, ptr %i.t monotonic, align 2
  %i.v = icmp eq i16 %i.u, 2119
  %i.w = add i64 %i.o, 23
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = add i64 %i.e, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.0.in.in.in.in.i.i = select i1 %i.v, ptr %i.x, ptr %i.aa
  %.0.in.in.in.i.i = load i64, ptr %.0.in.in.in.in.i.i, align 8
  %.0.in.in.i.i = lshr i64 %.0.in.in.in.i.i, 32   ; 2 uses
  %.not45 = icmp eq i64 %.0.in.in.i.i, 0
  br i1 %.not45, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.02246 = phi i64 [ 0, %.lr.ph ], [ %i.at, %bb.f ] ; 2 uses
  %i.ac = load i64, ptr %.0.i.i, align 8
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %sext.i = shl i64 %.02246, 32
  %i.ag = ashr exact i64 %sext.i, 29
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag ; 2 uses
  %i.ai = load atomic volatile i64, ptr %i.ah monotonic, align 8
  %i.aj = load i64, ptr %i.ab, align 8
  %.not44 = icmp eq i64 %i.ai, %i.aj
  br i1 %.not44, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = load atomic volatile i64, ptr %i.ah monotonic, align 8
  %i.al = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.am = load ptr, ptr %i.h, align 8
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.e, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit, !prof !5

bb.e:                                             ; preds = %bb.d
  %i.ao = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.a) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i26 = phi ptr [ %i.ao, %bb.e ], [ %i.al, %bb.d ] ; 3 uses
  %i.ap = ptrtoint ptr %.0.i.i26 to i64
  %i.aq = add i64 %i.ap, 8
  %i.ar = inttoptr i64 %i.aq to ptr
  store ptr %i.ar, ptr %i.f, align 8
  store i64 %i.ak, ptr %.0.i.i26, align 8
  %i.as = tail call noundef zeroext i1 @_ZN2v88internal14KeyAccumulator6AddKeyENS0_12DirectHandleINS0_6ObjectEEENS0_16AddKeyConversionE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nonnull %.0.i.i26, i32 noundef %2) #23
  br i1 %i.as, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.c, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit
  %i.at = add nuw nsw i64 %.02246, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.at, %.0.in.in.i.i
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !3431

._crit_edge:                                      ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit, %bb.f, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.not.lcssa = phi i1 [ true, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ true, %bb.f ], [ false, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i16 0, 258) i16 @_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE7AddImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEjNSA_INS0_6ObjectEEENS0_18PropertyAttributesEj(ptr noundef %0, ptr %1, i32 noundef %2, ptr nofree readonly captures(none) %3, i32 noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 14
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i8, ptr %i.f, align 1               ; 3 uses
  %i.h = lshr i8 %i.g, 2                          ; 2 uses
  switch i8 %i.h, label %bb.b [
    i8 13, label %.critedge
    i8 5, label %.critedge
    i8 4, label %.critedge
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %i.a, 15
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i64, ptr %i.j, align 8
  %i.l = add i64 %i.k, -1
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = lshr i64 %i.o, 32
  %i.q = trunc nuw i64 %i.p to i32
  %.not = icmp eq i32 %4, %i.q
  br i1 %.not, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.a, %bb.a, %bb.b
  %i.r = tail call fastcc i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE26GrowCapacityAndConvertImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEj(ptr noundef %0, ptr nonnull %1, i32 noundef %4)
  %i.s = trunc i16 %i.r to i1
  br i1 %i.s, label %_ZN2v88internal8JSObject26EnsureWritableFastElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit, label %_ZN2v88internal12_GLOBAL__N_131FastSmiOrObjectElementsAccessorINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.c:                                             ; preds = %bb.b
  %i.t = icmp ugt i8 %i.g, 23
  %.not20 = icmp eq i8 %i.h, 3
  %or.cond = or i1 %i.t, %.not20
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal8JSObject22TransitionElementsKindEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_12ElementsKindE(ptr noundef %0, ptr nonnull %1, i8 noundef zeroext 3) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = icmp ult i8 %i.g, 16
  br i1 %i.u, label %bb.f, label %_ZN2v88internal8JSObject26EnsureWritableFastElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit

bb.f:                                             ; preds = %bb.e
  %i.v = load i64, ptr %1, align 8
  %i.w = add i64 %i.v, 15
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load i64, ptr %i.x, align 8
  %i.z = add i64 %i.y, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i64, ptr %i.aa monotonic, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = icmp eq i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.g, label %_ZN2v88internal8JSObject26EnsureWritableFastElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit, !prof !5

bb.g:                                             ; preds = %bb.f
  tail call preserve_mostcc void @_ZN2v88internal8JSObject20MakeElementsWritableEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef nonnull %0, ptr nonnull %1) #23
  br label %_ZN2v88internal8JSObject26EnsureWritableFastElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit

_ZN2v88internal8JSObject26EnsureWritableFastElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit: ; preds = %bb.g, %bb.f, %bb.e, %.critedge
  %i.af = zext i32 %2 to i64
  %i.ag = load i64, ptr %3, align 8               ; 5 uses
  %i.ah = load i64, ptr %1, align 8
  %i.ai = add i64 %i.ah, 15
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = add i64 %i.ak, -1                       ; 3 uses
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %sext.i.i = shl nuw i64 %i.af, 32
  %i.ao = ashr exact i64 %sext.i.i, 29
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 %i.ao ; 2 uses
  store atomic volatile i64 %i.ag, ptr %i.ap monotonic, align 8
  %i.aq = trunc i64 %i.ag to i1
  br i1 %i.aq, label %bb.h, label %_ZN2v88internal12_GLOBAL__N_131FastSmiOrObjectElementsAccessorINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.h:                                             ; preds = %_ZN2v88internal8JSObject26EnsureWritableFastElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit
  %i.ar = or disjoint i64 %i.al, 1                ; 2 uses
  %i.as = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.at = and i64 %i.al, -262144
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load i64, ptr %i.au, align 262144       ; 2 uses
  %i.aw = and i64 %i.av, 32
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.aw, 0
  %i.ax = and i64 %i.av, 25
  %.not37.i.i.i.i.i.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not37.i.i.i.i.i.i.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ay = and i64 %i.ag, -262144
  %i.az = inttoptr i64 %i.ay to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.az, align 262144
  %i.ba = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not38.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ar, i64 noundef %i.as, i64 %i.ag) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_131FastSmiOrObjectElementsAccessorINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.l, !prof !13

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ar, i64 %i.as, i64 %i.ag) #23
  br label %_ZN2v88internal12_GLOBAL__N_131FastSmiOrObjectElementsAccessorINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal12_GLOBAL__N_131FastSmiOrObjectElementsAccessorINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.l, %bb.k, %_ZN2v88internal8JSObject26EnsureWritableFastElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit, %.critedge
  %.sroa.019.0 = phi i16 [ 0, %.critedge ], [ 257, %_ZN2v88internal8JSObject26EnsureWritableFastElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit ], [ 257, %bb.k ], [ 257, %bb.l ]
  ret i16 %.sroa.019.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i64 0, -4294967294) i64 @_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE12AddArgumentsEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEENSA_INS0_14FixedArrayBaseEEEPNS0_16BuiltinArgumentsEjNS1_5WhereE(ptr noundef %0, ptr nofree readonly captures(none) %1, ptr nofree readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.v8::internal::WriteBarrierModeScope", align 4 ; 5 uses
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, 23
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = lshr i64 %i.d, 32                        ; 2 uses
  %i.f = trunc nuw i64 %i.e to i32                ; 3 uses
  %i.g = load i64, ptr %2, align 8                ; 2 uses
  %i.h = add i64 %i.g, -1                         ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = lshr i64 %i.k, 32
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %4, %i.f                         ; 5 uses
  %i.o = icmp ugt i32 %i.n, %i.m
  br i1 %i.o, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.p = lshr i32 %i.n, 1
  %i.q = add i32 %i.n, 16                         ; 2 uses
  %i.r = add i32 %i.q, %i.p                       ; 2 uses
  %i.s = icmp ult i32 %i.q, 134217729
  %i.t = tail call i32 @llvm.umin.i32(i32 %i.r, i32 134217728)
  %.0.i = select i1 %i.s, i32 %i.t, i32 %i.r      ; 2 uses
  %i.u = icmp eq i32 %5, 0
  %i.v = select i1 %i.u, i32 %4, i32 0            ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.0.0.copyload.i36.i = load i64, ptr %i.w, align 8
  %i.x = icmp eq i64 %.sroa.0.0.copyload.i36.i, 0
  %i.y = icmp ult i32 %.0.i, 134217729
  %or.cond.i = or i1 %i.y, %i.x
  br i1 %or.cond.i, label %bb.c, label %_ZN2v88internal8JSObject12set_elementsENS0_6TaggedINS0_14FixedArrayBaseEEENS0_16WriteBarrierModeE.exit

bb.c:                                             ; preds = %bb.b
  %i.z = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %.0.i, i8 noundef zeroext 0, i8 0) #23 ; 5 uses
  %i.aa = load i64, ptr %2, align 8               ; 2 uses
  %i.ab = load i64, ptr %i.z, align 8             ; 3 uses
  %i.ac = add i64 %i.aa, -1
  %i.ad = inttoptr i64 %i.ac to ptr
end_hunk_6
begin_hunk_7_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE4EEEE21PrependElementIndicesEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE:bb.a
bb.k:                                             ; preds = %.lr.ph.split.i.i
  %i.cx = icmp samesign ult i64 %.02651.i.i, 2147483648
  br i1 %i.cx, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cy = shl nuw nsw i64 %.02651.i.i, 32         ; 2 uses
  %i.cz = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.da = load ptr, ptr %i.aw, align 8
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %bb.m, label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i, !prof !5

bb.m:                                             ; preds = %bb.l
  %i.dc = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %1) #23
  br label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i

_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i = phi ptr [ %i.dc, %bb.m ], [ %i.cz, %bb.l ] ; 2 uses
  %i.dd = ptrtoint ptr %.0.i.i.i.i.i.i to i64
  %i.de = add i64 %i.dd, 8
  %i.df = inttoptr i64 %i.de to ptr
  store ptr %i.df, ptr %i.av, align 8
  store i64 %i.cy, ptr %.0.i.i.i.i.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i

bb.n:                                             ; preds = %bb.k
  %i.dg = uitofp nneg i64 %.02651.i.i to double
  %i.dh = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #23 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = add i64 %i.di, -1
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store double %i.dg, ptr %i.dl, align 1
  %.pre.i.i = load i64, ptr %i.dh, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i

_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i: ; preds = %bb.n, %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i
  %i.dm = phi i64 [ %i.cy, %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i ], [ %.pre.i.i, %bb.n ] ; 5 uses
  %i.dn = load i64, ptr %.sroa.069.0.i, align 8
  %i.do = add i64 %i.dn, -1                       ; 3 uses
  %i.dp = inttoptr i64 %i.do to ptr
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = sext i32 %.054.i.i to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.dr ; 2 uses
  store atomic volatile i64 %i.dm, ptr %i.ds monotonic, align 8
  %i.dt = trunc i64 %i.dm to i1
  br i1 %i.dt, label %bb.o, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i

bb.o:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i
  %i.du = or disjoint i64 %i.do, 1                ; 2 uses
  %i.dv = ptrtoint ptr %i.ds to i64               ; 2 uses
  %i.dw = and i64 %i.do, -262144
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = load i64, ptr %i.dx, align 262144       ; 2 uses
  %i.dz = and i64 %i.dy, 32
  %.not.i.i.i.i.i27.i.i = icmp eq i64 %i.dz, 0
  %i.ea = and i64 %i.dy, 25
  %.not37.i.i.i.i.i28.i.i = icmp eq i64 %i.ea, 0
  br i1 %.not37.i.i.i.i.i28.i.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.eb = and i64 %i.dm, -262144
  %i.ec = inttoptr i64 %i.eb to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i29.i.i = load i64, ptr %i.ec, align 262144
  %i.ed = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i29.i.i, 25
  %.not38.i.i.i.i.i30.i.i = icmp eq i64 %i.ed, 0
  br i1 %.not38.i.i.i.i.i30.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.du, i64 noundef %i.dv, i64 %i.dm) #23
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  br i1 %.not.i.i.i.i.i27.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i, label %bb.s, !prof !13

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.du, i64 %i.dv, i64 %i.dm) #23
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i: ; preds = %bb.s, %bb.r, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i
  %i.ee = add i32 %.054.i.i, 1
  br label %bb.t

bb.t:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i, %.lr.ph.split.i.i
  %.1.i.i = phi i32 [ %i.ee, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i ], [ %.054.i.i, %.lr.ph.split.i.i ] ; 2 uses
  %i.ef = add nuw nsw i64 %.02651.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ef, %.0.in.in.i.i58.i
  br i1 %exitcond.not.i.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE4EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i, label %.lr.ph.split.i.i, !llvm.loop !3446

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE4EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i: ; preds = %bb.t, %bb.j, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i
  %.0.lcssa.i.i = phi i32 [ 0, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i ], [ %.1.us.i.i, %bb.j ], [ %.1.i.i, %bb.t ] ; 3 uses
  %i.eg = load i64, ptr %4, align 8               ; 2 uses
  %i.eh = load i64, ptr %.sroa.069.0.i, align 8   ; 3 uses
  %i.ei = icmp slt i64 %i.e, 0
  br i1 %i.ei, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE4EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i
  %i.ej = add i64 %i.eg, -1
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load i64, ptr %i.el, align 8
  %i.en = lshr i64 %i.em, 32
  %i.eo = trunc nuw i64 %i.en to i32
  %i.ep = add i64 %i.eh, -1
  %i.eq = inttoptr i64 %i.ep to ptr               ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load i64, ptr %i.er, align 8
  %i.et = lshr i64 %i.es, 32
  %i.eu = trunc nuw i64 %i.et to i32              ; 2 uses
  %i.ev = sub i32 %i.eu, %.0.lcssa.i.i
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %i.ev, i32 %i.eo) ; 3 uses
  %i.ew = add i32 %.sroa.speculated.i.i, %.0.lcssa.i.i ; 2 uses
  %i.ex = sub nsw i32 %i.eu, %i.ew                ; 2 uses
  %i.ey = icmp sgt i32 %i.ex, 0
  br i1 %i.ey, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.fa = sext i32 %i.ew to i64
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = zext nneg i32 %i.ex to i64
  %i.ff = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.fd, i64 %i.fe, ptr nonnull %i.fb) #23, !srcloc !3333 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE4EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i
  %.0.i59.i = phi i32 [ %i.g, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE4EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i ], [ %.sroa.speculated.i.i, %bb.v ], [ %.sroa.speculated.i.i, %bb.u ] ; 2 uses
  %i.fg = icmp eq i32 %.0.i59.i, 0
  br i1 %i.fg, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE4EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit, label %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i

_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i: ; preds = %bb.w
  %i.fh = sext i32 %.0.lcssa.i.i to i64
  %i.fi = add i64 %i.eh, 15
  %.idx.i.i.i.i = shl nsw i64 %i.fh, 3
  %i.fj = add i64 %i.fi, %.idx.i.i.i.i
  %i.fk = add i64 %i.eg, 15
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 55464
  tail call void @_ZN2v88internal4Heap9CopyRangeINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S7_iNS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(2992) %i.fl, i64 %i.eh, i64 %i.fj, i64 %i.fk, i32 noundef %.0.i59.i, i32 noundef 4) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE4EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE4EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit: ; preds = %bb.b, %bb.w, %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i
  %.sroa.083.1.i = phi ptr [ null, %bb.b ], [ %.sroa.069.0.i, %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i ], [ %.sroa.069.0.i, %bb.w ]
  ret ptr %.sroa.083.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE4EEEE27AddElementsToKeyAccumulatorENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8                ; 6 uses
  %i.b = load i64, ptr %1, align 8
  %i.c = add i64 %i.b, 15
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 560 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
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
  %i.o = load i64, ptr %1, align 8                ; 2 uses
  %i.p = add i64 %i.o, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.s = add i64 %i.r, 11
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i16, ptr %i.t monotonic, align 2
  %i.v = icmp eq i16 %i.u, 2119
  %i.w = add i64 %i.o, 23
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = add i64 %i.e, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.0.in.in.in.in.i.i.i = select i1 %i.v, ptr %i.x, ptr %i.aa
  %.0.in.in.in.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i, align 8
  %.0.in.in.i.i.i = lshr i64 %.0.in.in.in.i.i.i, 32 ; 2 uses
  %.not44.i = icmp eq i64 %.0.in.in.i.i.i, 0
  br i1 %.not44.i, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_32FastPackedDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE4EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  br label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_126FastDoubleElementsAccessorINS1_32FastPackedDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE4EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i, %.lr.ph.i
  %.02245.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bf, %_ZN2v88internal12_GLOBAL__N_126FastDoubleElementsAccessorINS1_32FastPackedDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE4EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i ] ; 2 uses
  %i.ac = load i64, ptr %.0.i.i.i, align 8
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %sext.i25.i = shl i64 %.02245.i, 32
  %i.ag = ashr exact i64 %sext.i25.i, 29
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag
  %.0.copyload.i.i.i.i.i.i.i26.i = load i64, ptr %i.ah, align 1 ; 3 uses
  %i.ai = icmp eq i64 %.0.copyload.i.i.i.i.i.i.i26.i, -2251799814209537
  %i.aj = bitcast i64 %.0.copyload.i.i.i.i.i.i.i26.i to double ; 5 uses
  br i1 %i.ai, label %_ZN2v88internal12_GLOBAL__N_126FastDoubleElementsAccessorINS1_32FastPackedDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE4EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = fcmp oge double %i.aj, f0xC1E0000000000000
  %i.al = fcmp ole double %i.aj, f0x41DFFFFFFFC00000
  %or.cond.i.i.i.i.i.i = and i1 %i.ak, %i.al
  br i1 %or.cond.i.i.i.i.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.am = tail call noundef i1 @llvm.is.fpclass.f64(double %i.aj, i32 32)
  br i1 %i.am, label %bb.g, label %_ZN2v88internal11IsSmiDoubleEd.exit.i.i.i.i.i

_ZN2v88internal11IsSmiDoubleEd.exit.i.i.i.i.i:    ; preds = %bb.e
  %i.an = fptosi double %i.aj to i32              ; 2 uses
  %i.ao = sitofp i32 %i.an to double
  %i.ap = fcmp oeq double %i.aj, %i.ao
  br i1 %i.ap, label %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i.i.i.i, label %bb.g

_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i.i.i.i: ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i.i.i.i
  %i.aq = sext i32 %i.an to i64
  %i.ar = shl nsw i64 %i.aq, 32
  %i.as = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.at = load ptr, ptr %i.h, align 8
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.f, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i.i, !prof !5

bb.f:                                             ; preds = %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i.i.i.i
  %i.av = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %i.a) #23
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i.i

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i.i: ; preds = %bb.f, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i.i.i.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.av, %bb.f ], [ %i.as, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i.i.i.i ] ; 3 uses
  %i.aw = ptrtoint ptr %.0.i.i.i.i.i.i to i64
  %i.ax = add i64 %i.aw, 8
  %i.ay = inttoptr i64 %i.ax to ptr
  store ptr %i.ay, ptr %i.f, align 8
  store i64 %i.ar, ptr %.0.i.i.i.i.i.i, align 8
  br label %_ZN2v88internal12_GLOBAL__N_126FastDoubleElementsAccessorINS1_32FastPackedDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE4EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i

bb.g:                                             ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i.i.i.i, %bb.e, %bb.d
  %i.az = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %i.a) #23 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = add i64 %i.ba, -1
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %.0.copyload.i.i.i.i.i.i.i26.i, ptr %i.bd, align 1
  br label %_ZN2v88internal12_GLOBAL__N_126FastDoubleElementsAccessorINS1_32FastPackedDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE4EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i

_ZN2v88internal12_GLOBAL__N_126FastDoubleElementsAccessorINS1_32FastPackedDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE4EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i: ; preds = %bb.g, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i.i, %bb.c
  %.sroa.05.0.i.i.i = phi ptr [ %i.az, %bb.g ], [ %.0.i.i.i.i.i.i, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i.i ], [ %i.ab, %bb.c ]
  %i.be = tail call noundef zeroext i1 @_ZN2v88internal14KeyAccumulator6AddKeyENS0_12DirectHandleINS0_6ObjectEEENS0_16AddKeyConversionE(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr nonnull %.sroa.05.0.i.i.i, i32 noundef %3) #23 ; 2 uses
  %i.bf = add nuw nsw i64 %.02245.i, 1            ; 2 uses
  %exitcond.not.i = icmp ne i64 %i.bf, %.0.in.in.i.i.i
  %or.cond.not = select i1 %i.be, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %bb.c, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_32FastPackedDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE4EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit, !llvm.loop !3447

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_32FastPackedDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE4EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_126FastDoubleElementsAccessorINS1_32FastPackedDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE4EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.not.lcssa.i = phi i1 [ true, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.be, %_ZN2v88internal12_GLOBAL__N_126FastDoubleElementsAccessorINS1_32FastPackedDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE4EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i ]
  ret i1 %.not.lcssa.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE4EEEE22TransitionElementsKindEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_3MapEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr %2, ptr %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i.i, align 8
  %i.n = add i64 %i.d, 14
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i8, ptr %i.o, align 1               ; 3 uses
  %i.q = lshr i8 %i.p, 2                          ; 4 uses
  %i.r = load i64, ptr %3, align 8
  %i.s = add i64 %i.r, 14
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i8, ptr %i.t, align 1
  %i.v = lshr i8 %i.u, 2                          ; 3 uses
  %i.w = trunc i8 %i.q to i1
  %i.x = icmp ult i8 %i.p, 24
  %i.y = and i1 %i.x, %i.w
  br i1 %i.y, label %bb.c, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  switch i8 %i.v, label %bb.f [
    i8 0, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i
    i8 4, label %bb.d
    i8 2, label %bb.e
    i8 6, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  ]

bb.d:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.e:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.f:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.0.i = phi i8 [ %i.v, %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.v, %bb.f ], [ 5, %bb.d ], [ 3, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %.not.i = icmp eq i8 %i.q, %.0.i
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE4EEEE26TransitionElementsKindImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_3MapEEE.exit, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i: ; preds = %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i, %bb.c
  %.0103.i = phi i8 [ %.0.i, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i ], [ 7, %bb.c ] ; 2 uses
  %i.z = load i64, ptr %2, align 8
  %i.aa = add i64 %i.z, 15
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ae = load ptr, ptr %i.g, align 8
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.g, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i, !prof !5

bb.g:                                             ; preds = %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  %i.ag = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i: ; preds = %bb.g, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  %.0.i.i38.i = phi ptr [ %i.ag, %bb.g ], [ %i.ad, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i ] ; 4 uses
  %i.ah = ptrtoint ptr %.0.i.i38.i to i64
  %i.ai = add i64 %i.ah, 8
  %i.aj = inttoptr i64 %i.ai to ptr
  store ptr %i.aj, ptr %i.e, align 8
  store i64 %i.ac, ptr %.0.i.i38.i, align 8
  %i.ak = load i64, ptr %2, align 8
  %i.al = add i64 %i.ak, 15
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 864
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = icmp eq i64 %i.an, %i.ap
  br i1 %i.aq, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i
  %i.ar = and i8 %i.p, -8
  %i.as = icmp eq i8 %i.ar, 16
  %i.at = and i8 %.0103.i, -2
  %i.au = icmp eq i8 %i.at, 4
  %i.av = xor i1 %i.as, %i.au
  br i1 %i.av, label %bb.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.h, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i
  tail call void @_ZN2v88internal8JSObject12MigrateToMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEEi(ptr noundef nonnull %1, ptr nonnull %2, ptr nonnull %3, i32 noundef 0) #23
  br label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

bb.i:                                             ; preds = %bb.h
  %i.aw = add i64 %i.an, -1
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = lshr i64 %i.az, 32
  %i.bb = trunc nuw i64 %i.ba to i32
  %i.bc = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE4EEEE27ConvertElementsWithCapacityEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEES5_jjj(ptr noundef nonnull %1, ptr nonnull readonly %2, ptr nonnull readonly %.0.i.i38.i, i8 noundef zeroext %i.q, i32 noundef %i.bb, i32 noundef 0) ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.j, label %_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i, !prof !5

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.27) #24
  unreachable

_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i: ; preds = %bb.i
  tail call void @_ZN2v88internal8JSObject12MigrateToMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEEi(ptr noundef nonnull %1, ptr nonnull %2, ptr nonnull %3, i32 noundef 0) #23
  %i.be = load i64, ptr %2, align 8               ; 4 uses
  %i.bf = load i64, ptr %i.bc, align 8            ; 5 uses
  %i.bg = add i64 %i.be, 15                       ; 3 uses
  %i.bh = inttoptr i64 %i.bg to ptr
  store atomic volatile i64 %i.bf, ptr %i.bh monotonic, align 8
  %i.bi = trunc i64 %i.bf to i1
  br i1 %i.bi, label %bb.k, label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

bb.k:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i
  %i.bj = and i64 %i.be, -262144
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load i64, ptr %i.bk, align 262144       ; 2 uses
  %i.bm = and i64 %i.bl, 32
end_hunk_7
begin_hunk_8_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE8ValidateEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE:bb.a
  %i.aj = call noundef i64 @_ZNK2v88internal12JSTypedArray30GetVariableLengthOrOutOfBoundsERb(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #23 ; 0 uses
  br label %_ZNK2v88internal12JSTypedArray9GetLengthEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ak = call noundef i64 @_ZNK2v88internal12JSTypedArray12element_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #23 ; 0 uses
  br label %_ZNK2v88internal12JSTypedArray9GetLengthEv.exit.i

_ZNK2v88internal12JSTypedArray9GetLengthEv.exit.i: ; preds = %bb.g, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit: ; preds = %bb.a, %bb.b, %bb.c, %_ZNK2v88internal12JSTypedArray9GetLengthEv.exit.i
  ret void
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE10HasElementEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEjNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2, i32 noundef %3, i64 %4, i32 %5) unnamed_addr #10 align 2 {
bb.a:
  %i.a = zext i32 %3 to i64                       ; 2 uses
  %i.b = add i64 %2, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 2119
  %i.i = add i64 %2, 23
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = add i64 %4, -1
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.0.in.in.in.in.i.i.i = select i1 %i.h, ptr %i.j, ptr %i.m
  %.0.in.in.in.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i, align 8
  %.0.in.in.i.i.i = lshr i64 %.0.in.in.in.i.i.i, 32
  %i.n = icmp samesign ugt i64 %.0.in.in.i.i.i, %i.a
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %sext.i.i = shl nuw i64 %i.a, 32
  %i.p = ashr exact i64 %sext.i.i, 29
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 %i.p
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.q, align 1
  %i.r = icmp eq i64 %.0.copyload.i.i.i.i.i.i.i.i, -2251799814209537
  br i1 %i.r, label %bb.c, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit: ; preds = %bb.b, %bb.c
  %.sroa.01.1.i.i = phi i1 [ false, %bb.c ], [ true, %bb.b ]
  ret i1 %.sroa.01.1.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE8HasEntryEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENS0_13InternalIndexE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2, i64 %3) unnamed_addr #13 align 2 {
bb.a:
  %i.a = add i64 %2, 15
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %sext.i = shl i64 %3, 32
  %i.g = ashr exact i64 %sext.i, 29
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 %i.g
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.h, align 1
  %i.i = icmp ne i64 %.0.copyload.i.i.i.i.i.i.i, -2251799814209537
  ret i1 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE3GetEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %2, i64 %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %sext.i.i = shl i64 %3, 32
  %i.h = ashr exact i64 %sext.i.i, 29
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.i, align 1 ; 3 uses
  %i.j = icmp eq i64 %.0.copyload.i.i.i.i.i.i.i.i, -2251799814209537
  %i.k = bitcast i64 %.0.copyload.i.i.i.i.i.i.i.i to double ; 5 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 656
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE15GetInternalImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE.exit

bb.c:                                             ; preds = %bb.a
  %i.m = fcmp oge double %i.k, f0xC1E0000000000000
  %i.n = fcmp ole double %i.k, f0x41DFFFFFFFC00000
  %or.cond.i.i.i.i.i.i = and i1 %i.m, %i.n
  br i1 %or.cond.i.i.i.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = tail call noundef i1 @llvm.is.fpclass.f64(double %i.k, i32 32)
  br i1 %i.o, label %bb.f, label %_ZN2v88internal11IsSmiDoubleEd.exit.i.i.i.i.i

_ZN2v88internal11IsSmiDoubleEd.exit.i.i.i.i.i:    ; preds = %bb.d
  %i.p = fptosi double %i.k to i32                ; 2 uses
  %i.q = sitofp i32 %i.p to double
  %i.r = fcmp oeq double %i.k, %i.q
  br i1 %i.r, label %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i.i.i.i, label %bb.f

_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i.i.i.i: ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i.i.i.i
  %i.s = sext i32 %i.p to i64
  %i.t = shl nsw i64 %i.s, 32
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %bb.e, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i.i, !prof !5

bb.e:                                             ; preds = %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i.i.i.i
  %i.z = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %1) #23
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i.i

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i.i: ; preds = %bb.e, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i.i.i.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.z, %bb.e ], [ %i.v, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i.i.i.i ] ; 3 uses
  %i.aa = ptrtoint ptr %.0.i.i.i.i.i.i to i64
  %i.ab = add i64 %i.aa, 8
  %i.ac = inttoptr i64 %i.ab to ptr
  store ptr %i.ac, ptr %i.u, align 8
  store i64 %i.t, ptr %.0.i.i.i.i.i.i, align 8
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE15GetInternalImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE.exit

bb.f:                                             ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i.i.i.i, %bb.d, %bb.c
  %i.ad = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #23 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = add i64 %i.ae, -1
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %.0.copyload.i.i.i.i.i.i.i.i, ptr %i.ah, align 1
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE15GetInternalImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE15GetInternalImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE.exit: ; preds = %bb.b, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i.i, %bb.f
  %.sroa.05.0.i.i.i = phi ptr [ %i.l, %bb.b ], [ %.0.i.i.i.i.i.i, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i.i ], [ %i.ad, %bb.f ]
  ret ptr %.sroa.05.0.i.i.i
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE9GetAtomicEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE12HasAccessorsENS0_6TaggedINS0_8JSObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1) unnamed_addr #12 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef range(i64 0, 4294967296) i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE16NumberOfElementsEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) unnamed_addr #10 align 2 {
bb.a:
  %i.a = add i64 %2, 15
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %2, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = icmp eq i16 %i.i, 2119
  %i.k = add i64 %2, 23
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = add i64 %i.c, -1
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.0.in.in.in.in.i.i = select i1 %i.j, ptr %i.l, ptr %i.o
  %.0.in.in.in.i.i = load i64, ptr %.0.in.in.in.in.i.i, align 8 ; 3 uses
  %.0.in.in.i.i = lshr i64 %.0.in.in.in.i.i, 32   ; 6 uses
  %.not3.i = icmp eq i64 %.0.in.in.i.i, 0
  br i1 %.not3.i, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 4 uses
  %min.iters.check = icmp ult i64 %.0.in.in.in.i.i, 77309411328
  %i.q = add nsw i64 %.0.in.in.i.i, -2147483649
  %i.r = icmp ult i64 %i.q, -2147483648
  %or.cond = select i1 %min.iters.check, i1 true, i1 %i.r
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %.0.in.in.i.i, 4294967292      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %vec.phi5 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.ab, %vector.body ]
  %i.s = shl i64 %index, 32
  %i.t = ashr exact i64 %i.s, 29
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <2 x i64>, ptr %i.u, align 1
  %wide.load6 = load <2 x i64>, ptr %i.v, align 1
  %i.w = icmp ne <2 x i64> %wide.load, splat (i64 -2251799814209537)
  %i.x = icmp ne <2 x i64> %wide.load6, splat (i64 -2251799814209537)
  %i.y = zext <2 x i1> %i.w to <2 x i32>
  %i.z = zext <2 x i1> %i.x to <2 x i32>
  %i.aa = add <2 x i32> %vec.phi, %i.y            ; 2 uses
  %i.ab = add <2 x i32> %vec.phi5, %i.z           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !3482

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.ab, %i.aa
  %i.ad = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.in.in.i.i, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.0132.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 4 uses
  %.0141.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %i.ad, %middle.block ] ; 2 uses
  %.neg = or disjoint i64 %.0132.i.ph, 1
  %i.ae = and i64 %.0.in.in.in.i.i, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.ae, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %sext.i.i.prol = shl nuw i64 %.0132.i.ph, 32
  %i.af = ashr exact i64 %sext.i.i.prol, 29
  %i.ag = getelementptr inbounds i8, ptr %i.p, i64 %i.af
  %.0.copyload.i.i.i.i.i.i.i.i.prol = load i64, ptr %i.ag, align 1
  %.not.i.prol = icmp ne i64 %.0.copyload.i.i.i.i.i.i.i.i.prol, -2251799814209537
  %i.ah = zext i1 %.not.i.prol to i32
  %spec.select.i.prol = add i32 %.0141.i.ph, %i.ah ; 2 uses
  %i.ai = or disjoint i64 %.0132.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %spec.select.i.lcssa9.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %spec.select.i.prol, %scalar.ph.prol ]
  %.0132.i.unr = phi i64 [ %.0132.i.ph, %scalar.ph.preheader ], [ %i.ai, %scalar.ph.prol ]
  %.0141.i.unr = phi i32 [ %.0141.i.ph, %scalar.ph.preheader ], [ %spec.select.i.prol, %scalar.ph.prol ]
  %i.aj = icmp eq i64 %.0.in.in.i.i, %.neg
  br i1 %i.aj, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0132.i = phi i64 [ %i.ar, %scalar.ph ], [ %.0132.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.0141.i = phi i32 [ %spec.select.i.1, %scalar.ph ], [ %.0141.i.unr, %scalar.ph.prol.loopexit ]
  %sext.i.i = shl i64 %.0132.i, 32
  %i.ak = ashr exact i64 %sext.i.i, 29
  %i.al = getelementptr inbounds i8, ptr %i.p, i64 %i.ak
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.al, align 1
  %.not.i = icmp ne i64 %.0.copyload.i.i.i.i.i.i.i.i, -2251799814209537
  %i.am = zext i1 %.not.i to i32
  %spec.select.i = add i32 %.0141.i, %i.am
  %i.an = shl i64 %.0132.i, 32
  %sext.i.i.1 = add i64 %i.an, 4294967296
  %i.ao = ashr exact i64 %sext.i.i.1, 29
  %i.ap = getelementptr inbounds i8, ptr %i.p, i64 %i.ao
  %.0.copyload.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.ap, align 1
  %.not.i.1 = icmp ne i64 %.0.copyload.i.i.i.i.i.i.i.i.1, -2251799814209537
  %i.aq = zext i1 %.not.i.1 to i32
  %spec.select.i.1 = add i32 %spec.select.i, %i.aq ; 2 uses
  %i.ar = add nuw nsw i64 %.0132.i, 2             ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ar, %.0.in.in.i.i
  br i1 %exitcond.not.i.1, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit, label %scalar.ph, !llvm.loop !3483

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %spec.select.i.lcssa = phi i32 [ %i.ad, %middle.block ], [ %spec.select.i.lcssa9.unr, %scalar.ph.prol.loopexit ], [ %spec.select.i.1, %scalar.ph ]
  %i.as = zext i32 %spec.select.i.lcssa to i64
  br label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit, %bb.a
  %.014.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.as, %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit ]
  ret i64 %.014.lcssa.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i16 0, 258) i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE9SetLengthEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 4 uses
  %i.k = ptrtoint ptr %.0.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i, align 8
  %i.n = load i64, ptr %2, align 8                ; 2 uses
  %i.o = add i64 %i.n, 23
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8              ; 4 uses
  %i.r = and i64 %i.q, 1
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.c, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.t = icmp sgt i64 %i.q, -1
  br i1 %i.t, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread131.i, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i, !prof !107

_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread131.i: ; preds = %bb.c
  %i.u = lshr i64 %i.q, 32
  %i.v = trunc nuw nsw i64 %i.u to i32
  br label %bb.e

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i: ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.w = add nsw i64 %i.q, -1
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = load atomic volatile i64, ptr %i.x monotonic, align 8
  %i.z = add i64 %i.y, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = icmp eq i16 %i.ab, 130
  br i1 %i.ac, label %bb.d, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i, !prof !107

bb.d:                                             ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.ad, align 8 ; 2 uses
  %i.ae = fadd double %.0.copyload.i.i.i.i.i.i.i, f0x4330000000000000
  %i.af = bitcast double %i.ae to i64             ; 2 uses
  %.mask.i.i.i.i = and i64 %i.af, -4294967296
  %i.ag = icmp eq i64 %.mask.i.i.i.i, 4841369599423283200
  br i1 %i.ag, label %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i, !prof !107

_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i: ; preds = %bb.d
  %i.ah = trunc i64 %i.af to i32                  ; 3 uses
  %i.ai = uitofp i32 %i.ah to double
  %i.aj = fcmp oeq double %.0.copyload.i.i.i.i.i.i.i, %i.ai
  %i.ak = icmp ne i32 %i.ah, -1
  %or.cond.i = and i1 %i.ak, %i.aj
  br i1 %or.cond.i, label %bb.e, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i, !prof !3326

_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i: ; preds = %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i, %bb.d, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.26) #24
  unreachable

bb.e:                                             ; preds = %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i, %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread131.i
  %.0133.i = phi i32 [ %i.v, %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread131.i ], [ %i.ah, %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i ] ; 3 uses
  %i.al = icmp ult i32 %.0133.i, %3
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.am = add i64 %i.n, -1
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load atomic volatile i64, ptr %i.an monotonic, align 8
  %i.ap = add i64 %i.ao, 14
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load i8, ptr %i.aq, align 1             ; 3 uses
  %i.as = lshr i8 %i.ar, 2                        ; 4 uses
  %i.at = trunc i8 %i.as to i1
  %i.au = icmp ult i8 %i.ar, 24
  %i.av = and i1 %i.au, %i.at
  br i1 %i.av, label %.thread, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i: ; preds = %bb.f
  %i.aw = icmp ult i8 %i.ar, 28
  %switch.shifted = lshr i8 85, %i.as
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.aw, i1 %switch.lobit, i1 false
  %switch.cast = zext nneg i8 %i.as to i56
  %switch.shiftamt = shl nuw nsw i56 %switch.cast, 3
  %switch.downshift = lshr i56 1970346312007681, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  %.0.i.i5 = select i1 %or.cond, i8 %switch.masked, i8 %i.as
  tail call void @_ZN2v88internal8JSObject22TransitionElementsKindEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_12ElementsKindE(ptr noundef nonnull %1, ptr nonnull %2, i8 noundef zeroext %.0.i.i5) #23
  %.pre = load i64, ptr %.0.i.i, align 8
  br label %.thread

.thread:                                          ; preds = %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i, %bb.f
  %.ph = phi i64 [ %i.d, %bb.f ], [ %.pre, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i ] ; 2 uses
  %i.ax = add i64 %.ph, -1
  %i.ay = inttoptr i64 %i.ax to ptr               ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = lshr i64 %i.ba, 32                      ; 2 uses
  %i.bc = trunc nuw i64 %i.bb to i32              ; 2 uses
  %.sroa.speculated73.i23 = tail call i32 @llvm.umin.i32(i32 %.0133.i, i32 %i.bc)
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.bd = add i64 %i.d, -1
  %i.be = inttoptr i64 %i.bd to ptr               ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = lshr i64 %i.bg, 32                      ; 2 uses
  %i.bi = trunc nuw i64 %i.bh to i32              ; 2 uses
  %.sroa.speculated73.i = tail call i32 @llvm.umin.i32(i32 %.0133.i, i32 %i.bi)
  %i.bj = icmp eq i32 %3, 0
  br i1 %i.bj, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.bk = load i64, ptr %2, align 8               ; 2 uses
  %i.bl = add i64 %i.bk, -1
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load atomic volatile i64, ptr %i.bm monotonic, align 8
  %i.bo = add i64 %i.bn, 14
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = load i8, ptr %i.bp, align 1             ; 4 uses
  %i.br = icmp ult i8 %i.bq, 24
  br i1 %i.br, label %_ZN2v88internal8JSObject19initialize_elementsEv.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.mask.i.i.i37.i = and i8 %i.bq, -4             ; 2 uses
  %i.bs = icmp eq i8 %.mask.i.i.i37.i, 64
  %i.bt = icmp ult i8 %i.bq, 52
  %or.cond.i.i.i = or i1 %i.bt, %i.bs
  br i1 %or.cond.i.i.i, label %_ZN2v88internal8JSObject19initialize_elementsEv.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = lshr i8 %i.bq, 2
  %i.bv = add nsw i8 %i.bu, -18
  %i.bw = icmp ult i8 %i.bv, 24
  br i1 %i.bw, label %_ZN2v88internal8JSObject19initialize_elementsEv.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = icmp eq i8 %.mask.i.i.i37.i, 52
  br i1 %i.bx, label %_ZN2v88internal8JSObject19initialize_elementsEv.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable

_ZN2v88internal8JSObject19initialize_elementsEv.exit.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.sink13.i.i.i = phi i64 [ 312, %bb.h ], [ 1272, %bb.j ], [ 312, %bb.i ], [ 1304, %bb.k ]
  %i.by = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 10624
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sink13.i.i.i
  %.sroa.06.0.i.i.i = load i64, ptr %i.cb, align 8
  %i.cc = add i64 %i.bk, 15
  %i.cd = inttoptr i64 %i.cc to ptr
  store atomic volatile i64 %.sroa.06.0.i.i.i, ptr %i.cd monotonic, align 8
  br label %_ZN2v88internal16FixedDoubleArray13FillWithHolesEii.exit.i

bb.m:                                             ; preds = %.thread, %bb.g
end_hunk_8
begin_hunk_9_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE22CollectValuesOrEntriesEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE:bb.a
  %i.ab = tail call noundef i1 @llvm.is.fpclass.f64(double %i.y, i32 32)
  br i1 %i.ab, label %bb.f, label %_ZN2v88internal11IsSmiDoubleEd.exit.i.i.i.i.i

_ZN2v88internal11IsSmiDoubleEd.exit.i.i.i.i.i:    ; preds = %bb.d
  %i.ac = fptosi double %i.y to i32               ; 2 uses
  %i.ad = sitofp i32 %i.ac to double
  %i.ae = fcmp oeq double %i.y, %i.ad
  br i1 %i.ae, label %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i.i.i.i, label %bb.f

_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i.i.i.i: ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i.i.i.i
  %i.af = sext i32 %i.ac to i64
  %i.ag = shl nsw i64 %i.af, 32
  %i.ah = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ai = load ptr, ptr %i.g, align 8
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %bb.e, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i.i, !prof !5

bb.e:                                             ; preds = %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i.i.i.i
  %i.ak = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %1) #23
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i.i

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i.i: ; preds = %bb.e, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i.i.i.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.ak, %bb.e ], [ %i.ah, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i.i.i.i ] ; 3 uses
  %i.al = ptrtoint ptr %.0.i.i.i.i.i.i to i64
  %i.am = add i64 %i.al, 8
  %i.an = inttoptr i64 %i.am to ptr
  store ptr %i.an, ptr %i.e, align 8
  store i64 %i.ag, ptr %.0.i.i.i.i.i.i, align 8
  br label %_ZN2v88internal12_GLOBAL__N_126FastDoubleElementsAccessorINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i

bb.f:                                             ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i.i.i.i, %bb.d, %bb.c
  %i.ao = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #23 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = add i64 %i.ap, -1
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %.0.copyload.i.i.i.i.i.i.i.i, ptr %i.as, align 1
  br label %_ZN2v88internal12_GLOBAL__N_126FastDoubleElementsAccessorINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i

_ZN2v88internal12_GLOBAL__N_126FastDoubleElementsAccessorINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i: ; preds = %bb.f, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i.i
  %.sroa.05.0.i.i.i = phi ptr [ %i.ao, %bb.f ], [ %.0.i.i.i.i.i.i, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i.i ] ; 2 uses
  br i1 %4, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_126FastDoubleElementsAccessorINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i
  %i.at = tail call ptr @_ZN2v88internal7Factory12SizeToStringEmb(ptr noundef nonnull align 1 dereferenceable(1) %1, i64 noundef %indvars.iv.i, i1 noundef zeroext true) #23
  %i.au = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef 2, i8 noundef zeroext 0, i8 0) #23 ; 3 uses
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = add i64 %i.av, -1
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load i64, ptr %i.at, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store atomic volatile i64 %i.ay, ptr %i.az monotonic, align 8
  %i.ba = load i64, ptr %i.au, align 8
  %i.bb = add i64 %i.ba, -1
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = load i64, ptr %.sroa.05.0.i.i.i, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store atomic volatile i64 %i.bd, ptr %i.be monotonic, align 8
  %i.bf = tail call ptr @_ZN2v88internal7Factory22NewJSArrayWithElementsENS0_12DirectHandleINS0_14FixedArrayBaseEEENS0_12ElementsKindEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %i.au, i8 noundef zeroext 2, i32 noundef 2, i8 noundef zeroext 0) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN2v88internal12_GLOBAL__N_126FastDoubleElementsAccessorINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i
  %.sroa.030.0.i = phi ptr [ %i.bf, %bb.g ], [ %.sroa.05.0.i.i.i, %_ZN2v88internal12_GLOBAL__N_126FastDoubleElementsAccessorINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i ]
  %i.bg = load i64, ptr %3, align 8
  %i.bh = add i64 %i.bg, -1                       ; 3 uses
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = add nsw i32 %.053.i, 1                  ; 3 uses
  %i.bk = load i64, ptr %.sroa.030.0.i, align 8   ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bm = sext i32 %.053.i to i64
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bm ; 2 uses
  store atomic volatile i64 %i.bk, ptr %i.bn monotonic, align 8
  %i.bo = trunc i64 %i.bk to i1
  br i1 %i.bo, label %bb.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i

bb.i:                                             ; preds = %bb.h
  %i.bp = or disjoint i64 %i.bh, 1                ; 2 uses
  %i.bq = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.br = and i64 %i.bh, -262144
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = load i64, ptr %i.bs, align 262144       ; 2 uses
  %i.bu = and i64 %i.bt, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bu, 0
  %i.bv = and i64 %i.bt, 25
  %.not37.i.i.i.i.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not37.i.i.i.i.i.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bw = and i64 %i.bk, -262144
  %i.bx = inttoptr i64 %i.bw to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.bx, align 262144
  %i.by = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.by, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.bp, i64 noundef %i.bq, i64 %i.bk) #23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i, label %bb.m, !prof !13

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.bp, i64 %i.bq, i64 %i.bk) #23
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i: ; preds = %bb.m, %bb.l, %bb.h, %.lr.ph.i
  %.1.i = phi i32 [ %.053.i, %.lr.ph.i ], [ %i.bj, %bb.h ], [ %i.bj, %bb.l ], [ %i.bj, %bb.m ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.r
  br i1 %exitcond.not.i, label %_ZN2v88internal12_GLOBAL__N_126FastDoubleElementsAccessorINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE26CollectValuesOrEntriesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE.exit, label %.lr.ph.i, !llvm.loop !3487

_ZN2v88internal12_GLOBAL__N_126FastDoubleElementsAccessorINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE26CollectValuesOrEntriesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE.exit: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i, %_ZN2v88internal6HandleINS0_16FixedDoubleArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.0.lcssa.i = phi i32 [ 0, %_ZN2v88internal6HandleINS0_16FixedDoubleArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %.1.i, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i ]
  store i32 %.0.lcssa.i, ptr %5, align 4
  ret i16 257
}

; Function Attrs: mustprogress nounwind uwtable
define internal ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE21PrependElementIndicesEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %2, ptr nofree readonly captures(none) %3, ptr nofree readonly captures(none) %4, i32 noundef %5, i32 %6) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %4, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = lshr i64 %i.e, 32                        ; 3 uses
  %i.g = trunc nuw i64 %i.f to i32                ; 3 uses
  %i.h = load i64, ptr %2, align 8                ; 2 uses
  %i.i = load i64, ptr %3, align 8
  %i.j = add i64 %i.h, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.m = add i64 %i.l, 11
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i16, ptr %i.n monotonic, align 2
  %i.p = icmp eq i16 %i.o, 2119
  %i.q = add i64 %i.h, 23
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = add i64 %i.i, -1
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.0.in.in.in.in.i.i.i = select i1 %i.p, ptr %i.r, ptr %i.u
  %.0.in.in.in.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i, align 8
  %.0.in.in.i.i.i = lshr i64 %.0.in.in.in.i.i.i, 32 ; 2 uses
  %i.v = sub nsw i64 134217728, %i.f
  %i.w = and i64 %i.v, 4294967295
  %i.x = icmp samesign ugt i64 %.0.in.in.i.i.i, %i.w
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = tail call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef 238, ptr null, i64 0) #23
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %1, i64 %i.z, ptr noundef null) #23 ; 0 uses
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit

bb.c:                                             ; preds = %bb.a
  %i.ab = add nuw nsw i64 %.0.in.in.i.i.i, %i.f
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = tail call ptr @_ZN2v88internal7Factory16TryNewFixedArrayEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.ac, i8 noundef zeroext 0) #23 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i, label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i

_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i: ; preds = %bb.c
  %i.af = load i64, ptr %2, align 8               ; 2 uses
  %i.ag = load i64, ptr %3, align 8
  %i.ah = add i64 %i.af, -1
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i64, ptr %i.ai monotonic, align 8
  %i.ak = add i64 %i.aj, 11
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i16, ptr %i.al monotonic, align 2
  %i.an = icmp eq i16 %i.am, 2119
  %i.ao = add i64 %i.af, 23
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = add i64 %i.ag, -1
  %i.ar = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.0.in.in.in.in.i.i53.i = select i1 %i.an, ptr %i.ap, ptr %i.as
  %.0.in.in.in.i.i54.i = load i64, ptr %.0.in.in.in.in.i.i53.i, align 8 ; 3 uses
  %.0.in.in.i.i55.i = lshr i64 %.0.in.in.in.i.i54.i, 32 ; 6 uses
  %.not3.i.i = icmp eq i64 %.0.in.in.i.i55.i, 0
  br i1 %.not3.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 4 uses
  %min.iters.check = icmp ult i64 %.0.in.in.in.i.i54.i, 77309411328
  %i.au = add nsw i64 %.0.in.in.i.i55.i, -2147483649
  %i.av = icmp ult i64 %i.au, -2147483648
  %or.cond = select i1 %min.iters.check, i1 true, i1 %i.av
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %.0.in.in.i.i55.i, 4294967292  ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.be, %vector.body ]
  %vec.phi16 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.bf, %vector.body ]
  %i.aw = shl i64 %index, 32
  %i.ax = ashr exact i64 %i.aw, 29
  %i.ay = getelementptr inbounds i8, ptr %i.at, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load = load <2 x i64>, ptr %i.ay, align 1
  %wide.load17 = load <2 x i64>, ptr %i.az, align 1
  %i.ba = icmp ne <2 x i64> %wide.load, splat (i64 -2251799814209537)
  %i.bb = icmp ne <2 x i64> %wide.load17, splat (i64 -2251799814209537)
  %i.bc = zext <2 x i1> %i.ba to <2 x i32>
  %i.bd = zext <2 x i1> %i.bb to <2 x i32>
  %i.be = add <2 x i32> %vec.phi, %i.bc           ; 2 uses
  %i.bf = add <2 x i32> %vec.phi16, %i.bd         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !3488

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.bf, %i.be
  %i.bh = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.in.in.i.i55.i, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %.0132.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %.0141.i.i.ph = phi i32 [ 0, %.lr.ph.i.i ], [ %i.bh, %middle.block ] ; 2 uses
  %.neg = or disjoint i64 %.0132.i.i.ph, 1
  %i.bi = and i64 %.0.in.in.in.i.i54.i, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.bi, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %sext.i.i.i.prol = shl nuw i64 %.0132.i.i.ph, 32
  %i.bj = ashr exact i64 %sext.i.i.i.prol, 29
  %i.bk = getelementptr inbounds i8, ptr %i.at, i64 %i.bj
  %.0.copyload.i.i.i.i.i.i.i.i.i.prol = load i64, ptr %i.bk, align 1
  %.not.i.i.prol = icmp ne i64 %.0.copyload.i.i.i.i.i.i.i.i.i.prol, -2251799814209537
  %i.bl = zext i1 %.not.i.i.prol to i32
  %spec.select.i.i.prol = add i32 %.0141.i.i.ph, %i.bl ; 2 uses
  %i.bm = or disjoint i64 %.0132.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %spec.select.i.i.lcssa.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %spec.select.i.i.prol, %scalar.ph.prol ]
  %.0132.i.i.unr = phi i64 [ %.0132.i.i.ph, %scalar.ph.preheader ], [ %i.bm, %scalar.ph.prol ]
  %.0141.i.i.unr = phi i32 [ %.0141.i.i.ph, %scalar.ph.preheader ], [ %spec.select.i.i.prol, %scalar.ph.prol ]
  %i.bn = icmp eq i64 %.0.in.in.i.i55.i, %.neg
  br i1 %i.bn, label %.loopexit.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0132.i.i = phi i64 [ %i.bv, %scalar.ph ], [ %.0132.i.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.0141.i.i = phi i32 [ %spec.select.i.i.1, %scalar.ph ], [ %.0141.i.i.unr, %scalar.ph.prol.loopexit ]
  %sext.i.i.i = shl i64 %.0132.i.i, 32
  %i.bo = ashr exact i64 %sext.i.i.i, 29
  %i.bp = getelementptr inbounds i8, ptr %i.at, i64 %i.bo
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bp, align 1
  %.not.i.i = icmp ne i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -2251799814209537
  %i.bq = zext i1 %.not.i.i to i32
  %spec.select.i.i = add i32 %.0141.i.i, %i.bq
  %i.br = shl i64 %.0132.i.i, 32
  %sext.i.i.i.1 = add i64 %i.br, 4294967296
  %i.bs = ashr exact i64 %sext.i.i.i.1, 29
  %i.bt = getelementptr inbounds i8, ptr %i.at, i64 %i.bs
  %.0.copyload.i.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.bt, align 1
  %.not.i.i.1 = icmp ne i64 %.0.copyload.i.i.i.i.i.i.i.i.i.1, -2251799814209537
  %i.bu = zext i1 %.not.i.i.1 to i32
  %spec.select.i.i.1 = add i32 %spec.select.i.i, %i.bu ; 2 uses
  %i.bv = add nuw nsw i64 %.0132.i.i, 2           ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.bv, %.0.in.in.i.i55.i
  br i1 %exitcond.not.i.i.1, label %.loopexit.i, label %scalar.ph, !llvm.loop !3489

.loopexit.i:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i
  %.014.lcssa.i.i = phi i32 [ 0, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i ], [ %i.bh, %middle.block ], [ %spec.select.i.i.lcssa.unr, %scalar.ph.prol.loopexit ], [ %spec.select.i.i.1, %scalar.ph ]
  %i.bw = add i32 %.014.lcssa.i.i, %i.g
  %i.bx = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.bw, i8 noundef zeroext 0, i8 0) #23
  br label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i

_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i: ; preds = %.loopexit.i, %bb.c
  %.sroa.072.0.i = phi ptr [ %i.bx, %.loopexit.i ], [ %i.ad, %bb.c ] ; 4 uses
  %i.by = load i64, ptr %2, align 8               ; 2 uses
  %i.bz = load i64, ptr %3, align 8
  %i.ca = add i64 %i.by, -1
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = load atomic volatile i64, ptr %i.cb monotonic, align 8
  %i.cd = add i64 %i.cc, 11
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = load atomic volatile i16, ptr %i.ce monotonic, align 2
  %i.cg = icmp eq i16 %i.cf, 2119
  %i.ch = add i64 %i.by, 23
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = add i64 %i.bz, -1
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.0.in.in.in.in.i.i56.i = select i1 %i.cg, ptr %i.ci, ptr %i.cl
  %.0.in.in.in.i.i57.i = load i64, ptr %.0.in.in.in.in.i.i56.i, align 8
  %.0.in.in.i.i58.i = lshr i64 %.0.in.in.in.i.i57.i, 32 ; 3 uses
  %.not.i59.i = icmp eq i64 %.0.in.in.i.i58.i, 0
  br i1 %.not.i59.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i, label %.lr.ph.i60.i

.lr.ph.i60.i:                                     ; preds = %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i
  %i.cm = icmp eq i32 %5, 0
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 568
  br i1 %i.cm, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i60.i, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i
  %.055.us.i.i = phi i32 [ %.1.us.i.i, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i ], [ 0, %.lr.ph.i60.i ] ; 4 uses
  %.02652.us.i.i = phi i64 [ %i.ed, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i ], [ 0, %.lr.ph.i60.i ] ; 5 uses
  %i.cp = load i64, ptr %2, align 8               ; 2 uses
  %i.cq = load i64, ptr %3, align 8
  %i.cr = add i64 %i.cp, -1
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = load atomic volatile i64, ptr %i.cs monotonic, align 8
  %i.cu = add i64 %i.ct, 11
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = load atomic volatile i16, ptr %i.cv monotonic, align 2
  %i.cx = icmp eq i16 %i.cw, 2119
  %i.cy = add i64 %i.cp, 23
  %i.cz = inttoptr i64 %i.cy to ptr
  %i.da = add i64 %i.cq, -1
  %i.db = inttoptr i64 %i.da to ptr               ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %.0.in.in.in.in.i.i.i.us.i.i = select i1 %i.cx, ptr %i.cz, ptr %i.dc
  %.0.in.in.in.i.i.i.us.i.i = load i64, ptr %.0.in.in.in.in.i.i.i.us.i.i, align 8
  %.0.in.in.i.i.i.us.i.i = lshr i64 %.0.in.in.in.i.i.i.us.i.i, 32
  %i.dd = icmp samesign ult i64 %.02652.us.i.i, %.0.in.in.i.i.i.us.i.i
  br i1 %i.dd, label %bb.d, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i

bb.d:                                             ; preds = %.lr.ph.split.us.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %sext.i.i.us.i.i = shl nuw i64 %.02652.us.i.i, 32
  %i.df = ashr exact i64 %sext.i.i.us.i.i, 29
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 %i.df
  %.0.copyload.i.i.i.i.i.i.i.i.us.i.i = load i64, ptr %i.dg, align 1
  %i.dh = icmp eq i64 %.0.copyload.i.i.i.i.i.i.i.i.us.i.i, -2251799814209537
  br i1 %i.dh, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.di = icmp samesign ult i64 %.02652.us.i.i, 67108864
  %i.dj = tail call ptr @_ZN2v88internal7Factory12SizeToStringEmb(ptr noundef nonnull align 1 dereferenceable(1) %1, i64 noundef %.02652.us.i.i, i1 noundef zeroext %i.di) #23
  %i.dk = load i64, ptr %.sroa.072.0.i, align 8
  %i.dl = add i64 %i.dk, -1                       ; 3 uses
  %i.dm = inttoptr i64 %i.dl to ptr
  %i.dn = load i64, ptr %i.dj, align 8            ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dp = sext i32 %.055.us.i.i to i64
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.dp ; 2 uses
  store atomic volatile i64 %i.dn, ptr %i.dq monotonic, align 8
  %i.dr = trunc i64 %i.dn to i1
  br i1 %i.dr, label %bb.f, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us.i.i

bb.f:                                             ; preds = %bb.e
  %i.ds = or disjoint i64 %i.dl, 1                ; 2 uses
  %i.dt = ptrtoint ptr %i.dq to i64               ; 2 uses
  %i.du = and i64 %i.dl, -262144
  %i.dv = inttoptr i64 %i.du to ptr
  %i.dw = load i64, ptr %i.dv, align 262144       ; 2 uses
  %i.dx = and i64 %i.dw, 32
  %.not.i.i.i.i.i.us.i.i = icmp eq i64 %i.dx, 0
  %i.dy = and i64 %i.dw, 25
  %.not37.i.i.i.i.i.us.i.i = icmp eq i64 %i.dy, 0
  br i1 %.not37.i.i.i.i.i.us.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.dz = and i64 %i.dn, -262144
  %i.ea = inttoptr i64 %i.dz to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.us.i.i = load i64, ptr %i.ea, align 262144
  %i.eb = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.us.i.i, 25
  %.not38.i.i.i.i.i.us.i.i = icmp eq i64 %i.eb, 0
  br i1 %.not38.i.i.i.i.i.us.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ds, i64 noundef %i.dt, i64 %i.dn) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  br i1 %.not.i.i.i.i.i.us.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us.i.i, label %bb.j, !prof !13

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ds, i64 %i.dt, i64 %i.dn) #23
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us.i.i

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us.i.i: ; preds = %bb.j, %bb.i, %bb.e
  %i.ec = add i32 %.055.us.i.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us.i.i, %bb.d, %.lr.ph.split.us.i.i
  %.1.us.i.i = phi i32 [ %i.ec, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us.i.i ], [ %.055.us.i.i, %.lr.ph.split.us.i.i ], [ %.055.us.i.i, %bb.d ] ; 2 uses
  %i.ed = add nuw nsw i64 %.02652.us.i.i, 1       ; 2 uses
  %exitcond57.not.i.i = icmp eq i64 %i.ed, %.0.in.in.i.i58.i
  br i1 %exitcond57.not.i.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i, label %.lr.ph.split.us.i.i, !llvm.loop !3490

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i60.i, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i
  %.055.i.i = phi i32 [ %.1.i.i, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i ], [ 0, %.lr.ph.i60.i ] ; 4 uses
  %.02652.i.i = phi i64 [ %i.ge, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i ], [ 0, %.lr.ph.i60.i ] ; 5 uses
  %i.ee = load i64, ptr %2, align 8               ; 2 uses
  %i.ef = load i64, ptr %3, align 8
  %i.eg = add i64 %i.ee, -1
  %i.eh = inttoptr i64 %i.eg to ptr
  %i.ei = load atomic volatile i64, ptr %i.eh monotonic, align 8
  %i.ej = add i64 %i.ei, 11
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = load atomic volatile i16, ptr %i.ek monotonic, align 2
  %i.em = icmp eq i16 %i.el, 2119
  %i.en = add i64 %i.ee, 23
  %i.eo = inttoptr i64 %i.en to ptr
  %i.ep = add i64 %i.ef, -1
  %i.eq = inttoptr i64 %i.ep to ptr               ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %.0.in.in.in.in.i.i.i.i.i = select i1 %i.em, ptr %i.eo, ptr %i.er
  %.0.in.in.in.i.i.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i.i.i, align 8
  %.0.in.in.i.i.i.i.i = lshr i64 %.0.in.in.in.i.i.i.i.i, 32
  %i.es = icmp samesign ult i64 %.02652.i.i, %.0.in.in.i.i.i.i.i
  br i1 %i.es, label %bb.k, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i

bb.k:                                             ; preds = %.lr.ph.split.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %sext.i.i.i.i = shl nuw i64 %.02652.i.i, 32     ; 3 uses
  %i.eu = ashr exact i64 %sext.i.i.i.i, 29
  %i.ev = getelementptr inbounds i8, ptr %i.et, i64 %i.eu
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ev, align 1
  %i.ew = icmp eq i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -2251799814209537
  br i1 %i.ew, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ex = icmp samesign ult i64 %.02652.i.i, 2147483648
  br i1 %i.ex, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ey = load ptr, ptr %i.cn, align 8            ; 2 uses
  %i.ez = load ptr, ptr %i.co, align 8
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %bb.n, label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i, !prof !5

bb.n:                                             ; preds = %bb.m
  %i.fb = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %1) #23
  br label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i

_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi ptr [ %i.fb, %bb.n ], [ %i.ey, %bb.m ] ; 2 uses
  %i.fc = ptrtoint ptr %.0.i.i.i.i.i.i to i64
  %i.fd = add i64 %i.fc, 8
  %i.fe = inttoptr i64 %i.fd to ptr
  store ptr %i.fe, ptr %i.cn, align 8
  store i64 %sext.i.i.i.i, ptr %.0.i.i.i.i.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i

bb.o:                                             ; preds = %bb.l
  %i.ff = uitofp nneg i64 %.02652.i.i to double
  %i.fg = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #23 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8
  %i.fi = add i64 %i.fh, -1
  %i.fj = inttoptr i64 %i.fi to ptr
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store double %i.ff, ptr %i.fk, align 1
  %.pre.i.i = load i64, ptr %i.fg, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i

_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i: ; preds = %bb.o, %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i
  %i.fl = phi i64 [ %sext.i.i.i.i, %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i ], [ %.pre.i.i, %bb.o ] ; 5 uses
  %i.fm = load i64, ptr %.sroa.072.0.i, align 8
  %i.fn = add i64 %i.fm, -1                       ; 3 uses
  %i.fo = inttoptr i64 %i.fn to ptr
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = sext i32 %.055.i.i to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %i.fq ; 2 uses
  store atomic volatile i64 %i.fl, ptr %i.fr monotonic, align 8
  %i.fs = trunc i64 %i.fl to i1
  br i1 %i.fs, label %bb.p, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i

bb.p:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i
  %i.ft = or disjoint i64 %i.fn, 1                ; 2 uses
  %i.fu = ptrtoint ptr %i.fr to i64               ; 2 uses
  %i.fv = and i64 %i.fn, -262144
  %i.fw = inttoptr i64 %i.fv to ptr
  %i.fx = load i64, ptr %i.fw, align 262144       ; 2 uses
  %i.fy = and i64 %i.fx, 32
  %.not.i.i.i.i.i27.i.i = icmp eq i64 %i.fy, 0
  %i.fz = and i64 %i.fx, 25
  %.not37.i.i.i.i.i28.i.i = icmp eq i64 %i.fz, 0
  br i1 %.not37.i.i.i.i.i28.i.i, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ga = and i64 %i.fl, -262144
  %i.gb = inttoptr i64 %i.ga to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i29.i.i = load i64, ptr %i.gb, align 262144
  %i.gc = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i29.i.i, 25
  %.not38.i.i.i.i.i30.i.i = icmp eq i64 %i.gc, 0
  br i1 %.not38.i.i.i.i.i30.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ft, i64 noundef %i.fu, i64 %i.fl) #23
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  br i1 %.not.i.i.i.i.i27.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i, label %bb.t, !prof !13

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ft, i64 %i.fu, i64 %i.fl) #23
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i: ; preds = %bb.t, %bb.s, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i
  %i.gd = add i32 %.055.i.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i, %bb.k, %.lr.ph.split.i.i
  %.1.i.i = phi i32 [ %i.gd, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i ], [ %.055.i.i, %.lr.ph.split.i.i ], [ %.055.i.i, %bb.k ] ; 2 uses
  %i.ge = add nuw nsw i64 %.02652.i.i, 1          ; 2 uses
  %exitcond.not.i61.i = icmp eq i64 %i.ge, %.0.in.in.i.i58.i
  br i1 %exitcond.not.i61.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i, label %.lr.ph.split.i.i, !llvm.loop !3490

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i: ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i
  %.0.lcssa.i.i = phi i32 [ 0, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i ], [ %.1.us.i.i, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i ], [ %.1.i.i, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i ] ; 4 uses
  %i.gf = load i64, ptr %4, align 8               ; 2 uses
  %i.gg = load i64, ptr %.sroa.072.0.i, align 8   ; 3 uses
  %i.gh = icmp slt i64 %i.e, 0
  br i1 %i.gh, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i
  %i.gi = add i64 %i.gf, -1
  %i.gj = inttoptr i64 %i.gi to ptr
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load i64, ptr %i.gk, align 8
  %i.gm = lshr i64 %i.gl, 32
  %i.gn = trunc nuw i64 %i.gm to i32
  %i.go = add i64 %i.gg, -1
  %i.gp = inttoptr i64 %i.go to ptr               ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load i64, ptr %i.gq, align 8
  %i.gs = lshr i64 %i.gr, 32
  %i.gt = trunc nuw i64 %i.gs to i32              ; 2 uses
  %i.gu = sub i32 %i.gt, %.0.lcssa.i.i
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %i.gu, i32 %i.gn) ; 3 uses
  %i.gv = add i32 %.sroa.speculated.i.i, %.0.lcssa.i.i ; 2 uses
  %i.gw = sub nsw i32 %i.gt, %i.gv                ; 2 uses
  %i.gx = icmp sgt i32 %i.gw, 0
  br i1 %i.gx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gz = sext i32 %i.gv to i64
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.gy, i64 %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.hc = load i64, ptr %i.hb, align 8
  %i.hd = zext nneg i32 %i.gw to i64
  %i.he = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.hc, i64 %i.hd, ptr nonnull %i.ha) #23, !srcloc !3333 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i
  %.0.i62.i = phi i32 [ %i.g, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i ], [ %.sroa.speculated.i.i, %bb.v ], [ %.sroa.speculated.i.i, %bb.u ] ; 2 uses
  %i.hf = icmp eq i32 %.0.i62.i, 0
  br i1 %i.hf, label %bb.x, label %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i

_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i: ; preds = %bb.w
  %i.hg = sext i32 %.0.lcssa.i.i to i64
  %i.hh = add i64 %i.gg, 15
  %.idx.i.i.i.i = shl nsw i64 %i.hg, 3
  %i.hi = add i64 %i.hh, %.idx.i.i.i.i
  %i.hj = add i64 %i.gf, 15
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 55464
  tail call void @_ZN2v88internal4Heap9CopyRangeINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S7_iNS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(2992) %i.hk, i64 %i.gg, i64 %i.hi, i64 %i.hj, i32 noundef %.0.i62.i, i32 noundef 4) #23
  br label %bb.x

bb.x:                                             ; preds = %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i, %bb.w
  %i.hl = add i32 %.0.lcssa.i.i, %i.g
  %i.hm = tail call ptr @_ZN2v88internal10FixedArray16RightTrimOrEmptyINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEES5_PNS0_7IsolateES5_i(ptr noundef nonnull %1, ptr nonnull %.sroa.072.0.i, i32 noundef %i.hl) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit: ; preds = %bb.b, %bb.x
  %.sroa.086.1.i = phi ptr [ null, %bb.b ], [ %i.hm, %bb.x ]
  ret ptr %.sroa.086.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE27AddElementsToKeyAccumulatorENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8                ; 5 uses
  %i.b = load i64, ptr %1, align 8
  %i.c = add i64 %i.b, 15
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 560 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
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
  %i.o = load i64, ptr %1, align 8                ; 2 uses
  %i.p = add i64 %i.o, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.s = add i64 %i.r, 11
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i16, ptr %i.t monotonic, align 2
  %i.v = icmp eq i16 %i.u, 2119
  %i.w = add i64 %i.o, 23
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = add i64 %i.e, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.0.in.in.in.in.i.i.i = select i1 %i.v, ptr %i.x, ptr %i.aa
  %.0.in.in.in.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i, align 8
  %.0.in.in.i.i.i = lshr i64 %.0.in.in.in.i.i.i, 32 ; 2 uses
  %.not45.i = icmp eq i64 %.0.in.in.i.i.i, 0
  br i1 %.not45.i, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %bb.g
  %.02246.i = phi i64 [ %i.bd, %bb.g ], [ 0, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ] ; 2 uses
  %i.ab = load i64, ptr %.0.i.i.i, align 8
  %i.ac = add i64 %i.ab, -1
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %sext.i.i = shl i64 %.02246.i, 32
  %i.af = ashr exact i64 %sext.i.i, 29
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 %i.af
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.ag, align 1 ; 3 uses
  %.not44.i = icmp eq i64 %.0.copyload.i.i.i.i.i.i.i.i, -2251799814209537
  br i1 %.not44.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ah = bitcast i64 %.0.copyload.i.i.i.i.i.i.i.i to double ; 5 uses
  %i.ai = fcmp oge double %i.ah, f0xC1E0000000000000
  %i.aj = fcmp ole double %i.ah, f0x41DFFFFFFFC00000
  %or.cond.i.i.i.i.i.i = and i1 %i.ai, %i.aj
  br i1 %or.cond.i.i.i.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ak = tail call noundef i1 @llvm.is.fpclass.f64(double %i.ah, i32 32)
  br i1 %i.ak, label %bb.f, label %_ZN2v88internal11IsSmiDoubleEd.exit.i.i.i.i.i

_ZN2v88internal11IsSmiDoubleEd.exit.i.i.i.i.i:    ; preds = %bb.d
  %i.al = fptosi double %i.ah to i32              ; 2 uses
  %i.am = sitofp i32 %i.al to double
  %i.an = fcmp oeq double %i.ah, %i.am
  br i1 %i.an, label %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i.i.i.i, label %bb.f

_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i.i.i.i: ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i.i.i.i
  %i.ao = sext i32 %i.al to i64
  %i.ap = shl nsw i64 %i.ao, 32
  %i.aq = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ar = load ptr, ptr %i.h, align 8
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %bb.e, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i.i, !prof !5

bb.e:                                             ; preds = %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i.i.i.i
  %i.at = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %i.a) #23
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i.i

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i.i: ; preds = %bb.e, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i.i.i.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.at, %bb.e ], [ %i.aq, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i.i.i.i ] ; 3 uses
  %i.au = ptrtoint ptr %.0.i.i.i.i.i.i to i64
  %i.av = add i64 %i.au, 8
  %i.aw = inttoptr i64 %i.av to ptr
  store ptr %i.aw, ptr %i.f, align 8
  store i64 %i.ap, ptr %.0.i.i.i.i.i.i, align 8
  br label %_ZN2v88internal12_GLOBAL__N_126FastDoubleElementsAccessorINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i

bb.f:                                             ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i.i.i.i, %bb.d, %bb.c
  %i.ax = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %i.a) #23 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = add i64 %i.ay, -1
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %.0.copyload.i.i.i.i.i.i.i.i, ptr %i.bb, align 1
  br label %_ZN2v88internal12_GLOBAL__N_126FastDoubleElementsAccessorINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i

_ZN2v88internal12_GLOBAL__N_126FastDoubleElementsAccessorINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i: ; preds = %bb.f, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i.i
  %.sroa.05.0.i.i.i = phi ptr [ %i.ax, %bb.f ], [ %.0.i.i.i.i.i.i, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i.i ]
  %i.bc = tail call noundef zeroext i1 @_ZN2v88internal14KeyAccumulator6AddKeyENS0_12DirectHandleINS0_6ObjectEEENS0_16AddKeyConversionE(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr nonnull %.sroa.05.0.i.i.i, i32 noundef %3) #23
  br i1 %i.bc, label %bb.g, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit

bb.g:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_126FastDoubleElementsAccessorINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i, %.lr.ph.i
  %i.bd = add nuw nsw i64 %.02246.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bd, %.0.in.in.i.i.i
  br i1 %exitcond.not.i, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit, label %.lr.ph.i, !llvm.loop !3491

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_126FastDoubleElementsAccessorINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i, %bb.g, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.not.lcssa.i = phi i1 [ true, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ false, %_ZN2v88internal12_GLOBAL__N_126FastDoubleElementsAccessorINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i ], [ true, %bb.g ]
  ret i1 %.not.lcssa.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE22TransitionElementsKindEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_3MapEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr %2, ptr %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i.i, align 8
  %i.n = add i64 %i.d, 14
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i8, ptr %i.o, align 1               ; 3 uses
  %i.q = lshr i8 %i.p, 2                          ; 4 uses
  %i.r = load i64, ptr %3, align 8
  %i.s = add i64 %i.r, 14
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i8, ptr %i.t, align 1
  %i.v = lshr i8 %i.u, 2                          ; 3 uses
  %i.w = trunc i8 %i.q to i1
  %i.x = icmp ult i8 %i.p, 24
  %i.y = and i1 %i.x, %i.w
  br i1 %i.y, label %bb.c, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  switch i8 %i.v, label %bb.f [
    i8 0, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i
    i8 4, label %bb.d
    i8 2, label %bb.e
    i8 6, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  ]

bb.d:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.e:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.f:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.0.i = phi i8 [ %i.v, %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.v, %bb.f ], [ 5, %bb.d ], [ 3, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %.not.i = icmp eq i8 %i.q, %.0.i
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE26TransitionElementsKindImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_3MapEEE.exit, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i: ; preds = %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i, %bb.c
  %.0103.i = phi i8 [ %.0.i, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i ], [ 7, %bb.c ] ; 2 uses
  %i.z = load i64, ptr %2, align 8
  %i.aa = add i64 %i.z, 15
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ae = load ptr, ptr %i.g, align 8
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.g, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i, !prof !5

bb.g:                                             ; preds = %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  %i.ag = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i: ; preds = %bb.g, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  %.0.i.i38.i = phi ptr [ %i.ag, %bb.g ], [ %i.ad, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i ] ; 4 uses
  %i.ah = ptrtoint ptr %.0.i.i38.i to i64
  %i.ai = add i64 %i.ah, 8
  %i.aj = inttoptr i64 %i.ai to ptr
  store ptr %i.aj, ptr %i.e, align 8
  store i64 %i.ac, ptr %.0.i.i38.i, align 8
  %i.ak = load i64, ptr %2, align 8
  %i.al = add i64 %i.ak, 15
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 864
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = icmp eq i64 %i.an, %i.ap
  br i1 %i.aq, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i
  %i.ar = and i8 %i.p, -8
  %i.as = icmp eq i8 %i.ar, 16
  %i.at = and i8 %.0103.i, -2
  %i.au = icmp eq i8 %i.at, 4
  %i.av = xor i1 %i.as, %i.au
  br i1 %i.av, label %bb.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.h, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i
  tail call void @_ZN2v88internal8JSObject12MigrateToMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEEi(ptr noundef nonnull %1, ptr nonnull %2, ptr nonnull %3, i32 noundef 0) #23
  br label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

bb.i:                                             ; preds = %bb.h
  %i.aw = add i64 %i.an, -1
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = lshr i64 %i.az, 32
  %i.bb = trunc nuw i64 %i.ba to i32
  %i.bc = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE27ConvertElementsWithCapacityEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEES5_jjj(ptr noundef nonnull %1, ptr nonnull readonly %2, ptr nonnull readonly %.0.i.i38.i, i8 noundef zeroext %i.q, i32 noundef %i.bb, i32 noundef 0) ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.j, label %_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i, !prof !5

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.27) #24
  unreachable

_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i: ; preds = %bb.i
  tail call void @_ZN2v88internal8JSObject12MigrateToMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEEi(ptr noundef nonnull %1, ptr nonnull %2, ptr nonnull %3, i32 noundef 0) #23
  %i.be = load i64, ptr %2, align 8               ; 4 uses
  %i.bf = load i64, ptr %i.bc, align 8            ; 5 uses
  %i.bg = add i64 %i.be, 15                       ; 3 uses
  %i.bh = inttoptr i64 %i.bg to ptr
  store atomic volatile i64 %i.bf, ptr %i.bh monotonic, align 8
  %i.bi = trunc i64 %i.bf to i1
  br i1 %i.bi, label %bb.k, label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

bb.k:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i
  %i.bj = and i64 %i.be, -262144
  %i.bk = inttoptr i64 %i.bj to ptr
end_hunk_9
begin_hunk_10_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE8ValidateEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE:bb.a
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
  br i1 %i.l, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = add i64 %2, -1
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = add i64 %i.o, 11
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2
  %i.s = icmp eq i16 %i.r, 2119
  br i1 %i.s, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.u = add i64 %i.t, 11
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i16, ptr %i.v monotonic, align 2
  %i.x = icmp eq i16 %i.w, 2061
  br i1 %i.x, label %bb.d, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit

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
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit: ; preds = %bb.a, %bb.b, %bb.c, %_ZNK2v88internal12JSTypedArray9GetLengthEv.exit.i
  ret void
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE10HasElementEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEjNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2, i32 noundef %3, i64 %4, i32 %5) unnamed_addr #10 align 2 {
bb.a:
  %i.a = zext i32 %3 to i64
  %i.b = add i64 %2, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 2119
  %i.i = add i64 %2, 23
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = add i64 %4, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.0.in.in.in.in.i.i.i = select i1 %i.h, ptr %i.j, ptr %i.m
  %.0.in.in.in.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i, align 8
  %.0.in.in.i.i.i = lshr i64 %.0.in.in.in.i.i.i, 32
  %i.n = icmp samesign ugt i64 %.0.in.in.i.i.i, %i.a
  ret i1 %i.n
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE8HasEntryEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENS0_13InternalIndexE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2, i64 %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = add i64 %2, 15
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %sext.i = shl i64 %3, 32
  %i.g = ashr exact i64 %sext.i, 29
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 %i.g
  %i.i = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp ne i64 %i.i, %i.k
  ret i1 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE3GetEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %2, i64 %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %sext.i.i = shl i64 %3, 32
  %i.h = ashr exact i64 %sext.i.i, 29
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE15GetInternalImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE15GetInternalImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE15GetInternalImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi ptr [ %i.p, %bb.b ], [ %i.l, %bb.a ] ; 3 uses
  %i.q = ptrtoint ptr %.0.i.i.i to i64
  %i.r = add i64 %i.q, 8
  %i.s = inttoptr i64 %i.r to ptr
  store ptr %i.s, ptr %i.k, align 8
  store i64 %i.j, ptr %.0.i.i.i, align 8
  ret ptr %.0.i.i.i
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE9GetAtomicEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE12HasAccessorsENS0_6TaggedINS0_8JSObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1) unnamed_addr #12 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef range(i64 0, 4294967296) i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE16NumberOfElementsEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2) unnamed_addr #10 align 2 {
bb.a:
  %i.a = add i64 %2, 15
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %2, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = icmp eq i16 %i.i, 2119
  %i.k = add i64 %2, 23
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = add i64 %i.c, -1
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.0.in.in.in.in.i.i = select i1 %i.j, ptr %i.l, ptr %i.o
  %.0.in.in.in.i.i = load i64, ptr %.0.in.in.in.in.i.i, align 8
  %.0.in.in.in.i.i.fr = freeze i64 %.0.in.in.in.i.i ; 2 uses
  %.0.in.in.i.i = lshr i64 %.0.in.in.in.i.i.fr, 32 ; 4 uses
  %.not17.i = icmp eq i64 %.0.in.in.i.i, 0
  br i1 %.not17.i, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 2 uses
  %i.r = icmp eq i64 %.0.in.in.i.i, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.0.in.in.i.i, 4294967294
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.01316.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ac, %bb.b ] ; 3 uses
  %.01415.i = phi i32 [ 0, %.lr.ph.i.new ], [ %spec.select.i.1, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %sext.i.i = shl i64 %.01316.i, 32
  %i.s = ashr exact i64 %sext.i.i, 29
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 %i.s
  %i.u = load atomic volatile i64, ptr %i.t monotonic, align 8
  %i.v = load i64, ptr %i.q, align 8              ; 2 uses
  %.not.i = icmp ne i64 %i.u, %i.v
  %i.w = zext i1 %.not.i to i32
  %spec.select.i = add i32 %.01415.i, %i.w
  %i.x = shl i64 %.01316.i, 32
  %sext.i.i.1 = ashr exact i64 %i.x, 29
  %i.y = getelementptr i8, ptr %i.p, i64 %sext.i.i.1
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %i.aa = load atomic volatile i64, ptr %i.z monotonic, align 8
  %.not.i.1 = icmp ne i64 %i.aa, %i.v
  %i.ab = zext i1 %.not.i.1 to i32
  %spec.select.i.1 = add i32 %spec.select.i, %i.ab ; 3 uses
  %i.ac = add nuw nsw i64 %.01316.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !3517

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %i.ad = and i64 %.0.in.in.in.i.i.fr, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.ad, 0
  br i1 %lcmp.mod.not, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.01316.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ac, %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa ]
  %.01415.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %spec.select.i.1, %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod6 = trunc i64 %.0.in.in.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod6)
  %sext.i.i.epil = shl i64 %.01316.i.epil.init, 32
  %i.ae = ashr exact i64 %sext.i.i.epil, 29
  %i.af = getelementptr inbounds i8, ptr %i.p, i64 %i.ae
  %i.ag = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.ah = load i64, ptr %i.q, align 8
  %.not.i.epil = icmp ne i64 %i.ag, %i.ah
  %i.ai = zext i1 %.not.i.epil to i32
  %spec.select.i.epil = add i32 %.01415.i.epil.init, %i.ai
  br label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit: ; preds = %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa, %.epil.preheader
  %spec.select.i.lcssa = phi i32 [ %spec.select.i.1, %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa ], [ %spec.select.i.epil, %.epil.preheader ]
  %i.aj = zext i32 %spec.select.i.lcssa to i64
  br label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit, %bb.a
  %.014.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.aj, %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit ]
  ret i64 %.014.lcssa.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE9SetLengthEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 8 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i, align 8
  %i.n = load i64, ptr %2, align 8                ; 3 uses
  %i.o = add i64 %i.n, 23
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8              ; 4 uses
  %i.r = and i64 %i.q, 1
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.c, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.t = icmp sgt i64 %i.q, -1
  br i1 %i.t, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread84.i, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i, !prof !107

_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread84.i: ; preds = %bb.c
  %i.u = lshr i64 %i.q, 32
  %i.v = trunc nuw nsw i64 %i.u to i32
  br label %bb.e

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i: ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.w = add nsw i64 %i.q, -1
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = load atomic volatile i64, ptr %i.x monotonic, align 8
  %i.z = add i64 %i.y, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = icmp eq i16 %i.ab, 130
  br i1 %i.ac, label %bb.d, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i, !prof !107

bb.d:                                             ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.ad, align 8 ; 2 uses
  %i.ae = fadd double %.0.copyload.i.i.i.i.i.i.i, f0x4330000000000000
  %i.af = bitcast double %i.ae to i64             ; 2 uses
  %.mask.i.i.i.i = and i64 %i.af, -4294967296
  %i.ag = icmp eq i64 %.mask.i.i.i.i, 4841369599423283200
  br i1 %i.ag, label %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i, !prof !107

_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i: ; preds = %bb.d
  %i.ah = trunc i64 %i.af to i32                  ; 3 uses
  %i.ai = uitofp i32 %i.ah to double
  %i.aj = fcmp oeq double %.0.copyload.i.i.i.i.i.i.i, %i.ai
  %i.ak = icmp ne i32 %i.ah, -1
  %or.cond.i = and i1 %i.ak, %i.aj
  br i1 %or.cond.i, label %bb.e, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i, !prof !3326

_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i: ; preds = %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i, %bb.d, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.26) #24
  unreachable

bb.e:                                             ; preds = %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i, %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread84.i
  %.086.i = phi i32 [ %i.v, %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread84.i ], [ %i.ah, %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i ] ; 2 uses
  %i.al = icmp eq i32 %3, %.086.i
  br i1 %i.al, label %_ZN2v88internal12_GLOBAL__N_139FastNonextensibleObjectElementsAccessorINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE13SetLengthImplEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEjNSA_INS0_14FixedArrayBaseEEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = icmp eq i32 %.086.i, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1856
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ao = add i64 %i.n, -1
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load atomic volatile i64, ptr %i.ap monotonic, align 8
  %i.ar = add i64 %i.aq, 14
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load i8, ptr %i.as, align 1
  %i.au = lshr i8 %i.at, 2
  %i.av = load ptr, ptr @_ZN2v88internal16ElementsAccessor19elements_accessors_E, align 8
  %i.aw = zext nneg i8 %i.au to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 208
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = tail call ptr %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull %1, ptr nonnull %2) #23, !inline_history !3518
  %.pre.i = load i64, ptr %2, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bd = phi i64 [ %i.n, %bb.g ], [ %.pre.i, %bb.h ]
  %.sroa.036.0.i = phi ptr [ %i.an, %bb.g ], [ %i.bc, %bb.h ] ; 2 uses
  %i.be = add i64 %i.bd, -1
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = load atomic volatile i64, ptr %i.bf monotonic, align 8
  %i.bh = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.bi = load ptr, ptr %i.g, align 8
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %bb.j, label %_ZN2v88internal13direct_handleINS0_3MapEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i, !prof !5

bb.j:                                             ; preds = %bb.i
  %i.bk = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal13direct_handleINS0_3MapEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i

_ZN2v88internal13direct_handleINS0_3MapEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.bk, %bb.j ], [ %i.bh, %bb.i ] ; 3 uses
  %i.bl = ptrtoint ptr %.0.i.i.i.i to i64
  %i.bm = add i64 %i.bl, 8
  %i.bn = inttoptr i64 %i.bm to ptr
  store ptr %i.bn, ptr %i.e, align 8
  store i64 %i.bg, ptr %.0.i.i.i.i, align 8
  %i.bo = tail call ptr @_ZN2v88internal3Map4CopyEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKcNS0_18TransitionKindFlagE(ptr noundef nonnull %1, ptr nonnull %.0.i.i.i.i, ptr noundef nonnull @.str.29, i32 noundef 3) #23 ; 3 uses
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = add i64 %i.bp, 15
  %i.br = inttoptr i64 %i.bq to ptr               ; 2 uses
  %i.bs = load atomic volatile i32, ptr %i.br monotonic, align 4
  %i.bt = and i32 %i.bs, -134217729
  store atomic volatile i32 %i.bt, ptr %i.br monotonic, align 4
  %i.bu = load i64, ptr %i.bo, align 8
  %i.bv = add i64 %i.bu, 14
  %i.bw = inttoptr i64 %i.bv to ptr               ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = and i8 %i.bx, 3
  %i.bz = or disjoint i8 %i.by, 52
  store i8 %i.bz, ptr %i.bw, align 1
  tail call void @_ZN2v88internal8JSObject12MigrateToMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEEi(ptr noundef nonnull %1, ptr nonnull %2, ptr nonnull %i.bo, i32 noundef 0) #23
  %i.ca = icmp eq ptr %.sroa.036.0.i, null
  br i1 %i.ca, label %_ZN2v88internal8JSObject12set_elementsENS0_6TaggedINS0_14FixedArrayBaseEEENS0_16WriteBarrierModeE.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal13direct_handleINS0_3MapEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i
  %i.cb = load i64, ptr %2, align 8               ; 4 uses
  %i.cc = load i64, ptr %.sroa.036.0.i, align 8   ; 5 uses
  %i.cd = add i64 %i.cb, 15                       ; 3 uses
  %i.ce = inttoptr i64 %i.cd to ptr
  store atomic volatile i64 %i.cc, ptr %i.ce monotonic, align 8
  %i.cf = trunc i64 %i.cc to i1
  br i1 %i.cf, label %bb.l, label %_ZN2v88internal8JSObject12set_elementsENS0_6TaggedINS0_14FixedArrayBaseEEENS0_16WriteBarrierModeE.exit.i

bb.l:                                             ; preds = %bb.k
  %i.cg = and i64 %i.cb, -262144
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = load i64, ptr %i.ch, align 262144       ; 2 uses
  %i.cj = and i64 %i.ci, 32
  %.not.i.i.i.i = icmp eq i64 %i.cj, 0
  %i.ck = and i64 %i.ci, 25
  %.not37.i.i.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not37.i.i.i.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cl = and i64 %i.cc, -262144
  %i.cm = inttoptr i64 %i.cl to ptr
  %.sroa.0.0.copyload.i.i.i.i.i41.i = load i64, ptr %i.cm, align 262144
  %i.cn = and i64 %.sroa.0.0.copyload.i.i.i.i.i41.i, 25
  %.not38.i.i.i.i = icmp eq i64 %i.cn, 0
  br i1 %.not38.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.cb, i64 noundef %i.cd, i64 %i.cc) #23
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  br i1 %.not.i.i.i.i, label %_ZN2v88internal8JSObject12set_elementsENS0_6TaggedINS0_14FixedArrayBaseEEENS0_16WriteBarrierModeE.exit.i, label %bb.p, !prof !13

bb.p:                                             ; preds = %bb.o
end_hunk_10
begin_hunk_11_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE21PrependElementIndicesEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE:bb.a
bb.k:                                             ; preds = %.lr.ph.split.i.i
  %i.cx = icmp samesign ult i64 %.02651.i.i, 2147483648
  br i1 %i.cx, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cy = shl nuw nsw i64 %.02651.i.i, 32         ; 2 uses
  %i.cz = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.da = load ptr, ptr %i.aw, align 8
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %bb.m, label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i, !prof !5

bb.m:                                             ; preds = %bb.l
  %i.dc = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %1) #23
  br label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i

_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i = phi ptr [ %i.dc, %bb.m ], [ %i.cz, %bb.l ] ; 2 uses
  %i.dd = ptrtoint ptr %.0.i.i.i.i.i.i to i64
  %i.de = add i64 %i.dd, 8
  %i.df = inttoptr i64 %i.de to ptr
  store ptr %i.df, ptr %i.av, align 8
  store i64 %i.cy, ptr %.0.i.i.i.i.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i

bb.n:                                             ; preds = %bb.k
  %i.dg = uitofp nneg i64 %.02651.i.i to double
  %i.dh = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #23 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = add i64 %i.di, -1
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store double %i.dg, ptr %i.dl, align 1
  %.pre.i.i = load i64, ptr %i.dh, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i

_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i: ; preds = %bb.n, %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i
  %i.dm = phi i64 [ %i.cy, %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i ], [ %.pre.i.i, %bb.n ] ; 5 uses
  %i.dn = load i64, ptr %.sroa.072.0.i, align 8
  %i.do = add i64 %i.dn, -1                       ; 3 uses
  %i.dp = inttoptr i64 %i.do to ptr
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = sext i32 %.054.i.i to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.dr ; 2 uses
  store atomic volatile i64 %i.dm, ptr %i.ds monotonic, align 8
  %i.dt = trunc i64 %i.dm to i1
  br i1 %i.dt, label %bb.o, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i

bb.o:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i
  %i.du = or disjoint i64 %i.do, 1                ; 2 uses
  %i.dv = ptrtoint ptr %i.ds to i64               ; 2 uses
  %i.dw = and i64 %i.do, -262144
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = load i64, ptr %i.dx, align 262144       ; 2 uses
  %i.dz = and i64 %i.dy, 32
  %.not.i.i.i.i.i27.i.i = icmp eq i64 %i.dz, 0
  %i.ea = and i64 %i.dy, 25
  %.not37.i.i.i.i.i28.i.i = icmp eq i64 %i.ea, 0
  br i1 %.not37.i.i.i.i.i28.i.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.eb = and i64 %i.dm, -262144
  %i.ec = inttoptr i64 %i.eb to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i29.i.i = load i64, ptr %i.ec, align 262144
  %i.ed = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i29.i.i, 25
  %.not38.i.i.i.i.i30.i.i = icmp eq i64 %i.ed, 0
  br i1 %.not38.i.i.i.i.i30.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.du, i64 noundef %i.dv, i64 %i.dm) #23
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  br i1 %.not.i.i.i.i.i27.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i, label %bb.s, !prof !13

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.du, i64 %i.dv, i64 %i.dm) #23
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i: ; preds = %bb.s, %bb.r, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i
  %i.ee = add i32 %.054.i.i, 1
  br label %bb.t

bb.t:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i, %.lr.ph.split.i.i
  %.1.i.i = phi i32 [ %i.ee, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i ], [ %.054.i.i, %.lr.ph.split.i.i ] ; 2 uses
  %i.ef = add nuw nsw i64 %.02651.i.i, 1          ; 2 uses
  %exitcond.not.i61.i = icmp eq i64 %i.ef, %.0.in.in.i.i58.i
  br i1 %exitcond.not.i61.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i, label %.lr.ph.split.i.i, !llvm.loop !3522

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i: ; preds = %bb.t, %bb.j, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i
  %.0.lcssa.i.i = phi i32 [ 0, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i ], [ %.1.us.i.i, %bb.j ], [ %.1.i.i, %bb.t ] ; 3 uses
  %i.eg = load i64, ptr %4, align 8               ; 2 uses
  %i.eh = load i64, ptr %.sroa.072.0.i, align 8   ; 3 uses
  %i.ei = icmp slt i64 %i.e, 0
  br i1 %i.ei, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i
  %i.ej = add i64 %i.eg, -1
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load i64, ptr %i.el, align 8
  %i.en = lshr i64 %i.em, 32
  %i.eo = trunc nuw i64 %i.en to i32
  %i.ep = add i64 %i.eh, -1
  %i.eq = inttoptr i64 %i.ep to ptr               ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load i64, ptr %i.er, align 8
  %i.et = lshr i64 %i.es, 32
  %i.eu = trunc nuw i64 %i.et to i32              ; 2 uses
  %i.ev = sub i32 %i.eu, %.0.lcssa.i.i
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %i.ev, i32 %i.eo) ; 3 uses
  %i.ew = add i32 %.sroa.speculated.i.i, %.0.lcssa.i.i ; 2 uses
  %i.ex = sub nsw i32 %i.eu, %i.ew                ; 2 uses
  %i.ey = icmp sgt i32 %i.ex, 0
  br i1 %i.ey, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.fa = sext i32 %i.ew to i64
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = zext nneg i32 %i.ex to i64
  %i.ff = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.fd, i64 %i.fe, ptr nonnull %i.fb) #23, !srcloc !3333 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i
  %.0.i62.i = phi i32 [ %i.g, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i ], [ %.sroa.speculated.i.i, %bb.v ], [ %.sroa.speculated.i.i, %bb.u ] ; 2 uses
  %i.fg = icmp eq i32 %.0.i62.i, 0
  br i1 %i.fg, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit, label %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i

_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i: ; preds = %bb.w
  %i.fh = sext i32 %.0.lcssa.i.i to i64
  %i.fi = add i64 %i.eh, 15
  %.idx.i.i.i.i = shl nsw i64 %i.fh, 3
  %i.fj = add i64 %i.fi, %.idx.i.i.i.i
  %i.fk = add i64 %i.eg, 15
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 55464
  tail call void @_ZN2v88internal4Heap9CopyRangeINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S7_iNS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(2992) %i.fl, i64 %i.eh, i64 %i.fj, i64 %i.fk, i32 noundef %.0.i62.i, i32 noundef 4) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit: ; preds = %bb.b, %bb.w, %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i
  %.sroa.086.1.i = phi ptr [ null, %bb.b ], [ %.sroa.072.0.i, %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i ], [ %.sroa.072.0.i, %bb.w ]
  ret ptr %.sroa.086.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE27AddElementsToKeyAccumulatorENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8                ; 5 uses
  %i.b = load i64, ptr %1, align 8
  %i.c = add i64 %i.b, 15
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 560 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
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
  %i.o = load i64, ptr %1, align 8                ; 2 uses
  %i.p = add i64 %i.o, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.s = add i64 %i.r, 11
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i16, ptr %i.t monotonic, align 2
  %i.v = icmp eq i16 %i.u, 2119
  %i.w = add i64 %i.o, 23
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = add i64 %i.e, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.0.in.in.in.in.i.i.i = select i1 %i.v, ptr %i.x, ptr %i.aa
  %.0.in.in.in.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i, align 8
  %.0.in.in.i.i.i = lshr i64 %.0.in.in.in.i.i.i, 32 ; 2 uses
  %.not45.i = icmp eq i64 %.0.in.in.i.i.i, 0
  br i1 %.not45.i, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i
  %.02246.i = phi i64 [ 0, %.lr.ph.i ], [ %i.at, %bb.f ] ; 2 uses
  %i.ac = load i64, ptr %.0.i.i.i, align 8
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %sext.i.i = shl i64 %.02246.i, 32
  %i.ag = ashr exact i64 %sext.i.i, 29
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag ; 2 uses
  %i.ai = load atomic volatile i64, ptr %i.ah monotonic, align 8
  %i.aj = load i64, ptr %i.ab, align 8
  %.not44.i = icmp eq i64 %i.ai, %i.aj
  br i1 %.not44.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = load atomic volatile i64, ptr %i.ah monotonic, align 8
  %i.al = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.am = load ptr, ptr %i.h, align 8
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.e, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i, !prof !5

bb.e:                                             ; preds = %bb.d
  %i.ao = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.a) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i26.i = phi ptr [ %i.ao, %bb.e ], [ %i.al, %bb.d ] ; 3 uses
  %i.ap = ptrtoint ptr %.0.i.i26.i to i64
  %i.aq = add i64 %i.ap, 8
  %i.ar = inttoptr i64 %i.aq to ptr
  store ptr %i.ar, ptr %i.f, align 8
  store i64 %i.ak, ptr %.0.i.i26.i, align 8
  %i.as = tail call noundef zeroext i1 @_ZN2v88internal14KeyAccumulator6AddKeyENS0_12DirectHandleINS0_6ObjectEEENS0_16AddKeyConversionE(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr nonnull %.0.i.i26.i, i32 noundef %3) #23
  br i1 %i.as, label %bb.f, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit

bb.f:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i, %bb.c
  %i.at = add nuw nsw i64 %.02246.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.at, %.0.in.in.i.i.i
  br i1 %exitcond.not.i, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit, label %bb.c, !llvm.loop !3523

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i, %bb.f, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.not.lcssa.i = phi i1 [ true, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ false, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i ], [ true, %bb.f ]
  ret i1 %.not.lcssa.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE22TransitionElementsKindEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_3MapEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr %2, ptr %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i.i, align 8
  %i.n = add i64 %i.d, 14
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i8, ptr %i.o, align 1               ; 3 uses
  %i.q = lshr i8 %i.p, 2                          ; 4 uses
  %i.r = load i64, ptr %3, align 8
  %i.s = add i64 %i.r, 14
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i8, ptr %i.t, align 1
  %i.v = lshr i8 %i.u, 2                          ; 3 uses
  %i.w = trunc i8 %i.q to i1
  %i.x = icmp ult i8 %i.p, 24
  %i.y = and i1 %i.x, %i.w
  br i1 %i.y, label %bb.c, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  switch i8 %i.v, label %bb.f [
    i8 0, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i
    i8 4, label %bb.d
    i8 2, label %bb.e
    i8 6, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  ]

bb.d:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.e:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.f:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.0.i = phi i8 [ %i.v, %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.v, %bb.f ], [ 5, %bb.d ], [ 3, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %.not.i = icmp eq i8 %i.q, %.0.i
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE26TransitionElementsKindImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_3MapEEE.exit, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i: ; preds = %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i, %bb.c
  %.0103.i = phi i8 [ %.0.i, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i ], [ 7, %bb.c ] ; 2 uses
  %i.z = load i64, ptr %2, align 8
  %i.aa = add i64 %i.z, 15
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ae = load ptr, ptr %i.g, align 8
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.g, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i, !prof !5

bb.g:                                             ; preds = %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  %i.ag = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i: ; preds = %bb.g, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  %.0.i.i38.i = phi ptr [ %i.ag, %bb.g ], [ %i.ad, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i ] ; 4 uses
  %i.ah = ptrtoint ptr %.0.i.i38.i to i64
  %i.ai = add i64 %i.ah, 8
  %i.aj = inttoptr i64 %i.ai to ptr
  store ptr %i.aj, ptr %i.e, align 8
  store i64 %i.ac, ptr %.0.i.i38.i, align 8
  %i.ak = load i64, ptr %2, align 8
  %i.al = add i64 %i.ak, 15
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 864
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = icmp eq i64 %i.an, %i.ap
  br i1 %i.aq, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i
  %i.ar = and i8 %i.p, -8
  %i.as = icmp eq i8 %i.ar, 16
  %i.at = and i8 %.0103.i, -2
  %i.au = icmp eq i8 %i.at, 4
  %i.av = xor i1 %i.as, %i.au
  br i1 %i.av, label %bb.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.h, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i
  tail call void @_ZN2v88internal8JSObject12MigrateToMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEEi(ptr noundef nonnull %1, ptr nonnull %2, ptr nonnull %3, i32 noundef 0) #23
  br label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

bb.i:                                             ; preds = %bb.h
  %i.aw = add i64 %i.an, -1
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = lshr i64 %i.az, 32
  %i.bb = trunc nuw i64 %i.ba to i32
  %i.bc = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE27ConvertElementsWithCapacityEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEES5_jjj(ptr noundef nonnull %1, ptr nonnull readonly %2, ptr nonnull readonly %.0.i.i38.i, i8 noundef zeroext %i.q, i32 noundef %i.bb, i32 noundef 0) ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.j, label %_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i, !prof !5

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.27) #24
  unreachable

_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i: ; preds = %bb.i
  tail call void @_ZN2v88internal8JSObject12MigrateToMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEEi(ptr noundef nonnull %1, ptr nonnull %2, ptr nonnull %3, i32 noundef 0) #23
  %i.be = load i64, ptr %2, align 8               ; 4 uses
  %i.bf = load i64, ptr %i.bc, align 8            ; 5 uses
  %i.bg = add i64 %i.be, 15                       ; 3 uses
  %i.bh = inttoptr i64 %i.bg to ptr
  store atomic volatile i64 %i.bf, ptr %i.bh monotonic, align 8
  %i.bi = trunc i64 %i.bf to i1
  br i1 %i.bi, label %bb.k, label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

bb.k:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i
  %i.bj = and i64 %i.be, -262144
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load i64, ptr %i.bk, align 262144       ; 2 uses
  %i.bm = and i64 %i.bl, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.bm, 0
  %i.bn = and i64 %i.bl, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not37.i.i.i.i.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bo = and i64 %i.bf, -262144
  %i.bp = inttoptr i64 %i.bo to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bp, align 262144
  %i.bq = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not38.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.be, i64 noundef %i.bg, i64 %i.bf) #23
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i, label %bb.o, !prof !13

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.be, i64 %i.bg, i64 %i.bf) #23
  br label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i: ; preds = %bb.o, %bb.n, %_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i, %.critedge.i
  %i.br = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1925), align 1, !range !16, !noundef !17
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.p, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_45FastPackedNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE6EEEE26TransitionElementsKindImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_3MapEEE.exit
end_hunk_11
begin_hunk_12_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE8ValidateEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE:bb.a
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2
  %i.s = icmp eq i16 %i.r, 2119
  br i1 %i.s, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.u = add i64 %i.t, 11
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i16, ptr %i.v monotonic, align 2
  %i.x = icmp eq i16 %i.w, 2061
  br i1 %i.x, label %bb.d, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit

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
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit: ; preds = %bb.a, %bb.b, %bb.c, %_ZNK2v88internal12JSTypedArray9GetLengthEv.exit.i
  ret void
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE10HasElementEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEjNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2, i32 noundef %3, i64 %4, i32 %5) unnamed_addr #10 align 2 {
bb.a:
  %i.a = zext i32 %3 to i64                       ; 2 uses
  %i.b = add i64 %2, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 2119
  %i.i = add i64 %2, 23
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = add i64 %4, -1
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.0.in.in.in.in.i.i.i = select i1 %i.h, ptr %i.j, ptr %i.m
  %.0.in.in.in.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i, align 8
  %.0.in.in.i.i.i = lshr i64 %.0.in.in.in.i.i.i, 32
  %i.n = icmp samesign ugt i64 %.0.in.in.i.i.i, %i.a
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %sext.i.i = shl nuw i64 %i.a, 32
  %i.p = ashr exact i64 %sext.i.i, 29
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 %i.p
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %i.r, %i.t
  br i1 %i.u, label %bb.c, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit: ; preds = %bb.b, %bb.c
  %.sroa.013.1.i.i = phi i1 [ false, %bb.c ], [ true, %bb.b ]
  ret i1 %.sroa.013.1.i.i
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE8HasEntryEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENS0_13InternalIndexE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2, i64 %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = add i64 %2, 15
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %sext.i = shl i64 %3, 32
  %i.g = ashr exact i64 %sext.i, 29
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 %i.g
  %i.i = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp ne i64 %i.i, %i.k
  ret i1 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE3GetEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %2, i64 %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %sext.i.i = shl i64 %3, 32
  %i.h = ashr exact i64 %sext.i.i, 29
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE15GetInternalImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE15GetInternalImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE15GetInternalImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi ptr [ %i.p, %bb.b ], [ %i.l, %bb.a ] ; 3 uses
  %i.q = ptrtoint ptr %.0.i.i.i to i64
  %i.r = add i64 %i.q, 8
  %i.s = inttoptr i64 %i.r to ptr
  store ptr %i.s, ptr %i.k, align 8
  store i64 %i.j, ptr %.0.i.i.i, align 8
  ret ptr %.0.i.i.i
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE9GetAtomicEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE12HasAccessorsENS0_6TaggedINS0_8JSObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1) unnamed_addr #12 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef range(i64 0, 4294967296) i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE16NumberOfElementsEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2) unnamed_addr #10 align 2 {
bb.a:
  %i.a = add i64 %2, 15
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %2, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = icmp eq i16 %i.i, 2119
  %i.k = add i64 %2, 23
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = add i64 %i.c, -1
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.0.in.in.in.in.i.i = select i1 %i.j, ptr %i.l, ptr %i.o
  %.0.in.in.in.i.i = load i64, ptr %.0.in.in.in.in.i.i, align 8
  %.0.in.in.in.i.i.fr = freeze i64 %.0.in.in.in.i.i ; 2 uses
  %.0.in.in.i.i = lshr i64 %.0.in.in.in.i.i.fr, 32 ; 4 uses
  %.not17.i = icmp eq i64 %.0.in.in.i.i, 0
  br i1 %.not17.i, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 2 uses
  %i.r = icmp eq i64 %.0.in.in.i.i, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.0.in.in.i.i, 4294967294
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.01316.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ac, %bb.b ] ; 3 uses
  %.01415.i = phi i32 [ 0, %.lr.ph.i.new ], [ %spec.select.i.1, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %sext.i.i = shl i64 %.01316.i, 32
  %i.s = ashr exact i64 %sext.i.i, 29
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 %i.s
  %i.u = load atomic volatile i64, ptr %i.t monotonic, align 8
  %i.v = load i64, ptr %i.q, align 8              ; 2 uses
  %.not.i = icmp ne i64 %i.u, %i.v
  %i.w = zext i1 %.not.i to i32
  %spec.select.i = add i32 %.01415.i, %i.w
  %i.x = shl i64 %.01316.i, 32
  %sext.i.i.1 = ashr exact i64 %i.x, 29
  %i.y = getelementptr i8, ptr %i.p, i64 %sext.i.i.1
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %i.aa = load atomic volatile i64, ptr %i.z monotonic, align 8
  %.not.i.1 = icmp ne i64 %i.aa, %i.v
  %i.ab = zext i1 %.not.i.1 to i32
  %spec.select.i.1 = add i32 %spec.select.i, %i.ab ; 3 uses
  %i.ac = add nuw nsw i64 %.01316.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !3541

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %i.ad = and i64 %.0.in.in.in.i.i.fr, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.ad, 0
  br i1 %lcmp.mod.not, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.01316.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ac, %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa ]
  %.01415.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %spec.select.i.1, %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod6 = trunc i64 %.0.in.in.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod6)
  %sext.i.i.epil = shl i64 %.01316.i.epil.init, 32
  %i.ae = ashr exact i64 %sext.i.i.epil, 29
  %i.af = getelementptr inbounds i8, ptr %i.p, i64 %i.ae
  %i.ag = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.ah = load i64, ptr %i.q, align 8
  %.not.i.epil = icmp ne i64 %i.ag, %i.ah
  %i.ai = zext i1 %.not.i.epil to i32
  %spec.select.i.epil = add i32 %.01415.i.epil.init, %i.ai
  br label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit: ; preds = %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa, %.epil.preheader
  %spec.select.i.lcssa = phi i32 [ %spec.select.i.1, %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa ], [ %spec.select.i.epil, %.epil.preheader ]
  %i.aj = zext i32 %spec.select.i.lcssa to i64
  br label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit, %bb.a
  %.014.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.aj, %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit ]
  ret i64 %.014.lcssa.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE9SetLengthEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 8 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i, align 8
  %i.n = load i64, ptr %2, align 8                ; 3 uses
  %i.o = add i64 %i.n, 23
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8              ; 4 uses
  %i.r = and i64 %i.q, 1
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.c, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.t = icmp sgt i64 %i.q, -1
  br i1 %i.t, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread84.i, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i, !prof !107

_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread84.i: ; preds = %bb.c
  %i.u = lshr i64 %i.q, 32
  %i.v = trunc nuw nsw i64 %i.u to i32
  br label %bb.e

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i: ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.w = add nsw i64 %i.q, -1
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = load atomic volatile i64, ptr %i.x monotonic, align 8
  %i.z = add i64 %i.y, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = icmp eq i16 %i.ab, 130
  br i1 %i.ac, label %bb.d, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i, !prof !107

bb.d:                                             ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.ad, align 8 ; 2 uses
  %i.ae = fadd double %.0.copyload.i.i.i.i.i.i.i, f0x4330000000000000
  %i.af = bitcast double %i.ae to i64             ; 2 uses
  %.mask.i.i.i.i = and i64 %i.af, -4294967296
  %i.ag = icmp eq i64 %.mask.i.i.i.i, 4841369599423283200
  br i1 %i.ag, label %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i, !prof !107

_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i: ; preds = %bb.d
  %i.ah = trunc i64 %i.af to i32                  ; 3 uses
  %i.ai = uitofp i32 %i.ah to double
  %i.aj = fcmp oeq double %.0.copyload.i.i.i.i.i.i.i, %i.ai
  %i.ak = icmp ne i32 %i.ah, -1
  %or.cond.i = and i1 %i.ak, %i.aj
  br i1 %or.cond.i, label %bb.e, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i, !prof !3326

_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i: ; preds = %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i, %bb.d, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.26) #24
  unreachable

bb.e:                                             ; preds = %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i, %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread84.i
  %.086.i = phi i32 [ %i.v, %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread84.i ], [ %i.ah, %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i ] ; 2 uses
  %i.al = icmp eq i32 %3, %.086.i
  br i1 %i.al, label %_ZN2v88internal12_GLOBAL__N_139FastNonextensibleObjectElementsAccessorINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE13SetLengthImplEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEjNSA_INS0_14FixedArrayBaseEEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = icmp eq i32 %.086.i, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1856
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ao = add i64 %i.n, -1
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load atomic volatile i64, ptr %i.ap monotonic, align 8
  %i.ar = add i64 %i.aq, 14
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load i8, ptr %i.as, align 1
  %i.au = lshr i8 %i.at, 2
  %i.av = load ptr, ptr @_ZN2v88internal16ElementsAccessor19elements_accessors_E, align 8
  %i.aw = zext nneg i8 %i.au to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 208
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = tail call ptr %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull %1, ptr nonnull %2) #23, !inline_history !3542
  %.pre.i = load i64, ptr %2, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bd = phi i64 [ %i.n, %bb.g ], [ %.pre.i, %bb.h ]
  %.sroa.036.0.i = phi ptr [ %i.an, %bb.g ], [ %i.bc, %bb.h ] ; 2 uses
  %i.be = add i64 %i.bd, -1
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = load atomic volatile i64, ptr %i.bf monotonic, align 8
  %i.bh = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.bi = load ptr, ptr %i.g, align 8
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %bb.j, label %_ZN2v88internal13direct_handleINS0_3MapEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i, !prof !5

bb.j:                                             ; preds = %bb.i
  %i.bk = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal13direct_handleINS0_3MapEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i

_ZN2v88internal13direct_handleINS0_3MapEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.bk, %bb.j ], [ %i.bh, %bb.i ] ; 3 uses
  %i.bl = ptrtoint ptr %.0.i.i.i.i to i64
  %i.bm = add i64 %i.bl, 8
  %i.bn = inttoptr i64 %i.bm to ptr
  store ptr %i.bn, ptr %i.e, align 8
  store i64 %i.bg, ptr %.0.i.i.i.i, align 8
  %i.bo = tail call ptr @_ZN2v88internal3Map4CopyEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKcNS0_18TransitionKindFlagE(ptr noundef nonnull %1, ptr nonnull %.0.i.i.i.i, ptr noundef nonnull @.str.29, i32 noundef 3) #23 ; 3 uses
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = add i64 %i.bp, 15
  %i.br = inttoptr i64 %i.bq to ptr               ; 2 uses
  %i.bs = load atomic volatile i32, ptr %i.br monotonic, align 4
  %i.bt = and i32 %i.bs, -134217729
  store atomic volatile i32 %i.bt, ptr %i.br monotonic, align 4
  %i.bu = load i64, ptr %i.bo, align 8
  %i.bv = add i64 %i.bu, 14
  %i.bw = inttoptr i64 %i.bv to ptr               ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = and i8 %i.bx, 3
  %i.bz = or disjoint i8 %i.by, 52
  store i8 %i.bz, ptr %i.bw, align 1
  tail call void @_ZN2v88internal8JSObject12MigrateToMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEEi(ptr noundef nonnull %1, ptr nonnull %2, ptr nonnull %i.bo, i32 noundef 0) #23
  %i.ca = icmp eq ptr %.sroa.036.0.i, null
  br i1 %i.ca, label %_ZN2v88internal8JSObject12set_elementsENS0_6TaggedINS0_14FixedArrayBaseEEENS0_16WriteBarrierModeE.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal13direct_handleINS0_3MapEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i
  %i.cb = load i64, ptr %2, align 8               ; 4 uses
  %i.cc = load i64, ptr %.sroa.036.0.i, align 8   ; 5 uses
  %i.cd = add i64 %i.cb, 15                       ; 3 uses
  %i.ce = inttoptr i64 %i.cd to ptr
  store atomic volatile i64 %i.cc, ptr %i.ce monotonic, align 8
  %i.cf = trunc i64 %i.cc to i1
  br i1 %i.cf, label %bb.l, label %_ZN2v88internal8JSObject12set_elementsENS0_6TaggedINS0_14FixedArrayBaseEEENS0_16WriteBarrierModeE.exit.i

bb.l:                                             ; preds = %bb.k
  %i.cg = and i64 %i.cb, -262144
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = load i64, ptr %i.ch, align 262144       ; 2 uses
  %i.cj = and i64 %i.ci, 32
  %.not.i.i.i.i = icmp eq i64 %i.cj, 0
  %i.ck = and i64 %i.ci, 25
  %.not37.i.i.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not37.i.i.i.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cl = and i64 %i.cc, -262144
  %i.cm = inttoptr i64 %i.cl to ptr
  %.sroa.0.0.copyload.i.i.i.i.i41.i = load i64, ptr %i.cm, align 262144
  %i.cn = and i64 %.sroa.0.0.copyload.i.i.i.i.i41.i, 25
  %.not38.i.i.i.i = icmp eq i64 %i.cn, 0
  br i1 %.not38.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.cb, i64 noundef %i.cd, i64 %i.cc) #23
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  br i1 %.not.i.i.i.i, label %_ZN2v88internal8JSObject12set_elementsENS0_6TaggedINS0_14FixedArrayBaseEEENS0_16WriteBarrierModeE.exit.i, label %bb.p, !prof !13

bb.p:                                             ; preds = %bb.o
end_hunk_12
begin_hunk_13_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE22CollectValuesOrEntriesEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE:bb.a

bb.g:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i
  %i.bf = or disjoint i64 %i.ax, 1                ; 2 uses
  %i.bg = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bh = and i64 %i.ax, -262144
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load i64, ptr %i.bi, align 262144       ; 2 uses
  %i.bk = and i64 %i.bj, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bk, 0
  %i.bl = and i64 %i.bj, 25
  %.not37.i.i.i.i.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not37.i.i.i.i.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bm = and i64 %i.ba, -262144
  %i.bn = inttoptr i64 %i.bm to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.bn, align 262144
  %i.bo = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.bf, i64 noundef %i.bg, i64 %i.ba) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i, label %bb.k, !prof !13

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.bf, i64 %i.bg, i64 %i.ba) #23
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i: ; preds = %bb.k, %bb.j, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i, %bb.d
  %.1.i = phi i32 [ %.098.i, %bb.d ], [ %i.az, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i ], [ %i.az, %bb.j ], [ %i.az, %bb.k ] ; 2 uses
  %indvars.iv.next106.i = add nuw nsw i64 %indvars.iv105.i, 1 ; 2 uses
  %exitcond109.not.i = icmp eq i64 %indvars.iv.next106.i, %i.r
  br i1 %exitcond109.not.i, label %_ZN2v88internal12_GLOBAL__N_131FastSmiOrObjectElementsAccessorINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE26CollectValuesOrEntriesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE.exit, label %bb.d, !llvm.loop !3544

bb.l:                                             ; preds = %bb.a
  %i.bp = add i64 %i.d, -1
  %i.bq = inttoptr i64 %i.bp to ptr               ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = lshr i64 %i.bs, 32                      ; 2 uses
  %.not101.i = icmp eq i64 %i.bt, 0
  br i1 %.not101.i, label %_ZN2v88internal12_GLOBAL__N_131FastSmiOrObjectElementsAccessorINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE26CollectValuesOrEntriesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 656
  br label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i ] ; 2 uses
  %.296.i = phi i32 [ 0, %.lr.ph.i ], [ %.3.i, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i ] ; 3 uses
  %sext.i46.i = shl nuw i64 %indvars.iv.i, 32
  %i.bw = ashr exact i64 %sext.i46.i, 29
  %i.bx = getelementptr inbounds i8, ptr %i.bu, i64 %i.bw ; 2 uses
  %i.by = load atomic volatile i64, ptr %i.bx monotonic, align 8
  %i.bz = load i64, ptr %i.bv, align 8
  %.not.i = icmp eq i64 %i.by, %i.bz
  br i1 %.not.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = load atomic volatile i64, ptr %i.bx monotonic, align 8 ; 5 uses
  %i.cb = load i64, ptr %3, align 8
  %i.cc = add i64 %i.cb, -1                       ; 3 uses
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = add nsw i32 %.296.i, 1                  ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cg = sext i32 %.296.i to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.cg ; 2 uses
  store atomic volatile i64 %i.ca, ptr %i.ch monotonic, align 8
  %i.ci = trunc i64 %i.ca to i1
  br i1 %i.ci, label %bb.o, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i

bb.o:                                             ; preds = %bb.n
  %i.cj = or disjoint i64 %i.cc, 1                ; 2 uses
  %i.ck = ptrtoint ptr %i.ch to i64               ; 2 uses
  %i.cl = and i64 %i.cc, -262144
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = load i64, ptr %i.cm, align 262144       ; 2 uses
  %i.co = and i64 %i.cn, 32
  %.not.i.i.i.i.i48.i = icmp eq i64 %i.co, 0
  %i.cp = and i64 %i.cn, 25
  %.not37.i.i.i.i.i49.i = icmp eq i64 %i.cp, 0
  br i1 %.not37.i.i.i.i.i49.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cq = and i64 %i.ca, -262144
  %i.cr = inttoptr i64 %i.cq to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i50.i = load i64, ptr %i.cr, align 262144
  %i.cs = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i50.i, 25
  %.not38.i.i.i.i.i51.i = icmp eq i64 %i.cs, 0
  br i1 %.not38.i.i.i.i.i51.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.cj, i64 noundef %i.ck, i64 %i.ca) #23
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  br i1 %.not.i.i.i.i.i48.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i, label %bb.s, !prof !13

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.cj, i64 %i.ck, i64 %i.ca) #23
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i: ; preds = %bb.s, %bb.r, %bb.n, %bb.m
  %.3.i = phi i32 [ %.296.i, %bb.m ], [ %i.ce, %bb.n ], [ %i.ce, %bb.r ], [ %i.ce, %bb.s ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.bt
  br i1 %exitcond.not.i, label %_ZN2v88internal12_GLOBAL__N_131FastSmiOrObjectElementsAccessorINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE26CollectValuesOrEntriesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE.exit, label %bb.m, !llvm.loop !3545

_ZN2v88internal12_GLOBAL__N_131FastSmiOrObjectElementsAccessorINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE26CollectValuesOrEntriesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE.exit: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %bb.l
  %.4.i = phi i32 [ %.1.i, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i ], [ 0, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ 0, %bb.l ], [ %.3.i, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i ]
  store i32 %.4.i, ptr %5, align 4
  ret i16 257
}

; Function Attrs: mustprogress nounwind uwtable
define internal ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE21PrependElementIndicesEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %2, ptr nofree readonly captures(none) %3, ptr nofree readonly captures(none) %4, i32 noundef %5, i32 %6) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %4, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = lshr i64 %i.e, 32                        ; 3 uses
  %i.g = trunc nuw i64 %i.f to i32                ; 3 uses
  %i.h = load i64, ptr %2, align 8                ; 2 uses
  %i.i = load i64, ptr %3, align 8
  %i.j = add i64 %i.h, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.m = add i64 %i.l, 11
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i16, ptr %i.n monotonic, align 2
  %i.p = icmp eq i16 %i.o, 2119
  %i.q = add i64 %i.h, 23
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = add i64 %i.i, -1
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.0.in.in.in.in.i.i.i = select i1 %i.p, ptr %i.r, ptr %i.u
  %.0.in.in.in.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i, align 8
  %.0.in.in.i.i.i = lshr i64 %.0.in.in.in.i.i.i, 32 ; 2 uses
  %i.v = sub nsw i64 134217728, %i.f
  %i.w = and i64 %i.v, 4294967295
  %i.x = icmp samesign ugt i64 %.0.in.in.i.i.i, %i.w
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = tail call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef 238, ptr null, i64 0) #23
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %1, i64 %i.z, ptr noundef null) #23 ; 0 uses
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit

bb.c:                                             ; preds = %bb.a
  %i.ab = add nuw nsw i64 %.0.in.in.i.i.i, %i.f
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = tail call ptr @_ZN2v88internal7Factory16TryNewFixedArrayEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.ac, i8 noundef zeroext 0) #23 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i, label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i

_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i: ; preds = %bb.c
  %i.af = load i64, ptr %2, align 8               ; 2 uses
  %i.ag = load i64, ptr %3, align 8
  %i.ah = add i64 %i.af, -1
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i64, ptr %i.ai monotonic, align 8
  %i.ak = add i64 %i.aj, 11
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i16, ptr %i.al monotonic, align 2
  %i.an = icmp eq i16 %i.am, 2119
  %i.ao = add i64 %i.af, 23
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = add i64 %i.ag, -1
  %i.ar = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.0.in.in.in.in.i.i53.i = select i1 %i.an, ptr %i.ap, ptr %i.as
  %.0.in.in.in.i.i54.i = load i64, ptr %.0.in.in.in.in.i.i53.i, align 8
  %.0.in.in.in.i.i54.i.fr = freeze i64 %.0.in.in.in.i.i54.i ; 2 uses
  %.0.in.in.i.i55.i = lshr i64 %.0.in.in.in.i.i54.i.fr, 32 ; 4 uses
  %.not17.i.i = icmp eq i64 %.0.in.in.i.i55.i, 0
  br i1 %.not17.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 2 uses
  %i.av = icmp eq i64 %.0.in.in.i.i55.i, 1
  br i1 %i.av, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.0.in.in.i.i55.i, 4294967294
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.new
  %.01316.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.bg, %bb.d ] ; 3 uses
  %.01415.i.i = phi i32 [ 0, %.lr.ph.i.i.new ], [ %spec.select.i.i.1, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.d ]
  %sext.i.i.i = shl i64 %.01316.i.i, 32
  %i.aw = ashr exact i64 %sext.i.i.i, 29
  %i.ax = getelementptr inbounds i8, ptr %i.at, i64 %i.aw
  %i.ay = load atomic volatile i64, ptr %i.ax monotonic, align 8
  %i.az = load i64, ptr %i.au, align 8            ; 2 uses
  %.not.i.i = icmp ne i64 %i.ay, %i.az
  %i.ba = zext i1 %.not.i.i to i32
  %spec.select.i.i = add i32 %.01415.i.i, %i.ba
  %i.bb = shl i64 %.01316.i.i, 32
  %sext.i.i.i.1 = ashr exact i64 %i.bb, 29
  %i.bc = getelementptr i8, ptr %i.at, i64 %sext.i.i.i.1
  %i.bd = getelementptr i8, ptr %i.bc, i64 8
  %i.be = load atomic volatile i64, ptr %i.bd monotonic, align 8
  %.not.i.i.1 = icmp ne i64 %i.be, %i.az
  %i.bf = zext i1 %.not.i.i.1 to i32
  %spec.select.i.i.1 = add i32 %spec.select.i.i, %i.bf ; 3 uses
  %i.bg = add nuw nsw i64 %.01316.i.i, 2          ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !3541

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %bb.d
  %i.bh = and i64 %.0.in.in.in.i.i54.i.fr, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.bh, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %.01316.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bg, %.loopexit.i.loopexit.unr-lcssa ]
  %.01415.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.1, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod18 = trunc i64 %.0.in.in.i.i55.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod18)
  %sext.i.i.i.epil = shl i64 %.01316.i.i.epil.init, 32
  %i.bi = ashr exact i64 %sext.i.i.i.epil, 29
  %i.bj = getelementptr inbounds i8, ptr %i.at, i64 %i.bi
  %i.bk = load atomic volatile i64, ptr %i.bj monotonic, align 8
  %i.bl = load i64, ptr %i.au, align 8
  %.not.i.i.epil = icmp ne i64 %i.bk, %i.bl
  %i.bm = zext i1 %.not.i.i.epil to i32
  %spec.select.i.i.epil = add i32 %.01415.i.i.epil.init, %i.bm
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i
  %.014.lcssa.i.i = phi i32 [ 0, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i ], [ %spec.select.i.i.1, %.loopexit.i.loopexit.unr-lcssa ], [ %spec.select.i.i.epil, %.epil.preheader ]
  %i.bn = add i32 %.014.lcssa.i.i, %i.g
  %i.bo = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.bn, i8 noundef zeroext 0, i8 0) #23
  br label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i

_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i: ; preds = %.loopexit.i, %bb.c
  %.sroa.072.0.i = phi ptr [ %i.bo, %.loopexit.i ], [ %i.ad, %bb.c ] ; 4 uses
  %i.bp = load i64, ptr %2, align 8               ; 2 uses
  %i.bq = load i64, ptr %3, align 8
  %i.br = add i64 %i.bp, -1
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = load atomic volatile i64, ptr %i.bs monotonic, align 8
  %i.bu = add i64 %i.bt, 11
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load atomic volatile i16, ptr %i.bv monotonic, align 2
  %i.bx = icmp eq i16 %i.bw, 2119
  %i.by = add i64 %i.bp, 23
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = add i64 %i.bq, -1
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.0.in.in.in.in.i.i56.i = select i1 %i.bx, ptr %i.bz, ptr %i.cc
  %.0.in.in.in.i.i57.i = load i64, ptr %.0.in.in.in.in.i.i56.i, align 8
  %.0.in.in.i.i58.i = lshr i64 %.0.in.in.in.i.i57.i, 32 ; 3 uses
  %.not.i59.i = icmp eq i64 %.0.in.in.i.i58.i, 0
  br i1 %.not.i59.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i, label %.lr.ph.i60.i

.lr.ph.i60.i:                                     ; preds = %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 2 uses
  %i.ce = icmp eq i32 %5, 0
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 568
  br i1 %i.ce, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i60.i, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i
  %.055.us.i.i = phi i32 [ %.1.us.i.i, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i ], [ 0, %.lr.ph.i60.i ] ; 4 uses
  %.02652.us.i.i = phi i64 [ %i.dx, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i ], [ 0, %.lr.ph.i60.i ] ; 5 uses
  %i.ch = load i64, ptr %2, align 8               ; 2 uses
  %i.ci = load i64, ptr %3, align 8
  %i.cj = add i64 %i.ch, -1
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = load atomic volatile i64, ptr %i.ck monotonic, align 8
  %i.cm = add i64 %i.cl, 11
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = load atomic volatile i16, ptr %i.cn monotonic, align 2
  %i.cp = icmp eq i16 %i.co, 2119
  %i.cq = add i64 %i.ch, 23
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = add i64 %i.ci, -1
  %i.ct = inttoptr i64 %i.cs to ptr               ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.0.in.in.in.in.i.i.i.us.i.i = select i1 %i.cp, ptr %i.cr, ptr %i.cu
  %.0.in.in.in.i.i.i.us.i.i = load i64, ptr %.0.in.in.in.in.i.i.i.us.i.i, align 8
  %.0.in.in.i.i.i.us.i.i = lshr i64 %.0.in.in.in.i.i.i.us.i.i, 32
  %i.cv = icmp samesign ult i64 %.02652.us.i.i, %.0.in.in.i.i.i.us.i.i
  br i1 %i.cv, label %bb.e, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i

bb.e:                                             ; preds = %.lr.ph.split.us.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %sext.i.i.us.i.i = shl nuw i64 %.02652.us.i.i, 32
  %i.cx = ashr exact i64 %sext.i.i.us.i.i, 29
  %i.cy = getelementptr inbounds i8, ptr %i.cw, i64 %i.cx
  %i.cz = load atomic volatile i64, ptr %i.cy monotonic, align 8
  %i.da = load i64, ptr %i.cd, align 8
  %i.db = icmp eq i64 %i.cz, %i.da
  br i1 %i.db, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dc = icmp samesign ult i64 %.02652.us.i.i, 67108864
  %i.dd = tail call ptr @_ZN2v88internal7Factory12SizeToStringEmb(ptr noundef nonnull align 1 dereferenceable(1) %1, i64 noundef %.02652.us.i.i, i1 noundef zeroext %i.dc) #23
  %i.de = load i64, ptr %.sroa.072.0.i, align 8
  %i.df = add i64 %i.de, -1                       ; 3 uses
  %i.dg = inttoptr i64 %i.df to ptr
  %i.dh = load i64, ptr %i.dd, align 8            ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dj = sext i32 %.055.us.i.i to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dj ; 2 uses
  store atomic volatile i64 %i.dh, ptr %i.dk monotonic, align 8
  %i.dl = trunc i64 %i.dh to i1
  br i1 %i.dl, label %bb.g, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us.i.i

bb.g:                                             ; preds = %bb.f
  %i.dm = or disjoint i64 %i.df, 1                ; 2 uses
  %i.dn = ptrtoint ptr %i.dk to i64               ; 2 uses
  %i.do = and i64 %i.df, -262144
  %i.dp = inttoptr i64 %i.do to ptr
  %i.dq = load i64, ptr %i.dp, align 262144       ; 2 uses
  %i.dr = and i64 %i.dq, 32
  %.not.i.i.i.i.i.us.i.i = icmp eq i64 %i.dr, 0
  %i.ds = and i64 %i.dq, 25
  %.not37.i.i.i.i.i.us.i.i = icmp eq i64 %i.ds, 0
  br i1 %.not37.i.i.i.i.i.us.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.dt = and i64 %i.dh, -262144
  %i.du = inttoptr i64 %i.dt to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.us.i.i = load i64, ptr %i.du, align 262144
  %i.dv = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.us.i.i, 25
  %.not38.i.i.i.i.i.us.i.i = icmp eq i64 %i.dv, 0
  br i1 %.not38.i.i.i.i.i.us.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.dm, i64 noundef %i.dn, i64 %i.dh) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  br i1 %.not.i.i.i.i.i.us.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us.i.i, label %bb.k, !prof !13

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.dm, i64 %i.dn, i64 %i.dh) #23
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us.i.i

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us.i.i: ; preds = %bb.k, %bb.j, %bb.f
  %i.dw = add i32 %.055.us.i.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us.i.i, %bb.e, %.lr.ph.split.us.i.i
  %.1.us.i.i = phi i32 [ %i.dw, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us.i.i ], [ %.055.us.i.i, %.lr.ph.split.us.i.i ], [ %.055.us.i.i, %bb.e ] ; 2 uses
  %i.dx = add nuw nsw i64 %.02652.us.i.i, 1       ; 2 uses
  %exitcond57.not.i.i = icmp eq i64 %i.dx, %.0.in.in.i.i58.i
  br i1 %exitcond57.not.i.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i, label %.lr.ph.split.us.i.i, !llvm.loop !3546

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i60.i, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i
  %.055.i.i = phi i32 [ %.1.i.i, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i ], [ 0, %.lr.ph.i60.i ] ; 4 uses
  %.02652.i.i = phi i64 [ %i.ga, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i ], [ 0, %.lr.ph.i60.i ] ; 5 uses
  %i.dy = load i64, ptr %2, align 8               ; 2 uses
  %i.dz = load i64, ptr %3, align 8
  %i.ea = add i64 %i.dy, -1
  %i.eb = inttoptr i64 %i.ea to ptr
  %i.ec = load atomic volatile i64, ptr %i.eb monotonic, align 8
  %i.ed = add i64 %i.ec, 11
  %i.ee = inttoptr i64 %i.ed to ptr
  %i.ef = load atomic volatile i16, ptr %i.ee monotonic, align 2
  %i.eg = icmp eq i16 %i.ef, 2119
  %i.eh = add i64 %i.dy, 23
  %i.ei = inttoptr i64 %i.eh to ptr
  %i.ej = add i64 %i.dz, -1
  %i.ek = inttoptr i64 %i.ej to ptr               ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %.0.in.in.in.in.i.i.i.i.i = select i1 %i.eg, ptr %i.ei, ptr %i.el
  %.0.in.in.in.i.i.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i.i.i, align 8
  %.0.in.in.i.i.i.i.i = lshr i64 %.0.in.in.in.i.i.i.i.i, 32
  %i.em = icmp samesign ult i64 %.02652.i.i, %.0.in.in.i.i.i.i.i
  br i1 %i.em, label %bb.l, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i

bb.l:                                             ; preds = %.lr.ph.split.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %sext.i.i.i.i = shl nuw i64 %.02652.i.i, 32     ; 3 uses
  %i.eo = ashr exact i64 %sext.i.i.i.i, 29
  %i.ep = getelementptr inbounds i8, ptr %i.en, i64 %i.eo
  %i.eq = load atomic volatile i64, ptr %i.ep monotonic, align 8
  %i.er = load i64, ptr %i.cd, align 8
  %i.es = icmp eq i64 %i.eq, %i.er
  br i1 %i.es, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.et = icmp samesign ult i64 %.02652.i.i, 2147483648
  br i1 %i.et, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.eu = load ptr, ptr %i.cf, align 8            ; 2 uses
  %i.ev = load ptr, ptr %i.cg, align 8
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %bb.o, label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i, !prof !5

bb.o:                                             ; preds = %bb.n
  %i.ex = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %1) #23
  br label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i

_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i = phi ptr [ %i.ex, %bb.o ], [ %i.eu, %bb.n ] ; 2 uses
  %i.ey = ptrtoint ptr %.0.i.i.i.i.i.i to i64
  %i.ez = add i64 %i.ey, 8
  %i.fa = inttoptr i64 %i.ez to ptr
  store ptr %i.fa, ptr %i.cf, align 8
  store i64 %sext.i.i.i.i, ptr %.0.i.i.i.i.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i

bb.p:                                             ; preds = %bb.m
  %i.fb = uitofp nneg i64 %.02652.i.i to double
  %i.fc = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #23 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = add i64 %i.fd, -1
  %i.ff = inttoptr i64 %i.fe to ptr
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store double %i.fb, ptr %i.fg, align 1
  %.pre.i.i = load i64, ptr %i.fc, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i

_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i: ; preds = %bb.p, %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i
  %i.fh = phi i64 [ %sext.i.i.i.i, %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i ], [ %.pre.i.i, %bb.p ] ; 5 uses
  %i.fi = load i64, ptr %.sroa.072.0.i, align 8
  %i.fj = add i64 %i.fi, -1                       ; 3 uses
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = sext i32 %.055.i.i to i64
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.fm ; 2 uses
  store atomic volatile i64 %i.fh, ptr %i.fn monotonic, align 8
  %i.fo = trunc i64 %i.fh to i1
  br i1 %i.fo, label %bb.q, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i

bb.q:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i
  %i.fp = or disjoint i64 %i.fj, 1                ; 2 uses
  %i.fq = ptrtoint ptr %i.fn to i64               ; 2 uses
  %i.fr = and i64 %i.fj, -262144
  %i.fs = inttoptr i64 %i.fr to ptr
  %i.ft = load i64, ptr %i.fs, align 262144       ; 2 uses
  %i.fu = and i64 %i.ft, 32
  %.not.i.i.i.i.i27.i.i = icmp eq i64 %i.fu, 0
  %i.fv = and i64 %i.ft, 25
  %.not37.i.i.i.i.i28.i.i = icmp eq i64 %i.fv, 0
  br i1 %.not37.i.i.i.i.i28.i.i, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.fw = and i64 %i.fh, -262144
  %i.fx = inttoptr i64 %i.fw to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i29.i.i = load i64, ptr %i.fx, align 262144
  %i.fy = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i29.i.i, 25
  %.not38.i.i.i.i.i30.i.i = icmp eq i64 %i.fy, 0
  br i1 %.not38.i.i.i.i.i30.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.fp, i64 noundef %i.fq, i64 %i.fh) #23
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  br i1 %.not.i.i.i.i.i27.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i, label %bb.u, !prof !13

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.fp, i64 %i.fq, i64 %i.fh) #23
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i: ; preds = %bb.u, %bb.t, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i
  %i.fz = add i32 %.055.i.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i, %bb.l, %.lr.ph.split.i.i
  %.1.i.i = phi i32 [ %i.fz, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i ], [ %.055.i.i, %.lr.ph.split.i.i ], [ %.055.i.i, %bb.l ] ; 2 uses
  %i.ga = add nuw nsw i64 %.02652.i.i, 1          ; 2 uses
  %exitcond.not.i61.i = icmp eq i64 %i.ga, %.0.in.in.i.i58.i
  br i1 %exitcond.not.i61.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i, label %.lr.ph.split.i.i, !llvm.loop !3546

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i: ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i
  %.0.lcssa.i.i = phi i32 [ 0, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i ], [ %.1.us.i.i, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i ], [ %.1.i.i, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i ] ; 4 uses
  %i.gb = load i64, ptr %4, align 8               ; 2 uses
  %i.gc = load i64, ptr %.sroa.072.0.i, align 8   ; 3 uses
  %i.gd = icmp slt i64 %i.e, 0
  br i1 %i.gd, label %bb.v, label %bb.x

bb.v:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i
  %i.ge = add i64 %i.gb, -1
  %i.gf = inttoptr i64 %i.ge to ptr
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load i64, ptr %i.gg, align 8
  %i.gi = lshr i64 %i.gh, 32
  %i.gj = trunc nuw i64 %i.gi to i32
  %i.gk = add i64 %i.gc, -1
  %i.gl = inttoptr i64 %i.gk to ptr               ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = load i64, ptr %i.gm, align 8
  %i.go = lshr i64 %i.gn, 32
  %i.gp = trunc nuw i64 %i.go to i32              ; 2 uses
  %i.gq = sub i32 %i.gp, %.0.lcssa.i.i
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %i.gq, i32 %i.gj) ; 3 uses
  %i.gr = add i32 %.sroa.speculated.i.i, %.0.lcssa.i.i ; 2 uses
  %i.gs = sub nsw i32 %i.gp, %i.gr                ; 2 uses
  %i.gt = icmp sgt i32 %i.gs, 0
  br i1 %i.gt, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gv = sext i32 %i.gr to i64
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.gu, i64 %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.gy = load i64, ptr %i.gx, align 8
  %i.gz = zext nneg i32 %i.gs to i64
  %i.ha = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.gy, i64 %i.gz, ptr nonnull %i.gw) #23, !srcloc !3333 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i
  %.0.i62.i = phi i32 [ %i.g, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i ], [ %.sroa.speculated.i.i, %bb.w ], [ %.sroa.speculated.i.i, %bb.v ] ; 2 uses
  %i.hb = icmp eq i32 %.0.i62.i, 0
  br i1 %i.hb, label %bb.y, label %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i

_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i: ; preds = %bb.x
  %i.hc = sext i32 %.0.lcssa.i.i to i64
  %i.hd = add i64 %i.gc, 15
  %.idx.i.i.i.i = shl nsw i64 %i.hc, 3
  %i.he = add i64 %i.hd, %.idx.i.i.i.i
  %i.hf = add i64 %i.gb, 15
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 55464
  tail call void @_ZN2v88internal4Heap9CopyRangeINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S7_iNS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(2992) %i.hg, i64 %i.gc, i64 %i.he, i64 %i.hf, i32 noundef %.0.i62.i, i32 noundef 4) #23
  br label %bb.y

bb.y:                                             ; preds = %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i, %bb.x
  %i.hh = add i32 %.0.lcssa.i.i, %i.g
  %i.hi = tail call ptr @_ZN2v88internal10FixedArray16RightTrimOrEmptyINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEES5_PNS0_7IsolateES5_i(ptr noundef nonnull %1, ptr nonnull %.sroa.072.0.i, i32 noundef %i.hh) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit: ; preds = %bb.b, %bb.y
  %.sroa.086.1.i = phi ptr [ null, %bb.b ], [ %i.hi, %bb.y ]
  ret ptr %.sroa.086.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE27AddElementsToKeyAccumulatorENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8                ; 5 uses
  %i.b = load i64, ptr %1, align 8
  %i.c = add i64 %i.b, 15
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 560 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
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
  %i.o = load i64, ptr %1, align 8                ; 2 uses
  %i.p = add i64 %i.o, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.s = add i64 %i.r, 11
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i16, ptr %i.t monotonic, align 2
  %i.v = icmp eq i16 %i.u, 2119
  %i.w = add i64 %i.o, 23
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = add i64 %i.e, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.0.in.in.in.in.i.i.i = select i1 %i.v, ptr %i.x, ptr %i.aa
  %.0.in.in.in.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i, align 8
  %.0.in.in.i.i.i = lshr i64 %.0.in.in.in.i.i.i, 32 ; 2 uses
  %.not45.i = icmp eq i64 %.0.in.in.i.i.i, 0
  br i1 %.not45.i, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i
  %.02246.i = phi i64 [ 0, %.lr.ph.i ], [ %i.at, %bb.f ] ; 2 uses
  %i.ac = load i64, ptr %.0.i.i.i, align 8
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %sext.i.i = shl i64 %.02246.i, 32
  %i.ag = ashr exact i64 %sext.i.i, 29
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag ; 2 uses
  %i.ai = load atomic volatile i64, ptr %i.ah monotonic, align 8
  %i.aj = load i64, ptr %i.ab, align 8
  %.not44.i = icmp eq i64 %i.ai, %i.aj
  br i1 %.not44.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = load atomic volatile i64, ptr %i.ah monotonic, align 8
  %i.al = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.am = load ptr, ptr %i.h, align 8
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.e, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i, !prof !5

bb.e:                                             ; preds = %bb.d
  %i.ao = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.a) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i26.i = phi ptr [ %i.ao, %bb.e ], [ %i.al, %bb.d ] ; 3 uses
  %i.ap = ptrtoint ptr %.0.i.i26.i to i64
  %i.aq = add i64 %i.ap, 8
  %i.ar = inttoptr i64 %i.aq to ptr
  store ptr %i.ar, ptr %i.f, align 8
  store i64 %i.ak, ptr %.0.i.i26.i, align 8
  %i.as = tail call noundef zeroext i1 @_ZN2v88internal14KeyAccumulator6AddKeyENS0_12DirectHandleINS0_6ObjectEEENS0_16AddKeyConversionE(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr nonnull %.0.i.i26.i, i32 noundef %3) #23
  br i1 %i.as, label %bb.f, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit

bb.f:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i, %bb.c
  %i.at = add nuw nsw i64 %.02246.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.at, %.0.in.in.i.i.i
  br i1 %exitcond.not.i, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit, label %bb.c, !llvm.loop !3547

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i, %bb.f, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.not.lcssa.i = phi i1 [ true, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ false, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i ], [ true, %bb.f ]
  ret i1 %.not.lcssa.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE22TransitionElementsKindEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_3MapEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr %2, ptr %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i.i, align 8
  %i.n = add i64 %i.d, 14
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i8, ptr %i.o, align 1               ; 3 uses
  %i.q = lshr i8 %i.p, 2                          ; 4 uses
  %i.r = load i64, ptr %3, align 8
  %i.s = add i64 %i.r, 14
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i8, ptr %i.t, align 1
  %i.v = lshr i8 %i.u, 2                          ; 3 uses
  %i.w = trunc i8 %i.q to i1
  %i.x = icmp ult i8 %i.p, 24
  %i.y = and i1 %i.x, %i.w
  br i1 %i.y, label %bb.c, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  switch i8 %i.v, label %bb.f [
    i8 0, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i
    i8 4, label %bb.d
    i8 2, label %bb.e
    i8 6, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  ]

bb.d:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.e:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.f:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.0.i = phi i8 [ %i.v, %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.v, %bb.f ], [ 5, %bb.d ], [ 3, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %.not.i = icmp eq i8 %i.q, %.0.i
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE26TransitionElementsKindImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_3MapEEE.exit, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i: ; preds = %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i, %bb.c
  %.0103.i = phi i8 [ %.0.i, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i ], [ 7, %bb.c ] ; 2 uses
  %i.z = load i64, ptr %2, align 8
  %i.aa = add i64 %i.z, 15
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ae = load ptr, ptr %i.g, align 8
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.g, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i, !prof !5

bb.g:                                             ; preds = %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  %i.ag = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i: ; preds = %bb.g, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  %.0.i.i38.i = phi ptr [ %i.ag, %bb.g ], [ %i.ad, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i ] ; 4 uses
  %i.ah = ptrtoint ptr %.0.i.i38.i to i64
  %i.ai = add i64 %i.ah, 8
  %i.aj = inttoptr i64 %i.ai to ptr
  store ptr %i.aj, ptr %i.e, align 8
  store i64 %i.ac, ptr %.0.i.i38.i, align 8
  %i.ak = load i64, ptr %2, align 8
  %i.al = add i64 %i.ak, 15
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 864
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = icmp eq i64 %i.an, %i.ap
  br i1 %i.aq, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i
  %i.ar = and i8 %i.p, -8
  %i.as = icmp eq i8 %i.ar, 16
  %i.at = and i8 %.0103.i, -2
  %i.au = icmp eq i8 %i.at, 4
  %i.av = xor i1 %i.as, %i.au
  br i1 %i.av, label %bb.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.h, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i
  tail call void @_ZN2v88internal8JSObject12MigrateToMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEEi(ptr noundef nonnull %1, ptr nonnull %2, ptr nonnull %3, i32 noundef 0) #23
  br label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

bb.i:                                             ; preds = %bb.h
  %i.aw = add i64 %i.an, -1
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = lshr i64 %i.az, 32
  %i.bb = trunc nuw i64 %i.ba to i32
  %i.bc = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE27ConvertElementsWithCapacityEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEES5_jjj(ptr noundef nonnull %1, ptr nonnull readonly %2, ptr nonnull readonly %.0.i.i38.i, i8 noundef zeroext %i.q, i32 noundef %i.bb, i32 noundef 0) ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.j, label %_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i, !prof !5

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.27) #24
  unreachable

_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i: ; preds = %bb.i
  tail call void @_ZN2v88internal8JSObject12MigrateToMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEEi(ptr noundef nonnull %1, ptr nonnull %2, ptr nonnull %3, i32 noundef 0) #23
  %i.be = load i64, ptr %2, align 8               ; 4 uses
  %i.bf = load i64, ptr %i.bc, align 8            ; 5 uses
  %i.bg = add i64 %i.be, 15                       ; 3 uses
  %i.bh = inttoptr i64 %i.bg to ptr
  store atomic volatile i64 %i.bf, ptr %i.bh monotonic, align 8
  %i.bi = trunc i64 %i.bf to i1
  br i1 %i.bi, label %bb.k, label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

bb.k:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i
  %i.bj = and i64 %i.be, -262144
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load i64, ptr %i.bk, align 262144       ; 2 uses
  %i.bm = and i64 %i.bl, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.bm, 0
  %i.bn = and i64 %i.bl, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not37.i.i.i.i.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bo = and i64 %i.bf, -262144
  %i.bp = inttoptr i64 %i.bo to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bp, align 262144
  %i.bq = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not38.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.be, i64 noundef %i.bg, i64 %i.bf) #23
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i, label %bb.o, !prof !13

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.be, i64 %i.bg, i64 %i.bf) #23
  br label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i: ; preds = %bb.o, %bb.n, %_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i, %.critedge.i
  %i.br = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1925), align 1, !range !16, !noundef !17
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.p, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_44FastHoleyNonextensibleObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE7EEEE26TransitionElementsKindImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_3MapEEE.exit
end_hunk_13
begin_hunk_14_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE8ValidateEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE:bb.a
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
  br i1 %i.l, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = add i64 %2, -1
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = add i64 %i.o, 11
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2
  %i.s = icmp eq i16 %i.r, 2119
  br i1 %i.s, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.u = add i64 %i.t, 11
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i16, ptr %i.v monotonic, align 2
  %i.x = icmp eq i16 %i.w, 2061
  br i1 %i.x, label %bb.d, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit

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
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit: ; preds = %bb.a, %bb.b, %bb.c, %_ZNK2v88internal12JSTypedArray9GetLengthEv.exit.i
  ret void
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE10HasElementEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEjNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2, i32 noundef %3, i64 %4, i32 %5) unnamed_addr #10 align 2 {
bb.a:
  %i.a = zext i32 %3 to i64
  %i.b = add i64 %2, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 2119
  %i.i = add i64 %2, 23
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = add i64 %4, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.0.in.in.in.in.i.i.i = select i1 %i.h, ptr %i.j, ptr %i.m
  %.0.in.in.in.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i, align 8
  %.0.in.in.i.i.i = lshr i64 %.0.in.in.in.i.i.i, 32
  %i.n = icmp samesign ugt i64 %.0.in.in.i.i.i, %i.a
  ret i1 %i.n
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE8HasEntryEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENS0_13InternalIndexE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2, i64 %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = add i64 %2, 15
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %sext.i = shl i64 %3, 32
  %i.g = ashr exact i64 %sext.i, 29
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 %i.g
  %i.i = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp ne i64 %i.i, %i.k
  ret i1 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE3GetEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %2, i64 %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %sext.i.i = shl i64 %3, 32
  %i.h = ashr exact i64 %sext.i.i, 29
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE15GetInternalImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE15GetInternalImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE15GetInternalImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi ptr [ %i.p, %bb.b ], [ %i.l, %bb.a ] ; 3 uses
  %i.q = ptrtoint ptr %.0.i.i.i to i64
  %i.r = add i64 %i.q, 8
  %i.s = inttoptr i64 %i.r to ptr
  store ptr %i.s, ptr %i.k, align 8
  store i64 %i.j, ptr %.0.i.i.i, align 8
  ret ptr %.0.i.i.i
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE9GetAtomicEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE12HasAccessorsENS0_6TaggedINS0_8JSObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1) unnamed_addr #12 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef range(i64 0, 4294967296) i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE16NumberOfElementsEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2) unnamed_addr #10 align 2 {
bb.a:
  %i.a = add i64 %2, 15
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %2, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = icmp eq i16 %i.i, 2119
  %i.k = add i64 %2, 23
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = add i64 %i.c, -1
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.0.in.in.in.in.i.i = select i1 %i.j, ptr %i.l, ptr %i.o
  %.0.in.in.in.i.i = load i64, ptr %.0.in.in.in.in.i.i, align 8
  %.0.in.in.in.i.i.fr = freeze i64 %.0.in.in.in.i.i ; 2 uses
  %.0.in.in.i.i = lshr i64 %.0.in.in.in.i.i.fr, 32 ; 4 uses
  %.not17.i = icmp eq i64 %.0.in.in.i.i, 0
  br i1 %.not17.i, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 2 uses
  %i.r = icmp eq i64 %.0.in.in.i.i, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.0.in.in.i.i, 4294967294
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.01316.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ac, %bb.b ] ; 3 uses
  %.01415.i = phi i32 [ 0, %.lr.ph.i.new ], [ %spec.select.i.1, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %sext.i.i = shl i64 %.01316.i, 32
  %i.s = ashr exact i64 %sext.i.i, 29
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 %i.s
  %i.u = load atomic volatile i64, ptr %i.t monotonic, align 8
  %i.v = load i64, ptr %i.q, align 8              ; 2 uses
  %.not.i = icmp ne i64 %i.u, %i.v
  %i.w = zext i1 %.not.i to i32
  %spec.select.i = add i32 %.01415.i, %i.w
  %i.x = shl i64 %.01316.i, 32
  %sext.i.i.1 = ashr exact i64 %i.x, 29
  %i.y = getelementptr i8, ptr %i.p, i64 %sext.i.i.1
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %i.aa = load atomic volatile i64, ptr %i.z monotonic, align 8
  %.not.i.1 = icmp ne i64 %i.aa, %i.v
  %i.ab = zext i1 %.not.i.1 to i32
  %spec.select.i.1 = add i32 %spec.select.i, %i.ab ; 3 uses
  %i.ac = add nuw nsw i64 %.01316.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !3565

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %i.ad = and i64 %.0.in.in.in.i.i.fr, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.ad, 0
  br i1 %lcmp.mod.not, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.01316.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ac, %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa ]
  %.01415.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %spec.select.i.1, %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod6 = trunc i64 %.0.in.in.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod6)
  %sext.i.i.epil = shl i64 %.01316.i.epil.init, 32
  %i.ae = ashr exact i64 %sext.i.i.epil, 29
  %i.af = getelementptr inbounds i8, ptr %i.p, i64 %i.ae
  %i.ag = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.ah = load i64, ptr %i.q, align 8
  %.not.i.epil = icmp ne i64 %i.ag, %i.ah
  %i.ai = zext i1 %.not.i.epil to i32
  %spec.select.i.epil = add i32 %.01415.i.epil.init, %i.ai
  br label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit: ; preds = %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa, %.epil.preheader
  %spec.select.i.lcssa = phi i32 [ %spec.select.i.1, %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa ], [ %spec.select.i.epil, %.epil.preheader ]
  %i.aj = zext i32 %spec.select.i.lcssa to i64
  br label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit, %bb.a
  %.014.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.aj, %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit ]
  ret i64 %.014.lcssa.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE9SetLengthEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 8 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i, align 8
  %i.n = load i64, ptr %2, align 8                ; 3 uses
  %i.o = add i64 %i.n, 23
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8              ; 4 uses
  %i.r = and i64 %i.q, 1
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.c, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.t = icmp sgt i64 %i.q, -1
  br i1 %i.t, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread84.i, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i, !prof !107

_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread84.i: ; preds = %bb.c
  %i.u = lshr i64 %i.q, 32
  %i.v = trunc nuw nsw i64 %i.u to i32
  br label %bb.e

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i: ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.w = add nsw i64 %i.q, -1
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = load atomic volatile i64, ptr %i.x monotonic, align 8
  %i.z = add i64 %i.y, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = icmp eq i16 %i.ab, 130
  br i1 %i.ac, label %bb.d, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i, !prof !107

bb.d:                                             ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.ad, align 8 ; 2 uses
  %i.ae = fadd double %.0.copyload.i.i.i.i.i.i.i, f0x4330000000000000
  %i.af = bitcast double %i.ae to i64             ; 2 uses
  %.mask.i.i.i.i = and i64 %i.af, -4294967296
  %i.ag = icmp eq i64 %.mask.i.i.i.i, 4841369599423283200
  br i1 %i.ag, label %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i, !prof !107

_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i: ; preds = %bb.d
  %i.ah = trunc i64 %i.af to i32                  ; 3 uses
  %i.ai = uitofp i32 %i.ah to double
  %i.aj = fcmp oeq double %.0.copyload.i.i.i.i.i.i.i, %i.ai
  %i.ak = icmp ne i32 %i.ah, -1
  %or.cond.i = and i1 %i.ak, %i.aj
  br i1 %or.cond.i, label %bb.e, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i, !prof !3326

_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i: ; preds = %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i, %bb.d, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.26) #24
  unreachable

bb.e:                                             ; preds = %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i, %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread84.i
  %.086.i = phi i32 [ %i.v, %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread84.i ], [ %i.ah, %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i ] ; 2 uses
  %i.al = icmp eq i32 %3, %.086.i
  br i1 %i.al, label %_ZN2v88internal12_GLOBAL__N_132FastSealedObjectElementsAccessorINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE13SetLengthImplEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEjNSA_INS0_14FixedArrayBaseEEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = icmp eq i32 %.086.i, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1856
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ao = add i64 %i.n, -1
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load atomic volatile i64, ptr %i.ap monotonic, align 8
  %i.ar = add i64 %i.aq, 14
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load i8, ptr %i.as, align 1
  %i.au = lshr i8 %i.at, 2
  %i.av = load ptr, ptr @_ZN2v88internal16ElementsAccessor19elements_accessors_E, align 8
  %i.aw = zext nneg i8 %i.au to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 208
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = tail call ptr %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull %1, ptr nonnull %2) #23, !inline_history !3566
  %.pre.i = load i64, ptr %2, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bd = phi i64 [ %i.n, %bb.g ], [ %.pre.i, %bb.h ]
  %.sroa.036.0.i = phi ptr [ %i.an, %bb.g ], [ %i.bc, %bb.h ] ; 2 uses
  %i.be = add i64 %i.bd, -1
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = load atomic volatile i64, ptr %i.bf monotonic, align 8
  %i.bh = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.bi = load ptr, ptr %i.g, align 8
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %bb.j, label %_ZN2v88internal13direct_handleINS0_3MapEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i, !prof !5

bb.j:                                             ; preds = %bb.i
  %i.bk = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal13direct_handleINS0_3MapEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i

_ZN2v88internal13direct_handleINS0_3MapEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.bk, %bb.j ], [ %i.bh, %bb.i ] ; 3 uses
  %i.bl = ptrtoint ptr %.0.i.i.i.i to i64
  %i.bm = add i64 %i.bl, 8
  %i.bn = inttoptr i64 %i.bm to ptr
  store ptr %i.bn, ptr %i.e, align 8
  store i64 %i.bg, ptr %.0.i.i.i.i, align 8
  %i.bo = tail call ptr @_ZN2v88internal3Map4CopyEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKcNS0_18TransitionKindFlagE(ptr noundef nonnull %1, ptr nonnull %.0.i.i.i.i, ptr noundef nonnull @.str.29, i32 noundef 3) #23 ; 3 uses
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = add i64 %i.bp, 15
  %i.br = inttoptr i64 %i.bq to ptr               ; 2 uses
  %i.bs = load atomic volatile i32, ptr %i.br monotonic, align 4
  %i.bt = and i32 %i.bs, -134217729
  store atomic volatile i32 %i.bt, ptr %i.br monotonic, align 4
  %i.bu = load i64, ptr %i.bo, align 8
  %i.bv = add i64 %i.bu, 14
  %i.bw = inttoptr i64 %i.bv to ptr               ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = and i8 %i.bx, 3
  %i.bz = or disjoint i8 %i.by, 52
  store i8 %i.bz, ptr %i.bw, align 1
  tail call void @_ZN2v88internal8JSObject12MigrateToMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEEi(ptr noundef nonnull %1, ptr nonnull %2, ptr nonnull %i.bo, i32 noundef 0) #23
  %i.ca = icmp eq ptr %.sroa.036.0.i, null
  br i1 %i.ca, label %_ZN2v88internal8JSObject12set_elementsENS0_6TaggedINS0_14FixedArrayBaseEEENS0_16WriteBarrierModeE.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal13direct_handleINS0_3MapEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i
  %i.cb = load i64, ptr %2, align 8               ; 4 uses
  %i.cc = load i64, ptr %.sroa.036.0.i, align 8   ; 5 uses
  %i.cd = add i64 %i.cb, 15                       ; 3 uses
  %i.ce = inttoptr i64 %i.cd to ptr
  store atomic volatile i64 %i.cc, ptr %i.ce monotonic, align 8
  %i.cf = trunc i64 %i.cc to i1
  br i1 %i.cf, label %bb.l, label %_ZN2v88internal8JSObject12set_elementsENS0_6TaggedINS0_14FixedArrayBaseEEENS0_16WriteBarrierModeE.exit.i

bb.l:                                             ; preds = %bb.k
  %i.cg = and i64 %i.cb, -262144
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = load i64, ptr %i.ch, align 262144       ; 2 uses
  %i.cj = and i64 %i.ci, 32
  %.not.i.i.i.i = icmp eq i64 %i.cj, 0
  %i.ck = and i64 %i.ci, 25
  %.not37.i.i.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not37.i.i.i.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cl = and i64 %i.cc, -262144
  %i.cm = inttoptr i64 %i.cl to ptr
  %.sroa.0.0.copyload.i.i.i.i.i41.i = load i64, ptr %i.cm, align 262144
  %i.cn = and i64 %.sroa.0.0.copyload.i.i.i.i.i41.i, 25
  %.not38.i.i.i.i = icmp eq i64 %i.cn, 0
  br i1 %.not38.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.cb, i64 noundef %i.cd, i64 %i.cc) #23
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  br i1 %.not.i.i.i.i, label %_ZN2v88internal8JSObject12set_elementsENS0_6TaggedINS0_14FixedArrayBaseEEENS0_16WriteBarrierModeE.exit.i, label %bb.p, !prof !13

bb.p:                                             ; preds = %bb.o
end_hunk_14
begin_hunk_15_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE21PrependElementIndicesEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE:bb.a
bb.k:                                             ; preds = %.lr.ph.split.i.i
  %i.cx = icmp samesign ult i64 %.02651.i.i, 2147483648
  br i1 %i.cx, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cy = shl nuw nsw i64 %.02651.i.i, 32         ; 2 uses
  %i.cz = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.da = load ptr, ptr %i.aw, align 8
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %bb.m, label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i, !prof !5

bb.m:                                             ; preds = %bb.l
  %i.dc = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %1) #23
  br label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i

_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i = phi ptr [ %i.dc, %bb.m ], [ %i.cz, %bb.l ] ; 2 uses
  %i.dd = ptrtoint ptr %.0.i.i.i.i.i.i to i64
  %i.de = add i64 %i.dd, 8
  %i.df = inttoptr i64 %i.de to ptr
  store ptr %i.df, ptr %i.av, align 8
  store i64 %i.cy, ptr %.0.i.i.i.i.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i

bb.n:                                             ; preds = %bb.k
  %i.dg = uitofp nneg i64 %.02651.i.i to double
  %i.dh = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #23 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = add i64 %i.di, -1
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store double %i.dg, ptr %i.dl, align 1
  %.pre.i.i = load i64, ptr %i.dh, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i

_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i: ; preds = %bb.n, %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i
  %i.dm = phi i64 [ %i.cy, %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i ], [ %.pre.i.i, %bb.n ] ; 5 uses
  %i.dn = load i64, ptr %.sroa.072.0.i, align 8
  %i.do = add i64 %i.dn, -1                       ; 3 uses
  %i.dp = inttoptr i64 %i.do to ptr
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = sext i32 %.054.i.i to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.dr ; 2 uses
  store atomic volatile i64 %i.dm, ptr %i.ds monotonic, align 8
  %i.dt = trunc i64 %i.dm to i1
  br i1 %i.dt, label %bb.o, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i

bb.o:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i
  %i.du = or disjoint i64 %i.do, 1                ; 2 uses
  %i.dv = ptrtoint ptr %i.ds to i64               ; 2 uses
  %i.dw = and i64 %i.do, -262144
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = load i64, ptr %i.dx, align 262144       ; 2 uses
  %i.dz = and i64 %i.dy, 32
  %.not.i.i.i.i.i27.i.i = icmp eq i64 %i.dz, 0
  %i.ea = and i64 %i.dy, 25
  %.not37.i.i.i.i.i28.i.i = icmp eq i64 %i.ea, 0
  br i1 %.not37.i.i.i.i.i28.i.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.eb = and i64 %i.dm, -262144
  %i.ec = inttoptr i64 %i.eb to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i29.i.i = load i64, ptr %i.ec, align 262144
  %i.ed = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i29.i.i, 25
  %.not38.i.i.i.i.i30.i.i = icmp eq i64 %i.ed, 0
  br i1 %.not38.i.i.i.i.i30.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.du, i64 noundef %i.dv, i64 %i.dm) #23
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  br i1 %.not.i.i.i.i.i27.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i, label %bb.s, !prof !13

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.du, i64 %i.dv, i64 %i.dm) #23
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i: ; preds = %bb.s, %bb.r, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i
  %i.ee = add i32 %.054.i.i, 1
  br label %bb.t

bb.t:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i, %.lr.ph.split.i.i
  %.1.i.i = phi i32 [ %i.ee, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i ], [ %.054.i.i, %.lr.ph.split.i.i ] ; 2 uses
  %i.ef = add nuw nsw i64 %.02651.i.i, 1          ; 2 uses
  %exitcond.not.i61.i = icmp eq i64 %i.ef, %.0.in.in.i.i58.i
  br i1 %exitcond.not.i61.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i, label %.lr.ph.split.i.i, !llvm.loop !3570

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i: ; preds = %bb.t, %bb.j, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i
  %.0.lcssa.i.i = phi i32 [ 0, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i ], [ %.1.us.i.i, %bb.j ], [ %.1.i.i, %bb.t ] ; 3 uses
  %i.eg = load i64, ptr %4, align 8               ; 2 uses
  %i.eh = load i64, ptr %.sroa.072.0.i, align 8   ; 3 uses
  %i.ei = icmp slt i64 %i.e, 0
  br i1 %i.ei, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i
  %i.ej = add i64 %i.eg, -1
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load i64, ptr %i.el, align 8
  %i.en = lshr i64 %i.em, 32
  %i.eo = trunc nuw i64 %i.en to i32
  %i.ep = add i64 %i.eh, -1
  %i.eq = inttoptr i64 %i.ep to ptr               ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load i64, ptr %i.er, align 8
  %i.et = lshr i64 %i.es, 32
  %i.eu = trunc nuw i64 %i.et to i32              ; 2 uses
  %i.ev = sub i32 %i.eu, %.0.lcssa.i.i
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %i.ev, i32 %i.eo) ; 3 uses
  %i.ew = add i32 %.sroa.speculated.i.i, %.0.lcssa.i.i ; 2 uses
  %i.ex = sub nsw i32 %i.eu, %i.ew                ; 2 uses
  %i.ey = icmp sgt i32 %i.ex, 0
  br i1 %i.ey, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.fa = sext i32 %i.ew to i64
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = zext nneg i32 %i.ex to i64
  %i.ff = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.fd, i64 %i.fe, ptr nonnull %i.fb) #23, !srcloc !3333 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i
  %.0.i62.i = phi i32 [ %i.g, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i ], [ %.sroa.speculated.i.i, %bb.v ], [ %.sroa.speculated.i.i, %bb.u ] ; 2 uses
  %i.fg = icmp eq i32 %.0.i62.i, 0
  br i1 %i.fg, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit, label %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i

_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i: ; preds = %bb.w
  %i.fh = sext i32 %.0.lcssa.i.i to i64
  %i.fi = add i64 %i.eh, 15
  %.idx.i.i.i.i = shl nsw i64 %i.fh, 3
  %i.fj = add i64 %i.fi, %.idx.i.i.i.i
  %i.fk = add i64 %i.eg, 15
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 55464
  tail call void @_ZN2v88internal4Heap9CopyRangeINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S7_iNS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(2992) %i.fl, i64 %i.eh, i64 %i.fj, i64 %i.fk, i32 noundef %.0.i62.i, i32 noundef 4) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit: ; preds = %bb.b, %bb.w, %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i
  %.sroa.086.1.i = phi ptr [ null, %bb.b ], [ %.sroa.072.0.i, %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i ], [ %.sroa.072.0.i, %bb.w ]
  ret ptr %.sroa.086.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE27AddElementsToKeyAccumulatorENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8                ; 5 uses
  %i.b = load i64, ptr %1, align 8
  %i.c = add i64 %i.b, 15
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 560 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
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
  %i.o = load i64, ptr %1, align 8                ; 2 uses
  %i.p = add i64 %i.o, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.s = add i64 %i.r, 11
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i16, ptr %i.t monotonic, align 2
  %i.v = icmp eq i16 %i.u, 2119
  %i.w = add i64 %i.o, 23
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = add i64 %i.e, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.0.in.in.in.in.i.i.i = select i1 %i.v, ptr %i.x, ptr %i.aa
  %.0.in.in.in.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i, align 8
  %.0.in.in.i.i.i = lshr i64 %.0.in.in.in.i.i.i, 32 ; 2 uses
  %.not45.i = icmp eq i64 %.0.in.in.i.i.i, 0
  br i1 %.not45.i, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i
  %.02246.i = phi i64 [ 0, %.lr.ph.i ], [ %i.at, %bb.f ] ; 2 uses
  %i.ac = load i64, ptr %.0.i.i.i, align 8
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %sext.i.i = shl i64 %.02246.i, 32
  %i.ag = ashr exact i64 %sext.i.i, 29
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag ; 2 uses
  %i.ai = load atomic volatile i64, ptr %i.ah monotonic, align 8
  %i.aj = load i64, ptr %i.ab, align 8
  %.not44.i = icmp eq i64 %i.ai, %i.aj
  br i1 %.not44.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = load atomic volatile i64, ptr %i.ah monotonic, align 8
  %i.al = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.am = load ptr, ptr %i.h, align 8
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.e, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i, !prof !5

bb.e:                                             ; preds = %bb.d
  %i.ao = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.a) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i26.i = phi ptr [ %i.ao, %bb.e ], [ %i.al, %bb.d ] ; 3 uses
  %i.ap = ptrtoint ptr %.0.i.i26.i to i64
  %i.aq = add i64 %i.ap, 8
  %i.ar = inttoptr i64 %i.aq to ptr
  store ptr %i.ar, ptr %i.f, align 8
  store i64 %i.ak, ptr %.0.i.i26.i, align 8
  %i.as = tail call noundef zeroext i1 @_ZN2v88internal14KeyAccumulator6AddKeyENS0_12DirectHandleINS0_6ObjectEEENS0_16AddKeyConversionE(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr nonnull %.0.i.i26.i, i32 noundef %3) #23
  br i1 %i.as, label %bb.f, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit

bb.f:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i, %bb.c
  %i.at = add nuw nsw i64 %.02246.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.at, %.0.in.in.i.i.i
  br i1 %exitcond.not.i, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit, label %bb.c, !llvm.loop !3571

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i, %bb.f, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.not.lcssa.i = phi i1 [ true, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ false, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i ], [ true, %bb.f ]
  ret i1 %.not.lcssa.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE22TransitionElementsKindEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_3MapEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr %2, ptr %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i.i, align 8
  %i.n = add i64 %i.d, 14
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i8, ptr %i.o, align 1               ; 3 uses
  %i.q = lshr i8 %i.p, 2                          ; 4 uses
  %i.r = load i64, ptr %3, align 8
  %i.s = add i64 %i.r, 14
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i8, ptr %i.t, align 1
  %i.v = lshr i8 %i.u, 2                          ; 3 uses
  %i.w = trunc i8 %i.q to i1
  %i.x = icmp ult i8 %i.p, 24
  %i.y = and i1 %i.x, %i.w
  br i1 %i.y, label %bb.c, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  switch i8 %i.v, label %bb.f [
    i8 0, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i
    i8 4, label %bb.d
    i8 2, label %bb.e
    i8 6, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  ]

bb.d:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.e:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.f:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.0.i = phi i8 [ %i.v, %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.v, %bb.f ], [ 5, %bb.d ], [ 3, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %.not.i = icmp eq i8 %i.q, %.0.i
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE26TransitionElementsKindImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_3MapEEE.exit, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i: ; preds = %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i, %bb.c
  %.0103.i = phi i8 [ %.0.i, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i ], [ 7, %bb.c ] ; 2 uses
  %i.z = load i64, ptr %2, align 8
  %i.aa = add i64 %i.z, 15
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ae = load ptr, ptr %i.g, align 8
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.g, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i, !prof !5

bb.g:                                             ; preds = %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  %i.ag = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i: ; preds = %bb.g, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  %.0.i.i38.i = phi ptr [ %i.ag, %bb.g ], [ %i.ad, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i ] ; 4 uses
  %i.ah = ptrtoint ptr %.0.i.i38.i to i64
  %i.ai = add i64 %i.ah, 8
  %i.aj = inttoptr i64 %i.ai to ptr
  store ptr %i.aj, ptr %i.e, align 8
  store i64 %i.ac, ptr %.0.i.i38.i, align 8
  %i.ak = load i64, ptr %2, align 8
  %i.al = add i64 %i.ak, 15
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 864
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = icmp eq i64 %i.an, %i.ap
  br i1 %i.aq, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i
  %i.ar = and i8 %i.p, -8
  %i.as = icmp eq i8 %i.ar, 16
  %i.at = and i8 %.0103.i, -2
  %i.au = icmp eq i8 %i.at, 4
  %i.av = xor i1 %i.as, %i.au
  br i1 %i.av, label %bb.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.h, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i
  tail call void @_ZN2v88internal8JSObject12MigrateToMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEEi(ptr noundef nonnull %1, ptr nonnull %2, ptr nonnull %3, i32 noundef 0) #23
  br label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

bb.i:                                             ; preds = %bb.h
  %i.aw = add i64 %i.an, -1
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = lshr i64 %i.az, 32
  %i.bb = trunc nuw i64 %i.ba to i32
  %i.bc = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE27ConvertElementsWithCapacityEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEES5_jjj(ptr noundef nonnull %1, ptr nonnull readonly %2, ptr nonnull readonly %.0.i.i38.i, i8 noundef zeroext %i.q, i32 noundef %i.bb, i32 noundef 0) ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.j, label %_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i, !prof !5

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.27) #24
  unreachable

_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i: ; preds = %bb.i
  tail call void @_ZN2v88internal8JSObject12MigrateToMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEEi(ptr noundef nonnull %1, ptr nonnull %2, ptr nonnull %3, i32 noundef 0) #23
  %i.be = load i64, ptr %2, align 8               ; 4 uses
  %i.bf = load i64, ptr %i.bc, align 8            ; 5 uses
  %i.bg = add i64 %i.be, 15                       ; 3 uses
  %i.bh = inttoptr i64 %i.bg to ptr
  store atomic volatile i64 %i.bf, ptr %i.bh monotonic, align 8
  %i.bi = trunc i64 %i.bf to i1
  br i1 %i.bi, label %bb.k, label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

bb.k:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i
  %i.bj = and i64 %i.be, -262144
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load i64, ptr %i.bk, align 262144       ; 2 uses
  %i.bm = and i64 %i.bl, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.bm, 0
  %i.bn = and i64 %i.bl, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not37.i.i.i.i.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bo = and i64 %i.bf, -262144
  %i.bp = inttoptr i64 %i.bo to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bp, align 262144
  %i.bq = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not38.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.be, i64 noundef %i.bg, i64 %i.bf) #23
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i, label %bb.o, !prof !13

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.be, i64 %i.bg, i64 %i.bf) #23
  br label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i: ; preds = %bb.o, %bb.n, %_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i, %.critedge.i
  %i.br = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1925), align 1, !range !16, !noundef !17
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.p, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedSealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE8EEEE26TransitionElementsKindImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_3MapEEE.exit
end_hunk_15
begin_hunk_16_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE8ValidateEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE:bb.a
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2
  %i.s = icmp eq i16 %i.r, 2119
  br i1 %i.s, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.u = add i64 %i.t, 11
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i16, ptr %i.v monotonic, align 2
  %i.x = icmp eq i16 %i.w, 2061
  br i1 %i.x, label %bb.d, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit

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
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit: ; preds = %bb.a, %bb.b, %bb.c, %_ZNK2v88internal12JSTypedArray9GetLengthEv.exit.i
  ret void
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE10HasElementEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEjNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2, i32 noundef %3, i64 %4, i32 %5) unnamed_addr #10 align 2 {
bb.a:
  %i.a = zext i32 %3 to i64                       ; 2 uses
  %i.b = add i64 %2, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 2119
  %i.i = add i64 %2, 23
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = add i64 %4, -1
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.0.in.in.in.in.i.i.i = select i1 %i.h, ptr %i.j, ptr %i.m
  %.0.in.in.in.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i, align 8
  %.0.in.in.i.i.i = lshr i64 %.0.in.in.in.i.i.i, 32
  %i.n = icmp samesign ugt i64 %.0.in.in.i.i.i, %i.a
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %sext.i.i = shl nuw i64 %i.a, 32
  %i.p = ashr exact i64 %sext.i.i, 29
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 %i.p
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %i.r, %i.t
  br i1 %i.u, label %bb.c, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit: ; preds = %bb.b, %bb.c
  %.sroa.013.1.i.i = phi i1 [ false, %bb.c ], [ true, %bb.b ]
  ret i1 %.sroa.013.1.i.i
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE8HasEntryEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENS0_13InternalIndexE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2, i64 %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = add i64 %2, 15
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %sext.i = shl i64 %3, 32
  %i.g = ashr exact i64 %sext.i, 29
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 %i.g
  %i.i = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp ne i64 %i.i, %i.k
  ret i1 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE3GetEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %2, i64 %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %sext.i.i = shl i64 %3, 32
  %i.h = ashr exact i64 %sext.i.i, 29
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE15GetInternalImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE15GetInternalImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE15GetInternalImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi ptr [ %i.p, %bb.b ], [ %i.l, %bb.a ] ; 3 uses
  %i.q = ptrtoint ptr %.0.i.i.i to i64
  %i.r = add i64 %i.q, 8
  %i.s = inttoptr i64 %i.r to ptr
  store ptr %i.s, ptr %i.k, align 8
  store i64 %i.j, ptr %.0.i.i.i, align 8
  ret ptr %.0.i.i.i
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE9GetAtomicEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE12HasAccessorsENS0_6TaggedINS0_8JSObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1) unnamed_addr #12 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef range(i64 0, 4294967296) i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE16NumberOfElementsEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2) unnamed_addr #10 align 2 {
bb.a:
  %i.a = add i64 %2, 15
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %2, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = icmp eq i16 %i.i, 2119
  %i.k = add i64 %2, 23
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = add i64 %i.c, -1
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.0.in.in.in.in.i.i = select i1 %i.j, ptr %i.l, ptr %i.o
  %.0.in.in.in.i.i = load i64, ptr %.0.in.in.in.in.i.i, align 8
  %.0.in.in.in.i.i.fr = freeze i64 %.0.in.in.in.i.i ; 2 uses
  %.0.in.in.i.i = lshr i64 %.0.in.in.in.i.i.fr, 32 ; 4 uses
  %.not17.i = icmp eq i64 %.0.in.in.i.i, 0
  br i1 %.not17.i, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 2 uses
  %i.r = icmp eq i64 %.0.in.in.i.i, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.0.in.in.i.i, 4294967294
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.01316.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ac, %bb.b ] ; 3 uses
  %.01415.i = phi i32 [ 0, %.lr.ph.i.new ], [ %spec.select.i.1, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %sext.i.i = shl i64 %.01316.i, 32
  %i.s = ashr exact i64 %sext.i.i, 29
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 %i.s
  %i.u = load atomic volatile i64, ptr %i.t monotonic, align 8
  %i.v = load i64, ptr %i.q, align 8              ; 2 uses
  %.not.i = icmp ne i64 %i.u, %i.v
  %i.w = zext i1 %.not.i to i32
  %spec.select.i = add i32 %.01415.i, %i.w
  %i.x = shl i64 %.01316.i, 32
  %sext.i.i.1 = ashr exact i64 %i.x, 29
  %i.y = getelementptr i8, ptr %i.p, i64 %sext.i.i.1
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %i.aa = load atomic volatile i64, ptr %i.z monotonic, align 8
  %.not.i.1 = icmp ne i64 %i.aa, %i.v
  %i.ab = zext i1 %.not.i.1 to i32
  %spec.select.i.1 = add i32 %spec.select.i, %i.ab ; 3 uses
  %i.ac = add nuw nsw i64 %.01316.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !3586

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %i.ad = and i64 %.0.in.in.in.i.i.fr, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.ad, 0
  br i1 %lcmp.mod.not, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.01316.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ac, %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa ]
  %.01415.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %spec.select.i.1, %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod6 = trunc i64 %.0.in.in.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod6)
  %sext.i.i.epil = shl i64 %.01316.i.epil.init, 32
  %i.ae = ashr exact i64 %sext.i.i.epil, 29
  %i.af = getelementptr inbounds i8, ptr %i.p, i64 %i.ae
  %i.ag = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.ah = load i64, ptr %i.q, align 8
  %.not.i.epil = icmp ne i64 %i.ag, %i.ah
  %i.ai = zext i1 %.not.i.epil to i32
  %spec.select.i.epil = add i32 %.01415.i.epil.init, %i.ai
  br label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit: ; preds = %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa, %.epil.preheader
  %spec.select.i.lcssa = phi i32 [ %spec.select.i.1, %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa ], [ %spec.select.i.epil, %.epil.preheader ]
  %i.aj = zext i32 %spec.select.i.lcssa to i64
  br label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit, %bb.a
  %.014.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.aj, %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit ]
  ret i64 %.014.lcssa.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE9SetLengthEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 8 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i, align 8
  %i.n = load i64, ptr %2, align 8                ; 3 uses
  %i.o = add i64 %i.n, 23
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8              ; 4 uses
  %i.r = and i64 %i.q, 1
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.c, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.t = icmp sgt i64 %i.q, -1
  br i1 %i.t, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread84.i, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i, !prof !107

_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread84.i: ; preds = %bb.c
  %i.u = lshr i64 %i.q, 32
  %i.v = trunc nuw nsw i64 %i.u to i32
  br label %bb.e

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i: ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.w = add nsw i64 %i.q, -1
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = load atomic volatile i64, ptr %i.x monotonic, align 8
  %i.z = add i64 %i.y, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = icmp eq i16 %i.ab, 130
  br i1 %i.ac, label %bb.d, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i, !prof !107

bb.d:                                             ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.ad, align 8 ; 2 uses
  %i.ae = fadd double %.0.copyload.i.i.i.i.i.i.i, f0x4330000000000000
  %i.af = bitcast double %i.ae to i64             ; 2 uses
  %.mask.i.i.i.i = and i64 %i.af, -4294967296
  %i.ag = icmp eq i64 %.mask.i.i.i.i, 4841369599423283200
  br i1 %i.ag, label %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i, !prof !107

_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i: ; preds = %bb.d
  %i.ah = trunc i64 %i.af to i32                  ; 3 uses
  %i.ai = uitofp i32 %i.ah to double
  %i.aj = fcmp oeq double %.0.copyload.i.i.i.i.i.i.i, %i.ai
  %i.ak = icmp ne i32 %i.ah, -1
  %or.cond.i = and i1 %i.ak, %i.aj
  br i1 %or.cond.i, label %bb.e, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i, !prof !3326

_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i: ; preds = %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i, %bb.d, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.26) #24
  unreachable

bb.e:                                             ; preds = %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i, %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread84.i
  %.086.i = phi i32 [ %i.v, %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread84.i ], [ %i.ah, %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i ] ; 2 uses
  %i.al = icmp eq i32 %3, %.086.i
  br i1 %i.al, label %_ZN2v88internal12_GLOBAL__N_132FastSealedObjectElementsAccessorINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE13SetLengthImplEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEjNSA_INS0_14FixedArrayBaseEEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = icmp eq i32 %.086.i, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1856
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ao = add i64 %i.n, -1
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load atomic volatile i64, ptr %i.ap monotonic, align 8
  %i.ar = add i64 %i.aq, 14
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load i8, ptr %i.as, align 1
  %i.au = lshr i8 %i.at, 2
  %i.av = load ptr, ptr @_ZN2v88internal16ElementsAccessor19elements_accessors_E, align 8
  %i.aw = zext nneg i8 %i.au to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 208
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = tail call ptr %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull %1, ptr nonnull %2) #23, !inline_history !3587
  %.pre.i = load i64, ptr %2, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bd = phi i64 [ %i.n, %bb.g ], [ %.pre.i, %bb.h ]
  %.sroa.036.0.i = phi ptr [ %i.an, %bb.g ], [ %i.bc, %bb.h ] ; 2 uses
  %i.be = add i64 %i.bd, -1
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = load atomic volatile i64, ptr %i.bf monotonic, align 8
  %i.bh = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.bi = load ptr, ptr %i.g, align 8
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %bb.j, label %_ZN2v88internal13direct_handleINS0_3MapEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i, !prof !5

bb.j:                                             ; preds = %bb.i
  %i.bk = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal13direct_handleINS0_3MapEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i

_ZN2v88internal13direct_handleINS0_3MapEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.bk, %bb.j ], [ %i.bh, %bb.i ] ; 3 uses
  %i.bl = ptrtoint ptr %.0.i.i.i.i to i64
  %i.bm = add i64 %i.bl, 8
  %i.bn = inttoptr i64 %i.bm to ptr
  store ptr %i.bn, ptr %i.e, align 8
  store i64 %i.bg, ptr %.0.i.i.i.i, align 8
  %i.bo = tail call ptr @_ZN2v88internal3Map4CopyEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKcNS0_18TransitionKindFlagE(ptr noundef nonnull %1, ptr nonnull %.0.i.i.i.i, ptr noundef nonnull @.str.29, i32 noundef 3) #23 ; 3 uses
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = add i64 %i.bp, 15
  %i.br = inttoptr i64 %i.bq to ptr               ; 2 uses
  %i.bs = load atomic volatile i32, ptr %i.br monotonic, align 4
  %i.bt = and i32 %i.bs, -134217729
  store atomic volatile i32 %i.bt, ptr %i.br monotonic, align 4
  %i.bu = load i64, ptr %i.bo, align 8
  %i.bv = add i64 %i.bu, 14
  %i.bw = inttoptr i64 %i.bv to ptr               ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = and i8 %i.bx, 3
  %i.bz = or disjoint i8 %i.by, 52
  store i8 %i.bz, ptr %i.bw, align 1
  tail call void @_ZN2v88internal8JSObject12MigrateToMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEEi(ptr noundef nonnull %1, ptr nonnull %2, ptr nonnull %i.bo, i32 noundef 0) #23
  %i.ca = icmp eq ptr %.sroa.036.0.i, null
  br i1 %i.ca, label %_ZN2v88internal8JSObject12set_elementsENS0_6TaggedINS0_14FixedArrayBaseEEENS0_16WriteBarrierModeE.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal13direct_handleINS0_3MapEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i
  %i.cb = load i64, ptr %2, align 8               ; 4 uses
  %i.cc = load i64, ptr %.sroa.036.0.i, align 8   ; 5 uses
  %i.cd = add i64 %i.cb, 15                       ; 3 uses
  %i.ce = inttoptr i64 %i.cd to ptr
  store atomic volatile i64 %i.cc, ptr %i.ce monotonic, align 8
  %i.cf = trunc i64 %i.cc to i1
  br i1 %i.cf, label %bb.l, label %_ZN2v88internal8JSObject12set_elementsENS0_6TaggedINS0_14FixedArrayBaseEEENS0_16WriteBarrierModeE.exit.i

bb.l:                                             ; preds = %bb.k
  %i.cg = and i64 %i.cb, -262144
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = load i64, ptr %i.ch, align 262144       ; 2 uses
  %i.cj = and i64 %i.ci, 32
  %.not.i.i.i.i = icmp eq i64 %i.cj, 0
  %i.ck = and i64 %i.ci, 25
  %.not37.i.i.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not37.i.i.i.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cl = and i64 %i.cc, -262144
  %i.cm = inttoptr i64 %i.cl to ptr
  %.sroa.0.0.copyload.i.i.i.i.i41.i = load i64, ptr %i.cm, align 262144
  %i.cn = and i64 %.sroa.0.0.copyload.i.i.i.i.i41.i, 25
  %.not38.i.i.i.i = icmp eq i64 %i.cn, 0
  br i1 %.not38.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.cb, i64 noundef %i.cd, i64 %i.cc) #23
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  br i1 %.not.i.i.i.i, label %_ZN2v88internal8JSObject12set_elementsENS0_6TaggedINS0_14FixedArrayBaseEEENS0_16WriteBarrierModeE.exit.i, label %bb.p, !prof !13

bb.p:                                             ; preds = %bb.o
end_hunk_16
begin_hunk_17_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE22CollectValuesOrEntriesEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE:bb.a

bb.g:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i
  %i.bf = or disjoint i64 %i.ax, 1                ; 2 uses
  %i.bg = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bh = and i64 %i.ax, -262144
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load i64, ptr %i.bi, align 262144       ; 2 uses
  %i.bk = and i64 %i.bj, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bk, 0
  %i.bl = and i64 %i.bj, 25
  %.not37.i.i.i.i.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not37.i.i.i.i.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bm = and i64 %i.ba, -262144
  %i.bn = inttoptr i64 %i.bm to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.bn, align 262144
  %i.bo = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.bf, i64 noundef %i.bg, i64 %i.ba) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i, label %bb.k, !prof !13

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.bf, i64 %i.bg, i64 %i.ba) #23
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i: ; preds = %bb.k, %bb.j, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i, %bb.d
  %.1.i = phi i32 [ %.098.i, %bb.d ], [ %i.az, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i ], [ %i.az, %bb.j ], [ %i.az, %bb.k ] ; 2 uses
  %indvars.iv.next106.i = add nuw nsw i64 %indvars.iv105.i, 1 ; 2 uses
  %exitcond109.not.i = icmp eq i64 %indvars.iv.next106.i, %i.r
  br i1 %exitcond109.not.i, label %_ZN2v88internal12_GLOBAL__N_131FastSmiOrObjectElementsAccessorINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE26CollectValuesOrEntriesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE.exit, label %bb.d, !llvm.loop !3589

bb.l:                                             ; preds = %bb.a
  %i.bp = add i64 %i.d, -1
  %i.bq = inttoptr i64 %i.bp to ptr               ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = lshr i64 %i.bs, 32                      ; 2 uses
  %.not101.i = icmp eq i64 %i.bt, 0
  br i1 %.not101.i, label %_ZN2v88internal12_GLOBAL__N_131FastSmiOrObjectElementsAccessorINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE26CollectValuesOrEntriesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 656
  br label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i ] ; 2 uses
  %.296.i = phi i32 [ 0, %.lr.ph.i ], [ %.3.i, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i ] ; 3 uses
  %sext.i46.i = shl nuw i64 %indvars.iv.i, 32
  %i.bw = ashr exact i64 %sext.i46.i, 29
  %i.bx = getelementptr inbounds i8, ptr %i.bu, i64 %i.bw ; 2 uses
  %i.by = load atomic volatile i64, ptr %i.bx monotonic, align 8
  %i.bz = load i64, ptr %i.bv, align 8
  %.not.i = icmp eq i64 %i.by, %i.bz
  br i1 %.not.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = load atomic volatile i64, ptr %i.bx monotonic, align 8 ; 5 uses
  %i.cb = load i64, ptr %3, align 8
  %i.cc = add i64 %i.cb, -1                       ; 3 uses
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = add nsw i32 %.296.i, 1                  ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cg = sext i32 %.296.i to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.cg ; 2 uses
  store atomic volatile i64 %i.ca, ptr %i.ch monotonic, align 8
  %i.ci = trunc i64 %i.ca to i1
  br i1 %i.ci, label %bb.o, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i

bb.o:                                             ; preds = %bb.n
  %i.cj = or disjoint i64 %i.cc, 1                ; 2 uses
  %i.ck = ptrtoint ptr %i.ch to i64               ; 2 uses
  %i.cl = and i64 %i.cc, -262144
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = load i64, ptr %i.cm, align 262144       ; 2 uses
  %i.co = and i64 %i.cn, 32
  %.not.i.i.i.i.i48.i = icmp eq i64 %i.co, 0
  %i.cp = and i64 %i.cn, 25
  %.not37.i.i.i.i.i49.i = icmp eq i64 %i.cp, 0
  br i1 %.not37.i.i.i.i.i49.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cq = and i64 %i.ca, -262144
  %i.cr = inttoptr i64 %i.cq to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i50.i = load i64, ptr %i.cr, align 262144
  %i.cs = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i50.i, 25
  %.not38.i.i.i.i.i51.i = icmp eq i64 %i.cs, 0
  br i1 %.not38.i.i.i.i.i51.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.cj, i64 noundef %i.ck, i64 %i.ca) #23
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  br i1 %.not.i.i.i.i.i48.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i, label %bb.s, !prof !13

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.cj, i64 %i.ck, i64 %i.ca) #23
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i: ; preds = %bb.s, %bb.r, %bb.n, %bb.m
  %.3.i = phi i32 [ %.296.i, %bb.m ], [ %i.ce, %bb.n ], [ %i.ce, %bb.r ], [ %i.ce, %bb.s ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.bt
  br i1 %exitcond.not.i, label %_ZN2v88internal12_GLOBAL__N_131FastSmiOrObjectElementsAccessorINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE26CollectValuesOrEntriesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE.exit, label %bb.m, !llvm.loop !3590

_ZN2v88internal12_GLOBAL__N_131FastSmiOrObjectElementsAccessorINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE26CollectValuesOrEntriesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE.exit: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %bb.l
  %.4.i = phi i32 [ %.1.i, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i ], [ 0, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ 0, %bb.l ], [ %.3.i, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i ]
  store i32 %.4.i, ptr %5, align 4
  ret i16 257
}

; Function Attrs: mustprogress nounwind uwtable
define internal ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE21PrependElementIndicesEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %2, ptr nofree readonly captures(none) %3, ptr nofree readonly captures(none) %4, i32 noundef %5, i32 %6) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %4, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = lshr i64 %i.e, 32                        ; 3 uses
  %i.g = trunc nuw i64 %i.f to i32                ; 3 uses
  %i.h = load i64, ptr %2, align 8                ; 2 uses
  %i.i = load i64, ptr %3, align 8
  %i.j = add i64 %i.h, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.m = add i64 %i.l, 11
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i16, ptr %i.n monotonic, align 2
  %i.p = icmp eq i16 %i.o, 2119
  %i.q = add i64 %i.h, 23
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = add i64 %i.i, -1
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.0.in.in.in.in.i.i.i = select i1 %i.p, ptr %i.r, ptr %i.u
  %.0.in.in.in.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i, align 8
  %.0.in.in.i.i.i = lshr i64 %.0.in.in.in.i.i.i, 32 ; 2 uses
  %i.v = sub nsw i64 134217728, %i.f
  %i.w = and i64 %i.v, 4294967295
  %i.x = icmp samesign ugt i64 %.0.in.in.i.i.i, %i.w
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = tail call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef 238, ptr null, i64 0) #23
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %1, i64 %i.z, ptr noundef null) #23 ; 0 uses
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit

bb.c:                                             ; preds = %bb.a
  %i.ab = add nuw nsw i64 %.0.in.in.i.i.i, %i.f
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = tail call ptr @_ZN2v88internal7Factory16TryNewFixedArrayEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.ac, i8 noundef zeroext 0) #23 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i, label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i

_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i: ; preds = %bb.c
  %i.af = load i64, ptr %2, align 8               ; 2 uses
  %i.ag = load i64, ptr %3, align 8
  %i.ah = add i64 %i.af, -1
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i64, ptr %i.ai monotonic, align 8
  %i.ak = add i64 %i.aj, 11
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i16, ptr %i.al monotonic, align 2
  %i.an = icmp eq i16 %i.am, 2119
  %i.ao = add i64 %i.af, 23
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = add i64 %i.ag, -1
  %i.ar = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.0.in.in.in.in.i.i53.i = select i1 %i.an, ptr %i.ap, ptr %i.as
  %.0.in.in.in.i.i54.i = load i64, ptr %.0.in.in.in.in.i.i53.i, align 8
  %.0.in.in.in.i.i54.i.fr = freeze i64 %.0.in.in.in.i.i54.i ; 2 uses
  %.0.in.in.i.i55.i = lshr i64 %.0.in.in.in.i.i54.i.fr, 32 ; 4 uses
  %.not17.i.i = icmp eq i64 %.0.in.in.i.i55.i, 0
  br i1 %.not17.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 2 uses
  %i.av = icmp eq i64 %.0.in.in.i.i55.i, 1
  br i1 %i.av, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.0.in.in.i.i55.i, 4294967294
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.new
  %.01316.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.bg, %bb.d ] ; 3 uses
  %.01415.i.i = phi i32 [ 0, %.lr.ph.i.i.new ], [ %spec.select.i.i.1, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.d ]
  %sext.i.i.i = shl i64 %.01316.i.i, 32
  %i.aw = ashr exact i64 %sext.i.i.i, 29
  %i.ax = getelementptr inbounds i8, ptr %i.at, i64 %i.aw
  %i.ay = load atomic volatile i64, ptr %i.ax monotonic, align 8
  %i.az = load i64, ptr %i.au, align 8            ; 2 uses
  %.not.i.i = icmp ne i64 %i.ay, %i.az
  %i.ba = zext i1 %.not.i.i to i32
  %spec.select.i.i = add i32 %.01415.i.i, %i.ba
  %i.bb = shl i64 %.01316.i.i, 32
  %sext.i.i.i.1 = ashr exact i64 %i.bb, 29
  %i.bc = getelementptr i8, ptr %i.at, i64 %sext.i.i.i.1
  %i.bd = getelementptr i8, ptr %i.bc, i64 8
  %i.be = load atomic volatile i64, ptr %i.bd monotonic, align 8
  %.not.i.i.1 = icmp ne i64 %i.be, %i.az
  %i.bf = zext i1 %.not.i.i.1 to i32
  %spec.select.i.i.1 = add i32 %spec.select.i.i, %i.bf ; 3 uses
  %i.bg = add nuw nsw i64 %.01316.i.i, 2          ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !3586

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %bb.d
  %i.bh = and i64 %.0.in.in.in.i.i54.i.fr, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.bh, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %.01316.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bg, %.loopexit.i.loopexit.unr-lcssa ]
  %.01415.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.1, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod18 = trunc i64 %.0.in.in.i.i55.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod18)
  %sext.i.i.i.epil = shl i64 %.01316.i.i.epil.init, 32
  %i.bi = ashr exact i64 %sext.i.i.i.epil, 29
  %i.bj = getelementptr inbounds i8, ptr %i.at, i64 %i.bi
  %i.bk = load atomic volatile i64, ptr %i.bj monotonic, align 8
  %i.bl = load i64, ptr %i.au, align 8
  %.not.i.i.epil = icmp ne i64 %i.bk, %i.bl
  %i.bm = zext i1 %.not.i.i.epil to i32
  %spec.select.i.i.epil = add i32 %.01415.i.i.epil.init, %i.bm
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i
  %.014.lcssa.i.i = phi i32 [ 0, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i ], [ %spec.select.i.i.1, %.loopexit.i.loopexit.unr-lcssa ], [ %spec.select.i.i.epil, %.epil.preheader ]
  %i.bn = add i32 %.014.lcssa.i.i, %i.g
  %i.bo = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.bn, i8 noundef zeroext 0, i8 0) #23
  br label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i

_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i: ; preds = %.loopexit.i, %bb.c
  %.sroa.072.0.i = phi ptr [ %i.bo, %.loopexit.i ], [ %i.ad, %bb.c ] ; 4 uses
  %i.bp = load i64, ptr %2, align 8               ; 2 uses
  %i.bq = load i64, ptr %3, align 8
  %i.br = add i64 %i.bp, -1
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = load atomic volatile i64, ptr %i.bs monotonic, align 8
  %i.bu = add i64 %i.bt, 11
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load atomic volatile i16, ptr %i.bv monotonic, align 2
  %i.bx = icmp eq i16 %i.bw, 2119
  %i.by = add i64 %i.bp, 23
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = add i64 %i.bq, -1
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.0.in.in.in.in.i.i56.i = select i1 %i.bx, ptr %i.bz, ptr %i.cc
  %.0.in.in.in.i.i57.i = load i64, ptr %.0.in.in.in.in.i.i56.i, align 8
  %.0.in.in.i.i58.i = lshr i64 %.0.in.in.in.i.i57.i, 32 ; 3 uses
  %.not.i59.i = icmp eq i64 %.0.in.in.i.i58.i, 0
  br i1 %.not.i59.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i, label %.lr.ph.i60.i

.lr.ph.i60.i:                                     ; preds = %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 2 uses
  %i.ce = icmp eq i32 %5, 0
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 568
  br i1 %i.ce, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i60.i, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i
  %.055.us.i.i = phi i32 [ %.1.us.i.i, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i ], [ 0, %.lr.ph.i60.i ] ; 4 uses
  %.02652.us.i.i = phi i64 [ %i.dx, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i ], [ 0, %.lr.ph.i60.i ] ; 5 uses
  %i.ch = load i64, ptr %2, align 8               ; 2 uses
  %i.ci = load i64, ptr %3, align 8
  %i.cj = add i64 %i.ch, -1
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = load atomic volatile i64, ptr %i.ck monotonic, align 8
  %i.cm = add i64 %i.cl, 11
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = load atomic volatile i16, ptr %i.cn monotonic, align 2
  %i.cp = icmp eq i16 %i.co, 2119
  %i.cq = add i64 %i.ch, 23
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = add i64 %i.ci, -1
  %i.ct = inttoptr i64 %i.cs to ptr               ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.0.in.in.in.in.i.i.i.us.i.i = select i1 %i.cp, ptr %i.cr, ptr %i.cu
  %.0.in.in.in.i.i.i.us.i.i = load i64, ptr %.0.in.in.in.in.i.i.i.us.i.i, align 8
  %.0.in.in.i.i.i.us.i.i = lshr i64 %.0.in.in.in.i.i.i.us.i.i, 32
  %i.cv = icmp samesign ult i64 %.02652.us.i.i, %.0.in.in.i.i.i.us.i.i
  br i1 %i.cv, label %bb.e, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i

bb.e:                                             ; preds = %.lr.ph.split.us.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %sext.i.i.us.i.i = shl nuw i64 %.02652.us.i.i, 32
  %i.cx = ashr exact i64 %sext.i.i.us.i.i, 29
  %i.cy = getelementptr inbounds i8, ptr %i.cw, i64 %i.cx
  %i.cz = load atomic volatile i64, ptr %i.cy monotonic, align 8
  %i.da = load i64, ptr %i.cd, align 8
  %i.db = icmp eq i64 %i.cz, %i.da
  br i1 %i.db, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dc = icmp samesign ult i64 %.02652.us.i.i, 67108864
  %i.dd = tail call ptr @_ZN2v88internal7Factory12SizeToStringEmb(ptr noundef nonnull align 1 dereferenceable(1) %1, i64 noundef %.02652.us.i.i, i1 noundef zeroext %i.dc) #23
  %i.de = load i64, ptr %.sroa.072.0.i, align 8
  %i.df = add i64 %i.de, -1                       ; 3 uses
  %i.dg = inttoptr i64 %i.df to ptr
  %i.dh = load i64, ptr %i.dd, align 8            ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dj = sext i32 %.055.us.i.i to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dj ; 2 uses
  store atomic volatile i64 %i.dh, ptr %i.dk monotonic, align 8
  %i.dl = trunc i64 %i.dh to i1
  br i1 %i.dl, label %bb.g, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us.i.i

bb.g:                                             ; preds = %bb.f
  %i.dm = or disjoint i64 %i.df, 1                ; 2 uses
  %i.dn = ptrtoint ptr %i.dk to i64               ; 2 uses
  %i.do = and i64 %i.df, -262144
  %i.dp = inttoptr i64 %i.do to ptr
  %i.dq = load i64, ptr %i.dp, align 262144       ; 2 uses
  %i.dr = and i64 %i.dq, 32
  %.not.i.i.i.i.i.us.i.i = icmp eq i64 %i.dr, 0
  %i.ds = and i64 %i.dq, 25
  %.not37.i.i.i.i.i.us.i.i = icmp eq i64 %i.ds, 0
  br i1 %.not37.i.i.i.i.i.us.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.dt = and i64 %i.dh, -262144
  %i.du = inttoptr i64 %i.dt to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.us.i.i = load i64, ptr %i.du, align 262144
  %i.dv = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.us.i.i, 25
  %.not38.i.i.i.i.i.us.i.i = icmp eq i64 %i.dv, 0
  br i1 %.not38.i.i.i.i.i.us.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.dm, i64 noundef %i.dn, i64 %i.dh) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  br i1 %.not.i.i.i.i.i.us.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us.i.i, label %bb.k, !prof !13

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.dm, i64 %i.dn, i64 %i.dh) #23
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us.i.i

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us.i.i: ; preds = %bb.k, %bb.j, %bb.f
  %i.dw = add i32 %.055.us.i.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us.i.i, %bb.e, %.lr.ph.split.us.i.i
  %.1.us.i.i = phi i32 [ %i.dw, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us.i.i ], [ %.055.us.i.i, %.lr.ph.split.us.i.i ], [ %.055.us.i.i, %bb.e ] ; 2 uses
  %i.dx = add nuw nsw i64 %.02652.us.i.i, 1       ; 2 uses
  %exitcond57.not.i.i = icmp eq i64 %i.dx, %.0.in.in.i.i58.i
  br i1 %exitcond57.not.i.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i, label %.lr.ph.split.us.i.i, !llvm.loop !3591

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i60.i, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i
  %.055.i.i = phi i32 [ %.1.i.i, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i ], [ 0, %.lr.ph.i60.i ] ; 4 uses
  %.02652.i.i = phi i64 [ %i.ga, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i ], [ 0, %.lr.ph.i60.i ] ; 5 uses
  %i.dy = load i64, ptr %2, align 8               ; 2 uses
  %i.dz = load i64, ptr %3, align 8
  %i.ea = add i64 %i.dy, -1
  %i.eb = inttoptr i64 %i.ea to ptr
  %i.ec = load atomic volatile i64, ptr %i.eb monotonic, align 8
  %i.ed = add i64 %i.ec, 11
  %i.ee = inttoptr i64 %i.ed to ptr
  %i.ef = load atomic volatile i16, ptr %i.ee monotonic, align 2
  %i.eg = icmp eq i16 %i.ef, 2119
  %i.eh = add i64 %i.dy, 23
  %i.ei = inttoptr i64 %i.eh to ptr
  %i.ej = add i64 %i.dz, -1
  %i.ek = inttoptr i64 %i.ej to ptr               ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %.0.in.in.in.in.i.i.i.i.i = select i1 %i.eg, ptr %i.ei, ptr %i.el
  %.0.in.in.in.i.i.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i.i.i, align 8
  %.0.in.in.i.i.i.i.i = lshr i64 %.0.in.in.in.i.i.i.i.i, 32
  %i.em = icmp samesign ult i64 %.02652.i.i, %.0.in.in.i.i.i.i.i
  br i1 %i.em, label %bb.l, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i

bb.l:                                             ; preds = %.lr.ph.split.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %sext.i.i.i.i = shl nuw i64 %.02652.i.i, 32     ; 3 uses
  %i.eo = ashr exact i64 %sext.i.i.i.i, 29
  %i.ep = getelementptr inbounds i8, ptr %i.en, i64 %i.eo
  %i.eq = load atomic volatile i64, ptr %i.ep monotonic, align 8
  %i.er = load i64, ptr %i.cd, align 8
  %i.es = icmp eq i64 %i.eq, %i.er
  br i1 %i.es, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.et = icmp samesign ult i64 %.02652.i.i, 2147483648
  br i1 %i.et, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.eu = load ptr, ptr %i.cf, align 8            ; 2 uses
  %i.ev = load ptr, ptr %i.cg, align 8
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %bb.o, label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i, !prof !5

bb.o:                                             ; preds = %bb.n
  %i.ex = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %1) #23
  br label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i

_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i = phi ptr [ %i.ex, %bb.o ], [ %i.eu, %bb.n ] ; 2 uses
  %i.ey = ptrtoint ptr %.0.i.i.i.i.i.i to i64
  %i.ez = add i64 %i.ey, 8
  %i.fa = inttoptr i64 %i.ez to ptr
  store ptr %i.fa, ptr %i.cf, align 8
  store i64 %sext.i.i.i.i, ptr %.0.i.i.i.i.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i

bb.p:                                             ; preds = %bb.m
  %i.fb = uitofp nneg i64 %.02652.i.i to double
  %i.fc = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #23 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = add i64 %i.fd, -1
  %i.ff = inttoptr i64 %i.fe to ptr
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store double %i.fb, ptr %i.fg, align 1
  %.pre.i.i = load i64, ptr %i.fc, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i

_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i: ; preds = %bb.p, %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i
  %i.fh = phi i64 [ %sext.i.i.i.i, %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i ], [ %.pre.i.i, %bb.p ] ; 5 uses
  %i.fi = load i64, ptr %.sroa.072.0.i, align 8
  %i.fj = add i64 %i.fi, -1                       ; 3 uses
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = sext i32 %.055.i.i to i64
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.fm ; 2 uses
  store atomic volatile i64 %i.fh, ptr %i.fn monotonic, align 8
  %i.fo = trunc i64 %i.fh to i1
  br i1 %i.fo, label %bb.q, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i

bb.q:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i
  %i.fp = or disjoint i64 %i.fj, 1                ; 2 uses
  %i.fq = ptrtoint ptr %i.fn to i64               ; 2 uses
  %i.fr = and i64 %i.fj, -262144
  %i.fs = inttoptr i64 %i.fr to ptr
  %i.ft = load i64, ptr %i.fs, align 262144       ; 2 uses
  %i.fu = and i64 %i.ft, 32
  %.not.i.i.i.i.i27.i.i = icmp eq i64 %i.fu, 0
  %i.fv = and i64 %i.ft, 25
  %.not37.i.i.i.i.i28.i.i = icmp eq i64 %i.fv, 0
  br i1 %.not37.i.i.i.i.i28.i.i, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.fw = and i64 %i.fh, -262144
  %i.fx = inttoptr i64 %i.fw to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i29.i.i = load i64, ptr %i.fx, align 262144
  %i.fy = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i29.i.i, 25
  %.not38.i.i.i.i.i30.i.i = icmp eq i64 %i.fy, 0
  br i1 %.not38.i.i.i.i.i30.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.fp, i64 noundef %i.fq, i64 %i.fh) #23
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  br i1 %.not.i.i.i.i.i27.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i, label %bb.u, !prof !13

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.fp, i64 %i.fq, i64 %i.fh) #23
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i: ; preds = %bb.u, %bb.t, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i
  %i.fz = add i32 %.055.i.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i, %bb.l, %.lr.ph.split.i.i
  %.1.i.i = phi i32 [ %i.fz, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i ], [ %.055.i.i, %.lr.ph.split.i.i ], [ %.055.i.i, %bb.l ] ; 2 uses
  %i.ga = add nuw nsw i64 %.02652.i.i, 1          ; 2 uses
  %exitcond.not.i61.i = icmp eq i64 %i.ga, %.0.in.in.i.i58.i
  br i1 %exitcond.not.i61.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i, label %.lr.ph.split.i.i, !llvm.loop !3591

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i: ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i
  %.0.lcssa.i.i = phi i32 [ 0, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i ], [ %.1.us.i.i, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i ], [ %.1.i.i, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i ] ; 4 uses
  %i.gb = load i64, ptr %4, align 8               ; 2 uses
  %i.gc = load i64, ptr %.sroa.072.0.i, align 8   ; 3 uses
  %i.gd = icmp slt i64 %i.e, 0
  br i1 %i.gd, label %bb.v, label %bb.x

bb.v:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i
  %i.ge = add i64 %i.gb, -1
  %i.gf = inttoptr i64 %i.ge to ptr
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load i64, ptr %i.gg, align 8
  %i.gi = lshr i64 %i.gh, 32
  %i.gj = trunc nuw i64 %i.gi to i32
  %i.gk = add i64 %i.gc, -1
  %i.gl = inttoptr i64 %i.gk to ptr               ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = load i64, ptr %i.gm, align 8
  %i.go = lshr i64 %i.gn, 32
  %i.gp = trunc nuw i64 %i.go to i32              ; 2 uses
  %i.gq = sub i32 %i.gp, %.0.lcssa.i.i
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %i.gq, i32 %i.gj) ; 3 uses
  %i.gr = add i32 %.sroa.speculated.i.i, %.0.lcssa.i.i ; 2 uses
  %i.gs = sub nsw i32 %i.gp, %i.gr                ; 2 uses
  %i.gt = icmp sgt i32 %i.gs, 0
  br i1 %i.gt, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gv = sext i32 %i.gr to i64
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.gu, i64 %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.gy = load i64, ptr %i.gx, align 8
  %i.gz = zext nneg i32 %i.gs to i64
  %i.ha = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.gy, i64 %i.gz, ptr nonnull %i.gw) #23, !srcloc !3333 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i
  %.0.i62.i = phi i32 [ %i.g, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i ], [ %.sroa.speculated.i.i, %bb.w ], [ %.sroa.speculated.i.i, %bb.v ] ; 2 uses
  %i.hb = icmp eq i32 %.0.i62.i, 0
  br i1 %i.hb, label %bb.y, label %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i

_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i: ; preds = %bb.x
  %i.hc = sext i32 %.0.lcssa.i.i to i64
  %i.hd = add i64 %i.gc, 15
  %.idx.i.i.i.i = shl nsw i64 %i.hc, 3
  %i.he = add i64 %i.hd, %.idx.i.i.i.i
  %i.hf = add i64 %i.gb, 15
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 55464
  tail call void @_ZN2v88internal4Heap9CopyRangeINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S7_iNS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(2992) %i.hg, i64 %i.gc, i64 %i.he, i64 %i.hf, i32 noundef %.0.i62.i, i32 noundef 4) #23
  br label %bb.y

bb.y:                                             ; preds = %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i, %bb.x
  %i.hh = add i32 %.0.lcssa.i.i, %i.g
  %i.hi = tail call ptr @_ZN2v88internal10FixedArray16RightTrimOrEmptyINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEES5_PNS0_7IsolateES5_i(ptr noundef nonnull %1, ptr nonnull %.sroa.072.0.i, i32 noundef %i.hh) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit: ; preds = %bb.b, %bb.y
  %.sroa.086.1.i = phi ptr [ null, %bb.b ], [ %i.hi, %bb.y ]
  ret ptr %.sroa.086.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE27AddElementsToKeyAccumulatorENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8                ; 5 uses
  %i.b = load i64, ptr %1, align 8
  %i.c = add i64 %i.b, 15
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 560 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
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
  %i.o = load i64, ptr %1, align 8                ; 2 uses
  %i.p = add i64 %i.o, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.s = add i64 %i.r, 11
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i16, ptr %i.t monotonic, align 2
  %i.v = icmp eq i16 %i.u, 2119
  %i.w = add i64 %i.o, 23
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = add i64 %i.e, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.0.in.in.in.in.i.i.i = select i1 %i.v, ptr %i.x, ptr %i.aa
  %.0.in.in.in.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i, align 8
  %.0.in.in.i.i.i = lshr i64 %.0.in.in.in.i.i.i, 32 ; 2 uses
  %.not45.i = icmp eq i64 %.0.in.in.i.i.i, 0
  br i1 %.not45.i, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i
  %.02246.i = phi i64 [ 0, %.lr.ph.i ], [ %i.at, %bb.f ] ; 2 uses
  %i.ac = load i64, ptr %.0.i.i.i, align 8
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %sext.i.i = shl i64 %.02246.i, 32
  %i.ag = ashr exact i64 %sext.i.i, 29
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag ; 2 uses
  %i.ai = load atomic volatile i64, ptr %i.ah monotonic, align 8
  %i.aj = load i64, ptr %i.ab, align 8
  %.not44.i = icmp eq i64 %i.ai, %i.aj
  br i1 %.not44.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = load atomic volatile i64, ptr %i.ah monotonic, align 8
  %i.al = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.am = load ptr, ptr %i.h, align 8
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.e, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i, !prof !5

bb.e:                                             ; preds = %bb.d
  %i.ao = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.a) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i26.i = phi ptr [ %i.ao, %bb.e ], [ %i.al, %bb.d ] ; 3 uses
  %i.ap = ptrtoint ptr %.0.i.i26.i to i64
  %i.aq = add i64 %i.ap, 8
  %i.ar = inttoptr i64 %i.aq to ptr
  store ptr %i.ar, ptr %i.f, align 8
  store i64 %i.ak, ptr %.0.i.i26.i, align 8
  %i.as = tail call noundef zeroext i1 @_ZN2v88internal14KeyAccumulator6AddKeyENS0_12DirectHandleINS0_6ObjectEEENS0_16AddKeyConversionE(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr nonnull %.0.i.i26.i, i32 noundef %3) #23
  br i1 %i.as, label %bb.f, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit

bb.f:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i, %bb.c
  %i.at = add nuw nsw i64 %.02246.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.at, %.0.in.in.i.i.i
  br i1 %exitcond.not.i, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit, label %bb.c, !llvm.loop !3592

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i, %bb.f, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.not.lcssa.i = phi i1 [ true, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ false, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i ], [ true, %bb.f ]
  ret i1 %.not.lcssa.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE22TransitionElementsKindEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_3MapEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr %2, ptr %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i.i, align 8
  %i.n = add i64 %i.d, 14
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i8, ptr %i.o, align 1               ; 3 uses
  %i.q = lshr i8 %i.p, 2                          ; 4 uses
  %i.r = load i64, ptr %3, align 8
  %i.s = add i64 %i.r, 14
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i8, ptr %i.t, align 1
  %i.v = lshr i8 %i.u, 2                          ; 3 uses
  %i.w = trunc i8 %i.q to i1
  %i.x = icmp ult i8 %i.p, 24
  %i.y = and i1 %i.x, %i.w
  br i1 %i.y, label %bb.c, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  switch i8 %i.v, label %bb.f [
    i8 0, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i
    i8 4, label %bb.d
    i8 2, label %bb.e
    i8 6, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  ]

bb.d:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.e:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.f:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.0.i = phi i8 [ %i.v, %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.v, %bb.f ], [ 5, %bb.d ], [ 3, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %.not.i = icmp eq i8 %i.q, %.0.i
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE26TransitionElementsKindImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_3MapEEE.exit, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i: ; preds = %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i, %bb.c
  %.0103.i = phi i8 [ %.0.i, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i ], [ 7, %bb.c ] ; 2 uses
  %i.z = load i64, ptr %2, align 8
  %i.aa = add i64 %i.z, 15
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ae = load ptr, ptr %i.g, align 8
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.g, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i, !prof !5

bb.g:                                             ; preds = %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  %i.ag = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i: ; preds = %bb.g, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  %.0.i.i38.i = phi ptr [ %i.ag, %bb.g ], [ %i.ad, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i ] ; 4 uses
  %i.ah = ptrtoint ptr %.0.i.i38.i to i64
  %i.ai = add i64 %i.ah, 8
  %i.aj = inttoptr i64 %i.ai to ptr
  store ptr %i.aj, ptr %i.e, align 8
  store i64 %i.ac, ptr %.0.i.i38.i, align 8
  %i.ak = load i64, ptr %2, align 8
  %i.al = add i64 %i.ak, 15
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 864
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = icmp eq i64 %i.an, %i.ap
  br i1 %i.aq, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i
  %i.ar = and i8 %i.p, -8
  %i.as = icmp eq i8 %i.ar, 16
  %i.at = and i8 %.0103.i, -2
  %i.au = icmp eq i8 %i.at, 4
  %i.av = xor i1 %i.as, %i.au
  br i1 %i.av, label %bb.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.h, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i
  tail call void @_ZN2v88internal8JSObject12MigrateToMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEEi(ptr noundef nonnull %1, ptr nonnull %2, ptr nonnull %3, i32 noundef 0) #23
  br label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

bb.i:                                             ; preds = %bb.h
  %i.aw = add i64 %i.an, -1
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = lshr i64 %i.az, 32
  %i.bb = trunc nuw i64 %i.ba to i32
  %i.bc = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE27ConvertElementsWithCapacityEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEES5_jjj(ptr noundef nonnull %1, ptr nonnull readonly %2, ptr nonnull readonly %.0.i.i38.i, i8 noundef zeroext %i.q, i32 noundef %i.bb, i32 noundef 0) ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.j, label %_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i, !prof !5

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.27) #24
  unreachable

_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i: ; preds = %bb.i
  tail call void @_ZN2v88internal8JSObject12MigrateToMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEEi(ptr noundef nonnull %1, ptr nonnull %2, ptr nonnull %3, i32 noundef 0) #23
  %i.be = load i64, ptr %2, align 8               ; 4 uses
  %i.bf = load i64, ptr %i.bc, align 8            ; 5 uses
  %i.bg = add i64 %i.be, 15                       ; 3 uses
  %i.bh = inttoptr i64 %i.bg to ptr
  store atomic volatile i64 %i.bf, ptr %i.bh monotonic, align 8
  %i.bi = trunc i64 %i.bf to i1
  br i1 %i.bi, label %bb.k, label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

bb.k:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i
  %i.bj = and i64 %i.be, -262144
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load i64, ptr %i.bk, align 262144       ; 2 uses
  %i.bm = and i64 %i.bl, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.bm, 0
  %i.bn = and i64 %i.bl, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not37.i.i.i.i.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bo = and i64 %i.bf, -262144
  %i.bp = inttoptr i64 %i.bo to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bp, align 262144
  %i.bq = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not38.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.be, i64 noundef %i.bg, i64 %i.bf) #23
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i, label %bb.o, !prof !13

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.be, i64 %i.bg, i64 %i.bf) #23
  br label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i: ; preds = %bb.o, %bb.n, %_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i, %.critedge.i
  %i.br = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1925), align 1, !range !16, !noundef !17
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.p, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleySealedObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE9EEEE26TransitionElementsKindImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_3MapEEE.exit
end_hunk_17
begin_hunk_18_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE8ValidateEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE:bb.a
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
  br i1 %i.l, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = add i64 %2, -1
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = add i64 %i.o, 11
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2
  %i.s = icmp eq i16 %i.r, 2119
  br i1 %i.s, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.u = add i64 %i.t, 11
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i16, ptr %i.v monotonic, align 2
  %i.x = icmp eq i16 %i.w, 2061
  br i1 %i.x, label %bb.d, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit

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
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit: ; preds = %bb.a, %bb.b, %bb.c, %_ZNK2v88internal12JSTypedArray9GetLengthEv.exit.i
  ret void
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE10HasElementEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEjNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2, i32 noundef %3, i64 %4, i32 %5) unnamed_addr #10 align 2 {
bb.a:
  %i.a = zext i32 %3 to i64
  %i.b = add i64 %2, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 2119
  %i.i = add i64 %2, 23
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = add i64 %4, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.0.in.in.in.in.i.i.i = select i1 %i.h, ptr %i.j, ptr %i.m
  %.0.in.in.in.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i, align 8
  %.0.in.in.i.i.i = lshr i64 %.0.in.in.in.i.i.i, 32
  %i.n = icmp samesign ugt i64 %.0.in.in.i.i.i, %i.a
  ret i1 %i.n
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE8HasEntryEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENS0_13InternalIndexE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2, i64 %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = add i64 %2, 15
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %sext.i = shl i64 %3, 32
  %i.g = ashr exact i64 %sext.i, 29
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 %i.g
  %i.i = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp ne i64 %i.i, %i.k
  ret i1 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE3GetEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %2, i64 %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %sext.i.i = shl i64 %3, 32
  %i.h = ashr exact i64 %sext.i.i, 29
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE15GetInternalImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE15GetInternalImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE15GetInternalImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi ptr [ %i.p, %bb.b ], [ %i.l, %bb.a ] ; 3 uses
  %i.q = ptrtoint ptr %.0.i.i.i to i64
  %i.r = add i64 %i.q, 8
  %i.s = inttoptr i64 %i.r to ptr
  store ptr %i.s, ptr %i.k, align 8
  store i64 %i.j, ptr %.0.i.i.i, align 8
  ret ptr %.0.i.i.i
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE9GetAtomicEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE12HasAccessorsENS0_6TaggedINS0_8JSObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1) unnamed_addr #12 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef range(i64 0, 4294967296) i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE16NumberOfElementsEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2) unnamed_addr #10 align 2 {
bb.a:
  %i.a = add i64 %2, 15
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %2, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = icmp eq i16 %i.i, 2119
  %i.k = add i64 %2, 23
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = add i64 %i.c, -1
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.0.in.in.in.in.i.i = select i1 %i.j, ptr %i.l, ptr %i.o
  %.0.in.in.in.i.i = load i64, ptr %.0.in.in.in.in.i.i, align 8
  %.0.in.in.in.i.i.fr = freeze i64 %.0.in.in.in.i.i ; 2 uses
  %.0.in.in.i.i = lshr i64 %.0.in.in.in.i.i.fr, 32 ; 4 uses
  %.not17.i = icmp eq i64 %.0.in.in.i.i, 0
  br i1 %.not17.i, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 2 uses
  %i.r = icmp eq i64 %.0.in.in.i.i, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.0.in.in.i.i, 4294967294
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.01316.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ac, %bb.b ] ; 3 uses
  %.01415.i = phi i32 [ 0, %.lr.ph.i.new ], [ %spec.select.i.1, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %sext.i.i = shl i64 %.01316.i, 32
  %i.s = ashr exact i64 %sext.i.i, 29
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 %i.s
  %i.u = load atomic volatile i64, ptr %i.t monotonic, align 8
  %i.v = load i64, ptr %i.q, align 8              ; 2 uses
  %.not.i = icmp ne i64 %i.u, %i.v
  %i.w = zext i1 %.not.i to i32
  %spec.select.i = add i32 %.01415.i, %i.w
  %i.x = shl i64 %.01316.i, 32
  %sext.i.i.1 = ashr exact i64 %i.x, 29
  %i.y = getelementptr i8, ptr %i.p, i64 %sext.i.i.1
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %i.aa = load atomic volatile i64, ptr %i.z monotonic, align 8
  %.not.i.1 = icmp ne i64 %i.aa, %i.v
  %i.ab = zext i1 %.not.i.1 to i32
  %spec.select.i.1 = add i32 %spec.select.i, %i.ab ; 3 uses
  %i.ac = add nuw nsw i64 %.01316.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !3607

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %i.ad = and i64 %.0.in.in.in.i.i.fr, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.ad, 0
  br i1 %lcmp.mod.not, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.01316.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ac, %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa ]
  %.01415.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %spec.select.i.1, %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod6 = trunc i64 %.0.in.in.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod6)
  %sext.i.i.epil = shl i64 %.01316.i.epil.init, 32
  %i.ae = ashr exact i64 %sext.i.i.epil, 29
  %i.af = getelementptr inbounds i8, ptr %i.p, i64 %i.ae
  %i.ag = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.ah = load i64, ptr %i.q, align 8
  %.not.i.epil = icmp ne i64 %i.ag, %i.ah
  %i.ai = zext i1 %.not.i.epil to i32
  %spec.select.i.epil = add i32 %.01415.i.epil.init, %i.ai
  br label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit: ; preds = %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa, %.epil.preheader
  %spec.select.i.lcssa = phi i32 [ %spec.select.i.1, %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa ], [ %spec.select.i.epil, %.epil.preheader ]
  %i.aj = zext i32 %spec.select.i.lcssa to i64
  br label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit, %bb.a
  %.014.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.aj, %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit ]
  ret i64 %.014.lcssa.i
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE9SetLengthEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %2, i32 %3) unnamed_addr #11 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i, align 8
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE21CollectElementIndicesENS0_12DirectHandleINS0_8JSObjectEEENS8_INS0_14FixedArrayBaseEEEPNS0_14KeyAccumulatorE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(none) %1, ptr nofree readonly captures(none) %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = load i64, ptr %2, align 8
  %i.c = add i64 %i.a, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2
  %i.i = icmp eq i16 %i.h, 2119
  %i.j = add i64 %i.a, 23
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = add i64 %i.b, -1
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.0.in.in.in.in.i.i = select i1 %i.i, ptr %i.k, ptr %i.n
  %.0.in.in.in.i.i = load i64, ptr %.0.in.in.in.in.i.i, align 8
  %.0.in.in.i.i = lshr i64 %.0.in.in.in.i.i, 32   ; 2 uses
  %i.o = load ptr, ptr %3, align 8                ; 4 uses
  %.not32.i = icmp eq i64 %.0.in.in.i.i, 0
  br i1 %.not32.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE25CollectElementIndicesImplENS0_12DirectHandleINS0_8JSObjectEEENS8_INS0_14FixedArrayBaseEEEPNS0_14KeyAccumulatorE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 560 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 568
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.02133.i = phi i64 [ 0, %.lr.ph.i ], [ %i.aw, %bb.g ] ; 5 uses
  %i.r = load i64, ptr %1, align 8                ; 2 uses
  %i.s = load i64, ptr %2, align 8
  %i.t = add i64 %i.r, -1
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load atomic volatile i64, ptr %i.u monotonic, align 8
  %i.w = add i64 %i.v, 11
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load atomic volatile i16, ptr %i.x monotonic, align 2
  %i.z = icmp eq i16 %i.y, 2119
  %i.aa = add i64 %i.r, 23
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = add i64 %i.s, -1
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.0.in.in.in.in.i.i.i.i = select i1 %i.z, ptr %i.ab, ptr %i.ae
  %.0.in.in.in.i.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i.i, align 8
  %.0.in.in.i.i.i.i = lshr i64 %.0.in.in.in.i.i.i.i, 32
  %i.af = icmp samesign ult i64 %.02133.i, %.0.in.in.i.i.i.i
  br i1 %i.af, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.ag = icmp samesign ult i64 %.02133.i, 2147483648
  br i1 %i.ag, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.02133.i, 32
  %i.ai = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.aj = load ptr, ptr %i.q, align 8
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.e, label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i, !prof !5

bb.e:                                             ; preds = %bb.d
  %i.al = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %i.o) #23
  br label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i

_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i = phi ptr [ %i.al, %bb.e ], [ %i.ai, %bb.d ] ; 3 uses
  %i.am = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.an = add i64 %i.am, 8
  %i.ao = inttoptr i64 %i.an to ptr
  store ptr %i.ao, ptr %i.p, align 8
  store i64 %i.ah, ptr %.0.i.i.i.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i

bb.f:                                             ; preds = %bb.c
  %i.ap = uitofp nneg i64 %.02133.i to double
  %i.aq = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %i.o) #23 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = add i64 %i.ar, -1
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store double %i.ap, ptr %i.au, align 1
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i

_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i: ; preds = %bb.f, %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i
  %.sroa.0.0.i.i = phi ptr [ %.0.i.i.i.i.i, %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i ], [ %i.aq, %bb.f ]
  %i.av = tail call noundef zeroext i1 @_ZN2v88internal14KeyAccumulator6AddKeyENS0_12DirectHandleINS0_6ObjectEEENS0_16AddKeyConversionE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr nonnull %.sroa.0.0.i.i, i32 noundef 0) #23
  br i1 %i.av, label %bb.g, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE25CollectElementIndicesImplENS0_12DirectHandleINS0_8JSObjectEEENS8_INS0_14FixedArrayBaseEEEPNS0_14KeyAccumulatorE.exit

bb.g:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i, %bb.b
  %i.aw = add nuw nsw i64 %.02133.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aw, %.0.in.in.i.i
  br i1 %exitcond.not.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE25CollectElementIndicesImplENS0_12DirectHandleINS0_8JSObjectEEENS8_INS0_14FixedArrayBaseEEEPNS0_14KeyAccumulatorE.exit, label %bb.b, !llvm.loop !3608

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE25CollectElementIndicesImplENS0_12DirectHandleINS0_8JSObjectEEENS8_INS0_14FixedArrayBaseEEEPNS0_14KeyAccumulatorE.exit: ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i, %bb.g, %bb.a
  %.not.lcssa.i = phi i1 [ true, %bb.a ], [ false, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i ], [ true, %bb.g ]
  ret i1 %.not.lcssa.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE22CollectValuesOrEntriesEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %2, ptr nofree readonly captures(none) %3, i1 noundef zeroext %4, ptr nofree noundef writeonly captures(none) %5, i32 %6) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  br i1 %4, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.c, label %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi ptr [ %i.j, %bb.c ], [ %i.f, %bb.b ] ; 3 uses
  %i.k = ptrtoint ptr %.0.i.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i.i, align 8
  %i.n = add i64 %i.d, -1
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8
  %i.r = lshr i64 %i.q, 32                        ; 2 uses
  %.not102.i = icmp eq i64 %i.r, 0
  br i1 %.not102.i, label %_ZN2v88internal12_GLOBAL__N_131FastSmiOrObjectElementsAccessorINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE26CollectValuesOrEntriesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE.exit, label %.lr.ph99.i

.lr.ph99.i:                                       ; preds = %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 656
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i, %.lr.ph99.i
  %indvars.iv105.i = phi i64 [ 0, %.lr.ph99.i ], [ %indvars.iv.next106.i, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i ] ; 3 uses
  %.098.i = phi i32 [ 0, %.lr.ph99.i ], [ %.1.i, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i ] ; 3 uses
  %i.t = load i64, ptr %.0.i.i.i, align 8
  %i.u = add i64 %i.t, -1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %sext.i.i = shl nuw i64 %indvars.iv105.i, 32
  %i.x = ashr exact i64 %sext.i.i, 29
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %i.x ; 2 uses
  %i.z = load atomic volatile i64, ptr %i.y monotonic, align 8
  %i.aa = load i64, ptr %i.s, align 8
end_hunk_18
begin_hunk_19_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE21PrependElementIndicesEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE:bb.a
bb.k:                                             ; preds = %.lr.ph.split.i.i
  %i.cx = icmp samesign ult i64 %.02651.i.i, 2147483648
  br i1 %i.cx, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cy = shl nuw nsw i64 %.02651.i.i, 32         ; 2 uses
  %i.cz = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.da = load ptr, ptr %i.aw, align 8
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %bb.m, label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i, !prof !5

bb.m:                                             ; preds = %bb.l
  %i.dc = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %1) #23
  br label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i

_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i = phi ptr [ %i.dc, %bb.m ], [ %i.cz, %bb.l ] ; 2 uses
  %i.dd = ptrtoint ptr %.0.i.i.i.i.i.i to i64
  %i.de = add i64 %i.dd, 8
  %i.df = inttoptr i64 %i.de to ptr
  store ptr %i.df, ptr %i.av, align 8
  store i64 %i.cy, ptr %.0.i.i.i.i.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i

bb.n:                                             ; preds = %bb.k
  %i.dg = uitofp nneg i64 %.02651.i.i to double
  %i.dh = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #23 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = add i64 %i.di, -1
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store double %i.dg, ptr %i.dl, align 1
  %.pre.i.i = load i64, ptr %i.dh, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i

_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i: ; preds = %bb.n, %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i
  %i.dm = phi i64 [ %i.cy, %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i ], [ %.pre.i.i, %bb.n ] ; 5 uses
  %i.dn = load i64, ptr %.sroa.072.0.i, align 8
  %i.do = add i64 %i.dn, -1                       ; 3 uses
  %i.dp = inttoptr i64 %i.do to ptr
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = sext i32 %.054.i.i to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.dr ; 2 uses
  store atomic volatile i64 %i.dm, ptr %i.ds monotonic, align 8
  %i.dt = trunc i64 %i.dm to i1
  br i1 %i.dt, label %bb.o, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i

bb.o:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i
  %i.du = or disjoint i64 %i.do, 1                ; 2 uses
  %i.dv = ptrtoint ptr %i.ds to i64               ; 2 uses
  %i.dw = and i64 %i.do, -262144
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = load i64, ptr %i.dx, align 262144       ; 2 uses
  %i.dz = and i64 %i.dy, 32
  %.not.i.i.i.i.i27.i.i = icmp eq i64 %i.dz, 0
  %i.ea = and i64 %i.dy, 25
  %.not37.i.i.i.i.i28.i.i = icmp eq i64 %i.ea, 0
  br i1 %.not37.i.i.i.i.i28.i.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.eb = and i64 %i.dm, -262144
  %i.ec = inttoptr i64 %i.eb to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i29.i.i = load i64, ptr %i.ec, align 262144
  %i.ed = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i29.i.i, 25
  %.not38.i.i.i.i.i30.i.i = icmp eq i64 %i.ed, 0
  br i1 %.not38.i.i.i.i.i30.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.du, i64 noundef %i.dv, i64 %i.dm) #23
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  br i1 %.not.i.i.i.i.i27.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i, label %bb.s, !prof !13

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.du, i64 %i.dv, i64 %i.dm) #23
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i: ; preds = %bb.s, %bb.r, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i
  %i.ee = add i32 %.054.i.i, 1
  br label %bb.t

bb.t:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i, %.lr.ph.split.i.i
  %.1.i.i = phi i32 [ %i.ee, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i ], [ %.054.i.i, %.lr.ph.split.i.i ] ; 2 uses
  %i.ef = add nuw nsw i64 %.02651.i.i, 1          ; 2 uses
  %exitcond.not.i61.i = icmp eq i64 %i.ef, %.0.in.in.i.i58.i
  br i1 %exitcond.not.i61.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i, label %.lr.ph.split.i.i, !llvm.loop !3611

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i: ; preds = %bb.t, %bb.j, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i
  %.0.lcssa.i.i = phi i32 [ 0, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i ], [ %.1.us.i.i, %bb.j ], [ %.1.i.i, %bb.t ] ; 3 uses
  %i.eg = load i64, ptr %4, align 8               ; 2 uses
  %i.eh = load i64, ptr %.sroa.072.0.i, align 8   ; 3 uses
  %i.ei = icmp slt i64 %i.e, 0
  br i1 %i.ei, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i
  %i.ej = add i64 %i.eg, -1
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load i64, ptr %i.el, align 8
  %i.en = lshr i64 %i.em, 32
  %i.eo = trunc nuw i64 %i.en to i32
  %i.ep = add i64 %i.eh, -1
  %i.eq = inttoptr i64 %i.ep to ptr               ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load i64, ptr %i.er, align 8
  %i.et = lshr i64 %i.es, 32
  %i.eu = trunc nuw i64 %i.et to i32              ; 2 uses
  %i.ev = sub i32 %i.eu, %.0.lcssa.i.i
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %i.ev, i32 %i.eo) ; 3 uses
  %i.ew = add i32 %.sroa.speculated.i.i, %.0.lcssa.i.i ; 2 uses
  %i.ex = sub nsw i32 %i.eu, %i.ew                ; 2 uses
  %i.ey = icmp sgt i32 %i.ex, 0
  br i1 %i.ey, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.fa = sext i32 %i.ew to i64
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = zext nneg i32 %i.ex to i64
  %i.ff = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.fd, i64 %i.fe, ptr nonnull %i.fb) #23, !srcloc !3333 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i
  %.0.i62.i = phi i32 [ %i.g, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i ], [ %.sroa.speculated.i.i, %bb.v ], [ %.sroa.speculated.i.i, %bb.u ] ; 2 uses
  %i.fg = icmp eq i32 %.0.i62.i, 0
  br i1 %i.fg, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit, label %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i

_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i: ; preds = %bb.w
  %i.fh = sext i32 %.0.lcssa.i.i to i64
  %i.fi = add i64 %i.eh, 15
  %.idx.i.i.i.i = shl nsw i64 %i.fh, 3
  %i.fj = add i64 %i.fi, %.idx.i.i.i.i
  %i.fk = add i64 %i.eg, 15
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 55464
  tail call void @_ZN2v88internal4Heap9CopyRangeINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S7_iNS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(2992) %i.fl, i64 %i.eh, i64 %i.fj, i64 %i.fk, i32 noundef %.0.i62.i, i32 noundef 4) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit: ; preds = %bb.b, %bb.w, %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i
  %.sroa.086.1.i = phi ptr [ null, %bb.b ], [ %.sroa.072.0.i, %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i ], [ %.sroa.072.0.i, %bb.w ]
  ret ptr %.sroa.086.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE27AddElementsToKeyAccumulatorENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8                ; 5 uses
  %i.b = load i64, ptr %1, align 8
  %i.c = add i64 %i.b, 15
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 560 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
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
  %i.o = load i64, ptr %1, align 8                ; 2 uses
  %i.p = add i64 %i.o, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.s = add i64 %i.r, 11
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i16, ptr %i.t monotonic, align 2
  %i.v = icmp eq i16 %i.u, 2119
  %i.w = add i64 %i.o, 23
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = add i64 %i.e, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.0.in.in.in.in.i.i.i = select i1 %i.v, ptr %i.x, ptr %i.aa
  %.0.in.in.in.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i, align 8
  %.0.in.in.i.i.i = lshr i64 %.0.in.in.in.i.i.i, 32 ; 2 uses
  %.not45.i = icmp eq i64 %.0.in.in.i.i.i, 0
  br i1 %.not45.i, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i
  %.02246.i = phi i64 [ 0, %.lr.ph.i ], [ %i.at, %bb.f ] ; 2 uses
  %i.ac = load i64, ptr %.0.i.i.i, align 8
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %sext.i.i = shl i64 %.02246.i, 32
  %i.ag = ashr exact i64 %sext.i.i, 29
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag ; 2 uses
  %i.ai = load atomic volatile i64, ptr %i.ah monotonic, align 8
  %i.aj = load i64, ptr %i.ab, align 8
  %.not44.i = icmp eq i64 %i.ai, %i.aj
  br i1 %.not44.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = load atomic volatile i64, ptr %i.ah monotonic, align 8
  %i.al = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.am = load ptr, ptr %i.h, align 8
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.e, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i, !prof !5

bb.e:                                             ; preds = %bb.d
  %i.ao = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.a) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i26.i = phi ptr [ %i.ao, %bb.e ], [ %i.al, %bb.d ] ; 3 uses
  %i.ap = ptrtoint ptr %.0.i.i26.i to i64
  %i.aq = add i64 %i.ap, 8
  %i.ar = inttoptr i64 %i.aq to ptr
  store ptr %i.ar, ptr %i.f, align 8
  store i64 %i.ak, ptr %.0.i.i26.i, align 8
  %i.as = tail call noundef zeroext i1 @_ZN2v88internal14KeyAccumulator6AddKeyENS0_12DirectHandleINS0_6ObjectEEENS0_16AddKeyConversionE(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr nonnull %.0.i.i26.i, i32 noundef %3) #23
  br i1 %i.as, label %bb.f, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit

bb.f:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i, %bb.c
  %i.at = add nuw nsw i64 %.02246.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.at, %.0.in.in.i.i.i
  br i1 %exitcond.not.i, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit, label %bb.c, !llvm.loop !3612

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i, %bb.f, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.not.lcssa.i = phi i1 [ true, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ false, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i ], [ true, %bb.f ]
  ret i1 %.not.lcssa.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE22TransitionElementsKindEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_3MapEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr %2, ptr %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i.i, align 8
  %i.n = add i64 %i.d, 14
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i8, ptr %i.o, align 1               ; 3 uses
  %i.q = lshr i8 %i.p, 2                          ; 4 uses
  %i.r = load i64, ptr %3, align 8
  %i.s = add i64 %i.r, 14
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i8, ptr %i.t, align 1
  %i.v = lshr i8 %i.u, 2                          ; 3 uses
  %i.w = trunc i8 %i.q to i1
  %i.x = icmp ult i8 %i.p, 24
  %i.y = and i1 %i.x, %i.w
  br i1 %i.y, label %bb.c, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  switch i8 %i.v, label %bb.f [
    i8 0, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i
    i8 4, label %bb.d
    i8 2, label %bb.e
    i8 6, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  ]

bb.d:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.e:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.f:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.0.i = phi i8 [ %i.v, %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.v, %bb.f ], [ 5, %bb.d ], [ 3, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %.not.i = icmp eq i8 %i.q, %.0.i
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE26TransitionElementsKindImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_3MapEEE.exit, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i: ; preds = %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i, %bb.c
  %.0103.i = phi i8 [ %.0.i, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i ], [ 7, %bb.c ] ; 2 uses
  %i.z = load i64, ptr %2, align 8
  %i.aa = add i64 %i.z, 15
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ae = load ptr, ptr %i.g, align 8
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.g, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i, !prof !5

bb.g:                                             ; preds = %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  %i.ag = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i: ; preds = %bb.g, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  %.0.i.i38.i = phi ptr [ %i.ag, %bb.g ], [ %i.ad, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i ] ; 4 uses
  %i.ah = ptrtoint ptr %.0.i.i38.i to i64
  %i.ai = add i64 %i.ah, 8
  %i.aj = inttoptr i64 %i.ai to ptr
  store ptr %i.aj, ptr %i.e, align 8
  store i64 %i.ac, ptr %.0.i.i38.i, align 8
  %i.ak = load i64, ptr %2, align 8
  %i.al = add i64 %i.ak, 15
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 864
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = icmp eq i64 %i.an, %i.ap
  br i1 %i.aq, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i
  %i.ar = and i8 %i.p, -8
  %i.as = icmp eq i8 %i.ar, 16
  %i.at = and i8 %.0103.i, -2
  %i.au = icmp eq i8 %i.at, 4
  %i.av = xor i1 %i.as, %i.au
  br i1 %i.av, label %bb.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.h, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i
  tail call void @_ZN2v88internal8JSObject12MigrateToMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEEi(ptr noundef nonnull %1, ptr nonnull %2, ptr nonnull %3, i32 noundef 0) #23
  br label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

bb.i:                                             ; preds = %bb.h
  %i.aw = add i64 %i.an, -1
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = lshr i64 %i.az, 32
  %i.bb = trunc nuw i64 %i.ba to i32
  %i.bc = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE27ConvertElementsWithCapacityEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEES5_jjj(ptr noundef nonnull %1, ptr nonnull readonly %2, ptr nonnull readonly %.0.i.i38.i, i8 noundef zeroext %i.q, i32 noundef %i.bb, i32 noundef 0) ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.j, label %_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i, !prof !5

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.27) #24
  unreachable

_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i: ; preds = %bb.i
  tail call void @_ZN2v88internal8JSObject12MigrateToMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEEi(ptr noundef nonnull %1, ptr nonnull %2, ptr nonnull %3, i32 noundef 0) #23
  %i.be = load i64, ptr %2, align 8               ; 4 uses
  %i.bf = load i64, ptr %i.bc, align 8            ; 5 uses
  %i.bg = add i64 %i.be, 15                       ; 3 uses
  %i.bh = inttoptr i64 %i.bg to ptr
  store atomic volatile i64 %i.bf, ptr %i.bh monotonic, align 8
  %i.bi = trunc i64 %i.bf to i1
  br i1 %i.bi, label %bb.k, label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

bb.k:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i
  %i.bj = and i64 %i.be, -262144
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load i64, ptr %i.bk, align 262144       ; 2 uses
  %i.bm = and i64 %i.bl, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.bm, 0
  %i.bn = and i64 %i.bl, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not37.i.i.i.i.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bo = and i64 %i.bf, -262144
  %i.bp = inttoptr i64 %i.bo to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bp, align 262144
  %i.bq = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not38.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.be, i64 noundef %i.bg, i64 %i.bf) #23
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i, label %bb.o, !prof !13

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.be, i64 %i.bg, i64 %i.bf) #23
  br label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i: ; preds = %bb.o, %bb.n, %_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i, %.critedge.i
  %i.br = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1925), align 1, !range !16, !noundef !17
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.p, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_38FastPackedFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE10EEEE26TransitionElementsKindImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_3MapEEE.exit
end_hunk_19
begin_hunk_20_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE8ValidateEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE:bb.a
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2
  %i.s = icmp eq i16 %i.r, 2119
  br i1 %i.s, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.u = add i64 %i.t, 11
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i16, ptr %i.v monotonic, align 2
  %i.x = icmp eq i16 %i.w, 2061
  br i1 %i.x, label %bb.d, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit

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
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit: ; preds = %bb.a, %bb.b, %bb.c, %_ZNK2v88internal12JSTypedArray9GetLengthEv.exit.i
  ret void
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE10HasElementEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEjNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2, i32 noundef %3, i64 %4, i32 %5) unnamed_addr #10 align 2 {
bb.a:
  %i.a = zext i32 %3 to i64                       ; 2 uses
  %i.b = add i64 %2, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 2119
  %i.i = add i64 %2, 23
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = add i64 %4, -1
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.0.in.in.in.in.i.i.i = select i1 %i.h, ptr %i.j, ptr %i.m
  %.0.in.in.in.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i, align 8
  %.0.in.in.i.i.i = lshr i64 %.0.in.in.in.i.i.i, 32
  %i.n = icmp samesign ugt i64 %.0.in.in.i.i.i, %i.a
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %sext.i.i = shl nuw i64 %i.a, 32
  %i.p = ashr exact i64 %sext.i.i, 29
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 %i.p
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %i.r, %i.t
  br i1 %i.u, label %bb.c, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit: ; preds = %bb.b, %bb.c
  %.sroa.013.1.i.i = phi i1 [ false, %bb.c ], [ true, %bb.b ]
  ret i1 %.sroa.013.1.i.i
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE8HasEntryEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENS0_13InternalIndexE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2, i64 %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = add i64 %2, 15
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %sext.i = shl i64 %3, 32
  %i.g = ashr exact i64 %sext.i, 29
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 %i.g
  %i.i = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp ne i64 %i.i, %i.k
  ret i1 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE3GetEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %2, i64 %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %sext.i.i = shl i64 %3, 32
  %i.h = ashr exact i64 %sext.i.i, 29
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE15GetInternalImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE15GetInternalImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE15GetInternalImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi ptr [ %i.p, %bb.b ], [ %i.l, %bb.a ] ; 3 uses
  %i.q = ptrtoint ptr %.0.i.i.i to i64
  %i.r = add i64 %i.q, 8
  %i.s = inttoptr i64 %i.r to ptr
  store ptr %i.s, ptr %i.k, align 8
  store i64 %i.j, ptr %.0.i.i.i, align 8
  ret ptr %.0.i.i.i
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE9GetAtomicEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE12HasAccessorsENS0_6TaggedINS0_8JSObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1) unnamed_addr #12 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef range(i64 0, 4294967296) i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE16NumberOfElementsEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2) unnamed_addr #10 align 2 {
bb.a:
  %i.a = add i64 %2, 15
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %2, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = icmp eq i16 %i.i, 2119
  %i.k = add i64 %2, 23
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = add i64 %i.c, -1
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.0.in.in.in.in.i.i = select i1 %i.j, ptr %i.l, ptr %i.o
  %.0.in.in.in.i.i = load i64, ptr %.0.in.in.in.in.i.i, align 8
  %.0.in.in.in.i.i.fr = freeze i64 %.0.in.in.in.i.i ; 2 uses
  %.0.in.in.i.i = lshr i64 %.0.in.in.in.i.i.fr, 32 ; 4 uses
  %.not17.i = icmp eq i64 %.0.in.in.i.i, 0
  br i1 %.not17.i, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 2 uses
  %i.r = icmp eq i64 %.0.in.in.i.i, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.0.in.in.i.i, 4294967294
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.01316.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ac, %bb.b ] ; 3 uses
  %.01415.i = phi i32 [ 0, %.lr.ph.i.new ], [ %spec.select.i.1, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %sext.i.i = shl i64 %.01316.i, 32
  %i.s = ashr exact i64 %sext.i.i, 29
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 %i.s
  %i.u = load atomic volatile i64, ptr %i.t monotonic, align 8
  %i.v = load i64, ptr %i.q, align 8              ; 2 uses
  %.not.i = icmp ne i64 %i.u, %i.v
  %i.w = zext i1 %.not.i to i32
  %spec.select.i = add i32 %.01415.i, %i.w
  %i.x = shl i64 %.01316.i, 32
  %sext.i.i.1 = ashr exact i64 %i.x, 29
  %i.y = getelementptr i8, ptr %i.p, i64 %sext.i.i.1
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %i.aa = load atomic volatile i64, ptr %i.z monotonic, align 8
  %.not.i.1 = icmp ne i64 %i.aa, %i.v
  %i.ab = zext i1 %.not.i.1 to i32
  %spec.select.i.1 = add i32 %spec.select.i, %i.ab ; 3 uses
  %i.ac = add nuw nsw i64 %.01316.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !3625

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %i.ad = and i64 %.0.in.in.in.i.i.fr, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.ad, 0
  br i1 %lcmp.mod.not, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.01316.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ac, %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa ]
  %.01415.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %spec.select.i.1, %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod6 = trunc i64 %.0.in.in.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod6)
  %sext.i.i.epil = shl i64 %.01316.i.epil.init, 32
  %i.ae = ashr exact i64 %sext.i.i.epil, 29
  %i.af = getelementptr inbounds i8, ptr %i.p, i64 %i.ae
  %i.ag = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.ah = load i64, ptr %i.q, align 8
  %.not.i.epil = icmp ne i64 %i.ag, %i.ah
  %i.ai = zext i1 %.not.i.epil to i32
  %spec.select.i.epil = add i32 %.01415.i.epil.init, %i.ai
  br label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit: ; preds = %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa, %.epil.preheader
  %spec.select.i.lcssa = phi i32 [ %spec.select.i.1, %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa ], [ %spec.select.i.epil, %.epil.preheader ]
  %i.aj = zext i32 %spec.select.i.lcssa to i64
  br label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit, %bb.a
  %.014.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.aj, %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit ]
  ret i64 %.014.lcssa.i
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE9SetLengthEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %2, i32 %3) unnamed_addr #11 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i, align 8
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE21CollectElementIndicesENS0_12DirectHandleINS0_8JSObjectEEENS8_INS0_14FixedArrayBaseEEEPNS0_14KeyAccumulatorE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(none) %1, ptr nofree readonly captures(none) %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = load i64, ptr %2, align 8
  %i.c = add i64 %i.a, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2
  %i.i = icmp eq i16 %i.h, 2119
  %i.j = add i64 %i.a, 23
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = add i64 %i.b, -1
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.0.in.in.in.in.i.i = select i1 %i.i, ptr %i.k, ptr %i.n
  %.0.in.in.in.i.i = load i64, ptr %.0.in.in.in.in.i.i, align 8
  %.0.in.in.i.i = lshr i64 %.0.in.in.in.i.i, 32   ; 2 uses
  %i.o = load ptr, ptr %3, align 8                ; 5 uses
  %.not33.i = icmp eq i64 %.0.in.in.i.i, 0
  br i1 %.not33.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE25CollectElementIndicesImplENS0_12DirectHandleINS0_8JSObjectEEENS8_INS0_14FixedArrayBaseEEEPNS0_14KeyAccumulatorE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 656
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 560 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 568
  br label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i, %.lr.ph.i
  %.02134.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bc, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i ] ; 5 uses
  %i.s = load i64, ptr %1, align 8                ; 2 uses
  %i.t = load i64, ptr %2, align 8
  %i.u = add i64 %i.s, -1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i64, ptr %i.v monotonic, align 8
  %i.x = add i64 %i.w, 11
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load atomic volatile i16, ptr %i.y monotonic, align 2
  %i.aa = icmp eq i16 %i.z, 2119
  %i.ab = add i64 %i.s, 23
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = add i64 %i.t, -1
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.0.in.in.in.in.i.i.i.i = select i1 %i.aa, ptr %i.ac, ptr %i.af
  %.0.in.in.in.i.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i.i, align 8
  %.0.in.in.i.i.i.i = lshr i64 %.0.in.in.in.i.i.i.i, 32
  %i.ag = icmp samesign ult i64 %.02134.i, %.0.in.in.i.i.i.i
  br i1 %i.ag, label %bb.c, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i

bb.c:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %sext.i.i.i = shl nuw i64 %.02134.i, 32         ; 2 uses
  %i.ai = ashr exact i64 %sext.i.i.i, 29
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  %i.ak = load atomic volatile i64, ptr %i.aj monotonic, align 8
  %i.al = load i64, ptr %i.p, align 8
  %i.am = icmp eq i64 %i.ak, %i.al
  br i1 %i.am, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = icmp samesign ult i64 %.02134.i, 2147483648
  br i1 %i.an, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ao = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.ap = load ptr, ptr %i.r, align 8
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %bb.f, label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i, !prof !5

bb.f:                                             ; preds = %bb.e
  %i.ar = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %i.o) #23
  br label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i

_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi ptr [ %i.ar, %bb.f ], [ %i.ao, %bb.e ] ; 3 uses
  %i.as = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.at = add i64 %i.as, 8
  %i.au = inttoptr i64 %i.at to ptr
  store ptr %i.au, ptr %i.q, align 8
  store i64 %sext.i.i.i, ptr %.0.i.i.i.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i

bb.g:                                             ; preds = %bb.d
  %i.av = uitofp nneg i64 %.02134.i to double
  %i.aw = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %i.o) #23 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = add i64 %i.ax, -1
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store double %i.av, ptr %i.ba, align 1
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i

_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i: ; preds = %bb.g, %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i
  %.sroa.0.0.i.i = phi ptr [ %.0.i.i.i.i.i, %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i ], [ %i.aw, %bb.g ]
  %i.bb = tail call noundef zeroext i1 @_ZN2v88internal14KeyAccumulator6AddKeyENS0_12DirectHandleINS0_6ObjectEEENS0_16AddKeyConversionE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr nonnull %.sroa.0.0.i.i, i32 noundef 0) #23
  br i1 %i.bb, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE25CollectElementIndicesImplENS0_12DirectHandleINS0_8JSObjectEEENS8_INS0_14FixedArrayBaseEEEPNS0_14KeyAccumulatorE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i: ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i, %bb.c, %bb.b
  %i.bc = add nuw nsw i64 %.02134.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %.0.in.in.i.i
  br i1 %exitcond.not.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE25CollectElementIndicesImplENS0_12DirectHandleINS0_8JSObjectEEENS8_INS0_14FixedArrayBaseEEEPNS0_14KeyAccumulatorE.exit, label %bb.b, !llvm.loop !3626

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE25CollectElementIndicesImplENS0_12DirectHandleINS0_8JSObjectEEENS8_INS0_14FixedArrayBaseEEEPNS0_14KeyAccumulatorE.exit: ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i, %bb.a
  %.not.lcssa.i = phi i1 [ true, %bb.a ], [ false, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i ], [ true, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i ]
  ret i1 %.not.lcssa.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE22CollectValuesOrEntriesEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %2, ptr nofree readonly captures(none) %3, i1 noundef zeroext %4, ptr nofree noundef writeonly captures(none) %5, i32 %6) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  br i1 %4, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.c, label %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi ptr [ %i.j, %bb.c ], [ %i.f, %bb.b ] ; 3 uses
  %i.k = ptrtoint ptr %.0.i.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i.i, align 8
  %i.n = add i64 %i.d, -1
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8
  %i.r = lshr i64 %i.q, 32                        ; 2 uses
  %.not102.i = icmp eq i64 %i.r, 0
  br i1 %.not102.i, label %_ZN2v88internal12_GLOBAL__N_131FastSmiOrObjectElementsAccessorINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE26CollectValuesOrEntriesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE.exit, label %.lr.ph99.i

.lr.ph99.i:                                       ; preds = %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 656
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i, %.lr.ph99.i
  %indvars.iv105.i = phi i64 [ 0, %.lr.ph99.i ], [ %indvars.iv.next106.i, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i ] ; 3 uses
end_hunk_20
begin_hunk_21_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE22CollectValuesOrEntriesEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE:bb.a

bb.g:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i
  %i.bf = or disjoint i64 %i.ax, 1                ; 2 uses
  %i.bg = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bh = and i64 %i.ax, -262144
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load i64, ptr %i.bi, align 262144       ; 2 uses
  %i.bk = and i64 %i.bj, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bk, 0
  %i.bl = and i64 %i.bj, 25
  %.not37.i.i.i.i.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not37.i.i.i.i.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bm = and i64 %i.ba, -262144
  %i.bn = inttoptr i64 %i.bm to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.bn, align 262144
  %i.bo = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.bf, i64 noundef %i.bg, i64 %i.ba) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i, label %bb.k, !prof !13

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.bf, i64 %i.bg, i64 %i.ba) #23
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i: ; preds = %bb.k, %bb.j, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i, %bb.d
  %.1.i = phi i32 [ %.098.i, %bb.d ], [ %i.az, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i ], [ %i.az, %bb.j ], [ %i.az, %bb.k ] ; 2 uses
  %indvars.iv.next106.i = add nuw nsw i64 %indvars.iv105.i, 1 ; 2 uses
  %exitcond109.not.i = icmp eq i64 %indvars.iv.next106.i, %i.r
  br i1 %exitcond109.not.i, label %_ZN2v88internal12_GLOBAL__N_131FastSmiOrObjectElementsAccessorINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE26CollectValuesOrEntriesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE.exit, label %bb.d, !llvm.loop !3627

bb.l:                                             ; preds = %bb.a
  %i.bp = add i64 %i.d, -1
  %i.bq = inttoptr i64 %i.bp to ptr               ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = lshr i64 %i.bs, 32                      ; 2 uses
  %.not101.i = icmp eq i64 %i.bt, 0
  br i1 %.not101.i, label %_ZN2v88internal12_GLOBAL__N_131FastSmiOrObjectElementsAccessorINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE26CollectValuesOrEntriesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 656
  br label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i ] ; 2 uses
  %.296.i = phi i32 [ 0, %.lr.ph.i ], [ %.3.i, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i ] ; 3 uses
  %sext.i46.i = shl nuw i64 %indvars.iv.i, 32
  %i.bw = ashr exact i64 %sext.i46.i, 29
  %i.bx = getelementptr inbounds i8, ptr %i.bu, i64 %i.bw ; 2 uses
  %i.by = load atomic volatile i64, ptr %i.bx monotonic, align 8
  %i.bz = load i64, ptr %i.bv, align 8
  %.not.i = icmp eq i64 %i.by, %i.bz
  br i1 %.not.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = load atomic volatile i64, ptr %i.bx monotonic, align 8 ; 5 uses
  %i.cb = load i64, ptr %3, align 8
  %i.cc = add i64 %i.cb, -1                       ; 3 uses
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = add nsw i32 %.296.i, 1                  ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cg = sext i32 %.296.i to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.cg ; 2 uses
  store atomic volatile i64 %i.ca, ptr %i.ch monotonic, align 8
  %i.ci = trunc i64 %i.ca to i1
  br i1 %i.ci, label %bb.o, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i

bb.o:                                             ; preds = %bb.n
  %i.cj = or disjoint i64 %i.cc, 1                ; 2 uses
  %i.ck = ptrtoint ptr %i.ch to i64               ; 2 uses
  %i.cl = and i64 %i.cc, -262144
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = load i64, ptr %i.cm, align 262144       ; 2 uses
  %i.co = and i64 %i.cn, 32
  %.not.i.i.i.i.i48.i = icmp eq i64 %i.co, 0
  %i.cp = and i64 %i.cn, 25
  %.not37.i.i.i.i.i49.i = icmp eq i64 %i.cp, 0
  br i1 %.not37.i.i.i.i.i49.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cq = and i64 %i.ca, -262144
  %i.cr = inttoptr i64 %i.cq to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i50.i = load i64, ptr %i.cr, align 262144
  %i.cs = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i50.i, 25
  %.not38.i.i.i.i.i51.i = icmp eq i64 %i.cs, 0
  br i1 %.not38.i.i.i.i.i51.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.cj, i64 noundef %i.ck, i64 %i.ca) #23
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  br i1 %.not.i.i.i.i.i48.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i, label %bb.s, !prof !13

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.cj, i64 %i.ck, i64 %i.ca) #23
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i: ; preds = %bb.s, %bb.r, %bb.n, %bb.m
  %.3.i = phi i32 [ %.296.i, %bb.m ], [ %i.ce, %bb.n ], [ %i.ce, %bb.r ], [ %i.ce, %bb.s ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.bt
  br i1 %exitcond.not.i, label %_ZN2v88internal12_GLOBAL__N_131FastSmiOrObjectElementsAccessorINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE26CollectValuesOrEntriesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE.exit, label %bb.m, !llvm.loop !3628

_ZN2v88internal12_GLOBAL__N_131FastSmiOrObjectElementsAccessorINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE26CollectValuesOrEntriesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE.exit: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %bb.l
  %.4.i = phi i32 [ %.1.i, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i ], [ 0, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ 0, %bb.l ], [ %.3.i, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52.i ]
  store i32 %.4.i, ptr %5, align 4
  ret i16 257
}

; Function Attrs: mustprogress nounwind uwtable
define internal ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE21PrependElementIndicesEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %2, ptr nofree readonly captures(none) %3, ptr nofree readonly captures(none) %4, i32 noundef %5, i32 %6) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %4, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = lshr i64 %i.e, 32                        ; 3 uses
  %i.g = trunc nuw i64 %i.f to i32                ; 3 uses
  %i.h = load i64, ptr %2, align 8                ; 2 uses
  %i.i = load i64, ptr %3, align 8
  %i.j = add i64 %i.h, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.m = add i64 %i.l, 11
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i16, ptr %i.n monotonic, align 2
  %i.p = icmp eq i16 %i.o, 2119
  %i.q = add i64 %i.h, 23
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = add i64 %i.i, -1
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.0.in.in.in.in.i.i.i = select i1 %i.p, ptr %i.r, ptr %i.u
  %.0.in.in.in.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i, align 8
  %.0.in.in.i.i.i = lshr i64 %.0.in.in.in.i.i.i, 32 ; 2 uses
  %i.v = sub nsw i64 134217728, %i.f
  %i.w = and i64 %i.v, 4294967295
  %i.x = icmp samesign ugt i64 %.0.in.in.i.i.i, %i.w
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = tail call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef 238, ptr null, i64 0) #23
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %1, i64 %i.z, ptr noundef null) #23 ; 0 uses
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit

bb.c:                                             ; preds = %bb.a
  %i.ab = add nuw nsw i64 %.0.in.in.i.i.i, %i.f
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = tail call ptr @_ZN2v88internal7Factory16TryNewFixedArrayEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.ac, i8 noundef zeroext 0) #23 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i, label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i

_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i: ; preds = %bb.c
  %i.af = load i64, ptr %2, align 8               ; 2 uses
  %i.ag = load i64, ptr %3, align 8
  %i.ah = add i64 %i.af, -1
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i64, ptr %i.ai monotonic, align 8
  %i.ak = add i64 %i.aj, 11
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i16, ptr %i.al monotonic, align 2
  %i.an = icmp eq i16 %i.am, 2119
  %i.ao = add i64 %i.af, 23
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = add i64 %i.ag, -1
  %i.ar = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.0.in.in.in.in.i.i53.i = select i1 %i.an, ptr %i.ap, ptr %i.as
  %.0.in.in.in.i.i54.i = load i64, ptr %.0.in.in.in.in.i.i53.i, align 8
  %.0.in.in.in.i.i54.i.fr = freeze i64 %.0.in.in.in.i.i54.i ; 2 uses
  %.0.in.in.i.i55.i = lshr i64 %.0.in.in.in.i.i54.i.fr, 32 ; 4 uses
  %.not17.i.i = icmp eq i64 %.0.in.in.i.i55.i, 0
  br i1 %.not17.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 2 uses
  %i.av = icmp eq i64 %.0.in.in.i.i55.i, 1
  br i1 %i.av, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.0.in.in.i.i55.i, 4294967294
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.new
  %.01316.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.bg, %bb.d ] ; 3 uses
  %.01415.i.i = phi i32 [ 0, %.lr.ph.i.i.new ], [ %spec.select.i.i.1, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.d ]
  %sext.i.i.i = shl i64 %.01316.i.i, 32
  %i.aw = ashr exact i64 %sext.i.i.i, 29
  %i.ax = getelementptr inbounds i8, ptr %i.at, i64 %i.aw
  %i.ay = load atomic volatile i64, ptr %i.ax monotonic, align 8
  %i.az = load i64, ptr %i.au, align 8            ; 2 uses
  %.not.i.i = icmp ne i64 %i.ay, %i.az
  %i.ba = zext i1 %.not.i.i to i32
  %spec.select.i.i = add i32 %.01415.i.i, %i.ba
  %i.bb = shl i64 %.01316.i.i, 32
  %sext.i.i.i.1 = ashr exact i64 %i.bb, 29
  %i.bc = getelementptr i8, ptr %i.at, i64 %sext.i.i.i.1
  %i.bd = getelementptr i8, ptr %i.bc, i64 8
  %i.be = load atomic volatile i64, ptr %i.bd monotonic, align 8
  %.not.i.i.1 = icmp ne i64 %i.be, %i.az
  %i.bf = zext i1 %.not.i.i.1 to i32
  %spec.select.i.i.1 = add i32 %spec.select.i.i, %i.bf ; 3 uses
  %i.bg = add nuw nsw i64 %.01316.i.i, 2          ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !3625

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %bb.d
  %i.bh = and i64 %.0.in.in.in.i.i54.i.fr, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.bh, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %.01316.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bg, %.loopexit.i.loopexit.unr-lcssa ]
  %.01415.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.1, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod18 = trunc i64 %.0.in.in.i.i55.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod18)
  %sext.i.i.i.epil = shl i64 %.01316.i.i.epil.init, 32
  %i.bi = ashr exact i64 %sext.i.i.i.epil, 29
  %i.bj = getelementptr inbounds i8, ptr %i.at, i64 %i.bi
  %i.bk = load atomic volatile i64, ptr %i.bj monotonic, align 8
  %i.bl = load i64, ptr %i.au, align 8
  %.not.i.i.epil = icmp ne i64 %i.bk, %i.bl
  %i.bm = zext i1 %.not.i.i.epil to i32
  %spec.select.i.i.epil = add i32 %.01415.i.i.epil.init, %i.bm
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i
  %.014.lcssa.i.i = phi i32 [ 0, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i ], [ %spec.select.i.i.1, %.loopexit.i.loopexit.unr-lcssa ], [ %spec.select.i.i.epil, %.epil.preheader ]
  %i.bn = add i32 %.014.lcssa.i.i, %i.g
  %i.bo = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.bn, i8 noundef zeroext 0, i8 0) #23
  br label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i

_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i: ; preds = %.loopexit.i, %bb.c
  %.sroa.072.0.i = phi ptr [ %i.bo, %.loopexit.i ], [ %i.ad, %bb.c ] ; 4 uses
  %i.bp = load i64, ptr %2, align 8               ; 2 uses
  %i.bq = load i64, ptr %3, align 8
  %i.br = add i64 %i.bp, -1
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = load atomic volatile i64, ptr %i.bs monotonic, align 8
  %i.bu = add i64 %i.bt, 11
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load atomic volatile i16, ptr %i.bv monotonic, align 2
  %i.bx = icmp eq i16 %i.bw, 2119
  %i.by = add i64 %i.bp, 23
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = add i64 %i.bq, -1
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.0.in.in.in.in.i.i56.i = select i1 %i.bx, ptr %i.bz, ptr %i.cc
  %.0.in.in.in.i.i57.i = load i64, ptr %.0.in.in.in.in.i.i56.i, align 8
  %.0.in.in.i.i58.i = lshr i64 %.0.in.in.in.i.i57.i, 32 ; 3 uses
  %.not.i59.i = icmp eq i64 %.0.in.in.i.i58.i, 0
  br i1 %.not.i59.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i, label %.lr.ph.i60.i

.lr.ph.i60.i:                                     ; preds = %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 2 uses
  %i.ce = icmp eq i32 %5, 0
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 568
  br i1 %i.ce, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i60.i, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i
  %.055.us.i.i = phi i32 [ %.1.us.i.i, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i ], [ 0, %.lr.ph.i60.i ] ; 4 uses
  %.02652.us.i.i = phi i64 [ %i.dx, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i ], [ 0, %.lr.ph.i60.i ] ; 5 uses
  %i.ch = load i64, ptr %2, align 8               ; 2 uses
  %i.ci = load i64, ptr %3, align 8
  %i.cj = add i64 %i.ch, -1
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = load atomic volatile i64, ptr %i.ck monotonic, align 8
  %i.cm = add i64 %i.cl, 11
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = load atomic volatile i16, ptr %i.cn monotonic, align 2
  %i.cp = icmp eq i16 %i.co, 2119
  %i.cq = add i64 %i.ch, 23
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = add i64 %i.ci, -1
  %i.ct = inttoptr i64 %i.cs to ptr               ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.0.in.in.in.in.i.i.i.us.i.i = select i1 %i.cp, ptr %i.cr, ptr %i.cu
  %.0.in.in.in.i.i.i.us.i.i = load i64, ptr %.0.in.in.in.in.i.i.i.us.i.i, align 8
  %.0.in.in.i.i.i.us.i.i = lshr i64 %.0.in.in.in.i.i.i.us.i.i, 32
  %i.cv = icmp samesign ult i64 %.02652.us.i.i, %.0.in.in.i.i.i.us.i.i
  br i1 %i.cv, label %bb.e, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i

bb.e:                                             ; preds = %.lr.ph.split.us.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %sext.i.i.us.i.i = shl nuw i64 %.02652.us.i.i, 32
  %i.cx = ashr exact i64 %sext.i.i.us.i.i, 29
  %i.cy = getelementptr inbounds i8, ptr %i.cw, i64 %i.cx
  %i.cz = load atomic volatile i64, ptr %i.cy monotonic, align 8
  %i.da = load i64, ptr %i.cd, align 8
  %i.db = icmp eq i64 %i.cz, %i.da
  br i1 %i.db, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dc = icmp samesign ult i64 %.02652.us.i.i, 67108864
  %i.dd = tail call ptr @_ZN2v88internal7Factory12SizeToStringEmb(ptr noundef nonnull align 1 dereferenceable(1) %1, i64 noundef %.02652.us.i.i, i1 noundef zeroext %i.dc) #23
  %i.de = load i64, ptr %.sroa.072.0.i, align 8
  %i.df = add i64 %i.de, -1                       ; 3 uses
  %i.dg = inttoptr i64 %i.df to ptr
  %i.dh = load i64, ptr %i.dd, align 8            ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dj = sext i32 %.055.us.i.i to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dj ; 2 uses
  store atomic volatile i64 %i.dh, ptr %i.dk monotonic, align 8
  %i.dl = trunc i64 %i.dh to i1
  br i1 %i.dl, label %bb.g, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us.i.i

bb.g:                                             ; preds = %bb.f
  %i.dm = or disjoint i64 %i.df, 1                ; 2 uses
  %i.dn = ptrtoint ptr %i.dk to i64               ; 2 uses
  %i.do = and i64 %i.df, -262144
  %i.dp = inttoptr i64 %i.do to ptr
  %i.dq = load i64, ptr %i.dp, align 262144       ; 2 uses
  %i.dr = and i64 %i.dq, 32
  %.not.i.i.i.i.i.us.i.i = icmp eq i64 %i.dr, 0
  %i.ds = and i64 %i.dq, 25
  %.not37.i.i.i.i.i.us.i.i = icmp eq i64 %i.ds, 0
  br i1 %.not37.i.i.i.i.i.us.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.dt = and i64 %i.dh, -262144
  %i.du = inttoptr i64 %i.dt to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.us.i.i = load i64, ptr %i.du, align 262144
  %i.dv = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.us.i.i, 25
  %.not38.i.i.i.i.i.us.i.i = icmp eq i64 %i.dv, 0
  br i1 %.not38.i.i.i.i.i.us.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.dm, i64 noundef %i.dn, i64 %i.dh) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  br i1 %.not.i.i.i.i.i.us.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us.i.i, label %bb.k, !prof !13

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.dm, i64 %i.dn, i64 %i.dh) #23
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us.i.i

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us.i.i: ; preds = %bb.k, %bb.j, %bb.f
  %i.dw = add i32 %.055.us.i.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us.i.i, %bb.e, %.lr.ph.split.us.i.i
  %.1.us.i.i = phi i32 [ %i.dw, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us.i.i ], [ %.055.us.i.i, %.lr.ph.split.us.i.i ], [ %.055.us.i.i, %bb.e ] ; 2 uses
  %i.dx = add nuw nsw i64 %.02652.us.i.i, 1       ; 2 uses
  %exitcond57.not.i.i = icmp eq i64 %i.dx, %.0.in.in.i.i58.i
  br i1 %exitcond57.not.i.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i, label %.lr.ph.split.us.i.i, !llvm.loop !3629

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i60.i, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i
  %.055.i.i = phi i32 [ %.1.i.i, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i ], [ 0, %.lr.ph.i60.i ] ; 4 uses
  %.02652.i.i = phi i64 [ %i.ga, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i ], [ 0, %.lr.ph.i60.i ] ; 5 uses
  %i.dy = load i64, ptr %2, align 8               ; 2 uses
  %i.dz = load i64, ptr %3, align 8
  %i.ea = add i64 %i.dy, -1
  %i.eb = inttoptr i64 %i.ea to ptr
  %i.ec = load atomic volatile i64, ptr %i.eb monotonic, align 8
  %i.ed = add i64 %i.ec, 11
  %i.ee = inttoptr i64 %i.ed to ptr
  %i.ef = load atomic volatile i16, ptr %i.ee monotonic, align 2
  %i.eg = icmp eq i16 %i.ef, 2119
  %i.eh = add i64 %i.dy, 23
  %i.ei = inttoptr i64 %i.eh to ptr
  %i.ej = add i64 %i.dz, -1
  %i.ek = inttoptr i64 %i.ej to ptr               ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %.0.in.in.in.in.i.i.i.i.i = select i1 %i.eg, ptr %i.ei, ptr %i.el
  %.0.in.in.in.i.i.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i.i.i, align 8
  %.0.in.in.i.i.i.i.i = lshr i64 %.0.in.in.in.i.i.i.i.i, 32
  %i.em = icmp samesign ult i64 %.02652.i.i, %.0.in.in.i.i.i.i.i
  br i1 %i.em, label %bb.l, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i

bb.l:                                             ; preds = %.lr.ph.split.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %sext.i.i.i.i = shl nuw i64 %.02652.i.i, 32     ; 3 uses
  %i.eo = ashr exact i64 %sext.i.i.i.i, 29
  %i.ep = getelementptr inbounds i8, ptr %i.en, i64 %i.eo
  %i.eq = load atomic volatile i64, ptr %i.ep monotonic, align 8
  %i.er = load i64, ptr %i.cd, align 8
  %i.es = icmp eq i64 %i.eq, %i.er
  br i1 %i.es, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.et = icmp samesign ult i64 %.02652.i.i, 2147483648
  br i1 %i.et, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.eu = load ptr, ptr %i.cf, align 8            ; 2 uses
  %i.ev = load ptr, ptr %i.cg, align 8
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %bb.o, label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i, !prof !5

bb.o:                                             ; preds = %bb.n
  %i.ex = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %1) #23
  br label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i

_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i = phi ptr [ %i.ex, %bb.o ], [ %i.eu, %bb.n ] ; 2 uses
  %i.ey = ptrtoint ptr %.0.i.i.i.i.i.i to i64
  %i.ez = add i64 %i.ey, 8
  %i.fa = inttoptr i64 %i.ez to ptr
  store ptr %i.fa, ptr %i.cf, align 8
  store i64 %sext.i.i.i.i, ptr %.0.i.i.i.i.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i

bb.p:                                             ; preds = %bb.m
  %i.fb = uitofp nneg i64 %.02652.i.i to double
  %i.fc = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #23 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = add i64 %i.fd, -1
  %i.ff = inttoptr i64 %i.fe to ptr
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store double %i.fb, ptr %i.fg, align 1
  %.pre.i.i = load i64, ptr %i.fc, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i

_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i: ; preds = %bb.p, %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i
  %i.fh = phi i64 [ %sext.i.i.i.i, %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i ], [ %.pre.i.i, %bb.p ] ; 5 uses
  %i.fi = load i64, ptr %.sroa.072.0.i, align 8
  %i.fj = add i64 %i.fi, -1                       ; 3 uses
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = sext i32 %.055.i.i to i64
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.fm ; 2 uses
  store atomic volatile i64 %i.fh, ptr %i.fn monotonic, align 8
  %i.fo = trunc i64 %i.fh to i1
  br i1 %i.fo, label %bb.q, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i

bb.q:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i
  %i.fp = or disjoint i64 %i.fj, 1                ; 2 uses
  %i.fq = ptrtoint ptr %i.fn to i64               ; 2 uses
  %i.fr = and i64 %i.fj, -262144
  %i.fs = inttoptr i64 %i.fr to ptr
  %i.ft = load i64, ptr %i.fs, align 262144       ; 2 uses
  %i.fu = and i64 %i.ft, 32
  %.not.i.i.i.i.i27.i.i = icmp eq i64 %i.fu, 0
  %i.fv = and i64 %i.ft, 25
  %.not37.i.i.i.i.i28.i.i = icmp eq i64 %i.fv, 0
  br i1 %.not37.i.i.i.i.i28.i.i, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.fw = and i64 %i.fh, -262144
  %i.fx = inttoptr i64 %i.fw to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i29.i.i = load i64, ptr %i.fx, align 262144
  %i.fy = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i29.i.i, 25
  %.not38.i.i.i.i.i30.i.i = icmp eq i64 %i.fy, 0
  br i1 %.not38.i.i.i.i.i30.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.fp, i64 noundef %i.fq, i64 %i.fh) #23
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  br i1 %.not.i.i.i.i.i27.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i, label %bb.u, !prof !13

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.fp, i64 %i.fq, i64 %i.fh) #23
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i: ; preds = %bb.u, %bb.t, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i
  %i.fz = add i32 %.055.i.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i, %bb.l, %.lr.ph.split.i.i
  %.1.i.i = phi i32 [ %i.fz, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i ], [ %.055.i.i, %.lr.ph.split.i.i ], [ %.055.i.i, %bb.l ] ; 2 uses
  %i.ga = add nuw nsw i64 %.02652.i.i, 1          ; 2 uses
  %exitcond.not.i61.i = icmp eq i64 %i.ga, %.0.in.in.i.i58.i
  br i1 %exitcond.not.i61.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i, label %.lr.ph.split.i.i, !llvm.loop !3629

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i: ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i
  %.0.lcssa.i.i = phi i32 [ 0, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i ], [ %.1.us.i.i, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.us.i.i ], [ %.1.i.i, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit.i.i ] ; 4 uses
  %i.gb = load i64, ptr %4, align 8               ; 2 uses
  %i.gc = load i64, ptr %.sroa.072.0.i, align 8   ; 3 uses
  %i.gd = icmp slt i64 %i.e, 0
  br i1 %i.gd, label %bb.v, label %bb.x

bb.v:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i
  %i.ge = add i64 %i.gb, -1
  %i.gf = inttoptr i64 %i.ge to ptr
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load i64, ptr %i.gg, align 8
  %i.gi = lshr i64 %i.gh, 32
  %i.gj = trunc nuw i64 %i.gi to i32
  %i.gk = add i64 %i.gc, -1
  %i.gl = inttoptr i64 %i.gk to ptr               ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = load i64, ptr %i.gm, align 8
  %i.go = lshr i64 %i.gn, 32
  %i.gp = trunc nuw i64 %i.go to i32              ; 2 uses
  %i.gq = sub i32 %i.gp, %.0.lcssa.i.i
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %i.gq, i32 %i.gj) ; 3 uses
  %i.gr = add i32 %.sroa.speculated.i.i, %.0.lcssa.i.i ; 2 uses
  %i.gs = sub nsw i32 %i.gp, %i.gr                ; 2 uses
  %i.gt = icmp sgt i32 %i.gs, 0
  br i1 %i.gt, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gv = sext i32 %i.gr to i64
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.gu, i64 %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.gy = load i64, ptr %i.gx, align 8
  %i.gz = zext nneg i32 %i.gs to i64
  %i.ha = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.gy, i64 %i.gz, ptr nonnull %i.gw) #23, !srcloc !3333 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i
  %.0.i62.i = phi i32 [ %i.g, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i ], [ %.sroa.speculated.i.i, %bb.w ], [ %.sroa.speculated.i.i, %bb.v ] ; 2 uses
  %i.hb = icmp eq i32 %.0.i62.i, 0
  br i1 %i.hb, label %bb.y, label %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i

_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i: ; preds = %bb.x
  %i.hc = sext i32 %.0.lcssa.i.i to i64
  %i.hd = add i64 %i.gc, 15
  %.idx.i.i.i.i = shl nsw i64 %i.hc, 3
  %i.he = add i64 %i.hd, %.idx.i.i.i.i
  %i.hf = add i64 %i.gb, 15
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 55464
  tail call void @_ZN2v88internal4Heap9CopyRangeINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S7_iNS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(2992) %i.hg, i64 %i.gc, i64 %i.he, i64 %i.hf, i32 noundef %.0.i62.i, i32 noundef 4) #23
  br label %bb.y

bb.y:                                             ; preds = %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i, %bb.x
  %i.hh = add i32 %.0.lcssa.i.i, %i.g
  %i.hi = tail call ptr @_ZN2v88internal10FixedArray16RightTrimOrEmptyINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEES5_PNS0_7IsolateES5_i(ptr noundef nonnull %1, ptr nonnull %.sroa.072.0.i, i32 noundef %i.hh) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit: ; preds = %bb.b, %bb.y
  %.sroa.086.1.i = phi ptr [ null, %bb.b ], [ %i.hi, %bb.y ]
  ret ptr %.sroa.086.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE27AddElementsToKeyAccumulatorENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8                ; 5 uses
  %i.b = load i64, ptr %1, align 8
  %i.c = add i64 %i.b, 15
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 560 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
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
  %i.o = load i64, ptr %1, align 8                ; 2 uses
  %i.p = add i64 %i.o, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.s = add i64 %i.r, 11
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i16, ptr %i.t monotonic, align 2
  %i.v = icmp eq i16 %i.u, 2119
  %i.w = add i64 %i.o, 23
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = add i64 %i.e, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.0.in.in.in.in.i.i.i = select i1 %i.v, ptr %i.x, ptr %i.aa
  %.0.in.in.in.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i, align 8
  %.0.in.in.i.i.i = lshr i64 %.0.in.in.in.i.i.i, 32 ; 2 uses
  %.not45.i = icmp eq i64 %.0.in.in.i.i.i, 0
  br i1 %.not45.i, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i
  %.02246.i = phi i64 [ 0, %.lr.ph.i ], [ %i.at, %bb.f ] ; 2 uses
  %i.ac = load i64, ptr %.0.i.i.i, align 8
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %sext.i.i = shl i64 %.02246.i, 32
  %i.ag = ashr exact i64 %sext.i.i, 29
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag ; 2 uses
  %i.ai = load atomic volatile i64, ptr %i.ah monotonic, align 8
  %i.aj = load i64, ptr %i.ab, align 8
  %.not44.i = icmp eq i64 %i.ai, %i.aj
  br i1 %.not44.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = load atomic volatile i64, ptr %i.ah monotonic, align 8
  %i.al = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.am = load ptr, ptr %i.h, align 8
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.e, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i, !prof !5

bb.e:                                             ; preds = %bb.d
  %i.ao = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.a) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i26.i = phi ptr [ %i.ao, %bb.e ], [ %i.al, %bb.d ] ; 3 uses
  %i.ap = ptrtoint ptr %.0.i.i26.i to i64
  %i.aq = add i64 %i.ap, 8
  %i.ar = inttoptr i64 %i.aq to ptr
  store ptr %i.ar, ptr %i.f, align 8
  store i64 %i.ak, ptr %.0.i.i26.i, align 8
  %i.as = tail call noundef zeroext i1 @_ZN2v88internal14KeyAccumulator6AddKeyENS0_12DirectHandleINS0_6ObjectEEENS0_16AddKeyConversionE(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr nonnull %.0.i.i26.i, i32 noundef %3) #23
  br i1 %i.as, label %bb.f, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit

bb.f:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i, %bb.c
  %i.at = add nuw nsw i64 %.02246.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.at, %.0.in.in.i.i.i
  br i1 %exitcond.not.i, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit, label %bb.c, !llvm.loop !3630

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i, %bb.f, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.not.lcssa.i = phi i1 [ true, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ false, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i ], [ true, %bb.f ]
  ret i1 %.not.lcssa.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE22TransitionElementsKindEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_3MapEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr %2, ptr %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i.i, align 8
  %i.n = add i64 %i.d, 14
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i8, ptr %i.o, align 1               ; 3 uses
  %i.q = lshr i8 %i.p, 2                          ; 4 uses
  %i.r = load i64, ptr %3, align 8
  %i.s = add i64 %i.r, 14
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i8, ptr %i.t, align 1
  %i.v = lshr i8 %i.u, 2                          ; 3 uses
  %i.w = trunc i8 %i.q to i1
  %i.x = icmp ult i8 %i.p, 24
  %i.y = and i1 %i.x, %i.w
  br i1 %i.y, label %bb.c, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  switch i8 %i.v, label %bb.f [
    i8 0, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i
    i8 4, label %bb.d
    i8 2, label %bb.e
    i8 6, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  ]

bb.d:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.e:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.f:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.0.i = phi i8 [ %i.v, %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.v, %bb.f ], [ 5, %bb.d ], [ 3, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %.not.i = icmp eq i8 %i.q, %.0.i
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE26TransitionElementsKindImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_3MapEEE.exit, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i: ; preds = %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i, %bb.c
  %.0103.i = phi i8 [ %.0.i, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i ], [ 7, %bb.c ] ; 2 uses
  %i.z = load i64, ptr %2, align 8
  %i.aa = add i64 %i.z, 15
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ae = load ptr, ptr %i.g, align 8
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.g, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i, !prof !5

bb.g:                                             ; preds = %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  %i.ag = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i: ; preds = %bb.g, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  %.0.i.i38.i = phi ptr [ %i.ag, %bb.g ], [ %i.ad, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i ] ; 4 uses
  %i.ah = ptrtoint ptr %.0.i.i38.i to i64
  %i.ai = add i64 %i.ah, 8
  %i.aj = inttoptr i64 %i.ai to ptr
  store ptr %i.aj, ptr %i.e, align 8
  store i64 %i.ac, ptr %.0.i.i38.i, align 8
  %i.ak = load i64, ptr %2, align 8
  %i.al = add i64 %i.ak, 15
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 864
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = icmp eq i64 %i.an, %i.ap
  br i1 %i.aq, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i
  %i.ar = and i8 %i.p, -8
  %i.as = icmp eq i8 %i.ar, 16
  %i.at = and i8 %.0103.i, -2
  %i.au = icmp eq i8 %i.at, 4
  %i.av = xor i1 %i.as, %i.au
  br i1 %i.av, label %bb.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.h, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i
  tail call void @_ZN2v88internal8JSObject12MigrateToMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEEi(ptr noundef nonnull %1, ptr nonnull %2, ptr nonnull %3, i32 noundef 0) #23
  br label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

bb.i:                                             ; preds = %bb.h
  %i.aw = add i64 %i.an, -1
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = lshr i64 %i.az, 32
  %i.bb = trunc nuw i64 %i.ba to i32
  %i.bc = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE27ConvertElementsWithCapacityEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEES5_jjj(ptr noundef nonnull %1, ptr nonnull readonly %2, ptr nonnull readonly %.0.i.i38.i, i8 noundef zeroext %i.q, i32 noundef %i.bb, i32 noundef 0) ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.j, label %_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i, !prof !5

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.27) #24
  unreachable

_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i: ; preds = %bb.i
  tail call void @_ZN2v88internal8JSObject12MigrateToMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEEi(ptr noundef nonnull %1, ptr nonnull %2, ptr nonnull %3, i32 noundef 0) #23
  %i.be = load i64, ptr %2, align 8               ; 4 uses
  %i.bf = load i64, ptr %i.bc, align 8            ; 5 uses
  %i.bg = add i64 %i.be, 15                       ; 3 uses
  %i.bh = inttoptr i64 %i.bg to ptr
  store atomic volatile i64 %i.bf, ptr %i.bh monotonic, align 8
  %i.bi = trunc i64 %i.bf to i1
  br i1 %i.bi, label %bb.k, label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

bb.k:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i
  %i.bj = and i64 %i.be, -262144
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load i64, ptr %i.bk, align 262144       ; 2 uses
  %i.bm = and i64 %i.bl, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.bm, 0
  %i.bn = and i64 %i.bl, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not37.i.i.i.i.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bo = and i64 %i.bf, -262144
  %i.bp = inttoptr i64 %i.bo to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bp, align 262144
  %i.bq = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not38.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.be, i64 noundef %i.bg, i64 %i.bf) #23
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i, label %bb.o, !prof !13

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.be, i64 %i.bg, i64 %i.bf) #23
  br label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i: ; preds = %bb.o, %bb.n, %_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i, %.critedge.i
  %i.br = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1925), align 1, !range !16, !noundef !17
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.p, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_37FastHoleyFrozenObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE11EEEE26TransitionElementsKindImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_3MapEEE.exit
end_hunk_21
begin_hunk_22_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE8ValidateEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE:bb.a
  %i.x = icmp eq i16 %i.w, 2061
  br i1 %i.x, label %bb.d, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit

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
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit: ; preds = %bb.a, %bb.b, %bb.c, %_ZNK2v88internal12JSTypedArray9GetLengthEv.exit.i
  ret void
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE10HasElementEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEjNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2, i32 noundef %3, i64 %4, i32 %5) unnamed_addr #10 align 2 {
bb.a:
  %i.a = zext i32 %3 to i64
  %i.b = add i64 %2, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 2119
  %i.i = add i64 %2, 23
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = add i64 %4, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.0.in.in.in.in.i.i.i = select i1 %i.h, ptr %i.j, ptr %i.m
  %.0.in.in.in.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i, align 8
  %.0.in.in.i.i.i = lshr i64 %.0.in.in.in.i.i.i, 32
  %i.n = icmp samesign ugt i64 %.0.in.in.i.i.i, %i.a
  ret i1 %i.n
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE8HasEntryEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENS0_13InternalIndexE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2, i64 %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = add i64 %2, 15
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %sext.i = shl i64 %3, 32
  %i.g = ashr exact i64 %sext.i, 29
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 %i.g
  %i.i = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp ne i64 %i.i, %i.k
  ret i1 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE3GetEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %2, i64 %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %sext.i.i = shl i64 %3, 32
  %i.h = ashr exact i64 %sext.i.i, 29
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE15GetInternalImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE15GetInternalImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE15GetInternalImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi ptr [ %i.p, %bb.b ], [ %i.l, %bb.a ] ; 3 uses
  %i.q = ptrtoint ptr %.0.i.i.i to i64
  %i.r = add i64 %i.q, 8
  %i.s = inttoptr i64 %i.r to ptr
  store ptr %i.s, ptr %i.k, align 8
  store i64 %i.j, ptr %.0.i.i.i, align 8
  ret ptr %.0.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE9GetAtomicEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %2, i64 %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %sext.i = shl i64 %3, 32
  %i.h = ashr exact i64 %sext.i, 29
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  %i.j = load atomic volatile i64, ptr %i.i seq_cst, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_127SharedArrayElementsAccessor21GetAtomicInternalImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexENS_15SeqCstAccessTagE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal12_GLOBAL__N_127SharedArrayElementsAccessor21GetAtomicInternalImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexENS_15SeqCstAccessTagE.exit

_ZN2v88internal12_GLOBAL__N_127SharedArrayElementsAccessor21GetAtomicInternalImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexENS_15SeqCstAccessTagE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.p, %bb.b ], [ %i.l, %bb.a ] ; 3 uses
  %i.q = ptrtoint ptr %.0.i.i to i64
  %i.r = add i64 %i.q, 8
  %i.s = inttoptr i64 %i.r to ptr
  store ptr %i.s, ptr %i.k, align 8
  store i64 %i.j, ptr %.0.i.i, align 8
  ret ptr %.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE12HasAccessorsENS0_6TaggedINS0_8JSObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1) unnamed_addr #12 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef range(i64 0, 4294967296) i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE16NumberOfElementsEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2) unnamed_addr #10 align 2 {
bb.a:
  %i.a = add i64 %2, 15
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %2, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = icmp eq i16 %i.i, 2119
  %i.k = add i64 %2, 23
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = add i64 %i.c, -1
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.0.in.in.in.in.i.i = select i1 %i.j, ptr %i.l, ptr %i.o
  %.0.in.in.in.i.i = load i64, ptr %.0.in.in.in.in.i.i, align 8
  %.0.in.in.in.i.i.fr = freeze i64 %.0.in.in.in.i.i ; 2 uses
  %.0.in.in.i.i = lshr i64 %.0.in.in.in.i.i.fr, 32 ; 4 uses
  %.not17.i = icmp eq i64 %.0.in.in.i.i, 0
  br i1 %.not17.i, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 2 uses
  %i.r = icmp eq i64 %.0.in.in.i.i, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.0.in.in.i.i, 4294967294
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.01316.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ac, %bb.b ] ; 3 uses
  %.01415.i = phi i32 [ 0, %.lr.ph.i.new ], [ %spec.select.i.1, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %sext.i.i = shl i64 %.01316.i, 32
  %i.s = ashr exact i64 %sext.i.i, 29
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 %i.s
  %i.u = load atomic volatile i64, ptr %i.t monotonic, align 8
  %i.v = load i64, ptr %i.q, align 8              ; 2 uses
  %.not.i = icmp ne i64 %i.u, %i.v
  %i.w = zext i1 %.not.i to i32
  %spec.select.i = add i32 %.01415.i, %i.w
  %i.x = shl i64 %.01316.i, 32
  %sext.i.i.1 = ashr exact i64 %i.x, 29
  %i.y = getelementptr i8, ptr %i.p, i64 %sext.i.i.1
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %i.aa = load atomic volatile i64, ptr %i.z monotonic, align 8
  %.not.i.1 = icmp ne i64 %i.aa, %i.v
  %i.ab = zext i1 %.not.i.1 to i32
  %spec.select.i.1 = add i32 %spec.select.i, %i.ab ; 3 uses
  %i.ac = add nuw nsw i64 %.01316.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !3643

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %i.ad = and i64 %.0.in.in.in.i.i.fr, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.ad, 0
  br i1 %lcmp.mod.not, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.01316.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ac, %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa ]
  %.01415.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %spec.select.i.1, %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod6 = trunc i64 %.0.in.in.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod6)
  %sext.i.i.epil = shl i64 %.01316.i.epil.init, 32
  %i.ae = ashr exact i64 %sext.i.i.epil, 29
  %i.af = getelementptr inbounds i8, ptr %i.p, i64 %i.ae
  %i.ag = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.ah = load i64, ptr %i.q, align 8
  %.not.i.epil = icmp ne i64 %i.ag, %i.ah
  %i.ai = zext i1 %.not.i.epil to i32
  %spec.select.i.epil = add i32 %.01415.i.epil.init, %i.ai
  br label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit: ; preds = %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa, %.epil.preheader
  %spec.select.i.lcssa = phi i32 [ %spec.select.i.1, %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa ], [ %spec.select.i.epil, %.epil.preheader ]
  %i.aj = zext i32 %spec.select.i.lcssa to i64
  br label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit, %bb.a
  %.014.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.aj, %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEE.exit.loopexit ]
  ret i64 %.014.lcssa.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE9SetLengthEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 8 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i, align 8
  %i.n = load i64, ptr %2, align 8                ; 3 uses
  %i.o = add i64 %i.n, 23
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8              ; 4 uses
  %i.r = and i64 %i.q, 1
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.c, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.t = icmp sgt i64 %i.q, -1
  br i1 %i.t, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread84.i, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i, !prof !107

_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread84.i: ; preds = %bb.c
  %i.u = lshr i64 %i.q, 32
  %i.v = trunc nuw nsw i64 %i.u to i32
  br label %bb.e

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i: ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.w = add nsw i64 %i.q, -1
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = load atomic volatile i64, ptr %i.x monotonic, align 8
  %i.z = add i64 %i.y, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = icmp eq i16 %i.ab, 130
  br i1 %i.ac, label %bb.d, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i, !prof !107

bb.d:                                             ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.ad, align 8 ; 2 uses
  %i.ae = fadd double %.0.copyload.i.i.i.i.i.i.i, f0x4330000000000000
  %i.af = bitcast double %i.ae to i64             ; 2 uses
  %.mask.i.i.i.i = and i64 %i.af, -4294967296
  %i.ag = icmp eq i64 %.mask.i.i.i.i, 4841369599423283200
  br i1 %i.ag, label %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i, !prof !107

_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i: ; preds = %bb.d
  %i.ah = trunc i64 %i.af to i32                  ; 3 uses
  %i.ai = uitofp i32 %i.ah to double
  %i.aj = fcmp oeq double %.0.copyload.i.i.i.i.i.i.i, %i.ai
  %i.ak = icmp ne i32 %i.ah, -1
  %or.cond.i = and i1 %i.ak, %i.aj
  br i1 %or.cond.i, label %bb.e, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i, !prof !3326

_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i: ; preds = %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i, %bb.d, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.26) #24
  unreachable

bb.e:                                             ; preds = %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i, %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread84.i
  %.086.i = phi i32 [ %i.v, %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread84.i ], [ %i.ah, %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i ] ; 2 uses
  %i.al = icmp eq i32 %3, %.086.i
  br i1 %i.al, label %_ZN2v88internal12_GLOBAL__N_132FastSealedObjectElementsAccessorINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE13SetLengthImplEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEjNSA_INS0_14FixedArrayBaseEEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = icmp eq i32 %.086.i, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1856
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ao = add i64 %i.n, -1
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load atomic volatile i64, ptr %i.ap monotonic, align 8
  %i.ar = add i64 %i.aq, 14
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load i8, ptr %i.as, align 1
  %i.au = lshr i8 %i.at, 2
  %i.av = load ptr, ptr @_ZN2v88internal16ElementsAccessor19elements_accessors_E, align 8
  %i.aw = zext nneg i8 %i.au to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 208
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = tail call ptr %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull %1, ptr nonnull %2) #23, !inline_history !3644
  %.pre.i = load i64, ptr %2, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bd = phi i64 [ %i.n, %bb.g ], [ %.pre.i, %bb.h ]
  %.sroa.036.0.i = phi ptr [ %i.an, %bb.g ], [ %i.bc, %bb.h ] ; 2 uses
  %i.be = add i64 %i.bd, -1
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = load atomic volatile i64, ptr %i.bf monotonic, align 8
  %i.bh = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.bi = load ptr, ptr %i.g, align 8
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %bb.j, label %_ZN2v88internal13direct_handleINS0_3MapEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i, !prof !5

bb.j:                                             ; preds = %bb.i
  %i.bk = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal13direct_handleINS0_3MapEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i

_ZN2v88internal13direct_handleINS0_3MapEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.bk, %bb.j ], [ %i.bh, %bb.i ] ; 3 uses
  %i.bl = ptrtoint ptr %.0.i.i.i.i to i64
  %i.bm = add i64 %i.bl, 8
  %i.bn = inttoptr i64 %i.bm to ptr
  store ptr %i.bn, ptr %i.e, align 8
  store i64 %i.bg, ptr %.0.i.i.i.i, align 8
  %i.bo = tail call ptr @_ZN2v88internal3Map4CopyEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKcNS0_18TransitionKindFlagE(ptr noundef nonnull %1, ptr nonnull %.0.i.i.i.i, ptr noundef nonnull @.str.29, i32 noundef 3) #23 ; 3 uses
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = add i64 %i.bp, 15
  %i.br = inttoptr i64 %i.bq to ptr               ; 2 uses
  %i.bs = load atomic volatile i32, ptr %i.br monotonic, align 4
  %i.bt = and i32 %i.bs, -134217729
  store atomic volatile i32 %i.bt, ptr %i.br monotonic, align 4
  %i.bu = load i64, ptr %i.bo, align 8
  %i.bv = add i64 %i.bu, 14
  %i.bw = inttoptr i64 %i.bv to ptr               ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = and i8 %i.bx, 3
  %i.bz = or disjoint i8 %i.by, 52
  store i8 %i.bz, ptr %i.bw, align 1
  tail call void @_ZN2v88internal8JSObject12MigrateToMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEEi(ptr noundef nonnull %1, ptr nonnull %2, ptr nonnull %i.bo, i32 noundef 0) #23
  %i.ca = icmp eq ptr %.sroa.036.0.i, null
  br i1 %i.ca, label %_ZN2v88internal8JSObject12set_elementsENS0_6TaggedINS0_14FixedArrayBaseEEENS0_16WriteBarrierModeE.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal13direct_handleINS0_3MapEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i
  %i.cb = load i64, ptr %2, align 8               ; 4 uses
  %i.cc = load i64, ptr %.sroa.036.0.i, align 8   ; 5 uses
  %i.cd = add i64 %i.cb, 15                       ; 3 uses
  %i.ce = inttoptr i64 %i.cd to ptr
  store atomic volatile i64 %i.cc, ptr %i.ce monotonic, align 8
  %i.cf = trunc i64 %i.cc to i1
  br i1 %i.cf, label %bb.l, label %_ZN2v88internal8JSObject12set_elementsENS0_6TaggedINS0_14FixedArrayBaseEEENS0_16WriteBarrierModeE.exit.i

bb.l:                                             ; preds = %bb.k
  %i.cg = and i64 %i.cb, -262144
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = load i64, ptr %i.ch, align 262144       ; 2 uses
  %i.cj = and i64 %i.ci, 32
  %.not.i.i.i.i = icmp eq i64 %i.cj, 0
  %i.ck = and i64 %i.ci, 25
  %.not37.i.i.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not37.i.i.i.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cl = and i64 %i.cc, -262144
  %i.cm = inttoptr i64 %i.cl to ptr
  %.sroa.0.0.copyload.i.i.i.i.i41.i = load i64, ptr %i.cm, align 262144
  %i.cn = and i64 %.sroa.0.0.copyload.i.i.i.i.i41.i, 25
  %.not38.i.i.i.i = icmp eq i64 %i.cn, 0
  br i1 %.not38.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.cb, i64 noundef %i.cd, i64 %i.cc) #23
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  br i1 %.not.i.i.i.i, label %_ZN2v88internal8JSObject12set_elementsENS0_6TaggedINS0_14FixedArrayBaseEEENS0_16WriteBarrierModeE.exit.i, label %bb.p, !prof !13

bb.p:                                             ; preds = %bb.o
end_hunk_22
begin_hunk_23_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE21PrependElementIndicesEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE:bb.a
bb.k:                                             ; preds = %.lr.ph.split.i.i
  %i.cx = icmp samesign ult i64 %.02651.i.i, 2147483648
  br i1 %i.cx, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cy = shl nuw nsw i64 %.02651.i.i, 32         ; 2 uses
  %i.cz = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.da = load ptr, ptr %i.aw, align 8
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %bb.m, label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i, !prof !5

bb.m:                                             ; preds = %bb.l
  %i.dc = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %1) #23
  br label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i

_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i = phi ptr [ %i.dc, %bb.m ], [ %i.cz, %bb.l ] ; 2 uses
  %i.dd = ptrtoint ptr %.0.i.i.i.i.i.i to i64
  %i.de = add i64 %i.dd, 8
  %i.df = inttoptr i64 %i.de to ptr
  store ptr %i.df, ptr %i.av, align 8
  store i64 %i.cy, ptr %.0.i.i.i.i.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i

bb.n:                                             ; preds = %bb.k
  %i.dg = uitofp nneg i64 %.02651.i.i to double
  %i.dh = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #23 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = add i64 %i.di, -1
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store double %i.dg, ptr %i.dl, align 1
  %.pre.i.i = load i64, ptr %i.dh, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i

_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i: ; preds = %bb.n, %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i
  %i.dm = phi i64 [ %i.cy, %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i.i ], [ %.pre.i.i, %bb.n ] ; 5 uses
  %i.dn = load i64, ptr %.sroa.072.0.i, align 8
  %i.do = add i64 %i.dn, -1                       ; 3 uses
  %i.dp = inttoptr i64 %i.do to ptr
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = sext i32 %.054.i.i to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.dr ; 2 uses
  store atomic volatile i64 %i.dm, ptr %i.ds monotonic, align 8
  %i.dt = trunc i64 %i.dm to i1
  br i1 %i.dt, label %bb.o, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i

bb.o:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i
  %i.du = or disjoint i64 %i.do, 1                ; 2 uses
  %i.dv = ptrtoint ptr %i.ds to i64               ; 2 uses
  %i.dw = and i64 %i.do, -262144
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = load i64, ptr %i.dx, align 262144       ; 2 uses
  %i.dz = and i64 %i.dy, 32
  %.not.i.i.i.i.i27.i.i = icmp eq i64 %i.dz, 0
  %i.ea = and i64 %i.dy, 25
  %.not37.i.i.i.i.i28.i.i = icmp eq i64 %i.ea, 0
  br i1 %.not37.i.i.i.i.i28.i.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.eb = and i64 %i.dm, -262144
  %i.ec = inttoptr i64 %i.eb to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i29.i.i = load i64, ptr %i.ec, align 262144
  %i.ed = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i29.i.i, 25
  %.not38.i.i.i.i.i30.i.i = icmp eq i64 %i.ed, 0
  br i1 %.not38.i.i.i.i.i30.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.du, i64 noundef %i.dv, i64 %i.dm) #23
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  br i1 %.not.i.i.i.i.i27.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i, label %bb.s, !prof !13

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.du, i64 %i.dv, i64 %i.dm) #23
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i: ; preds = %bb.s, %bb.r, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromSizeILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEm.exit.i.i
  %i.ee = add i32 %.054.i.i, 1
  br label %bb.t

bb.t:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i, %.lr.ph.split.i.i
  %.1.i.i = phi i32 [ %i.ee, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i ], [ %.054.i.i, %.lr.ph.split.i.i ] ; 2 uses
  %i.ef = add nuw nsw i64 %.02651.i.i, 1          ; 2 uses
  %exitcond.not.i61.i = icmp eq i64 %i.ef, %.0.in.in.i.i58.i
  br i1 %exitcond.not.i61.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i, label %.lr.ph.split.i.i, !llvm.loop !3648

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i: ; preds = %bb.t, %bb.j, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i
  %.0.lcssa.i.i = phi i32 [ 0, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i ], [ %.1.us.i.i, %bb.j ], [ %.1.i.i, %bb.t ] ; 3 uses
  %i.eg = load i64, ptr %4, align 8               ; 2 uses
  %i.eh = load i64, ptr %.sroa.072.0.i, align 8   ; 3 uses
  %i.ei = icmp slt i64 %i.e, 0
  br i1 %i.ei, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i
  %i.ej = add i64 %i.eg, -1
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load i64, ptr %i.el, align 8
  %i.en = lshr i64 %i.em, 32
  %i.eo = trunc nuw i64 %i.en to i32
  %i.ep = add i64 %i.eh, -1
  %i.eq = inttoptr i64 %i.ep to ptr               ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load i64, ptr %i.er, align 8
  %i.et = lshr i64 %i.es, 32
  %i.eu = trunc nuw i64 %i.et to i32              ; 2 uses
  %i.ev = sub i32 %i.eu, %.0.lcssa.i.i
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %i.ev, i32 %i.eo) ; 3 uses
  %i.ew = add i32 %.sroa.speculated.i.i, %.0.lcssa.i.i ; 2 uses
  %i.ex = sub nsw i32 %i.eu, %i.ew                ; 2 uses
  %i.ey = icmp sgt i32 %i.ex, 0
  br i1 %i.ey, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.fa = sext i32 %i.ew to i64
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = zext nneg i32 %i.ex to i64
  %i.ff = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.fd, i64 %i.fe, ptr nonnull %i.fb) #23, !srcloc !3333 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i
  %.0.i62.i = phi i32 [ %i.g, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit.i ], [ %.sroa.speculated.i.i, %bb.v ], [ %.sroa.speculated.i.i, %bb.u ] ; 2 uses
  %i.fg = icmp eq i32 %.0.i62.i, 0
  br i1 %i.fg, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit, label %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i

_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i: ; preds = %bb.w
  %i.fh = sext i32 %.0.lcssa.i.i to i64
  %i.fi = add i64 %i.eh, 15
  %.idx.i.i.i.i = shl nsw i64 %i.fh, 3
  %i.fj = add i64 %i.fi, %.idx.i.i.i.i
  %i.fk = add i64 %i.eg, 15
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 55464
  tail call void @_ZN2v88internal4Heap9CopyRangeINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S7_iNS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(2992) %i.fl, i64 %i.eh, i64 %i.fj, i64 %i.fk, i32 noundef %.0.i62.i, i32 noundef 4) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit: ; preds = %bb.b, %bb.w, %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i
  %.sroa.086.1.i = phi ptr [ null, %bb.b ], [ %.sroa.072.0.i, %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i ], [ %.sroa.072.0.i, %bb.w ]
  ret ptr %.sroa.086.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE27AddElementsToKeyAccumulatorENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8                ; 5 uses
  %i.b = load i64, ptr %1, align 8
  %i.c = add i64 %i.b, 15
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 560 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
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
  %i.o = load i64, ptr %1, align 8                ; 2 uses
  %i.p = add i64 %i.o, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.s = add i64 %i.r, 11
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i16, ptr %i.t monotonic, align 2
  %i.v = icmp eq i16 %i.u, 2119
  %i.w = add i64 %i.o, 23
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = add i64 %i.e, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.0.in.in.in.in.i.i.i = select i1 %i.v, ptr %i.x, ptr %i.aa
  %.0.in.in.in.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i, align 8
  %.0.in.in.i.i.i = lshr i64 %.0.in.in.in.i.i.i, 32 ; 2 uses
  %.not45.i = icmp eq i64 %.0.in.in.i.i.i, 0
  br i1 %.not45.i, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i
  %.02246.i = phi i64 [ 0, %.lr.ph.i ], [ %i.at, %bb.f ] ; 2 uses
  %i.ac = load i64, ptr %.0.i.i.i, align 8
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %sext.i.i = shl i64 %.02246.i, 32
  %i.ag = ashr exact i64 %sext.i.i, 29
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag ; 2 uses
  %i.ai = load atomic volatile i64, ptr %i.ah monotonic, align 8
  %i.aj = load i64, ptr %i.ab, align 8
  %.not44.i = icmp eq i64 %i.ai, %i.aj
  br i1 %.not44.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = load atomic volatile i64, ptr %i.ah monotonic, align 8
  %i.al = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.am = load ptr, ptr %i.h, align 8
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.e, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i, !prof !5

bb.e:                                             ; preds = %bb.d
  %i.ao = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.a) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i26.i = phi ptr [ %i.ao, %bb.e ], [ %i.al, %bb.d ] ; 3 uses
  %i.ap = ptrtoint ptr %.0.i.i26.i to i64
  %i.aq = add i64 %i.ap, 8
  %i.ar = inttoptr i64 %i.aq to ptr
  store ptr %i.ar, ptr %i.f, align 8
  store i64 %i.ak, ptr %.0.i.i26.i, align 8
  %i.as = tail call noundef zeroext i1 @_ZN2v88internal14KeyAccumulator6AddKeyENS0_12DirectHandleINS0_6ObjectEEENS0_16AddKeyConversionE(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr nonnull %.0.i.i26.i, i32 noundef %3) #23
  br i1 %i.as, label %bb.f, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit

bb.f:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i, %bb.c
  %i.at = add nuw nsw i64 %.02246.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.at, %.0.in.in.i.i.i
  br i1 %exitcond.not.i, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit, label %bb.c, !llvm.loop !3649

_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i, %bb.f, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.not.lcssa.i = phi i1 [ true, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ false, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit.i ], [ true, %bb.f ]
  ret i1 %.not.lcssa.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE22TransitionElementsKindEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_3MapEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr %2, ptr %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i.i, align 8
  %i.n = add i64 %i.d, 14
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i8, ptr %i.o, align 1               ; 3 uses
  %i.q = lshr i8 %i.p, 2                          ; 4 uses
  %i.r = load i64, ptr %3, align 8
  %i.s = add i64 %i.r, 14
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i8, ptr %i.t, align 1
  %i.v = lshr i8 %i.u, 2                          ; 3 uses
  %i.w = trunc i8 %i.q to i1
  %i.x = icmp ult i8 %i.p, 24
  %i.y = and i1 %i.x, %i.w
  br i1 %i.y, label %bb.c, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  switch i8 %i.v, label %bb.f [
    i8 0, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i
    i8 4, label %bb.d
    i8 2, label %bb.e
    i8 6, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  ]

bb.d:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.e:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.f:                                             ; preds = %bb.c
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.0.i = phi i8 [ %i.v, %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.v, %bb.f ], [ 5, %bb.d ], [ 3, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %.not.i = icmp eq i8 %i.q, %.0.i
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE26TransitionElementsKindImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_3MapEEE.exit, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i: ; preds = %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i, %bb.c
  %.0103.i = phi i8 [ %.0.i, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i ], [ 7, %bb.c ] ; 2 uses
  %i.z = load i64, ptr %2, align 8
  %i.aa = add i64 %i.z, 15
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ae = load ptr, ptr %i.g, align 8
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.g, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i, !prof !5

bb.g:                                             ; preds = %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  %i.ag = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i: ; preds = %bb.g, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  %.0.i.i38.i = phi ptr [ %i.ag, %bb.g ], [ %i.ad, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i ] ; 4 uses
  %i.ah = ptrtoint ptr %.0.i.i38.i to i64
  %i.ai = add i64 %i.ah, 8
  %i.aj = inttoptr i64 %i.ai to ptr
  store ptr %i.aj, ptr %i.e, align 8
  store i64 %i.ac, ptr %.0.i.i38.i, align 8
  %i.ak = load i64, ptr %2, align 8
  %i.al = add i64 %i.ak, 15
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 864
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = icmp eq i64 %i.an, %i.ap
  br i1 %i.aq, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i
  %i.ar = and i8 %i.p, -8
  %i.as = icmp eq i8 %i.ar, 16
  %i.at = and i8 %.0103.i, -2
  %i.au = icmp eq i8 %i.at, 4
  %i.av = xor i1 %i.as, %i.au
  br i1 %i.av, label %bb.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.h, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit39.i
  tail call void @_ZN2v88internal8JSObject12MigrateToMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEEi(ptr noundef nonnull %1, ptr nonnull %2, ptr nonnull %3, i32 noundef 0) #23
  br label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

bb.i:                                             ; preds = %bb.h
  %i.aw = add i64 %i.an, -1
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = lshr i64 %i.az, 32
  %i.bb = trunc nuw i64 %i.ba to i32
  %i.bc = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE27ConvertElementsWithCapacityEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEES5_jjj(ptr noundef nonnull %1, ptr nonnull readonly %2, ptr nonnull readonly %.0.i.i38.i, i8 noundef zeroext %i.q, i32 noundef %i.bb, i32 noundef 0) ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.j, label %_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i, !prof !5

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.27) #24
  unreachable

_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i: ; preds = %bb.i
  tail call void @_ZN2v88internal8JSObject12MigrateToMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEEi(ptr noundef nonnull %1, ptr nonnull %2, ptr nonnull %3, i32 noundef 0) #23
  %i.be = load i64, ptr %2, align 8               ; 4 uses
  %i.bf = load i64, ptr %i.bc, align 8            ; 5 uses
  %i.bg = add i64 %i.be, 15                       ; 3 uses
  %i.bh = inttoptr i64 %i.bg to ptr
  store atomic volatile i64 %i.bf, ptr %i.bh monotonic, align 8
  %i.bi = trunc i64 %i.bf to i1
  br i1 %i.bi, label %bb.k, label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

bb.k:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i
  %i.bj = and i64 %i.be, -262144
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load i64, ptr %i.bk, align 262144       ; 2 uses
  %i.bm = and i64 %i.bl, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.bm, 0
  %i.bn = and i64 %i.bl, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not37.i.i.i.i.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bo = and i64 %i.bf, -262144
  %i.bp = inttoptr i64 %i.bo to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bp, align 262144
  %i.bq = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not38.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.be, i64 noundef %i.bg, i64 %i.bf) #23
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i, label %bb.o, !prof !13

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.be, i64 %i.bg, i64 %i.bf) #23
  br label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i: ; preds = %bb.o, %bb.n, %_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE5CheckEv.exit.i, %.critedge.i
  %i.br = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1925), align 1, !range !16, !noundef !17
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.p, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_27SharedArrayElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE12EEEE26TransitionElementsKindImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_3MapEEE.exit
end_hunk_23
begin_hunk_24_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_35FastSloppyArgumentsElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE10HasElementEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEjNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %sext.i.i.i = shl nuw i64 %i.a, 32
  %i.h = ashr exact i64 %sext.i.i.i, 29
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.l = load i64, ptr %i.k, align 8
  %.not.i.i = icmp eq i64 %i.j, %i.l
  br i1 %.not.i.i, label %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.thread.i.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_35FastSloppyArgumentsElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit

_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.thread.i.i: ; preds = %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.i.i, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = add i64 %2, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp eq i16 %i.t, 2119
  %i.v = add i64 %2, 23
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = add i64 %i.n, -1
  %i.y = inttoptr i64 %i.x to ptr                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.0.in.in.in.in.i.i.i.i = select i1 %i.u, ptr %i.w, ptr %i.z
  %.0.in.in.in.i.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i.i, align 8
  %.0.in.in.i.i.i.i = lshr i64 %.0.in.in.in.i.i.i.i, 32
  %i.aa = icmp samesign ugt i64 %.0.in.in.i.i.i.i, %i.a
  br i1 %i.aa, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_35FastSloppyArgumentsElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit

bb.b:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.thread.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %sext.i12.i.i = shl nuw i64 %i.a, 32
  %i.ac = ashr exact i64 %sext.i12.i.i, 29
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 %i.ac
  %i.ae = load atomic volatile i64, ptr %i.ad monotonic, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = icmp eq i64 %i.ae, %i.ag
  br i1 %i.ah, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_35FastSloppyArgumentsElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE20GetEntryForIndexImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEEmNS0_14PropertyFilterE.exit.i.i

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE20GetEntryForIndexImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEEmNS0_14PropertyFilterE.exit.i.i: ; preds = %bb.b
  %i.ai = ashr i64 %i.e, 32
  %i.aj = add nsw i64 %i.ai, %i.a
  %i.ak = icmp ne i64 %i.aj, -1
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_35FastSloppyArgumentsElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_35FastSloppyArgumentsElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.i.i, %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.thread.i.i, %bb.b, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE20GetEntryForIndexImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEEmNS0_14PropertyFilterE.exit.i.i
  %.sroa.019.0.i.i = phi i1 [ true, %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.i.i ], [ %i.ak, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE20GetEntryForIndexImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEEmNS0_14PropertyFilterE.exit.i.i ], [ false, %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.thread.i.i ], [ false, %bb.b ]
  ret i1 %.sroa.019.0.i.i
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_35FastSloppyArgumentsElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE8HasEntryEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENS0_13InternalIndexE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2, i64 %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = add i64 %2, 15
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = lshr i64 %i.g, 32                        ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  br i1 %i.i, label %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.i, label %bb.b

_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.i: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  br label %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE12HasEntryImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = sub nuw i64 %3, %i.h
  %i.n = add i64 %i.l, -1
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  br label %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE12HasEntryImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit

_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE12HasEntryImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.i, %bb.b
  %.sink24.i = phi i64 [ %i.m, %bb.b ], [ %3, %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.i ]
  %.sink.i = phi ptr [ %i.p, %bb.b ], [ %i.j, %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.i ]
  %sext.i11.i = shl i64 %.sink24.i, 32
  %i.q = ashr exact i64 %sext.i11.i, 29
  %i.r = getelementptr inbounds i8, ptr %.sink.i, i64 %i.q
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.u = load i64, ptr %i.t, align 8
  %i.v = icmp ne i64 %i.s, %i.u
  ret i1 %i.v
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_35FastSloppyArgumentsElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE3GetEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %2, i64 %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call fastcc noundef ptr @_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE(ptr noundef %1, i64 %i.d, i64 %3)
  ret ptr %i.e
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_35FastSloppyArgumentsElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE9GetAtomicEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_35FastSloppyArgumentsElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE12HasAccessorsENS0_6TaggedINS0_8JSObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1) unnamed_addr #12 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef range(i64 0, 4294967296) i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_35FastSloppyArgumentsElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE16NumberOfElementsEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2) unnamed_addr #10 align 2 {
bb.a:
  %i.a = add i64 %2, 15
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %.fr = freeze i64 %i.i                          ; 2 uses
  %i.j = lshr i64 %.fr, 32                        ; 4 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %._crit_edge.i, label %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.lr.ph.i

_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.lr.ph.i: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 2 uses
  %i.m = icmp eq i64 %i.j, 1
  br i1 %i.m, label %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.i.epil.preheader, label %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.lr.ph.i.new

_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.lr.ph.i.new: ; preds = %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.lr.ph.i
  %unroll_iter = and i64 %i.j, 4294967294
  br label %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.i
  %i.n = and i64 %.fr, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.n, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.i.epil.preheader

_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.i.epil.preheader: ; preds = %._crit_edge.i.loopexit.unr-lcssa, %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %.022.i.epil.init = phi i32 [ 0, %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.lr.ph.i ], [ %spec.select.i.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod6 = trunc i64 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod6)
  %sext.i.i.epil = shl nuw i64 %indvars.iv.i.epil.init, 32
  %i.o = ashr exact i64 %sext.i.i.epil, 29
  %i.p = getelementptr inbounds i8, ptr %i.k, i64 %i.o
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = load i64, ptr %i.l, align 8
  %i.s = icmp ne i64 %i.q, %i.r
  %cond.fr.i.epil = freeze i1 %i.s
  %i.t = zext i1 %cond.fr.i.epil to i32
  %spec.select.i.epil = add i32 %.022.i.epil.init, %i.t
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %spec.select.i.1, %._crit_edge.i.loopexit.unr-lcssa ], [ %spec.select.i.epil, %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.i.epil.preheader ]
  %i.u = add i64 %2, -1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i64, ptr %i.v monotonic, align 8
  %i.x = add i64 %i.w, 11
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load atomic volatile i16, ptr %i.y monotonic, align 2
  %i.aa = icmp eq i16 %i.z, 2119
  %i.ab = add i64 %2, 23
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = add i64 %i.g, -1
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.0.in.in.in.in.i.i.i = select i1 %i.aa, ptr %i.ac, ptr %i.af
  %.0.in.in.in.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i, align 8
  %.0.in.in.in.i.i.i.fr = freeze i64 %.0.in.in.in.i.i.i ; 2 uses
  %.0.in.in.i.i.i = lshr i64 %.0.in.in.in.i.i.i.fr, 32 ; 4 uses
  %.not17.i.i = icmp eq i64 %.0.in.in.i.i.i, 0
  br i1 %.not17.i.i, label %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 2 uses
  %i.ai = icmp eq i64 %.0.in.in.i.i.i, 1
  br i1 %i.ai, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter11 = and i64 %.0.in.in.i.i.i, 4294967294
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.new
  %.01316.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.at, %bb.b ] ; 3 uses
  %.01415.i.i = phi i32 [ 0, %.lr.ph.i.i.new ], [ %spec.select.i.i.1, %bb.b ]
  %niter12 = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter12.next.1, %bb.b ]
  %sext.i.i.i = shl i64 %.01316.i.i, 32
  %i.aj = ashr exact i64 %sext.i.i.i, 29
  %i.ak = getelementptr inbounds i8, ptr %i.ag, i64 %i.aj
  %i.al = load atomic volatile i64, ptr %i.ak monotonic, align 8
  %i.am = load i64, ptr %i.ah, align 8            ; 2 uses
  %.not.i.i = icmp ne i64 %i.al, %i.am
  %i.an = zext i1 %.not.i.i to i32
  %spec.select.i.i = add i32 %.01415.i.i, %i.an
  %i.ao = shl i64 %.01316.i.i, 32
  %sext.i.i.i.1 = ashr exact i64 %i.ao, 29
  %i.ap = getelementptr i8, ptr %i.ag, i64 %sext.i.i.i.1
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %i.ar = load atomic volatile i64, ptr %i.aq monotonic, align 8
  %.not.i.i.1 = icmp ne i64 %i.ar, %i.am
  %i.as = zext i1 %.not.i.i.1 to i32
  %spec.select.i.i.1 = add i32 %spec.select.i.i, %i.as ; 3 uses
  %i.at = add nuw nsw i64 %.01316.i.i, 2          ; 2 uses
  %niter12.next.1 = add i64 %niter12, 2           ; 2 uses
  %niter12.ncmp.1 = icmp eq i64 %niter12.next.1, %unroll_iter11
  br i1 %niter12.ncmp.1, label %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !3418

_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.i: ; preds = %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.i, %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.lr.ph.i.new ], [ %indvars.iv.next.i.1, %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.i ] ; 3 uses
  %.022.i = phi i32 [ 0, %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.lr.ph.i.new ], [ %spec.select.i.1, %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.i ]
  %niter = phi i64 [ 0, %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.lr.ph.i.new ], [ %niter.next.1, %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.i ]
  %sext.i.i = shl nuw i64 %indvars.iv.i, 32
  %i.au = ashr exact i64 %sext.i.i, 29
  %i.av = getelementptr inbounds i8, ptr %i.k, i64 %i.au
  %i.aw = load atomic volatile i64, ptr %i.av monotonic, align 8
  %i.ax = load i64, ptr %i.l, align 8             ; 2 uses
  %i.ay = icmp ne i64 %i.aw, %i.ax
  %cond.fr.i = freeze i1 %i.ay
  %i.az = zext i1 %cond.fr.i to i32
  %spec.select.i = add i32 %.022.i, %i.az
  %indvars.iv.next.i = shl i64 %indvars.iv.i, 32
  %sext.i.i.1 = ashr exact i64 %indvars.iv.next.i, 29
  %i.ba = getelementptr i8, ptr %i.k, i64 %sext.i.i.1
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  %i.bc = load atomic volatile i64, ptr %i.bb monotonic, align 8
  %i.bd = icmp ne i64 %i.bc, %i.ax
  %cond.fr.i.1 = freeze i1 %i.bd
  %i.be = zext i1 %cond.fr.i.1 to i32
  %spec.select.i.1 = add i32 %spec.select.i, %i.be ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.i, !llvm.loop !3677

_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %i.bf = and i64 %.0.in.in.in.i.i.i.fr, 4294967296
  %lcmp.mod8.not = icmp eq i64 %i.bf, 0
  br i1 %lcmp.mod8.not, label %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %.01316.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.at, %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa ]
  %.01415.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.1, %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod10 = trunc i64 %.0.in.in.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod10)
  %sext.i.i.i.epil = shl i64 %.01316.i.i.epil.init, 32
  %i.bg = ashr exact i64 %sext.i.i.i.epil, 29
  %i.bh = getelementptr inbounds i8, ptr %i.ag, i64 %i.bg
  %i.bi = load atomic volatile i64, ptr %i.bh monotonic, align 8
  %i.bj = load i64, ptr %i.ah, align 8
  %.not.i.i.epil = icmp ne i64 %i.bi, %i.bj
  %i.bk = zext i1 %.not.i.i.epil to i32
  %spec.select.i.i.epil = add i32 %.01415.i.i.epil.init, %i.bk
  br label %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEE.exit

_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEE.exit: ; preds = %.epil.preheader, %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa, %._crit_edge.i
  %.014.lcssa.i.i = phi i32 [ 0, %._crit_edge.i ], [ %spec.select.i.i.1, %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa ], [ %spec.select.i.i.epil, %.epil.preheader ]
  %i.bl = add i32 %.014.lcssa.i.i, %.0.lcssa.i
  %i.bm = zext i32 %i.bl to i64
  ret i64 %i.bm
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_35FastSloppyArgumentsElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE9SetLengthEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %2, i32 %3) unnamed_addr #11 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i, align 8
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_35FastSloppyArgumentsElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE21CollectElementIndicesENS0_12DirectHandleINS0_8JSObjectEEENS8_INS0_14FixedArrayBaseEEEPNS0_14KeyAccumulatorE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(none) %1, ptr nofree readonly captures(none) %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE25CollectElementIndicesImplENS0_12DirectHandleINS0_8JSObjectEEENS9_INS0_14FixedArrayBaseEEEPNS0_14KeyAccumulatorE(ptr %1, ptr %2, ptr noundef %3)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i16 0, 258) i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_35FastSloppyArgumentsElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE22CollectValuesOrEntriesEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr %2, ptr nofree readonly captures(none) %3, i1 noundef zeroext %4, ptr nofree noundef writeonly captures(none) %5, i32 noundef %6) unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.v8::internal::KeyAccumulator", align 8 ; 9 uses
  %8 = alloca %"class.v8::internal::LookupIterator", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %1, ptr %7, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(50) %i.a, i8 0, i64 50, i1 false)
  store i8 1, ptr %i.b, align 2
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 59
  store i8 1, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 60
  store i8 0, ptr %i.d, align 4
  %i.e = load i64, ptr %2, align 8
  %i.f = add i64 %i.e, 15
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.b, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i84.i = phi ptr [ %i.n, %bb.b ], [ %i.j, %bb.a ] ; 3 uses
  %i.o = ptrtoint ptr %.0.i.i84.i to i64
  %i.p = add i64 %i.o, 8
  %i.q = inttoptr i64 %i.p to ptr
  store ptr %i.q, ptr %i.i, align 8
  store i64 %i.h, ptr %.0.i.i84.i, align 8
  %i.r = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE25CollectElementIndicesImplENS0_12DirectHandleINS0_8JSObjectEEENS9_INS0_14FixedArrayBaseEEEPNS0_14KeyAccumulatorE(ptr nonnull %2, ptr nonnull %.0.i.i84.i, ptr noundef nonnull %7)
  br i1 %i.r, label %bb.c, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_35FastSloppyArgumentsElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE26CollectValuesOrEntriesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE.exit

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.s = call ptr @_ZN2v88internal14KeyAccumulator7GetKeysENS0_17GetKeysConversionE(ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef 1) #23 ; 4 uses
  %i.t = load i64, ptr %2, align 8
  %i.u = add i64 %i.t, -1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i64, ptr %i.v monotonic, align 8
  %i.x = add i64 %i.w, 14
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = load i64, ptr %i.s, align 8
  %i.ab = add i64 %i.aa, -1
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = lshr i64 %i.ae, 32
  %i.ag = trunc nuw i64 %i.af to i32
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.i, label %._crit_edge267.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.thread.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.thread.i ] ; 3 uses
  %i.aj = phi ptr [ %i.ac, %.lr.ph.i ], [ %i.ep, %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.thread.i ]
  %.058258.i = phi i32 [ 0, %.lr.ph.i ], [ %.361.ph.i, %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.thread.i ] ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.am = load atomic volatile i64, ptr %i.al monotonic, align 8 ; 5 uses
  %i.an = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.ao = load ptr, ptr %i.k, align 8
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.e, label %_ZN2v88internal12DirectHandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit82.i, !prof !5

bb.e:                                             ; preds = %bb.d
  %i.aq = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal12DirectHandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit82.i

_ZN2v88internal12DirectHandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit82.i: ; preds = %bb.e, %bb.d
  %.0.i.i81.i = phi ptr [ %i.aq, %bb.e ], [ %i.an, %bb.d ] ; 2 uses
  %i.ar = ptrtoint ptr %.0.i.i81.i to i64
  %i.as = add i64 %i.ar, 8
  %i.at = inttoptr i64 %i.as to ptr
  store ptr %i.at, ptr %i.i, align 8
  store i64 %i.am, ptr %.0.i.i81.i, align 8
  %i.au = and i64 %i.am, 1
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.f, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i

bb.f:                                             ; preds = %_ZN2v88internal12DirectHandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit82.i
  %i.aw = icmp sgt i64 %i.am, -1
  br i1 %i.aw, label %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.thread207.i, label %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.thread.i

_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.thread207.i: ; preds = %bb.f
  %i.ax = lshr i64 %i.am, 32
  br label %bb.h

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %_ZN2v88internal12DirectHandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit82.i
  %i.ay = add nsw i64 %i.am, -1
  %i.az = inttoptr i64 %i.ay to ptr               ; 2 uses
  %i.ba = load atomic volatile i64, ptr %i.az monotonic, align 8
  %i.bb = add i64 %i.ba, 11
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = load atomic volatile i16, ptr %i.bc monotonic, align 2
  %i.be = icmp eq i16 %i.bd, 130
  br i1 %i.be, label %bb.g, label %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.thread.i

bb.g:                                             ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.bf, align 8 ; 2 uses
  %i.bg = fadd double %.0.copyload.i.i.i.i.i.i, f0x4330000000000000
  %i.bh = bitcast double %i.bg to i64             ; 3 uses
  %.mask.i.i.i = and i64 %i.bh, -4294967296
  %i.bi = icmp eq i64 %.mask.i.i.i, 4841369599423283200
  %i.bj = trunc i64 %i.bh to i32
  %i.bk = uitofp i32 %i.bj to double
  %i.bl = fcmp oeq double %.0.copyload.i.i.i.i.i.i, %i.bk
  %or.cond.i = and i1 %i.bi, %i.bl
  br i1 %or.cond.i, label %bb.h, label %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.thread.i

bb.h:                                             ; preds = %bb.g, %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.thread207.i
  %.1201210.i = phi i64 [ %i.ax, %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.thread207.i ], [ %i.bh, %bb.g ]
  %i.bm = load i64, ptr %2, align 8               ; 3 uses
  %i.bn = add i64 %i.bm, 15
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = load i64, ptr %i.bo, align 8            ; 2 uses
  %i.bq = and i64 %.1201210.i, 4294967295         ; 7 uses
  %i.br = add i64 %i.bp, -1
  %i.bs = inttoptr i64 %i.br to ptr               ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i64, ptr %i.bt, align 8            ; 2 uses
  %i.bv = lshr i64 %i.bu, 32
  %.not.i.i.i = icmp samesign ult i64 %i.bq, %i.bv
  br i1 %.not.i.i.i, label %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.i.i, label %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.thread.i.i

_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.i.i: ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %sext.i.i.i = shl nuw i64 %i.bq, 32
  %i.bx = ashr exact i64 %sext.i.i.i, 29
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 %i.bx
  %i.bz = load atomic volatile i64, ptr %i.by monotonic, align 8
  %i.ca = load i64, ptr %i.ai, align 8
  %.not.i.i = icmp eq i64 %i.bz, %i.ca
  br i1 %.not.i.i, label %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.thread.i.i, label %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE20GetEntryForIndexImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEEmNS0_14PropertyFilterE.exit.thread212.i

_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.thread.i.i: ; preds = %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE18HasParameterMapArgEPNS0_7IsolateENS0_6TaggedINS0_23SloppyArgumentsElementsEEEm.exit.i.i, %bb.h
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
end_hunk_24
begin_hunk_25_@_ZN2v88internal12_GLOBAL__N_133FastStringWrapperElementsAccessorD0Ev
define internal void @_ZN2v88internal12_GLOBAL__N_133FastStringWrapperElementsAccessorD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_33FastStringWrapperElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE16EEEE8ValidateEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) unnamed_addr #0 align 2 {
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
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_33FastStringWrapperElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE16EEEE10HasElementEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEjNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2, i32 noundef %3, i64 %4, i32 %5) unnamed_addr #10 align 2 {
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
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_33FastStringWrapperElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE16EEEE8HasEntryEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENS0_13InternalIndexE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2, i64 %3) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.32) #24
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_33FastStringWrapperElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE16EEEE3GetEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %2, i64 %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_129StringWrapperElementsAccessorINS1_33FastStringWrapperElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE16EEEE15GetInternalImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE(ptr noundef %1, ptr %2, i64 %3)
  ret ptr %i.a
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_33FastStringWrapperElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE16EEEE9GetAtomicEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_33FastStringWrapperElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE16EEEE12HasAccessorsENS0_6TaggedINS0_8JSObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1) unnamed_addr #12 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef range(i64 0, 4294967296) i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_33FastStringWrapperElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE16EEEE16NumberOfElementsEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2) unnamed_addr #10 align 2 {
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
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i16, ptr %i.o monotonic, align 2
  %i.q = icmp eq i16 %i.p, 2119
  %i.r = add i64 %i.c, -1
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.0.in.in.in.in.i.i.i = select i1 %i.q, ptr %i.e, ptr %i.t
  %.0.in.in.in.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i, align 8
  %.0.in.in.in.i.i.i.fr = freeze i64 %.0.in.in.in.i.i.i ; 2 uses
  %.0.in.in.i.i.i = lshr i64 %.0.in.in.in.i.i.i.fr, 32 ; 4 uses
  %.not17.i.i = icmp eq i64 %.0.in.in.i.i.i, 0
  br i1 %.not17.i.i, label %_ZN2v88internal12_GLOBAL__N_129StringWrapperElementsAccessorINS1_33FastStringWrapperElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE16EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 2 uses
  %i.w = icmp eq i64 %.0.in.in.i.i.i, 1
  br i1 %i.w, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.0.in.in.i.i.i, 4294967294
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.new
  %.01316.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ah, %bb.b ] ; 3 uses
  %.01415.i.i = phi i32 [ 0, %.lr.ph.i.i.new ], [ %spec.select.i.i.1, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.b ]
  %sext.i.i.i = shl i64 %.01316.i.i, 32
  %i.x = ashr exact i64 %sext.i.i.i, 29
  %i.y = getelementptr inbounds i8, ptr %i.u, i64 %i.x
  %i.z = load atomic volatile i64, ptr %i.y monotonic, align 8
  %i.aa = load i64, ptr %i.v, align 8             ; 2 uses
  %.not.i.i = icmp ne i64 %i.z, %i.aa
  %i.ab = zext i1 %.not.i.i to i32
  %spec.select.i.i = add i32 %.01415.i.i, %i.ab
  %i.ac = shl i64 %.01316.i.i, 32
  %sext.i.i.i.1 = ashr exact i64 %i.ac, 29
  %i.ad = getelementptr i8, ptr %i.u, i64 %sext.i.i.i.1
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %.not.i.i.1 = icmp ne i64 %i.af, %i.aa
  %i.ag = zext i1 %.not.i.i.1 to i32
  %spec.select.i.i.1 = add i32 %spec.select.i.i, %i.ag ; 3 uses
  %i.ah = add nuw nsw i64 %.01316.i.i, 2          ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2v88internal12_GLOBAL__N_129StringWrapperElementsAccessorINS1_33FastStringWrapperElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE16EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !3418

_ZN2v88internal12_GLOBAL__N_129StringWrapperElementsAccessorINS1_33FastStringWrapperElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE16EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %i.ai = and i64 %.0.in.in.in.i.i.i.fr, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.ai, 0
  br i1 %lcmp.mod.not, label %_ZN2v88internal12_GLOBAL__N_129StringWrapperElementsAccessorINS1_33FastStringWrapperElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE16EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_129StringWrapperElementsAccessorINS1_33FastStringWrapperElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE16EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %.01316.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ah, %_ZN2v88internal12_GLOBAL__N_129StringWrapperElementsAccessorINS1_33FastStringWrapperElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE16EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa ]
  %.01415.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.1, %_ZN2v88internal12_GLOBAL__N_129StringWrapperElementsAccessorINS1_33FastStringWrapperElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE16EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod6 = trunc i64 %.0.in.in.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod6)
  %sext.i.i.i.epil = shl i64 %.01316.i.i.epil.init, 32
  %i.aj = ashr exact i64 %sext.i.i.i.epil, 29
  %i.ak = getelementptr inbounds i8, ptr %i.u, i64 %i.aj
  %i.al = load atomic volatile i64, ptr %i.ak monotonic, align 8
  %i.am = load i64, ptr %i.v, align 8
  %.not.i.i.epil = icmp ne i64 %i.al, %i.am
  %i.an = zext i1 %.not.i.i.epil to i32
  %spec.select.i.i.epil = add i32 %.01415.i.i.epil.init, %i.an
  br label %_ZN2v88internal12_GLOBAL__N_129StringWrapperElementsAccessorINS1_33FastStringWrapperElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE16EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEE.exit

_ZN2v88internal12_GLOBAL__N_129StringWrapperElementsAccessorINS1_33FastStringWrapperElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE16EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEE.exit: ; preds = %.epil.preheader, %_ZN2v88internal12_GLOBAL__N_129StringWrapperElementsAccessorINS1_33FastStringWrapperElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE16EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa, %bb.a
  %.014.lcssa.i.i = phi i32 [ 0, %bb.a ], [ %spec.select.i.i.1, %_ZN2v88internal12_GLOBAL__N_129StringWrapperElementsAccessorINS1_33FastStringWrapperElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE16EEEE20NumberOfElementsImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEE.exit.loopexit.unr-lcssa ], [ %spec.select.i.i.epil, %.epil.preheader ]
  %i.ao = add i32 %.014.lcssa.i.i, %i.j
  %i.ap = zext i32 %i.ao to i64
  ret i64 %i.ap
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i16 0, 258) i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_33FastStringWrapperElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE16EEEE9SetLengthEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 4 uses
  %i.k = ptrtoint ptr %.0.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i, align 8
  %i.n = load i64, ptr %2, align 8                ; 2 uses
  %i.o = add i64 %i.n, 23
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8              ; 4 uses
  %i.r = and i64 %i.q, 1
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.c, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.t = icmp sgt i64 %i.q, -1
  br i1 %i.t, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread131.i, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i, !prof !107

_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread131.i: ; preds = %bb.c
  %i.u = lshr i64 %i.q, 32
  %i.v = trunc nuw nsw i64 %i.u to i32
  br label %bb.e

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i: ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.w = add nsw i64 %i.q, -1
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = load atomic volatile i64, ptr %i.x monotonic, align 8
  %i.z = add i64 %i.y, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = icmp eq i16 %i.ab, 130
  br i1 %i.ac, label %bb.d, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i, !prof !107

bb.d:                                             ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.ad, align 8 ; 2 uses
  %i.ae = fadd double %.0.copyload.i.i.i.i.i.i.i, f0x4330000000000000
  %i.af = bitcast double %i.ae to i64             ; 2 uses
  %.mask.i.i.i.i = and i64 %i.af, -4294967296
  %i.ag = icmp eq i64 %.mask.i.i.i.i, 4841369599423283200
  br i1 %i.ag, label %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i, !prof !107

_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i: ; preds = %bb.d
  %i.ah = trunc i64 %i.af to i32                  ; 3 uses
  %i.ai = uitofp i32 %i.ah to double
  %i.aj = fcmp oeq double %.0.copyload.i.i.i.i.i.i.i, %i.ai
  %i.ak = icmp ne i32 %i.ah, -1
  %or.cond.i = and i1 %i.ak, %i.aj
  br i1 %or.cond.i, label %bb.e, label %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i, !prof !3326

_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread.i: ; preds = %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i, %bb.d, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.26) #24
  unreachable

bb.e:                                             ; preds = %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i, %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread131.i
  %.0133.i = phi i32 [ %i.v, %_ZN2v88internal6Object12ToArrayIndexENS0_6TaggedIS1_EEPj.exit.thread131.i ], [ %i.ah, %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.i.i ] ; 3 uses
  %i.al = icmp ult i32 %.0133.i, %3
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.am = add i64 %i.n, -1
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load atomic volatile i64, ptr %i.an monotonic, align 8
  %i.ap = add i64 %i.ao, 14
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load i8, ptr %i.aq, align 1             ; 3 uses
  %i.as = lshr i8 %i.ar, 2                        ; 4 uses
  %i.at = trunc i8 %i.as to i1
  %i.au = icmp ult i8 %i.ar, 24
  %i.av = and i1 %i.au, %i.at
  br i1 %i.av, label %.thread, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i: ; preds = %bb.f
  %i.aw = icmp ult i8 %i.ar, 28
  %switch.shifted = lshr i8 85, %i.as
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.aw, i1 %switch.lobit, i1 false
  %switch.cast = zext nneg i8 %i.as to i56
  %switch.shiftamt = shl nuw nsw i56 %switch.cast, 3
  %switch.downshift = lshr i56 1970346312007681, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  %.0.i.i5 = select i1 %or.cond, i8 %switch.masked, i8 %i.as
  tail call void @_ZN2v88internal8JSObject22TransitionElementsKindEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_12ElementsKindE(ptr noundef nonnull %1, ptr nonnull %2, i8 noundef zeroext %.0.i.i5) #23
  %.pre = load i64, ptr %.0.i.i, align 8
  br label %.thread

.thread:                                          ; preds = %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i, %bb.f
  %.ph = phi i64 [ %i.d, %bb.f ], [ %.pre, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i ] ; 2 uses
  %i.ax = add i64 %.ph, -1
  %i.ay = inttoptr i64 %i.ax to ptr               ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = lshr i64 %i.ba, 32                      ; 2 uses
  %i.bc = trunc nuw i64 %i.bb to i32              ; 2 uses
  %.sroa.speculated73.i23 = tail call i32 @llvm.umin.i32(i32 %.0133.i, i32 %i.bc)
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.bd = add i64 %i.d, -1
  %i.be = inttoptr i64 %i.bd to ptr               ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = lshr i64 %i.bg, 32                      ; 2 uses
  %i.bi = trunc nuw i64 %i.bh to i32              ; 2 uses
  %.sroa.speculated73.i = tail call i32 @llvm.umin.i32(i32 %.0133.i, i32 %i.bi)
  %i.bj = icmp eq i32 %3, 0
  br i1 %i.bj, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.bk = load i64, ptr %2, align 8               ; 2 uses
  %i.bl = add i64 %i.bk, -1
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load atomic volatile i64, ptr %i.bm monotonic, align 8
  %i.bo = add i64 %i.bn, 14
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = load i8, ptr %i.bp, align 1             ; 4 uses
  %i.br = icmp ult i8 %i.bq, 24
  br i1 %i.br, label %_ZN2v88internal8JSObject19initialize_elementsEv.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.mask.i.i.i37.i = and i8 %i.bq, -4             ; 2 uses
  %i.bs = icmp eq i8 %.mask.i.i.i37.i, 64
  %i.bt = icmp ult i8 %i.bq, 52
  %or.cond.i.i.i = or i1 %i.bt, %i.bs
  br i1 %or.cond.i.i.i, label %_ZN2v88internal8JSObject19initialize_elementsEv.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = lshr i8 %i.bq, 2
  %i.bv = add nsw i8 %i.bu, -18
  %i.bw = icmp ult i8 %i.bv, 24
  br i1 %i.bw, label %_ZN2v88internal8JSObject19initialize_elementsEv.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = icmp eq i8 %.mask.i.i.i37.i, 52
  br i1 %i.bx, label %_ZN2v88internal8JSObject19initialize_elementsEv.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable

_ZN2v88internal8JSObject19initialize_elementsEv.exit.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.sink13.i.i.i = phi i64 [ 312, %bb.h ], [ 1272, %bb.j ], [ 312, %bb.i ], [ 1304, %bb.k ]
  %i.by = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 10624
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sink13.i.i.i
  %.sroa.06.0.i.i.i = load i64, ptr %i.cb, align 8
  %i.cc = add i64 %i.bk, 15
  %i.cd = inttoptr i64 %i.cc to ptr
  store atomic volatile i64 %.sroa.06.0.i.i.i, ptr %i.cd monotonic, align 8
  br label %_ZN2v88internal10FixedArray13FillWithHolesEii.exit.i

bb.m:                                             ; preds = %.thread, %bb.g
  %.sroa.speculated73.i24 = phi i32 [ %.sroa.speculated73.i23, %.thread ], [ %.sroa.speculated73.i, %bb.g ] ; 3 uses
  %i.ce = phi i32 [ %i.bc, %.thread ], [ %i.bi, %bb.g ] ; 6 uses
  %i.cf = phi i64 [ %i.bb, %.thread ], [ %i.bh, %bb.g ]
  %i.cg = phi ptr [ %i.ay, %.thread ], [ %i.be, %bb.g ]
  %i.ch = phi i64 [ %.ph, %.thread ], [ %i.d, %bb.g ]
  %.not.i = icmp ugt i32 %3, %i.ce
  br i1 %.not.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ci = shl i32 %3, 1
  %i.cj = add i32 %i.ci, 16
  %.not.i.i = icmp ugt i32 %i.cj, %i.ce
end_hunk_25
