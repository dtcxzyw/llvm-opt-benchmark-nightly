Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/signest?download=true
inline.NumInlined: 16
inline.NumDeleted: 1
begin_hunk_0_@signest_test:bb.a
bb.r:                                             ; preds = %.preheader150, %bb.z
  %i.bb = phi i32 [ 2, %.preheader150 ], [ %i.bp, %bb.z ] ; 4 uses
  %.1160 = phi i32 [ 1, %.preheader150 ], [ %i.bo, %bb.z ] ; 9 uses
  %.5159 = phi i32 [ %.4162, %.preheader150 ], [ %.7, %bb.z ] ; 4 uses
  %.5101158 = phi i32 [ %.4100161, %.preheader150 ], [ %.7103, %bb.z ] ; 4 uses
  call void @sched_lock() #9
  switch i32 %.1160, label %bb.s [
    i32 19, label %bb.t
    i32 18, label %bb.t
    i32 9, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.bc = load i32, ptr @g_waiterpid, align 4
  %i.bd = call i32 @pthread_kill(i32 noundef %i.bc, i32 noundef %.1160) #9 ; 0 uses
  %i.be = add nsw i32 %.5159, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.r, %bb.r, %bb.s
  %.6 = phi i32 [ %i.be, %bb.s ], [ %.5159, %bb.r ], [ %.5159, %bb.r ], [ %.5159, %bb.r ] ; 4 uses
  switch i32 %i.bb, label %bb.u [
    i32 19, label %bb.v
    i32 18, label %bb.v
    i32 9, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.bf = load i32, ptr @g_waiterpid, align 4
  %i.bg = call i32 @pthread_kill(i32 noundef %i.bf, i32 noundef %i.bb) #9 ; 0 uses
  %i.bh = add nsw i32 %.5101158, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.t, %bb.t, %bb.u
  %.6102 = phi i32 [ %i.bh, %bb.u ], [ %.5101158, %bb.t ], [ %.5101158, %bb.t ], [ %.5101158, %bb.t ] ; 4 uses
  call void @sched_unlock() #9
  call fastcc void @wait_finish(i32 noundef %.1160) #11
  call void @sched_lock() #9
  switch i32 %i.bb, label %bb.w [
    i32 19, label %bb.x
    i32 18, label %bb.x
    i32 9, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.bi = load i32, ptr @g_waiterpid, align 4
  %i.bj = call i32 @pthread_kill(i32 noundef %i.bi, i32 noundef %i.bb) #9 ; 0 uses
  %i.bk = add nsw i32 %.6102, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.v, %bb.v, %bb.w
  %.7103 = phi i32 [ %i.bk, %bb.w ], [ %.6102, %bb.v ], [ %.6102, %bb.v ], [ %.6102, %bb.v ] ; 5 uses
  switch i32 %.1160, label %bb.y [
    i32 19, label %bb.z
    i32 18, label %bb.z
    i32 9, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  %i.bl = load i32, ptr @g_waiterpid, align 4
  %i.bm = call i32 @pthread_kill(i32 noundef %i.bl, i32 noundef %.1160) #9 ; 0 uses
  %i.bn = add nsw i32 %.6, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.x, %bb.x, %bb.y
  %.7 = phi i32 [ %i.bn, %bb.y ], [ %.6, %bb.x ], [ %.6, %bb.x ], [ %.6, %bb.x ] ; 5 uses
  call void @sched_unlock() #9
  call fastcc void @wait_finish(i32 noundef %.1160) #11
  %i.bo = add nuw nsw i32 %.1160, 2
  %i.bp = add nuw nsw i32 %.1160, 3
  %i.bq = icmp samesign ult i32 %.1160, 60
  br i1 %i.bq, label %bb.r, label %bb.aa, !llvm.loop !12

bb.aa:                                            ; preds = %bb.z
  %i.br = add nuw nsw i32 %.190163, 1             ; 2 uses
  %exitcond171.not = icmp eq i32 %i.br, 10
  br i1 %exitcond171.not, label %bb.ab, label %.preheader150, !llvm.loop !13

bb.ab:                                            ; preds = %bb.aa
  %i.bs = add nsw i32 %.7, %.7103
  %i.bt = load volatile i32, ptr @g_odd_handled, align 4
  %i.bu = load volatile i32, ptr @g_even_handled, align 4
  %i.bv = add nsw i32 %i.bu, %i.bt
  %i.bw = load volatile i32, ptr @g_odd_nested, align 4
  %i.bx = load volatile i32, ptr @g_even_nested, align 4
  %i.by = add nsw i32 %i.bx, %i.bw
  %puts114 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.bz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.bs, i32 noundef %.7, i32 noundef %.7103) #11 ; 0 uses
  %i.ca = load volatile i32, ptr @g_odd_handled, align 4
  %i.cb = load volatile i32, ptr @g_even_handled, align 4
  %i.cc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.bv, i32 noundef %i.ca, i32 noundef %i.cb) #11 ; 0 uses
  %i.cd = load volatile i32, ptr @g_odd_nested, align 4
  %i.ce = load volatile i32, ptr @g_even_nested, align 4
  %i.cf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.by, i32 noundef %i.cd, i32 noundef %i.ce) #11 ; 0 uses
  br label %.preheader149

.preheader149:                                    ; preds = %bb.ab, %bb.al
  %.291169 = phi i32 [ 0, %bb.ab ], [ %i.da, %bb.al ]
  %.8168 = phi i32 [ %.7, %bb.ab ], [ %.11, %bb.al ]
  %.8104167 = phi i32 [ %.7103, %bb.ab ], [ %.11107, %bb.al ]
  br label %bb.ac

bb.ac:                                            ; preds = %.preheader149, %bb.ak
  %i.cg = phi i32 [ 2, %.preheader149 ], [ %i.cy, %bb.ak ] ; 4 uses
  %.2166 = phi i32 [ 1, %.preheader149 ], [ %i.cx, %bb.ak ] ; 9 uses
  %.9165 = phi i32 [ %.8168, %.preheader149 ], [ %.11, %bb.ak ] ; 4 uses
  %.9105164 = phi i32 [ %.8104167, %.preheader149 ], [ %.11107, %bb.ak ] ; 4 uses
  call void @sched_lock() #9
  %i.ch = load i32, ptr @g_interferepid, align 4
  %i.ci = call i32 @pthread_kill(i32 noundef %i.ch, i32 noundef 63) #9 ; 0 uses
  switch i32 %.2166, label %bb.ad [
    i32 19, label %bb.ae
    i32 18, label %bb.ae
    i32 9, label %bb.ae
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.cj = load i32, ptr @g_waiterpid, align 4
  %i.ck = call i32 @pthread_kill(i32 noundef %i.cj, i32 noundef %.2166) #9 ; 0 uses
  %i.cl = add nsw i32 %.9165, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ac, %bb.ac, %bb.ad
  %.10 = phi i32 [ %i.cl, %bb.ad ], [ %.9165, %bb.ac ], [ %.9165, %bb.ac ], [ %.9165, %bb.ac ] ; 4 uses
  %i.cm = call i32 @sem_post(ptr noundef nonnull @g_interferer_sem) #9 ; 0 uses
  switch i32 %i.cg, label %bb.af [
    i32 19, label %bb.ag
    i32 18, label %bb.ag
    i32 9, label %bb.ag
  ]

bb.af:                                            ; preds = %bb.ae
  %i.cn = load i32, ptr @g_waiterpid, align 4
  %i.co = call i32 @pthread_kill(i32 noundef %i.cn, i32 noundef %i.cg) #9 ; 0 uses
  %i.cp = add nsw i32 %.9105164, 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.ae, %bb.ae, %bb.af
  %.10106 = phi i32 [ %i.cp, %bb.af ], [ %.9105164, %bb.ae ], [ %.9105164, %bb.ae ], [ %.9105164, %bb.ae ] ; 4 uses
  call void @sched_unlock() #9
  call fastcc void @wait_finish(i32 noundef %.2166) #11
  call void @sched_lock() #9
  switch i32 %i.cg, label %bb.ah [
    i32 19, label %bb.ai
    i32 18, label %bb.ai
    i32 9, label %bb.ai
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.cq = load i32, ptr @g_waiterpid, align 4
  %i.cr = call i32 @pthread_kill(i32 noundef %i.cq, i32 noundef %i.cg) #9 ; 0 uses
  %i.cs = add nsw i32 %.10106, 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ag, %bb.ag, %bb.ah
  %.11107 = phi i32 [ %i.cs, %bb.ah ], [ %.10106, %bb.ag ], [ %.10106, %bb.ag ], [ %.10106, %bb.ag ] ; 6 uses
  %i.ct = call i32 @sem_post(ptr noundef nonnull @g_interferer_sem) #9 ; 0 uses
  switch i32 %.2166, label %bb.aj [
    i32 19, label %bb.ak
    i32 18, label %bb.ak
    i32 9, label %bb.ak
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.cu = load i32, ptr @g_waiterpid, align 4
  %i.cv = call i32 @pthread_kill(i32 noundef %i.cu, i32 noundef %.2166) #9 ; 0 uses
  %i.cw = add nsw i32 %.10, 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.ai, %bb.ai, %bb.aj
  %.11 = phi i32 [ %i.cw, %bb.aj ], [ %.10, %bb.ai ], [ %.10, %bb.ai ], [ %.10, %bb.ai ] ; 6 uses
  call void @sched_unlock() #9
  call fastcc void @wait_finish(i32 noundef %.2166) #11
  %i.cx = add nuw nsw i32 %.2166, 2
  %i.cy = add nuw nsw i32 %.2166, 3
  %i.cz = icmp samesign ult i32 %.2166, 60
  br i1 %i.cz, label %bb.ac, label %bb.al, !llvm.loop !14

bb.al:                                            ; preds = %bb.ak
  %i.da = add nuw nsw i32 %.291169, 1             ; 2 uses
  %exitcond172.not = icmp eq i32 %i.da, 10
  br i1 %exitcond172.not, label %bb.am, label %.preheader149, !llvm.loop !15

bb.am:                                            ; preds = %bb.al
  store volatile i8 1, ptr @g_done, align 1
  %i.db = call i32 @sem_post(ptr noundef nonnull @g_waiter_sem) #9 ; 0 uses
  %i.dc = call i32 @sem_post(ptr noundef nonnull @g_interferer_sem) #9 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %bb.am
  %i.dd = call i32 @usleep(i32 noundef 500000) #9 ; 0 uses
  %i.de = load volatile i8, ptr @g_waiter_running, align 1, !range !8, !noundef !9
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %.critedge.backedge, label %bb.an

bb.an:                                            ; preds = %.critedge
  %i.dg = load volatile i8, ptr @g_interferer_running, align 1, !range !8, !noundef !9
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %.critedge.backedge, label %bb.ao

.critedge.backedge:                               ; preds = %bb.an, %.critedge
  br label %.critedge

bb.ao:                                            ; preds = %bb.an
  %i.di = add nsw i32 %.11, %.11107               ; 3 uses
  %i.dj = load volatile i32, ptr @g_odd_handled, align 4
  %i.dk = load volatile i32, ptr @g_even_handled, align 4
  %i.dl = add nsw i32 %i.dk, %i.dj                ; 3 uses
  %i.dm = load volatile i32, ptr @g_odd_nested, align 4
  %i.dn = load volatile i32, ptr @g_even_nested, align 4
  %i.do = add nsw i32 %i.dn, %i.dm
  %puts115 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %i.dp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.di, i32 noundef %.11, i32 noundef %.11107) #11 ; 0 uses
  %i.dq = load volatile i32, ptr @g_odd_handled, align 4
  %i.dr = load volatile i32, ptr @g_even_handled, align 4
  %i.ds = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.dl, i32 noundef %i.dq, i32 noundef %i.dr) #11 ; 0 uses
  %i.dt = load volatile i32, ptr @g_odd_nested, align 4
  %i.du = load volatile i32, ptr @g_even_nested, align 4
  %i.dv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.do, i32 noundef %i.dt, i32 noundef %i.du) #11 ; 0 uses
  %i.dw = load volatile i8, ptr @g_waiter_running, align 1, !range !8, !noundef !9
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %puts121 = call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  call void @__assert(ptr noundef nonnull @.str.1, i32 noundef 548, ptr noundef nonnull @.str.2) #10
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.dy = load volatile i8, ptr @g_interferer_running, align 1, !range !8, !noundef !9
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %puts120 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  call void @__assert(ptr noundef nonnull @.str.1, i32 noundef 554, ptr noundef nonnull @.str.2) #10
  unreachable

bb.as:                                            ; preds = %bb.aq
  %.not116 = icmp eq i32 %i.di, %i.dl
  br i1 %.not116, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ea = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.dl, i32 noundef %i.di) #11 ; 0 uses
  call void @__assert(ptr noundef nonnull @.str.1, i32 noundef 561, ptr noundef nonnull @.str.2) #10
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.eb = load volatile i32, ptr @g_odd_handled, align 4
  %.not117 = icmp eq i32 %.11, %i.eb
  br i1 %.not117, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ec = load volatile i32, ptr @g_odd_handled, align 4
  %i.ed = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.ec, i32 noundef %.11) #11 ; 0 uses
  call void @__assert(ptr noundef nonnull @.str.1, i32 noundef 568, ptr noundef nonnull @.str.2) #10
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.ee = load volatile i32, ptr @g_even_handled, align 4
  %.not118 = icmp eq i32 %.11107, %i.ee
  br i1 %.not118, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ef = load volatile i32, ptr @g_even_handled, align 4
  %i.eg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.ef, i32 noundef %.11107) #11 ; 0 uses
  call void @__assert(ptr noundef nonnull @.str.1, i32 noundef 575, ptr noundef nonnull @.str.2) #10
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.eh = load volatile i32, ptr @g_odd_nested, align 4
  %i.ei = icmp sgt i32 %i.eh, 0
  br i1 %i.ei, label %bb.az, label %.preheader

bb.az:                                            ; preds = %bb.ay
  %i.ej = load volatile i32, ptr @g_odd_nested, align 4
  %i.ek = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.ej) #11 ; 0 uses
  call void @__assert(ptr noundef nonnull @.str.1, i32 noundef 582, ptr noundef nonnull @.str.2) #10
  unreachable

.preheader:                                       ; preds = %bb.ay, %.preheader
  %.3170 = phi i32 [ %i.em, %.preheader ], [ 1, %bb.ay ] ; 2 uses
  %i.el = call ptr @signal(i32 noundef %.3170, ptr noundef nonnull inttoptr (i64 1 to ptr)) #9 ; 0 uses
  %i.em = add nuw nsw i32 %.3170, 1               ; 2 uses
  %exitcond173.not = icmp eq i32 %i.em, 64
  br i1 %exitcond173.not, label %bb.ba, label %.preheader, !llvm.loop !16

bb.ba:                                            ; preds = %.preheader
  %i.en = call i32 @sem_destroy(ptr noundef nonnull @g_waiter_sem) #9 ; 0 uses
  %i.eo = call i32 @sem_destroy(ptr noundef nonnull @g_interferer_sem) #9 ; 0 uses
  %i.ep = call i32 @sem_destroy(ptr noundef nonnull @g_sem_thread_started) #9 ; 0 uses
  %i.eq = call i32 @sem_destroy(ptr noundef nonnull @g_sem_signal_finish) #9 ; 0 uses
  %puts119 = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: noredzone optsize
declare dso_local i32 @sem_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone optsize
declare dso_local i32 @sched_getparam(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree noredzone nounwind optsize
declare dso_local noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: noredzone noreturn optsize
declare dso_local void @__assert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone optsize
declare dso_local i32 @pthread_attr_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone optsize
declare dso_local i32 @pthread_attr_setschedparam(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone optsize
declare dso_local i32 @pthread_attr_setstacksize(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone optsize
declare dso_local i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone nounwind optsize uwtable
define internal noalias noundef ptr @waiter_main(ptr nofree readnone captures(none) %0) #2 {
bb.a:
  %1 = alloca %struct.sigset_s, align 4           ; 4 uses
  %2 = alloca %struct.sigaction, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  %puts11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10) ; 0 uses
  %i.a = call i32 @sigemptyset(ptr noundef nonnull %1) #9 ; 0 uses
  %i.b = call i32 @sigprocmask(i32 noundef 3, ptr noundef nonnull %1, ptr noundef null) #9
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @__errno() #9
  %i.e = load i32, ptr %i.d, align 4
  %i.f = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.e) #11 ; 0 uses
  call void @__assert(ptr noundef nonnull @.str.1, i32 noundef 159, ptr noundef nonnull @.str.2) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %puts12 = call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  store ptr @waiter_action, ptr %2, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i32 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.i = call i32 @sigemptyset(ptr noundef nonnull %i.h) #9 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.f
  %.016 = phi i32 [ 1, %bb.c ], [ %i.k, %bb.f ]   ; 4 uses
  switch i32 %.016, label %bb.e [
    i32 19, label %bb.f
    i32 18, label %bb.f
    i32 9, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = call i32 @sigaddset(ptr noundef nonnull %i.h, i32 noundef %.016) #9 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.e
  %i.k = add nuw nsw i32 %.016, 2
  %i.l = icmp samesign ult i32 %.016, 61
  br i1 %i.l, label %bb.d, label %.preheader, !llvm.loop !17

.preheader:                                       ; preds = %bb.f, %bb.i
  %.117 = phi i32 [ %i.r, %bb.i ], [ 1, %bb.f ]   ; 3 uses
  switch i32 %.117, label %bb.g [
    i32 19, label %bb.i
    i32 18, label %bb.i
    i32 9, label %bb.i
  ]

bb.g:                                             ; preds = %.preheader
  %i.m = call i32 @sigaction(i32 noundef %.117, ptr noundef nonnull %2, ptr noundef null) #9
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = call ptr @__errno() #9
  %i.p = load i32, ptr %i.o, align 4
  %i.q = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %i.p) #11 ; 0 uses
  br label %bb.k

bb.i:                                             ; preds = %.preheader, %.preheader, %.preheader, %bb.g
  %i.r = add nuw nsw i32 %.117, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.r, 63
  br i1 %exitcond.not, label %bb.j, label %.preheader, !llvm.loop !18

bb.j:                                             ; preds = %bb.i
  store ptr @interfere_action, ptr %2, align 8
  store i32 0, ptr %i.g, align 8
  %i.s = call i32 @sigemptyset(ptr noundef nonnull %i.h) #9 ; 0 uses
  %i.t = call i32 @sigaction(i32 noundef 63, ptr noundef nonnull %2, ptr noundef null) #9 ; 0 uses
  %puts13 = call i32 @puts(ptr nonnull dereferenceable(1) @str.12) ; 0 uses
  %i.u = call i32 @sem_post(ptr noundef nonnull @g_sem_thread_started) #9 ; 0 uses
  store volatile i8 1, ptr @g_waiter_running, align 1
  %i.v = load volatile i8, ptr @g_done, align 1, !range !8, !noundef !9
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %.lr.ph
  %i.x = call i32 @sem_wait(ptr noundef nonnull @g_waiter_sem) #9 ; 0 uses
  %i.y = load volatile i8, ptr @g_done, align 1, !range !8, !noundef !9
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %._crit_edge, label %.lr.ph, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph, %bb.j
  store volatile i8 0, ptr @g_waiter_running, align 1
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret ptr null
}

; Function Attrs: noredzone nounwind optsize uwtable
define internal noalias noundef ptr @interfere_main(ptr nofree readnone captures(none) %0) #2 {
bb.a:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  store volatile i8 1, ptr @g_interferer_running, align 1
  %i.a = load volatile i8, ptr @g_done, align 1, !range !8, !noundef !9
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.c = tail call i32 @sem_wait(ptr noundef nonnull @g_interferer_sem) #9 ; 0 uses
  %i.d = load volatile i8, ptr @g_done, align 1, !range !8, !noundef !9
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %._crit_edge, label %.lr.ph, !llvm.loop !20

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  store volatile i8 0, ptr @g_interferer_running, align 1
  ret ptr null
}

; Function Attrs: noredzone optsize
declare dso_local i32 @sem_wait(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone optsize
declare dso_local i32 @pthread_kill(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone nounwind optsize uwtable
define internal fastcc void @wait_finish(i32 noundef %0) unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  switch i32 %0, label %.preheader.thread [
    i32 18, label %._crit_edge
    i32 8, label %.lr.ph.preheader
    i32 17, label %.lr.ph.preheader
  ]

.preheader.thread:                                ; preds = %bb.a
  %i.a = icmp eq i32 %0, 9
  %i.b = and i32 %0, -2
  %or.cond.i = icmp eq i32 %i.b, 18
  %.0.i.not = or i1 %i.a, %or.cond.i
  %i.c = select i1 %.0.i.not, i32 1, i32 2
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader.thread, %bb.a, %bb.a
  %.28.ph = phi i32 [ 1, %bb.a ], [ 1, %bb.a ], [ %i.c, %.preheader.thread ]
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = add nsw i32 %.28, -1
  %i.e = icmp sgt i32 %.28, 1
  br i1 %i.e, label %.lr.ph, label %._crit_edge, !llvm.loop !21

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.28 = phi i32 [ %i.d, %bb.b ], [ %.28.ph, %.lr.ph.preheader ] ; 2 uses
  %i.f = call i32 @clock_gettime(i32 noundef 0, ptr noundef nonnull %1) #9 ; 0 uses
  %i.g = load i64, ptr %1, align 8
  %i.h = add nsw i64 %i.g, 2
  store i64 %i.h, ptr %1, align 8
  %i.i = call i32 @sem_timedwait(ptr noundef nonnull @g_sem_signal_finish, ptr noundef nonnull %1) #9
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  call void @__assert(ptr noundef nonnull @.str.1, i32 noundef 256, ptr noundef nonnull @.str.2) #10
  unreachable

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret void
}

; Function Attrs: noredzone optsize
declare dso_local void @sched_lock() local_unnamed_addr #4

; Function Attrs: noredzone optsize
declare dso_local void @sched_unlock() local_unnamed_addr #4

; Function Attrs: noredzone optsize
declare dso_local i32 @sem_post(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone optsize
declare dso_local i32 @usleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone optsize
declare dso_local ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone optsize
declare dso_local i32 @sem_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: noredzone optsize
declare dso_local i32 @sigemptyset(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone optsize
declare dso_local i32 @sigprocmask(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone optsize
declare dso_local ptr @__errno() local_unnamed_addr #4

; Function Attrs: noredzone nounwind optsize uwtable
define internal void @waiter_action(i32 noundef %0) #2 {
bb.a:
  %i.a = tail call i32 @pthread_self() #9         ; 2 uses
  %i.b = load i32, ptr @g_waiterpid, align 4      ; 2 uses
  %.not = icmp eq i32 %i.a, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %i.a, i32 noundef %i.b) #11 ; 0 uses
  tail call void @__assert(ptr noundef nonnull @.str.1, i32 noundef 115, ptr noundef nonnull @.str.2) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @sched_lock() #9
  %i.d = load volatile i32, ptr @g_nest_level, align 4 ; 3 uses
  %i.e = add nsw i32 %i.d, 1
  store volatile i32 %i.e, ptr @g_nest_level, align 4
  %i.f = and i32 %0, 1
  %.not7 = icmp eq i32 %i.f, 0
  %i.g = icmp sgt i32 %i.d, 0                     ; 2 uses
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load volatile i32, ptr @g_odd_handled, align 4
  %i.i = add nsw i32 %i.h, 1
  store volatile i32 %i.i, ptr @g_odd_handled, align 4
  br i1 %i.g, label %.sink.split, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = load volatile i32, ptr @g_even_handled, align 4
  %i.k = add nsw i32 %i.j, 1
  store volatile i32 %i.k, ptr @g_even_handled, align 4
  br i1 %i.g, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %bb.e, %bb.d
  %g_even_nested.sink10 = phi ptr [ @g_odd_nested, %bb.d ], [ @g_even_nested, %bb.e ] ; 2 uses
  %i.l = load volatile i32, ptr %g_even_nested.sink10, align 4
  %i.m = add nsw i32 %i.l, 1
  store volatile i32 %i.m, ptr %g_even_nested.sink10, align 4
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e, %bb.d
  store volatile i32 %i.d, ptr @g_nest_level, align 4
  tail call void @sched_unlock() #9
  %i.n = tail call i32 @sem_post(ptr noundef nonnull @g_sem_signal_finish) #9 ; 0 uses
  ret void
}

; Function Attrs: noredzone optsize
declare dso_local i32 @sigaddset(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone optsize
declare dso_local i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone nounwind optsize uwtable
define internal void @interfere_action(i32 %0) #2 {
bb.a:
  %i.a = tail call i32 @pthread_self() #9         ; 2 uses
  %i.b = load i32, ptr @g_interferepid, align 4   ; 2 uses
  %.not = icmp eq i32 %i.a, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef %i.a, i32 noundef %i.b) #11 ; 0 uses
  tail call void @__assert(ptr noundef nonnull @.str.1, i32 noundef 102, ptr noundef nonnull @.str.2) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: noredzone optsize
declare dso_local i32 @pthread_self() local_unnamed_addr #4

; Function Attrs: noredzone optsize
declare dso_local i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone optsize
declare dso_local i32 @sem_timedwait(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #7

attributes #0 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memset" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noredzone nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noredzone nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noredzone noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { noredzone nounwind optsize }
attributes #10 = { noredzone noreturn nounwind optsize }
attributes #11 = { noredzone optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"Code Model", i32 4}
!3 = !{i32 1, !"Large Data Threshold", i64 0}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
end_hunk_0
