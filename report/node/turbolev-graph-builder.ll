Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/turbolev-graph-builder?download=true
inline.NumInlined: 65942
inline.NumDeleted: 17507
loop-unroll.NumCompletelyUnrolled: 518
loop-unroll.NumRuntimeUnrolled: 73
loop-unroll.NumUnrolled: 591
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_6LoadOpEEENS2_7OpIndexESM_:bb.a
  %i.o = and i8 %i.n, 64
  %.not2.i = icmp eq i8 %i.o, 0
  br i1 %.not2.i, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE14RehashIfNeededEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.p = call noundef ptr @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_6LoadOpEEEPNSJ_5EntryERKT_Pm(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.l, ptr noundef nonnull %i.a) ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 52
  %.sroa.0.0.copyload.i = load i32, ptr %i.v, align 4
  %i.w = load i64, ptr %i.a, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ac = load i32, ptr %i.ab, align 4
  store i32 %1, ptr %i.p, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %.sroa.0.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 4
  store i64 %i.w, ptr %i.q, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.aa, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i32 %i.ac, ptr %.sroa.7.0..sroa_idx, align 8
  %i.ad = load ptr, ptr %i.x, align 8
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -8
  store ptr %i.p, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.af, align 8
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.e, align 8, !nonnull !397, !align !408 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !5501 ; 2 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 4 uses
  %i.an = load ptr, ptr %i.am, align 8, !noalias !5501 ; 4 uses
  %i.ao = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.ap = sub i64 %i.al, %i.ao                    ; 2 uses
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = lshr i32 %i.aq, 4
  %i.au = add nsw i32 %i.at, -1
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2
  %i.ay = zext i16 %i.ax to i64                   ; 2 uses
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = sub i64 %i.ap, %i.az
  %i.bb = and i64 %i.ba, 4294967295
  %i.bc = add i64 %i.bb, %i.ao
  %i.bd = inttoptr i64 %i.bc to ptr               ; 3 uses
  %i.be = load i8, ptr %i.bd, align 4
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bh ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.bk = load i16, ptr %i.bj, align 2            ; 2 uses
  %i.bl = zext i16 %i.bk to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.bl, 2          ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx.i.i.i
  %.not10.i.i.i = icmp eq i16 %i.bk, 0
  br i1 %.not10.i.i.i, label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10RemoveLastENS2_7OpIndexE.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.e
  %i.bn = add nsw i64 %.idx.i.i.i, -4             ; 2 uses
  %i.bo = and i64 %i.bn, 4
  %lcmp.mod.not.not = icmp eq i64 %i.bo, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.prol, label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  %.sroa.01.0.copyload.i.i.i.prol = load i32, ptr %i.bi, align 4
  %i.bp = ptrtoint ptr %i.an to i64
  %i.bq = zext i32 %.sroa.01.0.copyload.i.i.i.prol to i64
  %i.br = add i64 %i.bq, %i.bp
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = add i8 %i.bu, -1                        ; 2 uses
  %spec.select.i.i.i.i.prol = icmp ult i8 %i.bv, -2
  br i1 %spec.select.i.i.i.i.prol, label %bb.f, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.prol, !prof !401

bb.f:                                             ; preds = %.lr.ph.i.i.i.prol
  store i8 %i.bv, ptr %i.bt, align 1
  %.pre.i.i.i.prol = load ptr, ptr %i.am, align 8
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.prol

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.prol: ; preds = %bb.f, %.lr.ph.i.i.i.prol
  %i.bw = phi ptr [ %i.an, %.lr.ph.i.i.i.prol ], [ %.pre.i.i.i.prol, %bb.f ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.bw, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.prol ]
  %.unr = phi ptr [ %i.an, %.lr.ph.i.i.i.preheader ], [ %i.bw, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.prol ]
  %.011.i.i.i.unr = phi ptr [ %i.bi, %.lr.ph.i.i.i.preheader ], [ %i.bx, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.prol ]
  %i.by = icmp eq i64 %i.bn, 0
  br i1 %i.by, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.1
  %i.bz = phi ptr [ %i.cq, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.1 ], [ %.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %.011.i.i.i = phi ptr [ %i.cr, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.1 ], [ %.011.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.01.0.copyload.i.i.i = load i32, ptr %.011.i.i.i, align 4
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = zext i32 %.sroa.01.0.copyload.i.i.i to i64
  %i.cc = add i64 %i.cb, %i.ca
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = add i8 %i.cf, -1                        ; 2 uses
  %spec.select.i.i.i.i = icmp ult i8 %i.cg, -2
  br i1 %spec.select.i.i.i.i, label %bb.g, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i, !prof !401

bb.g:                                             ; preds = %.lr.ph.i.i.i
  store i8 %i.cg, ptr %i.ce, align 1
  %.pre.i.i.i = load ptr, ptr %i.am, align 8
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i
  %i.ch = phi ptr [ %i.bz, %.lr.ph.i.i.i ], [ %.pre.i.i.i, %bb.g ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 4
  %.sroa.01.0.copyload.i.i.i.1 = load i32, ptr %i.ci, align 4
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = zext i32 %.sroa.01.0.copyload.i.i.i.1 to i64
  %i.cl = add i64 %i.ck, %i.cj
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = add i8 %i.co, -1                        ; 2 uses
  %spec.select.i.i.i.i.1 = icmp ult i8 %i.cp, -2
  br i1 %spec.select.i.i.i.i.1, label %bb.h, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.1, !prof !401

bb.h:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i
  store i8 %i.cp, ptr %i.cn, align 1
  %.pre.i.i.i.1 = load ptr, ptr %i.am, align 8
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.1

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.1: ; preds = %bb.h, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i
  %i.cq = phi ptr [ %i.ch, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i ], [ %.pre.i.i.i.1, %bb.h ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.1 = icmp eq ptr %i.cr, %i.bm
  br i1 %.not.i.i.i.1, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i.i, label %.lr.ph.i.i.i

_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i.i: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.1, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.cq, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.1 ]
  %.pre.i.i = load ptr, ptr %i.ar, align 8
  %.pre8.i.i = load ptr, ptr %i.aj, align 8       ; 2 uses
  %.pre9.i.i = ptrtoint ptr %.pre8.i.i to i64
  %.pre10.i.i = ptrtoint ptr %.lcssa to i64
  %.pre12.i.i = sub i64 %.pre9.i.i, %.pre10.i.i
  %.pre14.i.i = trunc i64 %.pre12.i.i to i32
  %.pre16.i.i = lshr i32 %.pre14.i.i, 4
  %.pre18.i.i = add nsw i32 %.pre16.i.i, -1
  %.pre20.i.i = zext i32 %.pre18.i.i to i64
  %.phi.trans.insert.i = getelementptr inbounds nuw [2 x i8], ptr %.pre.i.i, i64 %.pre20.i.i
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2
  %.pre1.i = zext i16 %.pre.i to i64
  br label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10RemoveLastENS2_7OpIndexE.exit

_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10RemoveLastENS2_7OpIndexE.exit: ; preds = %bb.e, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i.i
  %.pre-phi.i = phi i64 [ %i.ay, %bb.e ], [ %.pre1.i, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i.i ]
  %i.cs = phi ptr [ %i.ak, %bb.e ], [ %.pre8.i.i, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i.i ]
  %i.ct = sub nsw i64 0, %.pre-phi.i
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.ct
  store ptr %i.cu, ptr %i.aj, align 8
  %.sroa.016.0.copyload = load i32, ptr %i.p, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10RemoveLastENS2_7OpIndexE.exit, %bb.d
  %.sroa.016.0 = phi i32 [ %1, %bb.d ], [ %.sroa.016.0.copyload, %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10RemoveLastENS2_7OpIndexE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b, %bb.a
  %.sroa.016.2 = phi i32 [ %1, %bb.a ], [ %.sroa.016.0, %bb.i ], [ %1, %bb.b ]
  ret i32 %.sroa.016.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSI_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i32 %2, i8 %3, i8 %4, i8 %5, i32 noundef %6, i8 noundef zeroext %7) local_unnamed_addr #0 comdat align 2 !guid !5502 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !397, !align !408 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %.not.i = icmp eq i32 %2, -1                    ; 4 uses
  %i.j = select i1 %.not.i, i64 2, i64 3          ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = sub i64 %i.m, %i.e
  %i.o = ashr exact i64 %i.n, 3
  %i.p = icmp ult i64 %i.o, %i.j
  br i1 %i.p, label %bb.b, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !398

bb.b:                                             ; preds = %bb.a
  %i.q = sub i64 %i.m, %i.h
  %i.r = lshr exact i64 %i.q, 3
  %i.s = and i64 %i.r, 4294967295
  %i.t = add nuw nsw i64 %i.s, %i.j
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.t)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre18 = ptrtoint ptr %.pre to i64
  %.pre19 = sub i64 %.pre10.i.i.i.i, %.pre18
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi20 = phi i64 [ %.pre19, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %i.u = phi ptr [ %.pre.i.i.i.i, %bb.b ], [ %i.d, %bb.a ] ; 12 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.j
  store ptr %i.v, ptr %i.c, align 8
  %i.w = trunc i64 %.pre-phi20 to i32
  %i.x = trunc nuw nsw i64 %i.j to i16            ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = lshr i64 %.pre-phi20, 4
  %i.ab = and i64 %i.aa, 268435455
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.ab
  store i16 %i.x, ptr %i.ac, align 2
  %i.ad = load ptr, ptr %i.y, align 8
  %.tr.i.i.i.i = trunc nuw nsw i64 %i.j to i32
  %i.ae = shl nuw nsw i32 %.tr.i.i.i.i, 3
  %i.af = add i32 %i.ae, %i.w
  %i.ag = lshr i32 %i.af, 4
  %i.ah = add nsw i32 %i.ag, -1
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.ai
  store i16 %i.x, ptr %i.aj, align 2
  store i8 77, ptr %i.u, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store i8 0, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.am = select i1 %.not.i, i16 1, i16 2
  store i16 %i.am, ptr %i.al, align 2
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i8 %3, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 5
  store i8 %4, ptr %i.ao, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 6
  store i8 %5, ptr %i.ap, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 7
  store i8 %7, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %6, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 12 ; 2 uses
  store i32 %1, ptr %i.as, align 4
  br i1 %.not.i, label %.prol.preheader, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i32 %2, ptr %i.at, align 4
  br label %.prol.preheader

.prol.preheader:                                  ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, %bb.c
  %.pre12.i = load ptr, ptr %i.f, align 8         ; 2 uses
  %.sroa.01.0.copyload.i.prol = load i32, ptr %i.as, align 4
  %i.au = ptrtoint ptr %.pre12.i to i64
  %i.av = zext i32 %.sroa.01.0.copyload.i.prol to i64
  %i.aw = add i64 %i.av, %i.au
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1             ; 2 uses
  %.not.i.i.prol = icmp eq i8 %i.az, -1
  br i1 %.not.i.i.prol, label %.lr.ph.i.new, label %bb.d, !prof !398

bb.d:                                             ; preds = %.prol.preheader
  %i.ba = add nuw i8 %i.az, 1
  store i8 %i.ba, ptr %i.ay, align 1
  %.pre.i.prol = load ptr, ptr %i.f, align 8
  br label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %bb.d, %.prol.preheader
  %.011.i = phi ptr [ %.pre12.i, %.prol.preheader ], [ %.pre.i.prol, %bb.d ]
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_6LoadOpEEEvRKT_.exit, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i: ; preds = %.lr.ph.i.new
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.01.0.copyload.i.1 = load i32, ptr %i.bb, align 4
  %i.bc = ptrtoint ptr %.011.i to i64
  %i.bd = zext i32 %.sroa.01.0.copyload.i.1 to i64
  %i.be = add i64 %i.bd, %i.bc
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1             ; 2 uses
  %.not.i.i.1 = icmp eq i8 %i.bh, -1
  br i1 %.not.i.i.1, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_6LoadOpEEEvRKT_.exit, label %bb.e, !prof !398

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %i.bi = add nuw i8 %i.bh, 1
  store i8 %i.bi, ptr %i.bg, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_6LoadOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_6LoadOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, %bb.e, %.lr.ph.i.new
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 900
  %.sroa.0.0.copyload.i = load i32, ptr %i.bj, align 4
  %i.bk = load ptr, ptr %i.a, align 8, !nonnull !397, !align !408 ; 4 uses
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
  %.not.i.i16 = icmp ugt i64 %i.bu, %i.bm
  br i1 %.not.i.i16, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.f, !prof !401

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_6LoadOpEEEvRKT_.exit
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

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_6LoadOpEEEvRKT_.exit, %bb.f
  %i.cg = phi ptr [ %.pre.i.i, %bb.f ], [ %i.bq, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_6LoadOpEEEvRKT_.exit ]
  %i.ch = trunc i64 %i.i to i32
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.bm
  store i32 %.sroa.0.0.copyload.i, ptr %i.ci, align 4
  ret i32 %i.ch
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_6LoadOpEEEPNSJ_5EntryERKT_Pm(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !guid !5510 {
_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_6LoadOpEEEmRKT0_b.exit:
  %3 = alloca %"class.std::tuple.4658", align 4   ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5511)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 7 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !noalias !5511
  store i8 %i.g, ptr %3, align 4, !alias.scope !5511
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = load i32, ptr %i.e, align 4, !noalias !5511
  store i32 %i.i, ptr %i.h, align 4, !alias.scope !5511
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load i8, ptr %i.d, align 2, !noalias !5511
  store i8 %i.k, ptr %i.j, align 4, !alias.scope !5511
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 9
  %i.m = load i8, ptr %i.c, align 1, !noalias !5511
  store i8 %i.m, ptr %i.l, align 1, !alias.scope !5511
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i8 %i.b, ptr %i.n, align 2, !alias.scope !5511
  %i.o = call noundef i64 @_ZNK2v88internal8compiler10turboshaft10OperationTINS2_6LoadOpEE15HashWithOptionsIJSt5tupleIJNS4_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEEEEmDpRKT_(ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(11) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.q = load i32, ptr %i.p, align 4              ; 3 uses
  %i.r = xor i32 %i.q, -1
  %i.s = shl i32 %i.q, 15
  %i.t = add i32 %i.s, %i.r                       ; 2 uses
  %i.u = lshr i32 %i.t, 12
  %i.v = xor i32 %i.u, %i.t
  %i.w = mul i32 %i.v, 5                          ; 2 uses
  %i.x = lshr i32 %i.w, 4
  %i.y = xor i32 %i.x, %i.w
  %i.z = mul i32 %i.y, 2057                       ; 2 uses
  %i.aa = lshr i32 %i.z, 16
  %i.ab = xor i32 %i.aa, %i.z
  %i.ac = zext i32 %i.ab to i64
  %i.ad = mul i64 %i.o, 17
  %i.ae = add i64 %i.ad, %i.ac
  %i.af = call i64 @llvm.umax.i64(i64 %i.ae, i64 1) ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.ai = and i64 %i.af, %i.ah                    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.ai ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_6LoadOpEEEmRKT0_b.exit
  %i.ap = getelementptr inbounds i8, ptr %0, i64 -8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 12
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_6LoadOpEE12EqualsForGVNERKS5_.exit.thread, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_6LoadOpEEEmRKT0_b.exit
  %.lcssa = phi ptr [ %i.al, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_6LoadOpEEEmRKT0_b.exit ], [ %i.cq, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_6LoadOpEE12EqualsForGVNERKS5_.exit.thread ] ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %bb.a

bb.a:                                             ; preds = %._crit_edge
  store i64 %i.af, ptr %2, align 8
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_6LoadOpEE12EqualsForGVNERKS5_.exit.thread
  %i.as = phi i64 [ %i.an, %.lr.ph ], [ %i.cs, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_6LoadOpEE12EqualsForGVNERKS5_.exit.thread ]
  %i.at = phi ptr [ %i.al, %.lr.ph ], [ %i.cq, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_6LoadOpEE12EqualsForGVNERKS5_.exit.thread ] ; 3 uses
  %.02733 = phi i64 [ %i.ai, %.lr.ph ], [ %i.cp, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_6LoadOpEE12EqualsForGVNERKS5_.exit.thread ]
  %i.au = icmp eq i64 %i.as, %i.af
  br i1 %i.au, label %bb.c, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_6LoadOpEE12EqualsForGVNERKS5_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.av = load ptr, ptr %i.ap, align 8, !nonnull !397, !align !408
  %.sroa.0.0.copyload = load i32, ptr %i.at, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = zext i32 %.sroa.0.0.copyload to i64
  %i.ba = add i64 %i.ay, %i.az
  %i.bb = inttoptr i64 %i.ba to ptr               ; 8 uses
  %i.bc = load i8, ptr %i.bb, align 4
  %i.bd = icmp eq i8 %i.bc, 77
  br i1 %i.bd, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_6LoadOpEE12EqualsForGVNERKS5_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = icmp eq i32 %i.q, %i.bf
  br i1 %i.bg, label %bb.e, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_6LoadOpEE12EqualsForGVNERKS5_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 12 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %i.bj = load i16, ptr %i.bi, align 2            ; 3 uses
  %i.bk = zext i16 %i.bj to i64
  %i.bl = load i16, ptr %i.aq, align 2
  %.idx.i.i.i = shl nuw nsw i64 %i.bk, 2
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.idx.i.i.i
  %.not.i.i.i.i.i = icmp eq i16 %i.bj, %i.bl
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_6LoadOpEE12EqualsForGVNERKS5_.exit.thread

bb.f:                                             ; preds = %bb.e
  %.not9.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.bj, 0
  br i1 %.not9.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.f, %bb.g
  %.0711.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bq, %bb.g ], [ %i.ar, %bb.f ] ; 2 uses
  %.0810.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bp, %bb.g ], [ %i.bh, %bb.f ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i32, ptr %.0711.i.i.i.i.i.i.i.i.i, align 4
  %i.bn = load i32, ptr %.0810.i.i.i.i.i.i.i.i.i, align 4
  %i.bo = icmp eq i32 %i.bn, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.bo, label %bb.g, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_6LoadOpEE12EqualsForGVNERKS5_.exit.thread

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0711.i.i.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bp, %i.bm
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !308

.loopexit.i.i:                                    ; preds = %bb.g, %bb.f
  %i.br = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bb, i64 5
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bb, i64 6
  %i.bu = load i8, ptr %i.bt, align 2, !noalias !5512
  %i.bv = load i8, ptr %i.bs, align 1, !noalias !5512
  %i.bw = load i8, ptr %i.br, align 4, !noalias !5512
  %i.bx = load i8, ptr %i.d, align 2, !noalias !5513
  %i.by = load i8, ptr %i.c, align 1, !noalias !5513
  %i.bz = load i8, ptr %i.a, align 4, !noalias !5513
  %i.ca = xor i8 %i.bz, %i.bw
  %i.cb = and i8 %i.ca, 127
  %i.cc = icmp eq i8 %i.cb, 0
  %i.cd = icmp eq i8 %i.bv, %i.by
  %or.cond.i.i = select i1 %i.cc, i1 %i.cd, i1 false
  %i.ce = icmp eq i8 %i.bu, %i.bx
  %or.cond18.i.i = select i1 %or.cond.i.i, i1 %i.ce, i1 false
  br i1 %or.cond18.i.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_6LoadOpEE12EqualsForGVNERKS5_.exit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_6LoadOpEE12EqualsForGVNERKS5_.exit.thread

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_6LoadOpEE12EqualsForGVNERKS5_.exit: ; preds = %.loopexit.i.i
  %i.cf = load i32, ptr %i.e, align 4, !noalias !5513
  %i.cg = load i8, ptr %i.f, align 1, !noalias !5513
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.ci = load i32, ptr %i.ch, align 4, !noalias !5512
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bb, i64 7
  %i.ck = load i8, ptr %i.cj, align 1, !noalias !5512
  %i.cl = icmp eq i32 %i.ci, %i.cf
  %i.cm = icmp eq i8 %i.ck, %i.cg
  %i.cn = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %i.cn, label %.loopexit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_6LoadOpEE12EqualsForGVNERKS5_.exit.thread

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_6LoadOpEE12EqualsForGVNERKS5_.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.c, %bb.d, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_6LoadOpEE12EqualsForGVNERKS5_.exit, %bb.e, %.loopexit.i.i, %bb.b
  %i.co = add i64 %.02733, 1
  %i.cp = and i64 %i.ah, %i.co                    ; 2 uses
end_hunk_0
