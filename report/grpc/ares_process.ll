Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/ares_process?download=true
inline.NumInlined: 43
inline.NumDeleted: 22
begin_hunk_0_@ares_timedout:bb.a
  %i.j = zext i1 %.not to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.j, %bb.c ], [ 1, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 0, 16) i32 @ares_process_fds(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ares_channel_lock(ptr noundef nonnull %0) #7
  %i.b = tail call fastcc i32 @ares_process_fds_nolock(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3)
  tail call void @ares_channel_unlock(ptr noundef nonnull %0) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ 2, %bb.a ]
  ret i32 %.0
}

declare void @ares_channel_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 16) i32 @ares_process_fds_nolock(ptr noundef nonnull %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3) unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.ares_requeue_t, align 8     ; 6 uses
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 18 uses
  %i.h = alloca ptr, align 8                      ; 12 uses
  %i.i = alloca i16, align 2                      ; 9 uses
  %i.j = alloca i64, align 8                      ; 9 uses
  %5 = alloca %struct.ares_requeue_t, align 8     ; 6 uses
  %i.k = alloca i64, align 8                      ; 10 uses
  %i.l = alloca i64, align 8                      ; 12 uses
  %6 = alloca %struct.ares_timeval_t, align 8     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.m = icmp eq ptr %1, null
  %i.n = icmp ne i64 %2, 0                        ; 2 uses
  %or.cond = and i1 %i.m, %i.n
  br i1 %or.cond, label %process_timeouts.exit.thread57, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @ares_tvnow(ptr noundef nonnull %6) #7
  br i1 %i.n, label %.lr.ph, label %._crit_edge.thread

.lr.ph100:                                        ; preds = %process_write.exit.thread
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.h

.lr.ph:                                           ; preds = %bb.b, %process_write.exit.thread
  %.096 = phi i32 [ %i.aj, %process_write.exit.thread ], [ 0, %bb.b ] ; 2 uses
  %.03095 = phi i64 [ %i.ak, %process_write.exit.thread ], [ 0, %bb.b ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.03095 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !13   ; 2 uses
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %process_write.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !14
  %i.v = and i32 %i.u, 2
  %.not42 = icmp eq i32 %i.v, 0
  br i1 %.not42, label %process_write.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = call ptr @ares_conn_from_fd(ptr noundef nonnull %0, i32 noundef range(i32 0, -1) %i.r) #7 ; 6 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %process_write.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !22
  %i.aa = and i32 %i.z, 4
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 36 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !23
  %i.ad = or i32 %i.ac, 4
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ae = call i32 @ares_conn_flush(ptr noundef nonnull %i.w) #7 ; 4 uses
  %.not12.i = icmp eq i32 %i.ae, 0
  br i1 %.not12.i, label %process_write.exit.thread, label %process_write.exit

process_write.exit:                               ; preds = %bb.g
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !24
  %i.ag = load i32, ptr %i.y, align 8, !tbaa !22
  %i.ah = and i32 %i.ag, 1
  call fastcc void @server_increment_failures(ptr noundef %i.af, i32 noundef %i.ah)
  call void @ares_close_connection(ptr noundef nonnull %i.w, i32 noundef %i.ae) #7
  %i.ai = icmp eq i32 %i.ae, 15
  br i1 %i.ai, label %process_timeouts.exit.thread, label %process_write.exit.thread

process_write.exit.thread:                        ; preds = %bb.g, %bb.d, %process_write.exit, %.lr.ph, %bb.c
  %.1 = phi i32 [ %.096, %.lr.ph ], [ %i.ae, %process_write.exit ], [ %.096, %bb.c ], [ 0, %bb.d ], [ 0, %bb.g ]
  %i.aj = freeze i32 %.1                          ; 2 uses
  %i.ak = add nuw i64 %.03095, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ak, %2
  br i1 %exitcond.not, label %.lr.ph100, label %.lr.ph

bb.h:                                             ; preds = %.lr.ph100, %process_read.exit.thread
  %.2.fr99 = phi i32 [ %i.aj, %.lr.ph100 ], [ %.2.fr, %process_read.exit.thread ] ; 2 uses
  %.13198 = phi i64 [ 0, %.lr.ph100 ], [ %i.iy, %process_read.exit.thread ] ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.13198 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !13 ; 2 uses
  %i.an = icmp eq i32 %i.am, -1
  br i1 %i.an, label %process_read.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !14
  %i.aq = and i32 %i.ap, 1
  %.not41 = icmp eq i32 %i.aq, 0
  br i1 %.not41, label %process_read.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = call ptr @ares_conn_from_fd(ptr noundef nonnull %0, i32 noundef range(i32 0, -1) %i.am) #7 ; 13 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %process_read.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !24
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 544
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !30
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 48 ; 18 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 284
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.backedge.i.i.backedge, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #7
  store i64 65535, ptr %i.l, align 8, !tbaa !31
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !86
  %i.ba = call i64 @ares_buf_len(ptr noundef %i.az) #7 ; 2 uses
  %i.bb = load i32, ptr %i.ax, align 8, !tbaa !22
  %i.bc = and i32 %i.bb, 1
  %.not.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.backedge.i.i
  %i.bd = load ptr, ptr %i.aw, align 8, !tbaa !86
  %i.be = call i32 @ares_buf_append_be16(ptr noundef %i.bd, i16 noundef zeroext 0) #7
  %.not39.i.i = icmp eq i32 %i.be, 0
  br i1 %.not39.i.i, label %bb.m, label %process_read.exit.thread52

bb.m:                                             ; preds = %bb.l, %.backedge.i.i
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !86
  %i.bg = call ptr @ares_buf_append_start(ptr noundef %i.bf, ptr noundef nonnull %i.l) #7 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %process_read.exit.thread52, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = load i64, ptr %i.l, align 8, !tbaa !31
  %i.bj = call i32 @ares_conn_read(ptr noundef nonnull %i.ar, ptr noundef nonnull %i.bg, i64 noundef %i.bi, ptr noundef nonnull %i.k) #7 ; 2 uses
  %.not40.i.i = icmp eq i32 %i.bj, 0
  %i.bk = load ptr, ptr %i.aw, align 8, !tbaa !86 ; 2 uses
  br i1 %.not40.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @ares_buf_append_finish(ptr noundef %i.bk, i64 noundef 0) #7
  %i.bl = load i32, ptr %i.ax, align 8, !tbaa !22
  %i.bm = and i32 %i.bl, 1
  %.not44.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not44.i.i, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.bn = load ptr, ptr %i.aw, align 8, !tbaa !86
  %i.bo = call i32 @ares_buf_set_length(ptr noundef %i.bn, i64 noundef %i.ba) #7 ; 0 uses
  br label %bb.t

bb.q:                                             ; preds = %bb.n
  %i.bp = load i64, ptr %i.k, align 8, !tbaa !31
  call void @ares_buf_append_finish(ptr noundef %i.bk, i64 noundef %i.bp) #7
  %i.bq = load i32, ptr %i.ay, align 4, !tbaa !87
  %i.br = and i32 %i.bq, 1
  %.not41.i.i = icmp eq i32 %i.br, 0              ; 2 uses
  %.pre.i.i = load i32, ptr %i.ax, align 8, !tbaa !22
  %.pre78.i.i = and i32 %.pre.i.i, 1
  %.not43.i.i = icmp eq i32 %.pre78.i.i, 0        ; 2 uses
  br i1 %.not41.i.i, label %bb.s, label %7

7:                                                ; preds = %bb.q
  br i1 %.not43.i.i, label %.split.i.i, label %bb.r

bb.r:                                             ; preds = %7
  %i.bs = load i64, ptr %i.k, align 8, !tbaa !31
  %i.bt = load i64, ptr %i.l, align 8, !tbaa !31
  %i.bu = icmp eq i64 %i.bs, %i.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  br i1 %i.bu, label %.backedge.i.i.backedge, label %.loopexit.i

bb.s:                                             ; preds = %bb.q
  br i1 %.not43.i.i, label %.split.i.i, label %.thread91.i.i

.thread91.i.i:                                    ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  br label %.loopexit.i

.split.i.i:                                       ; preds = %bb.s, %7
  %i.bv = load ptr, ptr %i.aw, align 8, !tbaa !86
  %i.bw = call i64 @ares_buf_len(ptr noundef %i.bv) #7
  store i64 %i.bw, ptr %i.l, align 8, !tbaa !31
  %i.bx = load ptr, ptr %i.aw, align 8, !tbaa !86
  %i.by = call i32 @ares_buf_set_length(ptr noundef %i.bx, i64 noundef %i.ba) #7 ; 0 uses
  %i.bz = load ptr, ptr %i.aw, align 8, !tbaa !86
  %i.ca = load i64, ptr %i.k, align 8, !tbaa !31
  %i.cb = trunc i64 %i.ca to i16
  %i.cc = call i32 @ares_buf_append_be16(ptr noundef %i.bz, i16 noundef zeroext %i.cb) #7 ; 0 uses
  %i.cd = load ptr, ptr %i.aw, align 8, !tbaa !86
  %i.ce = load i64, ptr %i.l, align 8, !tbaa !31
  %i.cf = call i32 @ares_buf_set_length(ptr noundef %i.cd, i64 noundef %i.ce) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  br i1 %.not41.i.i, label %.loopexit.i, label %.backedge.i.i.backedge

.backedge.i.i.backedge:                           ; preds = %.split.i.i, %bb.r
  br label %.backedge.i.i

process_read.exit.thread52:                       ; preds = %bb.l, %bb.m
  call void @ares_close_connection(ptr noundef nonnull %i.ar, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  br label %process_timeouts.exit.thread

bb.t:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  %or.cond.not.i.i = icmp eq i32 %i.bj, 1
  br i1 %or.cond.not.i.i, label %.loopexit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cg = load ptr, ptr %i.ar, align 8, !tbaa !24
  %i.ch = load i32, ptr %i.ax, align 8, !tbaa !22
  %i.ci = and i32 %i.ch, 1
  call fastcc void @server_increment_failures(ptr noundef %i.cg, i32 noundef %i.ci)
  call void @ares_close_connection(ptr noundef nonnull %i.ar, i32 noundef 11) #7
  br label %process_read.exit.thread

.loopexit.i:                                      ; preds = %.split.i.i, %bb.r, %bb.t, %.thread91.i.i
  %i.cj = load ptr, ptr %i.ar, align 8, !tbaa !24
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 544
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !30 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  store ptr null, ptr %i.h, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  store i16 0, ptr %i.i, align 2, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #7
  store i64 0, ptr %i.j, align 8, !tbaa !31
  %i.cm = load ptr, ptr %i.aw, align 8, !tbaa !86
  call void @ares_buf_tag(ptr noundef %i.cm) #7
  %i.cn = load ptr, ptr %i.aw, align 8, !tbaa !86
  %i.co = call i32 @ares_buf_fetch_be16(ptr noundef %i.cn, ptr noundef nonnull %i.i) #7 ; 2 uses
  %.not89.i.i = icmp eq i32 %i.co, 0
  br i1 %.not89.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 208
  br label %bb.v

._crit_edge.i.i:                                  ; preds = %.critedge.i.i, %.loopexit.i
  %.lcssa65.i.i = phi i32 [ %i.co, %.loopexit.i ], [ %i.ig, %.critedge.i.i ]
  %i.cq = load ptr, ptr %i.aw, align 8, !tbaa !86
  %i.cr = call i32 @ares_buf_tag_rollback(ptr noundef %i.cq) #7 ; 0 uses
  br label %bb.bi

bb.v:                                             ; preds = %.critedge.i.i, %.lr.ph.i.i
  %i.cs = load ptr, ptr %i.aw, align 8, !tbaa !86
  %i.ct = load i16, ptr %i.i, align 2, !tbaa !50
  %i.cu = zext i16 %i.ct to i64
  %i.cv = call i32 @ares_buf_consume(ptr noundef %i.cs, i64 noundef %i.cu) #7 ; 2 uses
  %.not41.i13.i = icmp eq i32 %i.cv, 0
  %i.cw = load ptr, ptr %i.aw, align 8, !tbaa !86 ; 2 uses
  br i1 %.not41.i13.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cx = call i32 @ares_buf_tag_rollback(ptr noundef %i.cw) #7 ; 0 uses
  br label %bb.bi

bb.x:                                             ; preds = %bb.v
  %i.cy = call ptr @ares_buf_tag_fetch(ptr noundef %i.cw, ptr noundef nonnull %i.j) #7 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, null
  %i.da = load i64, ptr %i.j, align 8             ; 2 uses
  %i.db = icmp ult i64 %i.da, 2
  %or.cond.i.i = select i1 %i.cz, i1 true, i1 %i.db
  br i1 %or.cond.i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dc = load ptr, ptr %i.aw, align 8, !tbaa !86
  %i.dd = call i32 @ares_buf_tag_clear(ptr noundef %i.dc) #7 ; 0 uses
  br label %bb.bi

bb.z:                                             ; preds = %bb.x
  %i.de = add i64 %i.da, -2                       ; 3 uses
  store i64 %i.de, ptr %i.j, align 8, !tbaa !31
  %i.df = load ptr, ptr %i.ar, align 8, !tbaa !24 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  store ptr null, ptr %i.g, align 8, !tbaa !88
  %i.dg = icmp eq i64 %i.de, 0
  br i1 %i.dg, label %.critedge.sink.split.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  %i.di = call i32 @ares_dns_parse(ptr noundef nonnull %i.dh, i64 noundef range(i64 0, -2) %i.de, i32 noundef 0, ptr noundef nonnull %i.g) #7
  %.not.i.i.i = icmp eq i32 %i.di, 0
  br i1 %.not.i.i.i, label %bb.ab, label %.loopexit59.i.i.sink.split

bb.ab:                                            ; preds = %bb.aa
  %i.dj = load ptr, ptr %i.cp, align 8, !tbaa !52
  %i.dk = load ptr, ptr %i.g, align 8, !tbaa !88
  %i.dl = call zeroext i16 @ares_dns_record_get_id(ptr noundef %i.dk) #7
  %i.dm = zext i16 %i.dl to i64
  %i.dn = call ptr @ares_htable_szvp_get_direct(ptr noundef %i.dj, i64 noundef %i.dm) #7 ; 16 uses
  %.not63.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not63.i.i.i, label %process_answer.exit.thread48.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.do = load ptr, ptr %i.g, align 8, !tbaa !88  ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 80 ; 6 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !56 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !57
  %i.dt = call i64 @ares_dns_record_query_cnt(ptr noundef %i.dq) #7
  %i.du = call i64 @ares_dns_record_query_cnt(ptr noundef %i.do) #7
  %.not.i.i.i.i = icmp eq i64 %i.dt, %i.du
  br i1 %.not.i.i.i.i, label %.preheader.i.i.i.i, label %process_answer.exit.thread48.i.i

.preheader.i.i.i.i:                               ; preds = %bb.ac
  %i.dv = call i64 @ares_dns_record_query_cnt(ptr noundef %i.dq) #7
  %.not30.i.i.i.i = icmp eq i64 %i.dv, 0
  br i1 %.not30.i.i.i.i, label %same_questions.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 120
  br label %bb.ad

bb.ad:                                            ; preds = %bb.al, %.lr.ph.i.i.i.i
  %.01929.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.eq, %bb.al ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr null, ptr %i.b, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.dx = call i32 @ares_dns_record_query_get(ptr noundef %i.dq, i64 noundef %.01929.i.i.i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e) #7
  %i.dy = icmp ne i32 %i.dx, 0
  %i.dz = load ptr, ptr %i.a, align 8
  %i.ea = icmp eq ptr %i.dz, null
  %or.cond.i.i.i.i = select i1 %i.dy, i1 true, i1 %i.ea
  br i1 %or.cond.i.i.i.i, label %.thread.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eb = call i32 @ares_dns_record_query_get(ptr noundef %i.do, i64 noundef %.01929.i.i.i.i, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.f) #7
  %i.ec = icmp ne i32 %i.eb, 0
  %i.ed = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.ee = icmp eq ptr %i.ed, null
  %or.cond3.i.i.i.i = select i1 %i.ec, i1 true, i1 %i.ee
  br i1 %or.cond3.i.i.i.i, label %.thread.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ef = load i32, ptr %i.c, align 4, !tbaa !58
  %i.eg = load i32, ptr %i.d, align 4, !tbaa !58
  %.not22.i.i.i.i = icmp eq i32 %i.ef, %i.eg
  br i1 %.not22.i.i.i.i, label %bb.ag, label %.thread.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.eh = load i32, ptr %i.e, align 4, !tbaa !58
  %i.ei = load i32, ptr %i.f, align 4, !tbaa !58
  %.not23.i.i.i.i = icmp eq i32 %i.eh, %i.ei
  br i1 %.not23.i.i.i.i, label %bb.ah, label %.thread.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.ej = load i32, ptr %i.ds, align 8, !tbaa !90
  %i.ek = and i32 %i.ej, 1024
  %.not24.i.i.i.i = icmp eq i32 %i.ek, 0
  br i1 %.not24.i.i.i.i, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.el = load i32, ptr %i.dw, align 8, !tbaa !59
  %.not25.i.i.i.i = icmp eq i32 %i.el, 0
  br i1 %.not25.i.i.i.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.em = load ptr, ptr %i.a, align 8, !tbaa !89
  %i.en = call i32 @ares_streq(ptr noundef %i.em, ptr noundef nonnull %i.ed) #7
  %.not26.i.i.i.i = icmp eq i32 %i.en, 0
  br i1 %.not26.i.i.i.i, label %.thread.i.i.i.i, label %bb.al

bb.ak:                                            ; preds = %bb.ai, %bb.ah
  %i.eo = load ptr, ptr %i.a, align 8, !tbaa !89
  %i.ep = call i32 @ares_strcaseeq(ptr noundef %i.eo, ptr noundef nonnull %i.ed) #7
  %.not27.i.i.i.i = icmp eq i32 %i.ep, 0
  br i1 %.not27.i.i.i.i, label %.thread.i.i.i.i, label %bb.al

.thread.i.i.i.i:                                  ; preds = %bb.ak, %bb.aj, %bb.ag, %bb.af, %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
end_hunk_0
