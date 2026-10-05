Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/quic_stream_map?download=true
inline.NumInlined: 53
inline.NumDeleted: 23
begin_hunk_0_@ossl_quic_stream_map_update_state:bb.a
  %.not.i = icmp eq i64 %i.al, 0
  br i1 %.not.i, label %ossl_quic_stream_map_notify_totally_acked.exit, label %ossl_quic_stream_map_notify_totally_acked.exit.sink.split

ossl_quic_stream_map_notify_totally_acked.exit.sink.split: ; preds = %bb.i, %bb.f
  %.sink90 = phi i64 [ %i.ad, %bb.f ], [ %i.ak, %bb.i ]
  %i.am = and i64 %.sink90, -549755813889
  store i64 %i.am, ptr %i.b, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !40
  %i.ap = add i64 %i.ao, -1
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !40
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
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !33 ; 2 uses
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !33
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !34
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !33
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.bd, ptr %i.bh, align 8, !tbaa !34
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
  %i.bv = lshr i64 %i.bs, 8
  %trunc.i = trunc i64 %i.bv to i8
  %trunc.off.i = add i8 %trunc.i, -1
  %switch.i = icmp ult i8 %trunc.off.i, 3
  br i1 %switch.i, label %bb.t, label %stream_has_data_to_send.exit.thread

bb.t:                                             ; preds = %bb.s
  store i64 2, ptr %i.a, align 8, !tbaa !41
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !37
  %i.by = call i32 @ossl_quic_sstream_get_stream_frame(ptr noundef %i.bx, i64 noundef 0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %i.a) #12
  %.not.i62 = icmp eq i32 %i.by, 0
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
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ca = call i64 @ossl_quic_txfc_get_credit(ptr noundef nonnull %i.bz, i64 noundef 0) #12
  %i.cb = call i64 @ossl_quic_txfc_get_swm(ptr noundef nonnull %i.bz) #12
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cd = load i8, ptr %i.cc, align 8
  %i.ce = and i8 %i.cd, 2
  %i.cf = icmp ne i8 %i.ce, 0
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = icmp eq i64 %i.ch, 0
  %or.cond.i63 = select i1 %i.cf, i1 %i.ci, i1 false
  %i.cj = add i64 %i.cb, %i.ca
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = icmp ult i64 %i.cl, %i.cj
  %narrow.i64 = select i1 %or.cond.i63, i1 true, i1 %i.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %.pre81 = load i64, ptr %i.b, align 8           ; 2 uses
  br i1 %narrow.i64, label %.critedge54, label %.critedge

.critedge54:                                      ; preds = %stream_has_data_to_send.exit, %bb.q, %bb.p, %._crit_edge
  %i.cn = phi i64 [ %i.bs, %._crit_edge ], [ %.pre78, %bb.q ], [ %.pre80, %bb.p ], [ %.pre81, %stream_has_data_to_send.exit ]
  %i.co = and i64 %i.cn, 16777216
  %.not.i65 = icmp eq i64 %i.co, 0
  br i1 %.not.i65, label %bb.u, label %stream_map_mark_active.exit

bb.u:                                             ; preds = %.critedge54
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !33 ; 2 uses
  store ptr %i.cq, ptr %1, align 8, !tbaa !33
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %1, ptr %i.cr, align 8, !tbaa !34
  store ptr %1, ptr %i.cp, align 8, !tbaa !33
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.cp, ptr %i.cs, align 8, !tbaa !34
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !42
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store ptr %1, ptr %i.ct, align 8, !tbaa !42
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cw = load i64, ptr %i.b, align 8
  %i.cx = or i64 %i.cw, 16777216
  br label %stream_map_mark_active.exit.sink.split

.critedge:                                        ; preds = %stream_has_data_to_send.exit.thread, %qsm_ready_for_gc.exit.thread, %bb.r, %stream_has_data_to_send.exit
  %i.cy = phi i64 [ %.pre79, %stream_has_data_to_send.exit.thread ], [ %.pre81, %stream_has_data_to_send.exit ], [ %.pre80, %qsm_ready_for_gc.exit.thread ], [ %i.bs, %bb.r ]
  %i.cz = and i64 %i.cy, 16777216
  %.not.i66 = icmp eq i64 %i.cz, 0
  br i1 %.not.i66, label %stream_map_mark_active.exit, label %bb.x

bb.x:                                             ; preds = %.critedge
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !42
  %i.dc = icmp eq ptr %i.db, %1
  br i1 %i.dc, label %bb.y, label %..thread.i_crit_edge

..thread.i_crit_edge:                             ; preds = %bb.x
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre82 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !34
  br label %.thread.i

bb.y:                                             ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.de = getelementptr i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.de, align 8, !tbaa !34 ; 4 uses
  %i.df = icmp eq ptr %.val.i, %i.dd
  br i1 %i.df, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dg = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !34
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.08.i.i = phi ptr [ %i.dh, %bb.z ], [ %.val.i, %bb.y ] ; 2 uses
  %i.di = icmp eq ptr %.08.i.i, %i.dd
  %.0.i.i = select i1 %i.di, ptr null, ptr %.08.i.i ; 2 uses
  %i.dj = icmp eq ptr %.0.i.i, %1
  %spec.store.select.i = select i1 %i.dj, ptr null, ptr %.0.i.i
  store ptr %spec.store.select.i, ptr %i.da, align 8, !tbaa !42
  br label %.thread.i

.thread.i:                                        ; preds = %..thread.i_crit_edge, %bb.aa
  %4 = phi ptr [ %.pre82, %..thread.i_crit_edge ], [ %.val.i, %bb.aa ] ; 2 uses
  %i.dk = load ptr, ptr %1, align 8, !tbaa !33    ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %4, ptr %i.dl, align 8, !tbaa !34
  store ptr %i.dk, ptr %4, align 8, !tbaa !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.dm = load i64, ptr %i.b, align 8
  %i.dn = and i64 %i.dm, -16777217
  br label %stream_map_mark_active.exit.sink.split

stream_map_mark_active.exit.sink.split:           ; preds = %bb.w, %.thread.i
  %.sink = phi i64 [ %i.dn, %.thread.i ], [ %i.cx, %bb.w ]
  store i64 %.sink, ptr %i.b, align 8
  br label %stream_map_mark_active.exit

stream_map_mark_active.exit:                      ; preds = %stream_map_mark_active.exit.sink.split, %.critedge, %.critedge54
  ret void
}

declare i32 @ossl_quic_sstream_is_totally_acked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_stream_map_notify_totally_acked(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
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
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37
  tail call void @ossl_quic_sstream_free(ptr noundef %i.g) #12
  store ptr null, ptr %i.f, align 8, !tbaa !37
  %i.h = load i64, ptr %i.a, align 8              ; 2 uses
  %i.i = and i64 %i.h, 549755813888
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %shutdown_flush_done.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = and i64 %i.h, -549755813889
  store i64 %i.j, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !40
  %i.m = add i64 %i.l, -1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !40
  br label %shutdown_flush_done.exit

shutdown_flush_done.exit:                         ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %bb.c ]
  ret i32 %.0
}

declare i32 @ossl_quic_rxfc_has_cwm_changed(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_stream_map_ensure_send_part_id(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #5 {
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
define dso_local range(i32 0, 2) i32 @ossl_quic_stream_map_notify_all_data_sent(ptr nofree noundef readnone captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 65280
  %cond = icmp eq i64 %i.c, 512
  br i1 %cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
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
  %i.c = lshr i64 %i.b, 8
  %trunc = trunc i64 %i.c to i8
  switch i8 %trunc, label %bb.f [
    i8 6, label %bb.e
    i8 5, label %bb.e
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
  %i.g = tail call i64 @ossl_quic_txfc_get_swm(ptr noundef nonnull %i.f) #12
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %i.g, ptr %i.h, align 8, !tbaa !31
  %.pre = load i64, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i64 [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %2, ptr %i.j, align 8, !tbaa !57
  %i.k = and i64 %i.i, -34359803649
  %i.l = or disjoint i64 %i.k, 34359739648
  store i64 %i.l, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !37
  tail call void @ossl_quic_sstream_free(ptr noundef %i.n) #12
  store ptr null, ptr %i.m, align 8, !tbaa !37
  %i.o = load i64, ptr %i.a, align 8              ; 2 uses
  %i.p = and i64 %i.o, 549755813888
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %shutdown_flush_done.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = and i64 %i.o, -549755813889
  store i64 %i.q, ptr %i.a, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !40
  %i.t = add i64 %i.s, -1
  store i64 %i.t, ptr %i.r, align 8, !tbaa !40
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
define dso_local range(i32 0, 2) i32 @ossl_quic_stream_map_notify_reset_stream_acked(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = lshr i64 %i.b, 8
  %trunc = trunc i64 %i.c to i8
  switch i8 %trunc, label %bb.d [
    i8 6, label %bb.c
    i8 5, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, -65281
  %i.e = or disjoint i64 %i.d, 1536
  store i64 %i.e, ptr %i.a, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

end_hunk_0
begin_hunk_1_@ossl_quic_stream_map_gc:bb.a
list_next.exit:                                   ; preds = %bb.b, %bb.c
  %.08.i = phi ptr [ %i.e, %bb.c ], [ %.val, %bb.b ] ; 10 uses
  %i.f = icmp eq ptr %.08.i, %i.a
  %i.g = getelementptr inbounds i8, ptr %.08.i, i64 -32 ; 4 uses
  br i1 %i.f, label %bb.j, label %bb.d

bb.d:                                             ; preds = %list_next.exit
  %i.h = getelementptr inbounds i8, ptr %.08.i, i64 -24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32   ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !33   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.i, ptr %i.k, align 8, !tbaa !34
  store ptr %i.j, ptr %i.i, align 8, !tbaa !33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds i8, ptr %.08.i, i64 -8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !35   ; 3 uses
  %.not17.i = icmp eq ptr %i.m, null
  br i1 %.not17.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds i8, ptr %.08.i, i64 -16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !33   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.m, ptr %i.p, align 8, !tbaa !34
  store ptr %i.o, ptr %i.m, align 8, !tbaa !33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !36   ; 3 uses
  %.not18.i = icmp eq ptr %i.r, null
  br i1 %.not18.i, label %ossl_quic_stream_map_release.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %.08.i, align 8, !tbaa !33 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.r, ptr %i.t, align 8, !tbaa !34
  store ptr %i.s, ptr %i.r, align 8, !tbaa !33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i, i8 0, i64 16, i1 false)
  br label %ossl_quic_stream_map_release.exit

ossl_quic_stream_map_release.exit:                ; preds = %bb.h, %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i, i64 80 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !37
  tail call void @ossl_quic_sstream_free(ptr noundef %i.v) #12
  store ptr null, ptr %i.u, align 8, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i, i64 88 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !38
  tail call void @ossl_quic_rstream_free(ptr noundef %i.x) #12
  store ptr null, ptr %i.w, align 8, !tbaa !38
  %i.y = load ptr, ptr %0, align 8, !tbaa !18
  %i.z = tail call ptr @OPENSSL_LH_delete(ptr noundef %i.y, ptr noundef nonnull %i.g) #12 ; 0 uses
  tail call void @CRYPTO_free(ptr noundef nonnull %i.g, ptr noundef nonnull @.str, i32 noundef 192) #12
  br label %bb.b, !llvm.loop !61

bb.j:                                             ; preds = %list_next.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ossl_quic_stream_map_begin_shutdown_flush(ptr noundef initializes((88, 96)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.a, align 8, !tbaa !40
  %i.b = load ptr, ptr %0, align 8, !tbaa !18
  tail call void @OPENSSL_LH_doall_arg(ptr noundef %i.b, ptr noundef nonnull @begin_shutdown_flush_each, ptr noundef nonnull %0) #12
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
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.f = tail call i32 @ossl_quic_sstream_is_totally_acked(ptr noundef %i.e) #12
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
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !40
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !40
  br label %eligible_for_shutdown_flush.exit.thread

eligible_for_shutdown_flush.exit.thread:          ; preds = %bb.a, %eligible_for_shutdown_flush.exit, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_stream_map_is_shutdown_flush_finished(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8, !tbaa !40
  %i.c = icmp eq i64 %i.b, 0
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @ossl_quic_stream_iter_init(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !45
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.d, align 8, !tbaa !47
  %.not = icmp eq i32 %2, 0
  %.not12 = icmp eq ptr %i.b, null
  %or.cond = select i1 %.not, i1 true, i1 %.not12
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !39
  %i.g = add i64 %i.f, 1                          ; 2 uses
  store i64 %i.g, ptr %i.e, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !19
  %.not13 = icmp ult i64 %i.g, %i.i
  br i1 %.not13, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.e, align 8, !tbaa !39
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr i8, ptr %i.b, i64 8
  %.val = load ptr, ptr %i.k, align 8, !tbaa !34  ; 3 uses
  %i.l = icmp eq ptr %.val, %i.j
  br i1 %i.l, label %bb.d, label %list_next.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !34
  br label %list_next.exit

list_next.exit:                                   ; preds = %bb.c, %bb.d
  %.08.i = phi ptr [ %i.n, %bb.d ], [ %.val, %bb.c ] ; 2 uses
  %i.o = icmp eq ptr %.08.i, %i.j
  %.0.i = select i1 %i.o, ptr null, ptr %.08.i
  store ptr %.0.i, ptr %i.a, align 8, !tbaa !42
  br label %bb.e

bb.e:                                             ; preds = %list_next.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @ossl_quic_stream_iter_next(ptr nofree noundef captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = getelementptr i8, ptr %i.b, i64 8
  %.val = load ptr, ptr %i.f, align 8, !tbaa !34  ; 3 uses
  %i.g = icmp eq ptr %.val, %i.e
  br i1 %i.g, label %bb.c, label %list_next.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !34
  br label %list_next.exit

list_next.exit:                                   ; preds = %bb.b, %bb.c
  %.08.i = phi ptr [ %i.i, %bb.c ], [ %.val, %bb.b ] ; 2 uses
  %i.j = icmp eq ptr %.08.i, %i.e
  %.0.i = select i1 %i.j, ptr null, ptr %.08.i    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.m = icmp eq ptr %.0.i, %i.l
  %spec.store.select = select i1 %i.m, ptr null, ptr %.0.i
  store ptr %spec.store.select, ptr %i.a, align 8, !tbaa !47
  br label %bb.d

bb.d:                                             ; preds = %list_next.exit, %bb.a
  ret void
}

declare ptr @OPENSSL_LH_set_thunks(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @OPENSSL_LH_new(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i64 @lh_QUIC_STREAM_hfn_thunk(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = tail call i64 %1(ptr noundef %0) #12
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal i32 @lh_QUIC_STREAM_cfn_thunk(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = tail call i32 %2(ptr noundef %0, ptr noundef %1) #12
  ret i32 %i.a
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @lh_QUIC_STREAM_doall_thunk(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  tail call void %1(ptr noundef %0) #12
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @lh_QUIC_STREAM_doall_arg_thunk(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #9 {
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
!llvm.errno.tbaa = !{!9}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS20lhash_st_QUIC_STREAM", !10, i64 0}
!12 = !{!"p1 _ZTS24quic_stream_list_node_st", !10, i64 0}
!13 = !{!"quic_stream_list_node_st", !12, i64 0, !12, i64 8}
!14 = !{!"long", !6, i64 0}
!15 = !{!"p1 _ZTS14quic_stream_st", !10, i64 0}
!16 = !{!"p1 _ZTS12quic_rxfc_st", !10, i64 0}
!17 = !{!"quic_stream_map_st", !11, i64 0, !13, i64 8, !13, i64 24, !13, i64 40, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !15, i64 96, !10, i64 104, !10, i64 112, !16, i64 120, !16, i64 128, !7, i64 136}
!18 = !{!17, !11, i64 0}
!19 = !{!17, !14, i64 56}
!20 = !{!17, !10, i64 104}
!21 = !{!17, !10, i64 112}
!22 = !{!17, !7, i64 136}
!23 = !{!"p1 _ZTS15quic_sstream_st", !10, i64 0}
!24 = !{!"p1 _ZTS15quic_rstream_st", !10, i64 0}
!25 = !{!"p1 _ZTS12quic_txfc_st", !10, i64 0}
!26 = !{!"quic_txfc_st", !25, i64 0, !14, i64 8, !14, i64 16, !6, i64 24}
!27 = !{!"", !14, i64 0}
!28 = !{!"quic_rxfc_st", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !27, i64 56, !10, i64 64, !10, i64 72, !16, i64 80, !6, i64 88, !6, i64 89, !6, i64 90, !6, i64 91}
!29 = !{!"quic_stream_st", !13, i64 0, !13, i64 16, !13, i64 32, !15, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !23, i64 112, !24, i64 120, !26, i64 128, !28, i64 160, !7, i64 256, !7, i64 257, !7, i64 258, !7, i64 259, !7, i64 259, !7, i64 259, !7, i64 259, !7, i64 259, !7, i64 259, !7, i64 259, !7, i64 259, !7, i64 260, !7, i64 260, !7, i64 260, !7, i64 260, !7, i64 260, !7, i64 260, !7, i64 260, !7, i64 260}
!30 = !{!29, !14, i64 56}
!31 = !{!29, !14, i64 104}
!32 = !{!29, !12, i64 8}
!33 = !{!13, !12, i64 0}
!34 = !{!13, !12, i64 8}
!35 = !{!29, !12, i64 24}
!36 = !{!29, !12, i64 40}
!37 = !{!29, !23, i64 112}
!38 = !{!29, !24, i64 120}
!39 = !{!17, !14, i64 64}
!40 = !{!17, !14, i64 88}
!41 = !{!14, !14, i64 0}
!42 = !{!17, !15, i64 96}
!43 = !{!"p1 _ZTS18quic_stream_map_st", !10, i64 0}
!44 = !{!"quic_stream_iter_st", !43, i64 0, !15, i64 8, !15, i64 16}
!45 = !{!44, !43, i64 0}
!46 = !{!44, !15, i64 8}
!47 = !{!44, !15, i64 16}
!48 = !{!17, !12, i64 16}
!49 = !{!17, !12, i64 8}
!50 = !{!17, !12, i64 32}
!51 = !{!17, !12, i64 24}
!52 = !{!17, !12, i64 48}
!53 = !{!17, !12, i64 40}
!54 = !{!17, !16, i64 120}
!55 = !{!17, !16, i64 128}
!56 = !{ptr @ossl_quic_stream_map_is_local_allowed_by_stream_limit}
!57 = !{!29, !14, i64 72}
!58 = !{!29, !14, i64 88}
!59 = !{!29, !14, i64 64}
!60 = !{!16, !16, i64 0}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
end_hunk_1
