inline.NumInlined: 39732
inline.NumDeleted: 11729
begin_hunk_0_@_ZN2v88internal6maglev18MaglevGraphBuilder26BuildLoadFixedArrayElementEPNS1_9ValueNodeEi:bb.a
  br i1 %or.cond81, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %6 = add nuw nsw i32 %2, 1
  %7 = and i32 %6, 536870911                      ; 2 uses
  %i.cp = load i32, ptr %i.cg, align 8
  %i.cq = icmp ult i32 %7, %i.cp
  br i1 %i.cq, label %_ZNK2v88internal6maglev13VirtualObject3getEj.exit40, label %bb.q, !prof !5
end_hunk_0
begin_hunk_1_@_ZN2v88internal6maglev18MaglevGraphBuilder41ReduceCallWithArrayLikeForArgumentsObjectEPNS1_9ValueNodeERNS1_13CallArgumentsEPNS1_13VirtualObjectERKNS0_8compiler14FeedbackSourceE:bb.a
  br label %bb.aj

.lr.ph100:                                        ; preds = %_ZNK2v88internal6maglev13VirtualObject3getEj.exit65, %_ZN2v84base11SmallVectorIPNS_8internal6maglev9ValueNodeELm8ESaIS5_EE9push_backES5_.exit80
  %.099 = phi i32 [ %16, %_ZN2v84base11SmallVectorIPNS_8internal6maglev9ValueNodeELm8ESaIS5_EE9push_backES5_.exit80 ], [ 0, %_ZNK2v88internal6maglev13VirtualObject3getEj.exit65 ]
  %16 = add nuw nsw i32 %.099, 1                  ; 3 uses
  %17 = and i32 %16, 536870911                    ; 2 uses
  %i.ho = load i32, ptr %i.fs, align 8
  %i.hp = icmp ult i32 %17, %i.ho
  br i1 %i.hp, label %_ZNK2v88internal6maglev13VirtualObject3getEj.exit78, label %bb.ah, !prof !5
end_hunk_1
begin_hunk_2_@_ZN2v88internal6maglev18MaglevGraphBuilder41ReduceCallWithArrayLikeForArgumentsObjectEPNS1_9ValueNodeERNS1_13CallArgumentsEPNS1_13VirtualObjectERKNS0_8compiler14FeedbackSourceE:bb.a
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store ptr %i.hy, ptr %i.fc, align 8
  store ptr %i.ht, ptr %i.hx, align 8
  %exitcond.not = icmp eq i32 %16, %i.fy
  br i1 %exitcond.not, label %._crit_edge101, label %.lr.ph100, !llvm.loop !220

bb.aj:                                            ; preds = %_ZN2v88internal6maglev13CallArgumentsC2ENS0_19ConvertReceiverModeEONS_4base11SmallVectorIPNS1_9ValueNodeELm8ESaIS7_EEENS2_4ModeE.exit, %_ZN2v88internal6maglev13CallArgumentsC2ENS0_19ConvertReceiverModeEONS_4base11SmallVectorIPNS1_9ValueNodeELm8ESaIS7_EEENS2_4ModeE.exit77, %_ZNK2v88internal6maglev13CallArguments8receiverEv.exit, %bb.i
end_hunk_2
begin_hunk_3_@_ZN2v88internal6maglev18MaglevGraphBuilder36TryBuildAndAllocateJSGeneratorObjectEPNS1_9ValueNodeES4_:bb.a
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.02349.epil.init = phi i32 [ 0, %.lr.ph ], [ %11, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod78 = trunc i32 %i.ax to i1
  call void @llvm.assume(i1 %lcmp.mod78)
  %9 = add nuw nsw i32 %.02349.epil.init, 1
  %10 = and i32 %9, 536870911                     ; 2 uses
  %i.by = load i32, ptr %i.bv, align 8
  %i.bz = icmp ult i32 %10, %i.by
  br i1 %i.bz, label %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit.epil, label %.loopexit79, !prof !5
end_hunk_3
begin_hunk_4_@_ZN2v88internal6maglev18MaglevGraphBuilder36TryBuildAndAllocateJSGeneratorObjectEPNS1_9ValueNodeES4_:bb.a
  br label %bb.l

bb.i:                                             ; preds = %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit.1, %.lr.ph.new
  %.02349 = phi i32 [ 0, %.lr.ph.new ], [ %11, %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit.1 ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit.1 ]
  %i.cr = and i32 %.02349, 536870910
  %i.cs = or disjoint i32 %i.cr, 1                ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN2v88internal6maglev18MaglevGraphBuilder36TryBuildAndAllocateJSGeneratorObjectEPNS1_9ValueNodeES4_:bb.a
  %i.cw = zext nneg i32 %i.cs to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cw
  store ptr %.0.i.i.i, ptr %i.cx, align 8
  %11 = add nuw nsw i32 %.02349, 2                ; 3 uses
  %12 = and i32 %11, 536870910                    ; 2 uses
  %i.cy = load i32, ptr %i.bv, align 8
  %i.cz = icmp ult i32 %12, %i.cy
  br i1 %i.cz, label %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit.1, label %.loopexit79, !prof !5
end_hunk_5
begin_hunk_6_@_ZN2v88internal6maglev18MaglevGraphBuilder36TryBuildAndAllocateJSGeneratorObjectEPNS1_9ValueNodeES4_:bb.a
  %i.db = zext nneg i32 %12 to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.db
  store ptr %.0.i.i.i, ptr %i.dc, align 8
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.i, !llvm.loop !228
end_hunk_6
begin_hunk_7_@_ZN2v88internal6maglev18MaglevGraphBuilder18BuildElementsArrayEi:bb.a
  br label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit.1, %.lr.ph.new
  %.026 = phi i32 [ 0, %.lr.ph.new ], [ %2, %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit.1 ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit.1 ]
  %i.bb = and i32 %.026, 536870910
  %i.bc = or disjoint i32 %i.bb, 1                ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN2v88internal6maglev18MaglevGraphBuilder18BuildElementsArrayEi:bb.a
  %i.bg = zext nneg i32 %i.bc to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bg
  store ptr %.0.i.i.i23, ptr %i.bh, align 8
  %2 = add nuw nsw i32 %.026, 2                   ; 3 uses
  %3 = and i32 %2, 536870910                      ; 2 uses
  %i.bi = load i32, ptr %i.ay, align 8
  %i.bj = icmp ult i32 %3, %i.bi
  br i1 %i.bj, label %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit.1, label %.loopexit33, !prof !5
end_hunk_8
begin_hunk_9_@_ZN2v88internal6maglev18MaglevGraphBuilder18BuildElementsArrayEi:bb.a
  %i.bl = zext nneg i32 %3 to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bl
  store ptr %.0.i.i.i23, ptr %i.bm, align 8
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.h, !llvm.loop !232
end_hunk_9
begin_hunk_10_@_ZN2v88internal6maglev18MaglevGraphBuilder18BuildElementsArrayEi:bb.a
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %.026.epil.init = phi i32 [ 0, %.lr.ph ], [ %2, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod32 = trunc i32 %1 to i1
  call void @llvm.assume(i1 %lcmp.mod32)
  %4 = add nuw nsw i32 %.026.epil.init, 1
  %5 = and i32 %4, 536870911                      ; 2 uses
  %i.bn = load i32, ptr %i.ay, align 8
  %i.bo = icmp ult i32 %5, %i.bn
  br i1 %i.bo, label %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit.epil, label %.loopexit33, !prof !5

_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit.epil: ; preds = %.epil.preheader
  %i.bp = load ptr, ptr %i.az, align 8
  %i.bq = zext nneg i32 %5 to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bq
  store ptr %.0.i.i.i23, ptr %i.br, align 8
  br label %.loopexit
end_hunk_10
begin_hunk_11_@_ZN2v88internal6maglev18MaglevGraphBuilder13CreateContextENS0_8compiler6MapRefEiNS3_12ScopeInfoRefEPNS1_9ValueNodeESt8optionalIS7_E:bb.a
  br i1 %i.ay, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g, %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit32
  %.135 = phi i32 [ %i.bm, %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit32 ], [ %.0, %bb.g ]
  %i.az = load ptr, ptr %i.k, align 8             ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
end_hunk_11
begin_hunk_12_@_ZN2v88internal6maglev18MaglevGraphBuilder13CreateContextENS0_8compiler6MapRefEiNS3_12ScopeInfoRefEPNS1_9ValueNodeESt8optionalIS7_E:bb.a
_ZN2v88internal6maglev18MaglevGraphBuilder15GetRootConstantENS0_9RootIndexE.exit: ; preds = %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.thread.i.i.i, %bb.h
  %.0.i.i.i31 = phi ptr [ %i.bj, %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.thread.i.i.i ], [ %i.bl, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bm = add nuw nsw i32 %.135, 1                ; 3 uses
  %6 = and i32 %i.bm, 536870911                   ; 2 uses
  %i.bn = load i32, ptr %i.ac, align 8
  %i.bo = icmp ult i32 %6, %i.bn
  br i1 %i.bo, label %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit32, label %bb.i, !prof !5

bb.i:                                             ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder15GetRootConstantENS0_9RootIndexE.exit
end_hunk_12
begin_hunk_13_@_ZN2v88internal6maglev18MaglevGraphBuilder13CreateContextENS0_8compiler6MapRefEiNS3_12ScopeInfoRefEPNS1_9ValueNodeESt8optionalIS7_E:bb.a

_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit32: ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder15GetRootConstantENS0_9RootIndexE.exit
  %i.bp = load ptr, ptr %i.ae, align 8
  %i.bq = zext nneg i32 %6 to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bq
  store ptr %.0.i.i.i31, ptr %i.br, align 8
  %exitcond.not = icmp eq i32 %i.bm, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !244

._crit_edge:                                      ; preds = %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit32, %bb.g
end_hunk_13
begin_hunk_14_@_ZN2v88internal6maglev18MaglevGraphBuilder29BuildInlinedArgumentsElementsEii:bb.a
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit.1, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit.1 ]
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %3 = trunc nuw nsw i64 %indvars.iv.next to i32
  %4 = and i32 %3, 536870911
  %i.ai = load i32, ptr %i.ad, align 8
  %i.aj = icmp ult i32 %4, %i.ai
  br i1 %i.aj, label %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit, label %.loopexit19, !prof !5

.loopexit19:                                      ; preds = %bb.g, %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit, %.epil.preheader
end_hunk_14
begin_hunk_15_@_ZN2v88internal6maglev18MaglevGraphBuilder29BuildInlinedArgumentsElementsEii:bb.a
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = load ptr, ptr %i.af, align 8
  %5 = and i64 %indvars.iv.next, 536870911
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %5
  store ptr %i.ap, ptr %i.ar, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 4 uses
  %i.as = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.at = and i32 %i.as, 536870910
  %i.au = load i32, ptr %i.ad, align 8
  %i.av = icmp ult i32 %i.at, %i.au
  br i1 %i.av, label %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit.1, label %.loopexit19, !prof !5

_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit.1: ; preds = %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit
end_hunk_15
begin_hunk_16_@_ZN2v88internal6maglev18MaglevGraphBuilder29BuildInlinedArgumentsElementsEii:bb.a
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = load ptr, ptr %i.af, align 8
  %6 = and i64 %indvars.iv.next.1, 536870910
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %6
  store ptr %i.bb, ptr %i.bd, align 8
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.g, !llvm.loop !248
end_hunk_16
begin_hunk_17_@_ZN2v88internal6maglev18MaglevGraphBuilder29BuildInlinedArgumentsElementsEii:bb.a
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod18 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod18)
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil.init, 1 ; 2 uses
  %7 = trunc nuw nsw i64 %indvars.iv.next.epil to i32
  %8 = and i32 %7, 536870911
  %i.be = load i32, ptr %i.ad, align 8
  %i.bf = icmp ult i32 %8, %i.be
  br i1 %i.bf, label %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit.epil, label %.loopexit19, !prof !5

_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit.epil: ; preds = %.epil.preheader
end_hunk_17
begin_hunk_18_@_ZN2v88internal6maglev18MaglevGraphBuilder29BuildInlinedArgumentsElementsEii:bb.a
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = load ptr, ptr %i.af, align 8
  %9 = and i64 %indvars.iv.next.epil, 536870911
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %9
  store ptr %i.bl, ptr %i.bn, align 8
  br label %.loopexit

end_hunk_18
begin_hunk_19_@_ZN2v88internal6maglev18MaglevGraphBuilder37BuildInlinedUnmappedArgumentsElementsEi:bb.a
  br label %bb.g

.preheader:                                       ; preds = %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit, %_ZN2v88internal8compiler12JSHeapBroker15fixed_array_mapEv.exit
  %.0.lcssa = phi i32 [ 0, %_ZN2v88internal8compiler12JSHeapBroker15fixed_array_mapEv.exit ], [ %1, %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit ] ; 2 uses
  %i.ap = icmp slt i32 %.0.lcssa, %i.l
  br i1 %i.ap, label %.lr.ph35, label %.loopexit

end_hunk_19
begin_hunk_20_@_ZN2v88internal6maglev18MaglevGraphBuilder37BuildInlinedUnmappedArgumentsElementsEi:bb.a
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph35
  %indvars.iv.next.prol = add nuw nsw i64 %i.as, 1 ; 4 uses
  %2 = trunc nuw i64 %indvars.iv.next.prol to i32
  %3 = and i32 %2, 536870911
  %i.av = load i32, ptr %i.aq, align 8
  %i.aw = icmp ult i32 %3, %i.av
  br i1 %i.aw, label %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit31.prol, label %.loopexit45, !prof !5
end_hunk_20
begin_hunk_21_@_ZN2v88internal6maglev18MaglevGraphBuilder37BuildInlinedUnmappedArgumentsElementsEi:bb.a
_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit31.prol: ; preds = %.prol.preheader
  %i.ax = load ptr, ptr %i.g, align 8
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next.prol
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = load ptr, ptr %i.ar, align 8
  %4 = and i64 %indvars.iv.next.prol, 536870911
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %4
  store ptr %i.ba, ptr %i.bc, align 8
  br label %.prol.loopexit
end_hunk_21
begin_hunk_22_@_ZN2v88internal6maglev18MaglevGraphBuilder37BuildInlinedUnmappedArgumentsElementsEi:bb.a
  br i1 %i.bd, label %.loopexit, label %.lr.ph35.new

bb.g:                                             ; preds = %.lr.ph, %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit
  %.033 = phi i32 [ 0, %.lr.ph ], [ %i.bv, %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit ]
  %i.be = load ptr, ptr %i.am, align 8            ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
end_hunk_22
begin_hunk_23_@_ZN2v88internal6maglev18MaglevGraphBuilder37BuildInlinedUnmappedArgumentsElementsEi:bb.a
_ZN2v88internal6maglev18MaglevGraphBuilder15GetRootConstantENS0_9RootIndexE.exit30: ; preds = %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.thread.i.i.i29, %bb.h
  %.0.i.i.i28 = phi ptr [ %i.bs, %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.thread.i.i.i29 ], [ %i.bu, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bv = add nuw nsw i32 %.033, 1                ; 3 uses
  %5 = and i32 %i.bv, 536870911                   ; 2 uses
  %i.bw = load i32, ptr %i.an, align 8
  %i.bx = icmp ult i32 %5, %i.bw
  br i1 %i.bx, label %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit, label %bb.i, !prof !5

bb.i:                                             ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder15GetRootConstantENS0_9RootIndexE.exit30
end_hunk_23
begin_hunk_24_@_ZN2v88internal6maglev18MaglevGraphBuilder37BuildInlinedUnmappedArgumentsElementsEi:bb.a

_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit: ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder15GetRootConstantENS0_9RootIndexE.exit30
  %i.by = load ptr, ptr %i.ao, align 8
  %i.bz = zext nneg i32 %5 to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bz
  store ptr %.0.i.i.i28, ptr %i.ca, align 8
  %exitcond.not = icmp eq i32 %i.bv, %1
  br i1 %exitcond.not, label %.preheader, label %bb.g, !llvm.loop !249

.lr.ph35.new:                                     ; preds = %.prol.loopexit, %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit31.1
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit31.1 ], [ %indvars.iv.unr, %.prol.loopexit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %6 = trunc nuw i64 %indvars.iv.next to i32
  %7 = and i32 %6, 536870911
  %i.cb = load i32, ptr %i.aq, align 8
  %i.cc = icmp ult i32 %7, %i.cb
  br i1 %i.cc, label %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit31, label %.loopexit45, !prof !5

.loopexit45:                                      ; preds = %.lr.ph35.new, %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit31, %.prol.preheader
end_hunk_24
begin_hunk_25_@_ZN2v88internal6maglev18MaglevGraphBuilder37BuildInlinedUnmappedArgumentsElementsEi:bb.a
_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit31: ; preds = %.lr.ph35.new
  %i.cd = load ptr, ptr %i.g, align 8
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = load ptr, ptr %i.ar, align 8
  %8 = and i64 %indvars.iv.next, 536870911
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %8
  store ptr %i.cg, ptr %i.ci, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 5 uses
  %9 = trunc nuw i64 %indvars.iv.next.1 to i32
  %10 = and i32 %9, 536870911
  %i.cj = load i32, ptr %i.aq, align 8
  %i.ck = icmp ult i32 %10, %i.cj
  br i1 %i.ck, label %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit31.1, label %.loopexit45, !prof !5

_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit31.1: ; preds = %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit31
  %i.cl = load ptr, ptr %i.g, align 8
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.next.1
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = load ptr, ptr %i.ar, align 8
  %11 = and i64 %indvars.iv.next.1, 536870911
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %11
  store ptr %i.co, ptr %i.cq, align 8
  %exitcond37.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond37.not.1, label %.loopexit, label %.lr.ph35.new, !llvm.loop !250
end_hunk_25
begin_hunk_26_@_ZN2v88internal6maglev18MaglevGraphBuilder27BuildVirtualArgumentsObjectILNS0_19CreateArgumentsTypeE0EEEPNS1_13VirtualObjectEv:bb.a
bb.w:                                             ; preds = %.lr.ph, %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit
  %i.fv = phi i32 [ %i.ea, %.lr.ph ], [ %i.gu, %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit ] ; 4 uses
  %.034123 = phi i32 [ 0, %.lr.ph ], [ %i.gt, %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit ] ; 2 uses
  %i.fw = load ptr, ptr %i.et, align 8            ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
end_hunk_26
begin_hunk_27_@_ZN2v88internal6maglev18MaglevGraphBuilder27BuildVirtualArgumentsObjectILNS0_19CreateArgumentsTypeE0EEEPNS1_13VirtualObjectEv:bb.a
_ZN2v88internal6maglev18MaglevGraphBuilder16GetInt32ConstantEi.exit68: ; preds = %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.thread.i.i.i67, %bb.x
  %.0.i.i.i66 = phi ptr [ %i.gk, %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.thread.i.i.i67 ], [ %i.gm, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.gn = add nuw nsw i32 %.034123, 3
  %7 = and i32 %i.gn, 536870911                   ; 2 uses
  %i.go = load i32, ptr %i.eu, align 8
  %i.gp = icmp ult i32 %7, %i.go
  br i1 %i.gp, label %_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit, label %bb.y, !prof !5

bb.y:                                             ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder16GetInt32ConstantEi.exit68
end_hunk_27
begin_hunk_28_@_ZN2v88internal6maglev18MaglevGraphBuilder27BuildVirtualArgumentsObjectILNS0_19CreateArgumentsTypeE0EEEPNS1_13VirtualObjectEv:bb.a

_ZN2v88internal6maglev13VirtualObject3setEjPNS1_9ValueNodeE.exit: ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder16GetInt32ConstantEi.exit68
  %i.gq = load ptr, ptr %i.ev, align 8
  %i.gr = zext nneg i32 %7 to i64
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.gr
  store ptr %.0.i.i.i66, ptr %i.gs, align 8
  %i.gt = add nuw nsw i32 %.034123, 1             ; 2 uses
end_hunk_28
