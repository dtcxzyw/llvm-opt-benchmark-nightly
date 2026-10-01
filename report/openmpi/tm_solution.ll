Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/tm_solution?download=true
inline.NumInlined: 19
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@tm_display_other_heuristics:bb.a
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4) ; 0 uses
  %i.g = tail call fastcc double @display_sol(ptr noundef %0, ptr noundef %1, ptr noundef %i.e, i32 noundef %2) ; 0 uses
  %i.h = tail call i32 @tm_get_verbose_level() #14
  %i.i = icmp sgt i32 %i.b, 0
  br i1 %i.i, label %.lr.ph.i, label %tm_map_RR.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.m = icmp sgt i32 %i.h, 5
  br i1 %i.m, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i
  %wide.trip.count32.i = zext nneg i32 %i.b to i64
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.d, %.lr.ph.split.us.preheader.i
  %indvars.iv29.i = phi i64 [ 0, %.lr.ph.split.us.preheader.i ], [ %indvars.iv.next30.i, %bb.d ] ; 3 uses
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !32   ; 2 uses
  %.not.us.i = icmp eq ptr %i.n, null
  %i.o = trunc nuw nsw i64 %indvars.iv29.i to i32 ; 3 uses
  br i1 %.not.us.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.i
  %i.p = load i32, ptr %i.k, align 8, !tbaa !33
  %i.q = srem i32 %i.o, %i.p
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !21
  %.pre = load i32, ptr %i.l, align 8, !tbaa !34
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.split.us.i
  %i.u = load i32, ptr %i.l, align 8, !tbaa !34   ; 2 uses
  %i.v = srem i32 %i.o, %i.u
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = phi i32 [ %i.u, %bb.c ], [ %.pre, %bb.b ]
  %.sink.i = phi i32 [ %i.v, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv29.i
  store i32 %.sink.i, ptr %i.x, align 4, !tbaa !21
  %i.y = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.o, i32 noundef %.sink.i, i32 noundef %i.w) ; 0 uses
  %indvars.iv.next30.i = add nuw nsw i64 %indvars.iv29.i, 1 ; 2 uses
  %exitcond33.not.i = icmp eq i64 %indvars.iv.next30.i, %wide.trip.count32.i
  br i1 %exitcond33.not.i, label %tm_map_RR.exit, label %.lr.ph.split.us.i, !llvm.loop !0

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !32   ; 6 uses
  %i.aa = icmp eq ptr %i.z, null
  %wide.trip.count27.i = zext nneg i32 %i.b to i64 ; 5 uses
  br i1 %i.aa, label %.lr.ph.split.split.us.i.preheader, label %.lr.ph.split.split.preheader.i.preheader

.lr.ph.split.split.preheader.i.preheader:         ; preds = %.lr.ph.split.i
  %i.ab = load i32, ptr %i.k, align 8, !tbaa !33  ; 5 uses
  %xtraiter = and i64 %wide.trip.count27.i, 3     ; 3 uses
  %i.ac = icmp ult i32 %i.b, 4
  br i1 %i.ac, label %.lr.ph.split.split.preheader.i.epil.preheader, label %.lr.ph.split.split.preheader.i.preheader.new

.lr.ph.split.split.preheader.i.preheader.new:     ; preds = %.lr.ph.split.split.preheader.i.preheader
  %unroll_iter = and i64 %wide.trip.count27.i, 2147483644
  br label %.lr.ph.split.split.preheader.i

.lr.ph.split.split.us.i.preheader:                ; preds = %.lr.ph.split.i
  %i.ad = load i32, ptr %i.l, align 8, !tbaa !34  ; 2 uses
  %min.iters.check = icmp ult i32 %i.b, 4
  br i1 %min.iters.check, label %.lr.ph.split.split.us.i.preheader26, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.split.us.i.preheader
  %n.vec = and i64 %wide.trip.count27.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ad, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ae = srem <4 x i32> %vec.ind, %broadcast.splat
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index
  store <4 x i32> %i.ae, ptr %i.af, align 4, !tbaa !21
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count27.i
  br i1 %cmp.n, label %tm_map_RR.exit, label %.lr.ph.split.split.us.i.preheader26

.lr.ph.split.split.us.i.preheader26:              ; preds = %.lr.ph.split.split.us.i.preheader, %middle.block
  %indvars.iv24.i.ph = phi i64 [ 0, %.lr.ph.split.split.us.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split.split.us.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.split.us.i.preheader26, %.lr.ph.split.split.us.i
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i, %.lr.ph.split.split.us.i ], [ %indvars.iv24.i.ph, %.lr.ph.split.split.us.i.preheader26 ] ; 3 uses
  %i.ah = trunc nuw nsw i64 %indvars.iv24.i to i32
  %i.ai = srem i32 %i.ah, %i.ad
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv24.i
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !21
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1 ; 2 uses
  %exitcond28.not.i = icmp eq i64 %indvars.iv.next25.i, %wide.trip.count27.i
  br i1 %exitcond28.not.i, label %tm_map_RR.exit, label %.lr.ph.split.split.us.i, !llvm.loop !64

.lr.ph.split.split.preheader.i:                   ; preds = %.lr.ph.split.split.preheader.i, %.lr.ph.split.split.preheader.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.split.preheader.i.preheader.new ], [ %indvars.iv.next.i.3, %.lr.ph.split.split.preheader.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.split.split.preheader.i.preheader.new ], [ %niter.next.3, %.lr.ph.split.split.preheader.i ]
  %i.ak = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.al = srem i32 %i.ak, %i.ab
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !21
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !21
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.aq = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.ar = srem i32 %i.aq, %i.ab
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !21
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.i
  store i32 %i.au, ptr %i.av, align 4, !tbaa !21
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.aw = trunc nuw nsw i64 %indvars.iv.next.i.1 to i32
  %i.ax = srem i32 %i.aw, %i.ab
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !21
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.i.1
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !21
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.bc = trunc nuw nsw i64 %indvars.iv.next.i.2 to i32
  %i.bd = srem i32 %i.bc, %i.ab
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !21
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.i.2
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !21
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %tm_map_RR.exit.loopexit28.unr-lcssa, label %.lr.ph.split.split.preheader.i, !llvm.loop !1

tm_map_RR.exit.loopexit28.unr-lcssa:              ; preds = %.lr.ph.split.split.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %tm_map_RR.exit, label %.lr.ph.split.split.preheader.i.epil.preheader

.lr.ph.split.split.preheader.i.epil.preheader:    ; preds = %tm_map_RR.exit.loopexit28.unr-lcssa, %.lr.ph.split.split.preheader.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.split.split.preheader.i.preheader ], [ %indvars.iv.next.i.3, %tm_map_RR.exit.loopexit28.unr-lcssa ]
  %lcmp.mod29 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod29)
  br label %.lr.ph.split.split.preheader.i.epil

.lr.ph.split.split.preheader.i.epil:              ; preds = %.lr.ph.split.split.preheader.i.epil, %.lr.ph.split.split.preheader.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph.split.split.preheader.i.epil ], [ %indvars.iv.i.epil.init, %.lr.ph.split.split.preheader.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.split.preheader.i.epil ], [ 0, %.lr.ph.split.split.preheader.i.epil.preheader ]
  %i.bi = trunc nuw nsw i64 %indvars.iv.i.epil to i32
  %i.bj = srem i32 %i.bi, %i.ab
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !21
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i.epil
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !21
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %tm_map_RR.exit, label %.lr.ph.split.split.preheader.i.epil, !llvm.loop !65

tm_map_RR.exit:                                   ; preds = %tm_map_RR.exit.loopexit28.unr-lcssa, %.lr.ph.split.split.preheader.i.epil, %.lr.ph.split.split.us.i, %bb.d, %middle.block, %bb.a
  %i.bo = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5) ; 0 uses
  %i.bp = tail call fastcc double @display_sol(ptr noundef %0, ptr noundef %1, ptr noundef %i.e, i32 noundef %2) ; 0 uses
  tail call void @free(ptr noundef %i.e) #14
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden void @tm_map_Packed(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = tail call i32 @tm_get_verbose_level() #14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = sext i32 %i.d to i64                     ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !70   ; 2 uses
  %i.h = getelementptr [8 x i8], ptr %i.g, i64 %i.f
  %i.i = getelementptr i8, ptr %i.h, i64 -8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !71   ; 4 uses
  %.not35 = icmp eq i64 %i.j, 0
  br i1 %.not35, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.fr36 = freeze i32 %i.b
  %i.n = icmp sgt i32 %.fr36, 5
  br i1 %i.n, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %.pre40.pre = load ptr, ptr %i.m, align 8, !tbaa !39
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %tm_in_tab.exit.thread.us
  %.pre40.a = phi ptr [ %.pre4043, %tm_in_tab.exit.thread.us ], [ %.pre40.pre, %.lr.ph.split.us.preheader ] ; 4 uses
  %i.o = phi ptr [ %i.af, %tm_in_tab.exit.thread.us ], [ %i.g, %.lr.ph.split.us.preheader ] ; 2 uses
  %.027.us = phi i32 [ %.1.us, %tm_in_tab.exit.thread.us ], [ 0, %.lr.ph.split.us.preheader ] ; 5 uses
  %.02026.us = phi i64 [ %i.ag, %tm_in_tab.exit.thread.us ], [ 0, %.lr.ph.split.us.preheader ] ; 5 uses
  %3 = load ptr, ptr %i.k, align 8, !tbaa !32     ; 2 uses
  %.not.us = icmp eq ptr %3, null
  br i1 %.not.us, label %.lr.ph.split.us.tm_in_tab.exit.us_crit_edge, label %bb.b

.lr.ph.split.us.tm_in_tab.exit.us_crit_edge:      ; preds = %.lr.ph.split.us
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.pre40.a, i64 %.02026.us
  %.pre41.a = load i32, ptr %.phi.trans.insert, align 4, !tbaa !21
  br label %tm_in_tab.exit.us

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.p = load i32, ptr %i.l, align 8, !tbaa !33   ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.pre40.a, i64 %.02026.us
  %i.r = load i32, ptr %i.q, align 4, !tbaa !21   ; 2 uses
  %i.s = icmp sgt i32 %i.p, 0
  br i1 %i.s, label %.lr.ph.preheader.i.us, label %tm_in_tab.exit.thread.us

.lr.ph.preheader.i.us:                            ; preds = %bb.b
  %wide.trip.count.i.us = zext nneg i32 %i.p to i64
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.c, %.lr.ph.preheader.i.us
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph.preheader.i.us ], [ %indvars.iv.next.i.us, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i.us
  %i.u = load i32, ptr %i.t, align 4, !tbaa !21
  %i.v = icmp eq i32 %i.u, %i.r
  br i1 %i.v, label %tm_in_tab.exit.us, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.us
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i.us
  br i1 %exitcond.not.i.us, label %tm_in_tab.exit.thread.us, label %.lr.ph.i.us, !llvm.loop !2

tm_in_tab.exit.us:                                ; preds = %.lr.ph.i.us, %.lr.ph.split.us.tm_in_tab.exit.us_crit_edge
  %i.w = phi i32 [ %.pre41.a, %.lr.ph.split.us.tm_in_tab.exit.us_crit_edge ], [ %i.r, %.lr.ph.i.us ]
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i64 noundef %.02026.us, i32 noundef %.027.us, i32 noundef %i.w) ; 0 uses
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !39   ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.02026.us
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !21
  %i.ab = add nsw i32 %.027.us, 1                 ; 2 uses
  %i.ac = sext i32 %.027.us to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ac
  store i32 %i.aa, ptr %i.ad, align 4, !tbaa !21
  %i.ae = icmp eq i32 %i.ab, %1
  br i1 %i.ae, label %._crit_edge, label %tm_in_tab.exit.us.tm_in_tab.exit.thread.us_crit_edge

tm_in_tab.exit.us.tm_in_tab.exit.thread.us_crit_edge: ; preds = %tm_in_tab.exit.us
  %.pre42 = load ptr, ptr %i.e, align 8, !tbaa !70
  br label %tm_in_tab.exit.thread.us

tm_in_tab.exit.thread.us:                         ; preds = %bb.c, %tm_in_tab.exit.us.tm_in_tab.exit.thread.us_crit_edge, %bb.b
  %.pre4043 = phi ptr [ %i.y, %tm_in_tab.exit.us.tm_in_tab.exit.thread.us_crit_edge ], [ %.pre40.a, %bb.b ], [ %.pre40.a, %bb.c ]
  %i.af = phi ptr [ %.pre42, %tm_in_tab.exit.us.tm_in_tab.exit.thread.us_crit_edge ], [ %i.o, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %.1.us = phi i32 [ %i.ab, %tm_in_tab.exit.us.tm_in_tab.exit.thread.us_crit_edge ], [ %.027.us, %bb.b ], [ %.027.us, %bb.c ]
  %i.ag = add nuw i64 %.02026.us, 1               ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %i.af, i64 %i.f
  %i.ai = getelementptr i8, ptr %i.ah, i64 -8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !71
  %i.ak = icmp ult i64 %i.ag, %i.aj
  br i1 %i.ak, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !66

.lr.ph.split:                                     ; preds = %.lr.ph
  %4 = load ptr, ptr %i.k, align 8, !tbaa !32     ; 2 uses
  %i.al = icmp eq ptr %4, null
  %i.am = load ptr, ptr %i.m, align 8, !tbaa !39  ; 4 uses
  br i1 %i.al, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.an = ptrtoaddr ptr %i.am to i64
  %i.ao = zext i32 %1 to i64                      ; 2 uses
  %i.ap = add i64 %i.j, -1
  %i.aq = add nsw i64 %i.ao, -1
  %i.ar = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 %i.aq)
  %i.as = add i64 %i.ar, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.as, 8
  %i.at = sub i64 %i.an, %i.a
  %diff.check = icmp ugt i64 %i.at, -32
  %or.cond62 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond62, label %tm_in_tab.exit.us32.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.split.us
  %n.vec = and i64 %i.as, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load = load <4 x i32>, ptr %i.au, align 4, !tbaa !21
  %wide.load61 = load <4 x i32>, ptr %i.av, align 4, !tbaa !21
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <4 x i32> %wide.load, ptr %i.aw, align 4, !tbaa !21
  store <4 x i32> %wide.load61, ptr %i.ax, align 4, !tbaa !21
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %tm_in_tab.exit.us32.preheader

tm_in_tab.exit.us32.preheader:                    ; preds = %.lr.ph.split.split.us, %middle.block
  %.02026.us30.ph = phi i64 [ 0, %.lr.ph.split.split.us ], [ %n.vec, %middle.block ]
  br label %tm_in_tab.exit.us32

tm_in_tab.exit.us32:                              ; preds = %tm_in_tab.exit.us32.preheader, %tm_in_tab.exit.us32
  %.02026.us30 = phi i64 [ %i.bb, %tm_in_tab.exit.us32 ], [ %.02026.us30.ph, %tm_in_tab.exit.us32.preheader ] ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.02026.us30
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !21
  %i.bb = add nuw nsw i64 %.02026.us30, 1         ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02026.us30
  store i32 %i.ba, ptr %i.bc, align 4, !tbaa !21
  %i.bd = icmp ne i64 %i.bb, %i.ao
  %i.be = icmp ult i64 %i.bb, %i.j
  %or.cond = and i1 %i.bd, %i.be
  br i1 %or.cond, label %tm_in_tab.exit.us32, label %._crit_edge, !llvm.loop !68

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split, %tm_in_tab.exit.thread
  %.027 = phi i32 [ %.1, %tm_in_tab.exit.thread ], [ 0, %.lr.ph.split ] ; 4 uses
  %.02026 = phi i64 [ %i.bq, %tm_in_tab.exit.thread ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.bf = load i32, ptr %i.l, align 8, !tbaa !33  ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.02026
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !21 ; 2 uses
  %i.bi = icmp sgt i32 %i.bf, 0
  br i1 %i.bi, label %.lr.ph.preheader.i, label %tm_in_tab.exit.thread

.lr.ph.preheader.i:                               ; preds = %.lr.ph.split.split.preheader
  %wide.trip.count.i = zext nneg i32 %i.bf to i64
  br label %.lr.ph.i

bb.d:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %tm_in_tab.exit.thread, label %.lr.ph.i, !llvm.loop !2

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !21
  %i.bl = icmp eq i32 %i.bk, %i.bh
  br i1 %i.bl, label %tm_in_tab.exit, label %bb.d

tm_in_tab.exit:                                   ; preds = %.lr.ph.i
  %i.bm = add nsw i32 %.027, 1                    ; 2 uses
  %i.bn = sext i32 %.027 to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bn
  store i32 %i.bh, ptr %i.bo, align 4, !tbaa !21
  %i.bp = icmp eq i32 %i.bm, %1
  br i1 %i.bp, label %._crit_edge, label %tm_in_tab.exit.thread

tm_in_tab.exit.thread:                            ; preds = %bb.d, %.lr.ph.split.split.preheader, %tm_in_tab.exit
  %.1 = phi i32 [ %i.bm, %tm_in_tab.exit ], [ %.027, %.lr.ph.split.split.preheader ], [ %.027, %bb.d ]
  %i.bq = add nuw i64 %.02026, 1                  ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.j
  br i1 %i.br, label %.lr.ph.split.split.preheader, label %._crit_edge, !llvm.loop !69

._crit_edge:                                      ; preds = %tm_in_tab.exit.thread, %tm_in_tab.exit, %tm_in_tab.exit.us32, %tm_in_tab.exit.thread.us, %tm_in_tab.exit.us, %middle.block, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @tm_map_RR(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @tm_get_verbose_level() #14
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 88         ; 9 uses
  %i.f = icmp sgt i32 %i.a, 5
  br i1 %i.f, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count32 = zext nneg i32 %1 to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.d
  %indvars.iv29 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next30, %bb.d ] ; 3 uses
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %.not.us = icmp eq ptr %i.g, null
  %i.h = trunc nuw nsw i64 %indvars.iv29 to i32   ; 3 uses
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.i = load i32, ptr %i.d, align 8, !tbaa !33
  %i.j = srem i32 %i.h, %i.i
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !21
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.n = load i32, ptr %i.e, align 8, !tbaa !34
  %i.o = srem i32 %i.h, %i.n
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ %i.o, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv29
  store i32 %.sink, ptr %i.p, align 4, !tbaa !21
  %i.q = load i32, ptr %i.e, align 8, !tbaa !34
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.h, i32 noundef %.sink, i32 noundef %i.q) ; 0 uses
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1 ; 2 uses
  %exitcond33.not = icmp eq i64 %indvars.iv.next30, %wide.trip.count32
  br i1 %exitcond33.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !0

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !32   ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  %wide.trip.count27 = zext nneg i32 %1 to i64    ; 8 uses
  br i1 %i.t, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split.preheader.preheader

.lr.ph.split.split.preheader.preheader:           ; preds = %.lr.ph.split
  %xtraiter = and i64 %wide.trip.count27, 1
  %i.u = icmp eq i32 %1, 1
  br i1 %i.u, label %.lr.ph.split.split.preheader.epil.preheader, label %.lr.ph.split.split.preheader.preheader.new

.lr.ph.split.split.preheader.preheader.new:       ; preds = %.lr.ph.split.split.preheader.preheader
  %unroll_iter = and i64 %wide.trip.count27, 2147483646
  br label %.lr.ph.split.split.preheader

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %.lr.ph.split.split.us.preheader42, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.split.us.preheader
  %i.v = shl nuw nsw i64 %wide.trip.count27, 2
  %i.w = getelementptr i8, ptr %2, i64 %i.v
  %i.x = getelementptr i8, ptr %0, i64 92
  %bound0 = icmp ult ptr %2, %i.x
  %bound1 = icmp ult ptr %i.e, %i.w
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.split.split.us.preheader42, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count27, 2147483644 ; 3 uses
  %i.y = load i32, ptr %i.e, align 8, !tbaa !34, !alias.scope !78
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.y, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.z = srem <4 x i32> %vec.ind, %broadcast.splat
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  store <4 x i32> %i.z, ptr %i.aa, align 4, !tbaa !21, !alias.scope !79, !noalias !78
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count27
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.split.us.preheader42

.lr.ph.split.split.us.preheader42:                ; preds = %vector.memcheck, %.lr.ph.split.split.us.preheader, %middle.block
  %indvars.iv24.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.split.us.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter46 = and i64 %wide.trip.count27, 3     ; 2 uses
  %lcmp.mod47.not = icmp eq i64 %xtraiter46, 0
  br i1 %lcmp.mod47.not, label %.lr.ph.split.split.us.prol.loopexit, label %.lr.ph.split.split.us.prol

.lr.ph.split.split.us.prol:                       ; preds = %.lr.ph.split.split.us.preheader42, %.lr.ph.split.split.us.prol
  %indvars.iv24.prol = phi i64 [ %indvars.iv.next25.prol, %.lr.ph.split.split.us.prol ], [ %indvars.iv24.ph, %.lr.ph.split.split.us.preheader42 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.split.us.prol ], [ 0, %.lr.ph.split.split.us.preheader42 ]
  %i.ac = load i32, ptr %i.e, align 8, !tbaa !34
  %i.ad = trunc nuw nsw i64 %indvars.iv24.prol to i32
  %i.ae = srem i32 %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv24.prol
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !21
  %indvars.iv.next25.prol = add nuw nsw i64 %indvars.iv24.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter46
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.split.us.prol.loopexit, label %.lr.ph.split.split.us.prol, !llvm.loop !76

.lr.ph.split.split.us.prol.loopexit:              ; preds = %.lr.ph.split.split.us.prol, %.lr.ph.split.split.us.preheader42
  %indvars.iv24.unr = phi i64 [ %indvars.iv24.ph, %.lr.ph.split.split.us.preheader42 ], [ %indvars.iv.next25.prol, %.lr.ph.split.split.us.prol ]
  %i.ag = sub nsw i64 %indvars.iv24.ph, %wide.trip.count27
  %i.ah = icmp ugt i64 %i.ag, -4
  br i1 %i.ah, label %._crit_edge, label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.prol.loopexit, %.lr.ph.split.split.us
  %indvars.iv24 = phi i64 [ %indvars.iv.next25.3, %.lr.ph.split.split.us ], [ %indvars.iv24.unr, %.lr.ph.split.split.us.prol.loopexit ] ; 6 uses
  %i.ai = load i32, ptr %i.e, align 8, !tbaa !34
  %i.aj = trunc nuw nsw i64 %indvars.iv24 to i32
  %i.ak = srem i32 %i.aj, %i.ai
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv24
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !21
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %i.am = load i32, ptr %i.e, align 8, !tbaa !34
  %i.an = trunc nuw nsw i64 %indvars.iv.next25 to i32
  %i.ao = srem i32 %i.an, %i.am
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next25
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !21
  %indvars.iv.next25.1 = add nuw nsw i64 %indvars.iv24, 2 ; 2 uses
  %i.aq = load i32, ptr %i.e, align 8, !tbaa !34
  %i.ar = trunc nuw nsw i64 %indvars.iv.next25.1 to i32
  %i.as = srem i32 %i.ar, %i.aq
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next25.1
  store i32 %i.as, ptr %i.at, align 4, !tbaa !21
  %indvars.iv.next25.2 = add nuw nsw i64 %indvars.iv24, 3 ; 2 uses
  %i.au = load i32, ptr %i.e, align 8, !tbaa !34
  %i.av = trunc nuw nsw i64 %indvars.iv.next25.2 to i32
  %i.aw = srem i32 %i.av, %i.au
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next25.2
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !21
  %indvars.iv.next25.3 = add nuw nsw i64 %indvars.iv24, 4 ; 2 uses
  %exitcond28.not.3 = icmp eq i64 %indvars.iv.next25.3, %wide.trip.count27
  br i1 %exitcond28.not.3, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !77

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split.split.preheader, %.lr.ph.split.split.preheader.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.split.preheader.preheader.new ], [ %indvars.iv.next.1, %.lr.ph.split.split.preheader ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.split.split.preheader.preheader.new ], [ %niter.next.1, %.lr.ph.split.split.preheader ]
  %i.ay = trunc nuw nsw i64 %indvars.iv to i32
  %i.az = load i32, ptr %i.d, align 8, !tbaa !33
  %i.ba = srem i32 %i.ay, %i.az
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !21
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !21
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bf = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.bg = load i32, ptr %i.d, align 8, !tbaa !33
  %i.bh = srem i32 %i.bf, %i.bg
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !21
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !21
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit44.unr-lcssa, label %.lr.ph.split.split.preheader, !llvm.loop !1

._crit_edge.loopexit44.unr-lcssa:                 ; preds = %.lr.ph.split.split.preheader
end_hunk_0
