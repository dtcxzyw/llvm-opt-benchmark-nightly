inline.NumInlined: 10
inline.NumDeleted: 5
begin_hunk_0_@CRYPTO_free
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @ossl_quic_tserver_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36
  tail call void @SSL_free(ptr noundef %i.c) #5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47
  tail call void @ossl_quic_channel_free(ptr noundef %i.e) #5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46
  tail call void @ossl_quic_port_free(ptr noundef %i.g) #5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !39
  tail call void @ossl_quic_engine_free(ptr noundef %i.i) #5
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  tail call void @BIO_free_all(ptr noundef %i.k) #5
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49
  tail call void @BIO_free_all(ptr noundef %i.m) #5
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !50
  tail call void @CRYPTO_free(ptr noundef %i.o, ptr noundef nonnull @.str, i32 noundef 181) #5
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !33
  tail call void @SSL_CTX_free(ptr noundef %i.q) #5
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @ossl_crypto_mutex_free(ptr noundef nonnull %i.r) #5
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 186) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @BIO_free_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @ossl_quic_tserver_set_plain_packet_mutator(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = tail call i32 @ossl_quic_channel_set_mutator(ptr noundef %i.b, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5
  ret i32 %i.c
}

declare i32 @ossl_quic_channel_set_mutator(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @ossl_quic_tserver_set_handshake_mutator(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = tail call ptr @ossl_quic_channel_get0_ssl(ptr noundef %i.b) #5
  %i.d = tail call i32 @ossl_statem_set_mutator(ptr noundef %i.c, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5
  ret i32 %i.d
}

declare i32 @ossl_statem_set_mutator(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ossl_quic_channel_get0_ssl(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ossl_quic_tserver_tick(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = tail call ptr @ossl_quic_channel_get_reactor(ptr noundef %i.b) #5
  %i.d = tail call i32 @ossl_quic_reactor_tick(ptr noundef %i.c, i32 noundef 0) #5 ; 0 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.f = tail call i32 @ossl_quic_channel_is_active(ptr noundef %i.e) #5
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8
  %i.i = or i8 %i.h, 1
  store i8 %i.i, ptr %i.g, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 1
}

declare i32 @ossl_quic_reactor_tick(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @ossl_quic_channel_get_reactor(ptr noundef) local_unnamed_addr #3

declare i32 @ossl_quic_channel_is_active(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @ossl_quic_tserver_is_connected(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = tail call i32 @ossl_quic_channel_is_active(ptr noundef %i.b) #5
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ossl_quic_tserver_is_term_any(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = tail call i32 @ossl_quic_channel_is_term_any(ptr noundef %i.b) #5
  ret i32 %i.c
}

declare i32 @ossl_quic_channel_is_term_any(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @ossl_quic_tserver_get_terminate_cause(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = tail call ptr @ossl_quic_channel_get_terminate_cause(ptr noundef %i.b) #5
  ret ptr %i.c
}

declare ptr @ossl_quic_channel_get_terminate_cause(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @ossl_quic_tserver_is_terminated(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = tail call i32 @ossl_quic_channel_is_terminated(ptr noundef %i.b) #5
  ret i32 %i.c
}

declare i32 @ossl_quic_channel_is_terminated(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @ossl_quic_tserver_get_short_header_conn_id_len(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = tail call i64 @ossl_quic_channel_get_short_header_conn_id_len(ptr noundef %i.b) #5
  ret i64 %i.c
}

declare i64 @ossl_quic_channel_get_short_header_conn_id_len(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @ossl_quic_tserver_is_handshake_confirmed(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = tail call i32 @ossl_quic_channel_is_handshake_confirmed(ptr noundef %i.b) #5
  ret i32 %i.c
}

declare i32 @ossl_quic_channel_is_handshake_confirmed(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_tserver_read(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %struct.ossl_rtt_info_st, align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.d = tail call ptr @ossl_quic_channel_get_qsm(ptr noundef %i.c) #5
  %i.e = tail call ptr @ossl_quic_stream_map_get_by_id(ptr noundef %i.d, i64 noundef %1) #5 ; 6 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %1, 1
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.j = tail call i32 @ossl_quic_channel_is_active(ptr noundef %i.i) #5
  %.not30 = icmp eq i32 %i.j, 0
  br i1 %.not30, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %4, align 8, !tbaa !24
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = and i64 %i.l, 16711680
  %i.n = icmp eq i64 %i.m, 262144
  br i1 %i.n, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %6 = lshr i64 %i.l, 16
  %trunc.i = trunc i64 %6 to i8
  %7 = add i8 %trunc.i, -4
  %switch.i = icmp ult i8 %7, -3
  br i1 %switch.i, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !69
  %i.q = call i32 @ossl_quic_rstream_read(ptr noundef %i.p, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef nonnull %i.a) #5
  %.not25 = icmp eq i32 %i.q, 0
  br i1 %.not25, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load i64, ptr %4, align 8, !tbaa !24
  %.not26 = icmp eq i64 %i.r, 0
  br i1 %.not26, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.t = call ptr @ossl_quic_channel_get_statm(ptr noundef %i.s) #5
  call void @ossl_statm_get_rtt_info(ptr noundef %i.t, ptr noundef nonnull %5) #5
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.v = load i64, ptr %4, align 8, !tbaa !24
  %i.w = load i64, ptr %5, align 8
  %i.x = call i32 @ossl_quic_rxfc_on_retire(ptr noundef nonnull %i.u, i64 noundef %i.v, i64 %i.w) #5
  %.not27.not = icmp eq i32 %i.x, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  br i1 %.not27.not, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = load i32, ptr %i.a, align 4, !tbaa !5
  %.not28 = icmp eq i32 %i.y, 0
  br i1 %.not28, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.aa = call ptr @ossl_quic_channel_get_qsm(ptr noundef %i.z) #5
  %i.ab = call i32 @ossl_quic_stream_map_notify_totally_read(ptr noundef %i.aa, ptr noundef nonnull %i.e) #5 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ac = load i64, ptr %4, align 8, !tbaa !24
  %.not29 = icmp eq i64 %i.ac, 0
  br i1 %.not29, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.ae = call ptr @ossl_quic_channel_get_qsm(ptr noundef %i.ad) #5
  call void @ossl_quic_stream_map_update_state(ptr noundef %i.ae, ptr noundef nonnull %i.e) #5
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.g, %bb.e, %bb.f, %bb.d, %bb.c, %bb.b, %bb.i
  %.2 = phi i32 [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %bb.g ], [ 0, %bb.i ], [ 1, %bb.d ], [ 0, %bb.c ], [ 0, %bb.f ], [ 1, %bb.m ], [ 1, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.2
}

declare ptr @ossl_quic_stream_map_get_by_id(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @ossl_quic_channel_get_qsm(ptr noundef) local_unnamed_addr #3

declare i32 @ossl_quic_rstream_read(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ossl_statm_get_rtt_info(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ossl_quic_channel_get_statm(ptr noundef) local_unnamed_addr #3

declare i32 @ossl_quic_rxfc_on_retire(ptr noundef, i64 noundef, i64) local_unnamed_addr #3

declare i32 @ossl_quic_stream_map_notify_totally_read(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ossl_quic_stream_map_update_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_tserver_has_read_ended(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 0, ptr %i.b, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 0, ptr %i.c, align 4, !tbaa !5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.f = tail call ptr @ossl_quic_channel_get_qsm(ptr noundef %i.e) #5
  %i.g = tail call ptr @ossl_quic_stream_map_get_by_id(ptr noundef %i.f, i64 noundef %1) #5 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = and i64 %i.j, 16711680
  %i.l = icmp eq i64 %i.k, 262144
  br i1 %i.l, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %2 = lshr i64 %i.j, 16
  %trunc.i = trunc i64 %2 to i8
  %3 = add i8 %trunc.i, -4
  %switch.i = icmp ult i8 %3, -3
  br i1 %switch.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 120 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !69
  %i.o = call i32 @ossl_quic_rstream_peek(ptr noundef %i.n, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #5
  %.not13 = icmp eq i32 %i.o, 0
  br i1 %.not13, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %i.c, align 4, !tbaa !5
  %i.q = icmp ne i32 %i.p, 0
  %i.r = load i64, ptr %i.b, align 8
  %i.s = icmp eq i64 %i.r, 0
  %or.cond = select i1 %i.q, i1 %i.s, i1 false
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !69
  %i.u = call i32 @ossl_quic_rstream_read(ptr noundef %i.t, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #5
  %.not14 = icmp eq i32 %i.u, 0
  br i1 %.not14, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.w = call ptr @ossl_quic_channel_get_qsm(ptr noundef %i.v) #5
  %i.x = call i32 @ossl_quic_stream_map_notify_totally_read(ptr noundef %i.w, ptr noundef nonnull %i.g) #5 ; 0 uses
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.z = call ptr @ossl_quic_channel_get_qsm(ptr noundef %i.y) #5
  call void @ossl_quic_stream_map_update_state(ptr noundef %i.z, ptr noundef nonnull %i.g) #5
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.c, %bb.b, %bb.a, %bb.g
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ], [ 1, %bb.g ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

declare i32 @ossl_quic_rstream_peek(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_tserver_write(ptr noundef captures(none) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = tail call i32 @ossl_quic_channel_is_active(ptr noundef %i.b) #5
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %ossl_quic_tserver_tick.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.e = tail call ptr @ossl_quic_channel_get_qsm(ptr noundef %i.d) #5
  %i.f = tail call ptr @ossl_quic_stream_map_get_by_id(ptr noundef %i.e, i64 noundef %1) #5 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %ossl_quic_tserver_tick.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.f, i64 256
  %.val = load i64, ptr %i.h, align 8
  %5 = lshr i64 %.val, 8
  %trunc.i = trunc i64 %5 to i8
  %6 = add i8 %trunc.i, -4
  %switch.i = icmp ult i8 %6, -3
  br i1 %switch.i, label %ossl_quic_tserver_tick.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !81
  %i.k = tail call i32 @ossl_quic_sstream_append(ptr noundef %i.j, ptr noundef %2, i64 noundef %3, ptr noundef %4) #5
  %.not15 = icmp eq i32 %i.k, 0
  br i1 %.not15, label %ossl_quic_tserver_tick.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %4, align 8, !tbaa !24
  %.not16 = icmp eq i64 %i.l, 0
  br i1 %.not16, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.n = tail call ptr @ossl_quic_channel_get_qsm(ptr noundef %i.m) #5
  tail call void @ossl_quic_stream_map_update_state(ptr noundef %i.n, ptr noundef nonnull %i.f) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.p = tail call ptr @ossl_quic_channel_get_reactor(ptr noundef %i.o) #5
  %i.q = tail call i32 @ossl_quic_reactor_tick(ptr noundef %i.p, i32 noundef 0) #5 ; 0 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.s = tail call i32 @ossl_quic_channel_is_active(ptr noundef %i.r) #5
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %ossl_quic_tserver_tick.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8
  %i.v = or i8 %i.u, 1
  store i8 %i.v, ptr %i.t, align 8
  br label %ossl_quic_tserver_tick.exit

ossl_quic_tserver_tick.exit:                      ; preds = %bb.h, %bb.g, %bb.d, %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ], [ 1, %bb.g ], [ 1, %bb.h ]
  ret i32 %.0
}

declare i32 @ossl_quic_sstream_append(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_tserver_conclude(ptr noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = tail call i32 @ossl_quic_channel_is_active(ptr noundef %i.b) #5
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %ossl_quic_tserver_tick.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.e = tail call ptr @ossl_quic_channel_get_qsm(ptr noundef %i.d) #5
  %i.f = tail call ptr @ossl_quic_stream_map_get_by_id(ptr noundef %i.e, i64 noundef %1) #5 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %ossl_quic_tserver_tick.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.f, i64 256
  %.val = load i64, ptr %i.h, align 8
  %2 = lshr i64 %.val, 8
  %trunc.i = trunc i64 %2 to i8
  %3 = add i8 %trunc.i, -4
  %switch.i = icmp ult i8 %3, -3
  br i1 %switch.i, label %ossl_quic_tserver_tick.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !81
  %i.k = tail call i32 @ossl_quic_sstream_get_final_size(ptr noundef %i.j, ptr noundef null) #5
  %.not12 = icmp eq i32 %i.k, 0
  br i1 %.not12, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !81
  tail call void @ossl_quic_sstream_fin(ptr noundef %i.l) #5
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.n = tail call ptr @ossl_quic_channel_get_qsm(ptr noundef %i.m) #5
  tail call void @ossl_quic_stream_map_update_state(ptr noundef %i.n, ptr noundef nonnull %i.f) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.p = tail call ptr @ossl_quic_channel_get_reactor(ptr noundef %i.o) #5
  %i.q = tail call i32 @ossl_quic_reactor_tick(ptr noundef %i.p, i32 noundef 0) #5 ; 0 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.s = tail call i32 @ossl_quic_channel_is_active(ptr noundef %i.r) #5
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %ossl_quic_tserver_tick.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8
  %i.v = or i8 %i.u, 1
  store i8 %i.v, ptr %i.t, align 8
  br label %ossl_quic_tserver_tick.exit

ossl_quic_tserver_tick.exit:                      ; preds = %bb.g, %bb.f, %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 1, %bb.f ], [ 1, %bb.g ]
  ret i32 %.0
}

declare i32 @ossl_quic_sstream_get_final_size(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ossl_quic_sstream_fin(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_tserver_stream_new(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = tail call i32 @ossl_quic_channel_is_active(ptr noundef %i.b) #5
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.e = tail call ptr @ossl_quic_channel_new_stream_local(ptr noundef %i.d, i32 noundef %1) #5 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.h = load i64, ptr %i.g, align 8, !tbaa !82
  store i64 %i.h, ptr %2, align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

declare ptr @ossl_quic_channel_new_stream_local(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @ossl_quic_tserver_get0_rbio(ptr noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @ossl_quic_tserver_get0_ssl_ctx(ptr noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_tserver_stream_has_peer_stop_sending(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = tail call ptr @ossl_quic_channel_get_qsm(ptr noundef %i.b) #5
  %i.d = tail call ptr @ossl_quic_stream_map_get_by_id(ptr noundef %i.c, i64 noundef %1) #5 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 256 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = and i64 %i.g, 134217728
  %i.i = icmp ne i64 %i.h, 0
  %i.j = icmp ne ptr %2, null
  %or.cond = and i1 %i.j, %i.i
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.l = load i64, ptr %i.k, align 8, !tbaa !83
  store i64 %i.l, ptr %2, align 8, !tbaa !24
  %.pre = load i64, ptr %i.f, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = phi i64 [ %.pre, %bb.c ], [ %i.g, %bb.b ]
  %i.n = trunc i64 %i.m to i32
  %i.o = lshr i32 %i.n, 27
  %i.p = and i32 %i.o, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ %i.p, %bb.d ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_tserver_stream_has_peer_reset_stream(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = tail call ptr @ossl_quic_channel_get_qsm(ptr noundef %i.b) #5
  %i.d = tail call ptr @ossl_quic_stream_map_get_by_id(ptr noundef %i.c, i64 noundef %1) #5 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.d, i64 256      ; 2 uses
  %.val11 = load i64, ptr %i.f, align 8
  %i.g = trunc i64 %.val11 to i32
  %i.h = lshr i32 %i.g, 16
  %i.i = and i32 %i.h, 255
  %i.j = add nsw i32 %i.i, -5                     ; 2 uses
  %narrow.i = icmp ult i32 %i.j, 2
  %i.k = icmp ne ptr %2, null
  %or.cond = and i1 %i.k, %narrow.i
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.m = load i64, ptr %i.l, align 8, !tbaa !84
  store i64 %i.m, ptr %2, align 8, !tbaa !24
  %.val.pre = load i64, ptr %i.f, align 8
  %.pre = trunc i64 %.val.pre to i32
  %.pre14 = lshr i32 %.pre, 16
  %.pre16 = and i32 %.pre14, 255
  %.pre18 = add nsw i32 %.pre16, -5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi19 = phi i32 [ %.pre18, %bb.c ], [ %i.j, %bb.b ]
  %narrow.i12 = icmp ult i32 %.pre-phi19, 2
  %i.n = zext i1 %narrow.i12 to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ %i.n, %bb.d ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ossl_quic_tserver_set_new_local_cid(ptr noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = tail call i32 @ossl_quic_channel_replace_local_cid(ptr noundef %i.b, ptr noundef %1) #5
  ret i32 %i.c
}

declare i32 @ossl_quic_channel_replace_local_cid(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @ossl_quic_tserver_pop_incoming_stream(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = tail call ptr @ossl_quic_channel_get_qsm(ptr noundef %i.b) #5 ; 2 uses
  %i.d = tail call ptr @ossl_quic_stream_map_peek_accept_queue(ptr noundef %i.c) #5 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ossl_quic_stream_map_remove_from_accept_queue(ptr noundef %i.c, ptr noundef nonnull %i.d, i64 0) #5
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.g = load i64, ptr %i.f, align 8, !tbaa !82
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.g, %bb.b ], [ -1, %bb.a ]
  ret i64 %.0
}

declare ptr @ossl_quic_stream_map_peek_accept_queue(ptr noundef) local_unnamed_addr #3

declare void @ossl_quic_stream_map_remove_from_accept_queue(ptr noundef, ptr noundef, i64) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @ossl_quic_tserver_is_stream_totally_acked(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = tail call ptr @ossl_quic_channel_get_qsm(ptr noundef %i.b) #5
  %i.d = tail call ptr @ossl_quic_stream_map_get_by_id(ptr noundef %i.c, i64 noundef %1) #5 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !81
  %i.h = tail call i32 @ossl_quic_sstream_is_totally_acked(ptr noundef %i.g) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

declare i32 @ossl_quic_sstream_is_totally_acked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @ossl_quic_tserver_get_net_read_desired(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = tail call ptr @ossl_quic_channel_get_reactor(ptr noundef %i.b) #5
  %i.d = tail call i32 @ossl_quic_reactor_net_read_desired(ptr noundef %i.c) #5
  ret i32 %i.d
end_hunk_0
