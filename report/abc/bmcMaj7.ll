inline.NumInlined: 184
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Exa7_ChooseInputVars:bb.a
  %.val16.i = load ptr, ptr %i.l, align 8, !tbaa !12
  %i.m = zext nneg i32 %.val22.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.critedge2.i, %.lr.ph24.i
  %indvars.iv26.i = phi i64 [ 0, %.lr.ph24.i ], [ %indvars.iv.next27.i, %.critedge2.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.val16.i, i64 %indvars.iv26.i ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 4        ; 2 uses
  %.val1720.i = load i32, ptr %i.o, align 4, !tbaa !14
  %i.p = icmp sgt i32 %.val1720.i, 0
  br i1 %i.p, label %.lr.ph.i, label %.critedge2.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.q = getelementptr i8, ptr %i.n, i64 8
  %.val18.i = load ptr, ptr %i.q, align 8, !tbaa !17 ; 5 uses
  %.val17.i = load i32, ptr %i.o, align 4, !tbaa !14 ; 2 uses
  %i.r = tail call i32 @llvm.smax.i32(i32 %.val17.i, i32 1)
  %smax = zext nneg i32 %i.r to i64               ; 2 uses
  %xtraiter = and i64 %smax, 3                    ; 3 uses
  %i.s = icmp slt i32 %.val17.i, 4
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %smax, 2147483644
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.e ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.e ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.val18.i, i64 %indvars.iv.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !20
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !20
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 4, !tbaa !20
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.val18.i, i64 %indvars.iv.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !20
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ac ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !20
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !20
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.val18.i, i64 %indvars.iv.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !20
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !20
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !20
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.val18.i, i64 %indvars.iv.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !20
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !20
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !20
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.critedge2.i.loopexit.unr-lcssa, label %bb.e, !llvm.loop !25

.critedge2.i.loopexit.unr-lcssa:                  ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge2.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge2.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %.critedge2.i.loopexit.unr-lcssa ]
  %lcmp.mod59 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod59)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.f ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.val18.i, i64 %indvars.iv.i.epil
  %i.av = load i32, ptr %i.au, align 4, !tbaa !20
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !20
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !20
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge2.i, label %bb.f, !llvm.loop !27

.critedge2.i:                                     ; preds = %.critedge2.i.loopexit.unr-lcssa, %bb.f, %bb.d
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next27.i, %i.m
  br i1 %exitcond.not, label %Exa7_CountInputVars.exit, label %bb.d, !llvm.loop !26

Exa7_CountInputVars.exit:                         ; preds = %.critedge2.i, %Vec_IntStart.exit.i
  br i1 %i.f, label %.lr.ph.i17, label %Vec_IntFind.exit

.lr.ph.i17:                                       ; preds = %Exa7_CountInputVars.exit, %bb.g
  %indvars.iv.i18 = phi i64 [ %indvars.iv.next.i19, %bb.g ], [ 0, %Exa7_CountInputVars.exit ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i18
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !20
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i17
  %indvars.iv.next.i19 = add nuw nsw i64 %indvars.iv.i18, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i19, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Vec_IntFind.exit, label %.lr.ph.i17, !llvm.loop !29

Vec_IntFind.exit:                                 ; preds = %Exa7_CountInputVars.exit, %bb.g
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %.thread23, label %Vec_IntFree.exit.thread39

Vec_IntFree.exit.thread39:                        ; preds = %Vec_IntFind.exit
  tail call void @free(ptr noundef nonnull %i.i) #23
  br label %.thread23

bb.h:                                             ; preds = %.lr.ph.i17
  tail call void @free(ptr noundef nonnull %i.i) #23
  %i.bc = load i32, ptr %i.g, align 8, !tbaa !8   ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre.i.i = load ptr, ptr %i.be, align 8, !tbaa !12 ; 3 uses
  br i1 %i.bd, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.h
  %i.bf = zext nneg i32 %i.bc to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.j
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.j ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !17 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.bi, null
  br i1 %.not15.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  tail call void @free(ptr noundef nonnull %i.bi) #23
  store ptr null, ptr %i.bh, align 8, !tbaa !17
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond27.not = icmp eq i64 %indvars.iv.next.i.i, %i.bf
  br i1 %exitcond27.not, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !30

._crit_edge.i.i:                                  ; preds = %bb.h
  %.not.i.i20 = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i20, label %.thread22, label %.loopexit

.loopexit:                                        ; preds = %bb.j, %._crit_edge.i.i
  tail call void @free(ptr noundef nonnull %.pre.i.i) #23
  br label %.thread22

.thread22:                                        ; preds = %._crit_edge.i.i, %.loopexit
  tail call void @free(ptr noundef nonnull %i.g) #23
  %i.bj = add nuw nsw i32 %.01426, 1              ; 2 uses
  %exitcond28.not = icmp eq i32 %i.bj, 1000
  br i1 %exitcond28.not, label %.thread23, label %bb.b, !llvm.loop !31

.thread23:                                        ; preds = %.thread22, %Vec_IntFind.exit, %Vec_IntFree.exit.thread39
  %i.bk = phi ptr [ %i.g, %Vec_IntFind.exit ], [ %i.g, %Vec_IntFree.exit.thread39 ], [ null, %.thread22 ]
  ret ptr %i.bk
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Exa7_ChooseInputVars2(i32 %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 4 uses
  %i.b = add i32 %1, -1
  %or.cond.i.i = icmp ult i32 %i.b, 7
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 8, i32 %1 ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.a, align 8, !tbaa !8
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_WecStart.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %spec.store.select.i.i to i64
  %i.d = tail call noalias ptr @calloc(i64 noundef %i.c, i64 noundef 16) #22
  br label %Vec_WecStart.exit

Vec_WecStart.exit:                                ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.g, align 8, !tbaa !12
  store i32 %1, ptr %i.f, align 4, !tbaa !13
  %i.h = icmp sgt i32 %1, 0
  %i.i = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.h, %i.i
  br i1 %or.cond, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %Vec_WecStart.exit
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv27 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next28, %._crit_edge ] ; 2 uses
  %.01724 = phi i32 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %4 = sext i32 %.01724 to i64
  %5 = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv27 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  br label %bb.c

._crit_edge:                                      ; preds = %bb.n
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1 ; 2 uses
  %indvars.iv.next = add i32 %.01724, %2
  %exitcond30.not = icmp eq i64 %indvars.iv.next28, %wide.trip.count
  br i1 %exitcond30.not, label %.critedge, label %.lr.ph, !llvm.loop !32

bb.c:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ %4, %.lr.ph ], [ %indvars.iv.next27, %bb.n ] ; 2 uses
  %.022 = phi i32 [ 0, %.lr.ph ], [ %7, %bb.n ]
  %i.k = getelementptr inbounds i8, ptr %3, i64 %indvars.iv
  %i.l = load i8, ptr %i.k, align 1, !tbaa !33    ; 2 uses
  switch i8 %i.l, label %bb.d [
    i8 95, label %bb.n
    i8 42, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = sext i8 %i.l to i32
  %i.n = add nsw i32 %i.m, -97
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.o = phi i32 [ %i.n, %bb.d ], [ -1, %bb.c ]
  %i.p = load i32, ptr %i.j, align 4, !tbaa !14   ; 7 uses
  %i.q = load i32, ptr %5, align 8, !tbaa !21
  %i.r = icmp eq i32 %i.p, %i.q
  br i1 %i.r, label %bb.f, label %.Vec_IntPush.exit_crit_edge

.Vec_IntPush.exit_crit_edge:                      ; preds = %bb.e
  %.pre = load ptr, ptr %6, align 8, !tbaa !17
  br label %Vec_IntPush.exit

bb.f:                                             ; preds = %bb.e
  %i.s = icmp slt i32 %i.p, 16
  br i1 %i.s, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %6, align 8, !tbaa !17     ; 2 uses
  %.not9.i.i = icmp eq ptr %i.t, null
  br i1 %.not9.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.t, i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i

bb.i:                                             ; preds = %bb.g
  %i.v = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntGrow.exit11.sink.split.i

bb.j:                                             ; preds = %bb.f
  %i.w = icmp samesign ult i32 %i.p, 1073741823
  %i.x = shl nuw nsw i32 %i.p, 1
  %spec.select.i = select i1 %i.w, i32 %i.x, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.p, %spec.select.i
  %.pre31 = load ptr, ptr %6, align 8, !tbaa !17  ; 3 uses
  br i1 %.not.i9.i, label %bb.k, label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.j
  %.not9.i10.i = icmp eq ptr %.pre31, null
  %i.y = zext nneg i32 %spec.select.i to i64
  %i.z = shl nuw nsw i64 %i.y, 2                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = tail call ptr @realloc(ptr noundef nonnull %.pre31, i64 noundef %i.z) #24
  br label %Vec_IntGrow.exit11.sink.split.i

bb.m:                                             ; preds = %bb.k
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.z) #21
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.l, %bb.m, %bb.h, %bb.i
  %i.ac = phi ptr [ %i.v, %bb.i ], [ %i.u, %bb.h ], [ %i.aa, %bb.l ], [ %i.ab, %bb.m ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.i ], [ 16, %bb.h ], [ %spec.select.i, %bb.l ], [ %spec.select.i, %bb.m ]
  store ptr %i.ac, ptr %6, align 8, !tbaa !17
  store i32 %spec.select.sink.i, ptr %5, align 8, !tbaa !21
  %.pre32 = load i32, ptr %i.j, align 4, !tbaa !14
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.Vec_IntPush.exit_crit_edge, %bb.j, %Vec_IntGrow.exit11.sink.split.i
  %i.ad = phi i32 [ %i.p, %.Vec_IntPush.exit_crit_edge ], [ %i.p, %bb.j ], [ %.pre32, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ae = phi ptr [ %.pre, %.Vec_IntPush.exit_crit_edge ], [ %.pre31, %bb.j ], [ %i.ac, %Vec_IntGrow.exit11.sink.split.i ]
  %i.af = add nsw i32 %i.ad, 1
  store i32 %i.af, ptr %i.j, align 4, !tbaa !14
  %i.ag = sext i32 %i.ad to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ag
  store i32 %i.o, ptr %i.ah, align 4, !tbaa !20
  br label %bb.n

bb.n:                                             ; preds = %bb.c, %Vec_IntPush.exit
  %7 = add nuw nsw i32 %.022, 1                   ; 2 uses
  %indvars.iv.next27 = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %7, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !34

.critedge:                                        ; preds = %._crit_edge, %Vec_WecStart.exit
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define void @Exa7_ManPrint(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !20
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %1) ; 0 uses
  %i.c = load ptr, ptr @stdout, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !37
  call void @Extra_PrintBinary(ptr noundef %i.c, ptr noundef nonnull %i.a, i32 noundef %i.e) #23
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 131416 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45
  %i.h = call i32 @cadical_solver_nvars(ptr noundef %i.g) #23
  %i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.h) ; 0 uses
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !45
  %i.k = call i32 @cadical_solver_nclauses(ptr noundef %i.j) #23
  %i.l = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.k) ; 0 uses
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !45
  %i.n = call i32 @cadical_solver_nconflicts(ptr noundef %i.m) #23
  %i.o = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.n) ; 0 uses
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.4)
  %i.p = sitofp i64 %3 to double
  %i.q = fdiv double %i.p, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.15, double noundef %i.q)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare void @Extra_PrintBinary(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @cadical_solver_nvars(ptr noundef) local_unnamed_addr #2

declare i32 @cadical_solver_nclauses(ptr noundef) local_unnamed_addr #2

declare i32 @cadical_solver_nconflicts(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @Exa7_ManExactSynthesis(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca [4 x i64], align 16               ; 8 uses
  %i.b = alloca [128 x i8], align 16              ; 6 uses
  %i.c = alloca [132 x i8], align 16              ; 5 uses
  %i.d = alloca [160 x i8], align 16              ; 4 uses
  %i.e = alloca [128 x i8], align 16              ; 6 uses
  %i.f = alloca [132 x i8], align 16              ; 5 uses
  %i.g = alloca [160 x i8], align 16              ; 4 uses
  %i.h = alloca [1000 x i8], align 16             ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %i.i = alloca [8 x ptr], align 16               ; 7 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %i.j = alloca [3 x i32], align 4                ; 15 uses
  %i.k = alloca [16 x i32], align 16              ; 16 uses
  %i.l = alloca [16 x i32], align 16              ; 11 uses
  %i.m = alloca [16 x i32], align 16              ; 16 uses
  %i.n = alloca [64 x i32], align 16              ; 23 uses
  %i.o = alloca [2 x i32], align 4                ; 10 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = load i32, ptr %i.p, align 8, !tbaa !46
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = tail call i32 @Exa7_ManExactSynthesisIter(ptr noundef nonnull %0)
  br label %bb.lb

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.s = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #23
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %Abc_Clock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i64, ptr %4, align 8, !tbaa !49
  %i.v = mul nsw i64 %i.u, 1000000
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !52
  %i.y = sdiv i64 %i.x, 1000
  %i.z = add nsw i64 %i.y, %i.v
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ %i.z, %bb.d ], [ -1, %bb.c ]  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.aa = load i32, ptr %0, align 8, !tbaa !53    ; 12 uses
  %i.ab = icmp slt i32 %i.aa, 7
  %i.ac = add nsw i32 %i.aa, -6
  %i.ad = shl nuw i32 1, %i.ac
  %i.ae = select i1 %i.ab, i32 1, i32 %i.ad
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = call noalias ptr @calloc(i64 noundef %i.af, i64 noundef 8) #22 ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !54 ; 3 uses
  %.not108 = icmp eq ptr %i.ai, null
  br i1 %.not108, label %bb.l, label %bb.e

bb.e:                                             ; preds = %Abc_Clock.exit
  %i.aj = call noalias ptr @calloc(i64 noundef %i.af, i64 noundef 8) #22 ; 7 uses
  %i.ak = shl nuw i32 1, %i.aa                    ; 3 uses
  %.not.i = icmp eq i32 %i.aa, 31
  br i1 %.not.i, label %Abc_TtSymFunGenerate.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.e
  %i.al = icmp sgt i32 %i.aa, 0
  br i1 %i.al, label %.preheader.us.preheader.i, label %.preheader.lr.ph.split.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %smax22.i = call i32 @llvm.smax.i32(i32 %i.ak, i32 1)
  %min.iters.check = icmp ult i32 %i.aa, 8
  %n.vec = and i32 %i.aa, 2147483640              ; 3 uses
  %cmp.n = icmp eq i32 %i.aa, %n.vec
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bb.g, %.preheader.us.preheader.i
  %.018.us.i = phi i32 [ %i.bg, %bb.g ], [ 0, %.preheader.us.preheader.i ] ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.018.us.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi868 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <4 x i32> %vec.ind, splat (i32 4)
  %i.am = lshr <4 x i32> %broadcast.splat, %vec.ind
  %i.an = lshr <4 x i32> %broadcast.splat, %step.add
  %i.ao = and <4 x i32> %i.am, splat (i32 1)
  %i.ap = and <4 x i32> %i.an, splat (i32 1)
  %i.aq = add <4 x i32> %i.ao, %vec.phi           ; 2 uses
  %i.ar = add <4 x i32> %i.ap, %vec.phi868        ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 8)
  %i.as = icmp eq i32 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ar, %i.aq
  %i.at = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.i, %middle.block
  %.01417.us.i.ph = phi i32 [ 0, %.preheader.us.i ], [ %i.at, %middle.block ]
  %.01516.us.i.ph = phi i32 [ 0, %.preheader.us.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01417.us.i = phi i32 [ %i.aw, %scalar.ph ], [ %.01417.us.i.ph, %scalar.ph.preheader ]
  %.01516.us.i = phi i32 [ %i.ax, %scalar.ph ], [ %.01516.us.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.au = lshr i32 %.018.us.i, %.01516.us.i
  %i.av = and i32 %i.au, 1
  %i.aw = add nuw nsw i32 %i.av, %.01417.us.i     ; 2 uses
  %i.ax = add nuw nsw i32 %.01516.us.i, 1         ; 2 uses
  %exitcond21.not.i = icmp eq i32 %i.ax, %i.aa
  br i1 %exitcond21.not.i, label %._crit_edge.us.i, label %scalar.ph, !llvm.loop !58

bb.f:                                             ; preds = %._crit_edge.us.i
  %i.ay = and i32 %.018.us.i, 63
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = shl nuw i64 1, %i.az
  %i.bb = lshr i32 %.018.us.i, 6
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.bc ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !59
  %i.bf = xor i64 %i.be, %i.ba
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !59
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.us.i, %bb.f
  %i.bg = add nuw nsw i32 %.018.us.i, 1           ; 2 uses
  %exitcond23.not.i = icmp eq i32 %i.bg, %smax22.i
  br i1 %exitcond23.not.i, label %Abc_TtSymFunGenerate.exit, label %.preheader.us.i, !llvm.loop !60

._crit_edge.us.i:                                 ; preds = %scalar.ph, %middle.block
  %.lcssa867 = phi i32 [ %i.at, %middle.block ], [ %i.aw, %scalar.ph ]
  %i.bh = zext nneg i32 %.lcssa867 to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !33
  %i.bk = icmp eq i8 %i.bj, 49
  br i1 %i.bk, label %bb.f, label %bb.g

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.bl = load i8, ptr %i.ai, align 1, !tbaa !33
  %i.bm = icmp eq i8 %i.bl, 49
  br i1 %i.bm, label %.preheader.preheader.i, label %Abc_TtSymFunGenerate.exit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.split.i
  %smax.i = call i32 @llvm.smax.i32(i32 %i.ak, i32 1) ; 3 uses
end_hunk_0
