inline.NumInlined: 29995
inline.NumDeleted: 7796
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft25ExplicitTruncationReducerINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE93ENS2_21UniformReducerAdapterIS3_SH_E22ReduceCallContinuationEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS9_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEES11_DpT1_:bb.a
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ugt i64 %.sroa.speculated.i.i, %i.j
  br i1 %i.k, label %bb.b, label %_ZN2v84base11SmallVectorImLm32ESaImEE6resizeEm.exit.i

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorImLm32ESaImEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(280) %i.a, i64 noundef %.sroa.speculated.i.i)
  %.pre.i.i = load ptr, ptr %i.a, align 8
  br label %_ZN2v84base11SmallVectorImLm32ESaImEE6resizeEm.exit.i

_ZN2v84base11SmallVectorImLm32ESaImEE6resizeEm.exit.i: ; preds = %bb.b, %bb.a
  %i.l = phi ptr [ %.pre.i.i, %bb.b ], [ %i.f, %bb.a ] ; 11 uses
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.speculated.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 544
  store ptr %i.n, ptr %i.o, align 8
  %.not.i.i = icmp eq i32 %2, -1                  ; 2 uses
  %i.p = select i1 %.not.i.i, i64 1, i64 2        ; 2 uses
  %i.q = add i64 %i.p, %4
  store i8 93, ptr %i.l, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 0, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 2 uses
  %i.t = trunc i64 %i.q to i16
  store i16 %i.t, ptr %i.s, align 2
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  store ptr %5, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i32 %6, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 6 uses
  store i32 %1, ptr %i.w, align 8
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v84base11SmallVectorImLm32ESaImEE6resizeEm.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  store i32 %2, ptr %i.x, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN2v84base11SmallVectorImLm32ESaImEE6resizeEm.exit.i
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.p ; 2 uses
  %i.z = icmp ugt i64 %4, 1
  br i1 %i.z, label %bb.e, label %bb.f, !prof !8

bb.e:                                             ; preds = %bb.d
  %.idx.i.i.i = shl nuw nsw i64 %4, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.y, ptr align 4 %3, i64 %.idx.i.i.i, i1 false)
  br label %_ZN2v88internal8compiler10turboshaft15CreateOperationINS2_6CallOpEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENS7_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS_4base6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEPT_RNSH_11SmallVectorImLm32ESaImEEEDpT0_.exit

bb.f:                                             ; preds = %bb.d
  %i.aa = icmp eq i64 %4, 1
  br i1 %i.aa, label %bb.g, label %_ZN2v88internal8compiler10turboshaft15CreateOperationINS2_6CallOpEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENS7_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS_4base6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEPT_RNSH_11SmallVectorImLm32ESaImEEEDpT0_.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = load i32, ptr %3, align 4
  store i32 %i.ab, ptr %i.y, align 4
  br label %_ZN2v88internal8compiler10turboshaft15CreateOperationINS2_6CallOpEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENS7_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS_4base6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEPT_RNSH_11SmallVectorImLm32ESaImEEEDpT0_.exit

_ZN2v88internal8compiler10turboshaft15CreateOperationINS2_6CallOpEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENS7_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS_4base6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEPT_RNSH_11SmallVectorImLm32ESaImEEEDpT0_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ad = tail call { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft6CallOp10inputs_repERNS0_10ZoneVectorINS2_27MaybeRegisterRepresentationEEE(ptr noundef nonnull align 8 dereferenceable(20) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.ac) ; 2 uses
  %i.ae = extractvalue { ptr, i64 } %i.ad, 0
  %i.af = extractvalue { ptr, i64 } %i.ad, 1      ; 3 uses
  %.not = icmp eq i64 %i.af, 0
  br i1 %.not, label %.critedge59, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal8compiler10turboshaft15CreateOperationINS2_6CallOpEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENS7_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS_4base6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEPT_RNSH_11SmallVectorImLm32ESaImEEEDpT0_.exit
  %i.ag = getelementptr inbounds i8, ptr %0, i64 -16
  br label %.outer

.outer:                                           ; preds = %.critedge.thread, %.lr.ph
  %.058.ph = phi i1 [ true, %.critedge.thread ], [ false, %.lr.ph ]
  %.04057.ph = phi i64 [ %i.az, %.critedge.thread ], [ 0, %.lr.ph ]
  br label %bb.h

._crit_edge:                                      ; preds = %.critedge
  br i1 %.058.ph, label %._crit_edge.thread, label %.critedge59

bb.h:                                             ; preds = %.outer, %.critedge
  %.04057 = phi i64 [ %i.aw, %.critedge ], [ %.04057.ph, %.outer ] ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.04057
  %.sroa.014.0.copyload = load i8, ptr %i.ah, align 1
  %i.ai = icmp eq i8 %.sroa.014.0.copyload, 0
  br i1 %i.ai, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr %i.ag, align 8, !nonnull !6, !align !7
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.04057
  %.sroa.012.0.copyload = load i32, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = zext i32 %.sroa.012.0.copyload to i64
  %i.ap = add i64 %i.an, %i.ao
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = tail call { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft9Operation11outputs_repEv(ptr noundef nonnull align 4 dereferenceable(4) %i.aq) ; 2 uses
  %i.as = extractvalue { ptr, i64 } %i.ar, 1
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.au = extractvalue { ptr, i64 } %i.ar, 0
  %.sroa.011.0.copyload = load i8, ptr %i.au, align 1
  %i.av = icmp eq i8 %.sroa.011.0.copyload, 1
  br i1 %i.av, label %.critedge.thread, label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.i, %bb.h
  %i.aw = add nuw i64 %.04057, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.aw, %i.af
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !279

.critedge.thread:                                 ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.04057 ; 2 uses
  %.sroa.07.0.copyload = load i32, ptr %i.ax, align 4
  %i.ay = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_8ChangeOpEJNS2_14ShadowyOpIndexENSE_4KindENSE_10AssumptionENS2_22RegisterRepresentationESI_EEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %.sroa.07.0.copyload, i8 noundef zeroext 12, i8 noundef zeroext 0, i8 1, i8 0), !inline_history !114
  store i32 %i.ay, ptr %i.ax, align 4
  %i.az = add nuw i64 %.04057, 1                  ; 2 uses
  %exitcond.not65 = icmp eq i64 %i.az, %i.af
  br i1 %exitcond.not65, label %._crit_edge.thread, label %.outer, !llvm.loop !279

.critedge59:                                      ; preds = %_ZN2v88internal8compiler10turboshaft15CreateOperationINS2_6CallOpEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENS7_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS_4base6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEPT_RNSH_11SmallVectorImLm32ESaImEEEDpT0_.exit, %._crit_edge
  %i.ba = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6CallOpEJNS2_14ShadowyOpIndexENS2_9OptionalVINS2_10FrameStateEEENS2_27ShadowyOpIndexVectorWrapperEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i32 %2, ptr %3, i64 %4, ptr noundef %5, i32 %6) ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bc = load i8, ptr %i.bb, align 8
  %i.bd = icmp eq i8 %i.bc, 1
  br i1 %i.bd, label %bb.k, label %_ZNK2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_25ExplicitTruncationReducerENS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEE22ReduceCallContinuation6ReduceIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSO_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENSA_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit

bb.k:                                             ; preds = %.critedge59
  %.sroa.4.0.extract.trunc21.i.i.i.i.i = or i32 %6, 262144
  %i.be = tail call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES4_EEEEEEEE19CatchIfInCatchScopeENS2_7OpIndexE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.ba)
  br label %_ZNK2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_25ExplicitTruncationReducerENS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEE22ReduceCallContinuation6ReduceIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSO_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENSA_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit

_ZNK2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_25ExplicitTruncationReducerENS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEE22ReduceCallContinuation6ReduceIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSO_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENSA_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit: ; preds = %.critedge59, %bb.k
  %.sroa.4.0.i.i.i.i.i = phi i32 [ %.sroa.4.0.extract.trunc21.i.i.i.i.i, %bb.k ], [ %6, %.critedge59 ]
  %.0.i.i.i.i.i = phi i1 [ %i.be, %bb.k ], [ false, %.critedge59 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.4.0.insert.ext.i.i.i.i.i = and i32 %.sroa.4.0.i.i.i.i.i, 16711680
  %i.bg = and i32 %6, -16711681
  %.sroa.018.0.insert.insert.i.i.i.i.i = or disjoint i32 %.sroa.4.0.insert.ext.i.i.i.i.i, %i.bg
  %i.bh = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12DidntThrowOpEJNS2_14ShadowyOpIndexEbPKNS5_6VectorIKNS2_22RegisterRepresentationEEENS2_9OpEffectsEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.ba, i1 noundef zeroext %.0.i.i.i.i.i, ptr noundef nonnull %i.bf, i32 %.sroa.018.0.insert.insert.i.i.i.i.i) ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %0, i64 -8
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !6, !align !7
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = zext i32 %i.bh to i64
  %i.bo = add i64 %i.bm, %i.bn
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = tail call i32 @_ZN2v88internal8compiler10turboshaft21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES5_EEEEEEEEEE19WrapInTupleIfNeededINS2_12DidntThrowOpEEENS2_1VINS2_3AnyEEERKT_SL_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i32 %i.bh)
  br label %bb.n

._crit_edge.thread:                               ; preds = %.critedge.thread, %._crit_edge
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.w, align 8
  %i.br = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.bt, align 8
  %i.bu = trunc i32 %.sroa.0.0.copyload.i.i.i.i to i1
  br i1 %i.bu, label %bb.l, label %_ZNK2v88internal8compiler10turboshaft6CallOp11frame_stateEv.exit

bb.l:                                             ; preds = %._crit_edge.thread
  %i.bv = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %.sroa.0.0.copyload.i.i41 = load i32, ptr %i.bv, align 4
  br label %_ZNK2v88internal8compiler10turboshaft6CallOp11frame_stateEv.exit

_ZNK2v88internal8compiler10turboshaft6CallOp11frame_stateEv.exit: ; preds = %._crit_edge.thread, %bb.l
  %i.bw = phi i64 [ 2, %bb.l ], [ 1, %._crit_edge.thread ] ; 5 uses
  %.sroa.0.0.i = phi i32 [ %.sroa.0.0.copyload.i.i41, %bb.l ], [ -1, %._crit_edge.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.bx = load i16, ptr %i.s, align 2
  %i.by = zext i16 %i.bx to i64                   ; 3 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bw ; 5 uses
  %i.ca = sub nsw i64 %i.by, %i.bw                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  store ptr %i.cb, ptr %7, align 8, !alias.scope !280
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %i.cb, ptr %i.cc, align 8, !alias.scope !280
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 88
  store ptr %i.ce, ptr %i.cd, align 8, !alias.scope !280
  %i.cf = icmp ugt i64 %i.ca, 16
  br i1 %i.cf, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.thread.i, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.thread.i: ; preds = %_ZNK2v88internal8compiler10turboshaft6CallOp11frame_stateEv.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %7, i64 noundef %i.ca)
  %.pre.i = load ptr, ptr %7, align 8, !alias.scope !280
  br label %.lr.ph.i.i.i.preheader.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i: ; preds = %_ZNK2v88internal8compiler10turboshaft6CallOp11frame_stateEv.exit
  %.not9.i.i.i.i = icmp eq i64 %i.bw, %i.by
  br i1 %.not9.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft9Operation14IdentityMapper3MapILm16EEENS_4base11SmallVectorINS2_7OpIndexEXT_ESaIS8_EEENS6_6VectorIKS8_EE.exit, label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.thread.i
  %i.cg = phi ptr [ %.pre.i, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.thread.i ], [ %i.cb, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i ] ; 5 uses
  %.idx9.pn.i = shl nuw nsw i64 %i.ca, 2
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx9.pn.i
  %8 = sub nsw i64 %i.by, %i.bw
  %i.ci = add nsw i64 %8, 4611686018427387903
  %9 = and i64 %i.ci, 4611686018427387903         ; 2 uses
  %i.cj = add nuw nsw i64 %9, 1                   ; 2 uses
  %min.iters.check = icmp samesign ult i64 %9, 19
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader.i
  %i.ck = ptrtoaddr ptr %i.cg to i64
  %i.cl = add i64 %i.ck, -24
  %i.cm = shl nuw nsw i64 %i.bw, 2
  %i.cn = add i64 %i.cm, %i.m
  %i.co = sub i64 %i.cl, %i.cn
  %diff.check = icmp ult i64 %i.co, 32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cj, 9223372036854775800     ; 3 uses
  %i.cp = shl i64 %n.vec, 2                       ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cg, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.bz, i64 %i.cp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cs = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cg, i64 %i.cs ; 2 uses
  %next.gep73 = getelementptr i8, ptr %i.bz, i64 %i.cs ; 2 uses
  %i.ct = getelementptr i8, ptr %next.gep73, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep73, align 4, !noalias !280
  %wide.load74 = load <4 x i32>, ptr %i.ct, align 4, !noalias !280
  %i.cu = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load74, ptr %i.cu, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !283

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cj, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader.i, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.cg, %vector.memcheck ], [ %i.cg, %.lr.ph.i.i.i.preheader.i ], [ %i.cq, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.bz, %vector.memcheck ], [ %i.bz, %.lr.ph.i.i.i.preheader.i ], [ %i.cr, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.cw = load i32, ptr %.0810.i.i.i.i, align 4, !noalias !280
  store i32 %i.cw, ptr %.011.i.i.i.i, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 4 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.cx, %i.ch
  br i1 %.not.i.i.i.i, label %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit.i, label %.lr.ph.i.i.i.i, !llvm.loop !284

_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.pre8.i = load ptr, ptr %7, align 8, !alias.scope !280
  %.pre = load ptr, ptr %i.u, align 8
  br label %_ZN2v88internal8compiler10turboshaft9Operation14IdentityMapper3MapILm16EEENS_4base11SmallVectorINS2_7OpIndexEXT_ESaIS8_EEENS6_6VectorIKS8_EE.exit

_ZN2v88internal8compiler10turboshaft9Operation14IdentityMapper3MapILm16EEENS_4base11SmallVectorINS2_7OpIndexEXT_ESaIS8_EEENS6_6VectorIKS8_EE.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i, %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit.i
  %i.cz = phi ptr [ %.pre, %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit.i ], [ %i.br, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i ] ; 3 uses
  %i.da = phi ptr [ %.pre8.i, %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit.i ], [ %i.cb, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i ] ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.ca
  store ptr %i.db, ptr %i.cc, align 8, !alias.scope !280
  %.sroa.0.0.copyload.i = load i32, ptr %i.v, align 8 ; 4 uses
  %i.dc = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6CallOpEJNS2_14ShadowyOpIndexENS2_9OptionalVINS2_10FrameStateEEENS2_27ShadowyOpIndexVectorWrapperEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %.sroa.0.0.copyload.i.i, i32 %.sroa.0.0.i, ptr %i.da, i64 %i.ca, ptr noundef %i.cz, i32 %.sroa.0.0.copyload.i) ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  %i.de = load i8, ptr %i.dd, align 8
  %i.df = icmp eq i8 %i.de, 1
  br i1 %i.df, label %bb.m, label %_ZZN2v88internal8compiler10turboshaft25ExplicitTruncationReducerINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE93ENS2_21UniformReducerAdapterIS3_SH_E22ReduceCallContinuationEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS9_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEES11_DpT1_ENKUlDpT_E_clIJSW_SZ_NS10_IS11_EES16_S17_EEES11_S1B_.exit

bb.m:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9Operation14IdentityMapper3MapILm16EEENS_4base11SmallVectorINS2_7OpIndexEXT_ESaIS8_EEENS6_6VectorIKS8_EE.exit
  %.sroa.4.0.extract.trunc21.i.i.i.i.i.i = or i32 %.sroa.0.0.copyload.i, 262144
  %i.dg = call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES4_EEEEEEEE19CatchIfInCatchScopeENS2_7OpIndexE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.dc)
  br label %_ZZN2v88internal8compiler10turboshaft25ExplicitTruncationReducerINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE93ENS2_21UniformReducerAdapterIS3_SH_E22ReduceCallContinuationEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS9_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEES11_DpT1_ENKUlDpT_E_clIJSW_SZ_NS10_IS11_EES16_S17_EEES11_S1B_.exit

_ZZN2v88internal8compiler10turboshaft25ExplicitTruncationReducerINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE93ENS2_21UniformReducerAdapterIS3_SH_E22ReduceCallContinuationEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS9_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEES11_DpT1_ENKUlDpT_E_clIJSW_SZ_NS10_IS11_EES16_S17_EEES11_S1B_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft9Operation14IdentityMapper3MapILm16EEENS_4base11SmallVectorINS2_7OpIndexEXT_ESaIS8_EEENS6_6VectorIKS8_EE.exit, %bb.m
  %.sroa.4.0.i.i.i.i.i.i = phi i32 [ %.sroa.4.0.extract.trunc21.i.i.i.i.i.i, %bb.m ], [ %.sroa.0.0.copyload.i, %_ZN2v88internal8compiler10turboshaft9Operation14IdentityMapper3MapILm16EEENS_4base11SmallVectorINS2_7OpIndexEXT_ESaIS8_EEENS6_6VectorIKS8_EE.exit ]
  %.0.i.i.i.i.i.i = phi i1 [ %i.dg, %bb.m ], [ false, %_ZN2v88internal8compiler10turboshaft9Operation14IdentityMapper3MapILm16EEENS_4base11SmallVectorINS2_7OpIndexEXT_ESaIS8_EEENS6_6VectorIKS8_EE.exit ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %.sroa.4.0.insert.ext.i.i.i.i.i.i = and i32 %.sroa.4.0.i.i.i.i.i.i, 16711680
  %i.di = and i32 %.sroa.0.0.copyload.i, -16711681
  %.sroa.018.0.insert.insert.i.i.i.i.i.i = or disjoint i32 %.sroa.4.0.insert.ext.i.i.i.i.i.i, %i.di
  %i.dj = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12DidntThrowOpEJNS2_14ShadowyOpIndexEbPKNS5_6VectorIKNS2_22RegisterRepresentationEEENS2_9OpEffectsEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.dc, i1 noundef zeroext %.0.i.i.i.i.i.i, ptr noundef nonnull %i.dh, i32 %.sroa.018.0.insert.insert.i.i.i.i.i.i) ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %0, i64 -8
  %i.dl = load ptr, ptr %i.dk, align 8, !nonnull !6, !align !7
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = zext i32 %i.dj to i64
  %i.dq = add i64 %i.do, %i.dp
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = call i32 @_ZN2v88internal8compiler10turboshaft21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES5_EEEEEEEEEE19WrapInTupleIfNeededINS2_12DidntThrowOpEEENS2_1VINS2_3AnyEEERKT_SL_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.dr, i32 %i.dj)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.n

bb.n:                                             ; preds = %_ZZN2v88internal8compiler10turboshaft25ExplicitTruncationReducerINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE93ENS2_21UniformReducerAdapterIS3_SH_E22ReduceCallContinuationEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS9_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEES11_DpT1_ENKUlDpT_E_clIJSW_SZ_NS10_IS11_EES16_S17_EEES11_S1B_.exit, %_ZNK2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_25ExplicitTruncationReducerENS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEE22ReduceCallContinuation6ReduceIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSO_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENSA_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit
  %.sroa.039.0 = phi i32 [ %i.ds, %_ZZN2v88internal8compiler10turboshaft25ExplicitTruncationReducerINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE93ENS2_21UniformReducerAdapterIS3_SH_E22ReduceCallContinuationEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS9_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEES11_DpT1_ENKUlDpT_E_clIJSW_SZ_NS10_IS11_EES16_S17_EEES11_S1B_.exit ], [ %i.bq, %_ZNK2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_25ExplicitTruncationReducerENS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEE22ReduceCallContinuation6ReduceIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSO_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENSA_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit ]
  ret i32 %.sroa.039.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft6CallOp10inputs_repERNS0_10ZoneVectorINS2_27MaybeRegisterRepresentationEEE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.b = load i16, ptr %i.a, align 2
  %i.c = zext i16 %i.b to i64                     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i
  %.not.i.i = icmp ult i64 %i.j, %i.c
  br i1 %.not.i.i, label %bb.b, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE14EnsureCapacityEm.exit.i, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.c)
  %.pre.i = load ptr, ptr %i.f, align 8           ; 2 uses
  %.pre13.i = ptrtoint ptr %.pre.i to i64
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE14EnsureCapacityEm.exit.i

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE14EnsureCapacityEm.exit.i: ; preds = %bb.b, %bb.a
  %.pre-phi.i = phi i64 [ %i.i, %bb.a ], [ %.pre13.i, %bb.b ]
  %i.k = phi ptr [ %i.g, %bb.a ], [ %.pre.i, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.c ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = icmp ult ptr %i.n, %i.l
  br i1 %i.o, label %.lr.ph.preheader.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE6resizeEm.exit

.lr.ph.preheader.i:                               ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE14EnsureCapacityEm.exit.i
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = add i64 %.pre-phi.i, %i.c
  %i.r = sub i64 %i.q, %i.p
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.n, i8 -1, i64 %i.r, i1 false)
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE6resizeEm.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE6resizeEm.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE14EnsureCapacityEm.exit.i, %.lr.ph.preheader.i
  store ptr %i.l, ptr %i.m, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load i32, ptr %i.u, align 8              ; 2 uses
  %i.w = load ptr, ptr %i.f, align 8
  %i.x = icmp ult i32 %i.v, 9
  br i1 %i.x, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE6resizeEm.exit
  %i.y = zext nneg i32 %i.v to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK2v88internal8compiler10turboshaft6CallOp10inputs_repERNS0_10ZoneVectorINS2_27MaybeRegisterRepresentationEEE, i64 %i.y
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE6resizeEm.exit, %switch.lookup
  %.sink = phi i8 [ %switch.load, %switch.lookup ], [ 1, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE6resizeEm.exit ]
  store i8 %.sink, ptr %i.w, align 1
  %i.z = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.ab, align 8
  %i.ac = trunc i32 %.sroa.0.0.copyload.i.i.i to i1
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.f, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store i8 8, ptr %i.ae, align 1
  %.pre = load ptr, ptr %i.s, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.af = phi ptr [ %.pre, %bb.d ], [ %i.z, %bb.c ] ; 2 uses
  %.1 = phi i64 [ 2, %bb.d ], [ 1, %bb.c ]        ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aj
  %.not42 = icmp samesign ne i64 %i.aj, 0
  %i.al = load i16, ptr %i.a, align 2
  %i.am = zext i16 %i.al to i64
  %.not3043 = icmp samesign ult i64 %.1, %i.am
  %or.cond44 = select i1 %.not42, i1 %.not3043, i1 false
  br i1 %or.cond44, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.246 = phi i64 [ %i.an, %.lr.ph ], [ %.1, %bb.e ] ; 2 uses
  %.02945 = phi ptr [ %i.aq, %.lr.ph ], [ %i.ah, %bb.e ] ; 2 uses
  %.sroa.0.0.copyload = load i8, ptr %.02945, align 1
  %i.an = add nuw nsw i64 %.246, 1                ; 3 uses
  %i.ao = load ptr, ptr %i.f, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.246
  store i8 %.sroa.0.0.copyload, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %.02945, i64 1 ; 2 uses
  %.not = icmp ne ptr %i.aq, %i.ak
  %i.ar = load i16, ptr %i.a, align 2
  %i.as = zext i16 %i.ar to i64
  %.not30 = icmp samesign ult i64 %i.an, %i.as
  %or.cond = select i1 %.not, i1 %.not30, i1 false
end_hunk_0
