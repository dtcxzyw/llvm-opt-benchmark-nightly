Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/quic_stream_map?download=true
inline.NumInlined: 59
inline.NumDeleted: 24
begin_hunk_0_@ossl_quic_stream_map_update_state:bb.a
  store i64 %i.bb, ptr %i.b, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !39
  %i.be = add i64 %i.bd, -1                       ; 2 uses
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !39
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %ossl_quic_stream_map_notify_totally_acked.exit.sink.split, label %ossl_quic_stream_map_notify_totally_acked.exit

ossl_quic_stream_map_notify_totally_acked.exit.sink.split: ; preds = %bb.k, %bb.g
  %i.bg = load ptr, ptr %i.e, align 8, !tbaa !21
  tail call void @ossl_quic_channel_notify_flush_done(ptr noundef %i.bg) #13
  br label %ossl_quic_stream_map_notify_totally_acked.exit

ossl_quic_stream_map_notify_totally_acked.exit:   ; preds = %ossl_quic_stream_map_notify_totally_acked.exit.sink.split, %bb.k, %bb.j, %bb.g, %bb.f, %bb.e, %bb.h, %bb.i
  %i.bh = load i64, ptr %i.b, align 8             ; 9 uses
  %i.bi = and i64 %i.bh, 412316860416
  %or.cond88.not = icmp eq i64 %i.bi, 137438953472
  br i1 %or.cond88.not, label %bb.l, label %qsm_ready_for_gc.exit.thread

bb.l:                                             ; preds = %ossl_quic_stream_map_notify_totally_acked.exit
  %i.bj = and i64 %i.bh, 16711680
  %i.bk = icmp ne i64 %i.bj, 0
  %i.bl = and i64 %i.bh, 68719476736
  %.not7.i = icmp eq i64 %i.bl, 0
  %or.cond.i = and i1 %i.bk, %.not7.i
  br i1 %or.cond.i, label %qsm_ready_for_gc.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = and i64 %i.bh, 65280
  %.not1.i = icmp eq i64 %i.bm, 0
  br i1 %.not1.i, label %qsm_ready_for_gc.exit.thread69, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = trunc i64 %i.bh to i32
  %i.bo = lshr i32 %i.bn, 8
  %i.bp = and i32 %i.bo, 255                      ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 4
  br i1 %i.bq, label %qsm_ready_for_gc.exit.thread69, label %qsm_ready_for_gc.exit

qsm_ready_for_gc.exit.thread69:                   ; preds = %bb.m, %bb.n
  %i.br = or disjoint i64 %i.bh, 274877906944
  store i64 %i.br, ptr %i.b, align 8
  br label %bb.o

qsm_ready_for_gc.exit:                            ; preds = %bb.n
  %.not73 = icmp eq i32 %i.bp, 6                  ; 2 uses
  %i.bs = select i1 %.not73, i64 274877906944, i64 0
  %i.bt = or disjoint i64 %i.bs, %i.bh            ; 2 uses
  store i64 %i.bt, ptr %i.b, align 8
  br i1 %.not73, label %bb.o, label %qsm_ready_for_gc.exit.thread

bb.o:                                             ; preds = %qsm_ready_for_gc.exit.thread69, %qsm_ready_for_gc.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !32 ; 2 uses
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !33
  store ptr %i.bv, ptr %i.bu, align 8, !tbaa !32
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.bu, ptr %i.by, align 8, !tbaa !33
  %.pre79.pre = load i64, ptr %i.b, align 8
  br label %qsm_ready_for_gc.exit.thread

qsm_ready_for_gc.exit.thread:                     ; preds = %bb.l, %qsm_ready_for_gc.exit, %bb.o, %ossl_quic_stream_map_notify_totally_acked.exit
  %.pre79 = phi i64 [ %i.bh, %ossl_quic_stream_map_notify_totally_acked.exit ], [ %i.bt, %qsm_ready_for_gc.exit ], [ %.pre79.pre, %bb.o ], [ %i.bh, %bb.l ] ; 8 uses
  %i.bz = and i64 %.pre79, 274877906944
  %.not43 = icmp eq i64 %i.bz, 0
  %or.cond87 = select i1 %.0, i1 %.not43, i1 false
  br i1 %or.cond87, label %bb.p, label %.critedge

bb.p:                                             ; preds = %qsm_ready_for_gc.exit.thread
  %i.ca = and i64 %.pre79, 16711680               ; 2 uses
  %.not74 = icmp eq i64 %i.ca, 0
  br i1 %.not74, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cb = trunc i64 %.pre79 to i32
  %i.cc = lshr i32 %i.cb, 16
  %i.cd = and i32 %i.cc, 255
  %i.ce = add nsw i32 %i.cd, -7
  %narrow.i = icmp ult i32 %i.ce, -2
  %i.cf = icmp eq i64 %i.ca, 65536
  %or.cond72 = and i1 %i.cf, %narrow.i
  br i1 %or.cond72, label %bb.r, label %._crit_edge

bb.r:                                             ; preds = %bb.q
  %i.cg = and i64 %.pre79, 8589934592
  %.not46 = icmp eq i64 %i.cg, 0
  br i1 %.not46, label %bb.s, label %.critedge54

bb.s:                                             ; preds = %bb.r
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ci = tail call i32 @ossl_quic_rxfc_has_cwm_changed(ptr noundef nonnull %i.ch, i32 noundef 0) #13
  %.not47 = icmp eq i32 %i.ci, 0
  %.pre77 = load i64, ptr %i.b, align 8           ; 2 uses
  br i1 %.not47, label %._crit_edge, label %.critedge54

._crit_edge:                                      ; preds = %bb.s, %bb.q, %bb.p
  %i.cj = phi i64 [ %.pre79, %bb.p ], [ %.pre79, %bb.q ], [ %.pre77, %bb.s ] ; 6 uses
  %i.ck = and i64 %i.cj, 51539607552
  %or.cond52 = icmp eq i64 %i.ck, 0
  br i1 %or.cond52, label %bb.t, label %.critedge54

bb.t:                                             ; preds = %._crit_edge
  %i.cl = and i64 %i.cj, 134217728
  %.not50 = icmp eq i64 %i.cl, 0
  br i1 %.not50, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.cm = lshr i64 %i.cj, 8
  %trunc.i = trunc i64 %i.cm to i8
  %trunc.off.i = add i8 %trunc.i, -1
  %switch.i = icmp ult i8 %trunc.off.i, 3
  br i1 %switch.i, label %bb.v, label %stream_has_data_to_send.exit.thread

bb.v:                                             ; preds = %bb.u
  store i64 2, ptr %i.a, align 8, !tbaa !40
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !36
  %i.cp = call i32 @ossl_quic_sstream_get_stream_frame(ptr noundef %i.co, i64 noundef 0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %i.a) #13
  %.not.i62 = icmp eq i32 %i.cp, 0
  br i1 %.not.i62, label %.stream_has_data_to_send.exit.thread_crit_edge, label %stream_has_data_to_send.exit

.stream_has_data_to_send.exit.thread_crit_edge:   ; preds = %bb.v
  %.pre78.pre = load i64, ptr %i.b, align 8
  br label %stream_has_data_to_send.exit.thread

stream_has_data_to_send.exit.thread:              ; preds = %.stream_has_data_to_send.exit.thread_crit_edge, %bb.u
  %.pre78 = phi i64 [ %.pre78.pre, %.stream_has_data_to_send.exit.thread_crit_edge ], [ %i.cj, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %.critedge

stream_has_data_to_send.exit:                     ; preds = %bb.v
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.cr = call i64 @ossl_quic_txfc_get_credit(ptr noundef nonnull %i.cq, i64 noundef 0) #13
  %i.cs = call i64 @ossl_quic_txfc_get_swm(ptr noundef nonnull %i.cq) #13
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cu = load i8, ptr %i.ct, align 8
  %i.cv = and i8 %i.cu, 2
  %i.cw = icmp ne i8 %i.cv, 0
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cy = load i64, ptr %i.cx, align 8
  %i.cz = icmp eq i64 %i.cy, 0
  %or.cond.i63 = select i1 %i.cw, i1 %i.cz, i1 false
  %i.da = add i64 %i.cs, %i.cr
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dc = load i64, ptr %i.db, align 8
  %i.dd = icmp ult i64 %i.dc, %i.da
  %narrow.i64 = select i1 %or.cond.i63, i1 true, i1 %i.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %.pre80 = load i64, ptr %i.b, align 8           ; 2 uses
  br i1 %narrow.i64, label %.critedge54, label %.critedge

.critedge54:                                      ; preds = %stream_has_data_to_send.exit, %bb.s, %bb.r, %._crit_edge
  %i.de = phi i64 [ %i.cj, %._crit_edge ], [ %.pre77, %bb.s ], [ %.pre79, %bb.r ], [ %.pre80, %stream_has_data_to_send.exit ]
  %i.df = and i64 %i.de, 16777216
  %.not.i65 = icmp eq i64 %i.df, 0
  br i1 %.not.i65, label %bb.w, label %stream_map_mark_active.exit

bb.w:                                             ; preds = %.critedge54
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !32 ; 2 uses
  store ptr %i.dh, ptr %1, align 8, !tbaa !32
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr %1, ptr %i.di, align 8, !tbaa !33
  store ptr %1, ptr %i.dg, align 8, !tbaa !32
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.dg, ptr %i.dj, align 8, !tbaa !33
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !41
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store ptr %1, ptr %i.dk, align 8, !tbaa !41
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dn = load i64, ptr %i.b, align 8
  %i.do = or i64 %i.dn, 16777216
  br label %stream_map_mark_active.exit.sink.split

.critedge:                                        ; preds = %stream_has_data_to_send.exit.thread, %qsm_ready_for_gc.exit.thread, %bb.t, %stream_has_data_to_send.exit
  %i.dp = phi i64 [ %.pre78, %stream_has_data_to_send.exit.thread ], [ %.pre80, %stream_has_data_to_send.exit ], [ %.pre79, %qsm_ready_for_gc.exit.thread ], [ %i.cj, %bb.t ]
  %i.dq = and i64 %i.dp, 16777216
  %.not.i66 = icmp eq i64 %i.dq, 0
  br i1 %.not.i66, label %stream_map_mark_active.exit, label %bb.z

bb.z:                                             ; preds = %.critedge
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !41
  %i.dt = icmp eq ptr %i.ds, %1
  br i1 %i.dt, label %bb.aa, label %.thread.i

bb.aa:                                            ; preds = %bb.z
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dv = getelementptr i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.dv, align 8, !tbaa !33 ; 3 uses
  %i.dw = icmp eq ptr %.val.i, %i.du
  br i1 %i.dw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dx = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !33
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.08.i.i = phi ptr [ %i.dy, %bb.ab ], [ %.val.i, %bb.aa ] ; 2 uses
  %i.dz = icmp eq ptr %.08.i.i, %i.du
  %.0.i.i = select i1 %i.dz, ptr null, ptr %.08.i.i ; 2 uses
  %i.ea = icmp eq ptr %.0.i.i, %1
  %spec.store.select.i = select i1 %i.ea, ptr null, ptr %.0.i.i
  store ptr %spec.store.select.i, ptr %i.dr, align 8
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ac, %bb.z
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = load ptr, ptr %4, align 8, !tbaa !33       ; 2 uses
  %i.eb = load ptr, ptr %1, align 8, !tbaa !32    ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store ptr %5, ptr %i.ec, align 8, !tbaa !33
  store ptr %i.eb, ptr %5, align 8, !tbaa !32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.ed = load i64, ptr %i.b, align 8
  %i.ee = and i64 %i.ed, -16777217
  br label %stream_map_mark_active.exit.sink.split

stream_map_mark_active.exit.sink.split:           ; preds = %bb.y, %.thread.i
  %.sink = phi i64 [ %i.ee, %.thread.i ], [ %i.do, %bb.y ]
  store i64 %.sink, ptr %i.b, align 8
  br label %stream_map_mark_active.exit

stream_map_mark_active.exit:                      ; preds = %stream_map_mark_active.exit.sink.split, %.critedge, %.critedge54
  ret void
}

declare i32 @ossl_quic_sstream_is_totally_acked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_quic_stream_map_notify_totally_acked(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = and i64 %i.b, 65280
  %cond = icmp eq i64 %i.c, 768
  br i1 %cond, label %bb.b, label %shutdown_flush_done.exit

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, -65281
  %i.e = or disjoint i64 %i.d, 1024
  store i64 %i.e, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36
  %i.h = tail call i32 @ossl_quic_sstream_get_final_size(ptr noundef %i.g, ptr noundef null) #13
  %i.i = load i64, ptr %i.a, align 8
  %i.j = and i32 %i.h, 1
  %i.k = zext nneg i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 40
  %i.m = and i64 %i.i, -1099511627777
  %i.n = or disjoint i64 %i.l, %i.m
  store i64 %i.n, ptr %i.a, align 8
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !36
  tail call void @ossl_quic_sstream_free(ptr noundef %i.o) #13
  store ptr null, ptr %i.f, align 8, !tbaa !36
  %i.p = load i64, ptr %i.a, align 8              ; 2 uses
  %i.q = and i64 %i.p, 549755813888
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %shutdown_flush_done.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = and i64 %i.p, -549755813889
  store i64 %i.r, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !39
  %i.u = add i64 %i.t, -1                         ; 2 uses
  store i64 %i.u, ptr %i.s, align 8, !tbaa !39
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.d, label %shutdown_flush_done.exit

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !21
  tail call void @ossl_quic_channel_notify_flush_done(ptr noundef %i.x) #13
  br label %shutdown_flush_done.exit

shutdown_flush_done.exit:                         ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %bb.c ], [ 1, %bb.d ]
  ret i32 %.0
}

declare i32 @ossl_quic_rxfc_has_cwm_changed(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @ossl_quic_stream_map_ensure_send_part_id(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = lshr i64 %i.b, 8
  %trunc = trunc i64 %i.c to i8
  switch i8 %trunc, label %bb.c [
    i8 0, label %bb.d
    i8 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, -65281
  %i.e = or disjoint i64 %i.d, 512
  store i64 %i.e, ptr %i.a, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i32 [ 1, %bb.c ], [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_quic_stream_map_notify_all_data_sent(ptr nofree noundef readnone captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 65280
  %cond = icmp eq i64 %i.c, 512
  br i1 %cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = tail call i32 @ossl_quic_sstream_get_final_size(ptr noundef %i.e, ptr noundef nonnull %i.f) #13
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
define range(i32 0, 2) i32 @ossl_quic_stream_map_reset_stream_send_part(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = lshr i64 %i.b, 8
  %trunc = trunc i64 %i.c to i8
  switch i8 %trunc, label %bb.g [
    i8 6, label %bb.f
    i8 5, label %bb.f
    i8 1, label %ossl_quic_stream_map_ensure_send_part_id.exit
    i8 2, label %bb.b
    i8 3, label %bb.c
  ]

ossl_quic_stream_map_ensure_send_part_id.exit:    ; preds = %bb.a
  %i.d = and i64 %i.b, -65281
  %i.e = or disjoint i64 %i.d, 512
  store i64 %i.e, ptr %i.a, align 8
  br label %bb.b

bb.b:                                             ; preds = %ossl_quic_stream_map_ensure_send_part_id.exit, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.g = tail call i64 @ossl_quic_txfc_get_swm(ptr noundef nonnull %i.f) #13
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %i.g, ptr %i.h, align 8, !tbaa !30
  %.pre = load i64, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i64 [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %2, ptr %i.j, align 8, !tbaa !56
  %i.k = and i64 %i.i, -34359803649
  %i.l = or disjoint i64 %i.k, 34359739648
  store i64 %i.l, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !36
  tail call void @ossl_quic_sstream_free(ptr noundef %i.n) #13
  store ptr null, ptr %i.m, align 8, !tbaa !36
  %i.o = load i64, ptr %i.a, align 8              ; 2 uses
  %i.p = and i64 %i.o, 549755813888
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %shutdown_flush_done.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = and i64 %i.o, -549755813889
  store i64 %i.q, ptr %i.a, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !39
  %i.t = add i64 %i.s, -1                         ; 2 uses
  store i64 %i.t, ptr %i.r, align 8, !tbaa !39
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.e, label %shutdown_flush_done.exit

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21
  tail call void @ossl_quic_channel_notify_flush_done(ptr noundef %i.w) #13
  br label %shutdown_flush_done.exit

shutdown_flush_done.exit:                         ; preds = %bb.c, %bb.d, %bb.e
  tail call void @ossl_quic_stream_map_update_state(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.g

bb.f:                                             ; preds = %bb.a, %bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %shutdown_flush_done.exit
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.f ], [ 1, %shutdown_flush_done.exit ]
  ret i32 %.0
}

end_hunk_0
begin_hunk_1_@ossl_quic_stream_map_gc:bb.a
list_next.exit:                                   ; preds = %bb.b, %bb.c
  %.08.i = phi ptr [ %i.e, %bb.c ], [ %.val, %bb.b ] ; 10 uses
  %i.f = icmp eq ptr %.08.i, %i.a
  %i.g = getelementptr inbounds i8, ptr %.08.i, i64 -32 ; 4 uses
  br i1 %i.f, label %bb.j, label %bb.d

bb.d:                                             ; preds = %list_next.exit
  %i.h = getelementptr inbounds i8, ptr %.08.i, i64 -24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31   ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.i, ptr %i.k, align 8, !tbaa !33
  store ptr %i.j, ptr %i.i, align 8, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds i8, ptr %.08.i, i64 -8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34   ; 3 uses
  %.not17.i = icmp eq ptr %i.m, null
  br i1 %.not17.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds i8, ptr %.08.i, i64 -16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.m, ptr %i.p, align 8, !tbaa !33
  store ptr %i.o, ptr %i.m, align 8, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !35   ; 3 uses
  %.not18.i = icmp eq ptr %i.r, null
  br i1 %.not18.i, label %ossl_quic_stream_map_release.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %.08.i, align 8, !tbaa !32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.r, ptr %i.t, align 8, !tbaa !33
  store ptr %i.s, ptr %i.r, align 8, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i, i8 0, i64 16, i1 false)
  br label %ossl_quic_stream_map_release.exit

ossl_quic_stream_map_release.exit:                ; preds = %bb.h, %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i, i64 80 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !36
  tail call void @ossl_quic_sstream_free(ptr noundef %i.v) #13
  store ptr null, ptr %i.u, align 8, !tbaa !36
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i, i64 88 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !37
  tail call void @ossl_quic_rstream_free(ptr noundef %i.x) #13
  store ptr null, ptr %i.w, align 8, !tbaa !37
  %i.y = load ptr, ptr %0, align 8, !tbaa !17
  %i.z = tail call ptr @OPENSSL_LH_delete(ptr noundef %i.y, ptr noundef nonnull %i.g) #13 ; 0 uses
  tail call void @CRYPTO_free(ptr noundef nonnull %i.g, ptr noundef nonnull @.str, i32 noundef 198) #13
  br label %bb.b, !llvm.loop !60

bb.j:                                             ; preds = %list_next.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @ossl_quic_stream_map_begin_shutdown_flush(ptr noundef initializes((96, 104)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.a, align 8, !tbaa !39
  %i.b = load ptr, ptr %0, align 8, !tbaa !17
  tail call void @OPENSSL_LH_doall_arg(ptr noundef %i.b, ptr noundef nonnull @begin_shutdown_flush_each, ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @begin_shutdown_flush_each(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 65024
  %switch.i = icmp eq i64 %i.c, 512
  br i1 %switch.i, label %eligible_for_shutdown_flush.exit, label %eligible_for_shutdown_flush.exit.thread

eligible_for_shutdown_flush.exit:                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.f = tail call i32 @ossl_quic_sstream_is_totally_acked(ptr noundef %i.e) #13
  %.not.i.not = icmp eq i32 %i.f, 0
  br i1 %.not.i.not, label %bb.b, label %eligible_for_shutdown_flush.exit.thread

bb.b:                                             ; preds = %eligible_for_shutdown_flush.exit
  %i.g = load i64, ptr %i.a, align 8              ; 2 uses
  %i.h = and i64 %i.g, 549755813888
  %.not5 = icmp eq i64 %i.h, 0
  br i1 %.not5, label %bb.c, label %eligible_for_shutdown_flush.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.i = or disjoint i64 %i.g, 549755813888
  store i64 %i.i, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !39
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !39
  br label %eligible_for_shutdown_flush.exit.thread

eligible_for_shutdown_flush.exit.thread:          ; preds = %bb.a, %eligible_for_shutdown_flush.exit, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @ossl_quic_stream_map_is_shutdown_flush_finished(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i64, ptr %i.a, align 8, !tbaa !39
  %i.c = icmp eq i64 %i.b, 0
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ossl_quic_stream_iter_init(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !44
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.d, align 8, !tbaa !46
  %.not = icmp eq i32 %2, 0
  %.not12 = icmp eq ptr %i.b, null
  %or.cond = select i1 %.not, i1 true, i1 %.not12
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !38
  %i.g = add i64 %i.f, 1                          ; 2 uses
  store i64 %i.g, ptr %i.e, align 8, !tbaa !38
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = load i64, ptr %i.h, align 8, !tbaa !18
  %.not13 = icmp ult i64 %i.g, %i.i
  br i1 %.not13, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.e, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = getelementptr i8, ptr %i.b, i64 8
  %.val = load ptr, ptr %i.k, align 8, !tbaa !33  ; 3 uses
  %i.l = icmp eq ptr %.val, %i.j
  br i1 %i.l, label %bb.d, label %list_next.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !33
  br label %list_next.exit

list_next.exit:                                   ; preds = %bb.c, %bb.d
  %.08.i = phi ptr [ %i.n, %bb.d ], [ %.val, %bb.c ] ; 2 uses
  %i.o = icmp eq ptr %.08.i, %i.j
  %.0.i = select i1 %i.o, ptr null, ptr %.08.i
  store ptr %.0.i, ptr %i.a, align 8, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %list_next.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ossl_quic_stream_iter_next(ptr nofree noundef captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = getelementptr i8, ptr %i.b, i64 8
  %.val = load ptr, ptr %i.f, align 8, !tbaa !33  ; 3 uses
  %i.g = icmp eq ptr %.val, %i.e
  br i1 %i.g, label %bb.c, label %list_next.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !33
  br label %list_next.exit

list_next.exit:                                   ; preds = %bb.b, %bb.c
  %.08.i = phi ptr [ %i.i, %bb.c ], [ %.val, %bb.b ] ; 2 uses
  %i.j = icmp eq ptr %.08.i, %i.e
  %.0.i = select i1 %i.j, ptr null, ptr %.08.i    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !45
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
define internal i64 @lh_QUIC_STREAM_hfn_thunk(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = tail call i64 %1(ptr noundef %0) #13
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal i32 @lh_QUIC_STREAM_cfn_thunk(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = tail call i32 %2(ptr noundef %0, ptr noundef %1) #13
  ret i32 %i.a
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @lh_QUIC_STREAM_doall_thunk(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #10 {
bb.a:
  tail call void %1(ptr noundef %0) #13
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @lh_QUIC_STREAM_doall_arg_thunk(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #10 {
bb.a:
  tail call void %2(ptr noundef %0, ptr noundef %1) #13
  ret void
}

declare void @OPENSSL_LH_set_down_load(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @OPENSSL_LH_free(ptr noundef) local_unnamed_addr #3

declare void @OPENSSL_LH_doall_arg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @OPENSSL_LH_retrieve(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @OPENSSL_LH_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @OPENSSL_LH_delete(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ossl_quic_sstream_get_stream_frame(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @ossl_quic_txfc_get_credit(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @ossl_quic_channel_notify_flush_done(ptr noundef) local_unnamed_addr #3

declare i32 @ossl_quic_rxfc_get_final_size(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS20lhash_st_QUIC_STREAM", !8, i64 0}
!10 = !{!"p1 _ZTS15quic_channel_st", !8, i64 0}
!11 = !{!"p1 _ZTS24quic_stream_list_node_st", !8, i64 0}
!12 = !{!"quic_stream_list_node_st", !11, i64 0, !11, i64 8}
!13 = !{!"long", !4, i64 0}
!14 = !{!"p1 _ZTS14quic_stream_st", !8, i64 0}
!15 = !{!"p1 _ZTS12quic_rxfc_st", !8, i64 0}
!16 = !{!"quic_stream_map_st", !9, i64 0, !10, i64 8, !12, i64 16, !12, i64 32, !12, i64 48, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !14, i64 104, !8, i64 112, !8, i64 120, !15, i64 128, !15, i64 136}
!17 = !{!16, !9, i64 0}
!18 = !{!16, !13, i64 64}
!19 = !{!16, !8, i64 112}
!20 = !{!16, !8, i64 120}
!21 = !{!16, !10, i64 8}
!22 = !{!"p1 _ZTS15quic_sstream_st", !8, i64 0}
!23 = !{!"p1 _ZTS15quic_rstream_st", !8, i64 0}
!24 = !{!"p1 _ZTS12quic_txfc_st", !8, i64 0}
!25 = !{!"quic_txfc_st", !24, i64 0, !13, i64 8, !13, i64 16, !4, i64 24}
!26 = !{!"", !13, i64 0}
!27 = !{!"quic_rxfc_st", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !26, i64 56, !8, i64 64, !8, i64 72, !15, i64 80, !4, i64 88, !4, i64 89, !4, i64 90, !4, i64 91}
!28 = !{!"quic_stream_st", !12, i64 0, !12, i64 16, !12, i64 32, !14, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !22, i64 112, !23, i64 120, !25, i64 128, !27, i64 160, !5, i64 256, !5, i64 257, !5, i64 258, !5, i64 259, !5, i64 259, !5, i64 259, !5, i64 259, !5, i64 259, !5, i64 259, !5, i64 259, !5, i64 259, !5, i64 260, !5, i64 260, !5, i64 260, !5, i64 260, !5, i64 260, !5, i64 260, !5, i64 260, !5, i64 260, !5, i64 261}
!29 = !{!28, !13, i64 56}
!30 = !{!28, !13, i64 104}
!31 = !{!28, !11, i64 8}
!32 = !{!12, !11, i64 0}
!33 = !{!12, !11, i64 8}
!34 = !{!28, !11, i64 24}
!35 = !{!28, !11, i64 40}
!36 = !{!28, !22, i64 112}
!37 = !{!28, !23, i64 120}
!38 = !{!16, !13, i64 72}
!39 = !{!16, !13, i64 96}
!40 = !{!13, !13, i64 0}
!41 = !{!16, !14, i64 104}
!42 = !{!"p1 _ZTS18quic_stream_map_st", !8, i64 0}
!43 = !{!"quic_stream_iter_st", !42, i64 0, !14, i64 8, !14, i64 16}
!44 = !{!43, !42, i64 0}
!45 = !{!43, !14, i64 8}
!46 = !{!43, !14, i64 16}
!47 = !{!16, !11, i64 24}
!48 = !{!16, !11, i64 16}
!49 = !{!16, !11, i64 40}
!50 = !{!16, !11, i64 32}
!51 = !{!16, !11, i64 56}
!52 = !{!16, !11, i64 48}
!53 = !{!16, !15, i64 128}
!54 = !{!16, !15, i64 136}
!55 = !{ptr @ossl_quic_stream_map_is_local_allowed_by_stream_limit}
!56 = !{!28, !13, i64 72}
!57 = !{!28, !13, i64 88}
!58 = !{!28, !13, i64 64}
!59 = !{!15, !15, i64 0}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.mustprogress"}
end_hunk_1
