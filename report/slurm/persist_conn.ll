Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/persist_conn?download=true
inline.NumInlined: 28
inline.NumDeleted: 8
begin_hunk_0_@slurm_persist_conn_wait_for_thread_loc:bb.a
  br i1 %.not26, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.ab = tail call ptr @__errno_location() #13
  store i32 %i.aa, ptr %i.ab, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.slurm_persist_conn_wait_for_thread_loc) #14
  unreachable

bb.l:                                             ; preds = %.loopexit
  ret i32 %.1
}

; Function Attrs: nounwind
declare i32 @pthread_cond_broadcast(ptr noundef) local_unnamed_addr #4

declare i32 @error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @slurm_persist_conn_destroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %slurm_persist_conn_close.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 -1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4, !range !10, !noundef !11
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @conn_blocking_g_shutdown(ptr noundef nonnull %i.d) #12 ; 0 uses
  %.pre.i.i.i = load ptr, ptr %i.c, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = phi ptr [ %.pre.i.i.i, %bb.d ], [ %i.d, %bb.c ]
  store i8 0, ptr %i.f, align 4
  tail call void @conn_g_destroy(ptr noundef %i.j, i1 noundef zeroext true) #12
  br label %slurm_persist_conn_close.exit.i

slurm_persist_conn_close.exit.i:                  ; preds = %bb.e, %bb.b
  store ptr null, ptr %i.c, align 8
  %i.k = load ptr, ptr %0, align 8                ; 2 uses
  %.not12.i = icmp eq ptr %i.k, null
  br i1 %.not12.i, label %slurm_persist_conn_members_destroy.exit, label %bb.f

bb.f:                                             ; preds = %slurm_persist_conn_close.exit.i
  tail call void @auth_g_destroy(ptr noundef nonnull %i.k) #12
  store ptr null, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 99, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 99, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.n, align 8
  br label %slurm_persist_conn_members_destroy.exit

slurm_persist_conn_members_destroy.exit:          ; preds = %slurm_persist_conn_close.exit.i, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @slurm_xfree(ptr noundef nonnull %i.o) #12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @slurm_xfree(ptr noundef nonnull %i.p) #12
  call void @slurm_xfree(ptr noundef nonnull %i.a) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %slurm_persist_conn_members_destroy.exit
  ret void
}

declare void @fd_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #7

declare i32 @threadpool_create(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @_service_connection(ptr nofree noundef captures(none) initializes((24, 32)) %0) #0 {
bb.a:
  %1 = alloca %struct.persist_rc_msg_t, align 8   ; 6 uses
  %2 = alloca %struct.persist_msg_t, align 8      ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 9 uses
  %3 = alloca %struct.conn_args_t, align 8        ; 7 uses
  %4 = alloca %struct.persist_msg_t, align 8      ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = tail call i64 @pthread_self() #13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 17 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 8              ; 11 uses
  %i.l = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store ptr null, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, i8 0, i64 56, i1 false)
  store i32 %i.k, ptr %3, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.k, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 1, ptr %i.o, align 4
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.q = and i64 %i.p, 1024
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = tail call i32 @get_log_level() #12
  %i.s = icmp sgt i32 %i.r, 3
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.u = load ptr, ptr %i.t, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__._process_service_connection, i32 noundef %i.k, ptr noundef %i.u) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 58 ; 2 uses
  %i.w = load i16, ptr %i.v, align 2
  %i.x = and i16 %i.w, 4
  %.not93.i = icmp eq i16 %i.x, 0                 ; 2 uses
  br i1 %.not93.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.y = call ptr @conn_g_create(ptr noundef nonnull %3) #12 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store ptr %i.y, ptr %i.z, align 8
  %.not94.i = icmp eq ptr %i.y, null
  br i1 %.not94.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__._process_service_connection, i32 noundef %i.k, ptr noundef %i.ab) #12 ; 0 uses
  %i.ad = call i32 @close(i32 noundef %i.k) #12   ; 0 uses
  br label %_process_service_connection.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 88 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = load i64, ptr %i.af, align 8
  %.not95113.not.i = icmp eq i64 %i.ag, 0
  br i1 %.not95113.not.i, label %.lr.ph117.i, label %.loopexit104.i

.lr.ph117.i:                                      ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 112 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  br label %bb.h

bb.h:                                             ; preds = %bb.ag, %.lr.ph117.i
  %.181114.i = phi i1 [ %.not93.i, %.lr.ph117.i ], [ %.282.i, %bb.ag ] ; 2 uses
  %i.as = call fastcc zeroext i1 @_conn_readable(ptr noundef nonnull %i.i)
  br i1 %i.as, label %bb.i, label %.loopexit104.i

bb.i:                                             ; preds = %bb.h
  %i.at = load ptr, ptr %i.ah, align 8
  %i.au = call i64 @conn_g_recv(ptr noundef %i.at, ptr noundef nonnull %i.a, i64 noundef 4) #12
  switch i64 %i.au, label %bb.j [
    i64 0, label %.loopexit104.i
    i64 4, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %i.ap, align 8
  %i.aw = load i32, ptr %i.aq, align 8
  %i.ax = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.37, i32 noundef %i.k, ptr noundef %i.av, i32 noundef %i.aw) #12 ; 0 uses
  br label %.loopexit104.i

bb.k:                                             ; preds = %bb.i
  %i.ay = load i32, ptr %i.a, align 4
  %i.az = call noundef i32 @llvm.bswap.i32(i32 %i.ay) ; 4 uses
  %i.ba = add i32 %i.az, -1073741825
  %or.cond.i = icmp ult i32 %i.ba, -1073741823
  br i1 %or.cond.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bb = load ptr, ptr %i.ap, align 8
  %i.bc = load i32, ptr %i.aq, align 8
  %i.bd = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.38, i32 noundef %i.az, i32 noundef %i.k, ptr noundef %i.bb, i32 noundef %i.bc) #12 ; 0 uses
  br label %.loopexit104.i

bb.m:                                             ; preds = %bb.k
  %i.be = zext nneg i32 %i.az to i64              ; 4 uses
  %i.bf = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef %i.be, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.3, i32 noundef 277, ptr noundef nonnull @__func__._process_service_connection) #12
  store ptr %i.bf, ptr %i.b, align 8
  br label %.lr.ph.i

bb.n:                                             ; preds = %bb.o
  %i.bg = add nuw nsw i64 %i.bn, %.083110.i       ; 3 uses
  %i.bh = icmp slt i64 %i.bg, %i.be
  br i1 %i.bh, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !19

.lr.ph.i:                                         ; preds = %bb.n, %bb.m
  %.083110.i = phi i64 [ %i.bg, %bb.n ], [ 0, %bb.m ] ; 5 uses
  %i.bi = call fastcc zeroext i1 @_conn_readable(ptr noundef nonnull %i.i)
  br i1 %i.bi, label %bb.o, label %.loopexit.i

bb.o:                                             ; preds = %.lr.ph.i
  %i.bj = load ptr, ptr %i.ah, align 8
  %i.bk = load ptr, ptr %i.b, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.083110.i
  %i.bm = sub nsw i64 %i.be, %.083110.i
  %i.bn = call i64 @conn_g_recv(ptr noundef %i.bj, ptr noundef %i.bl, i64 noundef %i.bm) #12 ; 2 uses
  %i.bo = icmp slt i64 %i.bn, 1
  br i1 %i.bo, label %bb.p, label %bb.n

bb.p:                                             ; preds = %bb.o
  %i.bp = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.39, i32 noundef %i.k) #12 ; 0 uses
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.n, %bb.p
  %.083106.i = phi i64 [ %.083110.i, %bb.p ], [ %.083110.i, %.lr.ph.i ], [ %i.bg, %bb.n ]
  %i.bq = icmp eq i64 %.083106.i, %i.be
  br i1 %i.bq, label %bb.q, label %bb.w

bb.q:                                             ; preds = %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.br = load ptr, ptr %i.b, align 8
  %i.bs = call i32 @slurm_persist_conn_process_msg(ptr noundef nonnull %i.i, ptr noundef nonnull %4, ptr noundef %i.br, i32 noundef %i.az, ptr noundef nonnull %i.c, i1 noundef zeroext %.181114.i)
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.bu = load ptr, ptr %i.am, align 8
  %i.bv = call i32 %i.bu(ptr noundef %i.l, ptr noundef nonnull %4, ptr noundef nonnull %i.c) #12, !inline_history !20 ; 3 uses
  %.val.i = load i16, ptr %i.v, align 2
  %i.bw = and i16 %.val.i, 1
  %.not.i.i = icmp eq i16 %i.bw, 0
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @slurmdbd_free_msg(ptr noundef nonnull %4) #12
  br label %_persist_free_msg_members.exit.i

bb.t:                                             ; preds = %bb.r
  %i.bx = load i16, ptr %i.an, align 8
  %i.by = zext i16 %i.bx to i32
  %i.bz = load ptr, ptr %i.ao, align 8
  call void @slurm_free_msg_data(i32 noundef %i.by, ptr noundef %i.bz) #12
  br label %_persist_free_msg_members.exit.i

_persist_free_msg_members.exit.i:                 ; preds = %bb.t, %bb.s
  switch i32 %i.bv, label %bb.u [
    i32 10005, label %bb.v
    i32 10004, label %bb.v
    i32 10002, label %bb.v
    i32 1900, label %bb.v
    i32 0, label %bb.v
  ]

bb.u:                                             ; preds = %_persist_free_msg_members.exit.i
  %i.ca = load ptr, ptr %i.ap, align 8
  %i.cb = load i32, ptr %i.aq, align 8
  %i.cc = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.40, i32 noundef %i.k, ptr noundef %i.ca, i32 noundef %i.cb) #12 ; 0 uses
  %switch.selectcmp.case1 = icmp eq i32 %i.bv, 2002
  %switch.selectcmp.case2 = icmp eq i32 %i.bv, 1005
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_persist_free_msg_members.exit.i, %_persist_free_msg_members.exit.i, %_persist_free_msg_members.exit.i, %_persist_free_msg_members.exit.i, %_persist_free_msg_members.exit.i, %bb.q
  %.178.i = phi i1 [ %switch.selectcmp, %bb.u ], [ false, %_persist_free_msg_members.exit.i ], [ false, %_persist_free_msg_members.exit.i ], [ false, %bb.q ], [ false, %_persist_free_msg_members.exit.i ], [ false, %_persist_free_msg_members.exit.i ], [ false, %_persist_free_msg_members.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.x

bb.w:                                             ; preds = %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.aj, align 4
  store ptr @.str.41, ptr %1, align 8
  store i16 1433, ptr %i.ak, align 8
  store ptr %1, ptr %i.al, align 8
  %i.cd = call ptr @slurm_persist_msg_pack(ptr noundef nonnull readonly %i.i, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  store ptr %i.cd, ptr %i.c, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.282.i = phi i1 [ false, %bb.v ], [ %.181114.i, %bb.w ]
  %.279.i = phi i1 [ %.178.i, %bb.v ], [ true, %bb.w ] ; 2 uses
  call void @slurm_xfree(ptr noundef nonnull %i.b) #12
  %i.ce = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not98.i = icmp eq ptr %i.ce, null
  br i1 %.not98.i, label %bb.ag, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cf = call i32 @slurm_persist_send_msg(ptr noundef nonnull %i.i, ptr noundef nonnull %i.ce)
  %.not99.i = icmp eq i32 %i.cf, 0
  br i1 %.not99.i, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = load i16, ptr %i.ar, align 8
  %.not100.i = icmp eq i16 %i.cg, 0
  br i1 %.not100.i, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ch = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.ci = and i64 %i.ch, 1024
  %.not101.i = icmp eq i64 %i.ci, 0
  br i1 %.not101.i, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cj = call i32 @get_log_level() #12
  %i.ck = icmp sgt i32 %i.cj, 3
  br i1 %i.ck, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cl = load ptr, ptr %i.ap, align 8
  %i.cm = load i32, ptr %i.aq, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__._process_service_connection, ptr noundef %i.cl, i32 noundef %i.k, i32 noundef %i.cm) #12
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y
  %.3.i = phi i1 [ %.279.i, %bb.y ], [ true, %bb.aa ], [ true, %bb.ac ], [ true, %bb.ab ], [ true, %bb.z ]
  %i.cn = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not102.i = icmp eq ptr %i.cn, null
  br i1 %.not102.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @free_buf(ptr noundef nonnull %i.cn) #12
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  store ptr null, ptr %i.c, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.x
  %.4.i = phi i1 [ %.3.i, %bb.af ], [ %.279.i, %bb.x ]
  %i.co = load ptr, ptr %i.ae, align 8
  %i.cp = load i64, ptr %i.co, align 8
  %.not95.i = icmp ne i64 %i.cp, 0
  %.not96.i = or i1 %.4.i, %.not95.i
  br i1 %.not96.i, label %.loopexit104.i, label %bb.h, !llvm.loop !21

.loopexit104.i:                                   ; preds = %bb.ag, %bb.i, %bb.h, %bb.l, %bb.j, %bb.g
  %i.cq = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.cr = and i64 %i.cq, 1024
  %.not103.i = icmp eq i64 %i.cr, 0
  br i1 %.not103.i, label %_process_service_connection.exit, label %bb.ah

bb.ah:                                            ; preds = %.loopexit104.i
  %i.cs = call i32 @get_log_level() #12
  %i.ct = icmp sgt i32 %i.cs, 3
  br i1 %i.ct, label %bb.ai, label %_process_service_connection.exit

bb.ai:                                            ; preds = %bb.ah
  %i.cu = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.cx = load i32, ptr %i.cw, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__._process_service_connection, ptr noundef %i.cv, i32 noundef %i.k, i32 noundef %i.cx) #12
  br label %_process_service_connection.exit

_process_service_connection.exit:                 ; preds = %bb.f, %.loopexit104.i, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.cy = call i32 @pthread_mutex_lock(ptr noundef nonnull @thread_count_lock) #12 ; 2 uses
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_process_service_connection.exit
  %i.cz = tail call ptr @__errno_location() #13
  store i32 %i.cy, ptr %i.cz, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #14
  unreachable

bb.ak:                                            ; preds = %_process_service_connection.exit
  %i.da = sext i32 %i.e to i64
  %i.db = getelementptr inbounds [8 x i8], ptr @persist_service_conn, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8            ; 4 uses
  %.not34 = icmp eq ptr %i.dc, null
  br i1 %.not34, label %.critedge, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8            ; 2 uses
  %.not35 = icmp eq ptr %i.de, null
  br i1 %.not35, label %.critedge, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 32 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8            ; 2 uses
  %.not36 = icmp eq ptr %i.dg, null
  br i1 %.not36, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store ptr null, ptr %i.df, align 8
  %i.dh = load ptr, ptr %i.dc, align 8
  store ptr null, ptr %i.dc, align 8
  br label %bb.at

bb.ao:                                            ; preds = %bb.am
  %i.di = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.dj = and i64 %i.di, 1024
  %.not39 = icmp eq i64 %i.dj, 0
  br i1 %.not39, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dk = call i32 @get_log_level() #12
  %i.dl = icmp sgt i32 %i.dk, 3
  br i1 %i.dl, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.dm = load ptr, ptr %i.dd, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.do = load ptr, ptr %i.dn, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.5, ptr noundef %i.do) #12
  br label %bb.at
end_hunk_0
begin_hunk_1_@slurm_persist_conn_open:bb.a
  %i.dc = icmp eq i32 %i.cy, 0
  %or.cond = select i1 %i.db, i1 %i.dc, i1 false
  br i1 %or.cond, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  %i.de = load i32, ptr %i.dd, align 4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.047 = phi i32 [ %i.de, %bb.ai ], [ %i.cy, %bb.ah ] ; 3 uses
  %.not59 = icmp eq i32 %.047, 0
  br i1 %.not59, label %bb.ar, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.df = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.dg = load i16, ptr %i.q, align 8
  %i.dh = zext i16 %i.dg to i32                   ; 2 uses
  br i1 %i.db, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.di = load ptr, ptr %i.da, align 8
  %i.dj = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.slurm_persist_conn_open, ptr noundef %i.df, i32 noundef %i.dh, ptr noundef %i.di) #12 ; 0 uses
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.dk = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.slurm_persist_conn_open, ptr noundef %i.df, i32 noundef %i.dh) #12 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.dl = load ptr, ptr %i.d, align 8             ; 3 uses
  %.not.i64 = icmp eq ptr %i.dl, null
  br i1 %.not.i64, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i32 -1, ptr %i.ap, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 4, !range !10, !noundef !11
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dp = call i32 @conn_blocking_g_shutdown(ptr noundef nonnull %i.dl) #12 ; 0 uses
  %.pre.i65 = load ptr, ptr %i.d, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.dq = phi ptr [ %.pre.i65, %bb.ap ], [ %i.dl, %bb.ao ]
  store i8 0, ptr %i.dm, align 4
  call void @conn_g_destroy(ptr noundef %i.dq, i1 noundef zeroext true) #12
  br label %bb.as

bb.ar:                                            ; preds = %bb.aj
  br i1 %i.db, label %.thread78, label %.thread74

.thread78:                                        ; preds = %bb.ar
  %i.dr = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.ds = load i16, ptr %i.dr, align 8
  store i16 %i.ds, ptr %i.i, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.du = load i16, ptr %i.dt, align 8
  %i.dv = load i16, ptr %i.aw, align 2
  %i.dw = or i16 %i.dv, %i.du
  store i16 %i.dw, ptr %i.aw, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.da, ptr %i.a, align 8
  br label %bb.at

.thread74:                                        ; preds = %_conn_destroy.exit63, %bb.ag, %bb.ar
  %.148.ph = phi i32 [ 0, %bb.ar ], [ -1, %bb.ag ], [ -1, %_conn_destroy.exit63 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %slurm_persist_free_rc_msg.exit

bb.as:                                            ; preds = %bb.aq, %bb.an
  store ptr null, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.da, ptr %i.a, align 8
  %.not.i67 = icmp eq ptr %i.da, null
  br i1 %.not.i67, label %slurm_persist_free_rc_msg.exit, label %bb.at

bb.at:                                            ; preds = %.thread78, %bb.as
  call void @slurm_xfree(ptr noundef nonnull %i.da) #12
  call void @slurm_xfree(ptr noundef nonnull %i.a) #12
  br label %slurm_persist_free_rc_msg.exit

slurm_persist_free_rc_msg.exit:                   ; preds = %.thread74, %.thread, %bb.as, %bb.at
  %.273 = phi i32 [ -1, %.thread ], [ %.047, %bb.as ], [ %.047, %bb.at ], [ %.148.ph, %.thread74 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.au

bb.au:                                            ; preds = %_open_persist_conn.exit.thread, %slurm_persist_free_rc_msg.exit
  %.049 = phi i32 [ -1, %_open_persist_conn.exit.thread ], [ %.273, %slurm_persist_free_rc_msg.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i32 %.049
}

declare void @slurm_msg_t_init(ptr noundef) local_unnamed_addr #2

declare void @slurm_msg_set_r_uid(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @slurm_msg_t_init_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare i32 @slurm_send_node_msg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_slurm_persist_recv_msg(ptr nofree noundef captures(none) %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not47 = icmp eq ptr %i.f, null
  br i1 %.not47, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.f, align 8
  %.not48 = icmp eq i64 %i.g, 0
  br i1 %.not48, label %bb.aj, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.i = and i64 %i.h, 1024
  %.not49 = icmp eq i64 %i.i, 0
  br i1 %.not49, label %bb.aj, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @get_log_level() #12
  %i.k = icmp sgt i32 %i.j, 3
  br i1 %i.k, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i16, ptr %i.n, align 8
  %i.p = zext i16 %i.o to i32
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__._slurm_persist_recv_msg, ptr noundef %i.m, i32 noundef %i.p) #12
  br label %bb.aj

bb.g:                                             ; preds = %bb.a
  %i.q = tail call fastcc zeroext i1 @_conn_readable(ptr noundef nonnull %0)
  br i1 %i.q, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.s = and i64 %i.r, 1024
  %.not50 = icmp eq i64 %i.s, 0
  br i1 %.not50, label %bb.z, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = tail call i32 @get_log_level() #12
  %i.u = icmp sgt i32 %i.t, 3
  br i1 %i.u, label %bb.j, label %bb.z

bb.j:                                             ; preds = %bb.i
  %i.v = load ptr, ptr %i.c, align 8
  %i.w = tail call i32 @conn_g_get_fd(ptr noundef %i.v) #12
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.57, ptr noundef nonnull @__func__._slurm_persist_recv_msg, i32 noundef %i.w) #12
  br label %bb.z

bb.k:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %i.c, align 8
  %i.y = call i64 @conn_g_recv(ptr noundef %i.x, ptr noundef nonnull %i.a, i64 noundef 4) #12 ; 2 uses
  %.not51 = icmp eq i64 %i.y, 4
  br i1 %.not51, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.aa = and i64 %i.z, 1024
  %.not55 = icmp eq i64 %i.aa, 0
  br i1 %.not55, label %bb.z, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = call i32 @get_log_level() #12
  %i.ac = icmp sgt i32 %i.ab, 3
  br i1 %i.ac, label %bb.n, label %bb.z

bb.n:                                             ; preds = %bb.m
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__._slurm_persist_recv_msg, i64 noundef %i.y, i64 noundef 4) #12
  br label %bb.z

bb.o:                                             ; preds = %bb.k
  %i.ad = load i32, ptr %i.a, align 4
  %i.ae = call noundef i32 @llvm.bswap.i32(i32 %i.ad) ; 6 uses
  %i.af = add i32 %i.ae, 2
  %or.cond3 = icmp ult i32 %i.af, 4
  br i1 %or.cond3, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ag = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__._slurm_persist_recv_msg, i32 noundef %i.ae) #12 ; 0 uses
  br label %bb.z

bb.q:                                             ; preds = %bb.o
  %i.ah = zext i32 %i.ae to i64                   ; 4 uses
  %i.ai = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef %i.ah, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef nonnull @.str.3, i32 noundef 1098, ptr noundef nonnull @__func__._slurm_persist_recv_msg) #12 ; 4 uses
  store ptr %i.ai, ptr %i.b, align 8
  %.not52 = icmp eq ptr %i.ai, null
  br i1 %.not52, label %bb.r, label %.lr.ph

bb.r:                                             ; preds = %bb.q
  %i.aj = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__._slurm_persist_recv_msg, i32 noundef %i.ae) #12 ; 0 uses
  br label %bb.z

bb.s:                                             ; preds = %bb.t
  %i.ak = add nuw nsw i64 %i.aq, %.061            ; 3 uses
  %i.al = icmp slt i64 %i.ak, %i.ah
  br i1 %i.al, label %.lr.ph, label %.loopexit, !llvm.loop !22

.lr.ph:                                           ; preds = %bb.q, %bb.s
  %.061 = phi i64 [ %i.ak, %bb.s ], [ 0, %bb.q ]  ; 5 uses
  %i.am = call fastcc zeroext i1 @_conn_readable(ptr noundef nonnull %0)
  br i1 %i.am, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %.lr.ph
  %i.an = load ptr, ptr %i.c, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.061
  %i.ap = sub nsw i64 %i.ah, %.061
  %i.aq = call i64 @conn_g_recv(ptr noundef %i.an, ptr noundef nonnull %i.ao, i64 noundef %i.ap) #12 ; 2 uses
  %i.ar = icmp slt i64 %i.aq, 1
  br i1 %i.ar, label %bb.u, label %bb.s

bb.u:                                             ; preds = %bb.t
  %i.as = load ptr, ptr %i.c, align 8
  %i.at = call i32 @conn_g_get_fd(ptr noundef %i.as) #12
  %i.au = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.61, ptr noundef nonnull @__func__._slurm_persist_recv_msg, i32 noundef %i.at) #12 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.s, %.lr.ph, %bb.u
  %.060 = phi i64 [ %.061, %bb.u ], [ %i.ak, %bb.s ], [ %.061, %.lr.ph ] ; 2 uses
  %.not53 = icmp eq i64 %.060, %i.ah
  br i1 %.not53, label %bb.y, label %bb.v

bb.v:                                             ; preds = %.loopexit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = load i64, ptr %i.aw, align 8
  %.not54 = icmp eq i64 %i.ax, 0
  br i1 %.not54, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ay = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__._slurm_persist_recv_msg, i64 noundef %.060, i32 noundef %i.ae) #12 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @slurm_xfree(ptr noundef nonnull %i.b) #12
  br label %bb.z

bb.y:                                             ; preds = %.loopexit
  %i.az = call ptr @create_buf(ptr noundef nonnull %i.ai, i32 noundef %i.ae) #12
  br label %bb.aj

bb.z:                                             ; preds = %bb.l, %bb.n, %bb.m, %bb.h, %bb.j, %bb.i, %bb.x, %bb.r, %bb.p
  br i1 %1, label %bb.aa, label %bb.aj

bb.aa:                                            ; preds = %bb.z
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = load i64, ptr %i.bb, align 8
  %.not56 = icmp eq i64 %i.bc, 0
  br i1 %.not56, label %bb.ab, label %bb.aj

bb.ab:                                            ; preds = %bb.aa
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.be = load i16, ptr %i.bd, align 2
  %i.bf = and i16 %i.be, 2
  %.not57 = icmp eq i16 %i.bf, 0
  br i1 %.not57, label %bb.aj, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bg = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.bh = and i64 %i.bg, 1024
  %.not58 = icmp eq i64 %i.bh, 0
  br i1 %.not58, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bi = call i32 @get_log_level() #12
  %i.bj = icmp sgt i32 %i.bi, 3
  br i1 %i.bj, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__._slurm_persist_recv_msg) #12
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ae, %bb.ad
  %i.bk = load ptr, ptr %i.c, align 8             ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i, label %slurm_persist_conn_reopen.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 -1, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 4, !range !10, !noundef !11
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bp = call i32 @conn_blocking_g_shutdown(ptr noundef nonnull %i.bk) #12, !inline_history !12 ; 0 uses
  %.pre.i.i.i = load ptr, ptr %i.c, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.bq = phi ptr [ %.pre.i.i.i, %bb.ah ], [ %i.bk, %bb.ag ]
  store i8 0, ptr %i.bm, align 4
  call void @conn_g_destroy(ptr noundef %i.bq, i1 noundef zeroext true) #12, !inline_history !12
  br label %slurm_persist_conn_reopen.exit

slurm_persist_conn_reopen.exit:                   ; preds = %bb.af, %bb.ai
  store ptr null, ptr %i.c, align 8
  %i.br = call i32 @slurm_persist_conn_open(ptr noundef nonnull %0), !inline_history !12 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.z, %bb.aa, %bb.ab, %slurm_persist_conn_reopen.exit, %bb.c, %bb.e, %bb.f, %bb.d, %bb.y
  %.041 = phi ptr [ null, %bb.c ], [ %i.az, %bb.y ], [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.e ], [ null, %slurm_persist_conn_reopen.exit ], [ null, %bb.ab ], [ null, %bb.aa ], [ null, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %.041
}

; Function Attrs: nounwind uwtable
define dso_local i32 @slurm_persist_msg_unpack(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.slurm_msg, align 8          ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.b = load i16, ptr %i.a, align 2
  %i.c = and i16 %i.b, 1
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load i16, ptr %i.d, align 8
  %i.f = tail call i32 @unpack_slurmdbd_msg(ptr noundef %1, i16 noundef zeroext %i.e, ptr noundef %2) #12
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @slurm_msg_t_init(ptr noundef nonnull %3) #12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = load i16, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 228
  store i16 %i.h, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 226 ; 2 uses
  %i.k = call i32 @unpack16(ptr noundef nonnull %i.j, ptr noundef %2) #12
  %.not29 = icmp eq i32 %i.k, 0
  br i1 %.not29, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.l = call i32 @unpack_msg(ptr noundef nonnull %3, ptr noundef %2) #12
  %i.m = load i16, ptr %i.j, align 2
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i16 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.p, ptr %i.q, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.j

bb.e:                                             ; preds = %.thread, %bb.b
  %.1 = phi i32 [ %i.f, %bb.b ], [ %i.l, %.thread ] ; 2 uses
  %.not30 = icmp eq i32 %.1, 0
  br i1 %.not30, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i16, ptr %i.r, align 8
  %i.t = icmp eq i16 %i.s, 6500
  br i1 %i.t, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8              ; 4 uses
  %i.w = load ptr, ptr %0, align 8                ; 2 uses
  %.not31 = icmp eq ptr %i.w, null
  br i1 %.not31, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @auth_g_destroy(ptr noundef nonnull %i.w) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 128 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  store ptr %i.y, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 140
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ad, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 148
  %i.ag = load i8, ptr %i.af, align 4, !range !10, !noundef !11
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.ag, ptr %i.ah, align 8
  store ptr null, ptr %i.x, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.f, %bb.i, %bb.e
  %.027 = phi i32 [ 0, %bb.f ], [ %.1, %bb.e ], [ 0, %bb.i ], [ -1, %bb.d ]
  ret i32 %.027
}

declare void @free_buf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @slurm_persist_free_rc_msg(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @slurm_xfree(ptr noundef nonnull %0) #12
  call void @slurm_xfree(ptr noundef nonnull %i.a) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
end_hunk_1
