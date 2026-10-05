Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonLiveVariables?download=true
inline.NumInlined: 1794
inline.NumDeleted: 763
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK4llvm20HexagonLiveVariables16getAnalysisUsageERNS_13AnalysisUsageE:bb.a
  %.1.i.i.i.i.i.i = phi ptr [ %i.ab, %bb.h ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.ac = load ptr, ptr %.1.i.i.i.i.i.i, align 8, !tbaa !32
  %i.ad = icmp eq ptr %i.ac, @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE
  br i1 %i.ad, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i.i.i:             ; preds = %bb.i, %._crit_edge.i.i.i.i.i.i
  %.2.i.i.i.i.i.i = phi ptr [ %i.ae, %bb.i ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.af = load ptr, ptr %.2.i.i.i.i.i.i, align 8, !tbaa !32
  %i.ag = icmp eq ptr %i.af, @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE
  br i1 %i.ag, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit: ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 8
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit55: ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 16
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit57: ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 24
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i: ; preds = %bb.b, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit55, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit57, %._crit_edge._crit_edge52.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i, %bb.g
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i.i, %bb.g ], [ %.2.i.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i.i ], [ %i.aj, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit57 ], [ %i.ai, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit55 ], [ %i.ah, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i.i, %bb.b ]
  %.not.i.i = icmp eq ptr %.028.i.i.i.i.i.i, %i.h
  br i1 %.not.i.i, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i, label %_ZN4llvm13AnalysisUsage12addPreservedINS_31MachineDominatorTreeWrapperPassEEERS0_v.exit

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i, %._crit_edge._crit_edge52.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !61
  %.not.i2.i.i = icmp ult i32 %i.f, %i.al
  br i1 %.not.i2.i.i, label %bb.k, label %bb.j, !prof !65

bb.j:                                             ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE)
  %.pre = load i32, ptr %i.e, align 8, !tbaa !63
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_31MachineDominatorTreeWrapperPassEEERS0_v.exit

bb.k:                                             ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.g
  store ptr @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE, ptr %i.am, align 1
  %i.an = load i32, ptr %i.e, align 8, !tbaa !63
  %i.ao = add i32 %i.an, 1                        ; 2 uses
  store i32 %i.ao, ptr %i.e, align 8, !tbaa !63
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_31MachineDominatorTreeWrapperPassEEERS0_v.exit

_ZN4llvm13AnalysisUsage12addPreservedINS_31MachineDominatorTreeWrapperPassEEERS0_v.exit: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i, %bb.j, %bb.k
  %i.ap = phi i32 [ %i.f, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i ], [ %.pre, %bb.j ], [ %i.ao, %bb.k ] ; 4 uses
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !60  ; 5 uses
  %i.ar = zext i32 %i.ap to i64                   ; 3 uses
  %.idx4.i.i.i8 = shl nuw nsw i64 %i.ar, 3        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx4.i.i.i8
  %i.at = lshr i64 %i.ar, 2                       ; 2 uses
  %.not.i.i.i9 = icmp eq i64 %i.at, 0
  br i1 %.not.i.i.i9, label %._crit_edge.i.i.i.i.i.i15, label %.lr.ph.i.i.i.i.i.i10

.lr.ph.i.i.i.i.i.i10:                             ; preds = %_ZN4llvm13AnalysisUsage12addPreservedINS_31MachineDominatorTreeWrapperPassEEERS0_v.exit
  %i.au = and i64 %.idx4.i.i.i8, 34359738336
  %scevgep.i.i.i.i.i.i11 = getelementptr i8, ptr %i.aq, i64 %i.au
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.lr.ph.i.i.i.i.i.i10
  %.047.i.i.i.i.i.i12 = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i.i10 ], [ %i.bh, %bb.p ] ; 2 uses
  %.02946.i.i.i.i.i.i13 = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i10 ], [ %i.bg, %bb.p ] ; 9 uses
  %i.av = load ptr, ptr %.02946.i.i.i.i.i.i13, align 8, !tbaa !32
  %i.aw = icmp eq ptr %i.av, @_ZN4llvm35MachinePostDominatorTreeWrapperPass2IDE
  br i1 %i.aw, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i13, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !32
  %i.az = icmp eq ptr %i.ay, @_ZN4llvm35MachinePostDominatorTreeWrapperPass2IDE
  br i1 %i.az, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22.loopexit.split.loop.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i13, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !32
  %i.bc = icmp eq ptr %i.bb, @_ZN4llvm35MachinePostDominatorTreeWrapperPass2IDE
  br i1 %i.bc, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22.loopexit.split.loop.exit63, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i13, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bf = icmp eq ptr %i.be, @_ZN4llvm35MachinePostDominatorTreeWrapperPass2IDE
  br i1 %i.bf, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22.loopexit.split.loop.exit65, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i13, i64 32
  %i.bh = add nsw i64 %.047.i.i.i.i.i.i12, -1
  %i.bi = icmp sgt i64 %.047.i.i.i.i.i.i12, 1
  br i1 %i.bi, label %bb.l, label %._crit_edge.loopexit.i.i.i.i.i.i14, !llvm.loop !353

._crit_edge.loopexit.i.i.i.i.i.i14:               ; preds = %bb.p
  %i.bj = and i32 %i.ap, 3
  br label %._crit_edge.i.i.i.i.i.i15

._crit_edge.i.i.i.i.i.i15:                        ; preds = %._crit_edge.loopexit.i.i.i.i.i.i14, %_ZN4llvm13AnalysisUsage12addPreservedINS_31MachineDominatorTreeWrapperPassEEERS0_v.exit
  %.pre-phi56.i.i.i.i.i.i16 = phi i32 [ %i.bj, %._crit_edge.loopexit.i.i.i.i.i.i14 ], [ %i.ap, %_ZN4llvm13AnalysisUsage12addPreservedINS_31MachineDominatorTreeWrapperPassEEERS0_v.exit ]
  %.029.lcssa.i.i.i.i.i.i17 = phi ptr [ %scevgep.i.i.i.i.i.i11, %._crit_edge.loopexit.i.i.i.i.i.i14 ], [ %i.aq, %_ZN4llvm13AnalysisUsage12addPreservedINS_31MachineDominatorTreeWrapperPassEEERS0_v.exit ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i.i.i16, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i20 [
    i32 3, label %bb.q
    i32 2, label %._crit_edge._crit_edge.i.i.i.i.i.i25
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i.i.i18
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i.i.i.i15
  %i.bk = load ptr, ptr %.029.lcssa.i.i.i.i.i.i17, align 8, !tbaa !32
  %i.bl = icmp eq ptr %i.bk, @_ZN4llvm35MachinePostDominatorTreeWrapperPass2IDE
  br i1 %i.bl, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i17, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i.i25

._crit_edge._crit_edge.i.i.i.i.i.i25:             ; preds = %bb.r, %._crit_edge.i.i.i.i.i.i15
  %.1.i.i.i.i.i.i26 = phi ptr [ %i.bm, %bb.r ], [ %.029.lcssa.i.i.i.i.i.i17, %._crit_edge.i.i.i.i.i.i15 ] ; 3 uses
  %i.bn = load ptr, ptr %.1.i.i.i.i.i.i26, align 8, !tbaa !32
  %i.bo = icmp eq ptr %i.bn, @_ZN4llvm35MachinePostDominatorTreeWrapperPass2IDE
  br i1 %i.bo, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22, label %bb.s

bb.s:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i25
  %i.bp = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i26, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i18

._crit_edge._crit_edge52.i.i.i.i.i.i18:           ; preds = %bb.s, %._crit_edge.i.i.i.i.i.i15
  %.2.i.i.i.i.i.i19 = phi ptr [ %i.bp, %bb.s ], [ %.029.lcssa.i.i.i.i.i.i17, %._crit_edge.i.i.i.i.i.i15 ] ; 2 uses
  %i.bq = load ptr, ptr %.2.i.i.i.i.i.i19, align 8, !tbaa !32
  %i.br = icmp eq ptr %i.bq, @_ZN4llvm35MachinePostDominatorTreeWrapperPass2IDE
  br i1 %i.br, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i20

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22.loopexit.split.loop.exit: ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i13, i64 8
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22.loopexit.split.loop.exit63: ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i13, i64 16
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22.loopexit.split.loop.exit65: ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i13, i64 24
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22: ; preds = %bb.l, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22.loopexit.split.loop.exit63, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22.loopexit.split.loop.exit65, %._crit_edge._crit_edge52.i.i.i.i.i.i18, %._crit_edge._crit_edge.i.i.i.i.i.i25, %bb.q
  %.028.i.i.i.i.i.i23 = phi ptr [ %.1.i.i.i.i.i.i26, %._crit_edge._crit_edge.i.i.i.i.i.i25 ], [ %.029.lcssa.i.i.i.i.i.i17, %bb.q ], [ %.2.i.i.i.i.i.i19, %._crit_edge._crit_edge52.i.i.i.i.i.i18 ], [ %i.bu, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22.loopexit.split.loop.exit65 ], [ %i.bt, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22.loopexit.split.loop.exit63 ], [ %i.bs, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i.i13, %bb.l ]
  %.not.i.i24 = icmp eq ptr %.028.i.i.i.i.i.i23, %i.as
  br i1 %.not.i.i24, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i20, label %_ZN4llvm13AnalysisUsage12addPreservedINS_35MachinePostDominatorTreeWrapperPassEEERS0_v.exit

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i20: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22, %._crit_edge._crit_edge52.i.i.i.i.i.i18, %._crit_edge.i.i.i.i.i.i15
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !61
  %.not.i2.i.i21 = icmp ult i32 %i.ap, %i.bw
  br i1 %.not.i2.i.i21, label %bb.u, label %bb.t, !prof !65

bb.t:                                             ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i20
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @_ZN4llvm35MachinePostDominatorTreeWrapperPass2IDE)
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_35MachinePostDominatorTreeWrapperPassEEERS0_v.exit

bb.u:                                             ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i20
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ar
  store ptr @_ZN4llvm35MachinePostDominatorTreeWrapperPass2IDE, ptr %i.bx, align 1
  %i.by = load i32, ptr %i.e, align 8, !tbaa !63
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr %i.e, align 8, !tbaa !63
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_35MachinePostDominatorTreeWrapperPassEEERS0_v.exit

_ZN4llvm13AnalysisUsage12addPreservedINS_35MachinePostDominatorTreeWrapperPassEEERS0_v.exit: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22, %bb.t, %bb.u
  %i.ca = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage12addPreservedENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr nonnull @.str, i64 7) #17 ; 0 uses
  tail call void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) #17
  ret void
}

declare void @_ZN4llvm13AnalysisUsage15setPreservesCFGEv(ptr noundef nonnull align 8 dereferenceable(161)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage12addPreservedENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(161), ptr, i64) local_unnamed_addr #2

declare void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(161)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm20HexagonLiveVariables11recalculateERNS_15MachineFunctionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i8, ptr %i.a, align 8, !tbaa !58, !range !66, !noundef !67
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !69   ; 3 uses
  %.not1114.i.i.i = icmp ne ptr %i.f, %i.h
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !72   ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.i, @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE
  br i1 %.not.i3.i.i, label %.lr.ph.i.i.i6.preheader, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i ], [ %i.f, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 3 uses
  %.not11.i.i.i = icmp ne ptr %i.j, %i.h
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !72
  %.not.i.i.i = icmp eq ptr %i.k, @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i
  %.not.i3.i.i5 = icmp eq ptr %i.i, @_ZN4llvm35MachinePostDominatorTreeWrapperPass2IDE
  br i1 %.not.i3.i.i5, label %_ZNK4llvm4Pass11getAnalysisINS_35MachinePostDominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i6.preheader

.lr.ph.i.i.i6.preheader:                          ; preds = %bb.b, %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit
  br label %.lr.ph.i.i.i6

.lr.ph.i.i.i6:                                    ; preds = %.lr.ph.i.i.i6.preheader, %.lr.ph.i.i.i6
  %.sroa.08.015.i4.i.i7 = phi ptr [ %i.l, %.lr.ph.i.i.i6 ], [ %i.f, %.lr.ph.i.i.i6.preheader ]
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i7, i64 16 ; 3 uses
  %.not11.i.i.i8 = icmp ne ptr %i.l, %i.h
  tail call void @llvm.assume(i1 %.not11.i.i.i8)
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !72
  %.not.i.i.i9 = icmp eq ptr %i.m, @_ZN4llvm35MachinePostDominatorTreeWrapperPass2IDE
  br i1 %.not.i.i.i9, label %_ZNK4llvm4Pass11getAnalysisINS_35MachinePostDominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i6

_ZNK4llvm4Pass11getAnalysisINS_35MachinePostDominatorTreeWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i6, %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !62
  %i.p = tail call noundef zeroext i1 @_ZN24HexagonLiveVariablesImpl20runOnMachineFunctionERN4llvm15MachineFunctionERNS0_20MachineDominatorTreeERNS0_24MachinePostDominatorTreeE(ptr noundef nonnull align 8 dereferenceable(312) %i.o, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr nonnull align 8 poison, ptr nonnull align 8 poison) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZNK4llvm4Pass11getAnalysisINS_35MachinePostDominatorTreeWrapperPassEEERT_v.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN24HexagonLiveVariablesImpl20runOnMachineFunctionERN4llvm15MachineFunctionERNS0_20MachineDominatorTreeERNS0_24MachinePostDominatorTreeE(ptr noundef nonnull align 8 dereferenceable(312) initializes((0, 36)) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4llvm15MachineFunction14RenumberBlocksEPNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef null) #17
  store ptr %1, ptr %0, align 8, !tbaa !355
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !356
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !204
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !205, !nonnull !67, !align !206 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(519600) %i.e) #17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !207
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(519600) %i.e) #17
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.n, ptr %i.o, align 8, !tbaa !208
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !207
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !223
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store i32 %i.r, ptr %i.s, align 8, !tbaa !224
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockESt4pairINS_9BitVectorES5_ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E5clearEv(ptr noundef nonnull align 1 dereferenceable(1) %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrESt4pairINS_9BitVectorES6_ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E5clearEv(ptr noundef nonnull align 1 dereferenceable(1) %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !225  ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = shl i32 %i.x, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !226 ; 4 uses
  %i.ac = icmp ult i32 %i.z, %i.ab
  br i1 %i.ac, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ad = icmp ugt i32 %i.ab, 64
  br i1 %i.ad, label %bb.d, label %.lr.ph7.preheader.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %i.v)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E5clearEv.exit

bb.e:                                             ; preds = %bb.b
  %i.ae = icmp eq i32 %i.ab, 0
  br i1 %i.ae, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit.i, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.e, %bb.c
  %i.af = load ptr, ptr %i.v, align 8, !tbaa !227
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !228
  %i.ai = zext i32 %i.ab to i64
  %i.aj = add nuw nsw i64 %i.ai, 31
  %i.ak = lshr i64 %i.aj, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i.i
  %i.am = load i32, ptr %i.al, align 4, !tbaa !229 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.am, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.an = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.am, %.lr.ph.i.i ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ao = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.ap = or disjoint i32 %i.ao, %i.an
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [80 x i8], ptr %i.af, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !60 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef %i.at) #17
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.g, %bb.f
  %i.aw = add i32 %.0.i3.i.i, -1
  %i.ax = and i32 %i.aw, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.f, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.ak
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit.loopexit.i, label %.lr.ph7.i.i, !llvm.loop !1

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit.loopexit.i: ; preds = %._crit_edge.i.i
  %.pre.i = load i32, ptr %i.aa, align 4, !tbaa !226
  %i.ay = zext i32 %.pre.i to i64
  %i.az = add nuw nsw i64 %i.ay, 31
  %i.ba = lshr i64 %i.az, 3
  %i.bb = and i64 %i.ba, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit.loopexit.i, %bb.e
  %i.bc = phi i64 [ %i.bb, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit.loopexit.i ], [ 0, %bb.e ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !228
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.be, i8 0, i64 %i.bc, i1 false)
  store i32 0, ptr %i.w, align 8, !tbaa !225
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E5clearEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E5clearEv.exit: ; preds = %bb.a, %bb.d, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bg = load i32, ptr %i.s, align 8, !tbaa !224 ; 7 uses
  %i.bh = zext i32 %i.bg to i64                   ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !63 ; 3 uses
  %i.bk = icmp eq i32 %i.bg, %i.bj
  br i1 %i.bk, label %_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEE6resizeEm.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E5clearEv.exit
  %i.bl = icmp ult i32 %i.bg, %i.bj
  br i1 %i.bl, label %.sink.split.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !61
  %i.bo = icmp ugt i32 %i.bg, %i.bn
  br i1 %i.bo, label %bb.j, label %_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEE7reserveEm.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull %i.bp, i64 noundef %i.bh, i64 noundef 8) #17
  %.pre.i.i = load i32, ptr %i.bi, align 8, !tbaa !63
  br label %_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEE7reserveEm.exit.i.i: ; preds = %bb.j, %bb.i
  %.pre-phi.i.i.in = phi i32 [ %i.bj, %bb.i ], [ %.pre.i.i, %bb.j ] ; 2 uses
  %.not11.i.i = icmp eq i32 %i.bg, %.pre-phi.i.i.in
  br i1 %.not11.i.i, label %.sink.split.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEE7reserveEm.exit.i.i
  %.pre-phi.i.i = zext i32 %.pre-phi.i.i.in to i64 ; 2 uses
  %i.bq = load ptr, ptr %i.bf, align 8, !tbaa !60
  %i.br = getelementptr [8 x i8], ptr %i.bq, i64 %.pre-phi.i.i
  %i.bs = sub nsw i64 %i.bh, %.pre-phi.i.i
  %i.bt = shl nsw i64 %i.bs, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.br, i8 0, i64 %i.bt, i1 false), !tbaa !231
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.lr.ph.preheader.i.i, %_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEE7reserveEm.exit.i.i, %bb.h
  store i32 %i.bg, ptr %i.bi, align 8, !tbaa !63
  %.pre = load i32, ptr %i.s, align 8, !tbaa !224 ; 2 uses
  %.pre24 = zext i32 %.pre to i64
  br label %_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEE6resizeEm.exit

_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEE6resizeEm.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E5clearEv.exit, %.sink.split.i.i
  %.pre-phi = phi i64 [ %i.bh, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E5clearEv.exit ], [ %.pre24, %.sink.split.i.i ] ; 2 uses
  %i.bu = phi i32 [ %i.bg, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E5clearEv.exit ], [ %.pre, %.sink.split.i.i ] ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !63 ; 3 uses
  %i.by = icmp eq i32 %i.bu, %i.bx
  br i1 %i.by, label %_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEE6resizeEm.exit17, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEE6resizeEm.exit
  %i.bz = icmp ult i32 %i.bu, %i.bx
  br i1 %i.bz, label %.sink.split.i.i14, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !61
  %i.cc = icmp ugt i32 %i.bu, %i.cb
end_hunk_0
begin_hunk_1_@_ZN24HexagonLiveVariablesImpl17incrementalUpdateEN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEPNS0_17MachineBasicBlockES8_:bb.a
  br i1 %i.cf, label %bb.j, label %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #18
  unreachable

_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.i
  %i.cg = ashr exact i64 %i.ce, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cg, i64 1)
  %i.ch = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.cg ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.cg
  %i.cj = tail call i64 @llvm.umin.i64(i64 %i.ch, i64 576460752303423487)
  %i.ck = select i1 %i.ci, i64 576460752303423487, i64 %i.cj ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ck, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.cl = shl nuw nsw i64 %i.ck, 4
  %i.cm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #19 ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ce ; 2 uses
  store i32 %.053, ptr %i.cn, align 8, !tbaa !229
  %.sroa.57.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 -1, ptr %.sroa.57.0..sroa_idx8.i, align 8, !tbaa !37
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.cb, %i.by
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cm, %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cb, %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !283, !alias.scope !389
  %i.co = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.co, %i.by
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !12

_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cm, %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.cp, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  %i.cr = load ptr, ptr %i.bx, align 8, !tbaa !281
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = sub i64 %i.cs, %i.cd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.ct) #20
  br label %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  store ptr %i.cm, ptr %i.a, align 8, !tbaa !282
  store ptr %i.cq, ptr %i.b, align 8, !tbaa !280
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %i.ck ; 2 uses
  store ptr %i.cu, ptr %i.bx, align 8, !tbaa !281
  br label %_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit

_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit: ; preds = %bb.h, %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i
  %i.cv = phi ptr [ %i.by, %bb.h ], [ %i.cu, %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ]
  %i.cw = phi ptr [ %i.ca, %bb.h ], [ %i.cq, %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ]
  %i.cx = add nuw i32 %.053, 1                    ; 3 uses
  %i.cy = load i32, ptr %i.az, align 8, !tbaa !241 ; 2 uses
  %i.cz = icmp eq i32 %i.cx, %i.cy
  br i1 %i.cz, label %._crit_edge55, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit
  %i.da = lshr i32 %i.cx, 6                       ; 4 uses
  %i.db = add i32 %i.cy, -1                       ; 2 uses
  %i.dc = lshr i32 %i.db, 6                       ; 4 uses
  %.not42.i.i = icmp samesign ugt i32 %i.da, %i.dc
  br i1 %.not42.i.i, label %._crit_edge55, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l
  %i.dd = load ptr, ptr %i.ay, align 8, !tbaa !60 ; 2 uses
  %i.de = and i32 %i.cx, 63                       ; 2 uses
  %i.df = sub nuw nsw i32 64, %i.de
  %.not.i = icmp eq i32 %i.de, 0
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = lshr i64 -1, %i.dg
  %i.di = xor i64 %i.dh, -1
  %i.dj = and i32 %i.db, 63
  %i.dk = xor i32 %i.dj, 63
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = lshr i64 -1, %i.dl                      ; 2 uses
  %i.dn = zext nneg i32 %i.da to i64              ; 2 uses
  %i.do = zext nneg i32 %i.dc to i64
  %i.dp = add nuw nsw i32 %i.dc, 1
  %wide.trip.count.i.i17 = zext nneg i32 %i.dp to i64 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.dn
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !37
  %i.ds = select i1 %.not.i, i64 -1, i64 %i.di
  %i.dt = icmp eq i32 %i.da, %i.dc
  %i.du = select i1 %i.dt, i64 %i.dm, i64 -1
  %spec.select44.peel.i.i = and i64 %i.du, %i.ds
  %.230.peel.i.i18 = and i64 %spec.select44.peel.i.i, %i.dr ; 2 uses
  %.not37.peel.i.i19 = icmp eq i64 %.230.peel.i.i18, 0
  br i1 %.not37.peel.i.i19, label %bb.m, label %_ZNK4llvm9BitVector9find_nextEj.exit

bb.m:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.peel.i.i = add nuw nsw i64 %i.dn, 1 ; 2 uses
  %exitcond.peel.not.i.i = icmp eq i64 %indvars.iv.next.peel.i.i, %wide.trip.count.i.i17
  br i1 %exitcond.peel.not.i.i, label %._crit_edge55, label %.peel.next.i.i23

.peel.next.i.i23:                                 ; preds = %bb.m, %bb.n
  %indvars.iv.i.i24 = phi i64 [ %indvars.iv.next.i.i29, %bb.n ], [ %indvars.iv.next.peel.i.i, %bb.m ] ; 4 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.i.i24
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !37
  %i.dx = icmp eq i64 %indvars.iv.i.i24, %i.do
  %i.dy = select i1 %i.dx, i64 %i.dm, i64 -1
  %.230.i.i25 = and i64 %i.dy, %i.dw              ; 2 uses
  %.not37.i.i26 = icmp eq i64 %.230.i.i25, 0
  br i1 %.not37.i.i26, label %bb.n, label %.loopexit48.i.i27

.loopexit48.i.i27:                                ; preds = %.peel.next.i.i23
  %.pre.i.i28 = trunc nuw nsw i64 %indvars.iv.i.i24 to i32
  br label %_ZNK4llvm9BitVector9find_nextEj.exit

bb.n:                                             ; preds = %.peel.next.i.i23
  %indvars.iv.next.i.i29 = add nuw nsw i64 %indvars.iv.i.i24, 1 ; 2 uses
  %exitcond.not.i.i30 = icmp eq i64 %indvars.iv.next.i.i29, %wide.trip.count.i.i17
  br i1 %exitcond.not.i.i30, label %._crit_edge55, label %.peel.next.i.i23, !llvm.loop !11

_ZNK4llvm9BitVector9find_nextEj.exit:             ; preds = %.lr.ph.i.i, %.loopexit48.i.i27
  %.pre-phi.i.i20 = phi i32 [ %.pre.i.i28, %.loopexit48.i.i27 ], [ %i.da, %.lr.ph.i.i ]
  %.230.lcssa.i.i21 = phi i64 [ %.230.i.i25, %.loopexit48.i.i27 ], [ %.230.peel.i.i18, %.lr.ph.i.i ]
  %i.dz = shl nuw i32 %.pre-phi.i.i20, 6          ; 2 uses
  %i.ea = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.230.lcssa.i.i21, i1 true)
  %i.eb = trunc nuw nsw i64 %i.ea to i32
  %i.ec = or disjoint i32 %i.dz, %i.eb
  %i.ed = icmp sgt i32 %i.dz, -1
  br i1 %i.ed, label %bb.g, label %._crit_edge55, !llvm.loop !386

._crit_edge55:                                    ; preds = %bb.f, %bb.m, %bb.l, %_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit, %_ZNK4llvm9BitVector9find_nextEj.exit, %bb.n, %bb.e, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrESt4pairINS_9BitVectorES6_ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findES4_.exit, %_ZNK4llvm9BitVector10find_firstEv.exit
  ret i1 true
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm20HexagonLiveVariables9addNewMBBEPNS_17MachineBasicBlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 3 uses
  tail call void @_ZN24HexagonLiveVariablesImpl15constructUseDefEPN4llvm17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(312) %i.b, ptr noundef %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !321
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  tail call fastcc void @_ZL14gatherBlocksDFRN4llvm15MachineFunctionEPNS_15SmallVectorImplIPNS_17MachineBasicBlockEEE(ptr noundef nonnull align 8 dereferenceable(1065) %i.d, ptr noundef %i.e)
  %i.f = tail call noundef zeroext i1 @_ZN24HexagonLiveVariablesImpl20updateGlobalLivenessEPN4llvm17MachineBasicBlockES2_(ptr noundef nonnull align 8 dereferenceable(312) %i.b, ptr noundef nonnull %1, ptr noundef nonnull %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN24HexagonLiveVariablesImpl9addNewMBBEPN4llvm17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN24HexagonLiveVariablesImpl15constructUseDefEPN4llvm17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !321
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call fastcc void @_ZL14gatherBlocksDFRN4llvm15MachineFunctionEPNS_15SmallVectorImplIPNS_17MachineBasicBlockEEE(ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef %i.c)
  %i.d = tail call noundef zeroext i1 @_ZN24HexagonLiveVariablesImpl20updateGlobalLivenessEPN4llvm17MachineBasicBlockES2_(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull %1, ptr noundef nonnull %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm20HexagonLiveVariables8addNewMIEPNS_12MachineInstrEPNS_17MachineBasicBlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  tail call void @_ZN24HexagonLiveVariablesImpl15constructUseDefEPN4llvm17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(312) %i.b, ptr noundef %2)
  %i.c = tail call noundef zeroext i1 @_ZN24HexagonLiveVariablesImpl20updateGlobalLivenessEPN4llvm17MachineBasicBlockES2_(ptr noundef nonnull align 8 dereferenceable(312) %i.b, ptr noundef %2, ptr noundef %2) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN24HexagonLiveVariablesImpl8addNewMIEPN4llvm12MachineInstrEPNS0_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN24HexagonLiveVariablesImpl15constructUseDefEPN4llvm17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef %2)
  %i.a = tail call noundef zeroext i1 @_ZN24HexagonLiveVariablesImpl20updateGlobalLivenessEPN4llvm17MachineBasicBlockES2_(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef %2, ptr noundef %2) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm20HexagonLiveVariables15constructUseDefEPNS_17MachineBasicBlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62
  tail call void @_ZN24HexagonLiveVariablesImpl15constructUseDefEPN4llvm17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(312) %i.b, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm20HexagonLiveVariables20runOnMachineFunctionERNS_15MachineFunctionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !69   ; 3 uses
  %.not1114.i.i.i = icmp ne ptr %i.c, %i.e
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !72   ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.f, @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE
  br i1 %.not.i3.i.i, label %.lr.ph.i.i.i6.preheader, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 3 uses
  %.not11.i.i.i = icmp ne ptr %i.g, %i.e
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !72
  %.not.i.i.i = icmp eq ptr %i.h, @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i
  %.not.i3.i.i5 = icmp eq ptr %i.f, @_ZN4llvm35MachinePostDominatorTreeWrapperPass2IDE
  br i1 %.not.i3.i.i5, label %_ZNK4llvm4Pass11getAnalysisINS_35MachinePostDominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i6.preheader

.lr.ph.i.i.i6.preheader:                          ; preds = %bb.a, %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit
  br label %.lr.ph.i.i.i6

.lr.ph.i.i.i6:                                    ; preds = %.lr.ph.i.i.i6.preheader, %.lr.ph.i.i.i6
  %.sroa.08.015.i4.i.i7 = phi ptr [ %i.i, %.lr.ph.i.i.i6 ], [ %i.c, %.lr.ph.i.i.i6.preheader ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i7, i64 16 ; 3 uses
  %.not11.i.i.i8 = icmp ne ptr %i.i, %i.e
  tail call void @llvm.assume(i1 %.not11.i.i.i8)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !72
  %.not.i.i.i9 = icmp eq ptr %i.j, @_ZN4llvm35MachinePostDominatorTreeWrapperPass2IDE
  br i1 %.not.i.i.i9, label %_ZNK4llvm4Pass11getAnalysisINS_35MachinePostDominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i6

_ZNK4llvm4Pass11getAnalysisINS_35MachinePostDominatorTreeWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i6, %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !62
  %i.m = tail call noundef zeroext i1 @_ZN24HexagonLiveVariablesImpl20runOnMachineFunctionERN4llvm15MachineFunctionERNS0_20MachineDominatorTreeERNS0_24MachinePostDominatorTreeE(ptr noundef nonnull align 8 dereferenceable(312) %i.l, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr nonnull align 8 poison, ptr nonnull align 8 poison) ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.n, align 8, !tbaa !58
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm20HexagonLiveVariables9isLiveOutEPKNS_17MachineBasicBlockEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !227, !noalias !398 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !228, !noalias !398 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.h = load i32, ptr %i.g, align 4, !tbaa !226, !noalias !398 ; 4 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.loopexit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add i32 %i.h, -1                         ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = mul i64 %i.k, -4658895280553007687       ; 2 uses
  %i.m = lshr i64 %i.l, 31
  %i.n = xor i64 %i.m, %i.l
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.j, %i.o                       ; 3 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = lshr i64 %i.q, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !229, !noalias !399
  %i.u = and i32 %i.p, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !276

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %bb.c
  %i.x = phi i64 [ %i.ad, %bb.c ], [ %i.q, %bb.b ]
  %.017.i.i.i.i = phi i32 [ %i.ac, %bb.c ], [ %i.p, %bb.b ]
  %i.y = getelementptr inbounds nuw [80 x i8], ptr %i.d, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !234, !noalias !399
  %i.aa = icmp eq ptr %1, %i.z
  br i1 %i.aa, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit, label %bb.c, !prof !65

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ab = add nuw i32 %.017.i.i.i.i, 1
  %i.ac = and i32 %i.ab, %i.j                     ; 3 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !229, !noalias !399
  %i.ah = and i32 %i.ac, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !277

.loopexit.i.i:                                    ; preds = %bb.c, %bb.b, %bb.a
  %i.ak = zext i32 %i.h to i64                    ; 2 uses
  %i.al = getelementptr inbounds nuw [80 x i8], ptr %i.d, i64 %i.ak
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = zext i32 %i.h to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit ], [ %i.ak, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.y, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit ], [ %i.al, %.loopexit.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [80 x i8], ptr %i.d, i64 %.pre-phi
  %i.an = icmp ne ptr %.lcssa.sink.i.i, %i.am
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 72
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !241
  %.not = icmp ult i32 %2, %i.aq
  tail call void @llvm.assume(i1 %.not)
  %i.ar = lshr i32 %2, 6
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !60
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.as
  %i.av = and i32 %2, 63
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !37
  %i.ax = zext nneg i32 %i.av to i64
  %i.ay = shl nuw i64 1, %i.ax
  %i.az = and i64 %i.aw, %i.ay
  %i.ba = icmp ne i64 %i.az, 0
  ret i1 %i.ba
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(68) ptr @_ZNK4llvm20HexagonLiveVariables11getLiveOutsEPKNS_17MachineBasicBlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !227, !noalias !408 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !228, !noalias !408 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.h = load i32, ptr %i.g, align 4, !tbaa !226, !noalias !408 ; 4 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.loopexit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add i32 %i.h, -1                         ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = mul i64 %i.k, -4658895280553007687       ; 2 uses
  %i.m = lshr i64 %i.l, 31
  %i.n = xor i64 %i.m, %i.l
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.j, %i.o                       ; 3 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = lshr i64 %i.q, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !229, !noalias !409
  %i.u = and i32 %i.p, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !276

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %bb.c
  %i.x = phi i64 [ %i.ad, %bb.c ], [ %i.q, %bb.b ]
  %.017.i.i.i.i = phi i32 [ %i.ac, %bb.c ], [ %i.p, %bb.b ]
  %i.y = getelementptr inbounds nuw [80 x i8], ptr %i.d, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !234, !noalias !409
  %i.aa = icmp eq ptr %1, %i.z
  br i1 %i.aa, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit, label %bb.c, !prof !65

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ab = add nuw i32 %.017.i.i.i.i, 1
  %i.ac = and i32 %i.ab, %i.j                     ; 3 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !229, !noalias !409
  %i.ah = and i32 %i.ac, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !277

.loopexit.i.i:                                    ; preds = %bb.c, %bb.b, %bb.a
  %i.ak = zext i32 %i.h to i64                    ; 2 uses
  %i.al = getelementptr inbounds nuw [80 x i8], ptr %i.d, i64 %i.ak
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = zext i32 %i.h to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit ], [ %i.ak, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.y, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit ], [ %i.al, %.loopexit.i.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw [80 x i8], ptr %i.d, i64 %.pre-phi
  %i.an = icmp ne ptr %.lcssa.sink.i.i, %i.am
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8
  ret ptr %i.ao
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm20HexagonLiveVariables12isUsedWithinENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEES6_jRS6_PNS_11SmallPtrSetIPS4_Lj2EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree readnone captures(address) %1, ptr %2, i32 noundef %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %4, ptr noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %.cast = ptrtoint ptr %2 to i64
  store i64 %.cast, ptr %4, align 8
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq ptr %5, null
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %.critedge
  %.sroa.018.0 = phi ptr [ %i.f, %.critedge ], [ %2, %.preheader ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.018.0, align 8
  %i.e = and i64 %.0.copyload.i.i.i.i.i.i, -8     ; 3 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.h = load i32, ptr %i.g, align 4, !tbaa !259
  switch i32 %i.h, label %bb.c [
    i32 22, label %.critedge
    i32 18, label %.critedge
    i32 17, label %.critedge
    i32 16, label %.critedge
    i32 15, label %.critedge
    i32 14, label %.critedge
  ]
end_hunk_1
