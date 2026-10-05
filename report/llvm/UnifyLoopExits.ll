Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/UnifyLoopExits?download=true
inline.NumInlined: 1013
inline.NumDeleted: 652
begin_hunk_0_@_ZNK12_GLOBAL__N_124UnifyLoopExitsLegacyPass16getAnalysisUsageERN4llvm13AnalysisUsageE:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i.i:               ; preds = %bb.h, %._crit_edge.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi ptr [ %i.ab, %bb.h ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.ac = load ptr, ptr %.1.i.i.i.i.i.i, align 8, !tbaa !31
  %i.ad = icmp eq ptr %i.ac, @_ZN4llvm19LoopInfoWrapperPass2IDE
  br i1 %i.ad, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i.i.i:             ; preds = %bb.i, %._crit_edge.i.i.i.i.i.i
  %.2.i.i.i.i.i.i = phi ptr [ %i.ae, %bb.i ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.af = load ptr, ptr %.2.i.i.i.i.i.i, align 8, !tbaa !31
  %i.ag = icmp eq ptr %i.af, @_ZN4llvm19LoopInfoWrapperPass2IDE
  br i1 %i.ag, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit: ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 8
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit51: ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 16
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit53: ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 24
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i: ; preds = %bb.b, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit51, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit53, %._crit_edge._crit_edge52.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i, %bb.g
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i.i, %bb.g ], [ %.2.i.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i.i ], [ %i.aj, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit53 ], [ %i.ai, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit51 ], [ %i.ah, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i.i, %bb.b ]
  %.not.i.i = icmp eq ptr %.028.i.i.i.i.i.i, %i.h
  br i1 %.not.i.i, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i, label %_ZN4llvm13AnalysisUsage12addPreservedINS_19LoopInfoWrapperPassEEERS0_v.exit

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i, %._crit_edge._crit_edge52.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !41
  %.not.i2.i.i = icmp ult i32 %i.f, %i.al
  br i1 %.not.i2.i.i, label %bb.k, label %bb.j, !prof !46

bb.j:                                             ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @_ZN4llvm19LoopInfoWrapperPass2IDE)
  %.pre = load i32, ptr %i.e, align 8, !tbaa !40
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_19LoopInfoWrapperPassEEERS0_v.exit

bb.k:                                             ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.g
  store ptr @_ZN4llvm19LoopInfoWrapperPass2IDE, ptr %i.am, align 1
  %i.an = load i32, ptr %i.e, align 8, !tbaa !40
  %i.ao = add i32 %i.an, 1                        ; 2 uses
  store i32 %i.ao, ptr %i.e, align 8, !tbaa !40
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_19LoopInfoWrapperPassEEERS0_v.exit

_ZN4llvm13AnalysisUsage12addPreservedINS_19LoopInfoWrapperPassEEERS0_v.exit: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i, %bb.j, %bb.k
  %i.ap = phi i32 [ %i.f, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i ], [ %.pre, %bb.j ], [ %i.ao, %bb.k ] ; 4 uses
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !24  ; 5 uses
  %i.ar = zext i32 %i.ap to i64                   ; 3 uses
  %.idx4.i.i.i4 = shl nuw nsw i64 %i.ar, 3        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx4.i.i.i4
  %i.at = lshr i64 %i.ar, 2                       ; 2 uses
  %.not.i.i.i5 = icmp eq i64 %i.at, 0
  br i1 %.not.i.i.i5, label %._crit_edge.i.i.i.i.i.i11, label %.lr.ph.i.i.i.i.i.i6

.lr.ph.i.i.i.i.i.i6:                              ; preds = %_ZN4llvm13AnalysisUsage12addPreservedINS_19LoopInfoWrapperPassEEERS0_v.exit
  %i.au = and i64 %.idx4.i.i.i4, 34359738336
  %scevgep.i.i.i.i.i.i7 = getelementptr i8, ptr %i.aq, i64 %i.au
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.lr.ph.i.i.i.i.i.i6
  %.047.i.i.i.i.i.i8 = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i.i6 ], [ %i.bh, %bb.p ] ; 2 uses
  %.02946.i.i.i.i.i.i9 = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i6 ], [ %i.bg, %bb.p ] ; 9 uses
  %i.av = load ptr, ptr %.02946.i.i.i.i.i.i9, align 8, !tbaa !31
  %i.aw = icmp eq ptr %i.av, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %i.aw, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i18, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i9, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !31
  %i.az = icmp eq ptr %i.ay, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %i.az, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i18.loopexit.split.loop.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i9, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !31
  %i.bc = icmp eq ptr %i.bb, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %i.bc, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i18.loopexit.split.loop.exit59, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i9, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !31
  %i.bf = icmp eq ptr %i.be, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %i.bf, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i18.loopexit.split.loop.exit61, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i9, i64 32
  %i.bh = add nsw i64 %.047.i.i.i.i.i.i8, -1
  %i.bi = icmp sgt i64 %.047.i.i.i.i.i.i8, 1
  br i1 %i.bi, label %bb.l, label %._crit_edge.loopexit.i.i.i.i.i.i10, !llvm.loop !217

._crit_edge.loopexit.i.i.i.i.i.i10:               ; preds = %bb.p
  %i.bj = and i32 %i.ap, 3
  br label %._crit_edge.i.i.i.i.i.i11

._crit_edge.i.i.i.i.i.i11:                        ; preds = %._crit_edge.loopexit.i.i.i.i.i.i10, %_ZN4llvm13AnalysisUsage12addPreservedINS_19LoopInfoWrapperPassEEERS0_v.exit
  %.pre-phi56.i.i.i.i.i.i12 = phi i32 [ %i.bj, %._crit_edge.loopexit.i.i.i.i.i.i10 ], [ %i.ap, %_ZN4llvm13AnalysisUsage12addPreservedINS_19LoopInfoWrapperPassEEERS0_v.exit ]
  %.029.lcssa.i.i.i.i.i.i13 = phi ptr [ %scevgep.i.i.i.i.i.i7, %._crit_edge.loopexit.i.i.i.i.i.i10 ], [ %i.aq, %_ZN4llvm13AnalysisUsage12addPreservedINS_19LoopInfoWrapperPassEEERS0_v.exit ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i.i.i12, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i16 [
    i32 3, label %bb.q
    i32 2, label %._crit_edge._crit_edge.i.i.i.i.i.i21
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i.i.i14
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i.i.i.i11
  %i.bk = load ptr, ptr %.029.lcssa.i.i.i.i.i.i13, align 8, !tbaa !31
  %i.bl = icmp eq ptr %i.bk, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %i.bl, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i18, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i13, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i.i21

._crit_edge._crit_edge.i.i.i.i.i.i21:             ; preds = %bb.r, %._crit_edge.i.i.i.i.i.i11
  %.1.i.i.i.i.i.i22 = phi ptr [ %i.bm, %bb.r ], [ %.029.lcssa.i.i.i.i.i.i13, %._crit_edge.i.i.i.i.i.i11 ] ; 3 uses
  %i.bn = load ptr, ptr %.1.i.i.i.i.i.i22, align 8, !tbaa !31
  %i.bo = icmp eq ptr %i.bn, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %i.bo, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i18, label %bb.s

bb.s:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i21
  %i.bp = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i22, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i14

._crit_edge._crit_edge52.i.i.i.i.i.i14:           ; preds = %bb.s, %._crit_edge.i.i.i.i.i.i11
  %.2.i.i.i.i.i.i15 = phi ptr [ %i.bp, %bb.s ], [ %.029.lcssa.i.i.i.i.i.i13, %._crit_edge.i.i.i.i.i.i11 ] ; 2 uses
  %i.bq = load ptr, ptr %.2.i.i.i.i.i.i15, align 8, !tbaa !31
  %i.br = icmp eq ptr %i.bq, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %i.br, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i18, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i16

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i18.loopexit.split.loop.exit: ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i9, i64 8
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i18

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i18.loopexit.split.loop.exit59: ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i9, i64 16
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i18

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i18.loopexit.split.loop.exit61: ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i9, i64 24
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i18

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i18: ; preds = %bb.l, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i18.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i18.loopexit.split.loop.exit59, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i18.loopexit.split.loop.exit61, %._crit_edge._crit_edge52.i.i.i.i.i.i14, %._crit_edge._crit_edge.i.i.i.i.i.i21, %bb.q
  %.028.i.i.i.i.i.i19 = phi ptr [ %.1.i.i.i.i.i.i22, %._crit_edge._crit_edge.i.i.i.i.i.i21 ], [ %.029.lcssa.i.i.i.i.i.i13, %bb.q ], [ %.2.i.i.i.i.i.i15, %._crit_edge._crit_edge52.i.i.i.i.i.i14 ], [ %i.bu, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i18.loopexit.split.loop.exit61 ], [ %i.bt, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i18.loopexit.split.loop.exit59 ], [ %i.bs, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i18.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i.i9, %bb.l ]
  %.not.i.i20 = icmp eq ptr %.028.i.i.i.i.i.i19, %i.as
  br i1 %.not.i.i20, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i16, label %_ZN4llvm13AnalysisUsage12addPreservedINS_24DominatorTreeWrapperPassEEERS0_v.exit

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i16: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i18, %._crit_edge._crit_edge52.i.i.i.i.i.i14, %._crit_edge.i.i.i.i.i.i11
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !41
  %.not.i2.i.i17 = icmp ult i32 %i.ap, %i.bw
  br i1 %.not.i2.i.i17, label %bb.u, label %bb.t, !prof !46

bb.t:                                             ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i16
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @_ZN4llvm24DominatorTreeWrapperPass2IDE)
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_24DominatorTreeWrapperPassEEERS0_v.exit

bb.u:                                             ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i16
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ar
  store ptr @_ZN4llvm24DominatorTreeWrapperPass2IDE, ptr %i.bx, align 1
  %i.by = load i32, ptr %i.e, align 8, !tbaa !40
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr %i.e, align 8, !tbaa !40
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_24DominatorTreeWrapperPassEEERS0_v.exit

_ZN4llvm13AnalysisUsage12addPreservedINS_24DominatorTreeWrapperPassEEERS0_v.exit: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i18, %bb.t, %bb.u
  ret void
}

declare void @_ZN4llvm4Pass13releaseMemoryEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #6

declare noundef ptr @_ZN4llvm4Pass18getAsImmutablePassEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #6

declare noundef ptr @_ZN4llvm4Pass18getAsPMDataManagerEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #6

declare void @_ZNK4llvm4Pass14verifyAnalysisEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #6

declare void @_ZN4llvm4Pass17dumpPassStructureEj(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_124UnifyLoopExitsLegacyPass13runOnFunctionERN4llvm8FunctionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !219  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !219  ; 3 uses
  %.not1114.i.i.i = icmp ne ptr %i.c, %i.e
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !222  ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.f, @_ZN4llvm19LoopInfoWrapperPass2IDE
  br i1 %.not.i3.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_19LoopInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 4 uses
  %.not11.i.i.i = icmp ne ptr %i.g, %i.e
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !222
  %.not.i.i.i = icmp eq ptr %i.h, @_ZN4llvm19LoopInfoWrapperPass2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_19LoopInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_19LoopInfoWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %.sroa.08.015.i.lcssa.i.i = phi ptr [ %i.c, %bb.a ], [ %i.g, %.lr.ph.i.i.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %.not.i3.i.i4 = icmp eq ptr %i.f, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %.not.i3.i.i4, label %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i5

.lr.ph.i.i.i5:                                    ; preds = %_ZNK4llvm4Pass11getAnalysisINS_19LoopInfoWrapperPassEEERT_v.exit, %.lr.ph.i.i.i5
  %.sroa.08.015.i4.i.i6 = phi ptr [ %i.k, %.lr.ph.i.i.i5 ], [ %i.c, %_ZNK4llvm4Pass11getAnalysisINS_19LoopInfoWrapperPassEEERT_v.exit ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i6, i64 16 ; 4 uses
  %.not11.i.i.i7 = icmp ne ptr %i.k, %i.e
  tail call void @llvm.assume(i1 %.not11.i.i.i7)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !222
  %.not.i.i.i8 = icmp eq ptr %i.l, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %.not.i.i.i8, label %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i5

_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i5, %_ZNK4llvm4Pass11getAnalysisINS_19LoopInfoWrapperPassEEERT_v.exit
  %.sroa.08.015.i.lcssa.i.i9 = phi ptr [ %i.c, %_ZNK4llvm4Pass11getAnalysisINS_19LoopInfoWrapperPassEEERT_v.exit ], [ %i.k, %.lr.ph.i.i.i5 ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i9, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = tail call fastcc noundef zeroext i1 @_ZL7runImplRN4llvm8LoopInfoERNS_13DominatorTreeE(ptr noundef nonnull align 8 dereferenceable(184) %i.m, ptr noundef nonnull align 8 dereferenceable(204) %i.p)
  ret i1 %i.q
}

declare noundef zeroext i1 @_ZN4llvm12FunctionPass11printIRUnitERNS_11raw_ostreamERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !40
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #16
  %i.f = load ptr, ptr %0, align 8, !tbaa !24
  %i.g = load i32, ptr %i.a, align 8, !tbaa !40
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !40
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !40
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZN4llvm38initializeDominatorTreeWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #6

declare void @_ZN4llvm33initializeLoopInfoWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN4llvm15callDefaultCtorIN12_GLOBAL__N_124UnifyLoopExitsLegacyPassEEEPNS_4PassEv() #3 {
bb.a:
  %0 = alloca %class.anon.187, align 8            ; 5 uses
  %1 = alloca %"class.std::reference_wrapper", align 8 ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #17 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZN12_GLOBAL__N_124UnifyLoopExitsLegacyPass2IDE, ptr %i.c, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 2, ptr %i.d, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN12_GLOBAL__N_124UnifyLoopExitsLegacyPassE, i64 16), ptr %i.a, align 8, !tbaa !12
  %i.e = tail call noundef ptr @_ZN4llvm12PassRegistry15getPassRegistryEv() #16, !inline_history !0
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  store ptr %i.e, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  store ptr @_ZL42initializeUnifyLoopExitsLegacyPassPassOnceRN4llvm12PassRegistryE, ptr %0, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.f, align 8, !tbaa !33
  %i.g = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %0, ptr %i.g, align 8, !tbaa !31
  %i.h = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv, ptr %i.h, align 8, !tbaa !31
  %i.i = call noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) @_ZL42InitializeUnifyLoopExitsLegacyPassPassFlag, ptr noundef nonnull @__once_proxy) #16, !inline_history !1 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN12_GLOBAL__N_124UnifyLoopExitsLegacyPassC2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.i) #18, !inline_history !1
  unreachable

_ZN12_GLOBAL__N_124UnifyLoopExitsLegacyPassC2Ev.exit: ; preds = %bb.a
  store ptr null, ptr %i.g, align 8, !tbaa !31
  store ptr null, ptr %i.h, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret ptr %i.a
}

declare void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) local_unnamed_addr #6

declare void @_ZNK4llvm12LoopInfoBaseINS_10BasicBlockENS_4LoopEE18getLoopsInPreorderEv(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector.68") align 8, ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #6

declare void @_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE16getExitingBlocksERNS_15SmallVectorImplIPS1_EE(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

declare noundef ptr @_ZN4llvm15SplitCallBrEdgeEPNS_10BasicBlockES1_jS1_PNS_14DomTreeUpdaterEPNS_9CycleInfoEPNS_8LoopInfoEPb(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare { ptr, i8 } @_ZN4llvm14ControlFlowHub8finalizeEPNS_14DomTreeUpdaterERNS_15SmallVectorImplIPNS_10BasicBlockEEENS_9StringRefESt8optionalIjE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i64) local_unnamed_addr #6

declare void @_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE10verifyLoopEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #6

declare void @_ZN4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE19addBasicBlockToLoopEPS1_RNS_12LoopInfoBaseIS1_S2_EE(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef, ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm14DomTreeUpdaterD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN4llvm21GenericDomTreeUpdaterINS_14DomTreeUpdaterENS_13DominatorTreeENS_17PostDominatorTreeEE16applyUpdatesImplILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(658) %0) #16
  tail call void @_ZN4llvm21GenericDomTreeUpdaterINS_14DomTreeUpdaterENS_13DominatorTreeENS_17PostDominatorTreeEE16applyUpdatesImplILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(658) %0) #16
  tail call void @_ZN4llvm21GenericDomTreeUpdaterINS_14DomTreeUpdaterENS_13DominatorTreeENS_17PostDominatorTreeEE20dropOutOfDateUpdatesEv(ptr noundef nonnull align 8 dereferenceable(658) %0) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !227  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !228  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4llvm14DomTreeUpdater18CallBackOnDeletionEEvT_S4_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN4llvm14DomTreeUpdater18CallBackOnDeletionEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyIN4llvm14DomTreeUpdater18CallBackOnDeletionEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %i.h = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 3) #16, !inline_history !223 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i

_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i:         ; preds = %bb.b, %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !233
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4llvm14DomTreeUpdater18CallBackOnDeletionEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  tail call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.k) #16
  br label %_ZSt8_DestroyIN4llvm14DomTreeUpdater18CallBackOnDeletionEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4llvm14DomTreeUpdater18CallBackOnDeletionEEvPT_.exit.i.i.i: ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4llvm14DomTreeUpdater18CallBackOnDeletionEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !224

_ZSt8_DestroyIPN4llvm14DomTreeUpdater18CallBackOnDeletionEEvT_S4_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4llvm14DomTreeUpdater18CallBackOnDeletionEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !227
  br label %_ZSt8_DestroyIPN4llvm14DomTreeUpdater18CallBackOnDeletionEEvT_S4_.exit.i

_ZSt8_DestroyIPN4llvm14DomTreeUpdater18CallBackOnDeletionEEvT_S4_.exit.i: ; preds = %_ZSt8_DestroyIPN4llvm14DomTreeUpdater18CallBackOnDeletionEEvT_S4_.exitthread-pre-split.i, %bb.a
  %i.m = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4llvm14DomTreeUpdater18CallBackOnDeletionEEvT_S4_.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4llvm14DomTreeUpdater18CallBackOnDeletionESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN4llvm14DomTreeUpdater18CallBackOnDeletionEEvT_S4_.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !234
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #19
  br label %_ZNSt6vectorIN4llvm14DomTreeUpdater18CallBackOnDeletionESaIS2_EED2Ev.exit

_ZNSt6vectorIN4llvm14DomTreeUpdater18CallBackOnDeletionESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4llvm14DomTreeUpdater18CallBackOnDeletionEEvT_S4_.exit.i, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.t = load i8, ptr %i.s, align 8, !tbaa !19, !range !20, !noundef !21
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4llvm14DomTreeUpdater18CallBackOnDeletionESaIS2_EED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !22
  tail call void @free(ptr noundef %i.w) #16
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.e, %_ZNSt6vectorIN4llvm14DomTreeUpdater18CallBackOnDeletionESaIS2_EED2Ev.exit
  %i.x = load ptr, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN4llvm21GenericDomTreeUpdaterINS_14DomTreeUpdaterENS_13DominatorTreeENS_17PostDominatorTreeEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  tail call void @free(ptr noundef %i.x) #16
  br label %_ZN4llvm21GenericDomTreeUpdaterINS_14DomTreeUpdaterENS_13DominatorTreeENS_17PostDominatorTreeEED2Ev.exit

_ZN4llvm21GenericDomTreeUpdaterINS_14DomTreeUpdaterENS_13DominatorTreeENS_17PostDominatorTreeEED2Ev.exit: ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.f
  ret void
}

declare noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_14ControlFlowHub16BranchDescriptorELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload = load <3 x ptr>, ptr %1, align 8, !tbaa !44
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !40
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 24) #16
  %i.f = load ptr, ptr %0, align 8, !tbaa !24
  %i.g = load i32, ptr %i.a, align 8, !tbaa !40
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.h
  store <3 x ptr> %.sroa.0.0.copyload, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !40
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !40
  ret void
end_hunk_0
