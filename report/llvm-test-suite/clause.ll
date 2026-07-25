inline.NumInlined: 1345
inline.NumDeleted: 157
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@clause_AtomMaxVar:bb.a
._crit_edge:                                      ; preds = %bb.f, %bb.g
  ret i32 %.111
}

; Function Attrs: nounwind uwtable
define dso_local void @clause_SetMaxLitFlags(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %.val.i = load i32, ptr %i.a, align 8           ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 68
  %.val3.i = load i32, ptr %i.b, align 4          ; 2 uses
  %i.c = add i32 %.val3.i, %.val.i
  %i.d = getelementptr i8, ptr %0, i64 72
  %.val4.i = load i32, ptr %i.d, align 8          ; 2 uses
  %i.e = add i32 %i.c, %.val4.i                   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = and i32 %i.g, 2
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %clause_RemoveFlag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i32 %i.g, -2
  store i32 %i.i, ptr %i.f, align 8
  br label %clause_RemoveFlag.exit

clause_RemoveFlag.exit:                           ; preds = %bb.a, %bb.b
  %i.j = icmp sgt i32 %i.e, 0                     ; 2 uses
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %clause_RemoveFlag.exit
  %i.k = getelementptr i8, ptr %0, i64 56         ; 5 uses
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.l = icmp ult i32 %i.e, 4
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %.val63 = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.val63, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8
  store i32 0, ptr %i.n, align 8
  %.val63.1 = load ptr, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.val63.1, i64 %indvars.iv
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  store i32 0, ptr %i.q, align 8
  %.val63.2 = load ptr, ptr %i.k, align 8
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.val63.2, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  store i32 0, ptr %i.t, align 8
  %.val63.3 = load ptr, ptr %i.k, align 8
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.val63.3, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  store i32 0, ptr %i.w, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !42

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod99 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod99)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %.val63.epil = load ptr, ptr %i.k, align 8
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.val63.epil, i64 %indvars.iv.epil
  %i.y = load ptr, ptr %i.x, align 8
  store i32 0, ptr %i.y, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.d, !llvm.loop !43

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.d, %clause_RemoveFlag.exit
  %i.z = load i32, ptr @clause_STAMPID, align 4
  %i.aa = tail call i32 @term_StampOverflow(i32 noundef %i.z) #20
  %.not = icmp ne i32 %i.aa, 0
  %or.cond = and i1 %.not, %i.j
  br i1 %or.cond, label %.lr.ph75, label %.loopexit

.lr.ph75:                                         ; preds = %._crit_edge
  %i.ab = getelementptr i8, ptr %0, i64 56        ; 5 uses
  %wide.trip.count90 = zext nneg i32 %i.e to i64  ; 2 uses
  %xtraiter101 = and i64 %wide.trip.count90, 3    ; 3 uses
  %i.ac = icmp ult i32 %i.e, 4
  br i1 %i.ac, label %.epil.preheader100, label %.lr.ph75.new

.lr.ph75.new:                                     ; preds = %.lr.ph75
  %unroll_iter105 = and i64 %wide.trip.count90, 2147483644
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph75.new
  %indvars.iv87 = phi i64 [ 0, %.lr.ph75.new ], [ %indvars.iv.next88.3, %bb.e ] ; 5 uses
  %niter106 = phi i64 [ 0, %.lr.ph75.new ], [ %niter106.next.3, %bb.e ]
  %.val62 = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.val62, i64 %indvars.iv87
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr i8, ptr %i.ae, i64 24
  %.val59 = load ptr, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.val59, i64 24
  store i32 0, ptr %i.ag, align 8
  %.val62.1 = load ptr, ptr %i.ab, align 8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.val62.1, i64 %indvars.iv87
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr i8, ptr %i.aj, i64 24
  %.val59.1 = load ptr, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.val59.1, i64 24
  store i32 0, ptr %i.al, align 8
  %.val62.2 = load ptr, ptr %i.ab, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.val62.2, i64 %indvars.iv87
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr i8, ptr %i.ao, i64 24
  %.val59.2 = load ptr, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.val59.2, i64 24
  store i32 0, ptr %i.aq, align 8
  %.val62.3 = load ptr, ptr %i.ab, align 8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.val62.3, i64 %indvars.iv87
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr i8, ptr %i.at, i64 24
  %.val59.3 = load ptr, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %.val59.3, i64 24
  store i32 0, ptr %i.av, align 8
  %indvars.iv.next88.3 = add nuw nsw i64 %indvars.iv87, 4 ; 2 uses
  %niter106.next.3 = add i64 %niter106, 4         ; 2 uses
  %niter106.ncmp.3 = icmp eq i64 %niter106.next.3, %unroll_iter105
  br i1 %niter106.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !44

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod103.not = icmp eq i64 %xtraiter101, 0
  br i1 %lcmp.mod103.not, label %.loopexit, label %.epil.preheader100

.epil.preheader100:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph75
  %indvars.iv87.epil.init = phi i64 [ 0, %.lr.ph75 ], [ %indvars.iv.next88.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod104 = icmp ne i64 %xtraiter101, 0
  tail call void @llvm.assume(i1 %lcmp.mod104)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader100
  %indvars.iv87.epil = phi i64 [ %indvars.iv87.epil.init, %.epil.preheader100 ], [ %indvars.iv.next88.epil, %bb.f ] ; 2 uses
  %epil.iter102 = phi i64 [ 0, %.epil.preheader100 ], [ %epil.iter102.next, %bb.f ]
  %.val62.epil = load ptr, ptr %i.ab, align 8
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.val62.epil, i64 %indvars.iv87.epil
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr i8, ptr %i.ax, i64 24
  %.val59.epil = load ptr, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.val59.epil, i64 24
  store i32 0, ptr %i.az, align 8
  %indvars.iv.next88.epil = add nuw nsw i64 %indvars.iv87.epil, 1
  %epil.iter102.next = add i64 %epil.iter102, 1   ; 2 uses
  %epil.iter102.cmp.not = icmp eq i64 %epil.iter102.next, %xtraiter101
  br i1 %epil.iter102.cmp.not, label %.loopexit, label %bb.f, !llvm.loop !45

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.f, %._crit_edge
  %i.ba = load i32, ptr @term_STAMP, align 4
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr @term_STAMP, align 4
  %i.bc = icmp slt i32 %.val.i, %i.e
  br i1 %i.bc, label %.lr.ph83.split.us.preheader, label %._crit_edge84

.lr.ph83.split.us.preheader:                      ; preds = %.loopexit
  %i.bd = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %i.be = sext i32 %.val.i to i64                 ; 2 uses
  %i.bf = sext i32 %i.e to i64
  %i.bg = add i32 %.val3.i, %.val4.i
  %i.bh = add i32 %i.bg, %.val.i
  br label %.lr.ph83.split.us

.lr.ph83.split.us:                                ; preds = %.lr.ph83.split.us.preheader, %bb.k
  %indvars.iv95 = phi i64 [ %i.be, %.lr.ph83.split.us.preheader ], [ %indvars.iv.next96, %bb.k ] ; 3 uses
  %.val61.us = load ptr, ptr %i.bd, align 8
  %i.bi = getelementptr inbounds [8 x i8], ptr %.val61.us, i64 %indvars.iv95
  %i.bj = load ptr, ptr %i.bi, align 8            ; 5 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 24     ; 2 uses
  %.val58.us = load ptr, ptr %i.bk, align 8
  %i.bl = getelementptr i8, ptr %.val58.us, i64 24
  %.val67.us = load i32, ptr %i.bl, align 8
  %i.bm = load i32, ptr @term_STAMP, align 4
  %.not68.us = icmp eq i32 %.val67.us, %i.bm
  br i1 %.not68.us, label %bb.k, label %.preheader.us

bb.g:                                             ; preds = %.preheader.us, %bb.j
  %indvars.iv92 = phi i64 [ %i.be, %.preheader.us ], [ %indvars.iv.next93, %bb.j ] ; 3 uses
  %.04277.us = phi i32 [ 0, %.preheader.us ], [ %.244.us, %bb.j ] ; 2 uses
  %i.bn = icmp eq i64 %indvars.iv92, %indvars.iv95
  br i1 %i.bn, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val60.us = load ptr, ptr %i.bd, align 8
  %i.bo = getelementptr inbounds [8 x i8], ptr %.val60.us, i64 %indvars.iv92
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %.val57.us = load ptr, ptr %i.bk, align 8
  %.val66.us = load i32, ptr %i.bx, align 8
  %i.bq = getelementptr i8, ptr %i.bp, i64 24     ; 2 uses
  %.val56.us = load ptr, ptr %i.bq, align 8
  %i.br = getelementptr i8, ptr %i.bp, i64 8
  %.val65.us = load i32, ptr %i.br, align 8
  %i.bs = tail call i32 @ord_LiteralCompare(ptr noundef %.val57.us, i32 noundef %.val66.us, ptr noundef %.val56.us, i32 noundef %.val65.us, i32 noundef 0, ptr noundef %1, ptr noundef %2) #20 ; 3 uses
  %.not69.us = icmp eq i32 %i.bs, 2
  %spec.select.us = select i1 %.not69.us, i32 1, i32 %.04277.us ; 2 uses
  %.not70.us = icmp ne i32 %i.bs, 1
  %.not71.us = icmp eq i32 %i.bs, 3
  br i1 %.not71.us, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.val.us = load ptr, ptr %i.bq, align 8
  %i.bt = load i32, ptr @term_STAMP, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %.val.us, i64 24
  store i32 %i.bt, ptr %i.bu, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.247.shrunk.us = phi i1 [ true, %bb.i ], [ %.not70.us, %bb.h ], [ true, %bb.g ] ; 2 uses
  %.244.us = phi i32 [ %spec.select.us, %bb.i ], [ %spec.select.us, %bb.h ], [ %.04277.us, %bb.g ] ; 2 uses
  %indvars.iv.next93 = add nsw i64 %indvars.iv92, 1 ; 2 uses
  %i.bv = icmp slt i64 %indvars.iv.next93, %i.bf
  %i.bw = and i1 %i.bv, %.247.shrunk.us
  br i1 %i.bw, label %bb.g, label %._crit_edge79.us, !llvm.loop !46

3:                                                ; preds = %._crit_edge79.us
  %4 = load i32, ptr %i.bj, align 8               ; 2 uses
  %5 = or i32 %4, 1
  store i32 %5, ptr %i.bj, align 8
  %.not51.us = icmp eq i32 %.244.us, 0
  br i1 %.not51.us, label %6, label %bb.k

6:                                                ; preds = %3
  %7 = or i32 %4, 3
  store i32 %7, ptr %i.bj, align 8
  br label %bb.k

bb.k:                                             ; preds = %6, %3, %._crit_edge79.us, %.lr.ph83.split.us
  %indvars.iv.next96 = add nsw i64 %indvars.iv95, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next96 to i32
  %exitcond98.not = icmp eq i32 %i.bh, %lftr.wideiv
  br i1 %exitcond98.not, label %._crit_edge84, label %.lr.ph83.split.us, !llvm.loop !47

.preheader.us:                                    ; preds = %.lr.ph83.split.us
  %i.bx = getelementptr i8, ptr %i.bj, i64 8
  br label %bb.g

._crit_edge79.us:                                 ; preds = %bb.j
  br i1 %.247.shrunk.us, label %3, label %bb.k

._crit_edge84:                                    ; preds = %bb.k, %.loopexit
  ret void
}

declare i32 @term_StampOverflow(i32 noundef) local_unnamed_addr #3

declare i32 @ord_LiteralCompare(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, -2147483648) i32 @clause_SearchMaxVar(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %.val.i = load i32, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 68
  %.val3.i = load i32, ptr %i.b, align 4
  %i.c = add nsw i32 %.val3.i, %.val.i
  %i.d = getelementptr i8, ptr %0, i64 72
  %.val4.i = load i32, ptr %i.d, align 8
  %i.e = add nsw i32 %i.c, %.val4.i               ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %stack_POINTER.promoted = load i32, ptr @stack_POINTER, align 4
  %i.g = getelementptr i8, ptr %0, i64 56
  %i.h = load i32, ptr @fol_NOT, align 4
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %clause_LiteralMaxVar.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %clause_LiteralMaxVar.exit ] ; 2 uses
  %.026 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %clause_LiteralMaxVar.exit ]
  %i.i = phi i32 [ %stack_POINTER.promoted, %.lr.ph ], [ %i.ag, %clause_LiteralMaxVar.exit ] ; 5 uses
  %.val = load ptr, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 24
  %.val18.i = load ptr, ptr %i.l, align 8         ; 3 uses
  %.val5.val.i.i = load i32, ptr %.val18.i, align 8
  %.not.i.i = icmp eq i32 %.val5.val.i.i, %i.h
  br i1 %.not.i.i, label %bb.c, label %clause_LiteralAtom.exit.i.preheader

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %.val18.i, i64 16
  %.val6.i.i = load ptr, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %.val6.i.i, i64 8
  %.val6.val.i.i = load ptr, ptr %i.n, align 8
  br label %clause_LiteralAtom.exit.i.preheader

clause_LiteralAtom.exit.i.preheader:              ; preds = %bb.c, %bb.b
  %.0.i.ph = phi ptr [ %.val18.i, %bb.b ], [ %.val6.val.i.i, %bb.c ]
  br label %clause_LiteralAtom.exit.i

clause_LiteralAtom.exit.i:                        ; preds = %clause_LiteralAtom.exit.i.preheader, %.critedge.i
  %i.o = phi i32 [ %.lcssa60, %.critedge.i ], [ %i.i, %clause_LiteralAtom.exit.i.preheader ] ; 2 uses
  %stack_POINTER.promoted32.i = phi i32 [ %stack_POINTER.promoted33.i.lcssa, %.critedge.i ], [ %i.i, %clause_LiteralAtom.exit.i.preheader ] ; 4 uses
  %.011.i = phi i32 [ %.112.i, %.critedge.i ], [ 0, %clause_LiteralAtom.exit.i.preheader ] ; 3 uses
  %.0.i = phi ptr [ %.val.i11, %.critedge.i ], [ %.0.i.ph, %clause_LiteralAtom.exit.i.preheader ] ; 2 uses
  %i.p = getelementptr i8, ptr %.0.i, i64 16
  %.0.val20.i = load ptr, ptr %i.p, align 8       ; 2 uses
  %.not25.i = icmp eq ptr %.0.val20.i, null
  br i1 %.not25.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %clause_LiteralAtom.exit.i
  %i.q = add i32 %stack_POINTER.promoted32.i, 1   ; 3 uses
  store i32 %i.q, ptr @stack_POINTER, align 4
  %i.r = zext i32 %stack_POINTER.promoted32.i to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.r
  store ptr %.0.val20.i, ptr %i.s, align 8
  br label %bb.g

bb.e:                                             ; preds = %clause_LiteralAtom.exit.i
  %.0.val21.i = load i32, ptr %.0.i, align 8      ; 2 uses
  %i.t = icmp slt i32 %.0.val21.i, 1
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = tail call i32 @llvm.smax.i32(i32 %.011.i, i32 %.0.val21.i)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.v = phi i32 [ %i.q, %bb.d ], [ %i.o, %bb.f ], [ %i.o, %bb.e ] ; 2 uses
  %stack_POINTER.promoted34.i = phi i32 [ %i.q, %bb.d ], [ %stack_POINTER.promoted32.i, %bb.f ], [ %stack_POINTER.promoted32.i, %bb.e ] ; 3 uses
  %.112.i = phi i32 [ %.011.i, %bb.d ], [ %i.u, %bb.f ], [ %.011.i, %bb.e ] ; 2 uses
  %.not28.i = icmp eq i32 %stack_POINTER.promoted34.i, %i.i
  br i1 %.not28.i, label %clause_LiteralMaxVar.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.w = add i32 %stack_POINTER.promoted34.i, -1  ; 2 uses
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not26.i66 = icmp eq ptr %i.z, null
  br i1 %.not26.i66, label %.lr.ph67, label %.critedge.i

.lr.ph.i:                                         ; preds = %.lr.ph67
  %i.aa = add i32 %i.ae, -1                       ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not26.i = icmp eq ptr %i.ad, null
  br i1 %.not26.i, label %.lr.ph67, label %.critedge.i.loopexit, !llvm.loop !38

.lr.ph67:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.ae = phi i32 [ %i.aa, %.lr.ph.i ], [ %i.w, %.lr.ph.i.preheader ] ; 6 uses
  %.not.i = icmp eq i32 %i.ae, %i.i
  br i1 %.not.i, label %clause_LiteralMaxVar.exit.loopexit, label %.lr.ph.i, !llvm.loop !38

.critedge.i.loopexit:                             ; preds = %.lr.ph.i
  store i32 %i.ae, ptr @stack_POINTER, align 4
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %.lr.ph.i.preheader
  %.lcssa60 = phi i32 [ %i.v, %.lr.ph.i.preheader ], [ %i.ae, %.critedge.i.loopexit ]
  %stack_POINTER.promoted33.i.lcssa = phi i32 [ %stack_POINTER.promoted34.i, %.lr.ph.i.preheader ], [ %i.ae, %.critedge.i.loopexit ]
  %.lcssa57 = phi ptr [ %i.y, %.lr.ph.i.preheader ], [ %i.ac, %.critedge.i.loopexit ]
  %.lcssa = phi ptr [ %i.z, %.lr.ph.i.preheader ], [ %i.ad, %.critedge.i.loopexit ] ; 2 uses
  %i.af = getelementptr i8, ptr %.lcssa, i64 8
  %.val.i11 = load ptr, ptr %i.af, align 8
  %.val22.i = load ptr, ptr %.lcssa, align 8
  store ptr %.val22.i, ptr %.lcssa57, align 8
  br label %clause_LiteralAtom.exit.i, !llvm.loop !39

clause_LiteralMaxVar.exit.loopexit:               ; preds = %.lr.ph67
  store i32 %i.ae, ptr @stack_POINTER, align 4
  br label %clause_LiteralMaxVar.exit

clause_LiteralMaxVar.exit:                        ; preds = %bb.g, %clause_LiteralMaxVar.exit.loopexit
  %i.ag = phi i32 [ %i.i, %clause_LiteralMaxVar.exit.loopexit ], [ %i.v, %bb.g ]
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.112.i, i32 %.026) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !48

._crit_edge:                                      ; preds = %clause_LiteralMaxVar.exit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select, %clause_LiteralMaxVar.exit ]
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local void @clause_RenameVarsBiggerThan(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 64
  %.val.i = load i32, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 68
  %.val3.i = load i32, ptr %i.b, align 4
  %i.c = add i32 %.val3.i, %.val.i
  %i.d = getelementptr i8, ptr %0, i64 72
  %.val4.i = load i32, ptr %i.d, align 8
  %i.e = add i32 %i.c, %.val4.i                   ; 2 uses
  tail call void @term_StartMaxRenaming(i32 noundef %1) #20
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 56
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.val = load ptr, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 24
  %.val.i8 = load ptr, ptr %i.j, align 8
  %i.k = tail call ptr @term_Rename(ptr noundef %.val.i8) #20 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !49

.loopexit:                                        ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

declare void @term_StartMaxRenaming(i32 noundef) local_unnamed_addr #3

declare ptr @term_Rename(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @clause_Normalize(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
end_hunk_0
begin_hunk_1_@clause_DeleteClauseListFlatFromIndex:bb.a
.lr.ph:                                           ; preds = %bb.a, %clause_DeleteFlatFromIndex.exit
  %.09 = phi ptr [ %.0.val6, %clause_DeleteFlatFromIndex.exit ], [ %0, %bb.a ] ; 2 uses
  %i.a = getelementptr i8, ptr %.09, i64 8
  %.0.val = load ptr, ptr %i.a, align 8           ; 5 uses
  %i.b = getelementptr i8, ptr %.0.val, i64 64
  %.val.i.i = load i32, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %.0.val, i64 68
  %.val3.i.i = load i32, ptr %i.c, align 4
  %i.d = add nsw i32 %.val3.i.i, %.val.i.i
  %i.e = getelementptr i8, ptr %.0.val, i64 72
  %.val4.i.i = load i32, ptr %i.e, align 8
  %i.f = add nsw i32 %i.d, %.val4.i.i             ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.i, label %clause_DeleteFlatFromIndex.exit

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.h = getelementptr i8, ptr %.0.val, i64 56
  %wide.trip.count.i = zext nneg i32 %i.f to i64
  br label %bb.b

bb.b:                                             ; preds = %list_Delete.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %list_Delete.exit.i ] ; 2 uses
  %.val12.i = load ptr, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.val12.i, i64 %indvars.iv.i
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 24
  %.val.i = load ptr, ptr %i.k, align 8           ; 3 uses
  %.val5.val.i.i = load i32, ptr %.val.i, align 8
  %i.l = load i32, ptr @fol_NOT, align 4
  %.not.i.i = icmp eq i32 %.val5.val.i.i, %i.l
  br i1 %.not.i.i, label %bb.c, label %clause_LiteralAtom.exit.i

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %.val.i, i64 16
  %.val6.i.i = load ptr, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %.val6.i.i, i64 8
  %.val6.val.i.i = load ptr, ptr %i.n, align 8
  br label %clause_LiteralAtom.exit.i

clause_LiteralAtom.exit.i:                        ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %.val6.val.i.i, %bb.c ], [ %.val.i, %bb.b ] ; 3 uses
  %i.o = getelementptr i8, ptr %.0.i.i, i64 8     ; 2 uses
  %.val13.i = load ptr, ptr %i.o, align 8         ; 2 uses
  %.not6.i.i = icmp eq ptr %.val13.i, null
  br i1 %.not6.i.i, label %list_Delete.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %clause_LiteralAtom.exit.i, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %.0.val.i.i, %.lr.ph.i.i ], [ %.val13.i, %clause_LiteralAtom.exit.i ] ; 3 uses
  %.0.val.i.i = load ptr, ptr %.07.i.i, align 8   ; 2 uses
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load i32, ptr %i.q, align 8
  %i.s = sext i32 %i.r to i64
  %i.t = load i64, ptr @memory_FREEDBYTES, align 8
  %i.u = add i64 %i.t, %i.s
  store i64 %i.u, ptr @memory_FREEDBYTES, align 8
  %i.v = load ptr, ptr %i.p, align 8
  store ptr %i.v, ptr %.07.i.i, align 8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i.i, ptr %i.w, align 8
  %.not.i14.i = icmp eq ptr %.0.val.i.i, null
  br i1 %.not.i14.i, label %list_Delete.exit.i, label %.lr.ph.i.i, !llvm.loop !24

list_Delete.exit.i:                               ; preds = %.lr.ph.i.i, %clause_LiteralAtom.exit.i
  store ptr null, ptr %i.o, align 8
  %i.x = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %i.y = tail call i32 @st_EntryDelete(ptr noundef %1, ptr noundef nonnull %.0.i.i, ptr noundef nonnull %.0.i.i, ptr noundef %i.x) #20 ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %clause_DeleteFlatFromIndex.exit, label %bb.b, !llvm.loop !55

clause_DeleteFlatFromIndex.exit:                  ; preds = %list_Delete.exit.i, %.lr.ph
  tail call void @clause_Delete(ptr noundef nonnull %.0.val)
  %.0.val6 = load ptr, ptr %.09, align 8          ; 2 uses
  %.not = icmp eq ptr %.0.val6, null
  br i1 %.not, label %.lr.ph.i7, label %.lr.ph, !llvm.loop !57

.lr.ph.i7:                                        ; preds = %clause_DeleteFlatFromIndex.exit, %.lr.ph.i7
  %.07.i = phi ptr [ %.0.val.i, %.lr.ph.i7 ], [ %0, %clause_DeleteFlatFromIndex.exit ] ; 3 uses
  %.0.val.i = load ptr, ptr %.07.i, align 8       ; 2 uses
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = sext i32 %i.ab to i64
  %i.ad = load i64, ptr @memory_FREEDBYTES, align 8
  %i.ae = add i64 %i.ad, %i.ac
  store i64 %i.ae, ptr @memory_FREEDBYTES, align 8
  %i.af = load ptr, ptr %i.z, align 8
  store ptr %i.af, ptr %.07.i, align 8
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i, ptr %i.ag, align 8
  %.not.i = icmp eq ptr %.0.val.i, null
  br i1 %.not.i, label %list_Delete.exit, label %.lr.ph.i7, !llvm.loop !24

list_Delete.exit:                                 ; preds = %.lr.ph.i7, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @clause_MoveBestLiteralToFront(ptr nofree noundef returned captures(address, ret: address, provenance) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %memory_Free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val55 = load ptr, ptr %0, align 8
  %.not109 = icmp eq ptr %.val55, null
  br i1 %.not109, label %memory_Free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not110 = icmp eq ptr %1, null
  br i1 %.not110, label %clause_VarToSizeMap.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.a = shl i32 %2, 2
  %i.b = add i32 %i.a, 4                          ; 2 uses
  %i.c = tail call ptr @memory_Malloc(i32 noundef %i.b) #20 ; 4 uses
  %i.d = zext i32 %2 to i64
  %.idx.i = shl nuw nsw i64 %i.d, 2
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %bb.d
  %.016.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.e, %bb.d ] ; 2 uses
  store i32 1, ptr %.016.i, align 4
  %i.f = getelementptr inbounds i8, ptr %.016.i, i64 -4 ; 2 uses
  %.not.i = icmp ult ptr %i.f, %i.c
  br i1 %.not.i, label %.lr.ph19.i, label %.lr.ph.i, !llvm.loop !58

.lr.ph19.i:                                       ; preds = %.lr.ph.i, %.lr.ph19.i
  %.01018.i = phi ptr [ %.010.val13.i, %.lr.ph19.i ], [ %1, %.lr.ph.i ] ; 3 uses
  %i.g = getelementptr i8, ptr %.01018.i, i64 16
  %.010.val.i = load ptr, ptr %i.g, align 8
  %i.h = tail call i32 @term_ComputeSize(ptr noundef %.010.val.i) #20
  %i.i = getelementptr i8, ptr %.01018.i, i64 8
  %.010.val12.i = load i32, ptr %i.i, align 8
  %i.j = sext i32 %.010.val12.i to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.j
  store i32 %i.h, ptr %i.k, align 4
  %.010.val13.i = load ptr, ptr %.01018.i, align 8 ; 2 uses
  %.not14.i = icmp eq ptr %.010.val13.i, null
  br i1 %.not14.i, label %clause_VarToSizeMap.exit, label %.lr.ph19.i, !llvm.loop !59

clause_VarToSizeMap.exit:                         ; preds = %.lr.ph19.i, %bb.c
  %.040 = phi i32 [ 0, %bb.c ], [ %i.b, %.lr.ph19.i ] ; 4 uses
  %.037 = phi ptr [ null, %bb.c ], [ %i.c, %.lr.ph19.i ] ; 7 uses
  %i.l = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %.val50 = load ptr, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %.val50, i64 24
  %.val52 = load ptr, ptr %i.m, align 8           ; 3 uses
  %.val5.val.i = load i32, ptr %.val52, align 8
  %i.n = load i32, ptr @fol_NOT, align 4
  %.not.i56 = icmp eq i32 %.val5.val.i, %i.n
  br i1 %.not.i56, label %bb.e, label %clause_LiteralAtom.exit

bb.e:                                             ; preds = %clause_VarToSizeMap.exit
  %i.o = getelementptr i8, ptr %.val52, i64 16
  %.val6.i = load ptr, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %.val6.i, i64 8
  %.val6.val.i = load ptr, ptr %i.p, align 8
  br label %clause_LiteralAtom.exit

clause_LiteralAtom.exit:                          ; preds = %clause_VarToSizeMap.exit, %bb.e
  %.0.i = phi ptr [ %.val6.val.i, %bb.e ], [ %.val52, %clause_VarToSizeMap.exit ] ; 2 uses
  %i.q = load i32, ptr @stack_POINTER, align 4    ; 8 uses
  %.not.i57 = icmp eq ptr %.037, null             ; 3 uses
  br i1 %.not.i57, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %clause_LiteralAtom.exit, %.critedge.us.i
  %stack_POINTER.promoted34.us.i = phi i32 [ %stack_POINTER.promoted35.lcssa.us.i, %.critedge.us.i ], [ %i.q, %clause_LiteralAtom.exit ] ; 3 uses
  %.011.us.i = phi ptr [ %.val.us.i, %.critedge.us.i ], [ %.0.i, %clause_LiteralAtom.exit ]
  %.0.us.i = phi i32 [ %.1.us.i, %.critedge.us.i ], [ 0, %clause_LiteralAtom.exit ]
  %i.r = getelementptr i8, ptr %.011.us.i, i64 16
  %.011.val22.us.i = load ptr, ptr %i.r, align 8  ; 2 uses
  %.not26.us.i = icmp eq ptr %.011.val22.us.i, null
  br i1 %.not26.us.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.split.us.i
  %i.s = add i32 %stack_POINTER.promoted34.us.i, 1 ; 2 uses
  store i32 %i.s, ptr @stack_POINTER, align 4
  %i.t = zext i32 %stack_POINTER.promoted34.us.i to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.t
  store ptr %.011.val22.us.i, ptr %i.u, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.split.us.i
  %stack_POINTER.promoted36.us.i = phi i32 [ %stack_POINTER.promoted34.us.i, %.split.us.i ], [ %i.s, %bb.f ] ; 3 uses
  %.1.us.i = add i32 %.0.us.i, 1                  ; 3 uses
  %.not2730.us.i = icmp eq i32 %stack_POINTER.promoted36.us.i, %i.q
  br i1 %.not2730.us.i, label %clause_ComputeTermSize.exit, label %.lr.ph.us.i

bb.h:                                             ; preds = %.lr.ph241, %.lr.ph40.i
  %i.v = phi i32 [ %i.ad, %.lr.ph241 ], [ %i.w, %.lr.ph40.i ] ; 3 uses
  %i.w = add i32 %i.v, -1                         ; 3 uses
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not28.us.i = icmp eq ptr %i.z, null
  br i1 %.not28.us.i, label %.lr.ph40.i, label %..critedge.us_crit_edge.i, !llvm.loop !60

.lr.ph40.i:                                       ; preds = %bb.h
  %.not27.us.i = icmp eq i32 %i.w, %i.q
  br i1 %.not27.us.i, label %.lr.ph40.i.._crit_edge31.split.us.i_crit_edge, label %bb.h, !llvm.loop !60

..critedge.us_crit_edge.i:                        ; preds = %bb.h
  store i32 %i.v, ptr @stack_POINTER, align 4
  br label %.critedge.us.i

.critedge.us.i:                                   ; preds = %.lr.ph.us.i, %..critedge.us_crit_edge.i
  %i.aa = phi ptr [ %i.z, %..critedge.us_crit_edge.i ], [ %i.ag, %.lr.ph.us.i ] ; 2 uses
  %.pre-phi.i = phi i64 [ %i.x, %..critedge.us_crit_edge.i ], [ %i.ae, %.lr.ph.us.i ]
  %stack_POINTER.promoted35.lcssa.us.i = phi i32 [ %i.v, %..critedge.us_crit_edge.i ], [ %stack_POINTER.promoted36.us.i, %.lr.ph.us.i ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %.pre-phi.i
  %i.ac = getelementptr i8, ptr %i.aa, i64 8
  %.val.us.i = load ptr, ptr %i.ac, align 8
  %.val23.us.i = load ptr, ptr %i.aa, align 8
  store ptr %.val23.us.i, ptr %i.ab, align 8
  br label %.split.us.i, !llvm.loop !61

.lr.ph.us.i:                                      ; preds = %bb.g
  %i.ad = add i32 %stack_POINTER.promoted36.us.i, -1 ; 3 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not28.us39.i = icmp eq ptr %i.ag, null
  br i1 %.not28.us39.i, label %.lr.ph40.i.preheader, label %.critedge.us.i

.lr.ph40.i.preheader:                             ; preds = %.lr.ph.us.i
  %.not27.us.i240 = icmp eq i32 %i.ad, %i.q
  br i1 %.not27.us.i240, label %.lr.ph40.i.._crit_edge31.split.us.i_crit_edge, label %.lr.ph241, !llvm.loop !60

.lr.ph241:                                        ; preds = %.lr.ph40.i.preheader
  br label %bb.h, !llvm.loop !60

.lr.ph40.i.._crit_edge31.split.us.i_crit_edge:    ; preds = %.lr.ph40.i.preheader, %.lr.ph40.i
  store i32 %i.q, ptr @stack_POINTER, align 4
  br label %clause_ComputeTermSize.exit

.split.i:                                         ; preds = %clause_LiteralAtom.exit, %.critedge.i
  %stack_POINTER.promoted34.i = phi i32 [ %stack_POINTER.promoted35.i, %.critedge.i ], [ %i.q, %clause_LiteralAtom.exit ] ; 4 uses
  %.011.i = phi ptr [ %.val.i, %.critedge.i ], [ %.0.i, %clause_LiteralAtom.exit ] ; 2 uses
  %.0.i58 = phi i32 [ %.1.i, %.critedge.i ], [ 0, %clause_LiteralAtom.exit ]
  %.011.val20.i = load i32, ptr %.011.i, align 8  ; 2 uses
  %i.ah = icmp slt i32 %.011.val20.i, 1
  br i1 %i.ah, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.split.i
  %i.ai = zext nneg i32 %.011.val20.i to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.037, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4
  br label %bb.l

bb.j:                                             ; preds = %.split.i
  %i.al = getelementptr i8, ptr %.011.i, i64 16
  %.011.val22.i = load ptr, ptr %i.al, align 8    ; 2 uses
  %.not26.i = icmp eq ptr %.011.val22.i, null
  br i1 %.not26.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = add i32 %stack_POINTER.promoted34.i, 1  ; 2 uses
  store i32 %i.am, ptr @stack_POINTER, align 4
  %i.an = zext i32 %stack_POINTER.promoted34.i to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.an
  store ptr %.011.val22.i, ptr %i.ao, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %stack_POINTER.promoted36.i = phi i32 [ %stack_POINTER.promoted34.i, %bb.i ], [ %i.am, %bb.k ], [ %stack_POINTER.promoted34.i, %bb.j ] ; 2 uses
  %.pn.i = phi i32 [ %i.ak, %bb.i ], [ 1, %bb.k ], [ 1, %bb.j ]
  %.1.i = add i32 %.pn.i, %.0.i58                 ; 3 uses
  %.not2730.i = icmp eq i32 %stack_POINTER.promoted36.i, %i.q
  br i1 %.not2730.i, label %clause_ComputeTermSize.exit, label %.lr.ph.i59

.lr.ph.i59:                                       ; preds = %bb.l, %bb.m
  %stack_POINTER.promoted35.i = phi i32 [ %i.ap, %bb.m ], [ %stack_POINTER.promoted36.i, %bb.l ] ; 2 uses
  %i.ap = add i32 %stack_POINTER.promoted35.i, -1 ; 4 uses
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.aq ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 3 uses
  %.not28.i = icmp eq ptr %i.as, null
  br i1 %.not28.i, label %bb.m, label %.critedge.i

bb.m:                                             ; preds = %.lr.ph.i59
  store i32 %i.ap, ptr @stack_POINTER, align 4
  %.not27.i = icmp eq i32 %i.ap, %i.q
  br i1 %.not27.i, label %clause_ComputeTermSize.exit, label %.lr.ph.i59, !llvm.loop !60

.critedge.i:                                      ; preds = %.lr.ph.i59
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %.val.i = load ptr, ptr %i.at, align 8
  %.val23.i = load ptr, ptr %i.as, align 8
  store ptr %.val23.i, ptr %i.ar, align 8
  br label %.split.i, !llvm.loop !61

clause_ComputeTermSize.exit:                      ; preds = %bb.l, %bb.m, %bb.g, %.lr.ph40.i.._crit_edge31.split.us.i_crit_edge
  %.1.lcssa.i = phi i32 [ %.1.us.i, %bb.g ], [ %.1.i, %bb.m ], [ %.1.us.i, %.lr.ph40.i.._crit_edge31.split.us.i_crit_edge ], [ %.1.i, %bb.l ] ; 2 uses
  %.035137 = load ptr, ptr %0, align 8            ; 3 uses
  %.not111138 = icmp eq ptr %.035137, null
  br i1 %.not111138, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %clause_ComputeTermSize.exit
  br i1 %.not.i57, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %clause_ComputeTermSize.exit107.us
  %.035141.us = phi ptr [ %.035.us, %clause_ComputeTermSize.exit107.us ], [ %.035137, %.lr.ph ] ; 3 uses
  %.036140.us = phi ptr [ %spec.select47.us, %clause_ComputeTermSize.exit107.us ], [ %0, %.lr.ph ] ; 2 uses
  %.038139.us = phi i32 [ %spec.select.us, %clause_ComputeTermSize.exit107.us ], [ %.1.lcssa.i, %.lr.ph ] ; 2 uses
  %i.au = getelementptr i8, ptr %.035141.us, i64 8 ; 2 uses
  %.035.val49.us = load ptr, ptr %i.au, align 8
  %i.av = getelementptr i8, ptr %.035.val49.us, i64 24
  %.val51.us = load ptr, ptr %i.av, align 8       ; 3 uses
  %.val5.val.i60.us = load i32, ptr %.val51.us, align 8
  %i.aw = load i32, ptr @fol_NOT, align 4
  %.not.i61.us = icmp eq i32 %.val5.val.i60.us, %i.aw
  br i1 %.not.i61.us, label %bb.n, label %clause_LiteralAtom.exit65.us

bb.n:                                             ; preds = %.lr.ph.split.us
  %i.ax = getelementptr i8, ptr %.val51.us, i64 16
  %.val6.i63.us = load ptr, ptr %i.ax, align 8
  %i.ay = getelementptr i8, ptr %.val6.i63.us, i64 8
  %.val6.val.i64.us = load ptr, ptr %i.ay, align 8
  br label %clause_LiteralAtom.exit65.us

clause_LiteralAtom.exit65.us:                     ; preds = %bb.n, %.lr.ph.split.us
  %.0.i62.us = phi ptr [ %.val6.val.i64.us, %bb.n ], [ %.val51.us, %.lr.ph.split.us ]
  %i.az = load i32, ptr @stack_POINTER, align 4   ; 5 uses
  br label %.split.us.i86.us

.split.us.i86.us:                                 ; preds = %clause_LiteralAtom.exit65.us, %.critedge.us.i97.us
  %stack_POINTER.promoted34.us.i87.us = phi i32 [ %stack_POINTER.promoted35.lcssa.us.i99.us, %.critedge.us.i97.us ], [ %i.az, %clause_LiteralAtom.exit65.us ] ; 3 uses
  %.011.us.i88.us = phi ptr [ %.val.us.i100.us, %.critedge.us.i97.us ], [ %.0.i62.us, %clause_LiteralAtom.exit65.us ]
  %.0.us.i89.us = phi i32 [ %.1.us.i93.us, %.critedge.us.i97.us ], [ 0, %clause_LiteralAtom.exit65.us ]
  %i.ba = getelementptr i8, ptr %.011.us.i88.us, i64 16
  %.011.val22.us.i90.us = load ptr, ptr %i.ba, align 8 ; 2 uses
  %.not26.us.i91.us = icmp eq ptr %.011.val22.us.i90.us, null
  br i1 %.not26.us.i91.us, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.split.us.i86.us
  %i.bb = add i32 %stack_POINTER.promoted34.us.i87.us, 1 ; 2 uses
  store i32 %i.bb, ptr @stack_POINTER, align 4
  %i.bc = zext i32 %stack_POINTER.promoted34.us.i87.us to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.bc
  store ptr %.011.val22.us.i90.us, ptr %i.bd, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.split.us.i86.us
  %stack_POINTER.promoted36.us.i92.us = phi i32 [ %stack_POINTER.promoted34.us.i87.us, %.split.us.i86.us ], [ %i.bb, %bb.o ] ; 3 uses
  %.1.us.i93.us = add i32 %.0.us.i89.us, 1        ; 3 uses
  %.not2730.us.i94.us = icmp eq i32 %stack_POINTER.promoted36.us.i92.us, %i.az
  br i1 %.not2730.us.i94.us, label %clause_ComputeTermSize.exit107.us, label %.lr.ph.us.i95.us

.lr.ph.us.i95.us:                                 ; preds = %bb.p
  %i.be = add i32 %stack_POINTER.promoted36.us.i92.us, -1 ; 3 uses
  %i.bf = zext i32 %i.be to i64                   ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %.not28.us39.i96.us = icmp eq ptr %i.bh, null
  br i1 %.not28.us39.i96.us, label %.lr.ph40.i102.us.preheader, label %.critedge.us.i97.us

.lr.ph40.i102.us.preheader:                       ; preds = %.lr.ph.us.i95.us
  %.not27.us.i103.us243 = icmp eq i32 %i.be, %i.az
  br i1 %.not27.us.i103.us243, label %.lr.ph40.i102.us.._crit_edge31.split.us.i106.us_crit_edge, label %.lr.ph244, !llvm.loop !60

.lr.ph244:                                        ; preds = %.lr.ph40.i102.us.preheader
  br label %bb.q, !llvm.loop !60

.lr.ph40.i102.us:                                 ; preds = %bb.q
  %.not27.us.i103.us = icmp eq i32 %i.bj, %i.az
  br i1 %.not27.us.i103.us, label %.lr.ph40.i102.us.._crit_edge31.split.us.i106.us_crit_edge, label %bb.q, !llvm.loop !60

bb.q:                                             ; preds = %.lr.ph244, %.lr.ph40.i102.us
  %i.bi = phi i32 [ %i.be, %.lr.ph244 ], [ %i.bj, %.lr.ph40.i102.us ] ; 3 uses
  %i.bj = add i32 %i.bi, -1                       ; 3 uses
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %.not28.us.i104.us = icmp eq ptr %i.bm, null
  br i1 %.not28.us.i104.us, label %.lr.ph40.i102.us, label %..critedge.us_crit_edge.i105.us, !llvm.loop !60

..critedge.us_crit_edge.i105.us:                  ; preds = %bb.q
  store i32 %i.bi, ptr @stack_POINTER, align 4
  br label %.critedge.us.i97.us

.critedge.us.i97.us:                              ; preds = %..critedge.us_crit_edge.i105.us, %.lr.ph.us.i95.us
  %i.bn = phi ptr [ %i.bm, %..critedge.us_crit_edge.i105.us ], [ %i.bh, %.lr.ph.us.i95.us ] ; 2 uses
  %.pre-phi.i98.us = phi i64 [ %i.bk, %..critedge.us_crit_edge.i105.us ], [ %i.bf, %.lr.ph.us.i95.us ]
  %stack_POINTER.promoted35.lcssa.us.i99.us = phi i32 [ %i.bi, %..critedge.us_crit_edge.i105.us ], [ %stack_POINTER.promoted36.us.i92.us, %.lr.ph.us.i95.us ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %.pre-phi.i98.us
  %i.bp = getelementptr i8, ptr %i.bn, i64 8
  %.val.us.i100.us = load ptr, ptr %i.bp, align 8
  %.val23.us.i101.us = load ptr, ptr %i.bn, align 8
  store ptr %.val23.us.i101.us, ptr %i.bo, align 8
  br label %.split.us.i86.us, !llvm.loop !61

.lr.ph40.i102.us.._crit_edge31.split.us.i106.us_crit_edge: ; preds = %.lr.ph40.i102.us.preheader, %.lr.ph40.i102.us
  store i32 %i.az, ptr @stack_POINTER, align 4
  br label %clause_ComputeTermSize.exit107.us

clause_ComputeTermSize.exit107.us:                ; preds = %bb.p, %.lr.ph40.i102.us.._crit_edge31.split.us.i106.us_crit_edge
  %.035.val.us = load ptr, ptr %i.au, align 8
  %i.bq = getelementptr i8, ptr %.036140.us, i64 8
  %.036.val48.us = load ptr, ptr %i.bq, align 8
  %i.br = tail call i32 %3(ptr noundef %.035.val.us, i32 noundef %.1.us.i93.us, ptr noundef %.036.val48.us, i32 noundef %.038139.us) #20
  %.not46.us = icmp eq i32 %i.br, 0               ; 2 uses
  %spec.select.us = select i1 %.not46.us, i32 %.038139.us, i32 %.1.us.i93.us
  %spec.select47.us = select i1 %.not46.us, ptr %.036140.us, ptr %.035141.us ; 2 uses
  %.035.us = load ptr, ptr %.035141.us, align 8   ; 2 uses
  %.not111.us = icmp eq ptr %.035.us, null
  br i1 %.not111.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !62

.lr.ph.split:                                     ; preds = %.lr.ph, %clause_ComputeTermSize.exit107
  %.035141 = phi ptr [ %.035, %clause_ComputeTermSize.exit107 ], [ %.035137, %.lr.ph ] ; 3 uses
  %.036140 = phi ptr [ %spec.select47, %clause_ComputeTermSize.exit107 ], [ %0, %.lr.ph ] ; 2 uses
  %.038139 = phi i32 [ %spec.select, %clause_ComputeTermSize.exit107 ], [ %.1.lcssa.i, %.lr.ph ] ; 2 uses
  %i.bs = getelementptr i8, ptr %.035141, i64 8   ; 2 uses
  %.035.val49 = load ptr, ptr %i.bs, align 8
  %i.bt = getelementptr i8, ptr %.035.val49, i64 24
  %.val51 = load ptr, ptr %i.bt, align 8          ; 3 uses
  %.val5.val.i60 = load i32, ptr %.val51, align 8
end_hunk_1
