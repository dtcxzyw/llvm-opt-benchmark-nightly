inline.NumInlined: 31
begin_hunk_0_@memtest_addressing:bb.a

.lr.ph47:                                         ; preds = %bb.d
  %i.m = shl nuw nsw i64 %i.a, 1
  br label %.lr.ph47.split

.lr.ph47.split.us:                                ; preds = %.lr.ph47.split.us.preheader, %bb.b
  %.146.us = phi ptr [ %i.p, %bb.b ], [ %0, %.lr.ph47.split.us.preheader ] ; 3 uses
  %.13145.us = phi i64 [ %i.q, %bb.b ], [ 0, %.lr.ph47.split.us.preheader ]
  %i.n = load i64, ptr %.146.us, align 8, !tbaa !19
  %i.o = ptrtoint ptr %.146.us to i64
  %.not.us = icmp eq i64 %i.n, %i.o
  br i1 %.not.us, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph47.split.us
  %i.p = getelementptr inbounds nuw i8, ptr %.146.us, i64 8
  %i.q = add nuw nsw i64 %.13145.us, 1            ; 2 uses
  %exitcond63.not = icmp eq i64 %i.q, %i.a
  br i1 %exitcond63.not, label %.loopexit, label %.lr.ph47.split.us, !llvm.loop !29

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.d
  %.044 = phi ptr [ %i.s, %bb.d ], [ %0, %.lr.ph ] ; 3 uses
  %.03043 = phi i64 [ %i.af, %bb.d ], [ 0, %.lr.ph ] ; 3 uses
  %i.r = ptrtoint ptr %.044 to i64
  store i64 %i.r, ptr %.044, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %.044, i64 8
  %i.t = and i64 %.03043, 65535
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.split
  %i.v = load i64, ptr @progress_full, align 8, !tbaa !19
  %i.w = mul i64 %i.v, %.03043
  %i.x = udiv i64 %i.w, %i.b                      ; 3 uses
  %i.y = load i64, ptr @progress_printed, align 8, !tbaa !19
  %.not.i = icmp eq i64 %i.x, %i.y
  br i1 %.not.i, label %memtest_progress_step.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.07.i = phi i64 [ %i.z, %.lr.ph.i ], [ 0, %bb.c ]
  %putchar.i = tail call i32 @putchar(i32 65)     ; 0 uses
  %i.z = add nuw i64 %.07.i, 1                    ; 2 uses
  %i.aa = load i64, ptr @progress_printed, align 8, !tbaa !19
  %i.ab = sub i64 %i.x, %i.aa
  %i.ac = icmp ult i64 %i.z, %i.ab
  br i1 %i.ac, label %.lr.ph.i, label %memtest_progress_step.exit, !llvm.loop !24

memtest_progress_step.exit:                       ; preds = %.lr.ph.i, %bb.c
  store i64 %i.x, ptr @progress_printed, align 8, !tbaa !19
  %i.ad = load ptr, ptr @stdout, align 8, !tbaa !21
  %i.ae = tail call i32 @fflush(ptr noundef %i.ad) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.split, %memtest_progress_step.exit
  %i.af = add nuw nsw i64 %.03043, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.a
  br i1 %exitcond.not, label %.lr.ph47, label %.lr.ph.split, !llvm.loop !30

.lr.ph47.split:                                   ; preds = %.lr.ph47, %bb.g
  %.146 = phi ptr [ %i.aj, %bb.g ], [ %0, %.lr.ph47 ] ; 4 uses
  %.13145 = phi i64 [ %i.ax, %bb.g ], [ 0, %.lr.ph47 ] ; 3 uses
  %i.ag = load i64, ptr %.146, align 8, !tbaa !19 ; 2 uses
  %i.ah = ptrtoint ptr %.146 to i64
  %.not = icmp eq i64 %i.ag, %i.ah
  br i1 %.not, label %bb.e, label %.split.us

.split.us:                                        ; preds = %.lr.ph47.split
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull %.146, i64 noundef %i.ag) ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

bb.e:                                             ; preds = %.lr.ph47.split
  %i.aj = getelementptr inbounds nuw i8, ptr %.146, i64 8
  %i.ak = and i64 %.13145, 65535
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.am = add nuw nsw i64 %.13145, %i.a
  %i.an = load i64, ptr @progress_full, align 8, !tbaa !19
  %i.ao = mul i64 %i.an, %i.am
  %i.ap = udiv i64 %i.ao, %i.m                    ; 3 uses
  %i.aq = load i64, ptr @progress_printed, align 8, !tbaa !19
  %.not.i37 = icmp eq i64 %i.ap, %i.aq
  br i1 %.not.i37, label %memtest_progress_step.exit41, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %bb.f, %.lr.ph.i38
  %.07.i39 = phi i64 [ %i.ar, %.lr.ph.i38 ], [ 0, %bb.f ]
  %putchar.i40 = tail call i32 @putchar(i32 65)   ; 0 uses
  %i.ar = add nuw i64 %.07.i39, 1                 ; 2 uses
  %i.as = load i64, ptr @progress_printed, align 8, !tbaa !19
  %i.at = sub i64 %i.ap, %i.as
  %i.au = icmp ult i64 %i.ar, %i.at
  br i1 %i.au, label %.lr.ph.i38, label %memtest_progress_step.exit41, !llvm.loop !24

memtest_progress_step.exit41:                     ; preds = %.lr.ph.i38, %bb.f
  store i64 %i.ap, ptr @progress_printed, align 8, !tbaa !19
  %i.av = load ptr, ptr @stdout, align 8, !tbaa !21
  %i.aw = tail call i32 @fflush(ptr noundef %i.av) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %memtest_progress_step.exit41
  %i.ax = add nuw nsw i64 %.13145, 1              ; 2 uses
  %exitcond62.not = icmp eq i64 %i.ax, %i.a
  br i1 %exitcond62.not, label %.loopexit, label %.lr.ph47.split, !llvm.loop !29

.loopexit:                                        ; preds = %bb.g, %.lr.ph47.split.us, %bb.b, %bb.a
  %.032 = phi i32 [ 0, %bb.a ], [ 1, %.lr.ph47.split.us ], [ 0, %bb.b ], [ 0, %bb.g ]
  ret i32 %.032
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @memtest_fill_random(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = lshr i64 %1, 4                           ; 3 uses
  %i.b = lshr i64 %1, 13                          ; 6 uses
  %i.c = and i64 %1, 4095
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.preheader, label %3, !prof !31

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.split, label %.preheader.split

.preheader.split:                                 ; preds = %.preheader
  %.not54 = icmp eq i32 %2, 0
  br i1 %.not54, label %.lr.ph.preheader, label %.lr.ph.us.a

.lr.ph.preheader:                                 ; preds = %.preheader.split
  %i.e = icmp eq i64 %i.b, 1
  %unroll_iter = and i64 %i.b, 2251799813685246
  %i.f = and i64 %1, 8192
  %lcmp.mod.not = icmp eq i64 %i.f, 0
  %lcmp.mod71 = trunc i64 %i.b to i1
  br label %.lr.ph

.lr.ph.us.a:                                      ; preds = %.preheader.split, %._crit_edge.split.us49
  %.044.us.a = phi i64 [ %i.o, %._crit_edge.split.us49 ], [ -3372857614747716250, %.preheader.split ]
  %.03743.us.a = phi i64 [ %i.ag, %._crit_edge.split.us49 ], [ 0, %.preheader.split ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.03743.us.a ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.a
  %i.i = mul nuw nsw i64 %.03743.us.a, %i.b
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us.a, %bb.d
  %.142.us45 = phi i64 [ %.044.us.a, %.lr.ph.us.a ], [ %i.o, %bb.d ] ; 2 uses
  %.03441.us46 = phi ptr [ %i.h, %.lr.ph.us.a ], [ %i.r, %bb.d ] ; 2 uses
  %.03540.us47 = phi ptr [ %i.g, %.lr.ph.us.a ], [ %i.q, %bb.d ] ; 2 uses
  %.03639.us48 = phi i64 [ 0, %.lr.ph.us.a ], [ %i.af, %bb.d ] ; 3 uses
  %i.j = lshr i64 %.142.us45, 12
  %i.k = xor i64 %i.j, %.142.us45                 ; 2 uses
  %i.l = shl i64 %i.k, 25
  %i.m = xor i64 %i.l, %i.k                       ; 2 uses
  %i.n = lshr i64 %i.m, 27
  %i.o = xor i64 %i.n, %i.m                       ; 3 uses
  %i.p = mul i64 %i.o, 2685821657736338717        ; 2 uses
  store i64 %i.p, ptr %.03441.us46, align 8, !tbaa !19
  store i64 %i.p, ptr %.03540.us47, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %.03540.us47, i64 4096
  %i.r = getelementptr inbounds nuw i8, ptr %.03441.us46, i64 4096
  %i.s = and i64 %.03639.us48, 65535
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = add nuw nsw i64 %.03639.us48, %i.i
  %i.v = load i64, ptr @progress_full, align 8, !tbaa !19
  %i.w = mul i64 %i.v, %i.u
  %i.x = udiv i64 %i.w, %i.a                      ; 3 uses
  %i.y = load i64, ptr @progress_printed, align 8, !tbaa !19
  %.not.i.us = icmp eq i64 %i.x, %i.y
  br i1 %.not.i.us, label %memtest_progress_step.exit.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.c, %.lr.ph.i.us
  %.07.i.us = phi i64 [ %i.z, %.lr.ph.i.us ], [ 0, %bb.c ]
  %putchar.i.us = tail call i32 @putchar(i32 82)  ; 0 uses
  %i.z = add nuw i64 %.07.i.us, 1                 ; 2 uses
  %i.aa = load i64, ptr @progress_printed, align 8, !tbaa !19
  %i.ab = sub i64 %i.x, %i.aa
  %i.ac = icmp ult i64 %i.z, %i.ab
  br i1 %i.ac, label %.lr.ph.i.us, label %memtest_progress_step.exit.us, !llvm.loop !24

memtest_progress_step.exit.us:                    ; preds = %.lr.ph.i.us, %bb.c
  store i64 %i.x, ptr @progress_printed, align 8, !tbaa !19
  %i.ad = load ptr, ptr @stdout, align 8, !tbaa !21
  %i.ae = tail call i32 @fflush(ptr noundef %i.ad) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %memtest_progress_step.exit.us, %bb.b
  %i.af = add nuw nsw i64 %.03639.us48, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.b
  br i1 %exitcond.not, label %._crit_edge.split.us49, label %bb.b, !llvm.loop !32

._crit_edge.split.us49:                           ; preds = %bb.d
  %i.ag = add nuw nsw i64 %.03743.us.a, 1         ; 2 uses
  %exitcond57.not = icmp eq i64 %i.ag, 512
  br i1 %exitcond57.not, label %.split, label %.lr.ph.us.a, !llvm.loop !33

3:                                                ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 126) #16
  tail call void @abort() #17
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge.split.us
  %.044 = phi i64 [ %.lcssa, %._crit_edge.split.us ], [ -3372857614747716250, %.lr.ph.preheader ] ; 2 uses
  %.03743 = phi i64 [ %i.bi, %._crit_edge.split.us ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.03743 ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.a ; 2 uses
  br i1 %i.e, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %.142.us = phi i64 [ %i.ax, %.lr.ph.new ], [ %.044, %.lr.ph ] ; 2 uses
  %.03441.us = phi ptr [ %i.ba, %.lr.ph.new ], [ %i.ai, %.lr.ph ] ; 3 uses
  %.03540.us = phi ptr [ %i.az, %.lr.ph.new ], [ %i.ah, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.aj = lshr i64 %.142.us, 12
  %i.ak = xor i64 %i.aj, %.142.us                 ; 2 uses
  %i.al = shl i64 %i.ak, 25
  %i.am = xor i64 %i.al, %i.ak                    ; 2 uses
  %i.an = lshr i64 %i.am, 27
  %i.ao = xor i64 %i.an, %i.am                    ; 3 uses
  %i.ap = mul i64 %i.ao, 2685821657736338717      ; 2 uses
  store i64 %i.ap, ptr %.03441.us, align 8, !tbaa !19
  store i64 %i.ap, ptr %.03540.us, align 8, !tbaa !19
  %i.aq = getelementptr inbounds nuw i8, ptr %.03540.us, i64 4096
  %i.ar = getelementptr inbounds nuw i8, ptr %.03441.us, i64 4096
  %i.as = lshr i64 %i.ao, 12
  %i.at = xor i64 %i.as, %i.ao                    ; 2 uses
  %i.au = shl i64 %i.at, 25
  %i.av = xor i64 %i.au, %i.at                    ; 2 uses
  %i.aw = lshr i64 %i.av, 27
  %i.ax = xor i64 %i.aw, %i.av                    ; 4 uses
  %i.ay = mul i64 %i.ax, 2685821657736338717      ; 2 uses
  store i64 %i.ay, ptr %i.ar, align 8, !tbaa !19
  store i64 %i.ay, ptr %i.aq, align 8, !tbaa !19
  %i.az = getelementptr inbounds nuw i8, ptr %.03540.us, i64 8192 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.03441.us, i64 8192 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.split.us.unr-lcssa, label %.lr.ph.new, !llvm.loop !32

._crit_edge.split.us.unr-lcssa:                   ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %._crit_edge.split.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.split.us.unr-lcssa, %.lr.ph
  %.142.us.epil.init = phi i64 [ %.044, %.lr.ph ], [ %i.ax, %._crit_edge.split.us.unr-lcssa ] ; 2 uses
  %.03441.us.epil.init = phi ptr [ %i.ai, %.lr.ph ], [ %i.ba, %._crit_edge.split.us.unr-lcssa ]
  %.03540.us.epil.init = phi ptr [ %i.ah, %.lr.ph ], [ %i.az, %._crit_edge.split.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod71)
  %i.bb = lshr i64 %.142.us.epil.init, 12
  %i.bc = xor i64 %i.bb, %.142.us.epil.init       ; 2 uses
  %i.bd = shl i64 %i.bc, 25
  %i.be = xor i64 %i.bd, %i.bc                    ; 2 uses
  %i.bf = lshr i64 %i.be, 27
  %i.bg = xor i64 %i.bf, %i.be                    ; 2 uses
  %i.bh = mul i64 %i.bg, 2685821657736338717      ; 2 uses
  store i64 %i.bh, ptr %.03441.us.epil.init, align 8, !tbaa !19
  store i64 %i.bh, ptr %.03540.us.epil.init, align 8, !tbaa !19
  br label %._crit_edge.split.us

._crit_edge.split.us:                             ; preds = %._crit_edge.split.us.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.ax, %._crit_edge.split.us.unr-lcssa ], [ %i.bg, %.epil.preheader ]
  %i.bi = add nuw nsw i64 %.03743, 1              ; 2 uses
  %exitcond59.not = icmp eq i64 %i.bi, 512
  br i1 %exitcond59.not, label %.split, label %.lr.ph, !llvm.loop !33

.split:                                           ; preds = %._crit_edge.split.us49, %._crit_edge.split.us, %.preheader
  ret void
}

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @memtest_fill_value(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef signext %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = lshr i64 %1, 4                           ; 3 uses
  %i.b = lshr i64 %1, 13                          ; 5 uses
  %i.c = and i64 %1, 4095
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.preheader, label %6, !prof !31

.preheader:                                       ; preds = %bb.a
  %.not49 = icmp eq i64 %i.b, 0
  %i.e = sext i8 %4 to i32
  br i1 %.not49, label %.split, label %.preheader.split

.preheader.split:                                 ; preds = %.preheader
  %.not50 = icmp eq i32 %5, 0
  br i1 %.not50, label %.lr.ph.preheader, label %.lr.ph.us.a

.lr.ph.preheader:                                 ; preds = %.preheader.split
  %xtraiter = and i64 %i.b, 7                     ; 3 uses
  %i.f = icmp ult i64 %1, 65536
  %unroll_iter = and i64 %i.b, 2251799813685240
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod62 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph

.lr.ph.us.a:                                      ; preds = %.preheader.split, %._crit_edge.split.us45
  %.041.us.a = phi i64 [ %i.ah, %._crit_edge.split.us45 ], [ 0, %.preheader.split ] ; 4 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.041.us.a ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.a
  %i.i = and i64 %.041.us.a, 1
  %.not.us.a = icmp eq i64 %i.i, 0
  %i.j = select i1 %.not.us.a, i64 %2, i64 %3     ; 4 uses
  %i.k = shl i64 %i.j, 16
  %i.l = shl i64 %i.j, 32
  %i.m = shl i64 %i.j, 48
  %i.n = or i64 %i.l, %i.k
  %i.o = or i64 %i.n, %i.m
  %i.p = or i64 %i.o, %i.j                        ; 2 uses
  %i.q = mul nuw nsw i64 %.041.us.a, %i.b
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us.a, %bb.d
  %.03440.us42 = phi ptr [ %i.h, %.lr.ph.us.a ], [ %i.s, %bb.d ] ; 2 uses
  %.03539.us43 = phi ptr [ %i.g, %.lr.ph.us.a ], [ %i.r, %bb.d ] ; 2 uses
  %.03638.us44 = phi i64 [ 0, %.lr.ph.us.a ], [ %i.ag, %bb.d ] ; 3 uses
  store i64 %i.p, ptr %.03440.us42, align 8, !tbaa !19
  store i64 %i.p, ptr %.03539.us43, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %.03539.us43, i64 4096
  %i.s = getelementptr inbounds nuw i8, ptr %.03440.us42, i64 4096
  %i.t = and i64 %.03638.us44, 65535
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = add nuw nsw i64 %.03638.us44, %i.q
  %i.w = load i64, ptr @progress_full, align 8, !tbaa !19
  %i.x = mul i64 %i.w, %i.v
  %i.y = udiv i64 %i.x, %i.a                      ; 3 uses
  %i.z = load i64, ptr @progress_printed, align 8, !tbaa !19
  %.not.i.us = icmp eq i64 %i.y, %i.z
  br i1 %.not.i.us, label %memtest_progress_step.exit.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.c, %.lr.ph.i.us
  %.07.i.us = phi i64 [ %i.aa, %.lr.ph.i.us ], [ 0, %bb.c ]
  %putchar.i.us = tail call i32 @putchar(i32 %i.e) ; 0 uses
  %i.aa = add nuw i64 %.07.i.us, 1                ; 2 uses
  %i.ab = load i64, ptr @progress_printed, align 8, !tbaa !19
  %i.ac = sub i64 %i.y, %i.ab
  %i.ad = icmp ult i64 %i.aa, %i.ac
  br i1 %i.ad, label %.lr.ph.i.us, label %memtest_progress_step.exit.us, !llvm.loop !24

memtest_progress_step.exit.us:                    ; preds = %.lr.ph.i.us, %bb.c
  store i64 %i.y, ptr @progress_printed, align 8, !tbaa !19
  %i.ae = load ptr, ptr @stdout, align 8, !tbaa !21
  %i.af = tail call i32 @fflush(ptr noundef %i.ae) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %memtest_progress_step.exit.us, %bb.b
  %i.ag = add nuw nsw i64 %.03638.us44, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.b
  br i1 %exitcond.not, label %._crit_edge.split.us45, label %bb.b, !llvm.loop !34

._crit_edge.split.us45:                           ; preds = %bb.d
  %i.ah = add nuw nsw i64 %.041.us.a, 1           ; 2 uses
  %exitcond52.not.a = icmp eq i64 %i.ah, 512
  br i1 %exitcond52.not.a, label %.split, label %.lr.ph.us.a, !llvm.loop !35

6:                                                ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 151) #16
  tail call void @abort() #17
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge.split.us
  %.041 = phi i64 [ %i.bk, %._crit_edge.split.us ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.041 ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.a ; 2 uses
  %i.ak = and i64 %.041, 1
  %.not = icmp eq i64 %i.ak, 0
  %i.al = select i1 %.not, i64 %2, i64 %3         ; 4 uses
  %i.am = shl i64 %i.al, 16
  %i.an = shl i64 %i.al, 32
  %i.ao = shl i64 %i.al, 48
  %i.ap = or i64 %i.an, %i.am
  %i.aq = or i64 %i.ap, %i.ao
  %i.ar = or i64 %i.aq, %i.al                     ; 18 uses
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %.03440.us = phi ptr [ %i.bh, %.lr.ph.new ], [ %i.aj, %.lr.ph ] ; 9 uses
  %.03539.us = phi ptr [ %i.bg, %.lr.ph.new ], [ %i.ai, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ %niter.next.7, %.lr.ph.new ], [ 0, %.lr.ph ]
  store i64 %i.ar, ptr %.03440.us, align 8, !tbaa !19
  store i64 %i.ar, ptr %.03539.us, align 8, !tbaa !19
  %i.as = getelementptr inbounds nuw i8, ptr %.03539.us, i64 4096
  %i.at = getelementptr inbounds nuw i8, ptr %.03440.us, i64 4096
  store i64 %i.ar, ptr %i.at, align 8, !tbaa !19
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !19
  %i.au = getelementptr inbounds nuw i8, ptr %.03539.us, i64 8192
  %i.av = getelementptr inbounds nuw i8, ptr %.03440.us, i64 8192
  store i64 %i.ar, ptr %i.av, align 8, !tbaa !19
  store i64 %i.ar, ptr %i.au, align 8, !tbaa !19
  %i.aw = getelementptr inbounds nuw i8, ptr %.03539.us, i64 12288
  %i.ax = getelementptr inbounds nuw i8, ptr %.03440.us, i64 12288
  store i64 %i.ar, ptr %i.ax, align 8, !tbaa !19
  store i64 %i.ar, ptr %i.aw, align 8, !tbaa !19
  %i.ay = getelementptr inbounds nuw i8, ptr %.03539.us, i64 16384
  %i.az = getelementptr inbounds nuw i8, ptr %.03440.us, i64 16384
  store i64 %i.ar, ptr %i.az, align 8, !tbaa !19
  store i64 %i.ar, ptr %i.ay, align 8, !tbaa !19
  %i.ba = getelementptr inbounds nuw i8, ptr %.03539.us, i64 20480
  %i.bb = getelementptr inbounds nuw i8, ptr %.03440.us, i64 20480
  store i64 %i.ar, ptr %i.bb, align 8, !tbaa !19
  store i64 %i.ar, ptr %i.ba, align 8, !tbaa !19
  %i.bc = getelementptr inbounds nuw i8, ptr %.03539.us, i64 24576
  %i.bd = getelementptr inbounds nuw i8, ptr %.03440.us, i64 24576
  store i64 %i.ar, ptr %i.bd, align 8, !tbaa !19
  store i64 %i.ar, ptr %i.bc, align 8, !tbaa !19
  %i.be = getelementptr inbounds nuw i8, ptr %.03539.us, i64 28672
  %i.bf = getelementptr inbounds nuw i8, ptr %.03440.us, i64 28672
  store i64 %i.ar, ptr %i.bf, align 8, !tbaa !19
  store i64 %i.ar, ptr %i.be, align 8, !tbaa !19
  %i.bg = getelementptr inbounds nuw i8, ptr %.03539.us, i64 32768 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.03440.us, i64 32768 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.split.us.unr-lcssa, label %.lr.ph.new, !llvm.loop !34

._crit_edge.split.us.unr-lcssa:                   ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %._crit_edge.split.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.split.us.unr-lcssa, %.lr.ph
  %.03440.us.epil.init = phi ptr [ %i.aj, %.lr.ph ], [ %i.bh, %._crit_edge.split.us.unr-lcssa ]
  %.03539.us.epil.init = phi ptr [ %i.ai, %.lr.ph ], [ %i.bg, %._crit_edge.split.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod62)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.03440.us.epil = phi ptr [ %.03440.us.epil.init, %.epil.preheader ], [ %i.bj, %bb.e ] ; 2 uses
  %.03539.us.epil = phi ptr [ %.03539.us.epil.init, %.epil.preheader ], [ %i.bi, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  store i64 %i.ar, ptr %.03440.us.epil, align 8, !tbaa !19
  store i64 %i.ar, ptr %.03539.us.epil, align 8, !tbaa !19
  %i.bi = getelementptr inbounds nuw i8, ptr %.03539.us.epil, i64 4096
  %i.bj = getelementptr inbounds nuw i8, ptr %.03440.us.epil, i64 4096
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.split.us, label %bb.e, !llvm.loop !36

._crit_edge.split.us:                             ; preds = %bb.e, %._crit_edge.split.us.unr-lcssa
  %i.bk = add nuw nsw i64 %.041, 1                ; 2 uses
  %exitcond54.not = icmp eq i64 %i.bk, 512
  br i1 %exitcond54.not, label %.split, label %.lr.ph, !llvm.loop !35

.split:                                           ; preds = %._crit_edge.split.us45, %._crit_edge.split.us, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @memtest_compare(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = lshr i64 %1, 4                           ; 5 uses
  %i.b = and i64 %1, 4095
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 178) #16
  tail call void @abort() #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not38 = icmp eq i64 %i.a, 0
  br i1 %.not38, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.a ; 2 uses
  %.not39 = icmp eq i32 %2, 0                     ; 2 uses
  br i1 %.not39, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.d
  %.034.us = phi ptr [ %i.t, %bb.d ], [ %i.d, %.lr.ph ] ; 9 uses
  %.02233.us = phi ptr [ %i.s, %bb.d ], [ %0, %.lr.ph ] ; 9 uses
  %.02332.us = phi i64 [ %i.u, %bb.d ], [ 0, %.lr.ph ]
  %i.e = load i64, ptr %.02233.us, align 8, !tbaa !19 ; 2 uses
  %i.f = load i64, ptr %.034.us, align 8, !tbaa !19 ; 2 uses
  %.not.us = icmp eq i64 %i.e, %i.f
  br i1 %.not.us, label %.lr.ph.split.us.1, label %.split.us

.lr.ph.split.us.1:                                ; preds = %.lr.ph.split.us
  %i.g = getelementptr inbounds nuw i8, ptr %.02233.us, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %.034.us, i64 8
  %i.i = load i64, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %i.j = load i64, ptr %i.h, align 8, !tbaa !19   ; 2 uses
  %.not.us.1 = icmp eq i64 %i.i, %i.j
  br i1 %.not.us.1, label %.lr.ph.split.us.2, label %.split.us.loopexit.split.loop.exit111

.lr.ph.split.us.2:                                ; preds = %.lr.ph.split.us.1
  %i.k = getelementptr inbounds nuw i8, ptr %.02233.us, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %.034.us, i64 16
  %i.m = load i64, ptr %i.k, align 8, !tbaa !19   ; 2 uses
  %i.n = load i64, ptr %i.l, align 8, !tbaa !19   ; 2 uses
  %.not.us.2 = icmp eq i64 %i.m, %i.n
  br i1 %.not.us.2, label %.lr.ph.split.us.3, label %.split.us.loopexit.split.loop.exit106

.lr.ph.split.us.3:                                ; preds = %.lr.ph.split.us.2
  %i.o = getelementptr inbounds nuw i8, ptr %.02233.us, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %.034.us, i64 24
  %i.q = load i64, ptr %i.o, align 8, !tbaa !19   ; 2 uses
  %i.r = load i64, ptr %i.p, align 8, !tbaa !19   ; 2 uses
  %.not.us.3 = icmp eq i64 %i.q, %i.r
  br i1 %.not.us.3, label %bb.d, label %.split.us.loopexit.split.loop.exit

bb.d:                                             ; preds = %.lr.ph.split.us.3
  %i.s = getelementptr inbounds nuw i8, ptr %.02233.us, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %.034.us, i64 32
  %i.u = add nuw nsw i64 %.02332.us, 4            ; 2 uses
  %exitcond53.not.3 = icmp eq i64 %i.u, %i.a
  br i1 %exitcond53.not.3, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !38

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.h
  %.034 = phi ptr [ %i.af, %bb.h ], [ %i.d, %.lr.ph ] ; 3 uses
  %.02233 = phi ptr [ %i.ae, %bb.h ], [ %0, %.lr.ph ] ; 3 uses
  %.02332 = phi i64 [ %i.as, %bb.h ], [ 0, %.lr.ph ] ; 3 uses
  %i.v = load i64, ptr %.02233, align 8, !tbaa !19 ; 2 uses
  %i.w = load i64, ptr %.034, align 8, !tbaa !19  ; 2 uses
  %.not = icmp eq i64 %i.v, %i.w
  br i1 %.not, label %bb.f, label %.split.us

.split.us.loopexit.split.loop.exit:               ; preds = %.lr.ph.split.us.3
  %i.x = getelementptr inbounds nuw i8, ptr %.02233.us, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %.034.us, i64 24
  br label %.split.us

.split.us.loopexit.split.loop.exit106:            ; preds = %.lr.ph.split.us.2
  %i.z = getelementptr inbounds nuw i8, ptr %.02233.us, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %.034.us, i64 16
  br label %.split.us

.split.us.loopexit.split.loop.exit111:            ; preds = %.lr.ph.split.us.1
  %i.ab = getelementptr inbounds nuw i8, ptr %.02233.us, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.034.us, i64 8
  br label %.split.us

.split.us:                                        ; preds = %.lr.ph.split, %.split.us.loopexit.split.loop.exit, %.split.us.loopexit.split.loop.exit106, %.split.us.loopexit.split.loop.exit111, %.lr.ph.split.us
  %.us-phi = phi i64 [ %i.e, %.lr.ph.split.us ], [ %i.i, %.split.us.loopexit.split.loop.exit111 ], [ %i.m, %.split.us.loopexit.split.loop.exit106 ], [ %i.q, %.split.us.loopexit.split.loop.exit ], [ %i.v, %.lr.ph.split ]
  %.us-phi35 = phi i64 [ %i.f, %.lr.ph.split.us ], [ %i.j, %.split.us.loopexit.split.loop.exit111 ], [ %i.n, %.split.us.loopexit.split.loop.exit106 ], [ %i.r, %.split.us.loopexit.split.loop.exit ], [ %i.w, %.lr.ph.split ]
  %.us-phi36 = phi ptr [ %.02233.us, %.lr.ph.split.us ], [ %i.ab, %.split.us.loopexit.split.loop.exit111 ], [ %i.z, %.split.us.loopexit.split.loop.exit106 ], [ %i.x, %.split.us.loopexit.split.loop.exit ], [ %.02233, %.lr.ph.split ]
  %.us-phi37 = phi ptr [ %.034.us, %.lr.ph.split.us ], [ %i.ac, %.split.us.loopexit.split.loop.exit111 ], [ %i.aa, %.split.us.loopexit.split.loop.exit106 ], [ %i.y, %.split.us.loopexit.split.loop.exit ], [ %.034, %.lr.ph.split ]
  br i1 %.not39, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.split.us
  %i.ad = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull %.us-phi36, ptr noundef nonnull %.us-phi37, i64 noundef %.us-phi, i64 noundef %.us-phi35) ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

bb.f:                                             ; preds = %.lr.ph.split
  %i.ae = getelementptr inbounds nuw i8, ptr %.02233, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.034, i64 8
  %i.ag = and i64 %.02332, 65535
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = load i64, ptr @progress_full, align 8, !tbaa !19
  %i.aj = mul i64 %i.ai, %.02332
  %i.ak = udiv i64 %i.aj, %i.a                    ; 3 uses
  %i.al = load i64, ptr @progress_printed, align 8, !tbaa !19
  %.not.i = icmp eq i64 %i.ak, %i.al
  br i1 %.not.i, label %memtest_progress_step.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.07.i = phi i64 [ %i.am, %.lr.ph.i ], [ 0, %bb.g ]
  %putchar.i = tail call i32 @putchar(i32 61)     ; 0 uses
  %i.am = add nuw i64 %.07.i, 1                   ; 2 uses
  %i.an = load i64, ptr @progress_printed, align 8, !tbaa !19
  %i.ao = sub i64 %i.ak, %i.an
  %i.ap = icmp ult i64 %i.am, %i.ao
  br i1 %i.ap, label %.lr.ph.i, label %memtest_progress_step.exit, !llvm.loop !24

memtest_progress_step.exit:                       ; preds = %.lr.ph.i, %bb.g
  store i64 %i.ak, ptr @progress_printed, align 8, !tbaa !19
  %i.aq = load ptr, ptr @stdout, align 8, !tbaa !21
  %i.ar = tail call i32 @fflush(ptr noundef %i.aq) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %memtest_progress_step.exit
  %i.as = add nuw nsw i64 %.02332, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.as, %i.a
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !38

.loopexit:                                        ; preds = %bb.h, %bb.d, %bb.c, %.split.us
  %.024 = phi i32 [ 1, %.split.us ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.h ]
  ret i32 %.024
}

; Function Attrs: nounwind uwtable
define dso_local i32 @memtest_compare_times(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq i32 %4, 0
  %i.b = lshr i64 %1, 4                           ; 3 uses
  %.not38.i = icmp eq i64 %i.b, 0
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  br i1 %.not, label %.lr.ph.split.us, label %memtest_compare.exit.thread15

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.d = and i64 %1, 4095
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.split.us.split, label %.split21.us, !prof !31

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  br i1 %.not38.i, label %._crit_edge, label %.split.us

.split.us:                                        ; preds = %.lr.ph.split.us.split, %memtest_compare.exit.us
  %.019.us = phi i32 [ %i.w, %memtest_compare.exit.us ], [ 0, %.lr.ph.split.us.split ]
  %.01018.us = phi i32 [ %i.x, %memtest_compare.exit.us ], [ 0, %.lr.ph.split.us.split ]
  br label %.lr.ph.split.us.i.us

.lr.ph.split.us.i.us:                             ; preds = %bb.b, %.split.us
  %.034.us.i.us = phi ptr [ %i.c, %.split.us ], [ %i.u, %bb.b ] ; 5 uses
  %.02233.us.i.us = phi ptr [ %0, %.split.us ], [ %i.t, %bb.b ] ; 5 uses
  %.02332.us.i.us = phi i64 [ 0, %.split.us ], [ %i.v, %bb.b ]
  %i.f = load i64, ptr %.02233.us.i.us, align 8, !tbaa !19
  %i.g = load i64, ptr %.034.us.i.us, align 8, !tbaa !19
  %.not.us.i.us = icmp eq i64 %i.f, %i.g
  br i1 %.not.us.i.us, label %.lr.ph.split.us.i.us.1, label %memtest_compare.exit.us

.lr.ph.split.us.i.us.1:                           ; preds = %.lr.ph.split.us.i.us
  %i.h = getelementptr inbounds nuw i8, ptr %.02233.us.i.us, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.034.us.i.us, i64 8
  %i.j = load i64, ptr %i.h, align 8, !tbaa !19
  %i.k = load i64, ptr %i.i, align 8, !tbaa !19
  %.not.us.i.us.1 = icmp eq i64 %i.j, %i.k
  br i1 %.not.us.i.us.1, label %.lr.ph.split.us.i.us.2, label %memtest_compare.exit.us

.lr.ph.split.us.i.us.2:                           ; preds = %.lr.ph.split.us.i.us.1
  %i.l = getelementptr inbounds nuw i8, ptr %.02233.us.i.us, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %.034.us.i.us, i64 16
  %i.n = load i64, ptr %i.l, align 8, !tbaa !19
  %i.o = load i64, ptr %i.m, align 8, !tbaa !19
  %.not.us.i.us.2 = icmp eq i64 %i.n, %i.o
  br i1 %.not.us.i.us.2, label %.lr.ph.split.us.i.us.3, label %memtest_compare.exit.us

.lr.ph.split.us.i.us.3:                           ; preds = %.lr.ph.split.us.i.us.2
  %i.p = getelementptr inbounds nuw i8, ptr %.02233.us.i.us, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %.034.us.i.us, i64 24
  %i.r = load i64, ptr %i.p, align 8, !tbaa !19
  %i.s = load i64, ptr %i.q, align 8, !tbaa !19
  %.not.us.i.us.3 = icmp eq i64 %i.r, %i.s
  br i1 %.not.us.i.us.3, label %bb.b, label %memtest_compare.exit.us
end_hunk_0
