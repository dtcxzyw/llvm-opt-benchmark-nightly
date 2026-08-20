inline.NumInlined: 29995
inline.NumDeleted: 7796
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 101
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft25ExplicitTruncationReducerINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE2ENS2_21UniformReducerAdapterIS3_SH_E26ReduceTailCallContinuationEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS9_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorEEEESY_DpT1_:bb.a
.critedge.thread:                                 ; preds = %bb.h
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.03245 ; 2 uses
  %.sroa.05.0.copyload = load i32, ptr %i.au, align 4
  %i.av = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_8ChangeOpEJNS2_14ShadowyOpIndexENSE_4KindENSE_10AssumptionENS2_22RegisterRepresentationESI_EEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %.sroa.05.0.copyload, i8 noundef zeroext 12, i8 noundef zeroext 0, i8 1, i8 0), !inline_history !114
  store i32 %i.av, ptr %i.au, align 4
  %i.aw = add nuw i64 %.03245, 1                  ; 2 uses
  %exitcond.not53 = icmp eq i64 %i.aw, %i.ac
  br i1 %exitcond.not53, label %._crit_edge.thread, label %.outer, !llvm.loop !289

.critedge47:                                      ; preds = %_ZN2v88internal8compiler10turboshaft15CreateOperationINS2_10TailCallOpEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENS7_ILm32EEEEEEEENS_4base6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorEEEEPT_RNSE_11SmallVectorImLm32ESaImEEEDpT0_.exit, %._crit_edge
  %i.ax = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10TailCallOpEJNS2_14ShadowyOpIndexENS2_27ShadowyOpIndexVectorWrapperEPKNS2_16TSCallDescriptorEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, ptr %2, i64 %3, ptr noundef %4)
  br label %bb.i

._crit_edge.thread:                               ; preds = %.critedge.thread, %._crit_edge
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.ay = load i16, ptr %i.q, align 2
  %i.az = zext i16 %i.ay to i64                   ; 2 uses
  %i.ba = add nsw i64 %i.az, -1                   ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  store ptr %i.bb, ptr %5, align 8, !alias.scope !290
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.bb, ptr %i.bc, align 8, !alias.scope !290
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 88
  store ptr %i.be, ptr %i.bd, align 8, !alias.scope !290
  %i.bf = icmp ugt i64 %i.ba, 16
  br i1 %i.bf, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.thread.i, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.thread.i: ; preds = %._crit_edge.thread
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %5, i64 noundef %i.ba)
  %.pre.i = load ptr, ptr %5, align 8, !alias.scope !290
  br label %.lr.ph.i.i.i.preheader.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i: ; preds = %._crit_edge.thread
  %.not9.i.i.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not9.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft9Operation14IdentityMapper3MapILm16EEENS_4base11SmallVectorINS2_7OpIndexEXT_ESaIS8_EEENS6_6VectorIKS8_EE.exit, label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.thread.i
  %i.bg = phi ptr [ %.pre.i, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.thread.i ], [ %i.bb, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i ] ; 5 uses
  %.idx9.pn.i = shl nuw nsw i64 %i.ba, 2
  %i.bh = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx9.pn.i
  %i.bi = add nuw nsw i64 %i.az, 4611686018427387902
  %i.bj = and i64 %i.bi, 4611686018427387903      ; 2 uses
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bj, 15
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader.i
  %i.bl = ptrtoaddr ptr %i.bg to i64
  %i.bm = sub i64 %i.bl, %i.m
  %i.bn = add i64 %i.bm, -21
  %diff.check = icmp ult i64 %i.bn, 31
  br i1 %diff.check, label %.lr.ph.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bk, 9223372036854775800     ; 3 uses
  %i.bo = shl i64 %n.vec, 2                       ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bg, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.v, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bg, i64 %i.br ; 2 uses
  %next.gep61 = getelementptr i8, ptr %i.v, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep61, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep61, align 4, !noalias !290
  %wide.load62 = load <4 x i32>, ptr %i.bs, align 4, !noalias !290
  %i.bt = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load62, ptr %i.bt, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !293

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader.i, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.bg, %vector.memcheck ], [ %i.bg, %.lr.ph.i.i.i.preheader.i ], [ %i.bp, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.preheader.i ], [ %i.bq, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.bv = load i32, ptr %.0810.i.i.i.i, align 4, !noalias !290
  store i32 %i.bv, ptr %.011.i.i.i.i, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 4 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.bw, %i.bh
  br i1 %.not.i.i.i.i, label %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit.i, label %.lr.ph.i.i.i.i, !llvm.loop !294

_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.pre8.i = load ptr, ptr %5, align 8, !alias.scope !290
  br label %_ZN2v88internal8compiler10turboshaft9Operation14IdentityMapper3MapILm16EEENS_4base11SmallVectorINS2_7OpIndexEXT_ESaIS8_EEENS6_6VectorIKS8_EE.exit

_ZN2v88internal8compiler10turboshaft9Operation14IdentityMapper3MapILm16EEENS_4base11SmallVectorINS2_7OpIndexEXT_ESaIS8_EEENS6_6VectorIKS8_EE.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i, %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit.i
  %i.by = phi ptr [ %.pre8.i, %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit.i ], [ %i.bb, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.ba
  store ptr %i.bz, ptr %i.bc, align 8, !alias.scope !290
  %i.ca = load ptr, ptr %i.t, align 8
  %i.cb = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10TailCallOpEJNS2_14ShadowyOpIndexENS5_6VectorINS2_7OpIndexEEEPKNS2_16TSCallDescriptorEEEESH_DpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %.sroa.0.0.copyload.i.i, ptr %i.by, i64 %i.ba, ptr noundef %i.ca)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9Operation14IdentityMapper3MapILm16EEENS_4base11SmallVectorINS2_7OpIndexEXT_ESaIS8_EEENS6_6VectorIKS8_EE.exit, %.critedge47
  %.sroa.031.0 = phi i32 [ %i.cb, %_ZN2v88internal8compiler10turboshaft9Operation14IdentityMapper3MapILm16EEENS_4base11SmallVectorINS2_7OpIndexEXT_ESaIS8_EEENS6_6VectorIKS8_EE.exit ], [ %i.ax, %.critedge47 ]
  ret i32 %.sroa.031.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft10TailCallOp10inputs_repERNS0_10ZoneVectorINS2_27MaybeRegisterRepresentationEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 2
  %i.c = zext i16 %i.b to i64                     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %.not.i.i = icmp ult i64 %i.j, %i.c
  br i1 %.not.i.i, label %bb.b, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE14EnsureCapacityEm.exit.i, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.c)
  %.pre.i = load ptr, ptr %i.f, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE14EnsureCapacityEm.exit.i

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE14EnsureCapacityEm.exit.i: ; preds = %bb.b, %bb.a
  %i.k = phi ptr [ %i.g, %bb.a ], [ %.pre.i, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.c ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = icmp ult ptr %i.n, %i.l
  br i1 %i.o, label %.lr.ph.preheader.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE6resizeEm.exit

.lr.ph.preheader.i:                               ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE14EnsureCapacityEm.exit.i
  %i.p = ptrtoaddr ptr %i.n to i64
  %i.q = ptrtoaddr ptr %i.k to i64
  %i.r = add i64 %i.q, %i.c
  %i.s = sub i64 %i.r, %i.p
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.n, i8 -1, i64 %i.s, i1 false)
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE6resizeEm.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE6resizeEm.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE14EnsureCapacityEm.exit.i, %.lr.ph.preheader.i
  store ptr %i.l, ptr %i.m, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = load i32, ptr %i.v, align 8              ; 2 uses
  %i.x = load ptr, ptr %i.f, align 8
  %i.y = icmp ult i32 %i.w, 7
  %switch.cast = zext i32 %i.w to i56
  %switch.shiftamt = shl nuw nsw i56 %switch.cast, 3
  %switch.downshift = lshr i56 281479288718340, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  %.sink = select i1 %i.y, i8 %switch.masked, i8 4
  store i8 %.sink, ptr %i.x, align 1
  %i.z = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ad = load i64, ptr %i.ac, align 8            ; 4 uses
  %.not30 = icmp samesign eq i64 %i.ad, 0
  br i1 %.not30, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE6resizeEm.exit
  %xtraiter = and i64 %i.ad, 3                    ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 4
  br i1 %i.ae, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ad, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.132.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.bl, %._crit_edge.loopexit.unr-lcssa ]
  %.02331.epil.init = phi ptr [ %i.ab, %.lr.ph.preheader ], [ %i.bp, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod36 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod36)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.132.epil = phi i64 [ %i.af, %.lr.ph.epil ], [ %.132.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.02331.epil = phi ptr [ %i.ai, %.lr.ph.epil ], [ %.02331.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %.sroa.0.0.copyload.epil = load i8, ptr %.02331.epil, align 1
  %i.af = add i64 %.132.epil, 1                   ; 2 uses
  %i.ag = load ptr, ptr %i.f, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.132.epil
  store i8 %.sroa.0.0.copyload.epil, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.02331.epil, i64 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !295

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE6resizeEm.exit
  %.1.lcssa = phi i64 [ 1, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE6resizeEm.exit ], [ %i.bl, %._crit_edge.loopexit.unr-lcssa ], [ %i.af, %.lr.ph.epil ] ; 4 uses
  %i.aj = load ptr, ptr %i.d, align 8
  %i.ak = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %.not.i.i24 = icmp ugt i64 %.1.lcssa, %i.an
  br i1 %.not.i.i24, label %bb.c, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE14EnsureCapacityEm.exit.i25, !prof !9

bb.c:                                             ; preds = %._crit_edge
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %.1.lcssa)
  %.pre.i27 = load ptr, ptr %i.f, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE14EnsureCapacityEm.exit.i25

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE14EnsureCapacityEm.exit.i25: ; preds = %bb.c, %._crit_edge
  %i.ao = phi ptr [ %i.ak, %._crit_edge ], [ %.pre.i27, %bb.c ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.1.lcssa ; 3 uses
  %i.aq = load ptr, ptr %i.m, align 8             ; 3 uses
  %i.ar = icmp ult ptr %i.aq, %i.ap
  br i1 %i.ar, label %.lr.ph.preheader.i26, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE6resizeEm.exit28

.lr.ph.preheader.i26:                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE14EnsureCapacityEm.exit.i25
  %i.as = ptrtoaddr ptr %i.aq to i64
  %i.at = ptrtoaddr ptr %i.ao to i64
  %i.au = add i64 %.1.lcssa, %i.at
  %i.av = sub i64 %i.au, %i.as
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aq, i8 -1, i64 %i.av, i1 false)
  %.pre = load ptr, ptr %i.f, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE6resizeEm.exit28

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE6resizeEm.exit28: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE14EnsureCapacityEm.exit.i25, %.lr.ph.preheader.i26
  %i.aw = phi ptr [ %i.ao, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE14EnsureCapacityEm.exit.i25 ], [ %.pre, %.lr.ph.preheader.i26 ] ; 2 uses
  store ptr %i.ap, ptr %i.m, align 8
  %i.ax = ptrtoint ptr %i.ap to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %.fca.0.insert.i.i = insertvalue { ptr, i64 } poison, ptr %i.aw, 0
  %.fca.1.insert.i.i = insertvalue { ptr, i64 } %.fca.0.insert.i.i, i64 %i.az, 1
  ret { ptr, i64 } %.fca.1.insert.i.i

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.132 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.bl, %.lr.ph ] ; 5 uses
  %.02331 = phi ptr [ %i.ab, %.lr.ph.preheader.new ], [ %i.bp, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %.sroa.0.0.copyload = load i8, ptr %.02331, align 1
  %i.ba = load ptr, ptr %i.f, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.132
  store i8 %.sroa.0.0.copyload, ptr %i.bb, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %.02331, i64 1
  %.sroa.0.0.copyload.1 = load i8, ptr %i.bc, align 1
  %i.bd = load ptr, ptr %i.f, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.132
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store i8 %.sroa.0.0.copyload.1, ptr %i.bf, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %.02331, i64 2
  %.sroa.0.0.copyload.2 = load i8, ptr %i.bg, align 1
  %i.bh = load ptr, ptr %i.f, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.132
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store i8 %.sroa.0.0.copyload.2, ptr %i.bj, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %.02331, i64 3
  %.sroa.0.0.copyload.3 = load i8, ptr %i.bk, align 1
  %i.bl = add nuw i64 %.132, 4                    ; 3 uses
  %i.bm = load ptr, ptr %i.f, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.132
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 3
  store i8 %.sroa.0.0.copyload.3, ptr %i.bo, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %.02331, i64 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10TailCallOpEJNS2_14ShadowyOpIndexENS2_27ShadowyOpIndexVectorWrapperEPKNS2_16TSCallDescriptorEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, ptr %2, i64 %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %i.j = add i64 %3, 6
  %i.k = lshr i64 %i.j, 1
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.k, i64 2) ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.o = sub i64 %i.n, %i.e
  %i.p = ashr exact i64 %i.o, 3
  %i.q = icmp ult i64 %i.p, %.sroa.speculated.i.i.i
  br i1 %i.q, label %bb.b, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.r = sub i64 %i.n, %i.h
  %i.s = lshr exact i64 %i.r, 3
  %i.t = and i64 %i.s, 4294967295
  %i.u = add nuw i64 %i.t, %.sroa.speculated.i.i.i
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.u)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre13 = ptrtoint ptr %.pre to i64
  %.pre14 = sub i64 %.pre10.i.i.i.i, %.pre13
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi15 = phi i64 [ %.pre14, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %i.v = phi ptr [ %.pre.i.i.i.i, %bb.b ], [ %i.d, %bb.a ] ; 8 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.sroa.speculated.i.i.i
  store ptr %i.w, ptr %i.c, align 8
  %i.x = trunc i64 %.pre-phi15 to i32
  %i.y = trunc i64 %.sroa.speculated.i.i.i to i16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = lshr i64 %.pre-phi15, 4
  %i.ac = and i64 %i.ab, 268435455
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ac
  store i16 %i.y, ptr %i.ad, align 2
  %i.ae = load ptr, ptr %i.z, align 8
  %.tr.i.i.i.i = trunc i64 %.sroa.speculated.i.i.i to i32
  %i.af = shl i32 %.tr.i.i.i.i, 3
  %i.ag = add i32 %i.af, %i.x
  %i.ah = lshr i32 %i.ag, 4
  %i.ai = add nsw i32 %i.ah, -1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.aj
  store i16 %i.y, ptr %i.ak, align 2
  store i8 2, ptr %i.v, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 0, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.an = trunc i64 %3 to i16
  %i.ao = add i16 %i.an, 1                        ; 3 uses
  store i16 %i.ao, ptr %i.am, align 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %4, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 4 uses
  store i32 %1, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 20 ; 2 uses
  %i.as = icmp ugt i64 %3, 1
  br i1 %i.as, label %bb.c, label %bb.d, !prof !8

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %.idx.i.i.i.i = shl nuw nsw i64 %3, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ar, ptr align 4 %2, i64 %.idx.i.i.i.i, i1 false)
  br label %_ZN2v88internal8compiler10turboshaft10TailCallOp3NewEPNS2_5GraphENS2_7OpIndexENS_4base6VectorIKS6_EEPKNS2_16TSCallDescriptorE.exit

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %i.at = icmp eq i64 %3, 1
  br i1 %i.at, label %bb.e, label %_ZN2v88internal8compiler10turboshaft10TailCallOp3NewEPNS2_5GraphENS2_7OpIndexENS_4base6VectorIKS6_EEPKNS2_16TSCallDescriptorE.exit

bb.e:                                             ; preds = %bb.d
  %i.au = load i32, ptr %2, align 4
  store i32 %i.au, ptr %i.ar, align 4
  br label %_ZN2v88internal8compiler10turboshaft10TailCallOp3NewEPNS2_5GraphENS2_7OpIndexENS_4base6VectorIKS6_EEPKNS2_16TSCallDescriptorE.exit

_ZN2v88internal8compiler10turboshaft10TailCallOp3NewEPNS2_5GraphENS2_7OpIndexENS_4base6VectorIKS6_EEPKNS2_16TSCallDescriptorE.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.av = zext i16 %i.ao to i64
  %.idx.i = shl nuw nsw i64 %i.av, 2              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i
  %.not10.i = icmp eq i16 %i.ao, 0
  br i1 %.not10.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10TailCallOpEEEvRKT_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN2v88internal8compiler10turboshaft10TailCallOp3NewEPNS2_5GraphENS2_7OpIndexENS_4base6VectorIKS6_EEPKNS2_16TSCallDescriptorE.exit
  %i.ax = add nsw i64 %.idx.i, -4                 ; 2 uses
  %i.ay = and i64 %i.ax, 4
  %lcmp.mod.not.not = icmp eq i64 %i.ay, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %.sroa.01.0.copyload.i.prol = load i32, ptr %i.aq, align 8
  %i.az = load ptr, ptr %i.f, align 8
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = zext i32 %.sroa.01.0.copyload.i.prol to i64
  %i.bc = add i64 %i.ba, %i.bb
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1             ; 2 uses
  %.not.i.i.prol = icmp eq i8 %i.bf, -1
  br i1 %.not.i.i.prol, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol, label %bb.f, !prof !9

bb.f:                                             ; preds = %.lr.ph.i.prol
  %i.bg = add nuw i8 %i.bf, 1
  store i8 %i.bg, ptr %i.be, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol: ; preds = %bb.f, %.lr.ph.i.prol
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft25ExplicitTruncationReducerINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE135ENS2_21UniformReducerAdapterIS3_SH_E29ReduceFastApiCallContinuationEJNS2_1VINS2_10FrameStateEEENSO_INS0_6ObjectEEENSO_INS0_7ContextEEENS9_6VectorIKNS2_7OpIndexEEEPKNS2_21FastApiCallParametersENSV_IKNS2_22RegisterRepresentationEEEEEESW_DpT1_:bb.a
  %i.cp = getelementptr i8, ptr %next.gep73, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep73, align 4, !noalias !375
  %wide.load74 = load <4 x i32>, ptr %i.cp, align 4, !noalias !375
  %i.cq = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load74, ptr %i.cq, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !378

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader.i, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.cd, %vector.memcheck ], [ %i.cd, %.lr.ph.i.i.i.preheader.i ], [ %i.cm, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.i.i.i.preheader.i ], [ %i.cn, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.cs = load i32, ptr %.0810.i.i.i.i, align 4, !noalias !375
  store i32 %i.cs, ptr %.011.i.i.i.i, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 4 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.ct, %i.ce
  br i1 %.not.i.i.i.i, label %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit.i, label %.lr.ph.i.i.i.i, !llvm.loop !379

_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.pre8.i = load ptr, ptr %8, align 8, !alias.scope !375
  br label %_ZN2v88internal8compiler10turboshaft9Operation14IdentityMapper3MapILm8EEENS_4base11SmallVectorINS2_7OpIndexEXT_ESaIS8_EEENS6_6VectorIKS8_EE.exit

_ZN2v88internal8compiler10turboshaft9Operation14IdentityMapper3MapILm8EEENS_4base11SmallVectorINS2_7OpIndexEXT_ESaIS8_EEENS6_6VectorIKS8_EE.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i, %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit.i
  %i.cv = phi ptr [ %.pre8.i, %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit.i ], [ %i.by, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.bx
  store ptr %i.cw, ptr %i.bz, align 8, !alias.scope !375
  %i.cx = load ptr, ptr %i.t, align 8
  %i.cy = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_13FastApiCallOpEJNS2_14ShadowyOpIndexESF_SF_NS2_27ShadowyOpIndexVectorWrapperEPKNS2_21FastApiCallParametersENS5_6VectorIKNS2_22RegisterRepresentationEEEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %.sroa.0.0.copyload.i.i, i32 %.sroa.0.0.copyload.i.i41, i32 %.sroa.0.0.copyload.i.i42, ptr %i.cv, i64 %i.bx, ptr noundef %i.cx, ptr noundef nonnull byval(%"class.v8::base::Vector.194") align 8 %i.u) ; 3 uses
  %i.cz = call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES4_EEEEEEEE19CatchIfInCatchScopeENS2_7OpIndexE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.cy)
  %i.da = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !6, !align !7
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = zext i32 %i.cy to i64
  %i.dg = add i64 %i.de, %i.df
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12DidntThrowOpEJNS2_14ShadowyOpIndexEbPNS5_6VectorIKNS2_22RegisterRepresentationEEENS2_9OpEffectsEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.cy, i1 noundef zeroext %i.cz, ptr noundef nonnull %i.di, i32 487263) ; 2 uses
  %i.dk = load ptr, ptr %i.da, align 8, !nonnull !6, !align !7
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = zext i32 %i.dj to i64
  %i.dp = add i64 %i.dn, %i.do
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = call i32 @_ZN2v88internal8compiler10turboshaft21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES5_EEEEEEEEEE19WrapInTupleIfNeededINS2_12DidntThrowOpEEENS2_1VINS2_3AnyEEERKT_SL_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i32 %i.dj)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9Operation14IdentityMapper3MapILm8EEENS_4base11SmallVectorINS2_7OpIndexEXT_ESaIS8_EEENS6_6VectorIKS8_EE.exit, %.critedge59
  %.sroa.039.0 = phi i32 [ %i.dr, %_ZN2v88internal8compiler10turboshaft9Operation14IdentityMapper3MapILm8EEENS_4base11SmallVectorINS2_7OpIndexEXT_ESaIS8_EEENS6_6VectorIKS8_EE.exit ], [ %i.bu, %.critedge59 ]
  ret i32 %.sroa.039.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft13FastApiCallOp10inputs_repERNS0_10ZoneVectorINS2_27MaybeRegisterRepresentationEEE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 2
  %i.c = zext i16 %i.b to i64                     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %.not.i.i = icmp ult i64 %i.j, %i.c
  br i1 %.not.i.i, label %bb.b, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE14EnsureCapacityEm.exit.i, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.c)
  %.pre.i = load ptr, ptr %i.f, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE14EnsureCapacityEm.exit.i

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE14EnsureCapacityEm.exit.i: ; preds = %bb.b, %bb.a
  %i.k = phi ptr [ %i.g, %bb.a ], [ %.pre.i, %bb.b ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.c ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = icmp ult ptr %i.n, %i.l
  br i1 %i.o, label %.lr.ph.preheader.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE6resizeEm.exit

.lr.ph.preheader.i:                               ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE14EnsureCapacityEm.exit.i
  %i.p = ptrtoaddr ptr %i.n to i64
  %i.q = ptrtoaddr ptr %i.k to i64
  %i.r = add i64 %i.q, %i.c
  %i.s = sub i64 %i.r, %i.p
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.n, i8 -1, i64 %i.s, i1 false)
  %.pre = load ptr, ptr %i.f, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE6resizeEm.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE6resizeEm.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE14EnsureCapacityEm.exit.i, %.lr.ph.preheader.i
  %i.t = phi ptr [ %i.k, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE14EnsureCapacityEm.exit.i ], [ %.pre, %.lr.ph.preheader.i ]
  store ptr %i.l, ptr %i.m, align 8
  store i8 8, ptr %i.t, align 1
  %i.u = load ptr, ptr %i.f, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store i8 4, ptr %i.v, align 1
  %i.w = load ptr, ptr %i.f, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  store i8 4, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load i32, ptr %i.ac, align 4            ; 2 uses
  %.not.i.i1418 = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i1418, label %.critedge, label %_ZNK2v813CFunctionInfo10HasOptionsEv.exit.i

_ZNK2v813CFunctionInfo10HasOptionsEv.exit.i:      ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE6resizeEm.exit, %_ZNK2v88internal8compiler10turboshaft13FastApiCallOp23argument_representationEj.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK2v88internal8compiler10turboshaft13FastApiCallOp23argument_representationEj.exit ], [ 0, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE6resizeEm.exit ] ; 4 uses
  %i.ae = phi i32 [ %i.bg, %_ZNK2v88internal8compiler10turboshaft13FastApiCallOp23argument_representationEj.exit ], [ %i.ad, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE6resizeEm.exit ] ; 2 uses
  %i.af = phi ptr [ %i.be, %_ZNK2v88internal8compiler10turboshaft13FastApiCallOp23argument_representationEj.exit ], [ %i.ab, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE6resizeEm.exit ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = add i32 %i.ae, -1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = icmp eq i8 %i.al, -1
  %i.an = sext i1 %i.am to i32
  %spec.select.i = add i32 %i.ae, %i.an
  %i.ao = zext i32 %spec.select.i to i64
  %i.ap = icmp samesign ult i64 %indvars.iv, %i.ao
  br i1 %i.ap, label %bb.c, label %.critedge

.critedge:                                        ; preds = %_ZNK2v813CFunctionInfo10HasOptionsEv.exit.i, %_ZNK2v88internal8compiler10turboshaft13FastApiCallOp23argument_representationEj.exit, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE6resizeEm.exit
  %i.aq = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ar = load ptr, ptr %i.m, align 8
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  %.fca.0.insert.i.i = insertvalue { ptr, i64 } poison, ptr %i.aq, 0
  %.fca.1.insert.i.i = insertvalue { ptr, i64 } %.fca.0.insert.i.i, i64 %i.au, 1
  ret { ptr, i64 } %.fca.1.insert.i.i

bb.c:                                             ; preds = %_ZNK2v813CFunctionInfo10HasOptionsEv.exit.i
  %i.av = trunc nuw i64 %indvars.iv to i32
  %i.aw = tail call noundef nonnull align 1 dereferenceable(2) ptr @_ZNK2v813CFunctionInfo12ArgumentInfoEj(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i32 noundef %i.av) #23 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = and i8 %i.ay, 6
  %.not.i = icmp eq i8 %i.az, 0
  br i1 %.not.i, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft13FastApiCallOp23argument_representationEj.exit

bb.d:                                             ; preds = %bb.c
  %i.ba = load i8, ptr %i.aw, align 1
  switch i8 %i.ba, label %bb.j [
    i8 0, label %bb.e
    i8 1, label %_ZNK2v88internal8compiler10turboshaft13FastApiCallOp23argument_representationEj.exit
    i8 2, label %_ZNK2v88internal8compiler10turboshaft13FastApiCallOp23argument_representationEj.exit
    i8 3, label %_ZNK2v88internal8compiler10turboshaft13FastApiCallOp23argument_representationEj.exit
    i8 4, label %_ZNK2v88internal8compiler10turboshaft13FastApiCallOp23argument_representationEj.exit
    i8 5, label %bb.f
    i8 6, label %bb.f
    i8 10, label %bb.g
    i8 12, label %bb.g
    i8 9, label %bb.g
    i8 11, label %bb.g
    i8 7, label %bb.h
    i8 8, label %bb.h
    i8 13, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3) #24
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.d
  br label %_ZNK2v88internal8compiler10turboshaft13FastApiCallOp23argument_representationEj.exit

bb.g:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  br label %_ZNK2v88internal8compiler10turboshaft13FastApiCallOp23argument_representationEj.exit

bb.h:                                             ; preds = %bb.d, %bb.d
  br label %_ZNK2v88internal8compiler10turboshaft13FastApiCallOp23argument_representationEj.exit

bb.i:                                             ; preds = %bb.d
  br label %_ZNK2v88internal8compiler10turboshaft13FastApiCallOp23argument_representationEj.exit

bb.j:                                             ; preds = %bb.d
  unreachable

_ZNK2v88internal8compiler10turboshaft13FastApiCallOp23argument_representationEj.exit: ; preds = %bb.c, %bb.d, %bb.d, %bb.d, %bb.d, %bb.f, %bb.g, %bb.h, %bb.i
  %.sroa.0.0.i = phi i8 [ 8, %bb.i ], [ 3, %bb.c ], [ 1, %bb.f ], [ 4, %bb.g ], [ 3, %bb.h ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ]
  %2 = add nuw nsw i64 %indvars.iv, 3
  %3 = and i64 %2, 4294967295
  %4 = load ptr, ptr %i.f, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 %3
  store i8 %.sroa.0.0.i, ptr %i.bb, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.bc = load ptr, ptr %i.y, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bg = load i32, ptr %i.bf, align 4            ; 2 uses
  %.not.i.i14 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i14, label %.critedge, label %_ZNK2v813CFunctionInfo10HasOptionsEv.exit.i, !llvm.loop !380
}

declare noundef nonnull align 1 dereferenceable(2) ptr @_ZNK2v813CFunctionInfo12ArgumentInfoEj(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_13FastApiCallOpEJNS2_14ShadowyOpIndexESF_SF_NS2_27ShadowyOpIndexVectorWrapperEPKNS2_21FastApiCallParametersENS5_6VectorIKNS2_22RegisterRepresentationEEEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i32 %2, i32 %3, ptr %4, i64 %5, ptr noundef %6, ptr noundef byval(%"class.v8::base::Vector.194") align 8 %7) local_unnamed_addr #0 comdat align 2 {
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
  %i.j = add i64 %5, 14
  %i.k = lshr i64 %i.j, 1
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.k, i64 2) ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.o = sub i64 %i.n, %i.e
  %i.p = ashr exact i64 %i.o, 3
  %i.q = icmp ult i64 %i.p, %.sroa.speculated.i.i.i
  br i1 %i.q, label %bb.b, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.r = sub i64 %i.n, %i.h
  %i.s = lshr exact i64 %i.r, 3
  %i.t = and i64 %i.s, 4294967295
  %i.u = add nuw i64 %i.t, %.sroa.speculated.i.i.i
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.u)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre23 = ptrtoint ptr %.pre to i64
  %.pre24 = sub i64 %.pre10.i.i.i.i, %.pre23
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi25 = phi i64 [ %.pre24, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %i.v = phi ptr [ %.pre.i.i.i.i, %bb.b ], [ %i.d, %bb.a ] ; 12 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.sroa.speculated.i.i.i
  store ptr %i.w, ptr %i.c, align 8
  %i.x = trunc i64 %.pre-phi25 to i32
  %i.y = trunc i64 %.sroa.speculated.i.i.i to i16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = lshr i64 %.pre-phi25, 4
  %i.ac = and i64 %i.ab, 268435455
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ac
  store i16 %i.y, ptr %i.ad, align 2
  %i.ae = load ptr, ptr %i.z, align 8
  %.tr.i.i.i.i = trunc i64 %.sroa.speculated.i.i.i to i32
  %i.af = shl i32 %.tr.i.i.i.i, 3
  %i.ag = add i32 %i.af, %i.x
  %i.ah = lshr i32 %i.ag, 4
  %i.ai = add nsw i32 %i.ah, -1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.aj
  store i16 %i.y, ptr %i.ak, align 2
  store i8 -121, ptr %i.v, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 0, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.an = trunc i64 %5 to i16
  %i.ao = add i16 %i.an, 3                        ; 3 uses
  store i16 %i.ao, ptr %i.am, align 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %6, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store i8 0, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 4 uses
  store i32 %1, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 44
  store i32 %2, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store i32 %3, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 52 ; 2 uses
  %i.aw = icmp ugt i64 %5, 1
  br i1 %i.aw, label %bb.c, label %bb.d, !prof !8

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %.idx.i.i.i.i = shl nuw nsw i64 %5, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.av, ptr align 4 %4, i64 %.idx.i.i.i.i, i1 false)
  br label %_ZN2v88internal8compiler10turboshaft13FastApiCallOp3NewEPNS2_5GraphENS2_1VINS2_10FrameStateEEENS6_INS0_6ObjectEEENS6_INS0_7ContextEEENS_4base6VectorIKNS2_7OpIndexEEEPKNS2_21FastApiCallParametersENSE_IKNS2_22RegisterRepresentationEEE.exit

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %i.ax = icmp eq i64 %5, 1
  br i1 %i.ax, label %bb.e, label %_ZN2v88internal8compiler10turboshaft13FastApiCallOp3NewEPNS2_5GraphENS2_1VINS2_10FrameStateEEENS6_INS0_6ObjectEEENS6_INS0_7ContextEEENS_4base6VectorIKNS2_7OpIndexEEEPKNS2_21FastApiCallParametersENSE_IKNS2_22RegisterRepresentationEEE.exit

bb.e:                                             ; preds = %bb.d
  %i.ay = load i32, ptr %4, align 4
  store i32 %i.ay, ptr %i.av, align 4
  br label %_ZN2v88internal8compiler10turboshaft13FastApiCallOp3NewEPNS2_5GraphENS2_1VINS2_10FrameStateEEENS6_INS0_6ObjectEEENS6_INS0_7ContextEEENS_4base6VectorIKNS2_7OpIndexEEEPKNS2_21FastApiCallParametersENSE_IKNS2_22RegisterRepresentationEEE.exit

_ZN2v88internal8compiler10turboshaft13FastApiCallOp3NewEPNS2_5GraphENS2_1VINS2_10FrameStateEEENS6_INS0_6ObjectEEENS6_INS0_7ContextEEENS_4base6VectorIKNS2_7OpIndexEEEPKNS2_21FastApiCallParametersENSE_IKNS2_22RegisterRepresentationEEE.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.az = zext i16 %i.ao to i64
  %.idx.i = shl nuw nsw i64 %i.az, 2              ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i
  %.not10.i = icmp eq i16 %i.ao, 0
  br i1 %.not10.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_13FastApiCallOpEEEvRKT_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN2v88internal8compiler10turboshaft13FastApiCallOp3NewEPNS2_5GraphENS2_1VINS2_10FrameStateEEENS6_INS0_6ObjectEEENS6_INS0_7ContextEEENS_4base6VectorIKNS2_7OpIndexEEEPKNS2_21FastApiCallParametersENSE_IKNS2_22RegisterRepresentationEEE.exit
  %i.bb = add nsw i64 %.idx.i, -4                 ; 2 uses
  %i.bc = and i64 %i.bb, 4
  %lcmp.mod.not.not = icmp eq i64 %i.bc, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %.sroa.01.0.copyload.i.prol = load i32, ptr %i.as, align 8
  %i.bd = load ptr, ptr %i.f, align 8
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = zext i32 %.sroa.01.0.copyload.i.prol to i64
  %i.bg = add i64 %i.be, %i.bf
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1             ; 2 uses
  %.not.i.i.prol = icmp eq i8 %i.bj, -1
  br i1 %.not.i.i.prol, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol, label %bb.f, !prof !9

bb.f:                                             ; preds = %.lr.ph.i.prol
  %i.bk = add nuw i8 %i.bj, 1
  store i8 %i.bk, ptr %i.bi, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol: ; preds = %bb.f, %.lr.ph.i.prol
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 44
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol, %.lr.ph.i.preheader
  %.011.i.unr = phi ptr [ %i.as, %.lr.ph.i.preheader ], [ %i.bl, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol ]
  %i.bm = icmp eq i64 %i.bb, 0
  br i1 %i.bm, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_13FastApiCallOpEEEvRKT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1
  %.011.i = phi ptr [ %i.ce, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1 ], [ %.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.sroa.01.0.copyload.i = load i32, ptr %.011.i, align 4
  %i.bn = load ptr, ptr %i.f, align 8
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = zext i32 %.sroa.01.0.copyload.i to i64
  %i.bq = add i64 %i.bo, %i.bp
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.bt, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, label %bb.g, !prof !9

bb.g:                                             ; preds = %.lr.ph.i
  %i.bu = add nuw i8 %i.bt, 1
  store i8 %i.bu, ptr %i.bs, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i: ; preds = %bb.g, %.lr.ph.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.011.i, i64 4
  %.sroa.01.0.copyload.i.1 = load i32, ptr %i.bv, align 4
  %i.bw = load ptr, ptr %i.f, align 8
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = zext i32 %.sroa.01.0.copyload.i.1 to i64
  %i.bz = add i64 %i.bx, %i.by
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1             ; 2 uses
  %.not.i.i.1 = icmp eq i8 %i.cc, -1
  br i1 %.not.i.i.1, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1, label %bb.h, !prof !9

bb.h:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %i.cd = add nuw i8 %i.cc, 1
  store i8 %i.cd, ptr %i.cb, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1: ; preds = %bb.h, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %.not.i.1 = icmp eq ptr %i.ce, %i.ba
  br i1 %.not.i.1, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_13FastApiCallOpEEEvRKT_.exit, label %.lr.ph.i

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_13FastApiCallOpEEEvRKT_.exit: ; preds = %.lr.ph.i.prol.loopexit, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1, %_ZN2v88internal8compiler10turboshaft13FastApiCallOp3NewEPNS2_5GraphENS2_1VINS2_10FrameStateEEENS6_INS0_6ObjectEEENS6_INS0_7ContextEEENS_4base6VectorIKNS2_7OpIndexEEEPKNS2_21FastApiCallParametersENSE_IKNS2_22RegisterRepresentationEEE.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 972
  %.sroa.0.0.copyload.i17 = load i32, ptr %i.cf, align 4
  %i.cg = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 4 uses
  %i.ch = lshr i64 %i.i, 4
  %i.ci = and i64 %i.ch, 268435455                ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 216
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 208 ; 3 uses
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.cn = ptrtoint ptr %i.ck to i64
  %i.co = ptrtoint ptr %i.cm to i64
end_hunk_1
