Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/aha?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@check:bb.a
  %i.gp = tail call i32 %i.go(i32 noundef %i.ga, i32 noundef %i.gf, i32 noundef %i.gk) #9, !inline_history !101
  %i.gq = getelementptr [4 x i8], ptr @r, i64 %indvars.iv30
  %i.gr = getelementptr i8, ptr %i.gq, i64 48
  store i32 %i.gp, ptr %i.gr, align 4, !tbaa !7
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr @counter, i64 %indvars.iv30 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !7
  %i.gu = add i32 %i.gt, 1
  store i32 %i.gu, ptr %i.gs, align 4, !tbaa !7
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %i.gv = load i32, ptr @numi, align 4, !tbaa !7  ; 2 uses
  %i.gw = sext i32 %i.gv to i64
  %i.gx = icmp slt i64 %indvars.iv.next31, %i.gw
  br i1 %i.gx, label %.lr.ph, label %._crit_edge, !llvm.loop !103

._crit_edge:                                      ; preds = %.lr.ph
  %.pre = load i32, ptr @check.itrialx, align 4, !tbaa !7
  %.pre34 = load i32, ptr @unacceptable, align 4, !tbaa !7
  %i.gy = icmp eq i32 %.pre34, 0
  br i1 %i.gy, label %._crit_edge.thread, label %.split

.split:                                           ; preds = %._crit_edge
  store i32 0, ptr @unacceptable, align 4, !tbaa !7
  br label %.loopexit

._crit_edge.thread:                               ; preds = %.preheader.split, %._crit_edge
  %i.gz = phi i32 [ %.pre, %._crit_edge ], [ %spec.store.select, %.preheader.split ]
  %i.ha = phi i32 [ %i.gv, %._crit_edge ], [ %i.fl, %.preheader.split ] ; 2 uses
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr [4 x i8], ptr @r, i64 %i.hb
  %i.hd = getelementptr i8, ptr %i.hc, i64 44
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !7
  %i.hf = load i32, ptr @corr_result, align 4, !tbaa !7
  %.not15 = icmp eq i32 %i.he, %i.hf
  br i1 %.not15, label %bb.f, label %.loopexit

.loopexit:                                        ; preds = %._crit_edge.thread, %bb.f, %.loopexit.split.us, %bb.e, %.split, %bb.d
  %.010 = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %.split ], [ %.010.ph.us.us, %.loopexit.split.us ], [ 1, %bb.f ], [ 0, %._crit_edge.thread ]
  ret i32 %.010
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @fix_operands(i32 noundef %0) local_unnamed_addr #5 !guid !107 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [16 x i8], ptr @pgm, i64 %i.a ; 13 uses
  %i.c = load i32, ptr %i.b, align 16, !tbaa !64  ; 3 uses
  %i.d = load i32, ptr @numi, align 4, !tbaa !7   ; 4 uses
  %i.e = add nsw i32 %i.d, -1
  %i.f = icmp eq i32 %0, %i.e
  br i1 %i.f, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.d, 10                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !7    ; 9 uses
  %.not = icmp eq i32 %i.j, %i.g
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7
  %.not41 = icmp eq i32 %i.l, %i.g
  br i1 %.not41, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.g, ptr %i.h, align 4, !tbaa !7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.m = add nuw nsw i32 %i.d, 9                  ; 9 uses
  %i.n = icmp sgt i32 %i.d, 2
  br i1 %i.n, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %i.b, i64 -12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !7
  %.not42 = icmp eq i32 %i.p, %i.m
  br i1 %.not42, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr i8, ptr %i.b, i64 -8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !7
  %.not43 = icmp eq i32 %i.r, %i.m
  br i1 %.not43, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr i8, ptr %i.b, i64 -4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !7
  %.not44 = icmp eq i32 %i.t, %i.m
  %.not45 = icmp eq i32 %i.j, %i.m
  %or.cond = or i1 %.not44, %.not45
  br i1 %or.cond, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !7
  %.not46 = icmp eq i32 %i.v, %i.m
  br i1 %.not46, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = load i32, ptr %i.h, align 4, !tbaa !7
  %i.x = icmp slt i32 %i.w, %i.m
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.m, ptr %i.h, align 4, !tbaa !7
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.y = sext i32 %i.c to i64
  %i.z = getelementptr inbounds [56 x i8], ptr @isa, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !68
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.m, ptr %i.i, align 8, !tbaa !7
  br label %bb.n

bb.n:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.l, %bb.m, %bb.k
  %i.ad = phi i32 [ %i.j, %bb.e ], [ %i.j, %bb.f ], [ %i.j, %bb.g ], [ %i.j, %bb.h ], [ %i.j, %bb.k ], [ %i.j, %bb.i ], [ %i.j, %bb.l ], [ %i.m, %bb.m ]
  %i.ae = sext i32 %i.c to i64
  %i.af = getelementptr inbounds [56 x i8], ptr @isa, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !108
  %.not47 = icmp eq i32 %i.ah, 0
  br i1 %.not47, label %bb.t, label %bb.o

.thread:                                          ; preds = %bb.a
  %i.ai = sext i32 %i.c to i64
  %i.aj = getelementptr inbounds [56 x i8], ptr @isa, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !108
  %.not4749 = icmp eq i32 %i.al, 0
  br i1 %.not4749, label %.thread50, label %.thread._crit_edge

.thread._crit_edge:                               ; preds = %.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !7
  br label %bb.o

bb.o:                                             ; preds = %.thread._crit_edge, %bb.n
  %i.am = phi i32 [ %.pre, %.thread._crit_edge ], [ %i.ad, %bb.n ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !7
  %i.ap = icmp slt i32 %i.ao, %i.am
  br i1 %i.ap, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  store i32 %i.am, ptr %i.an, align 4, !tbaa !7
  br label %bb.t

.thread50:                                        ; preds = %.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !7
  %i.as = icmp slt i32 %i.ar, 11
  br i1 %i.as, label %bb.q, label %bb.t

bb.q:                                             ; preds = %.thread50
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !7
  %i.av = icmp slt i32 %i.au, 11
  br i1 %i.av, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.ay = icmp slt i32 %i.ax, 11
  br i1 %i.ay, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 11, ptr %i.aq, align 4, !tbaa !7
  br label %bb.t

bb.t:                                             ; preds = %bb.n, %bb.s, %bb.r, %bb.q, %.thread50, %bb.o, %bb.p
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @search() local_unnamed_addr #4 !guid !112 {
bb.a:
  %i.a = load i32, ptr @trialx, align 16, !tbaa !7
  store i32 %i.a, ptr getelementptr inbounds nuw (i8, ptr @r, i64 44), align 4, !tbaa !7
  %i.b = load i32, ptr @correct_result, align 16, !tbaa !7
  store i32 %i.b, ptr @corr_result, align 4, !tbaa !7
  br label %bb.b

bb.b:                                             ; preds = %increment.exit, %bb.a
  %.08 = phi i32 [ 0, %bb.a ], [ %.048.i, %increment.exit ]
  %.0 = phi i32 [ 0, %bb.a ], [ %.1, %increment.exit ] ; 2 uses
  %i.c = tail call i32 @check(i32 noundef %.08)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %.0, 1                       ; 2 uses
  %i.e = load i32, ptr @numi, align 4, !tbaa !7
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i32 noundef %i.e) ; 0 uses
  tail call void (i32, ...) @print_pgm(i32 noundef 3)
  %i.g = icmp eq i32 %i.d, 5
  br i1 %i.g, label %increment.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i32 [ %i.d, %bb.c ], [ %.0, %bb.b ]   ; 4 uses
  %i.h = load i32, ptr @numi, align 4, !tbaa !7   ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph78.preheader.i, label %increment.exit.thread

.lr.ph78.preheader.i:                             ; preds = %bb.d
  %i.j = zext nneg i32 %i.h to i64
  br label %.lr.ph78.i

.lr.ph78.i:                                       ; preds = %bb.m, %.lr.ph78.preheader.i
  %indvars.iv108.i = phi i64 [ %i.j, %.lr.ph78.preheader.i ], [ %indvars.iv.next109.i, %bb.m ] ; 3 uses
  %indvars.iv.next109.i = add nsw i64 %indvars.iv108.i, -1 ; 5 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr @pgm, i64 %indvars.iv.next109.i ; 6 uses
  %i.l = load i32, ptr %i.k, align 16, !tbaa !64  ; 3 uses
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [56 x i8], ptr @isa, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !68   ; 2 uses
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
  %i.x = load i32, ptr %i.w, align 4, !tbaa !7    ; 5 uses
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
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !7
  store i32 %i.ae, ptr %i.w, align 4, !tbaa !7
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.thread.i, label %bb.e, !llvm.loop !109

.loopexit:                                        ; preds = %bb.g, %bb.i, %bb.f
  %.sink = phi i32 [ %i.ac, %bb.i ], [ %i.z, %bb.f ], [ 11, %bb.g ]
  store i32 %.sink, ptr %i.w, align 4, !tbaa !7
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
  store i32 %i.aj, ptr %i.k, align 16, !tbaa !64
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [56 x i8], ptr @isa, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load <2 x i32>, ptr %i.am, align 8, !tbaa !7
  store <2 x i32> %i.an, ptr %i.s, align 4, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !7
  tail call void @fix_operands(i32 noundef %i.ah)
  br label %increment.exit

bb.m:                                             ; preds = %.thread.i
  store i32 0, ptr %i.k, align 16, !tbaa !64
  %i.ar = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @isa, i64 16), align 16, !tbaa !7
  store <2 x i32> %i.ar, ptr %i.s, align 4, !tbaa !7
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @isa, i64 24), align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 %i.as, ptr %i.at, align 4, !tbaa !7
  tail call void @fix_operands(i32 noundef %i.ah)
  %i.au = icmp sgt i64 %indvars.iv108.i, 1
  br i1 %i.au, label %.lr.ph78.i, label %increment.exit.thread, !llvm.loop !110

increment.exit:                                   ; preds = %.thread.thread.i, %.loopexit, %bb.k, %bb.l
  %.048.i = phi i32 [ %.04777106.i, %.loopexit ], [ %.04777106.i, %bb.k ], [ %i.ah, %bb.l ], [ %i.r, %.thread.thread.i ] ; 2 uses
  %i.av = icmp sgt i32 %.048.i, -1
  br i1 %i.av, label %bb.b, label %increment.exit.thread, !llvm.loop !111

increment.exit.thread:                            ; preds = %bb.d, %increment.exit, %bb.c, %bb.m
  %.09 = phi i32 [ %.1, %bb.m ], [ %.1, %bb.d ], [ %.1, %increment.exit ], [ 5, %bb.c ]
  ret i32 %.09
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #4 !guid !116 {
bb.a:
  store i32 1, ptr @numi, align 4, !tbaa !7
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %._crit_edge28
  %storemerge29 = phi i32 [ 1, %bb.a ], [ %i.dd, %._crit_edge28 ]
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, i32 noundef %storemerge29) ; 0 uses
  %i.b = load i32, ptr @trialx, align 16, !tbaa !7
  %i.c = tail call i32 @userfun(i32 noundef %i.b) #9
  store i32 %i.c, ptr @correct_result, align 16, !tbaa !7
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @trialx, i64 4), align 4, !tbaa !7
  %i.e = tail call i32 @userfun(i32 noundef %i.d) #9
  store i32 %i.e, ptr getelementptr inbounds nuw (i8, ptr @correct_result, i64 4), align 4, !tbaa !7
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @trialx, i64 8), align 8, !tbaa !7
  %i.g = tail call i32 @userfun(i32 noundef %i.f) #9
  store i32 %i.g, ptr getelementptr inbounds nuw (i8, ptr @correct_result, i64 8), align 8, !tbaa !7
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @trialx, i64 12), align 4, !tbaa !7
  %i.i = tail call i32 @userfun(i32 noundef %i.h) #9
  store i32 %i.i, ptr getelementptr inbounds nuw (i8, ptr @correct_result, i64 12), align 4, !tbaa !7
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @trialx, i64 16), align 16, !tbaa !7
  %i.k = tail call i32 @userfun(i32 noundef %i.j) #9
  store i32 %i.k, ptr getelementptr inbounds nuw (i8, ptr @correct_result, i64 16), align 16, !tbaa !7
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @trialx, i64 20), align 4, !tbaa !7
  %i.m = tail call i32 @userfun(i32 noundef %i.l) #9
  store i32 %i.m, ptr getelementptr inbounds nuw (i8, ptr @correct_result, i64 20), align 4, !tbaa !7
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @trialx, i64 24), align 8, !tbaa !7
  %i.o = tail call i32 @userfun(i32 noundef %i.n) #9
  store i32 %i.o, ptr getelementptr inbounds nuw (i8, ptr @correct_result, i64 24), align 8, !tbaa !7
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @trialx, i64 28), align 4, !tbaa !7
  %i.q = tail call i32 @userfun(i32 noundef %i.p) #9
  store i32 %i.q, ptr getelementptr inbounds nuw (i8, ptr @correct_result, i64 28), align 4, !tbaa !7
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @trialx, i64 32), align 16, !tbaa !7
  %i.s = tail call i32 @userfun(i32 noundef %i.r) #9
  store i32 %i.s, ptr getelementptr inbounds nuw (i8, ptr @correct_result, i64 32), align 16, !tbaa !7
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @trialx, i64 36), align 4, !tbaa !7
  %i.u = tail call i32 @userfun(i32 noundef %i.t) #9
  store i32 %i.u, ptr getelementptr inbounds nuw (i8, ptr @correct_result, i64 36), align 4, !tbaa !7
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @trialx, i64 40), align 8, !tbaa !7
  %i.w = tail call i32 @userfun(i32 noundef %i.v) #9
  store i32 %i.w, ptr getelementptr inbounds nuw (i8, ptr @correct_result, i64 40), align 8, !tbaa !7
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @trialx, i64 44), align 4, !tbaa !7
  %i.y = tail call i32 @userfun(i32 noundef %i.x) #9
  store i32 %i.y, ptr getelementptr inbounds nuw (i8, ptr @correct_result, i64 44), align 4, !tbaa !7
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @trialx, i64 48), align 16, !tbaa !7
  %i.aa = tail call i32 @userfun(i32 noundef %i.z) #9
  store i32 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @correct_result, i64 48), align 16, !tbaa !7
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @trialx, i64 52), align 4, !tbaa !7
  %i.ac = tail call i32 @userfun(i32 noundef %i.ab) #9
  store i32 %i.ac, ptr getelementptr inbounds nuw (i8, ptr @correct_result, i64 52), align 4, !tbaa !7
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @trialx, i64 56), align 8, !tbaa !7
  %i.ae = tail call i32 @userfun(i32 noundef %i.ad) #9
  store i32 %i.ae, ptr getelementptr inbounds nuw (i8, ptr @correct_result, i64 56), align 8, !tbaa !7
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @trialx, i64 60), align 4, !tbaa !7
  %i.ag = tail call i32 @userfun(i32 noundef %i.af) #9
  store i32 %i.ag, ptr getelementptr inbounds nuw (i8, ptr @correct_result, i64 60), align 4, !tbaa !7
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @trialx, i64 64), align 16, !tbaa !7
  %i.ai = tail call i32 @userfun(i32 noundef %i.ah) #9
  store i32 %i.ai, ptr getelementptr inbounds nuw (i8, ptr @correct_result, i64 64), align 16, !tbaa !7
  %i.aj = load i32, ptr @numi, align 4, !tbaa !7  ; 7 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.al = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @isa, i64 16), align 16, !tbaa !7
  %i.am = load i32, ptr getelementptr inbounds nuw (i8, ptr @isa, i64 20), align 4, !tbaa !7 ; 17 uses
  %i.an = load i32, ptr getelementptr inbounds nuw (i8, ptr @isa, i64 16), align 16, !tbaa !7 ; 5 uses
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @isa, i64 24), align 8, !tbaa !7 ; 4 uses
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
end_hunk_0
