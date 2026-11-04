Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/turbolev-graph-builder?download=true
inline.NumInlined: 65942
inline.NumDeleted: 17507
loop-unroll.NumCompletelyUnrolled: 517
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 591
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_15ChangeOrDeoptOpEJNS2_14ShadowyOpIndexESJ_NSI_4KindENS1_21CheckForMinusZeroModeENS1_14FeedbackSourceEEEENS2_7OpIndexEDpT0_:bb.a
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 4
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre12 = ptrtoint ptr %.pre to i64
  %.pre13 = sub i64 %.pre10.i.i.i.i, %.pre12
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_15ChangeOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS1_21CheckForMinusZeroModeENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_15ChangeOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS1_21CheckForMinusZeroModeENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi14 = phi i64 [ %i.i, %bb.a ], [ %.pre13, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi14 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi14, 4
  %i.y = and i64 %i.x, 268435455
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.y
  store i16 4, ptr %i.z, align 2
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = add i32 %i.u, 32
  %i.ac = lshr i32 %i.ab, 4
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ae
  store i16 4, ptr %i.af, align 2
  store i8 124, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 2, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i32 %1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 28 ; 2 uses
  store i32 %2, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %3, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  store i8 %4, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  %i.an = load ptr, ptr %i.f, align 8
  %i.ao = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.ap = zext i32 %1 to i64
  %i.aq = add i64 %i.ao, %i.ap
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.at, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, label %bb.c, !prof !345

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_15ChangeOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS1_21CheckForMinusZeroModeENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit
  %i.au = add nuw i8 %i.at, 1
  store i8 %i.au, ptr %i.as, align 1
  %.pre.i = load ptr, ptr %i.f, align 8
  %.pre12.i = ptrtoint ptr %.pre.i to i64
  %.sroa.01.0.copyload.1.i.pre = load i32, ptr %i.aj, align 4
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i: ; preds = %bb.c, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_15ChangeOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS1_21CheckForMinusZeroModeENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit
  %.sroa.01.0.copyload.1.i = phi i32 [ %2, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_15ChangeOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS1_21CheckForMinusZeroModeENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit ], [ %.sroa.01.0.copyload.1.i.pre, %bb.c ]
  %.pre-phi.i = phi i64 [ %i.ao, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_15ChangeOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS1_21CheckForMinusZeroModeENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit ], [ %.pre12.i, %bb.c ]
  %i.av = zext i32 %.sroa.01.0.copyload.1.i to i64
  %i.aw = add i64 %.pre-phi.i, %i.av
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1             ; 2 uses
  %.not.i.1.i = icmp eq i8 %i.az, -1
  br i1 %.not.i.1.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_15ChangeOrDeoptOpEEEvRKT_.exit, label %bb.d, !prof !345

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %i.ba = add nuw i8 %i.az, 1
  store i8 %i.ba, ptr %i.ay, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_15ChangeOrDeoptOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_15ChangeOrDeoptOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 900
  %.sroa.0.0.copyload.i = load i32, ptr %i.bb, align 4
  %i.bc = load ptr, ptr %i.a, align 8, !nonnull !344, !align !355 ; 4 uses
  %i.bd = lshr i64 %i.i, 4
  %i.be = and i64 %i.bd, 268435455                ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 216
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 208 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.bj = ptrtoint ptr %i.bg to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 2
  %.not.i.i9 = icmp ugt i64 %i.bm, %i.be
  br i1 %.not.i.i9, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.e, !prof !348

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_15ChangeOrDeoptOpEEEvRKT_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 200 ; 2 uses
  %i.bo = lshr i64 %i.be, 1
  %i.bp = add nuw nsw i64 %i.be, 32
  %i.bq = add nuw nsw i64 %i.bp, %i.bo
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, i64 noundef %i.bq)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bc, i64 224
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = load ptr, ptr %i.bh, align 8
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, i64 noundef %i.bx)
  %.pre.i.i = load ptr, ptr %i.bh, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_15ChangeOrDeoptOpEEEvRKT_.exit, %bb.e
  %i.by = phi ptr [ %.pre.i.i, %bb.e ], [ %i.bi, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_15ChangeOrDeoptOpEEEvRKT_.exit ]
  %i.bz = trunc i64 %i.i to i32
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.be
  store i32 %.sroa.0.0.copyload.i, ptr %i.ca, align 4
  ret i32 %i.bz
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_15ChangeOrDeoptOpEEEPNSJ_5EntryERKT_Pm(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_15ChangeOrDeoptOpEEEmRKT0_b(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext true) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, %i.a                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.d ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %0, i64 -8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15ChangeOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread, %bb.a
  %.lcssa = phi ptr [ %i.g, %bb.a ], [ %i.au, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15ChangeOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread ] ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  store i64 %i.a, ptr %2, align 8
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15ChangeOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread
  %i.q = phi i64 [ %i.i, %.lr.ph ], [ %i.aw, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15ChangeOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread ]
  %i.r = phi ptr [ %i.g, %.lr.ph ], [ %i.au, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15ChangeOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread ] ; 3 uses
  %.02632 = phi i64 [ %i.d, %.lr.ph ], [ %i.at, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15ChangeOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread ]
  %i.s = icmp eq i64 %i.q, %i.a
  br i1 %i.s, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15ChangeOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.k, align 8, !nonnull !344, !align !355
  %.sroa.0.0.copyload = load i32, ptr %i.r, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = zext i32 %.sroa.0.0.copyload to i64
  %i.y = add i64 %i.w, %i.x
  %i.z = inttoptr i64 %i.y to ptr                 ; 6 uses
  %i.aa = load i8, ptr %i.z, align 4
  %i.ab = icmp eq i8 %i.aa, 124
  br i1 %i.ab, label %bb.e, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15ChangeOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %i.l, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = icmp eq i32 %i.ac, %i.ae
  br i1 %i.af, label %bb.f, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15ChangeOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

bb.f:                                             ; preds = %bb.e
  %.0810.i.i.i.i.i.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i32, ptr %i.m, align 8
  %i.ag = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.i.i, align 4
  %i.ah = icmp eq i32 %i.ag, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i.i.i.1.i.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15ChangeOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

.lr.ph.i.i.i.i.i.i.i.1.i.i:                       ; preds = %bb.f
  %.0810.i.i.i.i.i.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 28
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.1.i.i = load i32, ptr %i.n, align 4
  %i.ai = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.1.i.i, align 4
  %i.aj = icmp eq i32 %i.ai, %.sroa.0.0.copyload.i.i.i.i.i.i.i.1.i.i
  br i1 %i.aj, label %bb.g, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15ChangeOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.1.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.al = load <2 x i8>, ptr %i.ak, align 4, !noalias !3036
  %i.am = load <2 x i8>, ptr %i.o, align 4, !noalias !3037
  %i.an = icmp eq <2 x i8> %i.al, %i.am
  %3 = freeze <2 x i1> %i.an
  %4 = bitcast <2 x i1> %3 to i2
  %or.cond.i.i = icmp eq i2 %4, -1
  br i1 %or.cond.i.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15ChangeOrDeoptOpEE12EqualsForGVNERKS5_.exit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15ChangeOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15ChangeOrDeoptOpEE12EqualsForGVNERKS5_.exit: ; preds = %bb.g
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.p, align 8
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.47.0.copyload.i.i = load i32, ptr %.sroa.47.0..sroa_idx.i.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.06.0.copyload.i.i = load ptr, ptr %i.ao, align 8
  %i.ap = icmp eq ptr %.sroa.06.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  %i.aq = icmp eq i32 %.sroa.47.0.copyload.i.i, %.sroa.4.0.copyload.i.i
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %i.ar, label %.loopexit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15ChangeOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15ChangeOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread: ; preds = %bb.d, %bb.e, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15ChangeOrDeoptOpEE12EqualsForGVNERKS5_.exit, %bb.g, %.lr.ph.i.i.i.i.i.i.i.1.i.i, %bb.f, %bb.c
  %i.as = add i64 %.02632, 1
  %i.at = and i64 %i.c, %i.as                     ; 2 uses
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %._crit_edge, label %bb.c, !llvm.loop !3035

.loopexit:                                        ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15ChangeOrDeoptOpEE12EqualsForGVNERKS5_.exit, %._crit_edge, %bb.b
  %i.ay = phi ptr [ %.lcssa, %bb.b ], [ %.lcssa, %._crit_edge ], [ %i.r, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_15ChangeOrDeoptOpEE12EqualsForGVNERKS5_.exit ]
  ret ptr %i.ay
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_15ChangeOrDeoptOpEEEmRKT0_b(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.d = load i8, ptr %i.b, align 1, !noalias !3040
  %i.e = load i8, ptr %i.a, align 4, !noalias !3040
  %.0.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.0.i.i.ptr.i.i, align 8
  %i.f = lshr i32 %.sroa.0.0.copyload.i.i.i.i, 4
  %i.g = zext nneg i32 %i.f to i64
  %.0.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i.i.1.i.i = load i32, ptr %.0.i.i.ptr.1.i.i, align 4
  %i.h = lshr i32 %.sroa.0.0.copyload.i.i.1.i.i, 4
  %i.i = zext nneg i32 %i.h to i64
  %i.j = mul nuw nsw i64 %i.g, 35651567
  %i.k = add nuw nsw i64 %i.j, -4175292557550144145 ; 2 uses
  %i.l = lshr i64 %i.k, 24
  %i.m = xor i64 %i.l, %i.k
  %i.n = mul i64 %i.m, 265                        ; 2 uses
  %i.o = lshr i64 %i.n, 14
  %i.p = xor i64 %i.o, %i.n
  %i.q = mul i64 %i.p, 21                         ; 2 uses
  %i.r = lshr i64 %i.q, 28
  %i.s = xor i64 %i.r, %i.q
  %i.t = mul i64 %i.s, 2147483649
  %i.u = ptrtoint ptr %.sroa.0.0.copyload.i to i64 ; 2 uses
  %i.v = shl i64 %i.u, 21
  %i.w = xor i64 %i.u, -1
  %i.x = add i64 %i.v, %i.w                       ; 2 uses
  %i.y = lshr i64 %i.x, 24
  %i.z = xor i64 %i.y, %i.x
  %i.aa = mul i64 %i.z, 265                       ; 2 uses
  %i.ab = lshr i64 %i.aa, 14
  %i.ac = xor i64 %i.ab, %i.aa
  %i.ad = mul i64 %i.ac, 21                       ; 2 uses
  %i.ae = lshr i64 %i.ad, 28
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = mul i64 %i.af, 8398540807049701781      ; 2 uses
  %i.ah = lshr i64 %i.ag, 47
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = mul i64 %i.ai, 3866779316627607737
  %i.ak = sext i32 %.sroa.4.0.copyload.i to i64
  %i.al = mul i64 %i.ak, -4132994306676758123     ; 2 uses
  %i.am = lshr i64 %i.al, 47
  %i.an = xor i64 %i.am, %i.al
  %i.ao = mul i64 %i.an, -4132994306676758123
  %i.ap = xor i64 %i.aj, %i.ao
  %i.aq = mul i64 %i.ap, 3526073081333318373
  %i.ar = zext i8 %i.d to i64
  %i.as = add i64 %i.aq, %i.ar
  %i.at = mul i64 %i.as, 17
  %i.au = zext i8 %i.e to i64
  %i.av = add nuw nsw i64 %i.i, %i.au
  %reass.add.i = add i64 %i.av, %i.at
  %reass.mul.i = mul i64 %reass.add.i, 17
  %i.aw = add i64 %reass.mul.i, %i.t
  %i.ax = mul i64 %i.aw, 17
  %i.ay = add i64 %i.ax, 124                      ; 2 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ba = load i32, ptr %i.az, align 4            ; 2 uses
  %i.bb = xor i32 %i.ba, -1
  %i.bc = shl i32 %i.ba, 15
  %i.bd = add i32 %i.bc, %i.bb                    ; 2 uses
  %i.be = lshr i32 %i.bd, 12
  %i.bf = xor i32 %i.be, %i.bd
  %i.bg = mul i32 %i.bf, 5                        ; 2 uses
  %i.bh = lshr i32 %i.bg, 4
  %i.bi = xor i32 %i.bh, %i.bg
  %i.bj = mul i32 %i.bi, 2057                     ; 2 uses
  %i.bk = lshr i32 %i.bj, 16
  %i.bl = xor i32 %i.bk, %i.bj
  %i.bm = zext i32 %i.bl to i64
  %i.bn = mul i64 %i.ay, 17
  %i.bo = add i64 %i.bn, %i.bm
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.bo, %bb.b ], [ %i.ay, %bb.a ]
  %. = tail call i64 @llvm.umax.i64(i64 %.0, i64 1)
  ret i64 %.
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev15CheckHeapObjectERKNS4_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(20) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %"class.v8::internal::maglev::VirtualObjectList", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = lshr i64 %i.c, 32
  %i.e = trunc i64 %i.d to i16                    ; 2 uses
  %i.f = and i16 %i.e, 2
  %.not.i.i.i = icmp eq i16 %i.f, 0
  %.neg.i.i = select i1 %.not.i.i.i, i64 0, i64 -48
  %i.g = and i16 %i.e, 6
  %i.h = icmp eq i16 %i.g, 4
  %.neg2.i.i = select i1 %i.h, i64 -56, i64 0
  %.neg3.i.i = add nsw i64 %.neg.i.i, %.neg2.i.i
  %i.i = trunc i64 %i.c to i32
  %i.j = lshr i32 %i.i, 16
  %i.k = getelementptr inbounds i8, ptr %1, i64 -8 ; 3 uses
  %narrow.i.i.i = sub nsw i32 1, %i.j
  %i.l = sext i32 %narrow.i.i.i to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.l
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = add i64 %.neg3.i.i, %i.n
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %.not.i.i.i.i = icmp eq ptr %i.t, %i.r
  br i1 %.not.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.r, ptr %i.s, align 8
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.u = load ptr, ptr %i.p, align 8              ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load i8, ptr %i.v, align 8               ; 2 uses
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.thread.i, label %tailrecurse.i.i

_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.thread.i: ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  store ptr %i.z, ptr %3, align 8
  %i.aa = call i32 @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateERNS0_6maglev21InterpretedDeoptFrameERKNS4_17VirtualObjectListENS0_11interpreter8RegisterEi(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 2147483647, i32 noundef 0)
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateEPNS0_6maglev14EagerDeoptInfoE.exit

tailrecurse.i.i:                                  ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i, %tailrecurse.i.i
  %.tr1.i.i = phi ptr [ %i.ac, %tailrecurse.i.i ], [ %i.u, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr1.i.i, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ae = load i8, ptr %i.ad, align 8
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.i, label %tailrecurse.i.i

_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.i: ; preds = %tailrecurse.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  store ptr %i.ah, ptr %3, align 8
  %i.ai = icmp eq i8 %i.w, 3
  br i1 %i.ai, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.i
  %i.aj = call i32 @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateERNS0_6maglev29BuiltinContinuationDeoptFrameERKNS4_17VirtualObjectListE(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateEPNS0_6maglev14EagerDeoptInfoE.exit

bb.d:                                             ; preds = %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.53) #28
  unreachable

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateEPNS0_6maglev14EagerDeoptInfoE.exit: ; preds = %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.thread.i, %bb.c
  %.sroa.06.0.i = phi i32 [ %i.aa, %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.thread.i ], [ %i.aj, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.not = icmp eq i32 %.sroa.06.0.i, -1
  br i1 %.not, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12DeoptimizeIfENS2_1VINS2_12WordWithBitsILm32EEEEENSI_INS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateEPNS0_6maglev14EagerDeoptInfoE.exit
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEJNS2_14ShadowyOpIndexESJ_NSI_15JSPrimitiveKindENS2_22RegisterRepresentationENSI_19InputInterpretationENS1_14FeedbackSourceEEEENS2_7OpIndexEDpT0_:bb.a
  %.pre = load ptr, ptr %i.f, align 8
  %.pre14 = ptrtoint ptr %.pre to i64
  %.pre15 = sub i64 %.pre10.i.i.i.i, %.pre14
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_15JSPrimitiveKindENS2_22RegisterRepresentationENS4_19InputInterpretationENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_15JSPrimitiveKindENS2_22RegisterRepresentationENS4_19InputInterpretationENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi16 = phi i64 [ %i.i, %bb.a ], [ %.pre15, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi16 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi16, 4
  %i.y = and i64 %i.x, 268435455
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.y
  store i16 4, ptr %i.z, align 2
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = add i32 %i.u, 32
  %i.ac = lshr i32 %i.ab, 4
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ae
  store i16 4, ptr %i.af, align 2
  store i8 -126, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 2, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i32 %1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 28 ; 2 uses
  store i32 %2, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %3, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  store i8 %4, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  store i8 %5, ptr %i.am, align 2
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  %i.ao = load ptr, ptr %i.f, align 8
  %i.ap = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.aq = zext i32 %1 to i64
  %i.ar = add i64 %i.ap, %i.aq
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.au, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, label %bb.c, !prof !345

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_15JSPrimitiveKindENS2_22RegisterRepresentationENS4_19InputInterpretationENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit
  %i.av = add nuw i8 %i.au, 1
  store i8 %i.av, ptr %i.at, align 1
  %.pre.i = load ptr, ptr %i.f, align 8
  %.pre12.i = ptrtoint ptr %.pre.i to i64
  %.sroa.01.0.copyload.1.i.pre = load i32, ptr %i.aj, align 4
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i: ; preds = %bb.c, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_15JSPrimitiveKindENS2_22RegisterRepresentationENS4_19InputInterpretationENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit
  %.sroa.01.0.copyload.1.i = phi i32 [ %2, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_15JSPrimitiveKindENS2_22RegisterRepresentationENS4_19InputInterpretationENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit ], [ %.sroa.01.0.copyload.1.i.pre, %bb.c ]
  %.pre-phi.i = phi i64 [ %i.ap, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_15JSPrimitiveKindENS2_22RegisterRepresentationENS4_19InputInterpretationENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit ], [ %.pre12.i, %bb.c ]
  %i.aw = zext i32 %.sroa.01.0.copyload.1.i to i64
  %i.ax = add i64 %.pre-phi.i, %i.aw
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1             ; 2 uses
  %.not.i.1.i = icmp eq i8 %i.ba, -1
  br i1 %.not.i.1.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEEEvRKT_.exit, label %bb.d, !prof !345

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %i.bb = add nuw i8 %i.ba, 1
  store i8 %i.bb, ptr %i.az, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 900
  %.sroa.0.0.copyload.i = load i32, ptr %i.bc, align 4
  %i.bd = load ptr, ptr %i.a, align 8, !nonnull !344, !align !355 ; 4 uses
  %i.be = lshr i64 %i.i, 4
  %i.bf = and i64 %i.be, 268435455                ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 216
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 208 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 2
  %.not.i.i11 = icmp ugt i64 %i.bn, %i.bf
  br i1 %.not.i.i11, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.e, !prof !348

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEEEvRKT_.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 200 ; 2 uses
  %i.bp = lshr i64 %i.bf, 1
  %i.bq = add nuw nsw i64 %i.bf, 32
  %i.br = add nuw nsw i64 %i.bq, %i.bp
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i64 noundef %i.br)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bd, i64 224
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = load ptr, ptr %i.bi, align 8
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i64 noundef %i.by)
  %.pre.i.i = load ptr, ptr %i.bi, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEEEvRKT_.exit, %bb.e
  %i.bz = phi ptr [ %.pre.i.i, %bb.e ], [ %i.bj, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEEEvRKT_.exit ]
  %i.ca = trunc i64 %i.i to i32
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bf
  store i32 %.sroa.0.0.copyload.i, ptr %i.cb, align 4
  ret i32 %i.ca
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEEEPNSJ_5EntryERKT_Pm(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEEEmRKT0_b(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext true) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, %i.a                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.d ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %0, i64 -8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 6
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread, %bb.a
  %.lcssa = phi ptr [ %i.g, %bb.a ], [ %i.az, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread ] ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  store i64 %i.a, ptr %2, align 8
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread
  %i.r = phi i64 [ %i.i, %.lr.ph ], [ %i.bb, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread ]
  %i.s = phi ptr [ %i.g, %.lr.ph ], [ %i.az, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread ] ; 3 uses
  %.02632 = phi i64 [ %i.d, %.lr.ph ], [ %i.ay, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread ]
  %i.t = icmp eq i64 %i.r, %i.a
  br i1 %i.t, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.k, align 8, !nonnull !344, !align !355
  %.sroa.0.0.copyload = load i32, ptr %i.s, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = zext i32 %.sroa.0.0.copyload to i64
  %i.z = add i64 %i.x, %i.y
  %i.aa = inttoptr i64 %i.z to ptr                ; 7 uses
  %i.ab = load i8, ptr %i.aa, align 4
  %i.ac = icmp eq i8 %i.ab, -126
  br i1 %i.ac, label %bb.e, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ad = load i32, ptr %i.l, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = icmp eq i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.f, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

bb.f:                                             ; preds = %bb.e
  %.0810.i.i.i.i.i.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i32, ptr %i.m, align 8
  %i.ah = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.i.i, align 4
  %i.ai = icmp eq i32 %i.ah, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i.i.i.1.i.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

.lr.ph.i.i.i.i.i.i.i.1.i.i:                       ; preds = %bb.f
  %.0810.i.i.i.i.i.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.1.i.i = load i32, ptr %i.n, align 4
  %i.aj = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.1.i.i, align 4
  %i.ak = icmp eq i32 %i.aj, %.sroa.0.0.copyload.i.i.i.i.i.i.i.1.i.i
  br i1 %i.ak, label %bb.g, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.1.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 6
  %i.an = load i8, ptr %i.am, align 2, !noalias !3595
  %i.ao = load i8, ptr %i.p, align 2, !noalias !3596
  %i.ap = load <2 x i8>, ptr %i.al, align 4, !noalias !3595
  %i.aq = load <2 x i8>, ptr %i.o, align 4, !noalias !3596
  %i.ar = icmp eq <2 x i8> %i.ap, %i.aq
  %3 = freeze <2 x i1> %i.ar
  %4 = bitcast <2 x i1> %3 to i2
  %or.cond.i.i = icmp eq i2 %4, -1
  %i.as = icmp eq i8 %i.an, %i.ao
  %or.cond18.i.i = select i1 %or.cond.i.i, i1 %i.as, i1 false
  br i1 %or.cond18.i.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE12EqualsForGVNERKS5_.exit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE12EqualsForGVNERKS5_.exit: ; preds = %bb.g
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.q, align 8
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.47.0.copyload.i.i = load i32, ptr %.sroa.47.0..sroa_idx.i.i, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.06.0.copyload.i.i = load ptr, ptr %i.at, align 8
  %i.au = icmp eq ptr %.sroa.06.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  %i.av = icmp eq i32 %.sroa.47.0.copyload.i.i, %.sroa.4.0.copyload.i.i
  %i.aw = select i1 %i.au, i1 %i.av, i1 false
  br i1 %i.aw, label %.loopexit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread: ; preds = %bb.d, %bb.e, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE12EqualsForGVNERKS5_.exit, %bb.g, %.lr.ph.i.i.i.i.i.i.i.1.i.i, %bb.f, %bb.c
  %i.ax = add i64 %.02632, 1
  %i.ay = and i64 %i.c, %i.ax                     ; 2 uses
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.ay ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.ba, align 8            ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %._crit_edge, label %bb.c, !llvm.loop !3594

.loopexit:                                        ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE12EqualsForGVNERKS5_.exit, %._crit_edge, %bb.b
  %i.bd = phi ptr [ %.lcssa, %bb.b ], [ %.lcssa, %._crit_edge ], [ %i.s, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEE12EqualsForGVNERKS5_.exit ]
  ret ptr %i.bd
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_37ConvertUntaggedToJSPrimitiveOrDeoptOpEEEmRKT0_b(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.e = load i8, ptr %i.c, align 2, !noalias !3599
  %i.f = load i8, ptr %i.b, align 1, !noalias !3599
  %i.g = load i8, ptr %i.a, align 4, !noalias !3599
  %.0.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.0.i.i.ptr.i.i, align 8
  %i.h = lshr i32 %.sroa.0.0.copyload.i.i.i.i, 4
  %i.i = zext nneg i32 %i.h to i64
  %.0.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i.i.1.i.i = load i32, ptr %.0.i.i.ptr.1.i.i, align 4
  %i.j = lshr i32 %.sroa.0.0.copyload.i.i.1.i.i, 4
  %i.k = zext nneg i32 %i.j to i64
  %i.l = mul nuw nsw i64 %i.i, 35651567
  %i.m = add nuw nsw i64 %i.l, -4175292557550144145 ; 2 uses
  %i.n = lshr i64 %i.m, 24
  %i.o = xor i64 %i.n, %i.m
  %i.p = mul i64 %i.o, 265                        ; 2 uses
  %i.q = lshr i64 %i.p, 14
  %i.r = xor i64 %i.q, %i.p
  %i.s = mul i64 %i.r, 21                         ; 2 uses
  %i.t = lshr i64 %i.s, 28
  %i.u = xor i64 %i.t, %i.s
  %i.v = mul i64 %i.u, 2147483649
  %i.w = ptrtoint ptr %.sroa.0.0.copyload.i to i64 ; 2 uses
  %i.x = shl i64 %i.w, 21
  %i.y = xor i64 %i.w, -1
  %i.z = add i64 %i.x, %i.y                       ; 2 uses
  %i.aa = lshr i64 %i.z, 24
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = mul i64 %i.ab, 265                      ; 2 uses
  %i.ad = lshr i64 %i.ac, 14
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = mul i64 %i.ae, 21                       ; 2 uses
  %i.ag = lshr i64 %i.af, 28
  %i.ah = xor i64 %i.ag, %i.af
  %i.ai = mul i64 %i.ah, 8398540807049701781      ; 2 uses
  %i.aj = lshr i64 %i.ai, 47
  %i.ak = xor i64 %i.aj, %i.ai
  %i.al = mul i64 %i.ak, 3866779316627607737
  %i.am = sext i32 %.sroa.4.0.copyload.i to i64
  %i.an = mul i64 %i.am, -4132994306676758123     ; 2 uses
  %i.ao = lshr i64 %i.an, 47
  %i.ap = xor i64 %i.ao, %i.an
  %i.aq = mul i64 %i.ap, -4132994306676758123
  %i.ar = xor i64 %i.al, %i.aq
  %i.as = mul i64 %i.ar, 3526073081333318373
  %i.at = zext i8 %i.e to i64
  %i.au = add i64 %i.as, %i.at
  %i.av = mul i64 %i.au, 17
  %i.aw = zext i8 %i.f to i64
  %i.ax = add i64 %i.av, %i.aw
  %i.ay = mul i64 %i.ax, 17
  %i.az = zext i8 %i.g to i64
  %i.ba = add nuw nsw i64 %i.k, %i.az
  %reass.add.i = add i64 %i.ba, %i.ay
  %reass.mul.i = mul i64 %reass.add.i, 17
  %i.bb = add i64 %reass.mul.i, %i.v
  %i.bc = mul i64 %i.bb, 17
  %i.bd = add i64 %i.bc, 130                      ; 2 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = xor i32 %i.bf, -1
  %i.bh = shl i32 %i.bf, 15
  %i.bi = add i32 %i.bh, %i.bg                    ; 2 uses
  %i.bj = lshr i32 %i.bi, 12
  %i.bk = xor i32 %i.bj, %i.bi
  %i.bl = mul i32 %i.bk, 5                        ; 2 uses
  %i.bm = lshr i32 %i.bl, 4
  %i.bn = xor i32 %i.bm, %i.bl
  %i.bo = mul i32 %i.bn, 2057                     ; 2 uses
  %i.bp = lshr i32 %i.bo, 16
  %i.bq = xor i32 %i.bp, %i.bo
  %i.br = zext i32 %i.bq to i64
  %i.bs = mul i64 %i.bd, 17
  %i.bt = add i64 %i.bs, %i.br
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.bt, %bb.b ], [ %i.bd, %bb.a ]
  %. = tail call i64 @llvm.umax.i64(i64 %.0, i64 1)
  ret i64 %.
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev19CheckedSmiTagUint32ERKNS4_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(20) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %"class.v8::internal::maglev::VirtualObjectList", align 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = lshr i64 %i.d, 32
  %i.f = trunc i64 %i.e to i16                    ; 2 uses
  %i.g = and i16 %i.f, 2
  %.not.i.i.i = icmp eq i16 %i.g, 0
  %.neg.i.i = select i1 %.not.i.i.i, i64 0, i64 -48
  %i.h = and i16 %i.f, 6
  %i.i = icmp eq i16 %i.h, 4
  %.neg2.i.i = select i1 %i.i, i64 -56, i64 0
  %.neg3.i.i = add nsw i64 %.neg.i.i, %.neg2.i.i
  %i.j = trunc i64 %i.d to i32
  %i.k = lshr i32 %i.j, 16
  %i.l = getelementptr inbounds i8, ptr %1, i64 -8 ; 3 uses
  %narrow.i.i.i = sub nsw i32 1, %i.k
  %i.m = sext i32 %narrow.i.i.i to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.m
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = add i64 %.neg3.i.i, %i.o
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.s
  br i1 %.not.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.s, ptr %i.t, align 8
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.v = load ptr, ptr %i.q, align 8              ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load i8, ptr %i.w, align 8               ; 2 uses
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.thread.i, label %tailrecurse.i.i

_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.thread.i: ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  store ptr %i.aa, ptr %3, align 8
  %i.ab = call i32 @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateERNS0_6maglev21InterpretedDeoptFrameERKNS4_17VirtualObjectListENS0_11interpreter8RegisterEi(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 2147483647, i32 noundef 0)
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateEPNS0_6maglev14EagerDeoptInfoE.exit

tailrecurse.i.i:                                  ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i, %tailrecurse.i.i
  %.tr1.i.i = phi ptr [ %i.ad, %tailrecurse.i.i ], [ %i.v, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr1.i.i, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load i8, ptr %i.ae, align 8
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.i, label %tailrecurse.i.i

_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.i: ; preds = %tailrecurse.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  store ptr %i.ai, ptr %3, align 8
  %i.aj = icmp eq i8 %i.x, 3
  br i1 %i.aj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.i
  %i.ak = call i32 @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateERNS0_6maglev29BuiltinContinuationDeoptFrameERKNS4_17VirtualObjectListE(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateEPNS0_6maglev14EagerDeoptInfoE.exit

bb.d:                                             ; preds = %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.53) #28
  unreachable
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEJNS2_14ShadowyOpIndexESJ_NSI_15JSPrimitiveKindENSI_12UntaggedKindENS1_21CheckForMinusZeroModeENS1_14FeedbackSourceEEEENS2_7OpIndexEDpT0_:bb.a
  %.pre = load ptr, ptr %i.f, align 8
  %.pre13 = ptrtoint ptr %.pre to i64
  %.pre14 = sub i64 %.pre10.i.i.i.i, %.pre13
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_15JSPrimitiveKindENS4_12UntaggedKindENS1_21CheckForMinusZeroModeENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_15JSPrimitiveKindENS4_12UntaggedKindENS1_21CheckForMinusZeroModeENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi15 = phi i64 [ %i.i, %bb.a ], [ %.pre14, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi15 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi15, 4
  %i.y = and i64 %i.x, 268435455
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.y
  store i16 4, ptr %i.z, align 2
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = add i32 %i.u, 32
  %i.ac = lshr i32 %i.ab, 4
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ae
  store i16 4, ptr %i.af, align 2
  store i8 -128, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 2, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i32 %1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 28 ; 2 uses
  store i32 %2, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %3, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  store i8 %4, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  store i8 %5, ptr %i.am, align 2
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  %i.ao = load ptr, ptr %i.f, align 8
  %i.ap = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.aq = zext i32 %1 to i64
  %i.ar = add i64 %i.ap, %i.aq
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.au, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, label %bb.c, !prof !345

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_15JSPrimitiveKindENS4_12UntaggedKindENS1_21CheckForMinusZeroModeENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit
  %i.av = add nuw i8 %i.au, 1
  store i8 %i.av, ptr %i.at, align 1
  %.pre.i = load ptr, ptr %i.f, align 8
  %.pre12.i = ptrtoint ptr %.pre.i to i64
  %.sroa.01.0.copyload.1.i.pre = load i32, ptr %i.aj, align 4
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i: ; preds = %bb.c, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_15JSPrimitiveKindENS4_12UntaggedKindENS1_21CheckForMinusZeroModeENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit
  %.sroa.01.0.copyload.1.i = phi i32 [ %2, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_15JSPrimitiveKindENS4_12UntaggedKindENS1_21CheckForMinusZeroModeENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit ], [ %.sroa.01.0.copyload.1.i.pre, %bb.c ]
  %.pre-phi.i = phi i64 [ %i.ap, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_15JSPrimitiveKindENS4_12UntaggedKindENS1_21CheckForMinusZeroModeENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit ], [ %.pre12.i, %bb.c ]
  %i.aw = zext i32 %.sroa.01.0.copyload.1.i to i64
  %i.ax = add i64 %.pre-phi.i, %i.aw
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1             ; 2 uses
  %.not.i.1.i = icmp eq i8 %i.ba, -1
  br i1 %.not.i.1.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEEEvRKT_.exit, label %bb.d, !prof !345

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %i.bb = add nuw i8 %i.ba, 1
  store i8 %i.bb, ptr %i.az, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 900
  %.sroa.0.0.copyload.i = load i32, ptr %i.bc, align 4
  %i.bd = load ptr, ptr %i.a, align 8, !nonnull !344, !align !355 ; 4 uses
  %i.be = lshr i64 %i.i, 4
  %i.bf = and i64 %i.be, 268435455                ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 216
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 208 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 2
  %.not.i.i10 = icmp ugt i64 %i.bn, %i.bf
  br i1 %.not.i.i10, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.e, !prof !348

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEEEvRKT_.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 200 ; 2 uses
  %i.bp = lshr i64 %i.bf, 1
  %i.bq = add nuw nsw i64 %i.bf, 32
  %i.br = add nuw nsw i64 %i.bq, %i.bp
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i64 noundef %i.br)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bd, i64 224
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = load ptr, ptr %i.bi, align 8
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i64 noundef %i.by)
  %.pre.i.i = load ptr, ptr %i.bi, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEEEvRKT_.exit, %bb.e
  %i.bz = phi ptr [ %.pre.i.i, %bb.e ], [ %i.bj, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEEEvRKT_.exit ]
  %i.ca = trunc i64 %i.i to i32
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bf
  store i32 %.sroa.0.0.copyload.i, ptr %i.cb, align 4
  ret i32 %i.ca
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEEEPNSJ_5EntryERKT_Pm(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEEEmRKT0_b(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext true) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, %i.a                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.d ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %0, i64 -8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 6
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread, %bb.a
  %.lcssa = phi ptr [ %i.g, %bb.a ], [ %i.az, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread ] ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  store i64 %i.a, ptr %2, align 8
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread
  %i.r = phi i64 [ %i.i, %.lr.ph ], [ %i.bb, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread ]
  %i.s = phi ptr [ %i.g, %.lr.ph ], [ %i.az, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread ] ; 3 uses
  %.02632 = phi i64 [ %i.d, %.lr.ph ], [ %i.ay, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread ]
  %i.t = icmp eq i64 %i.r, %i.a
  br i1 %i.t, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.k, align 8, !nonnull !344, !align !355
  %.sroa.0.0.copyload = load i32, ptr %i.s, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = zext i32 %.sroa.0.0.copyload to i64
  %i.z = add i64 %i.x, %i.y
  %i.aa = inttoptr i64 %i.z to ptr                ; 7 uses
  %i.ab = load i8, ptr %i.aa, align 4
  %i.ac = icmp eq i8 %i.ab, -128
  br i1 %i.ac, label %bb.e, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ad = load i32, ptr %i.l, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = icmp eq i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.f, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

bb.f:                                             ; preds = %bb.e
  %.0810.i.i.i.i.i.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i32, ptr %i.m, align 8
  %i.ah = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.i.i, align 4
  %i.ai = icmp eq i32 %i.ah, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i.i.i.1.i.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

.lr.ph.i.i.i.i.i.i.i.1.i.i:                       ; preds = %bb.f
  %.0810.i.i.i.i.i.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.1.i.i = load i32, ptr %i.n, align 4
  %i.aj = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.1.i.i, align 4
  %i.ak = icmp eq i32 %i.aj, %.sroa.0.0.copyload.i.i.i.i.i.i.i.1.i.i
  br i1 %i.ak, label %bb.g, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.1.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 6
  %i.an = load i8, ptr %i.am, align 2, !noalias !3608
  %i.ao = load i8, ptr %i.p, align 2, !noalias !3609
  %i.ap = load <2 x i8>, ptr %i.al, align 4, !noalias !3608
  %i.aq = load <2 x i8>, ptr %i.o, align 4, !noalias !3609
  %i.ar = icmp eq <2 x i8> %i.ap, %i.aq
  %3 = freeze <2 x i1> %i.ar
  %4 = bitcast <2 x i1> %3 to i2
  %or.cond.i.i = icmp eq i2 %4, -1
  %i.as = icmp eq i8 %i.an, %i.ao
  %or.cond18.i.i = select i1 %or.cond.i.i, i1 %i.as, i1 false
  br i1 %or.cond18.i.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit: ; preds = %bb.g
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.q, align 8
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.47.0.copyload.i.i = load i32, ptr %.sroa.47.0..sroa_idx.i.i, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.06.0.copyload.i.i = load ptr, ptr %i.at, align 8
  %i.au = icmp eq ptr %.sroa.06.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  %i.av = icmp eq i32 %.sroa.47.0.copyload.i.i, %.sroa.4.0.copyload.i.i
  %i.aw = select i1 %i.au, i1 %i.av, i1 false
  br i1 %i.aw, label %.loopexit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread: ; preds = %bb.d, %bb.e, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit, %bb.g, %.lr.ph.i.i.i.i.i.i.i.1.i.i, %bb.f, %bb.c
  %i.ax = add i64 %.02632, 1
  %i.ay = and i64 %i.c, %i.ax                     ; 2 uses
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.ay ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.ba, align 8            ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %._crit_edge, label %bb.c, !llvm.loop !3607

.loopexit:                                        ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit, %._crit_edge, %bb.b
  %i.bd = phi ptr [ %.lcssa, %bb.b ], [ %.lcssa, %._crit_edge ], [ %i.s, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit ]
  ret ptr %i.bd
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEEEmRKT0_b(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.e = load i8, ptr %i.c, align 2, !noalias !3612
  %i.f = load i8, ptr %i.b, align 1, !noalias !3612
  %i.g = load i8, ptr %i.a, align 4, !noalias !3612
  %.0.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.0.i.i.ptr.i.i, align 8
  %i.h = lshr i32 %.sroa.0.0.copyload.i.i.i.i, 4
  %i.i = zext nneg i32 %i.h to i64
  %.0.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i.i.1.i.i = load i32, ptr %.0.i.i.ptr.1.i.i, align 4
  %i.j = lshr i32 %.sroa.0.0.copyload.i.i.1.i.i, 4
  %i.k = zext nneg i32 %i.j to i64
  %i.l = mul nuw nsw i64 %i.i, 35651567
  %i.m = add nuw nsw i64 %i.l, -4175292557550144145 ; 2 uses
  %i.n = lshr i64 %i.m, 24
  %i.o = xor i64 %i.n, %i.m
  %i.p = mul i64 %i.o, 265                        ; 2 uses
  %i.q = lshr i64 %i.p, 14
  %i.r = xor i64 %i.q, %i.p
  %i.s = mul i64 %i.r, 21                         ; 2 uses
  %i.t = lshr i64 %i.s, 28
  %i.u = xor i64 %i.t, %i.s
  %i.v = mul i64 %i.u, 2147483649
  %i.w = ptrtoint ptr %.sroa.0.0.copyload.i to i64 ; 2 uses
  %i.x = shl i64 %i.w, 21
  %i.y = xor i64 %i.w, -1
  %i.z = add i64 %i.x, %i.y                       ; 2 uses
  %i.aa = lshr i64 %i.z, 24
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = mul i64 %i.ab, 265                      ; 2 uses
  %i.ad = lshr i64 %i.ac, 14
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = mul i64 %i.ae, 21                       ; 2 uses
  %i.ag = lshr i64 %i.af, 28
  %i.ah = xor i64 %i.ag, %i.af
  %i.ai = mul i64 %i.ah, 8398540807049701781      ; 2 uses
  %i.aj = lshr i64 %i.ai, 47
  %i.ak = xor i64 %i.aj, %i.ai
  %i.al = mul i64 %i.ak, 3866779316627607737
  %i.am = sext i32 %.sroa.4.0.copyload.i to i64
  %i.an = mul i64 %i.am, -4132994306676758123     ; 2 uses
  %i.ao = lshr i64 %i.an, 47
  %i.ap = xor i64 %i.ao, %i.an
  %i.aq = mul i64 %i.ap, -4132994306676758123
  %i.ar = xor i64 %i.al, %i.aq
  %i.as = mul i64 %i.ar, 3526073081333318373
  %i.at = zext i8 %i.e to i64
  %i.au = add i64 %i.as, %i.at
  %i.av = mul i64 %i.au, 17
  %i.aw = zext i8 %i.f to i64
  %i.ax = add i64 %i.av, %i.aw
  %i.ay = mul i64 %i.ax, 17
  %i.az = zext i8 %i.g to i64
  %i.ba = add nuw nsw i64 %i.k, %i.az
  %reass.add.i = add i64 %i.ba, %i.ay
  %reass.mul.i = mul i64 %reass.add.i, 17
  %i.bb = add i64 %reass.mul.i, %i.v
  %i.bc = mul i64 %i.bb, 17
  %i.bd = add i64 %i.bc, 128                      ; 2 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = xor i32 %i.bf, -1
  %i.bh = shl i32 %i.bf, 15
  %i.bi = add i32 %i.bh, %i.bg                    ; 2 uses
  %i.bj = lshr i32 %i.bi, 12
  %i.bk = xor i32 %i.bj, %i.bi
  %i.bl = mul i32 %i.bk, 5                        ; 2 uses
  %i.bm = lshr i32 %i.bl, 4
  %i.bn = xor i32 %i.bm, %i.bl
  %i.bo = mul i32 %i.bn, 2057                     ; 2 uses
  %i.bp = lshr i32 %i.bo, 16
  %i.bq = xor i32 %i.bp, %i.bo
  %i.br = zext i32 %i.bq to i64
  %i.bs = mul i64 %i.bd, 17
  %i.bt = add i64 %i.bs, %i.br
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.bt, %bb.b ], [ %i.bd, %bb.a ]
  %. = tail call i64 @llvm.umax.i64(i64 %.0, i64 1)
  ret i64 %.
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev25CheckedInternalizedStringERKNS4_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(20) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.v8::internal::maglev::VirtualObjectList", align 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = lshr i64 %i.d, 32
  %i.f = trunc i64 %i.e to i16                    ; 2 uses
  %i.g = and i16 %i.f, 2
  %.not.i.i.i = icmp eq i16 %i.g, 0
  %.neg.i.i = select i1 %.not.i.i.i, i64 0, i64 -48
  %i.h = and i16 %i.f, 6
  %i.i = icmp eq i16 %i.h, 4
  %.neg2.i.i = select i1 %i.i, i64 -56, i64 0
  %.neg3.i.i = add nsw i64 %.neg.i.i, %.neg2.i.i
  %i.j = trunc i64 %i.d to i32
  %i.k = lshr i32 %i.j, 16
  %i.l = getelementptr inbounds i8, ptr %1, i64 -8 ; 3 uses
  %narrow.i.i.i = sub nsw i32 1, %i.k
  %i.m = sext i32 %narrow.i.i.i to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.m
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = add i64 %.neg3.i.i, %i.o
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.s
  br i1 %.not.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.s, ptr %i.t, align 8
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.v = load ptr, ptr %i.q, align 8              ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load i8, ptr %i.w, align 8               ; 2 uses
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.thread.i, label %tailrecurse.i.i

_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.thread.i: ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  store ptr %i.aa, ptr %3, align 8
  %i.ab = call i32 @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateERNS0_6maglev21InterpretedDeoptFrameERKNS4_17VirtualObjectListENS0_11interpreter8RegisterEi(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 2147483647, i32 noundef 0)
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateEPNS0_6maglev14EagerDeoptInfoE.exit

tailrecurse.i.i:                                  ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i, %tailrecurse.i.i
  %.tr1.i.i = phi ptr [ %i.ad, %tailrecurse.i.i ], [ %i.v, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr1.i.i, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load i8, ptr %i.ae, align 8
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.i, label %tailrecurse.i.i

_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.i: ; preds = %tailrecurse.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  store ptr %i.ai, ptr %3, align 8
  %i.aj = icmp eq i8 %i.x, 3
  br i1 %i.aj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.i
  %i.ak = call i32 @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateERNS0_6maglev29BuiltinContinuationDeoptFrameERKNS4_17VirtualObjectListE(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateEPNS0_6maglev14EagerDeoptInfoE.exit

bb.d:                                             ; preds = %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.53) #28
  unreachable
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEJNS2_14ShadowyOpIndexESJ_NSI_12UntaggedKindENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOp15JSPrimitiveKindENS1_14FeedbackSourceEEEENS2_7OpIndexEDpT0_:bb.a
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 4
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre12 = ptrtoint ptr %.pre to i64
  %.pre13 = sub i64 %.pre10.i.i.i.i, %.pre12
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_12UntaggedKindENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOp15JSPrimitiveKindENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_12UntaggedKindENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOp15JSPrimitiveKindENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi14 = phi i64 [ %i.i, %bb.a ], [ %.pre13, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi14 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi14, 4
  %i.y = and i64 %i.x, 268435455
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.y
  store i16 4, ptr %i.z, align 2
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = add i32 %i.u, 32
  %i.ac = lshr i32 %i.ab, 4
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ae
  store i16 4, ptr %i.af, align 2
  store i8 -124, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 2, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i32 %1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 28 ; 2 uses
  store i32 %2, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %3, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  store i8 %4, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  %i.an = load ptr, ptr %i.f, align 8
  %i.ao = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.ap = zext i32 %1 to i64
  %i.aq = add i64 %i.ao, %i.ap
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.at, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, label %bb.c, !prof !345

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_12UntaggedKindENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOp15JSPrimitiveKindENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit
  %i.au = add nuw i8 %i.at, 1
  store i8 %i.au, ptr %i.as, align 1
  %.pre.i = load ptr, ptr %i.f, align 8
  %.pre12.i = ptrtoint ptr %.pre.i to i64
  %.sroa.01.0.copyload.1.i.pre = load i32, ptr %i.aj, align 4
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i: ; preds = %bb.c, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_12UntaggedKindENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOp15JSPrimitiveKindENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit
  %.sroa.01.0.copyload.1.i = phi i32 [ %2, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_12UntaggedKindENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOp15JSPrimitiveKindENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit ], [ %.sroa.01.0.copyload.1.i.pre, %bb.c ]
  %.pre-phi.i = phi i64 [ %i.ao, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_12UntaggedKindENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOp15JSPrimitiveKindENS1_14FeedbackSourceEEEERS4_PNS2_5GraphEDpT_.exit ], [ %.pre12.i, %bb.c ]
  %i.av = zext i32 %.sroa.01.0.copyload.1.i to i64
  %i.aw = add i64 %.pre-phi.i, %i.av
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1             ; 2 uses
  %.not.i.1.i = icmp eq i8 %i.az, -1
  br i1 %.not.i.1.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEEEvRKT_.exit, label %bb.d, !prof !345

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %i.ba = add nuw i8 %i.az, 1
  store i8 %i.ba, ptr %i.ay, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 900
  %.sroa.0.0.copyload.i = load i32, ptr %i.bb, align 4
  %i.bc = load ptr, ptr %i.a, align 8, !nonnull !344, !align !355 ; 4 uses
  %i.bd = lshr i64 %i.i, 4
  %i.be = and i64 %i.bd, 268435455                ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 216
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 208 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.bj = ptrtoint ptr %i.bg to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 2
  %.not.i.i9 = icmp ugt i64 %i.bm, %i.be
  br i1 %.not.i.i9, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.e, !prof !348

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEEEvRKT_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 200 ; 2 uses
  %i.bo = lshr i64 %i.be, 1
  %i.bp = add nuw nsw i64 %i.be, 32
  %i.bq = add nuw nsw i64 %i.bp, %i.bo
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, i64 noundef %i.bq)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bc, i64 224
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = load ptr, ptr %i.bh, align 8
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, i64 noundef %i.bx)
  %.pre.i.i = load ptr, ptr %i.bh, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEEEvRKT_.exit, %bb.e
  %i.by = phi ptr [ %.pre.i.i, %bb.e ], [ %i.bi, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEEEvRKT_.exit ]
  %i.bz = trunc i64 %i.i to i32
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.be
  store i32 %.sroa.0.0.copyload.i, ptr %i.ca, align 4
  ret i32 %i.bz
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEEEPNSJ_5EntryERKT_Pm(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEEEmRKT0_b(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext true) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, %i.a                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.d ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %0, i64 -8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread, %bb.a
  %.lcssa = phi ptr [ %i.g, %bb.a ], [ %i.au, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread ] ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  store i64 %i.a, ptr %2, align 8
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread
  %i.q = phi i64 [ %i.i, %.lr.ph ], [ %i.aw, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread ]
  %i.r = phi ptr [ %i.g, %.lr.ph ], [ %i.au, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread ] ; 3 uses
  %.02632 = phi i64 [ %i.d, %.lr.ph ], [ %i.at, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread ]
  %i.s = icmp eq i64 %i.q, %i.a
  br i1 %i.s, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.k, align 8, !nonnull !344, !align !355
  %.sroa.0.0.copyload = load i32, ptr %i.r, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = zext i32 %.sroa.0.0.copyload to i64
  %i.y = add i64 %i.w, %i.x
  %i.z = inttoptr i64 %i.y to ptr                 ; 6 uses
  %i.aa = load i8, ptr %i.z, align 4
  %i.ab = icmp eq i8 %i.aa, -124
  br i1 %i.ab, label %bb.e, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %i.l, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = icmp eq i32 %i.ac, %i.ae
  br i1 %i.af, label %bb.f, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

bb.f:                                             ; preds = %bb.e
  %.0810.i.i.i.i.i.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i32, ptr %i.m, align 8
  %i.ag = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.i.i, align 4
  %i.ah = icmp eq i32 %i.ag, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i.i.i.1.i.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

.lr.ph.i.i.i.i.i.i.i.1.i.i:                       ; preds = %bb.f
  %.0810.i.i.i.i.i.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 28
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.1.i.i = load i32, ptr %i.n, align 4
  %i.ai = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.1.i.i, align 4
  %i.aj = icmp eq i32 %i.ai, %.sroa.0.0.copyload.i.i.i.i.i.i.i.1.i.i
  br i1 %i.aj, label %bb.g, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.1.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.al = load <2 x i8>, ptr %i.ak, align 4, !noalias !3628
  %i.am = load <2 x i8>, ptr %i.o, align 4, !noalias !3629
  %i.an = icmp eq <2 x i8> %i.al, %i.am
  %3 = freeze <2 x i1> %i.an
  %4 = bitcast <2 x i1> %3 to i2
  %or.cond.i.i = icmp eq i2 %4, -1
  br i1 %or.cond.i.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit: ; preds = %bb.g
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.p, align 8
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.47.0.copyload.i.i = load i32, ptr %.sroa.47.0..sroa_idx.i.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.06.0.copyload.i.i = load ptr, ptr %i.ao, align 8
  %i.ap = icmp eq ptr %.sroa.06.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  %i.aq = icmp eq i32 %.sroa.47.0.copyload.i.i, %.sroa.4.0.copyload.i.i
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %i.ar, label %.loopexit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit.thread: ; preds = %bb.d, %bb.e, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit, %bb.g, %.lr.ph.i.i.i.i.i.i.i.1.i.i, %bb.f, %bb.c
  %i.as = add i64 %.02632, 1
  %i.at = and i64 %i.c, %i.as                     ; 2 uses
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %._crit_edge, label %bb.c, !llvm.loop !3627

.loopexit:                                        ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit, %._crit_edge, %bb.b
  %i.ay = phi ptr [ %.lcssa, %bb.b ], [ %.lcssa, %._crit_edge ], [ %i.r, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEE12EqualsForGVNERKS5_.exit ]
  ret ptr %i.ay
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEEEmRKT0_b(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.d = load i8, ptr %i.b, align 1, !noalias !3632
  %i.e = load i8, ptr %i.a, align 4, !noalias !3632
  %.0.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.0.i.i.ptr.i.i, align 8
  %i.f = lshr i32 %.sroa.0.0.copyload.i.i.i.i, 4
  %i.g = zext nneg i32 %i.f to i64
  %.0.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i.i.1.i.i = load i32, ptr %.0.i.i.ptr.1.i.i, align 4
  %i.h = lshr i32 %.sroa.0.0.copyload.i.i.1.i.i, 4
  %i.i = zext nneg i32 %i.h to i64
  %i.j = mul nuw nsw i64 %i.g, 35651567
  %i.k = add nuw nsw i64 %i.j, -4175292557550144145 ; 2 uses
  %i.l = lshr i64 %i.k, 24
  %i.m = xor i64 %i.l, %i.k
  %i.n = mul i64 %i.m, 265                        ; 2 uses
  %i.o = lshr i64 %i.n, 14
  %i.p = xor i64 %i.o, %i.n
  %i.q = mul i64 %i.p, 21                         ; 2 uses
  %i.r = lshr i64 %i.q, 28
  %i.s = xor i64 %i.r, %i.q
  %i.t = mul i64 %i.s, 2147483649
  %i.u = ptrtoint ptr %.sroa.0.0.copyload.i to i64 ; 2 uses
  %i.v = shl i64 %i.u, 21
  %i.w = xor i64 %i.u, -1
  %i.x = add i64 %i.v, %i.w                       ; 2 uses
  %i.y = lshr i64 %i.x, 24
  %i.z = xor i64 %i.y, %i.x
  %i.aa = mul i64 %i.z, 265                       ; 2 uses
  %i.ab = lshr i64 %i.aa, 14
  %i.ac = xor i64 %i.ab, %i.aa
  %i.ad = mul i64 %i.ac, 21                       ; 2 uses
  %i.ae = lshr i64 %i.ad, 28
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = mul i64 %i.af, 8398540807049701781      ; 2 uses
  %i.ah = lshr i64 %i.ag, 47
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = mul i64 %i.ai, 3866779316627607737
  %i.ak = sext i32 %.sroa.4.0.copyload.i to i64
  %i.al = mul i64 %i.ak, -4132994306676758123     ; 2 uses
  %i.am = lshr i64 %i.al, 47
  %i.an = xor i64 %i.am, %i.al
  %i.ao = mul i64 %i.an, -4132994306676758123
  %i.ap = xor i64 %i.aj, %i.ao
  %i.aq = mul i64 %i.ap, 3526073081333318373
  %i.ar = zext i8 %i.d to i64
  %i.as = add i64 %i.aq, %i.ar
  %i.at = mul i64 %i.as, 17
  %i.au = zext i8 %i.e to i64
  %i.av = add nuw nsw i64 %i.i, %i.au
  %reass.add.i = add i64 %i.av, %i.at
  %reass.mul.i = mul i64 %reass.add.i, 17
  %i.aw = add i64 %reass.mul.i, %i.t
  %i.ax = mul i64 %i.aw, 17
  %i.ay = add i64 %i.ax, 132                      ; 2 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ba = load i32, ptr %i.az, align 4            ; 2 uses
  %i.bb = xor i32 %i.ba, -1
  %i.bc = shl i32 %i.ba, 15
  %i.bd = add i32 %i.bc, %i.bb                    ; 2 uses
  %i.be = lshr i32 %i.bd, 12
  %i.bf = xor i32 %i.be, %i.bd
  %i.bg = mul i32 %i.bf, 5                        ; 2 uses
  %i.bh = lshr i32 %i.bg, 4
  %i.bi = xor i32 %i.bh, %i.bg
  %i.bj = mul i32 %i.bi, 2057                     ; 2 uses
  %i.bk = lshr i32 %i.bj, 16
  %i.bl = xor i32 %i.bk, %i.bj
  %i.bm = zext i32 %i.bl to i64
  %i.bn = mul i64 %i.ay, 17
  %i.bo = add i64 %i.bn, %i.bm
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.bo, %bb.b ], [ %i.ay, %bb.a ]
  %. = tail call i64 @llvm.umax.i64(i64 %.0, i64 1)
  ret i64 %.
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev20CheckedInt32ToUint32ERKNS4_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(20) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.v8::internal::maglev::VirtualObjectList", align 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = lshr i64 %i.e, 32
  %i.g = trunc i64 %i.f to i16                    ; 2 uses
  %i.h = and i16 %i.g, 2
  %.not.i.i.i = icmp eq i16 %i.h, 0
  %.neg.i.i = select i1 %.not.i.i.i, i64 0, i64 -48
  %i.i = and i16 %i.g, 6
  %i.j = icmp eq i16 %i.i, 4
  %.neg2.i.i = select i1 %i.j, i64 -56, i64 0
  %.neg3.i.i = add nsw i64 %.neg.i.i, %.neg2.i.i
  %i.k = trunc i64 %i.e to i32
  %i.l = lshr i32 %i.k, 16
  %i.m = getelementptr inbounds i8, ptr %1, i64 -8 ; 4 uses
  %narrow.i.i.i = sub nsw i32 1, %i.l
  %i.n = sext i32 %narrow.i.i.i to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.n
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = add i64 %.neg3.i.i, %i.p
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %.not.i.i.i.i = icmp eq ptr %i.v, %i.t
  br i1 %.not.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.t, ptr %i.u, align 8
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.w = load ptr, ptr %i.r, align 8              ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load i8, ptr %i.x, align 8               ; 2 uses
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.thread.i, label %tailrecurse.i.i

_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.thread.i: ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  store ptr %i.ab, ptr %3, align 8
  %i.ac = call i32 @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateERNS0_6maglev21InterpretedDeoptFrameERKNS4_17VirtualObjectListENS0_11interpreter8RegisterEi(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 2147483647, i32 noundef 0)
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateEPNS0_6maglev14EagerDeoptInfoE.exit

tailrecurse.i.i:                                  ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i, %tailrecurse.i.i
  %.tr1.i.i = phi ptr [ %i.ae, %tailrecurse.i.i ], [ %i.w, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr1.i.i, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load i8, ptr %i.af, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.i, label %tailrecurse.i.i

_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.i: ; preds = %tailrecurse.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  store ptr %i.aj, ptr %3, align 8
  %i.ak = icmp eq i8 %i.y, 3
  br i1 %i.ak, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.i
  %i.al = call i32 @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateERNS0_6maglev29BuiltinContinuationDeoptFrameERKNS4_17VirtualObjectListE(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateEPNS0_6maglev14EagerDeoptInfoE.exit

bb.d:                                             ; preds = %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.53) #28
  unreachable

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateEPNS0_6maglev14EagerDeoptInfoE.exit: ; preds = %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.thread.i, %bb.c
  %.sroa.06.0.i = phi i32 [ %i.ac, %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.thread.i ], [ %i.al, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.not = icmp eq i32 %.sroa.06.0.i, -1
  br i1 %.not, label %.critedge, label %bb.e
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_26WordBinopDeoptOnOverflowOpEJNS2_14ShadowyOpIndexESJ_SJ_NSI_4KindENS2_18WordRepresentationENS1_14FeedbackSourceENS1_21CheckForMinusZeroModeEEEENS2_7OpIndexEDpT0_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  store i8 115, ptr %i.s, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 3, ptr %i.ai, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i32 %1, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 36 ; 2 uses
  store i32 %2, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 2 uses
  store i32 %3, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %4, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  store i8 %5, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i8 %7, ptr %i.ao, align 8
  %i.ap = load ptr, ptr %i.f, align 8
  %i.aq = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.ar = zext i32 %1 to i64
  %i.as = add i64 %i.aq, %i.ar
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.av, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, label %bb.c, !prof !345

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm3ENS2_26WordBinopDeoptOnOverflowOpEE3NewIJNS2_14ShadowyOpIndexES7_S7_NS4_4KindENS2_18WordRepresentationENS1_14FeedbackSourceENS1_21CheckForMinusZeroModeEEEERS4_PNS2_5GraphEDpT_.exit
  %i.aw = add nuw i8 %i.av, 1
  store i8 %i.aw, ptr %i.au, align 1
  %.pre.i = load ptr, ptr %i.f, align 8
  %.pre13.i = ptrtoint ptr %.pre.i to i64
  %.sroa.01.0.copyload.1.i.pre = load i32, ptr %i.ak, align 4
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i: ; preds = %bb.c, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm3ENS2_26WordBinopDeoptOnOverflowOpEE3NewIJNS2_14ShadowyOpIndexES7_S7_NS4_4KindENS2_18WordRepresentationENS1_14FeedbackSourceENS1_21CheckForMinusZeroModeEEEERS4_PNS2_5GraphEDpT_.exit
  %.sroa.01.0.copyload.1.i = phi i32 [ %2, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm3ENS2_26WordBinopDeoptOnOverflowOpEE3NewIJNS2_14ShadowyOpIndexES7_S7_NS4_4KindENS2_18WordRepresentationENS1_14FeedbackSourceENS1_21CheckForMinusZeroModeEEEERS4_PNS2_5GraphEDpT_.exit ], [ %.sroa.01.0.copyload.1.i.pre, %bb.c ]
  %.pre-phi.i = phi i64 [ %i.aq, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm3ENS2_26WordBinopDeoptOnOverflowOpEE3NewIJNS2_14ShadowyOpIndexES7_S7_NS4_4KindENS2_18WordRepresentationENS1_14FeedbackSourceENS1_21CheckForMinusZeroModeEEEERS4_PNS2_5GraphEDpT_.exit ], [ %.pre13.i, %bb.c ] ; 2 uses
  %i.ax = zext i32 %.sroa.01.0.copyload.1.i to i64
  %i.ay = add i64 %.pre-phi.i, %i.ax
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1             ; 2 uses
  %.not.i.1.i = icmp eq i8 %i.bb, -1
  br i1 %.not.i.1.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.1.i, label %bb.d, !prof !345

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %i.bc = add nuw i8 %i.bb, 1
  store i8 %i.bc, ptr %i.ba, align 1
  %.pre12.i = load ptr, ptr %i.f, align 8
  %.pre14.i = ptrtoint ptr %.pre12.i to i64
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.1.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.1.i: ; preds = %bb.d, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %.pre-phi15.i = phi i64 [ %.pre14.i, %bb.d ], [ %.pre-phi.i, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i ]
  %.sroa.01.0.copyload.2.i = load i32, ptr %i.al, align 8
  %i.bd = zext i32 %.sroa.01.0.copyload.2.i to i64
  %i.be = add i64 %.pre-phi15.i, %i.bd
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1             ; 2 uses
  %.not.i.2.i = icmp eq i8 %i.bh, -1
  br i1 %.not.i.2.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_26WordBinopDeoptOnOverflowOpEEEvRKT_.exit, label %bb.e, !prof !345

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.1.i
  %i.bi = add nuw i8 %i.bh, 1
  store i8 %i.bi, ptr %i.bg, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_26WordBinopDeoptOnOverflowOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_26WordBinopDeoptOnOverflowOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.1.i, %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 900
  %.sroa.0.0.copyload.i = load i32, ptr %i.bj, align 4
  %i.bk = load ptr, ptr %i.a, align 8, !nonnull !344, !align !355 ; 4 uses
  %i.bl = lshr i64 %i.i, 4
  %i.bm = and i64 %i.bl, 268435455                ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 216
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 208 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 2
  %.not.i.i13 = icmp ugt i64 %i.bu, %i.bm
  br i1 %.not.i.i13, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.f, !prof !348

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_26WordBinopDeoptOnOverflowOpEEEvRKT_.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 200 ; 2 uses
  %i.bw = lshr i64 %i.bm, 1
  %i.bx = add nuw nsw i64 %i.bm, 32
  %i.by = add nuw nsw i64 %i.bx, %i.bw
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, i64 noundef %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bk, i64 224
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = load ptr, ptr %i.bp, align 8
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, i64 noundef %i.cf)
  %.pre.i.i = load ptr, ptr %i.bp, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_26WordBinopDeoptOnOverflowOpEEEvRKT_.exit, %bb.f
  %i.cg = phi ptr [ %.pre.i.i, %bb.f ], [ %i.bq, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_26WordBinopDeoptOnOverflowOpEEEvRKT_.exit ]
  %i.ch = trunc i64 %i.i to i32
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.bm
  store i32 %.sroa.0.0.copyload.i, ptr %i.ci, align 4
  ret i32 %i.ch
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_26WordBinopDeoptOnOverflowOpEEEPNSJ_5EntryERKT_Pm(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_26WordBinopDeoptOnOverflowOpEEEmRKT0_b(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, i1 noundef zeroext true) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, %i.a                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.d ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %0, i64 -8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.6.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit.thread, %bb.a
  %.lcssa = phi ptr [ %i.g, %bb.a ], [ %i.bc, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit.thread ] ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  store i64 %i.a, ptr %2, align 8
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit.thread
  %i.s = phi i64 [ %i.i, %.lr.ph ], [ %i.be, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit.thread ]
  %i.t = phi ptr [ %i.g, %.lr.ph ], [ %i.bc, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit.thread ] ; 3 uses
  %.02632 = phi i64 [ %i.d, %.lr.ph ], [ %i.bb, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit.thread ]
  %i.u = icmp eq i64 %i.s, %i.a
  br i1 %i.u, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.k, align 8, !nonnull !344, !align !355
  %.sroa.0.0.copyload = load i32, ptr %i.t, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = zext i32 %.sroa.0.0.copyload to i64
  %i.aa = add i64 %i.y, %i.z
  %i.ab = inttoptr i64 %i.aa to ptr               ; 8 uses
  %i.ac = load i8, ptr %i.ab, align 4
  %i.ad = icmp eq i8 %i.ac, 115
  br i1 %i.ad, label %bb.e, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ae = load i32, ptr %i.l, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = icmp eq i32 %i.ae, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit.thread

bb.f:                                             ; preds = %bb.e
  %.0810.i.i.i.i.i.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i32, ptr %i.m, align 8
  %i.ai = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.i.i, align 4
  %i.aj = icmp eq i32 %i.ai, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i.i.i.1.i.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit.thread

.lr.ph.i.i.i.i.i.i.i.1.i.i:                       ; preds = %bb.f
  %.0810.i.i.i.i.i.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 36
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.1.i.i = load i32, ptr %i.n, align 4
  %i.ak = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.1.i.i, align 4
  %i.al = icmp eq i32 %i.ak, %.sroa.0.0.copyload.i.i.i.i.i.i.i.1.i.i
  br i1 %i.al, label %.lr.ph.i.i.i.i.i.i.i.2.i.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit.thread

.lr.ph.i.i.i.i.i.i.i.2.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.1.i.i
  %.0810.i.i.i.i.i.i.i.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.2.i.i = load i32, ptr %i.o, align 8
  %i.am = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.2.i.i, align 4
  %i.an = icmp eq i32 %i.am, %.sroa.0.0.copyload.i.i.i.i.i.i.i.2.i.i
  br i1 %i.an, label %bb.g, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit.thread

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.2.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ap = load <2 x i8>, ptr %i.ao, align 4, !noalias !3835
  %i.aq = load <2 x i8>, ptr %i.p, align 4, !noalias !3836
  %i.ar = icmp eq <2 x i8> %i.ap, %i.aq
  %3 = freeze <2 x i1> %i.ar
  %4 = bitcast <2 x i1> %3 to i2
  %or.cond.i.i = icmp eq i2 %4, -1
  br i1 %or.cond.i.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit.thread

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit: ; preds = %bb.g
  %.sroa.6.8.copyload.i.i = load i32, ptr %.sroa.6.8..sroa_idx.i.i, align 8
  %.sroa.45.8.copyload.i.i = load ptr, ptr %i.q, align 8
  %i.as = load i8, ptr %i.r, align 8, !noalias !3836
  %.sroa.610.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.610.8.copyload.i.i = load i32, ptr %.sroa.610.8..sroa_idx.i.i, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.49.8.copyload.i.i = load ptr, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.av = load i8, ptr %i.au, align 8, !noalias !3835
  %i.aw = icmp eq ptr %.sroa.49.8.copyload.i.i, %.sroa.45.8.copyload.i.i
  %i.ax = icmp eq i32 %.sroa.610.8.copyload.i.i, %.sroa.6.8.copyload.i.i
  %i.ay = select i1 %i.aw, i1 %i.ax, i1 false
  %i.az = icmp eq i8 %i.av, %i.as
  %spec.select.i.i = select i1 %i.ay, i1 %i.az, i1 false
  br i1 %spec.select.i.i, label %.loopexit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit.thread

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit.thread: ; preds = %bb.d, %bb.e, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit, %bb.g, %.lr.ph.i.i.i.i.i.i.i.2.i.i, %.lr.ph.i.i.i.i.i.i.i.1.i.i, %bb.f, %bb.c
  %i.ba = add i64 %.02632, 1
  %i.bb = and i64 %i.c, %i.ba                     ; 2 uses
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.bb ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i64, ptr %i.bd, align 8            ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %._crit_edge, label %bb.c, !llvm.loop !3834

.loopexit:                                        ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit, %._crit_edge, %bb.b
  %i.bg = phi ptr [ %.lcssa, %bb.b ], [ %.lcssa, %._crit_edge ], [ %i.t, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_26WordBinopDeoptOnOverflowOpEE12EqualsForGVNERKS5_.exit ]
  ret ptr %i.bg
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_26WordBinopDeoptOnOverflowOpEEEmRKT0_b(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i8, ptr %i.d, align 8, !noalias !3839
  %.sroa.41.8.copyload.i = load ptr, ptr %i.c, align 8
  %.sroa.6.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.8.copyload.i = load i32, ptr %.sroa.6.8..sroa_idx.i, align 8
  %i.f = load i8, ptr %i.b, align 1, !noalias !3839
  %i.g = load i8, ptr %i.a, align 4, !noalias !3839
  %.0.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.0.i.i.ptr.i.i, align 8
  %i.h = lshr i32 %.sroa.0.0.copyload.i.i.i.i, 4
  %i.i = zext nneg i32 %i.h to i64
  %.0.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.0.0.copyload.i.i.1.i.i = load i32, ptr %.0.i.i.ptr.1.i.i, align 4
  %i.j = lshr i32 %.sroa.0.0.copyload.i.i.1.i.i, 4
  %i.k = zext nneg i32 %i.j to i64
  %i.l = mul nuw nsw i64 %i.i, 35651567
  %i.m = add nuw nsw i64 %i.l, -4175292557550144145 ; 2 uses
  %i.n = lshr i64 %i.m, 24
  %i.o = xor i64 %i.n, %i.m
  %i.p = mul i64 %i.o, 265                        ; 2 uses
  %i.q = lshr i64 %i.p, 14
  %i.r = xor i64 %i.q, %i.p
  %i.s = mul i64 %i.r, 21                         ; 2 uses
  %i.t = lshr i64 %i.s, 28
  %i.u = xor i64 %i.t, %i.s
  %i.v = mul i64 %i.u, 2147483649
  %i.w = mul nuw nsw i64 %i.k, 17
  %i.x = add i64 %i.v, %i.w                       ; 2 uses
  %.0.i.i.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i.i.2.i.i = load i32, ptr %.0.i.i.ptr.2.i.i, align 8
  %i.y = lshr i32 %.sroa.0.0.copyload.i.i.2.i.i, 4
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = xor i64 %i.x, -1
  %i.ab = shl i64 %i.x, 21
  %i.ac = add i64 %i.ab, %i.aa                    ; 2 uses
  %i.ad = lshr i64 %i.ac, 24
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = mul i64 %i.ae, 265                      ; 2 uses
  %i.ag = lshr i64 %i.af, 14
  %i.ah = xor i64 %i.ag, %i.af
  %i.ai = mul i64 %i.ah, 21                       ; 2 uses
  %i.aj = lshr i64 %i.ai, 28
  %i.ak = xor i64 %i.aj, %i.ai
  %i.al = mul i64 %i.ak, 2147483649
  %i.am = ptrtoint ptr %.sroa.41.8.copyload.i to i64 ; 2 uses
  %i.an = shl i64 %i.am, 21
  %i.ao = xor i64 %i.am, -1
  %i.ap = add i64 %i.an, %i.ao                    ; 2 uses
  %i.aq = lshr i64 %i.ap, 24
  %i.ar = xor i64 %i.aq, %i.ap
  %i.as = mul i64 %i.ar, 265                      ; 2 uses
  %i.at = lshr i64 %i.as, 14
  %i.au = xor i64 %i.at, %i.as
  %i.av = mul i64 %i.au, 21                       ; 2 uses
  %i.aw = lshr i64 %i.av, 28
  %i.ax = xor i64 %i.aw, %i.av
  %i.ay = mul i64 %i.ax, 8398540807049701781      ; 2 uses
  %i.az = lshr i64 %i.ay, 47
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = mul i64 %i.ba, 3866779316627607737
  %i.bc = sext i32 %.sroa.6.8.copyload.i to i64
  %i.bd = mul i64 %i.bc, -4132994306676758123     ; 2 uses
  %i.be = lshr i64 %i.bd, 47
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = mul i64 %i.bf, -4132994306676758123
  %i.bh = xor i64 %i.bb, %i.bg
  %i.bi = mul i64 %i.bh, -4132994306676758123
  %i.bj = zext i8 %i.e to i64
  %i.bk = mul nuw nsw i64 %i.bj, 17
  %i.bl = add i64 %i.bi, %i.bk
  %i.bm = mul i64 %i.bl, 17
  %i.bn = zext i8 %i.f to i64
  %i.bo = add i64 %i.bm, %i.bn
  %i.bp = mul i64 %i.bo, 17
  %i.bq = zext i8 %i.g to i64
  %i.br = add nuw nsw i64 %i.z, %i.bq
  %reass.add.i = add i64 %i.br, %i.bp
  %reass.mul.i = mul i64 %reass.add.i, 17
  %i.bs = add i64 %i.al, %reass.mul.i
  %i.bt = mul i64 %i.bs, 17
  %i.bu = add i64 %i.bt, 115                      ; 2 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.bw = load i32, ptr %i.bv, align 4            ; 2 uses
  %i.bx = xor i32 %i.bw, -1
  %i.by = shl i32 %i.bw, 15
  %i.bz = add i32 %i.by, %i.bx                    ; 2 uses
  %i.ca = lshr i32 %i.bz, 12
  %i.cb = xor i32 %i.ca, %i.bz
  %i.cc = mul i32 %i.cb, 5                        ; 2 uses
  %i.cd = lshr i32 %i.cc, 4
  %i.ce = xor i32 %i.cd, %i.cc
  %i.cf = mul i32 %i.ce, 2057                     ; 2 uses
  %i.cg = lshr i32 %i.cf, 16
  %i.ch = xor i32 %i.cg, %i.cf
  %i.ci = zext i32 %i.ch to i64
  %i.cj = mul i64 %i.bu, 17
  %i.ck = add i64 %i.cj, %i.ci
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.ck, %bb.b ], [ %i.bu, %bb.a ]
  %. = tail call i64 @llvm.umax.i64(i64 %.0, i64 1)
  ret i64 %.
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev25Int32SubtractWithOverflowERKNS4_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(20) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %"class.v8::internal::maglev::VirtualObjectList", align 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = lshr i64 %i.e, 32
  %i.g = trunc i64 %i.f to i16                    ; 2 uses
  %i.h = and i16 %i.g, 2
  %.not.i.i.i = icmp eq i16 %i.h, 0
  %.neg.i.i = select i1 %.not.i.i.i, i64 0, i64 -48
  %i.i = and i16 %i.g, 6
  %i.j = icmp eq i16 %i.i, 4
  %.neg2.i.i = select i1 %i.j, i64 -56, i64 0
  %.neg3.i.i = add nsw i64 %.neg.i.i, %.neg2.i.i
  %i.k = trunc i64 %i.e to i32
  %i.l = lshr i32 %i.k, 16
  %i.m = getelementptr inbounds i8, ptr %1, i64 -8 ; 3 uses
  %narrow.i.i.i = sub nsw i32 1, %i.l
  %i.n = sext i32 %narrow.i.i.i to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.n
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = add i64 %.neg3.i.i, %i.p
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %.not.i.i.i.i = icmp eq ptr %i.v, %i.t
  br i1 %.not.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.t, ptr %i.u, align 8
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.w = load ptr, ptr %i.r, align 8              ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load i8, ptr %i.x, align 8               ; 2 uses
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.thread.i, label %tailrecurse.i.i

_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.thread.i: ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  store ptr %i.ab, ptr %3, align 8
  %i.ac = call i32 @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateERNS0_6maglev21InterpretedDeoptFrameERKNS4_17VirtualObjectListENS0_11interpreter8RegisterEi(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 2147483647, i32 noundef 0)
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateEPNS0_6maglev14EagerDeoptInfoE.exit

end_hunk_4
