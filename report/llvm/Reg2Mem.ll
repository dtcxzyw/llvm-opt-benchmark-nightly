Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Reg2Mem?download=true
inline.NumInlined: 387
inline.NumDeleted: 287
begin_hunk_0_@_ZNK12_GLOBAL__N_119RegToMemWrapperPass16getAnalysisUsageERN4llvm13AnalysisUsageE:bb.a

._crit_edge._crit_edge.i.i.i.i.i.i:               ; preds = %bb.h, %._crit_edge.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi ptr [ %i.aa, %bb.h ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.ab = load ptr, ptr %.1.i.i.i.i.i.i, align 8, !tbaa !28
  %i.ac = icmp eq ptr %i.ab, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %i.ac, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i.i.i:             ; preds = %bb.i, %._crit_edge.i.i.i.i.i.i
  %.2.i.i.i.i.i.i = phi ptr [ %i.ad, %bb.i ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.ae = load ptr, ptr %.2.i.i.i.i.i.i, align 8, !tbaa !28
  %i.af = icmp eq ptr %i.ae, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %i.af, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit: ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 8
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit52: ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 16
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit54: ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 24
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i: ; preds = %bb.b, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit52, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit54, %._crit_edge._crit_edge52.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i, %bb.g
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i.i, %bb.g ], [ %.2.i.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i.i ], [ %i.ai, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit54 ], [ %i.ah, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit52 ], [ %i.ag, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i.i, %bb.b ]
  %.not.i.i = icmp eq ptr %.028.i.i.i.i.i.i, %i.g
  br i1 %.not.i.i, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i, label %_ZN4llvm13AnalysisUsage12addPreservedINS_24DominatorTreeWrapperPassEEERS0_v.exit

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i, %._crit_edge._crit_edge52.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !111
  %.not.i2.i.i = icmp ult i32 %i.e, %i.ak
  br i1 %.not.i2.i.i, label %bb.k, label %bb.j, !prof !112

bb.j:                                             ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @_ZN4llvm24DominatorTreeWrapperPass2IDE)
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_24DominatorTreeWrapperPassEEERS0_v.exit

bb.k:                                             ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.f
  store ptr @_ZN4llvm24DominatorTreeWrapperPass2IDE, ptr %i.al, align 1
  %i.am = load i32, ptr %i.d, align 8, !tbaa !40
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.d, align 8, !tbaa !40
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_24DominatorTreeWrapperPassEEERS0_v.exit

_ZN4llvm13AnalysisUsage12addPreservedINS_24DominatorTreeWrapperPassEEERS0_v.exit: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i, %bb.j, %bb.k
  %i.ao = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm24DominatorTreeWrapperPass2IDE) #11 ; 0 uses
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !39  ; 5 uses
  %i.aq = load i32, ptr %i.d, align 8, !tbaa !40  ; 4 uses
  %i.ar = zext i32 %i.aq to i64                   ; 3 uses
  %.idx4.i.i.i5 = shl nuw nsw i64 %i.ar, 3        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx4.i.i.i5
  %i.at = lshr i64 %i.ar, 2                       ; 2 uses
  %.not.i.i.i6 = icmp eq i64 %i.at, 0
  br i1 %.not.i.i.i6, label %._crit_edge.i.i.i.i.i.i12, label %.lr.ph.i.i.i.i.i.i7

.lr.ph.i.i.i.i.i.i7:                              ; preds = %_ZN4llvm13AnalysisUsage12addPreservedINS_24DominatorTreeWrapperPassEEERS0_v.exit
  %i.au = and i64 %.idx4.i.i.i5, 34359738336
  %scevgep.i.i.i.i.i.i8 = getelementptr i8, ptr %i.ap, i64 %i.au
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.lr.ph.i.i.i.i.i.i7
  %.047.i.i.i.i.i.i9 = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i.i7 ], [ %i.bh, %bb.p ] ; 2 uses
  %.02946.i.i.i.i.i.i10 = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i7 ], [ %i.bg, %bb.p ] ; 9 uses
  %i.av = load ptr, ptr %.02946.i.i.i.i.i.i10, align 8, !tbaa !28
  %i.aw = icmp eq ptr %i.av, @_ZN4llvm19LoopInfoWrapperPass2IDE
  br i1 %i.aw, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i10, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !28
  %i.az = icmp eq ptr %i.ay, @_ZN4llvm19LoopInfoWrapperPass2IDE
  br i1 %i.az, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19.loopexit.split.loop.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i10, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !28
  %i.bc = icmp eq ptr %i.bb, @_ZN4llvm19LoopInfoWrapperPass2IDE
  br i1 %i.bc, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19.loopexit.split.loop.exit60, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i10, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !28
  %i.bf = icmp eq ptr %i.be, @_ZN4llvm19LoopInfoWrapperPass2IDE
  br i1 %i.bf, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19.loopexit.split.loop.exit62, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i10, i64 32
  %i.bh = add nsw i64 %.047.i.i.i.i.i.i9, -1
  %i.bi = icmp sgt i64 %.047.i.i.i.i.i.i9, 1
  br i1 %i.bi, label %bb.l, label %._crit_edge.loopexit.i.i.i.i.i.i11, !llvm.loop !100

._crit_edge.loopexit.i.i.i.i.i.i11:               ; preds = %bb.p
  %i.bj = and i32 %i.aq, 3
  br label %._crit_edge.i.i.i.i.i.i12

._crit_edge.i.i.i.i.i.i12:                        ; preds = %._crit_edge.loopexit.i.i.i.i.i.i11, %_ZN4llvm13AnalysisUsage12addPreservedINS_24DominatorTreeWrapperPassEEERS0_v.exit
  %.pre-phi56.i.i.i.i.i.i13 = phi i32 [ %i.bj, %._crit_edge.loopexit.i.i.i.i.i.i11 ], [ %i.aq, %_ZN4llvm13AnalysisUsage12addPreservedINS_24DominatorTreeWrapperPassEEERS0_v.exit ]
  %.029.lcssa.i.i.i.i.i.i14 = phi ptr [ %scevgep.i.i.i.i.i.i8, %._crit_edge.loopexit.i.i.i.i.i.i11 ], [ %i.ap, %_ZN4llvm13AnalysisUsage12addPreservedINS_24DominatorTreeWrapperPassEEERS0_v.exit ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i.i.i13, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i17 [
    i32 3, label %bb.q
    i32 2, label %._crit_edge._crit_edge.i.i.i.i.i.i22
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i.i.i15
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i.i.i.i12
  %i.bk = load ptr, ptr %.029.lcssa.i.i.i.i.i.i14, align 8, !tbaa !28
  %i.bl = icmp eq ptr %i.bk, @_ZN4llvm19LoopInfoWrapperPass2IDE
  br i1 %i.bl, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i14, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i.i22

._crit_edge._crit_edge.i.i.i.i.i.i22:             ; preds = %bb.r, %._crit_edge.i.i.i.i.i.i12
  %.1.i.i.i.i.i.i23 = phi ptr [ %i.bm, %bb.r ], [ %.029.lcssa.i.i.i.i.i.i14, %._crit_edge.i.i.i.i.i.i12 ] ; 3 uses
  %i.bn = load ptr, ptr %.1.i.i.i.i.i.i23, align 8, !tbaa !28
  %i.bo = icmp eq ptr %i.bn, @_ZN4llvm19LoopInfoWrapperPass2IDE
  br i1 %i.bo, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19, label %bb.s

bb.s:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i22
  %i.bp = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i23, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i15

._crit_edge._crit_edge52.i.i.i.i.i.i15:           ; preds = %bb.s, %._crit_edge.i.i.i.i.i.i12
  %.2.i.i.i.i.i.i16 = phi ptr [ %i.bp, %bb.s ], [ %.029.lcssa.i.i.i.i.i.i14, %._crit_edge.i.i.i.i.i.i12 ] ; 2 uses
  %i.bq = load ptr, ptr %.2.i.i.i.i.i.i16, align 8, !tbaa !28
  %i.br = icmp eq ptr %i.bq, @_ZN4llvm19LoopInfoWrapperPass2IDE
  br i1 %i.br, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i17

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19.loopexit.split.loop.exit: ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i10, i64 8
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19.loopexit.split.loop.exit60: ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i10, i64 16
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19.loopexit.split.loop.exit62: ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i10, i64 24
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19: ; preds = %bb.l, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19.loopexit.split.loop.exit60, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19.loopexit.split.loop.exit62, %._crit_edge._crit_edge52.i.i.i.i.i.i15, %._crit_edge._crit_edge.i.i.i.i.i.i22, %bb.q
  %.028.i.i.i.i.i.i20 = phi ptr [ %.1.i.i.i.i.i.i23, %._crit_edge._crit_edge.i.i.i.i.i.i22 ], [ %.029.lcssa.i.i.i.i.i.i14, %bb.q ], [ %.2.i.i.i.i.i.i16, %._crit_edge._crit_edge52.i.i.i.i.i.i15 ], [ %i.bu, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19.loopexit.split.loop.exit62 ], [ %i.bt, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19.loopexit.split.loop.exit60 ], [ %i.bs, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i.i10, %bb.l ]
  %.not.i.i21 = icmp eq ptr %.028.i.i.i.i.i.i20, %i.as
  br i1 %.not.i.i21, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i17, label %_ZN4llvm13AnalysisUsage12addPreservedINS_19LoopInfoWrapperPassEEERS0_v.exit

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i17: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19, %._crit_edge._crit_edge52.i.i.i.i.i.i15, %._crit_edge.i.i.i.i.i.i12
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !111
  %.not.i2.i.i18 = icmp ult i32 %i.aq, %i.bw
  br i1 %.not.i2.i.i18, label %bb.u, label %bb.t, !prof !112

bb.t:                                             ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i17
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @_ZN4llvm19LoopInfoWrapperPass2IDE)
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_19LoopInfoWrapperPassEEERS0_v.exit

bb.u:                                             ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i17
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  store ptr @_ZN4llvm19LoopInfoWrapperPass2IDE, ptr %i.bx, align 1
  %i.by = load i32, ptr %i.d, align 8, !tbaa !40
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr %i.d, align 8, !tbaa !40
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_19LoopInfoWrapperPassEEERS0_v.exit

_ZN4llvm13AnalysisUsage12addPreservedINS_19LoopInfoWrapperPassEEERS0_v.exit: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19, %bb.t, %bb.u
  %i.ca = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm19LoopInfoWrapperPass2IDE) #11 ; 0 uses
  ret void
}

declare void @_ZN4llvm4Pass13releaseMemoryEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #2

declare noundef ptr @_ZN4llvm4Pass18getAsImmutablePassEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #2

declare noundef ptr @_ZN4llvm4Pass18getAsPMDataManagerEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #2

declare void @_ZNK4llvm4Pass14verifyAnalysisEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #2

declare void @_ZN4llvm4Pass17dumpPassStructureEj(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_119RegToMemWrapperPass13runOnFunctionERN4llvm8FunctionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(140) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.llvm::CriticalEdgeSplittingOptions", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !114  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !114  ; 3 uses
  %.not1114.i.i.i = icmp ne ptr %i.c, %i.e
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !117  ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.f, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %.not.i3.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 4 uses
  %.not11.i.i.i = icmp ne ptr %i.g, %i.e
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !117
  %.not.i.i.i = icmp eq ptr %i.h, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %.sroa.08.015.i.lcssa.i.i = phi ptr [ %i.c, %bb.a ], [ %i.g, %.lr.ph.i.i.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %.not.i3.i.i7 = icmp eq ptr %i.f, @_ZN4llvm19LoopInfoWrapperPass2IDE
  br i1 %.not.i3.i.i7, label %_ZNK4llvm4Pass11getAnalysisINS_19LoopInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i8

.lr.ph.i.i.i8:                                    ; preds = %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit, %.lr.ph.i.i.i8
  %.sroa.08.015.i4.i.i9 = phi ptr [ %i.k, %.lr.ph.i.i.i8 ], [ %i.c, %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i9, i64 16 ; 4 uses
  %.not11.i.i.i10 = icmp ne ptr %i.k, %i.e
  tail call void @llvm.assume(i1 %.not11.i.i.i10)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !117
  %.not.i.i.i11 = icmp eq ptr %i.l, @_ZN4llvm19LoopInfoWrapperPass2IDE
  br i1 %.not.i.i.i11, label %_ZNK4llvm4Pass11getAnalysisINS_19LoopInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i8

_ZNK4llvm4Pass11getAnalysisINS_19LoopInfoWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i8, %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit
  %.sroa.08.015.i.lcssa.i.i12 = phi ptr [ %i.c, %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit ], [ %i.k, %.lr.ph.i.i.i8 ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i12, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store ptr %i.m, ptr %2, align 8, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.q, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.p, ptr %i.r, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr null, ptr %i.s, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 0, ptr %i.t, align 8
  store i8 1, ptr %i.u, align 4, !tbaa !19
  %i.v = call noundef i32 @_ZN4llvm21SplitAllCriticalEdgesERNS_8FunctionERKNS_28CriticalEdgeSplittingOptionsE(ptr noundef nonnull align 8 dereferenceable(140) %1, ptr noundef nonnull align 8 dereferenceable(37) %2) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call fastcc void @_ZL7runPassRN4llvm8FunctionE(ptr noundef nonnull align 8 dereferenceable(140) %1)
  ret i1 true
}

declare noundef zeroext i1 @_ZN4llvm12FunctionPass11printIRUnitERNS_11raw_ostreamERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !40
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #11
  %i.f = load ptr, ptr %0, align 8, !tbaa !39
  %i.g = load i32, ptr %i.a, align 8, !tbaa !40
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !40
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !40
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm15AnalysisManagerINS_8FunctionEJEE13getResultImplEPNS_11AnalysisKeyERS1_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(80) ptr @_ZN4llvm17PreservedAnalyses8preserveEPNS_11AnalysisKeyE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i8, ptr %i.b, align 8, !tbaa !25, !range !120, !noundef !41
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !24   ; 3 uses
  %i.h = zext i32 %i.g to i64
  %.idx.i.i = shl nuw nsw i64 %i.h, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i.i
  %.not1923.i.i = icmp eq i32 %i.g, 0
  br i1 %.not1923.i.i, label %_ZN4llvm15SmallPtrSetImplIPNS_11AnalysisKeyEE5eraseES2_.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.critedge.i.i
  %.01524.i.i = phi ptr [ %i.k, %.critedge.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.j = load ptr, ptr %.01524.i.i, align 8, !tbaa !28
  %.not20.i.i = icmp eq ptr %i.j, %1
  br i1 %.not20.i.i, label %bb.c, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.01524.i.i, i64 8 ; 2 uses
  %.not19.i.i = icmp eq ptr %i.k, %i.i
  br i1 %.not19.i.i, label %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.l = add i32 %i.g, -1                         ; 3 uses
  store i32 %i.l, ptr %i.f, align 4, !tbaa !24
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !28
  store ptr %i.o, ptr %.01524.i.i, align 8, !tbaa !28
  br label %_ZN4llvm15SmallPtrSetImplIPNS_11AnalysisKeyEE5eraseES2_.exit

bb.d:                                             ; preds = %bb.a
  %i.p = tail call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.a, ptr noundef %1) #11 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.not.i.i, label %._ZN4llvm15SmallPtrSetImplIPNS_11AnalysisKeyEE5eraseES2_.exit_crit_edge, label %bb.e

._ZN4llvm15SmallPtrSetImplIPNS_11AnalysisKeyEE5eraseES2_.exit_crit_edge: ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !24
  br label %_ZN4llvm15SmallPtrSetImplIPNS_11AnalysisKeyEE5eraseES2_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm19SmallPtrSetImplBase15eraseFromBucketEPPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.a, ptr noundef nonnull %i.p) #11
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !24
  %i.s = add i32 %i.r, -1                         ; 2 uses
  store i32 %i.s, ptr %i.q, align 4, !tbaa !24
  br label %_ZN4llvm15SmallPtrSetImplIPNS_11AnalysisKeyEE5eraseES2_.exit

_ZN4llvm15SmallPtrSetImplIPNS_11AnalysisKeyEE5eraseES2_.exit: ; preds = %._ZN4llvm15SmallPtrSetImplIPNS_11AnalysisKeyEE5eraseES2_.exit_crit_edge, %bb.c, %bb.e
  %i.t = phi i32 [ %.pre, %._ZN4llvm15SmallPtrSetImplIPNS_11AnalysisKeyEE5eraseES2_.exit_crit_edge ], [ %i.s, %bb.e ], [ %i.l, %bb.c ]
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZN4llvm15SmallPtrSetImplIPNS_11AnalysisKeyEE5eraseES2_.exit.thread, label %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread

_ZN4llvm15SmallPtrSetImplIPNS_11AnalysisKeyEE5eraseES2_.exit.thread: ; preds = %bb.b, %_ZN4llvm15SmallPtrSetImplIPNS_11AnalysisKeyEE5eraseES2_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i8, ptr %i.v, align 8, !tbaa !25, !range !120, !noundef !41
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.f, label %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit

bb.f:                                             ; preds = %_ZN4llvm15SmallPtrSetImplIPNS_11AnalysisKeyEE5eraseES2_.exit.thread
  %i.y = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !24  ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.ab, 3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i.i.i
  %.not17.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not17.i.i.i, label %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread, label %.lr.ph.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.01218.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, %i.ac
  br i1 %.not.i.i.i, label %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %bb.g
  %.01218.i.i.i = phi ptr [ %i.ad, %bb.g ], [ %i.y, %bb.f ] ; 2 uses
  %i.ae = load ptr, ptr %.01218.i.i.i, align 8, !tbaa !28
  %.not15.i.i.i = icmp eq ptr %i.ae, @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE
  br i1 %.not15.i.i.i, label %_ZN4llvm15SmallPtrSetImplIPvE6insertES1_.exit, label %bb.g

_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit: ; preds = %_ZN4llvm15SmallPtrSetImplIPNS_11AnalysisKeyEE5eraseES2_.exit.thread
  %i.af = tail call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE) #11
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread, label %_ZN4llvm15SmallPtrSetImplIPvE6insertES1_.exit

_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread: ; preds = %.critedge.i.i, %bb.g, %bb.f, %_ZN4llvm15SmallPtrSetImplIPNS_11AnalysisKeyEE5eraseES2_.exit, %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !25, !range !120, !noalias !121, !noundef !41
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.h, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.h:                                             ; preds = %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread
  %i.aj = load ptr, ptr %0, align 8, !tbaa !22, !noalias !121 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !24, !noalias !121 ; 4 uses
  %i.am = zext i32 %i.al to i64
  %.idx.i.i3 = shl nuw nsw i64 %i.am, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i.i3 ; 2 uses
  %.not22.i.i = icmp eq i32 %i.al, 0
  br i1 %.not22.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i4

.lr.ph.i.i4:                                      ; preds = %bb.h, %.critedge.i.i5
  %.023.i.i = phi ptr [ %i.ap, %.critedge.i.i5 ], [ %i.aj, %bb.h ] ; 2 uses
  %i.ao = load ptr, ptr %.023.i.i, align 8, !tbaa !28, !noalias !121
  %.not15.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not15.i.i, label %_ZN4llvm15SmallPtrSetImplIPvE6insertES1_.exit, label %.critedge.i.i5

.critedge.i.i5:                                   ; preds = %.lr.ph.i.i4
  %i.ap = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, %i.an
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i4

._crit_edge.i.i:                                  ; preds = %.critedge.i.i5, %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !23, !noalias !121
  %i.as = icmp ult i32 %i.al, %i.ar
  br i1 %i.as, label %bb.i, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.at = add nuw i32 %i.al, 1
  store i32 %i.at, ptr %i.ak, align 4, !tbaa !24, !noalias !121
  store ptr %1, ptr %i.an, align 8, !tbaa !28, !noalias !121
  br label %_ZN4llvm15SmallPtrSetImplIPvE6insertES1_.exit

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i: ; preds = %._crit_edge.i.i, %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread
  %i.au = tail call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef %1) #11, !noalias !121 ; 0 uses
  br label %_ZN4llvm15SmallPtrSetImplIPvE6insertES1_.exit

_ZN4llvm15SmallPtrSetImplIPvE6insertES1_.exit:    ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i4, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i, %bb.i, %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit
  ret ptr %0
}

declare noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #2

declare void @_ZN4llvm19SmallPtrSetImplBase15eraseFromBucketEPPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #2

declare void @__once_proxy() #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_0
