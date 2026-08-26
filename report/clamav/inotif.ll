Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/inotif?download=true
inline.NumInlined: 15
inline.NumDeleted: 10
begin_hunk_0_@onas_enable_inotif_ddd:bb.a
  br i1 %i.i, label %bb.g, label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.f
  %i.j = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.2) #14 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge, %bb.c
  %.05 = phi i32 [ 9, %.critedge ], [ 3, %bb.c ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret i32 %.05
}

declare i32 @logg(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_attr_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_attr_setdetachstate(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @onas_ddd_th(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 4 uses
  %2 = alloca %struct.stat, align 8               ; 4 uses
  %3 = alloca %struct.stat, align 8               ; 4 uses
  %4 = alloca %struct.stat, align 8               ; 4 uses
  %i.a = alloca [14 x i8], align 1                ; 4 uses
  %5 = alloca %struct.__sigset_t, align 8         ; 12 uses
  %6 = alloca %struct.fd_set, align 8             ; 5 uses
  %i.b = alloca [4096 x i8], align 16             ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 12 uses
  %7 = alloca %struct.__pthread_unwind_buf_t, align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.a, ptr noundef nonnull align 1 dereferenceable(14) @__const.onas_ddd_th.thread_name, i64 14, i1 false)
  %i.f = call i32 (i32, ...) @prctl(i32 noundef 15, ptr noundef nonnull %i.a) #14 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.g = call i32 @sigfillset(ptr noundef nonnull %5) #14 ; 0 uses
  %i.h = call i32 @sigdelset(ptr noundef nonnull %5, i32 noundef 10) #14 ; 0 uses
  %i.i = call i32 @sigdelset(ptr noundef nonnull %5, i32 noundef 12) #14 ; 0 uses
  %i.j = call i32 @sigdelset(ptr noundef nonnull %5, i32 noundef 8) #14 ; 0 uses
  %i.k = call i32 @sigdelset(ptr noundef nonnull %5, i32 noundef 4) #14 ; 0 uses
  %i.l = call i32 @sigdelset(ptr noundef nonnull %5, i32 noundef 11) #14 ; 0 uses
  %i.m = call i32 @sigdelset(ptr noundef nonnull %5, i32 noundef 15) #14 ; 0 uses
  %i.n = call i32 @sigdelset(ptr noundef nonnull %5, i32 noundef 2) #14 ; 0 uses
  %i.o = call i32 @sigdelset(ptr noundef nonnull %5, i32 noundef 7) #14 ; 0 uses
  %i.p = call i32 @pthread_sigmask(i32 noundef 2, ptr noundef nonnull %5, ptr noundef null) #14 ; 0 uses
  %i.q = call i32 (i32, ptr, ...) @logg(i32 noundef 2, ptr noundef nonnull @.str.3) #14 ; 0 uses
  %i.r = call i32 @inotify_init1(i32 noundef 2048) #14 ; 2 uses
  store i32 %i.r, ptr @onas_in_fd, align 4, !tbaa !15
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.4) #14 ; 0 uses
  br label %bb.ds

bb.c:                                             ; preds = %bb.a
  %i.u = call i32 @onas_ddd_init(i64 poison, i64 noundef 262144)
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %bb.ds

bb.e:                                             ; preds = %bb.c
  %i.w = call i32 (i32, ptr, ...) @logg(i32 noundef 2, ptr noundef nonnull @.str.6) #14 ; 0 uses
  %i.x = load ptr, ptr %0, align 1, !tbaa !22
  %i.y = call ptr @optget(ptr noundef %i.x, ptr noundef nonnull @.str.7) #14
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !23
  %.not252 = icmp eq i32 %i.aa, 0
  br i1 %.not252, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 1, !tbaa !26
  %i.ad = call ptr @optget(ptr noundef %i.ac, ptr noundef nonnull @.str.8) #14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !23
  %.not253 = icmp eq i32 %i.af, 0
  br i1 %.not253, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.9) #14 ; 0 uses
  br label %bb.ds

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.ai = load ptr, ptr %i.ah, align 1, !tbaa !26
  %i.aj = call ptr @optget(ptr noundef %i.ai, ptr noundef nonnull @.str.10) #14 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !23
  %.not254 = icmp eq i32 %i.al, 0
  br i1 %.not254, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !27
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ao = call ptr @cli_gettmpdir() #14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0224 = phi ptr [ %i.an, %bb.i ], [ %i.ao, %bb.j ] ; 7 uses
  %i.ap = load ptr, ptr %i.ah, align 1, !tbaa !26
  %i.aq = call ptr @optget(ptr noundef %i.ap, ptr noundef nonnull @.str.8) #14 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !23
  %i.at = icmp ne i32 %i.as, 0
  %i.au = icmp ne ptr %i.aq, null
  %or.cond = and i1 %i.au, %i.at
  br i1 %or.cond, label %sub_0, label %.loopexit338

bb.l:                                             ; preds = %bb.o, %bb.r, %bb.n, %bb.m
  %.0225.in = getelementptr inbounds nuw i8, ptr %.1226, i64 48
  %.0225 = load ptr, ptr %.0225.in, align 8, !tbaa !28 ; 2 uses
  %.old6.not = icmp eq ptr %.0225, null
  br i1 %.old6.not, label %.loopexit338, label %sub_0

sub_0:                                            ; preds = %bb.k, %bb.l
  %.1226 = phi ptr [ %.0225, %bb.l ], [ %i.aq, %bb.k ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.1226, i64 16 ; 4 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !27 ; 7 uses
  %i.ax = load i8, ptr %i.aw, align 1
  %.not379 = icmp eq i8 %i.ax, 47
  br i1 %.not379, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %bb.m, label %.tail.thread

bb.m:                                             ; preds = %.tail
  %i.bb = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.aw) #14 ; 0 uses
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !27
  %i.bd = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.13, ptr noundef %i.bc) #14 ; 0 uses
  br label %bb.l

.tail.thread:                                     ; preds = %sub_0, %.tail
  %i.be = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0224, ptr noundef nonnull dereferenceable(1) %i.aw) #16
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.tail.thread
  %i.bg = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.aw) #14 ; 0 uses
  %i.bh = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.15) #14 ; 0 uses
  %i.bi = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.16) #14 ; 0 uses
  br label %bb.l

bb.o:                                             ; preds = %.tail.thread
  %i.bj = load ptr, ptr @ddd_ht, align 8, !tbaa !29
  %i.bk = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #16
  %i.bl = call i32 @onas_ht_get(ptr noundef %i.bj, ptr noundef nonnull %i.aw, i64 noundef %i.bk, ptr noundef null) #14
  %.not256 = icmp eq i32 %i.bl, 0
  br i1 %.not256, label %bb.l, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = load ptr, ptr @ddd_ht, align 8, !tbaa !29
  %i.bn = load ptr, ptr %i.av, align 8, !tbaa !27
  %i.bo = call i32 @onas_ht_add_hierarchy(ptr noundef %i.bm, ptr noundef %i.bn) #14
  %.not257 = icmp eq i32 %i.bo, 0
  %i.bp = load ptr, ptr %i.av, align 8, !tbaa !27 ; 2 uses
  br i1 %.not257, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.17, ptr noundef %i.bp) #14 ; 0 uses
  br label %bb.ds

bb.r:                                             ; preds = %bb.p
  %i.br = call i32 (i32, ptr, ...) @logg(i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef %i.bp) #14 ; 0 uses
  br label %bb.l

.loopexit338:                                     ; preds = %bb.l, %bb.k
  %i.bs = load ptr, ptr %0, align 1, !tbaa !22
  %i.bt = call ptr @optget(ptr noundef %i.bs, ptr noundef nonnull @.str.7) #14 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !23
  %.not258 = icmp eq i32 %i.bv, 0
  br i1 %.not258, label %.loopexit337, label %bb.s

bb.s:                                             ; preds = %.loopexit338
  store i32 0, ptr %i.d, align 4, !tbaa !15
  store i32 0, ptr %i.e, align 4, !tbaa !15
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !27
  %i.by = call ptr @onas_get_opt_list(ptr noundef %i.bx, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #14 ; 8 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.t, label %.preheader336

.preheader336:                                    ; preds = %bb.s
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !9  ; 2 uses
  %.not259353355 = icmp eq ptr %i.ca, null
  br i1 %.not259353355, label %.loopexit337, label %.lr.ph

bb.t:                                             ; preds = %bb.s
  %i.cb = load i32, ptr %i.e, align 4, !tbaa !15
  %i.cc = call ptr @cl_strerror(i32 noundef %i.cb) #14
  %i.cd = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.19, ptr noundef %i.cc) #14 ; 0 uses
  br label %bb.ds

bb.u:                                             ; preds = %.lr.ph, %bb.aa
  %indvars.iv = phi i64 [ %13, %.lr.ph ], [ %indvars.iv.next, %bb.aa ] ; 3 uses
  %8 = phi ptr [ %11, %.lr.ph ], [ %i.dc, %bb.aa ] ; 2 uses
  %i.ce = phi ptr [ %12, %.lr.ph ], [ %i.db, %bb.aa ] ; 3 uses
  %i.cf = load ptr, ptr @ddd_ht, align 8, !tbaa !29
  %i.cg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #16
  %i.ch = call i32 @onas_ht_get(ptr noundef %i.cf, ptr noundef nonnull %8, i64 noundef %i.cg, ptr noundef null) #14
  %.not287 = icmp eq i32 %i.ch, 0
  br i1 %.not287, label %bb.aa, label %sub_0326

sub_0326:                                         ; preds = %bb.u
  %i.ci = load ptr, ptr %i.ce, align 8, !tbaa !9  ; 6 uses
  %i.cj = load i8, ptr %i.ci, align 1
  %.not380 = icmp eq i8 %i.cj, 47
  br i1 %.not380, label %.tail325, label %.tail325.thread

.tail325:                                         ; preds = %sub_0326
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = icmp eq i8 %i.cl, 0
  br i1 %i.cm, label %bb.v, label %.tail325.thread

bb.v:                                             ; preds = %.tail325
  %i.cn = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.ci) #14 ; 0 uses
  %i.co = load ptr, ptr %i.ce, align 8, !tbaa !9
  %i.cp = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.13, ptr noundef %i.co) #14 ; 0 uses
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.v, %bb.w
  %sext451 = shl i64 %indvars.iv, 32
  %9 = ashr exact i64 %sext451, 29
  %10 = getelementptr inbounds i8, ptr %i.by, i64 %9 ; 2 uses
  %i.cq = load ptr, ptr %10, align 8, !tbaa !9    ; 2 uses
  %.not259353 = icmp eq ptr %i.cq, null
  br i1 %.not259353, label %.loopexit337, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader336, %.outer.backedge
  %11 = phi ptr [ %i.cq, %.outer.backedge ], [ %i.ca, %.preheader336 ]
  %12 = phi ptr [ %10, %.outer.backedge ], [ %i.by, %.preheader336 ]
  %.0221.ph357 = phi i64 [ %indvars.iv, %.outer.backedge ], [ 0, %.preheader336 ]
  %sext471 = shl i64 %.0221.ph357, 32
  %13 = ashr exact i64 %sext471, 32
  br label %bb.u

.tail325.thread:                                  ; preds = %sub_0326, %.tail325
  %i.cr = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0224, ptr noundef nonnull dereferenceable(1) %i.ci) #16
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.tail325.thread
  %i.ct = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.ci) #14 ; 0 uses
  %i.cu = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.15) #14 ; 0 uses
  %i.cv = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.16) #14 ; 0 uses
  br label %.outer.backedge

bb.x:                                             ; preds = %.tail325.thread
  %i.cw = load ptr, ptr @ddd_ht, align 8, !tbaa !29
  %i.cx = call i32 @onas_ht_add_hierarchy(ptr noundef %i.cw, ptr noundef nonnull %i.ci) #14
  %.not289 = icmp eq i32 %i.cx, 0
  %i.cy = load ptr, ptr %i.ce, align 8, !tbaa !9  ; 2 uses
  br i1 %.not289, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cz = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.17, ptr noundef %i.cy) #14 ; 0 uses
  br label %bb.ds

bb.z:                                             ; preds = %bb.x
  %i.da = call i32 (i32, ptr, ...) @logg(i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef %i.cy) #14 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.u
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.db = getelementptr inbounds [8 x i8], ptr %i.by, i64 %indvars.iv.next ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !9  ; 2 uses
  %.not259 = icmp eq ptr %i.dc, null
  br i1 %.not259, label %.loopexit337, label %bb.u

.loopexit337:                                     ; preds = %.outer.backedge, %bb.aa, %.preheader336, %.loopexit338
  %.0220 = phi ptr [ null, %.loopexit338 ], [ %i.by, %bb.aa ], [ %i.by, %.preheader336 ], [ %i.by, %.outer.backedge ] ; 4 uses
  %i.dd = load ptr, ptr %i.ah, align 1, !tbaa !26
  %i.de = call ptr @optget(ptr noundef %i.dd, ptr noundef nonnull @.str.20) #14 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !23
  %i.dh = icmp ne i32 %i.dg, 0
  %i.di = icmp ne ptr %i.de, null
  %or.cond9 = and i1 %i.di, %i.dh
  br i1 %or.cond9, label %.preheader334, label %.loopexit335

.preheader334:                                    ; preds = %.loopexit337
  %i.dj = load ptr, ptr @ddd_ht, align 8, !tbaa !29
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !31
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %.thread311.us, label %.preheader334.split

.thread311.us:                                    ; preds = %.preheader334, %.thread311.us
  %.3228.us = phi ptr [ %i.do, %.thread311.us ], [ %i.de, %.preheader334 ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.3228.us, i64 48
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !28 ; 2 uses
  %.old8.not.us = icmp eq ptr %i.do, null
  br i1 %.old8.not.us, label %.loopexit335, label %.thread311.us

.preheader334.split:                              ; preds = %.preheader334, %.thread311
  %.3228 = phi ptr [ %i.em, %.thread311 ], [ %i.de, %.preheader334 ] ; 2 uses
  %i.dp = load ptr, ptr @ddd_ht, align 8, !tbaa !29
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.0217362 = load ptr, ptr %i.dq, align 8, !tbaa !31 ; 2 uses
  %.not260363 = icmp eq ptr %.0217362, null
  br i1 %.not260363, label %.thread311, label %.lr.ph366.a

.lr.ph366.a:                                      ; preds = %.preheader334.split
  %i.dr = getelementptr inbounds nuw i8, ptr %.3228, i64 16
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph366.a, %._crit_edge
  %.0217364 = phi ptr [ %.0217362, %.lr.ph366.a ], [ %.0217, %._crit_edge ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0217364, i64 8
  %.0216358 = load ptr, ptr %i.ds, align 8, !tbaa !33 ; 2 uses
  %.not261359 = icmp eq ptr %.0216358, null
  br i1 %.not261359, label %._crit_edge, label %.lr.ph361

.lr.ph361:                                        ; preds = %bb.ab, %bb.ae
  %.0216360 = phi ptr [ %.0216, %bb.ae ], [ %.0216358, %bb.ab ] ; 6 uses
  %i.dt = load ptr, ptr %.0216360, align 8, !tbaa !35
  %i.du = load ptr, ptr %i.dr, align 8, !tbaa !27
  %i.dv = call i32 @match_regex(ptr noundef %i.dt, ptr noundef %i.du) #14
  %.not262 = icmp eq i32 %i.dv, 0
  br i1 %.not262, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph361
  %i.dw = load ptr, ptr @ddd_ht, align 8, !tbaa !29
  %i.dx = load ptr, ptr %.0216360, align 8, !tbaa !35
  %i.dy = getelementptr inbounds nuw i8, ptr %.0216360, i64 8 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !38
  %i.ea = call i32 @onas_ht_get(ptr noundef %i.dw, ptr noundef %i.dx, i64 noundef %i.dz, ptr noundef null) #14
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ec = load ptr, ptr %.0216360, align 8, !tbaa !35
  %i.ed = call ptr @cli_safer_strdup(ptr noundef %i.ec) #14 ; 4 uses
  %i.ee = load ptr, ptr @ddd_ht, align 8, !tbaa !29
  %i.ef = load ptr, ptr %.0216360, align 8, !tbaa !35
  %i.eg = load i64, ptr %i.dy, align 8, !tbaa !38
  %i.eh = call i32 @onas_ht_rm_hierarchy(ptr noundef %i.ee, ptr noundef %i.ef, i64 noundef %i.eg, i32 noundef 0) #14
  %.not263 = icmp eq i32 %i.eh, 0
  br i1 %.not263, label %.thread, label %bb.af

.thread:                                          ; preds = %bb.ad
  %i.ei = call i32 (i32, ptr, ...) @logg(i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef %i.ed) #14 ; 0 uses
  call void @free(ptr noundef %i.ed) #14
  br label %bb.ae

bb.ae:                                            ; preds = %.thread, %bb.ac, %.lr.ph361
  %i.ej = getelementptr inbounds nuw i8, ptr %.0216360, i64 24
  %.0216 = load ptr, ptr %i.ej, align 8, !tbaa !33 ; 2 uses
  %.not261 = icmp eq ptr %.0216, null
  br i1 %.not261, label %._crit_edge, label %.lr.ph361

._crit_edge:                                      ; preds = %bb.ae, %bb.ab
  %i.ek = getelementptr inbounds nuw i8, ptr %.0217364, i64 24
  %.0217 = load ptr, ptr %i.ek, align 8, !tbaa !31 ; 2 uses
  %.not260 = icmp eq ptr %.0217, null
  br i1 %.not260, label %.thread311, label %bb.ab

.thread311:                                       ; preds = %._crit_edge, %.preheader334.split
  %i.el = getelementptr inbounds nuw i8, ptr %.3228, i64 48
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !28 ; 2 uses
  %.old8.not = icmp eq ptr %i.em, null
  br i1 %.old8.not, label %.loopexit335, label %.preheader334.split, !llvm.loop !39

bb.af:                                            ; preds = %bb.ad
  %i.en = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.21, ptr noundef %i.ed) #14 ; 0 uses
  call void @free(ptr noundef %i.ed) #14
  br label %bb.ds

.loopexit335:                                     ; preds = %.thread311, %.thread311.us, %.loopexit337
  %i.eo = load ptr, ptr %0, align 1, !tbaa !22
  %i.ep = call ptr @optget(ptr noundef %i.eo, ptr noundef nonnull @.str.23) #14 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !23
  %.not264 = icmp eq i32 %i.er, 0
  br i1 %.not264, label %.loopexit333, label %bb.ag

bb.ag:                                            ; preds = %.loopexit335
  store i32 0, ptr %i.c, align 4, !tbaa !15
  store i32 0, ptr %i.e, align 4, !tbaa !15
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !27
  %i.eu = call ptr @onas_get_opt_list(ptr noundef %i.et, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e) #14 ; 4 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %bb.ah, label %.preheader332

.preheader332:                                    ; preds = %bb.ag
  %i.ew = load ptr, ptr %i.eu, align 8, !tbaa !9  ; 2 uses
  %.not265367 = icmp eq ptr %i.ew, null
  br i1 %.not265367, label %.loopexit333, label %.lr.ph369.a

bb.ah:                                            ; preds = %bb.ag
  %i.ex = load i32, ptr %i.e, align 4, !tbaa !15
  %i.ey = call ptr @cl_strerror(i32 noundef %i.ex) #14
  %i.ez = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.24, ptr noundef %i.ey) #14 ; 0 uses
  br label %bb.ds

.lr.ph369.a:                                      ; preds = %.preheader332, %bb.al
  %indvars.iv399 = phi i64 [ %indvars.iv.next400, %bb.al ], [ 0, %.preheader332 ] ; 2 uses
  %i.fa = phi ptr [ %i.fo, %bb.al ], [ %i.ew, %.preheader332 ] ; 2 uses
  %i.fb = load ptr, ptr @ddd_ht, align 8, !tbaa !29
  %i.fc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fa) #16
  %i.fd = call i32 @onas_ht_get(ptr noundef %i.fb, ptr noundef nonnull %i.fa, i64 noundef %i.fc, ptr noundef null) #14
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %.lr.ph369.a
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %indvars.iv399 ; 2 uses
  %i.fg = load ptr, ptr @ddd_ht, align 8, !tbaa !29
  %i.fh = load ptr, ptr %i.ff, align 8, !tbaa !9  ; 2 uses
  %i.fi = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fh) #16
  %i.fj = call i32 @onas_ht_rm_hierarchy(ptr noundef %i.fg, ptr noundef nonnull %i.fh, i64 noundef %i.fi, i32 noundef 0) #14
  %.not286 = icmp eq i32 %i.fj, 0
  %i.fk = load ptr, ptr %i.ff, align 8, !tbaa !9  ; 2 uses
  br i1 %.not286, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fl = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.21, ptr noundef %i.fk) #14 ; 0 uses
  br label %bb.ds

bb.ak:                                            ; preds = %bb.ai
  %i.fm = call i32 (i32, ptr, ...) @logg(i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef %i.fk) #14 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph369.a
  %indvars.iv.next400 = add nuw nsw i64 %indvars.iv399, 1 ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %indvars.iv.next400
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !9  ; 2 uses
  %.not265 = icmp eq ptr %i.fo, null
  br i1 %.not265, label %.loopexit333, label %.lr.ph369.a

.loopexit333:                                     ; preds = %bb.al, %.preheader332, %.loopexit335
  %i.fp = call i32 (i32, ptr, ...) @logg(i32 noundef 2, ptr noundef nonnull @.str.25, ptr noundef %.0224) #14 ; 0 uses
  %i.fq = load ptr, ptr @ddd_ht, align 8, !tbaa !29
  %i.fr = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0224) #16
  %i.fs = call i32 @onas_ht_rm_hierarchy(ptr noundef %i.fq, ptr noundef nonnull %.0224, i64 noundef %i.fr, i32 noundef 0) #14
  %.not266 = icmp eq i32 %i.fs, 0
  br i1 %.not266, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.loopexit333
  %i.ft = call i32 (i32, ptr, ...) @logg(i32 noundef 2, ptr noundef nonnull @.str.26, ptr noundef nonnull %.0224) #14 ; 0 uses
  br label %bb.ao

bb.an:                                            ; preds = %.loopexit333
  %i.fu = call i32 (i32, ptr, ...) @logg(i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull %.0224) #14 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.fv = load ptr, ptr %i.ah, align 1, !tbaa !26
  %i.fw = call ptr @optget(ptr noundef %i.fv, ptr noundef nonnull @.str.8) #14 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !23
  %i.fz = icmp ne i32 %i.fy, 0
  %i.ga = icmp ne ptr %i.fw, null
  %or.cond12 = and i1 %i.ga, %i.fz
  br i1 %or.cond12, label %.preheader330, label %.loopexit331

.preheader330:                                    ; preds = %bb.ao
  %i.gb = call ptr @__errno_location() #17        ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.ap

bb.ap:                                            ; preds = %.preheader330, %bb.az
  %.5 = phi ptr [ %i.hr, %bb.az ], [ %i.fw, %.preheader330 ] ; 2 uses
  store i32 0, ptr %i.gb, align 4, !tbaa !15
  %i.ge = getelementptr inbounds nuw i8, ptr %.5, i64 16 ; 3 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !27 ; 2 uses
  %i.gg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gf) #16
  %i.gh = load ptr, ptr @ddd_ht, align 8, !tbaa !29
  %i.gi = call i32 @onas_ht_get(ptr noundef %i.gh, ptr noundef nonnull %i.gf, i64 noundef %i.gg, ptr noundef null) #14
  %i.gj = icmp eq i32 %i.gi, 0
end_hunk_0
