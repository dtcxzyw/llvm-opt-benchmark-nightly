inline.NumInlined: 4
inline.NumDeleted: 2
begin_hunk_0_@search:bb.a
bb.a:
  %i.a = load i32, ptr @trialx, align 16, !tbaa !4
  store i32 %i.a, ptr getelementptr inbounds nuw (i8, ptr @r, i64 44), align 4, !tbaa !4
  %i.b = load i32, ptr @correct_result, align 16, !tbaa !4
  store i32 %i.b, ptr @corr_result, align 4, !tbaa !4
  br label %bb.b

bb.b:                                             ; preds = %increment.exit, %bb.a
  %.08 = phi i32 [ 0, %bb.a ], [ %.0.i, %increment.exit ]
  %.0 = phi i32 [ 0, %bb.a ], [ %.1, %increment.exit ] ; 2 uses
  %i.c = tail call i32 @check(i32 noundef %.08)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %.0, 1                       ; 2 uses
  %i.e = load i32, ptr @numi, align 4, !tbaa !4
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i32 noundef %i.e) ; 0 uses
  tail call void @print_pgm()
  %i.g = icmp eq i32 %i.d, 5
  br i1 %i.g, label %increment.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i32 [ %i.d, %bb.c ], [ %.0, %bb.b ]   ; 4 uses
  %i.h = load i32, ptr @numi, align 4, !tbaa !4   ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph78.preheader.i, label %increment.exit.thread

.lr.ph78.preheader.i:                             ; preds = %bb.d
  %i.j = zext nneg i32 %i.h to i64
  br label %.lr.ph78.i

.lr.ph78.i:                                       ; preds = %bb.m, %.lr.ph78.preheader.i
  %indvars.iv108.i = phi i64 [ %i.j, %.lr.ph78.preheader.i ], [ %indvars.iv.next109.i, %bb.m ] ; 3 uses
  %indvars.iv.next109.i = add nsw i64 %indvars.iv108.i, -1 ; 5 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr @pgm, i64 %indvars.iv.next109.i ; 6 uses
  %i.l = load i32, ptr %i.k, align 16, !tbaa !8   ; 3 uses
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [56 x i8], ptr @isa, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !14   ; 2 uses
  %i.q = icmp slt i32 %i.p, 1
  br i1 %i.q, label %.thread.thread.i, label %.lr.ph.i

.thread.thread.i:                                 ; preds = %.lr.ph78.i
  %i.r = trunc nuw nsw i64 %indvars.iv.next109.i to i32
  br label %increment.exit

.lr.ph.i:                                         ; preds = %.lr.ph78.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.trip.count.i = zext nneg i32 %i.p to i64
  %i.u = trunc i64 %indvars.iv108.i to i32
  %i.v = add i32 %i.u, 10
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 4 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4    ; 5 uses
  %i.y = icmp slt i32 %i.x, 6
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = add nsw i32 %i.x, 1
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.aa = icmp eq i32 %i.x, 6
  br i1 %i.aa, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = icmp slt i32 %i.x, %i.v
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = add nuw nsw i32 %i.x, 1
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  store i32 %i.ae, ptr %i.w, align 4, !tbaa !4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.thread.i, label %bb.e, !llvm.loop !27

.loopexit:                                        ; preds = %bb.g, %bb.i, %bb.f
  %.sink = phi i32 [ %i.ac, %bb.i ], [ %i.z, %bb.f ], [ 11, %bb.g ]
  store i32 %.sink, ptr %i.w, align 4, !tbaa !4
  %.04777106.i = trunc i64 %indvars.iv.next109.i to i32 ; 3 uses
  %i.af = and i64 %indvars.iv.i, 4294967295
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %increment.exit, label %bb.k

.thread.i:                                        ; preds = %bb.j
  %i.ah = trunc nuw nsw i64 %indvars.iv.next109.i to i32 ; 3 uses
  %i.ai = icmp slt i32 %i.l, 12
  br i1 %i.ai, label %bb.l, label %bb.m

bb.k:                                             ; preds = %.loopexit
  tail call void @fix_operands(i32 noundef %.04777106.i)
  br label %increment.exit

bb.l:                                             ; preds = %.thread.i
  %i.aj = add nsw i32 %i.l, 1                     ; 2 uses
  store i32 %i.aj, ptr %i.k, align 16, !tbaa !8
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [56 x i8], ptr @isa, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load <2 x i32>, ptr %i.am, align 8, !tbaa !4
  store <2 x i32> %i.an, ptr %i.s, align 4, !tbaa !4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !4
  tail call void @fix_operands(i32 noundef %i.ah)
  br label %increment.exit

bb.m:                                             ; preds = %.thread.i
  store i32 0, ptr %i.k, align 16, !tbaa !8
  %i.ar = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @isa, i64 16), align 16, !tbaa !4
  store <2 x i32> %i.ar, ptr %i.s, align 4, !tbaa !4
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @isa, i64 24), align 8, !tbaa !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 %i.as, ptr %i.at, align 4, !tbaa !4
  tail call void @fix_operands(i32 noundef %i.ah)
  %i.au = icmp sgt i64 %indvars.iv108.i, 1
  br i1 %i.au, label %.lr.ph78.i, label %increment.exit.thread, !llvm.loop !28

increment.exit:                                   ; preds = %.thread.thread.i, %.loopexit, %bb.k, %bb.l
  %.0.i = phi i32 [ %.04777106.i, %.loopexit ], [ %.04777106.i, %bb.k ], [ %i.ah, %bb.l ], [ %i.r, %.thread.thread.i ] ; 2 uses
  %i.av = icmp sgt i32 %.0.i, -1
  br i1 %i.av, label %bb.b, label %increment.exit.thread, !llvm.loop !29

increment.exit.thread:                            ; preds = %bb.d, %increment.exit, %bb.c, %bb.m
  %.09 = phi i32 [ %.1, %bb.m ], [ %.1, %bb.d ], [ %.1, %increment.exit ], [ 5, %bb.c ]
  ret i32 %.09
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef readnone captures(none) %1) local_unnamed_addr #4 {
bb.a:
  store i32 1, ptr @numi, align 4, !tbaa !4
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %._crit_edge28
  %storemerge29 = phi i32 [ 1, %bb.a ], [ %i.ck, %._crit_edge28 ]
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, i32 noundef %storemerge29) ; 0 uses
  %i.b = load i32, ptr @trialx, align 16, !tbaa !4
  %i.c = tail call i32 @userfun(i32 noundef %i.b) #9
  store i32 %i.c, ptr @correct_result, align 16, !tbaa !4
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @trialx, i64 4), align 4, !tbaa !4
  %i.e = tail call i32 @userfun(i32 noundef %i.d) #9
  store i32 %i.e, ptr getelementptr inbounds nuw (i8, ptr @correct_result, i64 4), align 4, !tbaa !4
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @trialx, i64 8), align 8, !tbaa !4
  %i.g = tail call i32 @userfun(i32 noundef %i.f) #9
  store i32 %i.g, ptr getelementptr inbounds nuw (i8, ptr @correct_result, i64 8), align 8, !tbaa !4
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @trialx, i64 12), align 4, !tbaa !4
  %i.i = tail call i32 @userfun(i32 noundef %i.h) #9
  store i32 %i.i, ptr getelementptr inbounds nuw (i8, ptr @correct_result, i64 12), align 4, !tbaa !4
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @trialx, i64 16), align 16, !tbaa !4
  %i.k = tail call i32 @userfun(i32 noundef %i.j) #9
  store i32 %i.k, ptr getelementptr inbounds nuw (i8, ptr @correct_result, i64 16), align 16, !tbaa !4
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @trialx, i64 20), align 4, !tbaa !4
  %i.m = tail call i32 @userfun(i32 noundef %i.l) #9
  store i32 %i.m, ptr getelementptr inbounds nuw (i8, ptr @correct_result, i64 20), align 4, !tbaa !4
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @trialx, i64 24), align 8, !tbaa !4
  %i.o = tail call i32 @userfun(i32 noundef %i.n) #9
  store i32 %i.o, ptr getelementptr inbounds nuw (i8, ptr @correct_result, i64 24), align 8, !tbaa !4
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @trialx, i64 28), align 4, !tbaa !4
  %i.q = tail call i32 @userfun(i32 noundef %i.p) #9
  store i32 %i.q, ptr getelementptr inbounds nuw (i8, ptr @correct_result, i64 28), align 4, !tbaa !4
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @trialx, i64 32), align 16, !tbaa !4
  %i.s = tail call i32 @userfun(i32 noundef %i.r) #9
  store i32 %i.s, ptr getelementptr inbounds nuw (i8, ptr @correct_result, i64 32), align 16, !tbaa !4
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @trialx, i64 36), align 4, !tbaa !4
  %i.u = tail call i32 @userfun(i32 noundef %i.t) #9
  store i32 %i.u, ptr getelementptr inbounds nuw (i8, ptr @correct_result, i64 36), align 4, !tbaa !4
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @trialx, i64 40), align 8, !tbaa !4
  %i.w = tail call i32 @userfun(i32 noundef %i.v) #9
  store i32 %i.w, ptr getelementptr inbounds nuw (i8, ptr @correct_result, i64 40), align 8, !tbaa !4
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @trialx, i64 44), align 4, !tbaa !4
  %i.y = tail call i32 @userfun(i32 noundef %i.x) #9
  store i32 %i.y, ptr getelementptr inbounds nuw (i8, ptr @correct_result, i64 44), align 4, !tbaa !4
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @trialx, i64 48), align 16, !tbaa !4
  %i.aa = tail call i32 @userfun(i32 noundef %i.z) #9
  store i32 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @correct_result, i64 48), align 16, !tbaa !4
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @trialx, i64 52), align 4, !tbaa !4
  %i.ac = tail call i32 @userfun(i32 noundef %i.ab) #9
  store i32 %i.ac, ptr getelementptr inbounds nuw (i8, ptr @correct_result, i64 52), align 4, !tbaa !4
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @trialx, i64 56), align 8, !tbaa !4
  %i.ae = tail call i32 @userfun(i32 noundef %i.ad) #9
  store i32 %i.ae, ptr getelementptr inbounds nuw (i8, ptr @correct_result, i64 56), align 8, !tbaa !4
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @trialx, i64 60), align 4, !tbaa !4
  %i.ag = tail call i32 @userfun(i32 noundef %i.af) #9
  store i32 %i.ag, ptr getelementptr inbounds nuw (i8, ptr @correct_result, i64 60), align 4, !tbaa !4
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @trialx, i64 64), align 16, !tbaa !4
  %i.ai = tail call i32 @userfun(i32 noundef %i.ah) #9
  store i32 %i.ai, ptr getelementptr inbounds nuw (i8, ptr @correct_result, i64 64), align 16, !tbaa !4
  %i.aj = load i32, ptr @numi, align 4, !tbaa !4  ; 7 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.al = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @isa, i64 16), align 16, !tbaa !4
  %i.am = load i32, ptr getelementptr inbounds nuw (i8, ptr @isa, i64 20), align 4, !tbaa !4 ; 17 uses
  %i.an = load i32, ptr getelementptr inbounds nuw (i8, ptr @isa, i64 16), align 16, !tbaa !4 ; 5 uses
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @isa, i64 24), align 8, !tbaa !4 ; 4 uses
  %i.ap = add nsw i32 %i.aj, -1
  %i.aq = add nuw nsw i32 %i.aj, 10               ; 6 uses
  %i.ar = add nuw nsw i32 %i.aj, 9                ; 18 uses
  %i.as = icmp samesign ugt i32 %i.aj, 2          ; 2 uses
  %i.at = zext nneg i32 %i.ap to i64              ; 2 uses
  %wide.trip.count = zext nneg i32 %i.aj to i64
  %i.au = load i32, ptr getelementptr inbounds nuw (i8, ptr @isa, i64 12), align 4
  %.not4749.i = icmp eq i32 %i.au, 0              ; 2 uses
  %i.av = icmp sgt i32 %i.an, 10                  ; 2 uses
  %i.aw = icmp sgt i32 %i.am, 10                  ; 2 uses
  %i.ax = icmp sgt i32 %i.ao, 10                  ; 2 uses
  %.not.i = icmp eq i32 %i.am, %i.aq              ; 2 uses
  %.not41.i = icmp eq i32 %i.ao, %i.aq            ; 2 uses
  %.not45.i = icmp eq i32 %i.am, %i.ar            ; 2 uses
  %.not46.i = icmp eq i32 %i.ao, %i.ar            ; 2 uses
  %i.ay = load i32, ptr getelementptr inbounds nuw (i8, ptr @isa, i64 8), align 8
  %i.az = icmp sgt i32 %i.ay, 1                   ; 2 uses
  %i.ba = load i32, ptr getelementptr inbounds nuw (i8, ptr @isa, i64 12), align 4
  %.not47.i = icmp eq i32 %i.ba, 0                ; 2 uses
  %i.bb = shufflevector <2 x i32> %i.al, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.bc = insertelement <4 x i32> %i.bb, i32 0, i64 0
  %i.bd = insertelement <4 x i32> %i.bc, i32 %i.ao, i64 3 ; 2 uses
  %.not = icmp eq i32 %i.aj, 1
  br i1 %.not, label %._crit_edge.loopexit.peel.begin, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %brmerge42 = select i1 %i.av, i1 true, i1 %i.aw
  %brmerge44 = select i1 %brmerge42, i1 true, i1 %i.ax
  %brmerge = select i1 %.not.i, i1 true, i1 %.not41.i
  %2 = add nsw i64 %wide.trip.count, -2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.split, %fix_operands.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next, %fix_operands.exit ] ; 4 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr @pgm, i64 %indvars.iv ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store <4 x i32> %i.bd, ptr %i.be, align 16, !tbaa !4
  %i.bh = icmp eq i64 %indvars.iv, %i.at
  br i1 %i.bh, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  br i1 %brmerge, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.aq, ptr %i.bf, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.bi = phi i32 [ %i.aq, %bb.d ], [ %i.an, %bb.c ] ; 7 uses
  br i1 %i.as, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.bj = getelementptr i8, ptr %i.be, i64 -12
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !4
  %.not42.i = icmp eq i32 %i.bk, %i.ar
  br i1 %.not42.i, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr i8, ptr %i.be, i64 -8
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !4
  %.not43.i = icmp eq i32 %i.bm, %i.ar
  br i1 %.not43.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr i8, ptr %i.be, i64 -4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !4
  %.not44.i = icmp eq i32 %i.bo, %i.ar
  %or.cond.i = or i1 %.not45.i, %.not44.i
  %brmerge40 = select i1 %or.cond.i, i1 true, i1 %.not46.i
  br i1 %brmerge40, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = icmp slt i32 %i.bi, %i.ar
  br i1 %i.bp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.ar, ptr %i.bf, align 4, !tbaa !4
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 %i.ar, ptr %i.bg, align 8, !tbaa !4
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.l, %bb.k, %bb.j, %bb.g, %bb.f, %bb.e
  %i.bq = phi i32 [ %i.bi, %bb.e ], [ %i.bi, %bb.f ], [ %i.bi, %bb.g ], [ %i.bi, %bb.h ], [ %i.ar, %bb.j ], [ %i.bi, %bb.l ], [ %i.bi, %bb.k ]
  %i.br = phi i32 [ %i.am, %bb.e ], [ %i.am, %bb.f ], [ %i.am, %bb.g ], [ %i.am, %bb.h ], [ %i.am, %bb.j ], [ %i.ar, %bb.l ], [ %i.am, %bb.k ]
  br i1 %.not47.i, label %fix_operands.exit, label %.thread._crit_edge.i

.thread.i:                                        ; preds = %bb.b
  br i1 %.not4749.i, label %.thread50.i, label %.thread._crit_edge.i

.thread._crit_edge.i:                             ; preds = %.thread.i, %bb.m
  %i.bs = phi i32 [ %i.bq, %bb.m ], [ %i.an, %.thread.i ]
  %i.bt = phi i32 [ %i.br, %bb.m ], [ %i.am, %.thread.i ] ; 2 uses
  %i.bu = icmp slt i32 %i.bs, %i.bt
  br i1 %i.bu, label %fix_operands.exit.sink.split, label %fix_operands.exit

.thread50.i:                                      ; preds = %.thread.i
  br i1 %brmerge44, label %fix_operands.exit, label %fix_operands.exit.sink.split

fix_operands.exit.sink.split:                     ; preds = %.thread50.i, %.thread._crit_edge.i
  %.sink = phi i32 [ %i.bt, %.thread._crit_edge.i ], [ 11, %.thread50.i ]
  store i32 %.sink, ptr %i.bf, align 4, !tbaa !4
  br label %fix_operands.exit

fix_operands.exit:                                ; preds = %fix_operands.exit.sink.split, %.thread50.i, %bb.m, %.thread._crit_edge.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %2
  br i1 %exitcond.not, label %._crit_edge.loopexit.peel.begin, label %bb.b, !llvm.loop !30

._crit_edge.loopexit.peel.begin:                  ; preds = %.lr.ph, %fix_operands.exit
  %3 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %fix_operands.exit ] ; 2 uses
  %4 = getelementptr inbounds nuw [16 x i8], ptr @pgm, i64 %3 ; 6 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <4 x i32> %i.bd, ptr %4, align 16, !tbaa !4
  %7 = icmp eq i64 %3, %i.at
  br i1 %7, label %8, label %.thread.i.peel

.thread.i.peel:                                   ; preds = %._crit_edge.loopexit.peel.begin
  br i1 %.not4749.i, label %.thread50.i.peel, label %.thread._crit_edge.i.peel

.thread50.i.peel:                                 ; preds = %.thread.i.peel
  %brmerge42.peel = select i1 %i.av, i1 true, i1 %i.aw
  %brmerge44.peel = select i1 %brmerge42.peel, i1 true, i1 %i.ax
  br i1 %brmerge44.peel, label %._crit_edge, label %fix_operands.exit.sink.split.peel

8:                                                ; preds = %._crit_edge.loopexit.peel.begin
  %brmerge.peel = select i1 %.not.i, i1 true, i1 %.not41.i
  br i1 %brmerge.peel, label %10, label %9

9:                                                ; preds = %8
  store i32 %i.aq, ptr %5, align 4, !tbaa !4
  br label %10

10:                                               ; preds = %9, %8
  %11 = phi i32 [ %i.aq, %9 ], [ %i.an, %8 ]      ; 7 uses
  br i1 %i.as, label %12, label %26

12:                                               ; preds = %10
  %13 = getelementptr i8, ptr %4, i64 -12
  %14 = load i32, ptr %13, align 4, !tbaa !4
  %.not42.i.peel = icmp eq i32 %14, %i.ar
  br i1 %.not42.i.peel, label %26, label %15

15:                                               ; preds = %12
  %16 = getelementptr i8, ptr %4, i64 -8
  %17 = load i32, ptr %16, align 8, !tbaa !4
  %.not43.i.peel = icmp eq i32 %17, %i.ar
  br i1 %.not43.i.peel, label %26, label %18

18:                                               ; preds = %15
  %19 = getelementptr i8, ptr %4, i64 -4
  %20 = load i32, ptr %19, align 4, !tbaa !4
  %.not44.i.peel = icmp eq i32 %20, %i.ar
  %or.cond.i.peel = or i1 %.not45.i, %.not44.i.peel
  %brmerge40.peel = select i1 %or.cond.i.peel, i1 true, i1 %.not46.i
  br i1 %brmerge40.peel, label %26, label %21

21:                                               ; preds = %18
  %22 = icmp slt i32 %11, %i.ar
  br i1 %22, label %25, label %23

23:                                               ; preds = %21
  br i1 %i.az, label %24, label %26

24:                                               ; preds = %23
  store i32 %i.ar, ptr %6, align 8, !tbaa !4
  br label %26

25:                                               ; preds = %21
  store i32 %i.ar, ptr %5, align 4, !tbaa !4
  br label %26

26:                                               ; preds = %25, %24, %23, %18, %15, %12, %10
  %27 = phi i32 [ %11, %10 ], [ %11, %12 ], [ %11, %15 ], [ %11, %18 ], [ %i.ar, %25 ], [ %11, %24 ], [ %11, %23 ]
  %28 = phi i32 [ %i.am, %10 ], [ %i.am, %12 ], [ %i.am, %15 ], [ %i.am, %18 ], [ %i.am, %25 ], [ %i.ar, %24 ], [ %i.am, %23 ]
  br i1 %.not47.i, label %._crit_edge, label %.thread._crit_edge.i.peel

.thread._crit_edge.i.peel:                        ; preds = %26, %.thread.i.peel
  %29 = phi i32 [ %27, %26 ], [ %i.an, %.thread.i.peel ]
  %30 = phi i32 [ %28, %26 ], [ %i.am, %.thread.i.peel ] ; 2 uses
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %fix_operands.exit.sink.split.peel, label %._crit_edge

fix_operands.exit.sink.split.peel:                ; preds = %.thread._crit_edge.i.peel, %.thread50.i.peel
  %.sink.peel = phi i32 [ %30, %.thread._crit_edge.i.peel ], [ 11, %.thread50.i.peel ]
  store i32 %.sink.peel, ptr %5, align 4, !tbaa !4
  br label %._crit_edge

._crit_edge:                                      ; preds = %fix_operands.exit.sink.split.peel, %.thread._crit_edge.i.peel, %26, %.thread50.i.peel, %.preheader
  %i.bv = tail call i32 @search()                 ; 2 uses
  %i.bw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %i.bv) ; 0 uses
  %i.bx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42) ; 0 uses
  %i.by = load i32, ptr @numi, align 4, !tbaa !4
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %.lr.ph27, label %._crit_edge28

.lr.ph27:                                         ; preds = %._crit_edge, %.lr.ph27
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %.lr.ph27 ], [ 0, %._crit_edge ] ; 2 uses
  %.025 = phi i32 [ %i.ce, %.lr.ph27 ], [ 0, %._crit_edge ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr @counter, i64 %indvars.iv32 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !4
  %i.cc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, i32 noundef %i.cb) ; 0 uses
  %i.cd = load i32, ptr %i.ca, align 4, !tbaa !4
  %i.ce = add i32 %i.cd, %.025                    ; 2 uses
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %i.cf = load i32, ptr @numi, align 4, !tbaa !4
  %i.cg = sext i32 %i.cf to i64
  %i.ch = icmp slt i64 %indvars.iv.next33, %i.cg
  br i1 %i.ch, label %.lr.ph27, label %._crit_edge28, !llvm.loop !32

._crit_edge28:                                    ; preds = %.lr.ph27, %._crit_edge
  %.0.lcssa = phi i32 [ 0, %._crit_edge ], [ %i.ce, %.lr.ph27 ]
  %i.ci = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i32 noundef %.0.lcssa) ; 0 uses
  %i.cj = load i32, ptr @numi, align 4, !tbaa !4  ; 2 uses
  %i.ck = add nsw i32 %i.cj, 1                    ; 2 uses
  store i32 %i.ck, ptr @numi, align 4, !tbaa !4
  %i.cl = icmp slt i32 %i.cj, 5
  %i.cm = icmp eq i32 %i.bv, 0
  %i.cn = and i1 %i.cl, %i.cm
  br i1 %i.cn, label %.preheader, label %bb.n, !llvm.loop !33

bb.n:                                             ; preds = %._crit_edge28
  ret i32 0
}

declare i32 @userfun(i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bitreverse.i32(i32) #7

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"", !5, i64 0, !6, i64 4}
!10 = !{!11, !13, i64 40}
!11 = !{!"", !12, i64 0, !5, i64 8, !5, i64 12, !6, i64 16, !13, i64 32, !13, i64 40, !13, i64 48}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!11, !5, i64 8}
!15 = !{!11, !13, i64 48}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!11, !13, i64 32}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = !{!11, !12, i64 0}
!22 = distinct !{null}
!23 = distinct !{!23, !17, !24}
!24 = !{!"llvm.loop.unswitch.partial.disable"}
!25 = distinct !{!25, !17}
!26 = !{!11, !5, i64 12}
!27 = distinct !{!27, !17}
!28 = distinct !{!28, !17}
!29 = distinct !{!29, !17}
!30 = distinct !{!30, !17, !31}
!31 = !{!"llvm.loop.peeled.count", i32 1}
!32 = distinct !{!32, !17}
!33 = distinct !{!33, !17}
end_hunk_0
