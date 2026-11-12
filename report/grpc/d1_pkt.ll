Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/d1_pkt?download=true
inline.NumInlined: 99
inline.NumDeleted: 62
begin_hunk_0_@_ZN4bssl16dtls1_stop_timerEP6ssl_st
declare void @_ZN4bssl16dtls1_stop_timerEP6ssl_st(ptr noundef) local_unnamed_addr #1

declare void @_ZN4bssl28dtls_clear_outgoing_messagesEP6ssl_st(ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN4bssl24tls13_rotate_traffic_keyEP6ssl_st20evp_aead_direction_t(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN4bssl20tls13_add_key_updateEP6ssl_sti(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4bssl30dtls_clear_unused_write_epochsEP6ssl_st(ptr noundef) local_unnamed_addr #1

declare void @_ZN4bssl19ssl_do_msg_callbackEPK6ssl_stiiNS_4SpanIKhEE(ptr noundef, i32 noundef, i32 noundef, ptr, i64) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4bssl19dtls1_open_app_dataEP6ssl_stPNS_4SpanIhEEPmPhS3_(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr %4, i64 %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %6 = alloca %"class.bssl::DTLSRecordNumber", align 8 ; 6 uses
  %7 = alloca %"class.bssl::Span.71", align 8     ; 12 uses
  %8 = alloca %"class.bssl::Span.71", align 8     ; 3 uses
  %9 = alloca %struct.cbs_st, align 8             ; 6 uses
  %10 = alloca %struct.cbs_st, align 8            ; 4 uses
  %11 = alloca %"struct.bssl::hm_header_st", align 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  store i64 0, ptr %6, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  store ptr %4, ptr %8, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %5, ptr %.sroa.2.0..sroa_idx, align 8
  %i.b = call noundef i32 @_ZN4bssl16dtls_open_recordEP6ssl_stPhPNS_16DTLSRecordNumberEPNS_4SpanIhEEPmS2_S6_(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %2, ptr noundef %3, ptr noundef nonnull byval(%"class.bssl::Span.71") align 8 %8) ; 2 uses
  %.not25 = icmp eq i32 %i.b, 0
  br i1 %.not25, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.a, align 1, !tbaa !11    ; 2 uses
  %i.d = icmp eq i8 %i.c, 22
  br i1 %i.d, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.e = call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef %0)
  %i.f = icmp ugt i16 %i.e, 771
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.03.0.copyload = load i64, ptr %6, align 8, !tbaa !18
  %i.g = load ptr, ptr %7, align 8, !tbaa !100
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !101
  %i.j = call noundef zeroext i1 @_ZN4bssl33dtls1_process_handshake_fragmentsEP6ssl_stPhNS_16DTLSRecordNumberENS_4SpanIKhEE(ptr noundef %0, ptr noundef %3, i64 %.sroa.03.0.copyload, ptr %i.g, i64 %i.i)
  %. = select i1 %i.j, i32 1, i32 4
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  %i.k = load ptr, ptr %7, align 8, !tbaa !100
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !101
  store ptr %i.k, ptr %9, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !17
  %i.o = call noundef zeroext i1 @_ZN4bssl20dtls1_parse_fragmentEP6cbs_stPNS_12hm_header_stES1_(ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %10)
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 109, ptr noundef nonnull @.str, i32 noundef 195)
  store i8 50, ptr %3, align 1, !tbaa !11
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.p = load i8, ptr %11, align 4, !tbaa !103
  %i.q = icmp eq i8 %i.p, 20
  br i1 %i.q, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.s = load i16, ptr %i.r, align 4, !tbaa !104
  %i.t = zext i16 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !63   ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i16, ptr %i.w, align 4, !tbaa !144
  %i.y = zext i16 %i.x to i32
  %i.z = add nsw i32 %i.y, -1
  %i.aa = icmp eq i32 %i.z, %i.t
  br i1 %i.aa, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ab = load i16, ptr %i.v, align 8             ; 2 uses
  %i.ac = and i16 %i.ab, 32
  %.not26 = icmp eq i16 %i.ac, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = icmp eq i32 %i.ae, 0
  %or.cond = select i1 %.not26, i1 %i.af, i1 false
  br i1 %or.cond, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 940 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !145
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !145
  %i.aj = or disjoint i16 %i.ab, 32
  store i16 %i.aj, ptr %i.v, align 8
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.i, %bb.j
  %.0.ph = phi i32 [ 1, %bb.j ], [ 1, %bb.i ], [ 4, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  br label %bb.q

bb.k:                                             ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  %.pr = load i8, ptr %i.a, align 1, !tbaa !11
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  %i.ak = phi i8 [ %.pr, %bb.k ], [ %i.c, %bb.b ]
  switch i8 %i.ak, label %bb.n [
    i8 26, label %bb.m
    i8 23, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.copyload = load i64, ptr %6, align 8, !tbaa !18
  %i.al = load ptr, ptr %7, align 8, !tbaa !100
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !101
  %i.ao = call noundef i32 @_ZN4bssl17dtls1_process_ackEP6ssl_stPhNS_16DTLSRecordNumberENS_4SpanIKhEE(ptr noundef %0, ptr noundef %3, i64 %.sroa.0.0.copyload, ptr %i.al, i64 %i.an)
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 225, ptr noundef nonnull @.str, i32 noundef 224)
  store i8 10, ptr %3, align 1, !tbaa !11
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !101
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %.thread, %bb.o, %bb.d, %bb.a, %bb.p, %bb.n, %bb.m
  %.1 = phi i32 [ %.0.ph, %.thread ], [ %i.b, %bb.a ], [ %., %bb.d ], [ %i.ao, %bb.m ], [ 4, %bb.n ], [ 0, %bb.p ], [ 1, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.1
}

declare noundef i32 @_ZN4bssl16dtls_open_recordEP6ssl_stPhPNS_16DTLSRecordNumberEPNS_4SpanIhEEPmS2_S6_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef byval(%"class.bssl::Span.71") align 8) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN4bssl33dtls1_process_handshake_fragmentsEP6ssl_stPhNS_16DTLSRecordNumberENS_4SpanIKhEE(ptr noundef, ptr noundef, i64, ptr, i64) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN4bssl20dtls1_parse_fragmentEP6cbs_stPNS_12hm_header_stES1_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -2147483648, 2) i32 @_ZN4bssl20dtls1_write_app_dataEP6ssl_stPbPmNS_4SpanIKhEE(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1, ptr nofree noundef writeonly captures(none) %2, ptr %3, i64 %4) local_unnamed_addr #0 {
bb.a:
  store i8 0, ptr %1, align 1, !tbaa !146
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.d = load i32, ptr %i.c, align 8, !tbaa !176
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 194, ptr noundef nonnull @.str, i32 noundef 243)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %4, 16384
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 143, ptr noundef nonnull @.str, i32 noundef 249)
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %4, 0
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %2, align 8, !tbaa !18
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %5 = load i64, ptr %i.i, align 8, !tbaa !66
  %6 = lshr i64 %5, 48
  %7 = trunc nuw i64 %6 to i16
  %i.j = tail call noundef i32 @_ZN4bssl18dtls1_write_recordEP6ssl_stiNS_4SpanIKhEEt(ptr noundef nonnull %0, i32 noundef 23, ptr %3, i64 %4, i16 noundef zeroext %7) ; 2 uses
  %i.k = icmp slt i32 %i.j, 1
  br i1 %i.k, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %4, ptr %2, align 8, !tbaa !18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.b
  %.1 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.h ], [ %i.j, %bb.g ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -2147483648, 2) i32 @_ZN4bssl18dtls1_write_recordEP6ssl_stiNS_4SpanIKhEEt(ptr noundef %0, i32 noundef %1, ptr %2, i64 %3, i16 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.bssl::DTLSRecordNumber", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 4 uses
  %i.e = icmp ugt i64 %3, 16384
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str, i32 noundef 278)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  store i64 0, ptr %5, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.f = tail call noundef i64 @_ZN4bssl20dtls_seal_prefix_lenEPK6ssl_stt(ptr noundef nonnull %0, i16 noundef zeroext %4)
  %i.g = tail call i64 @SSL_max_seal_overhead(ptr noundef nonnull %0)
  %i.h = add i64 %i.g, %3
  %i.i = tail call noundef zeroext i1 @_ZN4bssl9SSLBuffer9EnsureCapEmm(ptr noundef nonnull align 8 dereferenceable(19) %i.d, i64 noundef %i.f, i64 noundef %i.h)
  br i1 %i.i, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !177
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.l = load i16, ptr %i.k, align 8, !tbaa !178
  %i.m = zext i16 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 114
  %i.p = load i16, ptr %i.o, align 2, !tbaa !179
  %i.q = zext i16 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.t = load i16, ptr %i.s, align 4, !tbaa !180
  %i.u = zext i16 %i.t to i64
  %i.v = sub nsw i64 %i.u, %i.q
  %i.w = trunc i32 %1 to i8
  %i.x = call noundef zeroext i1 @_ZN4bssl16dtls_seal_recordEP6ssl_stPNS_16DTLSRecordNumberEPhPmmhPKhmt(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %i.r, ptr noundef nonnull %i.a, i64 noundef %i.v, i8 noundef zeroext %i.w, ptr noundef %2, i64 noundef %3, i16 noundef zeroext %4)
  br i1 %i.x, label %bb.e, label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.d
  call void @_ZN4bssl9SSLBuffer5ClearEv(ptr noundef nonnull align 8 dereferenceable(19) %i.d)
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = load i64, ptr %i.a, align 8, !tbaa !18
  call void @_ZN4bssl9SSLBuffer8DidWriteEm(ptr noundef nonnull align 8 dereferenceable(19) %i.d, i64 noundef %i.y)
  %i.z = call noundef i32 @_ZN4bssl22ssl_write_buffer_flushEP6ssl_st(ptr noundef nonnull %0)
  %. = call i32 @llvm.smin.i32(i32 %i.z, i32 1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge
  %.1 = phi i32 [ -1, %.critedge ], [ %., %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.2 = phi i32 [ -1, %bb.b ], [ %.1, %bb.f ]
  ret i32 %.2
}

declare noundef zeroext i1 @_ZN4bssl9SSLBuffer9EnsureCapEmm(ptr noundef nonnull align 8 dereferenceable(19), i64 noundef, i64 noundef) local_unnamed_addr #1

declare noundef i64 @_ZN4bssl20dtls_seal_prefix_lenEPK6ssl_stt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

declare i64 @SSL_max_seal_overhead(ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN4bssl16dtls_seal_recordEP6ssl_stPNS_16DTLSRecordNumberEPhPmmhPKhmt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i8 noundef zeroext, ptr noundef, i64 noundef, i16 noundef zeroext) local_unnamed_addr #1

declare void @_ZN4bssl9SSLBuffer5ClearEv(ptr noundef nonnull align 8 dereferenceable(19)) local_unnamed_addr #1

declare void @_ZN4bssl9SSLBuffer8DidWriteEm(ptr noundef nonnull align 8 dereferenceable(19), i64 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN4bssl22ssl_write_buffer_flushEP6ssl_st(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -2147483648, 2) i32 @_ZN4bssl20dtls1_dispatch_alertEP6ssl_st(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 461
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %1 = load i64, ptr %i.f, align 8, !tbaa !66
  %2 = lshr i64 %1, 48
  %3 = trunc nuw i64 %2 to i16
  %i.g = tail call noundef i32 @_ZN4bssl18dtls1_write_recordEP6ssl_stiNS_4SpanIKhEEt(ptr noundef %0, i32 noundef 21, ptr nonnull %i.c, i64 2, i16 noundef zeroext %3) ; 2 uses
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 220 ; 2 uses
  %i.k = load i16, ptr %i.j, align 4
  %i.l = and i16 %i.k, -1025
  store i16 %i.l, ptr %i.j, align 4
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 461
  %i.o = load i8, ptr %i.n, align 1, !tbaa !11
  %i.p = icmp eq i8 %i.o, 2
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !181
  %i.s = tail call i32 @BIO_flush(ptr noundef %i.r) ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.t = phi ptr [ %.pre, %bb.c ], [ %i.m, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 461
  tail call void @_ZN4bssl19ssl_do_msg_callbackEPK6ssl_stiiNS_4SpanIKhEE(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 21, ptr nonnull %i.u, i64 2)
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 461
  %i.x = load i8, ptr %i.w, align 1, !tbaa !11
  %i.y = zext i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 462
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !11
  %i.ac = zext i8 %i.ab to i32
  %i.ad = or disjoint i32 %i.z, %i.ac
  tail call void @_ZN4bssl20ssl_do_info_callbackEPK6ssl_stii(ptr noundef nonnull %0, i32 noundef 16392, i32 noundef %i.ad)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret i32 %i.g
}

declare i32 @BIO_flush(ptr noundef) local_unnamed_addr #1

declare void @_ZN4bssl20ssl_do_info_callbackEPK6ssl_stii(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!"_ZTS6cbs_st", !13, i64 0, !14, i64 8}
!16 = !{!15, !13, i64 0}
!17 = !{!15, !14, i64 8}
!18 = !{!14, !14, i64 0}
!19 = !{!"p1 _ZTSN4bssl19SSL_PROTOCOL_METHODE", !12, i64 0}
!20 = !{!"p1 _ZTSN4bssl10SSL_CONFIGE", !12, i64 0}
!21 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl10SSL_CONFIGELb0EE", !20, i64 0}
!22 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl10SSL_CONFIGENS0_8internal7DeleterEEE", !21, i64 0}
!23 = !{!"_ZTSSt5tupleIJPN4bssl10SSL_CONFIGENS0_8internal7DeleterEEE", !22, i64 0}
!24 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl10SSL_CONFIGENS0_8internal7DeleterEE", !23, i64 0}
!25 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl10SSL_CONFIGENS0_8internal7DeleterELb1ELb1EE", !24, i64 0}
!26 = !{!"_ZTSSt10unique_ptrIN4bssl10SSL_CONFIGENS0_8internal7DeleterEE", !25, i64 0}
!27 = !{!"short", !7, i64 0}
!28 = !{!"p1 _ZTS6bio_st", !12, i64 0}
!29 = !{!"_ZTSSt10_Head_baseILm0EP6bio_stLb0EE", !28, i64 0}
!30 = !{!"_ZTSSt11_Tuple_implILm0EJP6bio_stN4bssl8internal7DeleterEEE", !29, i64 0}
!31 = !{!"_ZTSSt5tupleIJP6bio_stN4bssl8internal7DeleterEEE", !30, i64 0}
!32 = !{!"_ZTSSt15__uniq_ptr_implI6bio_stN4bssl8internal7DeleterEE", !31, i64 0}
!33 = !{!"_ZTSSt15__uniq_ptr_dataI6bio_stN4bssl8internal7DeleterELb1ELb1EE", !32, i64 0}
!34 = !{!"_ZTSSt10unique_ptrI6bio_stN4bssl8internal7DeleterEE", !33, i64 0}
!35 = !{!"p1 _ZTSN4bssl10SSL3_STATEE", !12, i64 0}
!36 = !{!"p1 _ZTSN4bssl11DTLS1_STATEE", !12, i64 0}
!37 = !{!"p1 _ZTS14ssl_session_st", !12, i64 0}
!38 = !{!"_ZTSSt10_Head_baseILm0EP14ssl_session_stLb0EE", !37, i64 0}
!39 = !{!"_ZTSSt11_Tuple_implILm0EJP14ssl_session_stN4bssl8internal7DeleterEEE", !38, i64 0}
!40 = !{!"_ZTSSt5tupleIJP14ssl_session_stN4bssl8internal7DeleterEEE", !39, i64 0}
!41 = !{!"_ZTSSt15__uniq_ptr_implI14ssl_session_stN4bssl8internal7DeleterEE", !40, i64 0}
!42 = !{!"_ZTSSt15__uniq_ptr_dataI14ssl_session_stN4bssl8internal7DeleterELb1ELb1EE", !41, i64 0}
!43 = !{!"_ZTSSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE", !42, i64 0}
!44 = !{!"p1 _ZTS10ssl_ctx_st", !12, i64 0}
!45 = !{!"_ZTSSt10_Head_baseILm0EP10ssl_ctx_stLb0EE", !44, i64 0}
!46 = !{!"_ZTSSt11_Tuple_implILm0EJP10ssl_ctx_stN4bssl8internal7DeleterEEE", !45, i64 0}
!47 = !{!"_ZTSSt5tupleIJP10ssl_ctx_stN4bssl8internal7DeleterEEE", !46, i64 0}
!48 = !{!"_ZTSSt15__uniq_ptr_implI10ssl_ctx_stN4bssl8internal7DeleterEE", !47, i64 0}
!49 = !{!"_ZTSSt15__uniq_ptr_dataI10ssl_ctx_stN4bssl8internal7DeleterELb1ELb1EE", !48, i64 0}
!50 = !{!"_ZTSSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEE", !49, i64 0}
!51 = !{!"p1 _ZTS13stack_st_void", !12, i64 0}
!52 = !{!"_ZTS17crypto_ex_data_st", !51, i64 0}
!53 = !{!"_ZTSSt10_Head_baseILm0EPcLb0EE", !13, i64 0}
!54 = !{!"_ZTSSt11_Tuple_implILm0EJPcN4bssl8internal7DeleterEEE", !53, i64 0}
!55 = !{!"_ZTSSt5tupleIJPcN4bssl8internal7DeleterEEE", !54, i64 0}
!56 = !{!"_ZTSSt15__uniq_ptr_implIcN4bssl8internal7DeleterEE", !55, i64 0}
!57 = !{!"_ZTSSt15__uniq_ptr_dataIcN4bssl8internal7DeleterELb1ELb1EE", !56, i64 0}
!58 = !{!"_ZTSSt10unique_ptrIcN4bssl8internal7DeleterEE", !57, i64 0}
!59 = !{!"p1 _ZTS18ssl_quic_method_st", !12, i64 0}
!60 = !{!"_ZTS22ssl_renegotiate_mode_t", !7, i64 0}
!61 = !{!"bool", !7, i64 0}
!62 = !{!"_ZTS6ssl_st", !19, i64 0, !26, i64 8, !27, i64 16, !34, i64 24, !34, i64 32, !12, i64 40, !35, i64 48, !36, i64 56, !12, i64 64, !12, i64 72, !8, i64 80, !43, i64 88, !12, i64 96, !50, i64 104, !50, i64 112, !52, i64 120, !8, i64 128, !8, i64 132, !8, i64 136, !58, i64 144, !59, i64 152, !60, i64 160, !61, i64 164, !61, i64 164, !61, i64 164, !61, i64 164}
!63 = !{!62, !36, i64 56}
!64 = !{!"p1 _ZTSN4bssl8MRUQueueINS_14DTLSSentRecordELm32EEE", !12, i64 0}
!65 = !{!"_ZTSN4bssl16DTLSRecordNumberE", !14, i64 0}
!66 = !{!65, !14, i64 0}
!67 = !{!"_ZTSN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EEE", !7, i64 0, !7, i64 336}
!68 = !{!"_ZTSN4bssl5ArrayIhEE", !13, i64 0, !14, i64 8}
!69 = !{!62, !35, i64 48}
!70 = !{!"_ZTSN4bssl4SpanIhEE", !13, i64 0, !14, i64 8}
!71 = !{!"p1 _ZTSN4bssl14SSLAEADContextE", !12, i64 0}
!72 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl14SSLAEADContextELb0EE", !71, i64 0}
!73 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl14SSLAEADContextENS0_8internal7DeleterEEE", !72, i64 0}
!74 = !{!"_ZTSSt5tupleIJPN4bssl14SSLAEADContextENS0_8internal7DeleterEEE", !73, i64 0}
!75 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl14SSLAEADContextENS0_8internal7DeleterEE", !74, i64 0}
!76 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl14SSLAEADContextENS0_8internal7DeleterELb1ELb1EE", !75, i64 0}
!77 = !{!"_ZTSSt10unique_ptrIN4bssl14SSLAEADContextENS0_8internal7DeleterEE", !76, i64 0}
!78 = !{!"_ZTSN4bssl13InplaceVectorIhLm48EEE", !7, i64 0, !7, i64 48}
!79 = !{!"_ZTSN4bssl9SSLBufferE", !13, i64 0, !27, i64 8, !27, i64 10, !27, i64 12, !7, i64 14}
!80 = distinct !{!80, !88}
!81 = distinct !{!81, !88}
!82 = distinct !{!82, !88}
!83 = !{!64, !64, i64 0}
!84 = !{!"_ZTSN4bssl13InplaceVectorINS_14DTLSSentRecordELm32EEE", !7, i64 0, !7, i64 768}
!85 = !{!84, !7, i64 768}
!86 = !{!"_ZTSN4bssl8MRUQueueINS_14DTLSSentRecordELm32EEE", !84, i64 0, !7, i64 776}
!87 = !{!86, !7, i64 776}
!88 = !{!"llvm.loop.mustprogress"}
!89 = !{!"_ZTSN4bssl14DTLSSentRecordE", !65, i64 0, !7, i64 8, !7, i64 9, !8, i64 12, !8, i64 16}
!90 = !{!89, !7, i64 8}
!91 = !{!89, !7, i64 9}
!92 = !{!67, !7, i64 336}
!93 = !{!89, !8, i64 12}
!94 = !{!89, !8, i64 16}
!95 = !{!"_ZTSN4bssl17DTLSMessageBitmapE", !68, i64 0, !14, i64 16}
!96 = !{!"_ZTSN4bssl19DTLSOutgoingMessageE", !68, i64 0, !27, i64 16, !61, i64 18, !95, i64 24}
!97 = !{!96, !61, i64 18}
!98 = !{i8 0, i8 2}
!99 = !{}
!100 = !{!70, !13, i64 0}
!101 = !{!70, !14, i64 8}
!102 = !{!"_ZTSN4bssl12hm_header_stE", !7, i64 0, !8, i64 4, !27, i64 8, !8, i64 12, !8, i64 16}
!103 = !{!102, !7, i64 0}
!104 = !{!102, !27, i64 8}
!105 = !{!"_ZTSN4bssl15QueuedKeyUpdateE", !7, i64 0}
!106 = !{!"p1 _ZTSN4bssl21RecordNumberEncrypterE", !12, i64 0}
!107 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl21RecordNumberEncrypterELb0EE", !106, i64 0}
!108 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl21RecordNumberEncrypterENS0_8internal7DeleterEEE", !107, i64 0}
!109 = !{!"_ZTSSt5tupleIJPN4bssl21RecordNumberEncrypterENS0_8internal7DeleterEEE", !108, i64 0}
!110 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl21RecordNumberEncrypterENS0_8internal7DeleterEE", !109, i64 0}
!111 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl21RecordNumberEncrypterENS0_8internal7DeleterELb1ELb1EE", !110, i64 0}
!112 = !{!"_ZTSSt10unique_ptrIN4bssl21RecordNumberEncrypterENS0_8internal7DeleterEE", !111, i64 0}
!113 = !{!"_ZTSSt12_Base_bitsetILm4EE", !7, i64 0}
!114 = !{!"_ZTSSt6bitsetILm256EE", !113, i64 0}
!115 = !{!"_ZTSN4bssl16DTLSReplayBitmapE", !114, i64 0, !14, i64 32}
!116 = !{!"_ZTSN4bssl13DTLSReadEpochE", !27, i64 0, !77, i64 8, !112, i64 16, !115, i64 24, !78, i64 64}
!117 = !{!"p1 _ZTSN4bssl13DTLSReadEpochE", !12, i64 0}
!118 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl13DTLSReadEpochELb0EE", !117, i64 0}
!119 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl13DTLSReadEpochENS0_8internal7DeleterEEE", !118, i64 0}
!120 = !{!"_ZTSSt5tupleIJPN4bssl13DTLSReadEpochENS0_8internal7DeleterEEE", !119, i64 0}
!121 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl13DTLSReadEpochENS0_8internal7DeleterEE", !120, i64 0}
!122 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl13DTLSReadEpochENS0_8internal7DeleterELb1ELb1EE", !121, i64 0}
!123 = !{!"_ZTSSt10unique_ptrIN4bssl13DTLSReadEpochENS0_8internal7DeleterEE", !122, i64 0}
!124 = !{!"p1 _ZTSN4bssl17DTLSPrevReadEpochE", !12, i64 0}
!125 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl17DTLSPrevReadEpochELb0EE", !124, i64 0}
!126 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl17DTLSPrevReadEpochENS0_8internal7DeleterEEE", !125, i64 0}
!127 = !{!"_ZTSSt5tupleIJPN4bssl17DTLSPrevReadEpochENS0_8internal7DeleterEEE", !126, i64 0}
!128 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl17DTLSPrevReadEpochENS0_8internal7DeleterEE", !127, i64 0}
!129 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl17DTLSPrevReadEpochENS0_8internal7DeleterELb1ELb1EE", !128, i64 0}
!130 = !{!"_ZTSSt10unique_ptrIN4bssl17DTLSPrevReadEpochENS0_8internal7DeleterEE", !129, i64 0}
!131 = !{!"_ZTSN4bssl14DTLSWriteEpochE", !65, i64 0, !77, i64 8, !112, i64 16, !78, i64 24}
end_hunk_0
