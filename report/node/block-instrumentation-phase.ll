inline.NumInlined: 37930
inline.NumDeleted: 12443
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_19Simd128LaneMemoryOpEEENS2_7OpIndexESK_:bb.a
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2
  %.pre1.i = zext i16 %.pre.i to i64
  br label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10RemoveLastENS2_7OpIndexE.exit

_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10RemoveLastENS2_7OpIndexE.exit: ; preds = %bb.e, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i.i
  %.pre-phi.i = phi i64 [ %i.ay, %bb.e ], [ %.pre1.i, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i.i ]
  %i.cr = phi ptr [ %i.ak, %bb.e ], [ %.pre8.i.i, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i.i ]
  %i.cs = sub nsw i64 0, %.pre-phi.i
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.cs
  store ptr %i.ct, ptr %i.aj, align 8
  %.sroa.016.0.copyload = load i32, ptr %i.p, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10RemoveLastENS2_7OpIndexE.exit, %bb.d
  %.sroa.016.0 = phi i32 [ %1, %bb.d ], [ %.sroa.016.0.copyload, %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10RemoveLastENS2_7OpIndexE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b, %bb.a
  %.sroa.016.2 = phi i32 [ %1, %bb.a ], [ %.sroa.016.0, %bb.i ], [ %1, %bb.b ]
  ret i32 %.sroa.016.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_19Simd128LaneMemoryOpEJNS2_14ShadowyOpIndexESH_SH_NSG_4ModeENS2_6LoadOp4KindENSG_8LaneKindEhiEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i32 %2, i32 %3, i1 noundef zeroext %4, i8 %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i32 noundef %8) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = sub i64 %i.l, %i.e
  %i.n = icmp ult i64 %i.m, 17
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm3ENS2_19Simd128LaneMemoryOpEE3NewIJNS2_14ShadowyOpIndexES7_S7_NS4_4ModeENS2_6LoadOp4KindENS4_8LaneKindEhiEEERS4_PNS2_5GraphEDpT_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 3
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre18 = ptrtoint ptr %.pre to i64
  %.pre19 = sub i64 %.pre10.i.i.i.i, %.pre18
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm3ENS2_19Simd128LaneMemoryOpEE3NewIJNS2_14ShadowyOpIndexES7_S7_NS4_4ModeENS2_6LoadOp4KindENS4_8LaneKindEhiEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm3ENS2_19Simd128LaneMemoryOpEE3NewIJNS2_14ShadowyOpIndexES7_S7_NS4_4ModeENS2_6LoadOp4KindENS4_8LaneKindEhiEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi20 = phi i64 [ %i.i, %bb.a ], [ %.pre19, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi20 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi20, 4
  %i.y = and i64 %i.x, 268435455
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.y
  store i16 3, ptr %i.z, align 2
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = add i32 %i.u, 24
  %i.ac = lshr i32 %i.ab, 4
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ae
  store i16 3, ptr %i.af, align 2
  %i.ag = zext i1 %4 to i8
  store i8 45, ptr %i.s, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 3, ptr %i.ai, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 %1, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  store i32 %2, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 20 ; 2 uses
  store i32 %3, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %i.ag, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  store i8 %5, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  store i8 %6, ptr %i.ao, align 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 7
  store i8 %7, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %8, ptr %i.aq, align 4
  %i.ar = load ptr, ptr %i.f, align 8
  %i.as = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.at = zext i32 %1 to i64
  %i.au = add i64 %i.as, %i.at
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.ax, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, label %bb.c, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm3ENS2_19Simd128LaneMemoryOpEE3NewIJNS2_14ShadowyOpIndexES7_S7_NS4_4ModeENS2_6LoadOp4KindENS4_8LaneKindEhiEEERS4_PNS2_5GraphEDpT_.exit
  %i.ay = add nuw i8 %i.ax, 1
  store i8 %i.ay, ptr %i.aw, align 1
  %.pre.i = load ptr, ptr %i.f, align 8
  %.pre13.i = ptrtoint ptr %.pre.i to i64
  %.sroa.01.0.copyload.1.i.pre = load i32, ptr %i.ak, align 4
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i: ; preds = %bb.c, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm3ENS2_19Simd128LaneMemoryOpEE3NewIJNS2_14ShadowyOpIndexES7_S7_NS4_4ModeENS2_6LoadOp4KindENS4_8LaneKindEhiEEERS4_PNS2_5GraphEDpT_.exit
  %.sroa.01.0.copyload.1.i = phi i32 [ %2, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm3ENS2_19Simd128LaneMemoryOpEE3NewIJNS2_14ShadowyOpIndexES7_S7_NS4_4ModeENS2_6LoadOp4KindENS4_8LaneKindEhiEEERS4_PNS2_5GraphEDpT_.exit ], [ %.sroa.01.0.copyload.1.i.pre, %bb.c ]
  %.pre-phi.i = phi i64 [ %i.as, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm3ENS2_19Simd128LaneMemoryOpEE3NewIJNS2_14ShadowyOpIndexES7_S7_NS4_4ModeENS2_6LoadOp4KindENS4_8LaneKindEhiEEERS4_PNS2_5GraphEDpT_.exit ], [ %.pre13.i, %bb.c ] ; 2 uses
  %i.az = zext i32 %.sroa.01.0.copyload.1.i to i64
  %i.ba = add i64 %.pre-phi.i, %i.az
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1             ; 2 uses
  %.not.i.1.i = icmp eq i8 %i.bd, -1
  br i1 %.not.i.1.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.1.i, label %bb.d, !prof !5

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %i.be = add nuw i8 %i.bd, 1
  store i8 %i.be, ptr %i.bc, align 1
  %.pre12.i = load ptr, ptr %i.f, align 8
  %.pre14.i = ptrtoint ptr %.pre12.i to i64
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.1.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.1.i: ; preds = %bb.d, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %.pre-phi15.i = phi i64 [ %.pre14.i, %bb.d ], [ %.pre-phi.i, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i ]
  %.sroa.01.0.copyload.2.i = load i32, ptr %i.al, align 4
  %i.bf = zext i32 %.sroa.01.0.copyload.2.i to i64
  %i.bg = add i64 %.pre-phi15.i, %i.bf
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1             ; 2 uses
  %.not.i.2.i = icmp eq i8 %i.bj, -1
  br i1 %.not.i.2.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_19Simd128LaneMemoryOpEEEvRKT_.exit, label %bb.e, !prof !5

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.1.i
  %i.bk = add nuw i8 %i.bj, 1
  store i8 %i.bk, ptr %i.bi, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_19Simd128LaneMemoryOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_19Simd128LaneMemoryOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.1.i, %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1060
  %.sroa.0.0.copyload.i = load i32, ptr %i.bl, align 4
  %i.bm = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 4 uses
  %i.bn = lshr i64 %i.i, 4
  %i.bo = and i64 %i.bn, 268435455                ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 216
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 208 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 2
  %.not.i.i15 = icmp ugt i64 %i.bw, %i.bo
  br i1 %.not.i.i15, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.f, !prof !8

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_19Simd128LaneMemoryOpEEEvRKT_.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 200 ; 2 uses
  %i.by = lshr i64 %i.bo, 1
  %i.bz = add nuw nsw i64 %i.bo, 32
  %i.ca = add nuw nsw i64 %i.bz, %i.by
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 noundef %i.ca)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bm, i64 224
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = load ptr, ptr %i.br, align 8
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 noundef %i.ch)
  %.pre.i.i = load ptr, ptr %i.br, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_19Simd128LaneMemoryOpEEEvRKT_.exit, %bb.f
  %i.ci = phi ptr [ %.pre.i.i, %bb.f ], [ %i.bs, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_19Simd128LaneMemoryOpEEEvRKT_.exit ]
  %i.cj = trunc i64 %i.i to i32
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.bo
  store i32 %.sroa.0.0.copyload.i, ptr %i.ck, align 4
  ret i32 %i.cj
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerES3_S5_EEEEEEEEEE4FindINS2_19Simd128LaneMemoryOpEEEPNSH_5EntryERKT_Pm(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !range !24, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 4
  %.not.i = icmp eq i8 %i.f, 0
  %3 = and i1 %.not.i, %i.c
  %.fr = freeze i1 %3                             ; 2 uses
  %not. = xor i1 %.fr, true
  %i.g = tail call noundef i64 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27BlockInstrumentationReducerENS2_30LoadStoreSimplificationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_19Simd128LaneMemoryOpEEEmRKT0_b(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i1 noundef zeroext %not.) ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = and i64 %i.i, %i.g                       ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.j ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8              ; 3 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.s = load i32, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = load i8, ptr %i.w, align 1               ; 2 uses
  %i.aa = load i8, ptr %i.a, align 4, !range !24  ; 2 uses
  %i.ab = load i8, ptr %i.d, align 1              ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ad = load i8, ptr %i.ac, align 2             ; 2 uses
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread.us
  %i.ae = phi i64 [ %i.bs, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread.us ], [ %i.o, %.lr.ph ]
  %i.af = phi ptr [ %i.bq, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread.us ], [ %i.m, %.lr.ph ] ; 2 uses
  %.02533.us = phi i64 [ %i.bp, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread.us ], [ %i.j, %.lr.ph ]
  %i.ag = icmp eq i64 %i.ae, %i.g
  br i1 %i.ag, label %bb.b, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread.us

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.ah = load ptr, ptr %i.q, align 8, !nonnull !6, !align !7
  %.sroa.0.0.copyload.us = load i32, ptr %i.af, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = zext i32 %.sroa.0.0.copyload.us to i64
  %i.am = add i64 %i.ak, %i.al
  %i.an = inttoptr i64 %i.am to ptr               ; 9 uses
  %i.ao = load i8, ptr %i.an, align 4
  %i.ap = icmp eq i8 %i.ao, 45
  br i1 %i.ap, label %bb.c, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread.us

bb.c:                                             ; preds = %bb.b
  %.0810.i.i.i.i.i.i.i.ptr.i.i.us = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.us = load i32, ptr %i.t, align 4
  %i.aq = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.i.i.us, align 4
  %i.ar = icmp eq i32 %i.aq, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.us
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.i.i.1.i.i.us, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread.us

.lr.ph.i.i.i.i.i.i.i.1.i.i.us:                    ; preds = %bb.c
  %.0810.i.i.i.i.i.i.i.ptr.1.i.i.us = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.1.i.i.us = load i32, ptr %i.u, align 4
  %i.as = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.1.i.i.us, align 4
  %i.at = icmp eq i32 %i.as, %.sroa.0.0.copyload.i.i.i.i.i.i.i.1.i.i.us
  br i1 %i.at, label %.lr.ph.i.i.i.i.i.i.i.2.i.i.us, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread.us

.lr.ph.i.i.i.i.i.i.i.2.i.i.us:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.1.i.i.us
  %.0810.i.i.i.i.i.i.i.ptr.2.i.i.us = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.2.i.i.us = load i32, ptr %i.v, align 4
  %i.au = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.2.i.i.us, align 4
  %i.av = icmp eq i32 %i.au, %.sroa.0.0.copyload.i.i.i.i.i.i.i.2.i.i.us
  br i1 %i.av, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread.us

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.2.i.i.us
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 7
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.az = load i32, ptr %i.ay, align 4, !noalias !842
  %i.ba = load i8, ptr %i.ax, align 1, !noalias !842
  %i.bb = load i8, ptr %i.aw, align 4, !range !24, !noalias !842, !noundef !6
  %i.bc = icmp eq i8 %i.bb, %i.aa
  br i1 %i.bc, label %bb.e, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread.us

bb.e:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 5
  %i.be = load i8, ptr %i.bd, align 1, !noalias !842
  %i.bf = getelementptr inbounds nuw i8, ptr %i.an, i64 6
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !842
  %i.bh = xor i8 %i.be, %i.ab
  %i.bi = and i8 %i.bh, 127
  %i.bj = icmp eq i8 %i.bi, 0
  %i.bk = icmp eq i8 %i.bg, %i.ad
  %or.cond.i.i.us = select i1 %i.bj, i1 %i.bk, i1 false
  br i1 %or.cond.i.i.us, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.us, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread.us

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.us: ; preds = %bb.e
  %i.bl = icmp eq i8 %i.ba, %i.z
  %i.bm = icmp eq i32 %i.az, %i.y
  %i.bn = select i1 %i.bl, i1 %i.bm, i1 false
  br i1 %i.bn, label %.loopexit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread.us

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread.us: ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.us, %bb.e, %bb.d, %.lr.ph.i.i.i.i.i.i.i.2.i.i.us, %.lr.ph.i.i.i.i.i.i.i.1.i.i.us, %bb.c, %bb.b, %.lr.ph.split.us
  %i.bo = add i64 %.02533.us, 1
  %i.bp = and i64 %i.i, %i.bo                     ; 2 uses
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.bp ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i64, ptr %i.br, align 8            ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !845

._crit_edge:                                      ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread.us, %bb.a
  %.lcssa = phi ptr [ %i.m, %bb.a ], [ %i.bq, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread.us ], [ %i.dj, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread ] ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  store i64 %i.g, ptr %2, align 8
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread
  %i.bu = phi i64 [ %i.dl, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread ], [ %i.o, %.lr.ph ]
  %i.bv = phi ptr [ %i.dj, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread ], [ %i.m, %.lr.ph ] ; 3 uses
  %.02533 = phi i64 [ %i.di, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread ], [ %i.j, %.lr.ph ]
  %i.bw = icmp eq i64 %i.bu, %i.g
  br i1 %i.bw, label %bb.g, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread

bb.g:                                             ; preds = %.lr.ph.split
  %i.bx = load ptr, ptr %i.q, align 8, !nonnull !6, !align !7
  %.sroa.0.0.copyload = load i32, ptr %i.bv, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = zext i32 %.sroa.0.0.copyload to i64
  %i.cc = add i64 %i.ca, %i.cb
  %i.cd = inttoptr i64 %i.cc to ptr               ; 9 uses
  %i.ce = load i8, ptr %i.cd, align 4
  %i.cf = icmp eq i8 %i.ce, 45
  br i1 %i.cf, label %bb.h, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.ch = load i32, ptr %i.cg, align 8
  %i.ci = icmp eq i32 %i.s, %i.ch
  br i1 %i.ci, label %bb.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread

bb.i:                                             ; preds = %bb.h
  %.0810.i.i.i.i.i.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i32, ptr %i.t, align 4
  %i.cj = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.i.i, align 4
  %i.ck = icmp eq i32 %i.cj, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.ck, label %.lr.ph.i.i.i.i.i.i.i.1.i.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread

.lr.ph.i.i.i.i.i.i.i.1.i.i:                       ; preds = %bb.i
  %.0810.i.i.i.i.i.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.1.i.i = load i32, ptr %i.u, align 4
  %i.cl = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.1.i.i, align 4
  %i.cm = icmp eq i32 %i.cl, %.sroa.0.0.copyload.i.i.i.i.i.i.i.1.i.i
  br i1 %i.cm, label %.lr.ph.i.i.i.i.i.i.i.2.i.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread

.lr.ph.i.i.i.i.i.i.i.2.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.1.i.i
  %.0810.i.i.i.i.i.i.i.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 20
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.2.i.i = load i32, ptr %i.v, align 4
  %i.cn = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.2.i.i, align 4
  %i.co = icmp eq i32 %i.cn, %.sroa.0.0.copyload.i.i.i.i.i.i.i.2.i.i
  br i1 %i.co, label %bb.j, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.2.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 7
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cs = load i32, ptr %i.cr, align 4, !noalias !842
  %i.ct = load i8, ptr %i.cq, align 1, !noalias !842
  %i.cu = load i8, ptr %i.cp, align 4, !range !24, !noalias !842, !noundef !6
  %i.cv = icmp eq i8 %i.cu, %i.aa
  br i1 %i.cv, label %bb.k, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cd, i64 5
  %i.cx = load i8, ptr %i.cw, align 1, !noalias !842
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cd, i64 6
  %i.cz = load i8, ptr %i.cy, align 1, !noalias !842
  %i.da = xor i8 %i.cx, %i.ab
  %i.db = and i8 %i.da, 127
  %i.dc = icmp eq i8 %i.db, 0
  %i.dd = icmp eq i8 %i.cz, %i.ad
  %or.cond.i.i = select i1 %i.dc, i1 %i.dd, i1 false
  br i1 %or.cond.i.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit: ; preds = %bb.k
  %i.de = icmp eq i8 %i.ct, %i.z
  %i.df = icmp eq i32 %i.cs, %i.y
  %i.dg = select i1 %i.de, i1 %i.df, i1 false
  br i1 %i.dg, label %.loopexit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit.thread: ; preds = %bb.g, %bb.h, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_19Simd128LaneMemoryOpEE12EqualsForGVNERKS5_.exit, %bb.j, %bb.k, %.lr.ph.i.i.i.i.i.i.i.2.i.i, %.lr.ph.i.i.i.i.i.i.i.1.i.i, %bb.i, %.lr.ph.split
  %i.dh = add i64 %.02533, 1
  %i.di = and i64 %i.i, %i.dh                     ; 2 uses
  %i.dj = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.di ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load i64, ptr %i.dk, align 8            ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 0
end_hunk_0
