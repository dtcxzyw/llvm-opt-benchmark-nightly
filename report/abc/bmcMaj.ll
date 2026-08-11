inline.NumInlined: 1214
inline.NumDeleted: 188
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 75
loop-unroll.NumUnrolled: 171
loop-unroll.NumUnrolledNotLatch: 4
begin_hunk_0_@Mini_AigDupCompl:bb.a
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.val.i82, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !38
  %.not91.1 = icmp eq i32 %i.bt, 2147483647
  br i1 %.not91.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bu = add nsw i32 %.157, 1
  %i.bv = lshr i32 %1, %.157
  %i.bw = and i32 %i.bv, 1
  %i.bx = trunc nuw nsw i64 %i.br to i32
  %i.by = or disjoint i32 %i.bw, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !38
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.157.1 = phi i32 [ %i.bu, %bb.f ], [ %.157, %bb.e ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.lr.ph98.unr-lcssa, label %bb.c, !llvm.loop !670

.preheader:                                       ; preds = %Mini_AigNodeIsAnd.exit.thread
  %i.ca = icmp sgt i32 %.val65, 3
  br i1 %i.ca, label %.lr.ph102, label %Vec_IntFree.exit

.lr.ph102:                                        ; preds = %.preheader
  %i.cb = getelementptr i8, ptr %0, i64 16
  br label %bb.l

bb.h:                                             ; preds = %.lr.ph98, %Mini_AigNodeIsAnd.exit.thread
  %indvars.iv104 = phi i64 [ 1, %.lr.ph98 ], [ %indvars.iv.next105, %Mini_AigNodeIsAnd.exit.thread ] ; 3 uses
  %.val.i83 = load ptr, ptr %i.bh, align 8, !tbaa !358
  %.idx = shl nuw nsw i64 %indvars.iv104, 3
  %i.cc = getelementptr inbounds nuw i8, ptr %.val.i83, i64 %.idx ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !38 ; 4 uses
  %.not.i84 = icmp eq i32 %i.cd, 2147483647
  br i1 %.not.i84, label %Mini_AigNodeIsAnd.exit.thread, label %Mini_AigNodeIsAnd.exit

Mini_AigNodeIsAnd.exit:                           ; preds = %bb.h
  %i.ce = getelementptr i8, ptr %i.cc, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !38 ; 4 uses
  %.not90 = icmp eq i32 %i.cf, 2147483647
  br i1 %.not90, label %Mini_AigNodeIsAnd.exit.thread, label %bb.i

bb.i:                                             ; preds = %Mini_AigNodeIsAnd.exit
  %i.cg = ashr i32 %i.cd, 1
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !38
  %i.ck = and i32 %i.cd, 1
  %i.cl = xor i32 %i.cj, %i.ck                    ; 2 uses
  %i.cm = ashr i32 %i.cf, 1
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !38
  %i.cq = and i32 %i.cf, 1
  %i.cr = xor i32 %i.cp, %i.cq                    ; 2 uses
  %i.cs = icmp slt i32 %i.cd, %i.cf
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv104
  br i1 %i.cs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cu = tail call fastcc i32 @Mini_AigAnd(ptr noundef nonnull %i.ad, i32 noundef %i.cl, i32 noundef %i.cr)
  br label %Mini_AigNodeIsAnd.exit.thread.sink.split

bb.k:                                             ; preds = %bb.i
  %i.cv = tail call fastcc i32 @Mini_AigXorSpecial(ptr noundef nonnull %i.ad, i32 noundef %i.cl, i32 noundef %i.cr)
  br label %Mini_AigNodeIsAnd.exit.thread.sink.split

Mini_AigNodeIsAnd.exit.thread.sink.split:         ; preds = %bb.k, %bb.j
  %.sink = phi i32 [ %i.cu, %bb.j ], [ %i.cv, %bb.k ]
  store i32 %.sink, ptr %i.ct, align 4, !tbaa !38
  br label %Mini_AigNodeIsAnd.exit.thread

Mini_AigNodeIsAnd.exit.thread:                    ; preds = %Mini_AigNodeIsAnd.exit.thread.sink.split, %bb.h, %Mini_AigNodeIsAnd.exit
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %.val65 = load i32, ptr %i.a, align 4, !tbaa !356 ; 3 uses
  %i.cw = sdiv i32 %.val65, 2
  %i.cx = sext i32 %i.cw to i64
  %i.cy = icmp slt i64 %indvars.iv.next105, %i.cx
  br i1 %i.cy, label %bb.h, label %.preheader, !llvm.loop !671

bb.l:                                             ; preds = %.lr.ph102, %Mini_AigNodeIsPo.exit.thread
  %.val64112 = phi i32 [ %.val65, %.lr.ph102 ], [ %.val64, %Mini_AigNodeIsPo.exit.thread ] ; 2 uses
  %indvars.iv107 = phi i64 [ 1, %.lr.ph102 ], [ %indvars.iv.next108, %Mini_AigNodeIsPo.exit.thread ] ; 2 uses
  %.058100 = phi i32 [ 0, %.lr.ph102 ], [ %.159, %Mini_AigNodeIsPo.exit.thread ] ; 4 uses
  %.val.i85 = load ptr, ptr %i.cb, align 8, !tbaa !358
  %.idx118 = shl nuw nsw i64 %indvars.iv107, 3
  %i.cz = getelementptr inbounds nuw i8, ptr %.val.i85, i64 %.idx118 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !38 ; 3 uses
  %.not.i86 = icmp eq i32 %i.da, 2147483647
  br i1 %.not.i86, label %Mini_AigNodeIsPo.exit.thread, label %Mini_AigNodeIsPo.exit

Mini_AigNodeIsPo.exit:                            ; preds = %bb.l
  %i.db = getelementptr i8, ptr %i.cz, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !38
  %.not = icmp eq i32 %i.dc, 2147483647
  br i1 %.not, label %bb.m, label %Mini_AigNodeIsPo.exit.thread

bb.m:                                             ; preds = %Mini_AigNodeIsPo.exit
  %i.dd = ashr i32 %i.da, 1
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !38
  %i.dh = add nsw i32 %.058100, 1
  %i.di = lshr i32 %2, %.058100
  %i.dj = xor i32 %i.da, %i.di
  %i.dk = and i32 %i.dj, 1
  %i.dl = xor i32 %i.dk, %i.dg
  tail call fastcc void @Mini_AigCreatePo(ptr noundef nonnull %i.ad, i32 noundef %i.dl)
  %.val64.pre = load i32, ptr %i.a, align 4, !tbaa !356
  br label %Mini_AigNodeIsPo.exit.thread

Mini_AigNodeIsPo.exit.thread:                     ; preds = %bb.l, %bb.m, %Mini_AigNodeIsPo.exit
  %.val64 = phi i32 [ %.val64.pre, %bb.m ], [ %.val64112, %Mini_AigNodeIsPo.exit ], [ %.val64112, %bb.l ] ; 2 uses
  %.159 = phi i32 [ %i.dh, %bb.m ], [ %.058100, %Mini_AigNodeIsPo.exit ], [ %.058100, %bb.l ]
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %i.dm = sdiv i32 %.val64, 2
  %i.dn = sext i32 %i.dm to i64
  %i.do = icmp slt i64 %indvars.iv.next108, %i.dn
  br i1 %i.do, label %bb.l, label %Vec_IntFree.exit, !llvm.loop !672

Vec_IntFree.exit:                                 ; preds = %Mini_AigNodeIsPo.exit.thread, %Mini_AigStartSupport.exit, %.preheader
  tail call void @free(ptr noundef nonnull %i.as) #41
  ret ptr %i.ad
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define i64 @Exa6_ManPolarMinterm(i64 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not13 = icmp eq i32 %1, 31
  br i1 %.not13, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = shl nuw nsw i32 1, %1
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 2 uses
  %i.b = zext i32 %2 to i64                       ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.c = icmp eq i32 %1, 0
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 5 uses
  %.012 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %.1.1, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.d = shl nuw i64 1, %indvars.iv
  %i.e = and i64 %i.d, %0
  %.not = icmp eq i64 %i.e, 0
  %i.f = xor i64 %indvars.iv, %i.b
  %i.g = shl nuw i64 1, %i.f
  %i.h = select i1 %.not, i64 0, i64 %i.g
  %.1 = or i64 %i.h, %.012
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.i = shl nuw i64 2, %indvars.iv
  %i.j = and i64 %i.i, %0
  %.not.1 = icmp eq i64 %i.j, 0
  %i.k = xor i64 %indvars.iv.next, %i.b
  %i.l = shl nuw i64 1, %i.k
  %i.m = select i1 %.not.1, i64 0, i64 %i.l
  %.1.1 = or i64 %i.m, %.1                        ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !673

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.012.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod16 = icmp eq i32 %1, 0
  tail call void @llvm.assume(i1 %lcmp.mod16)
  %i.n = shl nuw i64 1, %indvars.iv.epil.init
  %i.o = and i64 %i.n, %0
  %.not.epil = icmp eq i64 %i.o, 0
  %i.p = xor i64 %indvars.iv.epil.init, %i.b
  %i.q = shl nuw i64 1, %i.p
  %i.r = select i1 %.not.epil, i64 0, i64 %i.q
  %.1.epil = or i64 %i.r, %.012.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ], [ %.1.epil, %.lr.ph.epil.preheader ]
  ret i64 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define range(i32 -2147483648, 2147483647) i32 @Exa6_ManFindPolar(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not13 = icmp eq i32 %1, 31
  br i1 %.not13, label %._crit_edge.split, label %.lr.ph.preheader.i.preheader

.lr.ph.preheader.i.preheader:                     ; preds = %bb.a
  %i.a = shl nuw nsw i32 1, %1                    ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.a to i64  ; 2 uses
  %wide.trip.count = zext nneg i32 %i.a to i64
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.b = icmp eq i32 %1, 0
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod20 = icmp eq i32 %1, 0
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.preheader, %Exa6_ManPolarMinterm.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.i.preheader ], [ %indvars.iv.next, %Exa6_ManPolarMinterm.exit.thread ] ; 5 uses
  br i1 %i.b, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 5 uses
  %.012.i = phi i64 [ %.1.i.1, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %i.c = shl nuw i64 1, %indvars.iv.i
  %i.d = and i64 %i.c, %0
  %.not.i = icmp eq i64 %i.d, 0
  %i.e = xor i64 %indvars.iv.i, %indvars.iv
  %i.f = shl nuw i64 1, %i.e
  %i.g = select i1 %.not.i, i64 0, i64 %i.f
  %.1.i = or i64 %i.g, %.012.i
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.h = shl nuw i64 2, %indvars.iv.i
  %i.i = and i64 %i.h, %0
  %.not.i.1 = icmp eq i64 %i.i, 0
  %i.j = xor i64 %indvars.iv.next.i, %indvars.iv
  %i.k = shl nuw i64 1, %i.j
  %i.l = select i1 %.not.i.1, i64 0, i64 %i.k
  %.1.i.1 = or i64 %i.l, %.1.i                    ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Exa6_ManPolarMinterm.exit.unr-lcssa, label %.lr.ph.i, !llvm.loop !673

Exa6_ManPolarMinterm.exit.unr-lcssa:              ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %Exa6_ManPolarMinterm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %Exa6_ManPolarMinterm.exit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %Exa6_ManPolarMinterm.exit.unr-lcssa ] ; 2 uses
  %.012.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %.1.i.1, %Exa6_ManPolarMinterm.exit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod20)
  %i.m = shl nuw i64 1, %indvars.iv.i.epil.init
  %i.n = and i64 %i.m, %0
  %.not.i.epil = icmp eq i64 %i.n, 0
  %i.o = xor i64 %indvars.iv.i.epil.init, %indvars.iv
  %i.p = shl nuw i64 1, %i.o
  %i.q = select i1 %.not.i.epil, i64 0, i64 %i.p
  %.1.i.epil = or i64 %i.q, %.012.i.epil.init
  br label %Exa6_ManPolarMinterm.exit

Exa6_ManPolarMinterm.exit:                        ; preds = %Exa6_ManPolarMinterm.exit.unr-lcssa, %.lr.ph.i.epil.preheader
  %.1.i.lcssa = phi i64 [ %.1.i.1, %Exa6_ManPolarMinterm.exit.unr-lcssa ], [ %.1.i.epil, %.lr.ph.i.epil.preheader ]
  %i.r = and i64 %.1.i.lcssa, 1
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %Exa6_ManPolarMinterm.exit.thread, label %._crit_edge.split.loopexit.split.loop.exit15

Exa6_ManPolarMinterm.exit.thread:                 ; preds = %Exa6_ManPolarMinterm.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.split, label %.lr.ph.preheader.i, !llvm.loop !674

._crit_edge.split.loopexit.split.loop.exit15:     ; preds = %Exa6_ManPolarMinterm.exit
  %i.s = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge.split

._crit_edge.split:                                ; preds = %Exa6_ManPolarMinterm.exit.thread, %._crit_edge.split.loopexit.split.loop.exit15, %bb.a
  %.08 = phi i32 [ -1, %bb.a ], [ %i.s, %._crit_edge.split.loopexit.split.loop.exit15 ], [ -1, %Exa6_ManPolarMinterm.exit.thread ]
  ret i32 %.08
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Exa6_ManTransformOutputs(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4          ; 3 uses
  %.val12 = load i32, ptr %i.a, align 4, !tbaa !23 ; 4 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #38 ; 5 uses
  %i.c = add i32 %.val12, -1
  %or.cond.i = icmp ult i32 %i.c, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %.val12 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 0, ptr %i.d, align 4, !tbaa !23
  store i32 %spec.store.select.i, ptr %i.b, align 8, !tbaa !19
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_WrdAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %spec.store.select.i to i64
  %i.f = shl nsw i64 %i.e, 3
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #38
  br label %Vec_WrdAlloc.exit

Vec_WrdAlloc.exit:                                ; preds = %bb.a, %bb.b
  %.promoted27 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.promoted27, ptr %i.h, align 8, !tbaa !22
  %i.i = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val14 = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.j = load i64, ptr %.val14, align 8, !tbaa !26 ; 3 uses
  %.not13.i = icmp eq i32 %1, 31
  br i1 %.not13.i, label %Exa6_ManFindPolar.exit.thread, label %.lr.ph.preheader.i.preheader.i

.lr.ph.preheader.i.preheader.i:                   ; preds = %Vec_WrdAlloc.exit
  %i.k = shl nuw nsw i32 1, %1
  %wide.trip.count.i.i = zext nneg i32 %i.k to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.l = icmp eq i32 %1, 0
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod51 = icmp eq i32 %1, 0
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %Exa6_ManPolarMinterm.exit.thread.i, %.lr.ph.preheader.i.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.preheader.i ], [ %indvars.iv.next.i, %Exa6_ManPolarMinterm.exit.thread.i ] ; 5 uses
  br i1 %i.l, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 5 uses
  %.012.i.i = phi i64 [ %.1.i.i.1, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i.i ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i.i ]
  %i.m = shl nuw i64 1, %indvars.iv.i.i
  %i.n = and i64 %i.m, %i.j
  %.not.i.i = icmp eq i64 %i.n, 0
  %i.o = xor i64 %indvars.iv.i.i, %indvars.iv.i
  %i.p = shl nuw i64 1, %i.o
  %i.q = select i1 %.not.i.i, i64 0, i64 %i.p
  %.1.i.i = or i64 %i.q, %.012.i.i
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1
  %i.r = shl nuw i64 2, %indvars.iv.i.i
  %i.s = and i64 %i.r, %i.j
  %.not.i.i.1 = icmp eq i64 %i.s, 0
  %i.t = xor i64 %indvars.iv.next.i.i, %indvars.iv.i
  %i.u = shl nuw i64 1, %i.t
  %i.v = select i1 %.not.i.i.1, i64 0, i64 %i.u
  %.1.i.i.1 = or i64 %i.v, %.1.i.i                ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Exa6_ManPolarMinterm.exit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !673

Exa6_ManPolarMinterm.exit.i.unr-lcssa:            ; preds = %.lr.ph.i.i
  br i1 %lcmp.mod.not, label %Exa6_ManPolarMinterm.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %Exa6_ManPolarMinterm.exit.i.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.1, %Exa6_ManPolarMinterm.exit.i.unr-lcssa ] ; 2 uses
  %.012.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %.1.i.i.1, %Exa6_ManPolarMinterm.exit.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod51)
  %i.w = shl nuw i64 1, %indvars.iv.i.i.epil.init
  %i.x = and i64 %i.w, %i.j
  %.not.i.i.epil = icmp eq i64 %i.x, 0
  %i.y = xor i64 %indvars.iv.i.i.epil.init, %indvars.iv.i
  %i.z = shl nuw i64 1, %i.y
  %i.aa = select i1 %.not.i.i.epil, i64 0, i64 %i.z
  %.1.i.i.epil = or i64 %i.aa, %.012.i.i.epil.init
  br label %Exa6_ManPolarMinterm.exit.i

Exa6_ManPolarMinterm.exit.i:                      ; preds = %Exa6_ManPolarMinterm.exit.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %.1.i.i.lcssa = phi i64 [ %.1.i.i.1, %Exa6_ManPolarMinterm.exit.i.unr-lcssa ], [ %.1.i.i.epil, %.lr.ph.i.i.epil.preheader ]
  %i.ab = and i64 %.1.i.i.lcssa, 1
  %.not.i15 = icmp eq i64 %i.ab, 0
  br i1 %.not.i15, label %Exa6_ManPolarMinterm.exit.thread.i, label %Exa6_ManFindPolar.exit

Exa6_ManPolarMinterm.exit.thread.i:               ; preds = %Exa6_ManPolarMinterm.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i, label %Exa6_ManFindPolar.exit, label %.lr.ph.preheader.i.i, !llvm.loop !674

Exa6_ManFindPolar.exit:                           ; preds = %Exa6_ManPolarMinterm.exit.i, %Exa6_ManPolarMinterm.exit.thread.i
  %.08.i = phi i64 [ %indvars.iv.i, %Exa6_ManPolarMinterm.exit.i ], [ 4294967295, %Exa6_ManPolarMinterm.exit.thread.i ] ; 3 uses
  %i.ac = icmp sgt i32 %.val12, 0
  br i1 %i.ac, label %.lr.ph, label %.critedge

Exa6_ManFindPolar.exit.thread:                    ; preds = %Vec_WrdAlloc.exit
  %i.ad = icmp sgt i32 %.val12, 0
  br i1 %i.ad, label %Exa6_ManPolarMinterm.exit.us, label %.critedge

.lr.ph:                                           ; preds = %Exa6_ManFindPolar.exit
  %i.ae = shl nuw nsw i32 1, %1
  %wide.trip.count.i17 = zext nneg i32 %i.ae to i64 ; 2 uses
  %xtraiter52 = and i64 %wide.trip.count.i17, 1
  %i.af = icmp eq i32 %1, 0
  %unroll_iter56 = and i64 %wide.trip.count.i17, 2147483646
  %lcmp.mod53.not = icmp eq i64 %xtraiter52, 0
  %lcmp.mod55 = icmp eq i32 %1, 0
  br label %.lr.ph.preheader.i

Exa6_ManPolarMinterm.exit.us:                     ; preds = %Exa6_ManFindPolar.exit.thread, %Vec_WrdPush.exit.us
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %Vec_WrdPush.exit.us ], [ 0, %Exa6_ManFindPolar.exit.thread ] ; 7 uses
  %storemerge28.us = phi ptr [ %storemerge29.us, %Vec_WrdPush.exit.us ], [ %.promoted27, %Exa6_ManFindPolar.exit.thread ] ; 6 uses
  %spec.select.sink.i26.us = phi i32 [ %spec.select.sink.i25.us, %Vec_WrdPush.exit.us ], [ %spec.store.select.i, %Exa6_ManFindPolar.exit.thread ] ; 3 uses
  %.023.us = phi i32 [ %i.at, %Vec_WrdPush.exit.us ], [ 0, %Exa6_ManFindPolar.exit.thread ]
  %i.ag = trunc nsw i64 %indvars.iv39 to i32
  %i.ah = icmp eq i32 %spec.select.sink.i26.us, %i.ag
  br i1 %i.ah, label %bb.c, label %Vec_WrdPush.exit.us

bb.c:                                             ; preds = %Exa6_ManPolarMinterm.exit.us
  %i.ai = icmp samesign ult i64 %indvars.iv39, 16
  br i1 %i.ai, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_0
