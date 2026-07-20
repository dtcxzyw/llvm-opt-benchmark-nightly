inline.NumInlined: 29995
inline.NumDeleted: 7796
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 101
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft25ExplicitTruncationReducerINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE2ENS2_21UniformReducerAdapterIS3_SH_E26ReduceTailCallContinuationEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS9_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorEEEESY_DpT1_:bb.a
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
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load i32, ptr %i.u, align 8              ; 2 uses
  %i.w = load ptr, ptr %i.f, align 8
  %i.x = icmp ult i32 %i.v, 7
  %switch.cast = zext i32 %i.v to i56
  %switch.shiftamt = shl nuw nsw i56 %switch.cast, 3
  %switch.downshift = lshr i56 281479288718340, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  %.sink = select i1 %i.x, i8 %switch.masked, i8 4
  store i8 %.sink, ptr %i.w, align 1
  %i.y = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = load i64, ptr %i.ab, align 8            ; 4 uses
  %.not32 = icmp samesign eq i64 %i.ac, 0
  br i1 %.not32, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE6resizeEm.exit
  %xtraiter = and i64 %i.ac, 3                    ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 4
  br i1 %i.ad, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ac, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.134.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.bj, %._crit_edge.loopexit.unr-lcssa ]
  %.02333.epil.init = phi ptr [ %i.aa, %.lr.ph.preheader ], [ %i.bn, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod38 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod38)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.134.epil = phi i64 [ %i.ae, %.lr.ph.epil ], [ %.134.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.02333.epil = phi ptr [ %i.ah, %.lr.ph.epil ], [ %.02333.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %.sroa.0.0.copyload.epil = load i8, ptr %.02333.epil, align 1
  %i.ae = add i64 %.134.epil, 1                   ; 2 uses
  %i.af = load ptr, ptr %i.f, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.134.epil
  store i8 %.sroa.0.0.copyload.epil, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %.02333.epil, i64 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !295

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE6resizeEm.exit
  %.1.lcssa = phi i64 [ 1, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE6resizeEm.exit ], [ %i.bj, %._crit_edge.loopexit.unr-lcssa ], [ %i.ae, %.lr.ph.epil ] ; 4 uses
  %i.ai = load ptr, ptr %i.d, align 8
  %i.aj = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.am = sub i64 %i.ak, %i.al
  %.not.i.i24 = icmp ugt i64 %.1.lcssa, %i.am
  br i1 %.not.i.i24, label %bb.c, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE14EnsureCapacityEm.exit.i25, !prof !9

bb.c:                                             ; preds = %._crit_edge
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %.1.lcssa)
  %.pre.i28 = load ptr, ptr %i.f, align 8         ; 2 uses
  %.pre13.i29 = ptrtoint ptr %.pre.i28 to i64
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE14EnsureCapacityEm.exit.i25

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE14EnsureCapacityEm.exit.i25: ; preds = %bb.c, %._crit_edge
  %.pre-phi.i26 = phi i64 [ %i.al, %._crit_edge ], [ %.pre13.i29, %bb.c ]
  %i.an = phi ptr [ %i.aj, %._crit_edge ], [ %.pre.i28, %bb.c ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %.1.lcssa ; 3 uses
  %i.ap = load ptr, ptr %i.m, align 8             ; 3 uses
  %i.aq = icmp ult ptr %i.ap, %i.ao
  br i1 %i.aq, label %.lr.ph.preheader.i27, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE6resizeEm.exit30

.lr.ph.preheader.i27:                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE14EnsureCapacityEm.exit.i25
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = add i64 %.pre-phi.i26, %.1.lcssa
  %i.at = sub i64 %i.as, %i.ar
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ap, i8 -1, i64 %i.at, i1 false)
  %.pre = load ptr, ptr %i.f, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE6resizeEm.exit30

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE6resizeEm.exit30: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE14EnsureCapacityEm.exit.i25, %.lr.ph.preheader.i27
  %i.au = phi ptr [ %i.an, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27MaybeRegisterRepresentationEE14EnsureCapacityEm.exit.i25 ], [ %.pre, %.lr.ph.preheader.i27 ] ; 2 uses
  store ptr %i.ao, ptr %i.m, align 8
  %i.av = ptrtoint ptr %i.ao to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %.fca.0.insert.i.i = insertvalue { ptr, i64 } poison, ptr %i.au, 0
  %.fca.1.insert.i.i = insertvalue { ptr, i64 } %.fca.0.insert.i.i, i64 %i.ax, 1
  ret { ptr, i64 } %.fca.1.insert.i.i

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.134 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.bj, %.lr.ph ] ; 5 uses
  %.02333 = phi ptr [ %i.aa, %.lr.ph.preheader.new ], [ %i.bn, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %.sroa.0.0.copyload = load i8, ptr %.02333, align 1
  %i.ay = load ptr, ptr %i.f, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.134
  store i8 %.sroa.0.0.copyload, ptr %i.az, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.02333, i64 1
  %.sroa.0.0.copyload.1 = load i8, ptr %i.ba, align 1
  %i.bb = load ptr, ptr %i.f, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.134
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  store i8 %.sroa.0.0.copyload.1, ptr %i.bd, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %.02333, i64 2
  %.sroa.0.0.copyload.2 = load i8, ptr %i.be, align 1
  %i.bf = load ptr, ptr %i.f, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.134
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  store i8 %.sroa.0.0.copyload.2, ptr %i.bh, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %.02333, i64 3
  %.sroa.0.0.copyload.3 = load i8, ptr %i.bi, align 1
  %i.bj = add nuw i64 %.134, 4                    ; 3 uses
  %i.bk = load ptr, ptr %i.f, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.134
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  store i8 %.sroa.0.0.copyload.3, ptr %i.bm, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.02333, i64 4 ; 2 uses
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
  %i.bh = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol, %.lr.ph.i.preheader
  %.011.i.unr = phi ptr [ %i.aq, %.lr.ph.i.preheader ], [ %i.bh, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol ]
  %i.bi = icmp eq i64 %i.ax, 0
  br i1 %i.bi, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10TailCallOpEEEvRKT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1
  %.011.i = phi ptr [ %i.ca, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1 ], [ %.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.sroa.01.0.copyload.i = load i32, ptr %.011.i, align 4
  %i.bj = load ptr, ptr %i.f, align 8
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = zext i32 %.sroa.01.0.copyload.i to i64
  %i.bm = add i64 %i.bk, %i.bl
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.bp, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, label %bb.g, !prof !9

bb.g:                                             ; preds = %.lr.ph.i
  %i.bq = add nuw i8 %i.bp, 1
  store i8 %i.bq, ptr %i.bo, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i: ; preds = %bb.g, %.lr.ph.i
  %i.br = getelementptr inbounds nuw i8, ptr %.011.i, i64 4
  %.sroa.01.0.copyload.i.1 = load i32, ptr %i.br, align 4
  %i.bs = load ptr, ptr %i.f, align 8
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = zext i32 %.sroa.01.0.copyload.i.1 to i64
  %i.bv = add i64 %i.bt, %i.bu
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1             ; 2 uses
  %.not.i.i.1 = icmp eq i8 %i.by, -1
  br i1 %.not.i.i.1, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1, label %bb.h, !prof !9

bb.h:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %i.bz = add nuw i8 %i.by, 1
  store i8 %i.bz, ptr %i.bx, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1: ; preds = %bb.h, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %.not.i.1 = icmp eq ptr %i.ca, %i.aw
  br i1 %.not.i.1, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10TailCallOpEEEvRKT_.exit, label %.lr.ph.i

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10TailCallOpEEEvRKT_.exit: ; preds = %.lr.ph.i.prol.loopexit, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1, %_ZN2v88internal8compiler10turboshaft10TailCallOp3NewEPNS2_5GraphENS2_7OpIndexENS_4base6VectorIKS6_EEPKNS2_16TSCallDescriptorE.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 972
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.cb, align 4
  %i.cc = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 4 uses
  %i.cd = lshr i64 %i.i, 4
  %i.ce = and i64 %i.cd, 268435455                ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 216
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 208 ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8            ; 2 uses
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = ashr exact i64 %i.cl, 2
  %.not.i.i11 = icmp ugt i64 %i.cm, %i.ce
  br i1 %.not.i.i11, label %bb.j, label %bb.i, !prof !8

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10TailCallOpEEEvRKT_.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 200 ; 2 uses
  %i.co = lshr i64 %i.ce, 1
  %i.cp = add nuw nsw i64 %i.ce, 32
  %i.cq = add nuw nsw i64 %i.cp, %i.co
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.cn, i64 noundef %i.cq)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 224
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = load ptr, ptr %i.ch, align 8
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv
end_hunk_0
