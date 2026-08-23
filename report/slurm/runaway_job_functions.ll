Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/runaway_job_functions?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0_@sacctmgr_list_runaway_jobs:bb.a

bb.av:                                            ; preds = %bb.ap
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = icmp eq i32 %.061.i, %i.dl
  %i.fg = zext i1 %i.ff to i32
  call void %i.fe(ptr noundef nonnull %i.ea, ptr noundef nonnull %i.du, i32 noundef %i.fg) #10, !inline_history !12
  br label %bb.az

bb.aw:                                            ; preds = %bb.ap
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = icmp eq i32 %.061.i, %i.dl
  %i.fk = zext i1 %i.fj to i32
  call void %i.fi(ptr noundef nonnull %i.ea, ptr noundef nonnull %i.dt, i32 noundef %i.fk) #10, !inline_history !12
  br label %bb.az

bb.ax:                                            ; preds = %bb.ap
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = icmp eq i32 %.061.i, %i.dl
  %i.fo = zext i1 %i.fn to i32
  call void %i.fm(ptr noundef nonnull %i.ea, ptr noundef nonnull %i.ds, i32 noundef %i.fo) #10, !inline_history !12
  br label %bb.az

bb.ay:                                            ; preds = %bb.ap
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = icmp eq i32 %.061.i, %i.dl
  %i.fs = zext i1 %i.fr to i32
  call void %i.fq(ptr noundef nonnull %i.ea, ptr noundef nonnull %i.dr, i32 noundef %i.fs) #10, !inline_history !12
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap
  %i.ft = add nuw nsw i32 %.061.i, 1
  %i.fu = call ptr @list_next(ptr noundef %i.dn) #10 ; 2 uses
  %.not59.i = icmp eq ptr %i.fu, null
  br i1 %.not59.i, label %._crit_edge.i, label %bb.ap, !llvm.loop !13

._crit_edge.i:                                    ; preds = %bb.az, %.preheader.i
  call void @list_iterator_reset(ptr noundef %i.dn) #10
  %putchar.i = call i32 @putchar(i32 10)          ; 0 uses
  %i.fv = call ptr @list_next(ptr noundef %i.dm) #10 ; 2 uses
  %.not.i80 = icmp eq ptr %i.fv, null
  br i1 %.not.i80, label %_print_runaway_jobs.exit, label %.preheader.i, !llvm.loop !14

_print_runaway_jobs.exit:                         ; preds = %._crit_edge.i, %bb.ao
  call void @list_iterator_destroy(ptr noundef %i.dn) #10
  call void @list_iterator_destroy(ptr noundef %i.dm) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br i1 %.0.lcssa, label %_print_runaway_jobs.exit.split.us, label %_print_runaway_jobs.exit.split

_print_runaway_jobs.exit.split.us:                ; preds = %_print_runaway_jobs.exit, %bb.ba
  %i.fw = call i32 @list_transfer_max(ptr noundef %i.g, ptr noundef nonnull %.026.i, i32 noundef 1000) #10
  %.not66.us = icmp eq i32 %i.fw, 0
  br i1 %.not66.us, label %.critedge, label %bb.ba

bb.ba:                                            ; preds = %_print_runaway_jobs.exit.split.us
  %i.fx = load ptr, ptr @db_conn, align 8
  %i.fy = call i32 @slurmdb_jobs_fix_runaway(ptr noundef %i.fx, ptr noundef %i.g) #10 ; 2 uses
  %i.fz = call i32 @list_flush(ptr noundef %i.g) #10 ; 0 uses
  %cond.us = icmp eq i32 %i.fy, 0
  br i1 %cond.us, label %_print_runaway_jobs.exit.split.us, label %.split.us, !llvm.loop !15

_print_runaway_jobs.exit.split:                   ; preds = %_print_runaway_jobs.exit
  %.not68 = icmp eq i32 %.sroa.3.0.lcssa, 0
  br i1 %.not68, label %_print_runaway_jobs.exit.split.split.us, label %_print_runaway_jobs.exit.split.split

_print_runaway_jobs.exit.split.split.us:          ; preds = %_print_runaway_jobs.exit.split, %bb.bb
  %i.ga = call i32 @list_transfer_max(ptr noundef %i.g, ptr noundef nonnull %.026.i, i32 noundef 1000) #10
  %.not66.us99 = icmp eq i32 %i.ga, 0
  br i1 %.not66.us99, label %.critedge, label %bb.bb

bb.bb:                                            ; preds = %_print_runaway_jobs.exit.split.split.us
  %i.gb = call ptr @list_peek(ptr noundef %i.g) #10
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 168
  store i32 32, ptr %i.gc, align 8
  %i.gd = load ptr, ptr @db_conn, align 8
  %i.ge = call i32 @slurmdb_jobs_fix_runaway(ptr noundef %i.gd, ptr noundef %i.g) #10 ; 2 uses
  %i.gf = call i32 @list_flush(ptr noundef %i.g) #10 ; 0 uses
  %cond.us100 = icmp eq i32 %i.ge, 0
  br i1 %cond.us100, label %_print_runaway_jobs.exit.split.split.us, label %.split.us, !llvm.loop !15

_print_runaway_jobs.exit.split.split:             ; preds = %_print_runaway_jobs.exit.split, %bb.bc
  %i.gg = call i32 @list_transfer_max(ptr noundef %i.g, ptr noundef nonnull %.026.i, i32 noundef 1000) #10
  %.not66 = icmp eq i32 %i.gg, 0
  br i1 %.not66, label %.critedge, label %bb.bc

bb.bc:                                            ; preds = %_print_runaway_jobs.exit.split.split
  %i.gh = call ptr @list_peek(ptr noundef %i.g) #10 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 352
  store i32 %.sroa.3.0.lcssa, ptr %i.gi, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 168
  store i32 32, ptr %i.gj, align 8
  %i.gk = load ptr, ptr @db_conn, align 8
  %i.gl = call i32 @slurmdb_jobs_fix_runaway(ptr noundef %i.gk, ptr noundef %i.g) #10 ; 2 uses
  %i.gm = call i32 @list_flush(ptr noundef %i.g) #10 ; 0 uses
  %cond = icmp eq i32 %i.gl, 0
  br i1 %cond, label %_print_runaway_jobs.exit.split.split, label %.split.us, !llvm.loop !15

.critedge:                                        ; preds = %_print_runaway_jobs.exit.split.split, %_print_runaway_jobs.exit.split.split.us, %_print_runaway_jobs.exit.split.us
  %i.gn = call i32 @commit_check(ptr noundef nonnull @.str.1) #10
  %.not69 = icmp eq i32 %i.gn, 0
  br i1 %.not69, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %.critedge
  %i.go = load ptr, ptr @db_conn, align 8
  %i.gp = call i32 @slurmdb_connection_commit(ptr noundef %i.go, i1 noundef zeroext true) #10 ; 3 uses
  %.not71 = icmp eq i32 %i.gp, 0
  br i1 %.not71, label %.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gq = load ptr, ptr @stderr, align 8
  %i.gr = call ptr @slurm_strerror(i32 noundef %i.gp) #10
  %i.gs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gq, ptr noundef nonnull @.str.6, ptr noundef %i.gr) #14 ; 0 uses
  br label %.thread

bb.bf:                                            ; preds = %.critedge
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.gt = load ptr, ptr @db_conn, align 8
  %i.gu = call i32 @slurmdb_connection_commit(ptr noundef %i.gt, i1 noundef zeroext false) #10 ; 3 uses
  %.not70 = icmp eq i32 %i.gu, 0
  br i1 %.not70, label %.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gv = load ptr, ptr @stderr, align 8
  %i.gw = call ptr @slurm_strerror(i32 noundef %i.gu) #10
  %i.gx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gv, ptr noundef nonnull @.str.8, ptr noundef %i.gw) #14 ; 0 uses
  br label %.thread

.split.us:                                        ; preds = %bb.bc, %bb.bb, %bb.ba
  %.us-phi = phi i32 [ %i.fy, %bb.ba ], [ %i.ge, %bb.bb ], [ %i.gl, %bb.bc ] ; 2 uses
  %i.gy = call ptr @slurm_strerror(i32 noundef %.us-phi) #10
  %i.gz = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.9, ptr noundef %i.gy) #10 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.al, %bb.be, %bb.bd, %bb.bg, %bb.bf, %.split.us
  %.15182 = phi i32 [ %.us-phi, %.split.us ], [ 0, %bb.al ], [ 0, %bb.bf ], [ %i.gu, %bb.bg ], [ 0, %bb.bd ], [ %i.gp, %bb.be ]
  call void @slurm_xfree(ptr noundef nonnull %i.f) #10
  call void @list_destroy(ptr noundef nonnull %.026.i) #10
  br label %bb.bh

bb.bh:                                            ; preds = %.thread84, %.thread
  %.15183 = phi i32 [ %.15182, %.thread ], [ -1, %.thread84 ]
  %.not72 = icmp eq ptr %i.g, null
  br i1 %.not72, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @list_destroy(ptr noundef nonnull %i.g) #10
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.not73 = icmp eq ptr %i.h, null
  br i1 %.not73, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @list_destroy(ptr noundef nonnull %i.h) #10
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  ret i32 %.15183
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @list_create(ptr noundef) local_unnamed_addr #2

declare void @slurmdb_destroy_job_rec(ptr noundef) #2

declare void @xfree_ptr(ptr noundef) #2

declare ptr @slurm_xcalloc(i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @xstrncasecmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @_set_cond(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4
  %i.c = load i32, ptr %0, align 4                ; 3 uses
  %i.d = icmp slt i32 %i.c, %1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not35 = icmp eq ptr %4, null
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = sext i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ %i.f, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.g = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv ; 7 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call i32 @parse_option_end(ptr noundef %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #10 ; 3 uses
  %i.j = load ptr, ptr %i.g, align 8
  %i.k = load i32, ptr %i.b, align 4
  %i.l = call zeroext i1 @common_verify_option_syntax(ptr noundef %i.j, i32 noundef %i.k, i1 noundef zeroext false) #10
  br i1 %i.l, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.g, align 8
  %i.n = load i32, ptr %i.a, align 4
  %i.o = call i32 @llvm.smax.i32(i32 %i.n, i32 1)
  %i.p = zext nneg i32 %i.o to i64
  %i.q = call i32 @xstrncasecmp(ptr noundef %i.m, ptr noundef nonnull @.str.10, i64 noundef %i.p) #10
  %.not31 = icmp eq i32 %i.q, 0
  br i1 %.not31, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not32 = icmp eq ptr %i.r, null
  br i1 %.not32, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = call ptr @list_create(ptr noundef nonnull @xfree_ptr) #10 ; 2 uses
  store ptr %i.s, ptr %i.e, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = phi ptr [ %i.s, %bb.f ], [ %i.r, %bb.e ]
  %i.u = load ptr, ptr %i.g, align 8
  %i.v = sext i32 %i.i to i64
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %i.v
  %i.x = call i32 @slurm_addto_char_list(ptr noundef %i.t, ptr noundef %i.w) #10 ; 0 uses
  br label %bb.l

bb.h:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.g, align 8
  %i.z = load i32, ptr %i.a, align 4
  %i.aa = call i32 @llvm.smax.i32(i32 %i.z, i32 1)
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = call i32 @xstrncasecmp(ptr noundef %i.y, ptr noundef nonnull @.str.11, i64 noundef %i.ab) #10
  %.not34 = icmp eq i32 %i.ac, 0
  br i1 %.not34, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  br i1 %.not35, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %i.g, align 8
  %i.ae = sext i32 %i.i to i64
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 %i.ae
  %i.ag = call i32 @slurm_addto_char_list(ptr noundef nonnull %4, ptr noundef nonnull %i.af) #10 ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  store i32 1, ptr @exit_code, align 4
  %i.ah = load ptr, ptr @stderr, align 8
  %i.ai = load ptr, ptr %i.g, align 8
  %i.aj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ah, ptr noundef nonnull @.str.12, ptr noundef %i.ai) #14 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.i, %bb.j, %bb.k, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.l, %bb.a
  %.028.lcssa = phi i32 [ %i.c, %bb.a ], [ %1, %bb.l ]
  store i32 %.028.lcssa, ptr %0, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #2

declare ptr @list_peek(ptr noundef) local_unnamed_addr #2

declare void @slurmdb_destroy_job_cond(ptr noundef) local_unnamed_addr #2

declare i32 @list_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare i32 @slurm_addto_char_list(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @list_transfer_max(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @slurmdb_jobs_fix_runaway(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @list_flush(ptr noundef) local_unnamed_addr #2

declare i32 @commit_check(ptr noundef) local_unnamed_addr #2

declare i32 @slurmdb_connection_commit(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare ptr @slurm_strerror(i32 noundef) local_unnamed_addr #2

declare i32 @error(ptr noundef, ...) local_unnamed_addr #2

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #2

declare void @list_destroy(ptr noundef) local_unnamed_addr #2

declare i32 @parse_option_end(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @common_verify_option_syntax(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @job_state_num(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @fatal(ptr noundef, ...) local_unnamed_addr #5

declare ptr @slurmdb_jobs_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

declare void @slurmdb_init_cluster_cond(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @slurmdb_clusters_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @slurm_load_jobs(i64 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @_get_sync_delay() unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8
  %i.b = load i16, ptr @sync_delay, align 2
  %.not = icmp eq i16 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  store i16 5, ptr @sync_delay, align 2
  %i.c = load ptr, ptr @db_conn, align 8
  %i.d = call i32 @slurmdb_config_get(ptr noundef %i.c, ptr noundef nonnull %i.a) #10
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i16, ptr %i.f, align 8
  %i.h = load i16, ptr @sync_delay, align 2
  %i.i = add i16 %i.h, %i.g
  store i16 %i.i, ptr @sync_delay, align 2
  call void @slurmdbd_free_conf(ptr noundef %i.e) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

declare i32 @list_delete_all(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_purge_known_jobs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = tail call i64 @time(ptr noundef null) #10
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = load i16, ptr @sync_delay, align 2
  %i.i = zext i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.i
  %.02329 = phi i32 [ 0, %bb.b ], [ %i.aa, %bb.i ]
  %.02428 = phi ptr [ %i.e, %bb.b ], [ %i.ab, %bb.i ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.02428, i64 784
  %i.l = load i32, ptr %i.k, align 8
  %i.m = icmp eq i32 %i.g, %i.l
  br i1 %i.m, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.02428, i64 880
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = sub nsw i64 %i.a, %i.o
  %i.q = icmp slt i64 %i.p, %i.i
  br i1 %i.q, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.j, align 8              ; 2 uses
  %i.s = icmp eq i64 %i.o, %i.r
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.02428, i64 720
  %i.u = load i64, ptr %i.t, align 8
  %i.v = icmp eq i64 %i.r, %i.u
  br i1 %i.v, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.w = tail call i32 @get_log_level() #10
  %i.x = icmp sgt i32 %i.w, 8
  br i1 %i.x, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.y = load i32, ptr %i.f, align 4
  %i.z = load i64, ptr %i.j, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 9, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__._purge_known_jobs, i32 noundef %i.y, i64 noundef %i.z) #10
  br label %bb.k

bb.i:                                             ; preds = %bb.c, %bb.f
  %i.aa = add nuw i32 %.02329, 1                  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.02428, i64 1032
  %exitcond.not = icmp eq i32 %i.aa, %i.c
  br i1 %exitcond.not, label %.critedge, label %bb.c, !llvm.loop !17

.critedge:                                        ; preds = %bb.i, %bb.a
  %i.ac = tail call i32 @get_log_level() #10
  %i.ad = icmp sgt i32 %i.ac, 8
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ah = load i64, ptr %i.ag, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 9, ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__._purge_known_jobs, i32 noundef %i.af, i64 noundef %i.ah) #10
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.g, %.critedge, %bb.j
  %.1 = phi i32 [ 0, %.critedge ], [ 0, %bb.j ], [ 1, %bb.g ], [ 1, %bb.h ]
  ret i32 %.1
}

declare i32 @slurmdb_config_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @slurmdbd_free_conf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #7

declare i32 @get_log_level() local_unnamed_addr #2

declare void @log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @sacctmgr_process_format_list(ptr noundef) local_unnamed_addr #2

declare void @print_fields_header(ptr noundef) local_unnamed_addr #2

declare void @list_sort(ptr noundef, ptr noundef) local_unnamed_addr #2
end_hunk_0
