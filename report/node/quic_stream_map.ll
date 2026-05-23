inline.NumInlined: 53
inline.NumDeleted: 23
begin_hunk_0_@ossl_quic_stream_map_is_local_allowed_by_stream_limit:bb.a
bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @ossl_quic_stream_map_update_state(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ossl_quic_frame_stream_st, align 8 ; 7 uses
  %3 = alloca [2 x %struct.ossl_qtx_iovec_st], align 16 ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr i8, ptr %1, i64 256        ; 17 uses
  %.val = load i64, ptr %i.b, align 8             ; 3 uses
  %i.c = trunc i64 %.val to i32                   ; 2 uses
  %i.d = and i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load i32, ptr %i.e, align 8, !tbaa !29
  %i.g = icmp eq i32 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %ossl_quic_stream_map_is_local_allowed_by_stream_limit.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %ossl_quic_stream_map_is_local_allowed_by_stream_limit.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load i64, ptr %i.k, align 8, !tbaa !30
  %i.m = lshr i64 %i.l, 2
  %i.n = lshr i32 %i.c, 1
  %i.o = and i32 %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !26
  %i.r = tail call i64 %i.i(i32 noundef %i.o, ptr noundef %i.q) #12, !inline_history !47
  %i.s = icmp ult i64 %i.m, %i.r
  %.pre = load i64, ptr %i.b, align 8
  br label %ossl_quic_stream_map_is_local_allowed_by_stream_limit.exit

ossl_quic_stream_map_is_local_allowed_by_stream_limit.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.t = phi i64 [ %.val, %bb.a ], [ %.pre, %bb.c ], [ %.val, %bb.b ] ; 2 uses
  %.0 = phi i1 [ true, %bb.a ], [ %i.s, %bb.c ], [ true, %bb.b ]
  %i.u = and i64 %i.t, 65280
  %i.v = icmp eq i64 %i.u, 768
  br i1 %i.v, label %bb.d, label %bb.g

bb.d:                                             ; preds = %ossl_quic_stream_map_is_local_allowed_by_stream_limit.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !44
  %i.y = tail call i32 @ossl_quic_sstream_is_totally_acked(ptr noundef %i.x) #12
  %.not = icmp eq i32 %i.y, 0
  %.pre75 = load i64, ptr %i.b, align 8           ; 3 uses
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = and i64 %.pre75, 65280
  %cond.i = icmp eq i64 %i.z, 768
  br i1 %cond.i, label %bb.f, label %ossl_quic_stream_map_notify_totally_acked.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = and i64 %.pre75, -65281
  %i.ab = or disjoint i64 %i.aa, 1024
  store i64 %i.ab, ptr %i.b, align 8
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !44
  tail call void @ossl_quic_sstream_free(ptr noundef %i.ac) #12
  store ptr null, ptr %i.w, align 8, !tbaa !44
  %i.ad = load i64, ptr %i.b, align 8             ; 2 uses
  %i.ae = and i64 %i.ad, 549755813888
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %ossl_quic_stream_map_notify_totally_acked.exit, label %ossl_quic_stream_map_notify_totally_acked.exit.sink.split

bb.g:                                             ; preds = %bb.d, %ossl_quic_stream_map_is_local_allowed_by_stream_limit.exit
  %i.af = phi i64 [ %.pre75, %bb.d ], [ %i.t, %ossl_quic_stream_map_is_local_allowed_by_stream_limit.exit ]
  %i.ag = and i64 %i.af, 549755879168
  %or.cond = icmp eq i64 %i.ag, 549755814400
  br i1 %or.cond, label %bb.h, label %ossl_quic_stream_map_notify_totally_acked.exit

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !44
  %i.aj = tail call i32 @ossl_quic_sstream_is_totally_acked(ptr noundef %i.ai) #12
  %.not39 = icmp eq i32 %i.aj, 0
  br i1 %.not39, label %ossl_quic_stream_map_notify_totally_acked.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load i64, ptr %i.b, align 8             ; 2 uses
  %i.al = and i64 %i.ak, 549755813888
  %.not.i = icmp eq i64 %i.al, 0
  br i1 %.not.i, label %ossl_quic_stream_map_notify_totally_acked.exit, label %ossl_quic_stream_map_notify_totally_acked.exit.sink.split

ossl_quic_stream_map_notify_totally_acked.exit.sink.split: ; preds = %bb.i, %bb.f
  %.sink90 = phi i64 [ %i.ad, %bb.f ], [ %i.ak, %bb.i ]
  %i.am = and i64 %.sink90, -549755813889
  store i64 %i.am, ptr %i.b, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !48
  %i.ap = add i64 %i.ao, -1
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !48
  br label %ossl_quic_stream_map_notify_totally_acked.exit

ossl_quic_stream_map_notify_totally_acked.exit:   ; preds = %ossl_quic_stream_map_notify_totally_acked.exit.sink.split, %bb.i, %bb.f, %bb.e, %bb.g, %bb.h
  %i.aq = load i64, ptr %i.b, align 8             ; 9 uses
  %i.ar = and i64 %i.aq, 412316860416
  %or.cond92.not = icmp eq i64 %i.ar, 137438953472
  br i1 %or.cond92.not, label %bb.j, label %qsm_ready_for_gc.exit.thread

bb.j:                                             ; preds = %ossl_quic_stream_map_notify_totally_acked.exit
  %i.as = and i64 %i.aq, 16711680
  %i.at = icmp ne i64 %i.as, 0
  %i.au = and i64 %i.aq, 68719476736
  %.not7.i = icmp eq i64 %i.au, 0
  %or.cond.i = and i1 %i.at, %.not7.i
  br i1 %or.cond.i, label %qsm_ready_for_gc.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = and i64 %i.aq, 65280
  %.not1.i = icmp eq i64 %i.av, 0
  br i1 %.not1.i, label %qsm_ready_for_gc.exit.thread69, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = trunc i64 %i.aq to i32
  %i.ax = lshr i32 %i.aw, 8
  %i.ay = and i32 %i.ax, 255                      ; 2 uses
  %i.az = icmp eq i32 %i.ay, 4
  br i1 %i.az, label %qsm_ready_for_gc.exit.thread69, label %qsm_ready_for_gc.exit

qsm_ready_for_gc.exit.thread69:                   ; preds = %bb.k, %bb.l
  %i.ba = or disjoint i64 %i.aq, 274877906944
  store i64 %i.ba, ptr %i.b, align 8
  br label %bb.m

qsm_ready_for_gc.exit:                            ; preds = %bb.l
  %.not73 = icmp eq i32 %i.ay, 6                  ; 2 uses
  %i.bb = select i1 %.not73, i64 274877906944, i64 0
  %i.bc = or disjoint i64 %i.bb, %i.aq            ; 2 uses
  store i64 %i.bc, ptr %i.b, align 8
  br i1 %.not73, label %bb.m, label %qsm_ready_for_gc.exit.thread

bb.m:                                             ; preds = %qsm_ready_for_gc.exit.thread69, %qsm_ready_for_gc.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !40 ; 2 uses
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !40
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !41
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !40
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.bd, ptr %i.bh, align 8, !tbaa !41
  %.pre80.pre = load i64, ptr %i.b, align 8
  br label %qsm_ready_for_gc.exit.thread

qsm_ready_for_gc.exit.thread:                     ; preds = %bb.j, %qsm_ready_for_gc.exit, %bb.m, %ossl_quic_stream_map_notify_totally_acked.exit
  %.pre80 = phi i64 [ %i.aq, %ossl_quic_stream_map_notify_totally_acked.exit ], [ %i.bc, %qsm_ready_for_gc.exit ], [ %.pre80.pre, %bb.m ], [ %i.aq, %bb.j ] ; 8 uses
  %i.bi = and i64 %.pre80, 274877906944
  %.not43 = icmp eq i64 %i.bi, 0
  %or.cond91 = select i1 %.0, i1 %.not43, i1 false
  br i1 %or.cond91, label %bb.n, label %.critedge

bb.n:                                             ; preds = %qsm_ready_for_gc.exit.thread
  %i.bj = and i64 %.pre80, 16711680               ; 2 uses
  %.not74 = icmp eq i64 %i.bj, 0
  br i1 %.not74, label %._crit_edge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = trunc i64 %.pre80 to i32
  %i.bl = lshr i32 %i.bk, 16
  %i.bm = and i32 %i.bl, 255
  %i.bn = add nsw i32 %i.bm, -7
  %narrow.i = icmp ult i32 %i.bn, -2
  %i.bo = icmp eq i64 %i.bj, 65536
  %or.cond72 = and i1 %i.bo, %narrow.i
  br i1 %or.cond72, label %bb.p, label %._crit_edge

bb.p:                                             ; preds = %bb.o
  %i.bp = and i64 %.pre80, 8589934592
  %.not46 = icmp eq i64 %i.bp, 0
  br i1 %.not46, label %bb.q, label %.critedge54

bb.q:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.br = tail call i32 @ossl_quic_rxfc_has_cwm_changed(ptr noundef nonnull %i.bq, i32 noundef 0) #12
  %.not47 = icmp eq i32 %i.br, 0
  %.pre78 = load i64, ptr %i.b, align 8           ; 2 uses
  br i1 %.not47, label %._crit_edge, label %.critedge54

._crit_edge:                                      ; preds = %bb.q, %bb.o, %bb.n
  %i.bs = phi i64 [ %.pre80, %bb.n ], [ %.pre80, %bb.o ], [ %.pre78, %bb.q ] ; 6 uses
  %i.bt = and i64 %i.bs, 51539607552
  %or.cond52 = icmp eq i64 %i.bt, 0
  br i1 %or.cond52, label %bb.r, label %.critedge54

bb.r:                                             ; preds = %._crit_edge
  %i.bu = and i64 %i.bs, 134217728
  %.not50 = icmp eq i64 %i.bu, 0
  br i1 %.not50, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %4 = lshr i64 %i.bs, 8
  %trunc.i = trunc i64 %4 to i8
  %trunc.off.i = add i8 %trunc.i, -1
  %switch.i = icmp ult i8 %trunc.off.i, 3
  br i1 %switch.i, label %bb.t, label %stream_has_data_to_send.exit.thread

bb.t:                                             ; preds = %bb.s
  store i64 2, ptr %i.a, align 8, !tbaa !49
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !44
  %i.bx = call i32 @ossl_quic_sstream_get_stream_frame(ptr noundef %i.bw, i64 noundef 0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %i.a) #12
  %.not.i62 = icmp eq i32 %i.bx, 0
  br i1 %.not.i62, label %.stream_has_data_to_send.exit.thread_crit_edge, label %stream_has_data_to_send.exit

.stream_has_data_to_send.exit.thread_crit_edge:   ; preds = %bb.t
  %.pre79.pre = load i64, ptr %i.b, align 8
  br label %stream_has_data_to_send.exit.thread

stream_has_data_to_send.exit.thread:              ; preds = %.stream_has_data_to_send.exit.thread_crit_edge, %bb.s
  %.pre79 = phi i64 [ %.pre79.pre, %.stream_has_data_to_send.exit.thread_crit_edge ], [ %i.bs, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %.critedge

stream_has_data_to_send.exit:                     ; preds = %bb.t
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.bz = call i64 @ossl_quic_txfc_get_credit(ptr noundef nonnull %i.by, i64 noundef 0) #12
  %i.ca = call i64 @ossl_quic_txfc_get_swm(ptr noundef nonnull %i.by) #12
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cc = load i8, ptr %i.cb, align 8
  %i.cd = and i8 %i.cc, 2
  %i.ce = icmp ne i8 %i.cd, 0
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = icmp eq i64 %i.cg, 0
  %or.cond.i63 = select i1 %i.ce, i1 %i.ch, i1 false
  %i.ci = add i64 %i.ca, %i.bz
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = icmp ult i64 %i.ck, %i.ci
  %narrow.i64 = select i1 %or.cond.i63, i1 true, i1 %i.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %.pre81 = load i64, ptr %i.b, align 8           ; 2 uses
  br i1 %narrow.i64, label %.critedge54, label %.critedge

.critedge54:                                      ; preds = %stream_has_data_to_send.exit, %bb.q, %bb.p, %._crit_edge
  %i.cm = phi i64 [ %i.bs, %._crit_edge ], [ %.pre78, %bb.q ], [ %.pre80, %bb.p ], [ %.pre81, %stream_has_data_to_send.exit ]
  %i.cn = and i64 %i.cm, 16777216
  %.not.i65 = icmp eq i64 %i.cn, 0
  br i1 %.not.i65, label %bb.u, label %stream_map_mark_active.exit

bb.u:                                             ; preds = %.critedge54
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !40 ; 2 uses
  store ptr %i.cp, ptr %1, align 8, !tbaa !40
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %1, ptr %i.cq, align 8, !tbaa !41
  store ptr %1, ptr %i.co, align 8, !tbaa !40
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.co, ptr %i.cr, align 8, !tbaa !41
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !50
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store ptr %1, ptr %i.cs, align 8, !tbaa !50
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cv = load i64, ptr %i.b, align 8
  %i.cw = or i64 %i.cv, 16777216
  br label %stream_map_mark_active.exit.sink.split

.critedge:                                        ; preds = %stream_has_data_to_send.exit.thread, %qsm_ready_for_gc.exit.thread, %bb.r, %stream_has_data_to_send.exit
  %i.cx = phi i64 [ %.pre79, %stream_has_data_to_send.exit.thread ], [ %.pre81, %stream_has_data_to_send.exit ], [ %.pre80, %qsm_ready_for_gc.exit.thread ], [ %i.bs, %bb.r ]
  %i.cy = and i64 %i.cx, 16777216
  %.not.i66 = icmp eq i64 %i.cy, 0
  br i1 %.not.i66, label %stream_map_mark_active.exit, label %bb.x

bb.x:                                             ; preds = %.critedge
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !50
  %i.db = icmp eq ptr %i.da, %1
  br i1 %i.db, label %bb.y, label %.thread.i

bb.y:                                             ; preds = %bb.x
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dd = getelementptr i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.dd, align 8, !tbaa !41 ; 3 uses
  %i.de = icmp eq ptr %.val.i, %i.dc
  br i1 %i.de, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.df = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !41
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.08.i.i = phi ptr [ %i.dg, %bb.z ], [ %.val.i, %bb.y ] ; 2 uses
  %i.dh = icmp eq ptr %.08.i.i, %i.dc
  %.0.i.i = select i1 %i.dh, ptr null, ptr %.08.i.i ; 2 uses
  %i.di = icmp eq ptr %.0.i.i, %1
  %spec.store.select.i = select i1 %i.di, ptr null, ptr %.0.i.i
  store ptr %spec.store.select.i, ptr %i.cz, align 8
  br label %.thread.i

.thread.i:                                        ; preds = %bb.aa, %bb.x
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !41 ; 2 uses
  %i.dl = load ptr, ptr %1, align 8, !tbaa !40    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr %i.dk, ptr %i.dm, align 8, !tbaa !41
  store ptr %i.dl, ptr %i.dk, align 8, !tbaa !40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.dn = load i64, ptr %i.b, align 8
  %i.do = and i64 %i.dn, -16777217
  br label %stream_map_mark_active.exit.sink.split

stream_map_mark_active.exit.sink.split:           ; preds = %bb.w, %.thread.i
  %.sink = phi i64 [ %i.do, %.thread.i ], [ %i.cw, %bb.w ]
  store i64 %.sink, ptr %i.b, align 8
  br label %stream_map_mark_active.exit

stream_map_mark_active.exit:                      ; preds = %stream_map_mark_active.exit.sink.split, %.critedge, %.critedge54
  ret void
}

declare i32 @ossl_quic_sstream_is_totally_acked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_stream_map_notify_totally_acked(ptr noundef captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = and i64 %i.b, 65280
  %cond = icmp eq i64 %i.c, 768
  br i1 %cond, label %bb.b, label %shutdown_flush_done.exit

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, -65281
  %i.e = or disjoint i64 %i.d, 1024
  store i64 %i.e, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44
  tail call void @ossl_quic_sstream_free(ptr noundef %i.g) #12
  store ptr null, ptr %i.f, align 8, !tbaa !44
  %i.h = load i64, ptr %i.a, align 8              ; 2 uses
  %i.i = and i64 %i.h, 549755813888
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %shutdown_flush_done.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = and i64 %i.h, -549755813889
  store i64 %i.j, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !48
  %i.m = add i64 %i.l, -1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !48
  br label %shutdown_flush_done.exit

shutdown_flush_done.exit:                         ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %bb.c ]
  ret i32 %.0
}

declare i32 @ossl_quic_rxfc_has_cwm_changed(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_stream_map_ensure_send_part_id(ptr noundef readnone captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %2 = lshr i64 %i.b, 8
  %trunc = trunc i64 %2 to i8
  switch i8 %trunc, label %bb.c [
    i8 0, label %bb.d
    i8 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %i.b, -65281
  %i.d = or disjoint i64 %i.c, 512
  store i64 %i.d, ptr %i.a, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i32 [ 1, %bb.c ], [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_stream_map_notify_all_data_sent(ptr noundef readnone captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 65280
  %cond = icmp eq i64 %i.c, 512
  br i1 %cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = tail call i32 @ossl_quic_sstream_get_final_size(ptr noundef %i.e, ptr noundef nonnull %i.f) #12
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr %i.a, align 8
  %i.i = and i64 %i.h, -65281
  %i.j = or disjoint i64 %i.i, 768
  store i64 %i.j, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

declare i32 @ossl_quic_sstream_get_final_size(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_stream_map_reset_stream_send_part(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %3 = lshr i64 %i.b, 8
  %trunc.a = trunc i64 %3 to i8
  switch i8 %trunc.a, label %bb.f [
    i8 6, label %bb.e
    i8 5, label %bb.e
    i8 1, label %ossl_quic_stream_map_ensure_send_part_id.exit.a
    i8 2, label %bb.b
    i8 3, label %bb.c
  ]

ossl_quic_stream_map_ensure_send_part_id.exit.a:  ; preds = %bb.a
  %i.c = and i64 %i.b, -65281
  %i.d = or disjoint i64 %i.c, 512
  store i64 %i.d, ptr %i.a, align 8
  br label %bb.b

bb.b:                                             ; preds = %ossl_quic_stream_map_ensure_send_part_id.exit.a, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.f = tail call i64 @ossl_quic_txfc_get_swm(ptr noundef nonnull %i.e) #12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %i.f, ptr %i.g, align 8, !tbaa !38
  %.pre = load i64, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i64 [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %2, ptr %i.i, align 8, !tbaa !51
  %i.j = and i64 %i.h, -34359803649
  %i.k = or disjoint i64 %i.j, 34359739648
  store i64 %i.k, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !44
  tail call void @ossl_quic_sstream_free(ptr noundef %i.m) #12
  store ptr null, ptr %i.l, align 8, !tbaa !44
  %i.n = load i64, ptr %i.a, align 8              ; 2 uses
  %i.o = and i64 %i.n, 549755813888
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %shutdown_flush_done.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = and i64 %i.n, -549755813889
  store i64 %i.p, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !48
  %i.s = add i64 %i.r, -1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !48
  br label %shutdown_flush_done.exit

shutdown_flush_done.exit:                         ; preds = %bb.c, %bb.d
  tail call void @ossl_quic_stream_map_update_state(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.a, %bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %shutdown_flush_done.exit
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.e ], [ 1, %shutdown_flush_done.exit ]
  ret i32 %.0
}

declare i64 @ossl_quic_txfc_get_swm(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_stream_map_notify_reset_stream_acked(ptr noundef readnone captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %2 = lshr i64 %i.b, 8
  %trunc = trunc i64 %2 to i8
  switch i8 %trunc, label %bb.d [
    i8 6, label %bb.c
    i8 5, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %i.b, -65281
  %i.d = or disjoint i64 %i.c, 1536
  store i64 %i.d, ptr %i.a, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 1, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_stream_map_notify_size_known_recv_part(ptr noundef readnone captures(none) %0, ptr noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = and i64 %i.b, 16711680
  %cond = icmp eq i64 %i.c, 65536
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, -16711681
  %i.e = or disjoint i64 %i.d, 131072
  store i64 %i.e, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_stream_map_notify_totally_received(ptr noundef readnone captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = and i64 %i.b, 16711680
  %cond = icmp eq i64 %i.c, 131072
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, -17196580865
  %i.e = or disjoint i64 %i.d, 196608
  store i64 %i.e, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_stream_map_notify_totally_read(ptr noundef readnone captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = and i64 %i.b, 16711680
  %cond = icmp eq i64 %i.c, 196608
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, -16711681
  %i.e = or disjoint i64 %i.d, 262144
  store i64 %i.e, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45
  tail call void @ossl_quic_rstream_free(ptr noundef %i.g) #12
  store ptr null, ptr %i.f, align 8, !tbaa !45
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_stream_map_notify_reset_recv_part(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %4 = lshr i64 %i.c, 16
  %trunc = trunc i64 %4 to i8                     ; 2 uses
  switch i8 %trunc, label %bb.d [
    i8 6, label %bb.c
    i8 1, label %bb.b
    i8 2, label %bb.b
    i8 3, label %bb.b
    i8 4, label %bb.c
    i8 5, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %trunc.off.i = add nsw i8 %trunc, -2
  %switch.i = icmp ult i8 %trunc.off.i, 5
  br i1 %switch.i, label %ossl_quic_stream_recv_get_final_size.exit, label %ossl_quic_stream_recv_get_final_size.exit.thread

ossl_quic_stream_recv_get_final_size.exit:        ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.e = call i32 @ossl_quic_rxfc_get_final_size(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a) #12
  %.not.i.not = icmp eq i32 %i.e, 0
  %i.f = load i64, ptr %i.a, align 8
  %.not11 = icmp eq i64 %i.f, %3
  %or.cond = select i1 %.not.i.not, i1 true, i1 %.not11
  br i1 %or.cond, label %ossl_quic_stream_recv_get_final_size.exit.ossl_quic_stream_recv_get_final_size.exit.thread_crit_edge, label %bb.d

ossl_quic_stream_recv_get_final_size.exit.ossl_quic_stream_recv_get_final_size.exit.thread_crit_edge: ; preds = %ossl_quic_stream_recv_get_final_size.exit
  %.pre = load i64, ptr %i.b, align 8
  br label %ossl_quic_stream_recv_get_final_size.exit.thread

ossl_quic_stream_recv_get_final_size.exit.thread: ; preds = %ossl_quic_stream_recv_get_final_size.exit.ossl_quic_stream_recv_get_final_size.exit.thread_crit_edge, %bb.b
  %i.g = phi i64 [ %.pre, %ossl_quic_stream_recv_get_final_size.exit.ossl_quic_stream_recv_get_final_size.exit.thread_crit_edge ], [ %i.c, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 %2, ptr %i.h, align 8, !tbaa !52
  %i.i = and i64 %i.g, -17196580865
  %i.j = or disjoint i64 %i.i, 327680
  store i64 %i.j, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !45
  call void @ossl_quic_rstream_free(ptr noundef %i.l) #12
  store ptr null, ptr %i.k, align 8, !tbaa !45
  call void @ossl_quic_stream_map_update_state(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %ossl_quic_stream_recv_get_final_size.exit, %bb.a, %bb.c, %ossl_quic_stream_recv_get_final_size.exit.thread
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.a ], [ 1, %ossl_quic_stream_recv_get_final_size.exit.thread ], [ 0, %ossl_quic_stream_recv_get_final_size.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_stream_map_notify_app_read_reset_recv_part(ptr noundef readnone captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = and i64 %i.b, 16711680
  %cond = icmp eq i64 %i.c, 327680
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, -16711681
  %i.e = or disjoint i64 %i.d, 393216
  store i64 %i.e, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_stream_map_stop_sending_recv_part(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 5 uses
  %i.c = and i64 %i.b, 67108864
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %ossl_quic_stream_map_schedule_stop_sending.exit

bb.b:                                             ; preds = %bb.a
  %3 = lshr i64 %i.b, 16
  %trunc = trunc i64 %3 to i8
  %trunc.off = add i8 %trunc, -1
  %switch = icmp ult i8 %trunc.off, 2
  br i1 %switch, label %bb.c, label %ossl_quic_stream_map_schedule_stop_sending.exit

bb.c:                                             ; preds = %bb.b
  %i.d = or disjoint i64 %i.b, 67108864
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 %2, ptr %i.e, align 8, !tbaa !53
  %i.f = and i64 %i.b, 17179869184
  %.not6.i = icmp eq i64 %i.f, 0
  br i1 %.not6.i, label %bb.d, label %ossl_quic_stream_map_schedule_stop_sending.exit

bb.d:                                             ; preds = %bb.c
  %i.g = or disjoint i64 %i.b, 17246978048
  store i64 %i.g, ptr %i.a, align 8
  tail call void @ossl_quic_stream_map_update_state(ptr noundef %0, ptr noundef nonnull %1)
  br label %ossl_quic_stream_map_schedule_stop_sending.exit

ossl_quic_stream_map_schedule_stop_sending.exit:  ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 1, %bb.c ], [ 1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_stream_map_schedule_stop_sending(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = and i64 %i.b, 67108864
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, 17179869184
  %.not6 = icmp eq i64 %i.d, 0
  br i1 %.not6, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %2 = lshr i64 %i.b, 16
  %trunc = trunc i64 %2 to i8
  %trunc.off = add i8 %trunc, -1
  %switch = icmp ult i8 %trunc.off, 2
  br i1 %switch, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = or disjoint i64 %i.b, 17179869184
  store i64 %i.e, ptr %i.a, align 8
  tail call void @ossl_quic_stream_map_update_state(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %bb.d ], [ 1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @ossl_quic_stream_map_peek_accept_queue(ptr noundef readonly captures(address) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.b, align 8, !tbaa !41  ; 3 uses
  %i.c = icmp eq ptr %.val, %i.a
  br i1 %i.c, label %bb.b, label %list_next.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41
  br label %list_next.exit

list_next.exit:                                   ; preds = %bb.a, %bb.b
  %.08.i = phi ptr [ %i.e, %bb.b ], [ %.val, %bb.a ] ; 2 uses
  %i.f = icmp eq ptr %.08.i, %i.a
  %i.g = getelementptr inbounds i8, ptr %.08.i, i64 -16
  %.0.i = select i1 %i.f, ptr null, ptr %i.g
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @ossl_quic_stream_map_push_accept_queue(ptr noundef %0, ptr noundef initializes((16, 24)) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.b, ptr %i.d, align 8, !tbaa !41
  store ptr %i.b, ptr %i.a, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.a, ptr %i.e, align 8, !tbaa !41
  %i.f = getelementptr i8, ptr %1, i64 256
  %.val = load i64, ptr %i.f, align 8
  %i.g = and i64 %.val, 2
  %.not = icmp eq i64 %i.g, 0
  %. = select i1 %.not, i64 72, i64 80
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %. ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !49
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ossl_quic_stream_map_remove_from_accept_queue(ptr noundef captures(none) %0, ptr noundef captures(none) %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.c, ptr %i.e, align 8, !tbaa !41
  store ptr %i.d, ptr %i.c, align 8, !tbaa !40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.f = getelementptr i8, ptr %1, i64 256        ; 2 uses
  %.val = load i64, ptr %i.f, align 8
  %i.g = and i64 %.val, 2
  %.not = icmp eq i64 %i.g, 0
  %. = select i1 %.not, i64 72, i64 80
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %. ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !49
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !49
  %.val9 = load i64, ptr %i.f, align 8
  %i.k = and i64 %.val9, 2
  %.not.i = icmp eq i64 %i.k, 0
  %.in.v.i = select i1 %.not.i, i64 120, i64 128
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v.i
  %i.l = load ptr, ptr %.in.i, align 8, !tbaa !54 ; 2 uses
  %.not8 = icmp eq ptr %i.l, null
  br i1 %.not8, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = tail call i32 @ossl_quic_rxfc_on_retire(ptr noundef nonnull %i.l, i64 noundef 1, i64 %2) #12 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare i32 @ossl_quic_rxfc_on_retire(ptr noundef, i64 noundef, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @ossl_quic_stream_map_get_accept_queue_len(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %.in.v = select i1 %.not, i64 72, i64 80
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.a = load i64, ptr %.in, align 8, !tbaa !49
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @ossl_quic_stream_map_get_total_accept_queue_len(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.a = load i64, ptr %.in.i, align 8, !tbaa !49
  %.in.i2 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %.in.i2, align 8, !tbaa !49
  %i.c = add i64 %i.b, %i.a
  ret i64 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local void @ossl_quic_stream_map_gc(ptr noundef readonly captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %ossl_quic_stream_map_release.exit, %bb.a
  %.val = load ptr, ptr %i.b, align 8, !tbaa !41  ; 3 uses
  %i.c = icmp eq ptr %.val, %i.a
  br i1 %i.c, label %bb.c, label %list_next.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41
  br label %list_next.exit

list_next.exit:                                   ; preds = %bb.b, %bb.c
  %.08.i = phi ptr [ %i.e, %bb.c ], [ %.val, %bb.b ] ; 10 uses
  %i.f = icmp eq ptr %.08.i, %i.a
  %i.g = getelementptr inbounds i8, ptr %.08.i, i64 -32 ; 4 uses
  br i1 %i.f, label %bb.j, label %bb.d

bb.d:                                             ; preds = %list_next.exit
  %i.h = getelementptr inbounds i8, ptr %.08.i, i64 -24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !39   ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !40   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.i, ptr %i.k, align 8, !tbaa !41
  store ptr %i.j, ptr %i.i, align 8, !tbaa !40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds i8, ptr %.08.i, i64 -8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !42   ; 3 uses
  %.not17.i = icmp eq ptr %i.m, null
  br i1 %.not17.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds i8, ptr %.08.i, i64 -16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !40   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.m, ptr %i.p, align 8, !tbaa !41
  store ptr %i.o, ptr %i.m, align 8, !tbaa !40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !43   ; 3 uses
  %.not18.i = icmp eq ptr %i.r, null
  br i1 %.not18.i, label %ossl_quic_stream_map_release.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %.08.i, align 8, !tbaa !40 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.r, ptr %i.t, align 8, !tbaa !41
  store ptr %i.s, ptr %i.r, align 8, !tbaa !40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i, i8 0, i64 16, i1 false)
  br label %ossl_quic_stream_map_release.exit

ossl_quic_stream_map_release.exit:                ; preds = %bb.h, %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i, i64 80 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !44
  tail call void @ossl_quic_sstream_free(ptr noundef %i.v) #12
  store ptr null, ptr %i.u, align 8, !tbaa !44
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i, i64 88 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !45
  tail call void @ossl_quic_rstream_free(ptr noundef %i.x) #12
  store ptr null, ptr %i.w, align 8, !tbaa !45
  %i.y = load ptr, ptr %0, align 8, !tbaa !9
  %i.z = tail call ptr @OPENSSL_LH_delete(ptr noundef %i.y, ptr noundef nonnull %i.g) #12 ; 0 uses
  tail call void @CRYPTO_free(ptr noundef nonnull %i.g, ptr noundef nonnull @.str, i32 noundef 192) #12
  br label %bb.b, !llvm.loop !55

bb.j:                                             ; preds = %list_next.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ossl_quic_stream_map_begin_shutdown_flush(ptr noundef initializes((88, 96)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.a, align 8, !tbaa !48
  %i.b = load ptr, ptr %0, align 8, !tbaa !9
  tail call void @OPENSSL_LH_doall_arg(ptr noundef %i.b, ptr noundef nonnull @begin_shutdown_flush_each, ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @begin_shutdown_flush_each(ptr noundef captures(none) %0, ptr noundef captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8
  %2 = and i64 %i.b, 65024
  %switch.i = icmp eq i64 %2, 512
  br i1 %switch.i, label %eligible_for_shutdown_flush.exit, label %eligible_for_shutdown_flush.exit.thread

eligible_for_shutdown_flush.exit:                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.e = tail call i32 @ossl_quic_sstream_is_totally_acked(ptr noundef %i.d) #12
  %.not.i.not = icmp eq i32 %i.e, 0
  br i1 %.not.i.not, label %bb.b, label %eligible_for_shutdown_flush.exit.thread

bb.b:                                             ; preds = %eligible_for_shutdown_flush.exit
  %i.f = load i64, ptr %i.a, align 8              ; 2 uses
  %i.g = and i64 %i.f, 549755813888
  %.not5 = icmp eq i64 %i.g, 0
  br i1 %.not5, label %bb.c, label %eligible_for_shutdown_flush.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = or disjoint i64 %i.f, 549755813888
  store i64 %i.h, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !48
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !48
  br label %eligible_for_shutdown_flush.exit.thread

eligible_for_shutdown_flush.exit.thread:          ; preds = %bb.a, %eligible_for_shutdown_flush.exit, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_stream_map_is_shutdown_flush_finished(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8, !tbaa !48
  %i.c = icmp eq i64 %i.b, 0
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @ossl_quic_stream_iter_init(ptr noundef writeonly captures(none) initializes((0, 24)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !57
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.d, align 8, !tbaa !61
  %.not = icmp eq i32 %2, 0
  %.not12 = icmp eq ptr %i.b, null
  %or.cond = select i1 %.not, i1 true, i1 %.not12
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !46
  %i.g = add i64 %i.f, 1                          ; 2 uses
  store i64 %i.g, ptr %i.e, align 8, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !24
  %.not13 = icmp ult i64 %i.g, %i.i
  br i1 %.not13, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.e, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr i8, ptr %i.b, i64 8
  %.val = load ptr, ptr %i.k, align 8, !tbaa !41  ; 3 uses
  %i.l = icmp eq ptr %.val, %i.j
  br i1 %i.l, label %bb.d, label %list_next.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !41
  br label %list_next.exit

list_next.exit:                                   ; preds = %bb.c, %bb.d
  %.08.i = phi ptr [ %i.n, %bb.d ], [ %.val, %bb.c ] ; 2 uses
  %i.o = icmp eq ptr %.08.i, %i.j
  %.0.i = select i1 %i.o, ptr null, ptr %.08.i
  store ptr %.0.i, ptr %i.a, align 8, !tbaa !50
  br label %bb.e

bb.e:                                             ; preds = %list_next.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @ossl_quic_stream_iter_next(ptr noundef captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !57
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = getelementptr i8, ptr %i.b, i64 8
  %.val = load ptr, ptr %i.f, align 8, !tbaa !41  ; 3 uses
  %i.g = icmp eq ptr %.val, %i.e
  br i1 %i.g, label %bb.c, label %list_next.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41
  br label %list_next.exit

list_next.exit:                                   ; preds = %bb.b, %bb.c
  %.08.i = phi ptr [ %i.i, %bb.c ], [ %.val, %bb.b ] ; 2 uses
  %i.j = icmp eq ptr %.08.i, %i.e
  %.0.i = select i1 %i.j, ptr null, ptr %.08.i    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60
  %i.m = icmp eq ptr %.0.i, %i.l
  %spec.store.select = select i1 %i.m, ptr null, ptr %.0.i
  store ptr %spec.store.select, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %list_next.exit, %bb.a
  ret void
}

declare ptr @OPENSSL_LH_set_thunks(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @OPENSSL_LH_new(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i64 @lh_QUIC_STREAM_hfn_thunk(ptr noundef %0, ptr noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = tail call i64 %1(ptr noundef %0) #12
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal i32 @lh_QUIC_STREAM_cfn_thunk(ptr noundef %0, ptr noundef %1, ptr noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = tail call i32 %2(ptr noundef %0, ptr noundef %1) #12
  ret i32 %i.a
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @lh_QUIC_STREAM_doall_thunk(ptr noundef %0, ptr noundef readonly captures(none) %1) #9 {
bb.a:
  tail call void %1(ptr noundef %0) #12
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @lh_QUIC_STREAM_doall_arg_thunk(ptr noundef %0, ptr noundef %1, ptr noundef readonly captures(none) %2) #9 {
bb.a:
  tail call void %2(ptr noundef %0, ptr noundef %1) #12
  ret void
}

declare void @OPENSSL_LH_free(ptr noundef) local_unnamed_addr #3

declare void @OPENSSL_LH_doall_arg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @OPENSSL_LH_retrieve(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @OPENSSL_LH_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @OPENSSL_LH_delete(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ossl_quic_sstream_get_stream_frame(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @ossl_quic_txfc_get_credit(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ossl_quic_rxfc_get_final_size(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
end_hunk_0
