inline.NumInlined: 691
inline.NumDeleted: 314
begin_hunk_0_@_ZN4bssl20ssl_session_get_typeEPK14ssl_session_st:bb.a
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 91
  %i.p = load i8, ptr %i.o, align 1, !tbaa !64
  %i.q = icmp ne i8 %i.p, 0
  %. = zext i1 %i.q to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.a ], [ %i.n, %bb.c ], [ 2, %bb.d ], [ %., %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZN4bssl8internaleqENS_4SpanIKhEES3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.c = load i8, ptr %i.b, align 1, !tbaa !64    ; 3 uses
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !293
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !294  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.k = load i8, ptr %i.j, align 1, !tbaa !64
  %.not.i.i.i = icmp eq i8 %i.c, %i.k
  br i1 %.not.i.i.i, label %bb.c, label %_ZN4bssl8internaleqENS_4SpanIKhEES3_.exit

bb.c:                                             ; preds = %bb.b
  %.not.not.i.i.i.i.i.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.not.i.i.i.i.i.i.i, label %_ZN4bssl8internaleqENS_4SpanIKhEES3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.a, ptr nonnull %i.i, i64 %i.d)
  %.not9.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br label %_ZN4bssl8internaleqENS_4SpanIKhEES3_.exit

_ZN4bssl8internaleqENS_4SpanIKhEES3_.exit:        ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.l = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %.not9.i.i.i.i.i.i.i, %bb.d ], [ true, %bb.c ]
  ret i1 %i.l
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4bssl25ssl_session_is_time_validEPK6ssl_stPK14ssl_session_st(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !88
  %i.d = tail call { i64, i32 } @_ZN4bssl24ssl_ctx_get_current_timeEPK10ssl_ctx_st(ptr noundef %i.c)
  %i.e = extractvalue { i64, i32 } %i.d, 0        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.g = load i64, ptr %i.f, align 8, !tbaa !82   ; 2 uses
  %i.h = icmp ult i64 %i.e, %i.g
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.j = load i32, ptr %i.i, align 8, !tbaa !90
  %i.k = zext i32 %i.j to i64
  %i.l = sub nuw i64 %i.e, %i.g
  %i.m = icmp ult i64 %i.l, %i.k
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %i.m, %bb.c ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4bssl24ssl_session_is_resumableEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !92     ; 4 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.d = load i8, ptr %i.c, align 1, !tbaa !64    ; 3 uses
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !293
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !294  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.l = load i8, ptr %i.k, align 1, !tbaa !64
  %.not.i.i.i.i = icmp eq i8 %i.d, %i.l
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit.thread

bb.c:                                             ; preds = %bb.b
  %.not.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.not.i.i.i.i.i.i.i.i, label %_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit.thread19, label %_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit

_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit: ; preds = %bb.c
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.b, ptr nonnull %i.j, i64 %i.e)
  %.not9.i.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i.i.i, label %_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit.thread19, label %_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit.thread

_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit.thread19: ; preds = %bb.c, %_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  %i.n = load i8, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 408 ; 3 uses
  %i.p = load i8, ptr %i.o, align 8
  %i.q = lshr i8 %i.p, 4
  %i.r = xor i8 %i.q, %i.n
  %i.s = and i8 %i.r, 1
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.d, label %_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit.thread

bb.d:                                             ; preds = %_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit.thread19
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !88
  %i.w = tail call { i64, i32 } @_ZN4bssl24ssl_ctx_get_current_timeEPK10ssl_ctx_st(ptr noundef %i.v)
  %i.x = extractvalue { i64, i32 } %i.w, 0        ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.z = load i64, ptr %i.y, align 8, !tbaa !82   ; 2 uses
  %i.aa = icmp ult i64 %i.x, %i.z
  br i1 %i.aa, label %_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit.thread, label %_ZN4bssl25ssl_session_is_time_validEPK6ssl_stPK14ssl_session_st.exit

_ZN4bssl25ssl_session_is_time_validEPK6ssl_stPK14ssl_session_st.exit: ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !90
  %i.ad = zext i32 %i.ac to i64
  %i.ae = sub nuw i64 %i.x, %i.z
  %i.af = icmp ult i64 %i.ae, %i.ad
  br i1 %i.af, label %bb.e, label %_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit.thread

bb.e:                                             ; preds = %_ZN4bssl25ssl_session_is_time_validEPK6ssl_stPK14ssl_session_st.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !265
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 208
  %i.aj = load i16, ptr %i.ai, align 8, !tbaa !266
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.al = load i16, ptr %i.ak, align 4, !tbaa !63
  %i.am = icmp eq i16 %i.aj, %i.al
  br i1 %i.am, label %bb.f, label %_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1584
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !311
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !67
  %i.ar = icmp eq ptr %i.ao, %i.aq
  br i1 %i.ar, label %bb.g, label %_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !69
  %i.au = tail call i64 @OPENSSL_sk_num(ptr noundef %i.at)
  %i.av = icmp eq i64 %i.au, 0
  %.pre = load i8, ptr %i.o, align 8              ; 2 uses
  %i.aw = and i8 %.pre, 2
  %.not = icmp eq i8 %i.aw, 0
  %or.cond = select i1 %i.av, i1 %.not, i1 false
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = lshr i8 %.pre, 1
  %.lobit = and i8 %i.ax, 1
  %i.ay = load ptr, ptr %i.f, align 8, !tbaa !293
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 269
  %i.ba = load i16, ptr %i.az, align 1
  %i.bb = lshr i16 %i.ba, 5
  %.lobit17 = and i16 %i.bb, 1
  %i.bc = zext nneg i8 %.lobit to i16
  %i.bd = icmp eq i16 %.lobit17, %i.bc
  br i1 %i.bd, label %bb.i, label %_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit.thread

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.be = tail call i32 @SSL_is_quic(ptr noundef nonnull %i.a)
  %i.bf = load i8, ptr %i.o, align 8
  %i.bg = lshr i8 %i.bf, 5
  %.lobit18 = and i8 %i.bg, 1
  %i.bh = zext nneg i8 %.lobit18 to i32
  %i.bi = icmp eq i32 %i.be, %i.bh
  br label %_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit.thread

_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit.thread: ; preds = %bb.d, %bb.b, %bb.a, %bb.i, %bb.h, %bb.f, %bb.e, %_ZN4bssl25ssl_session_is_time_validEPK6ssl_stPK14ssl_session_st.exit, %_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit.thread19, %_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit
  %i.bj = phi i1 [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.e ], [ false, %_ZN4bssl25ssl_session_is_time_validEPK6ssl_stPK14ssl_session_st.exit ], [ false, %_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit.thread19 ], [ false, %_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit ], [ %i.bi, %bb.i ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.d ]
  ret i1 %i.bj
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 12) i32 @_ZN4bssl20ssl_get_prev_sessionEPNS_13SSL_HANDSHAKEEPSt10unique_ptrI14ssl_session_stNS_8internal7DeleterEEPbS8_PK22ssl_early_callback_ctx(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %struct.LHASH_CMP_KEY_SSL_SESSION, align 8 ; 5 uses
  %.sroa.0.i.i = alloca i32, align 4              ; 6 uses
  %6 = alloca %"class.bssl::Span", align 8        ; 8 uses
  %7 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %8 = alloca %"class.std::unique_ptr", align 8   ; 13 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %9 = alloca %struct.cbs_st, align 8             ; 6 uses
  %10 = alloca %"class.bssl::Span", align 8       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store ptr null, ptr %8, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i8 0, ptr %i.b, align 1, !tbaa !312
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.c = load ptr, ptr %0, align 8, !tbaa !92
  %i.d = invoke i32 @SSL_get_options(ptr noundef %i.c)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.d, 16384
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef zeroext i1 @_ZN4bssl30ssl_client_hello_get_extensionEPK22ssl_early_callback_ctxP6cbs_stt(ptr noundef %4, ptr noundef nonnull %9, i16 noundef zeroext 35)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  br i1 %i.f, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !313  ; 2 uses
  %.not21 = icmp eq i64 %i.h, 0
  br i1 %.not21, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr %9, align 8, !tbaa !315
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !316
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.m = load i64, ptr %i.l, align 8, !tbaa !318
  store ptr %i.k, ptr %10, align 8, !tbaa !319
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !320
  %i.o = invoke noundef i32 @_ZN4bssl18ssl_process_ticketEPNS_13SSL_HANDSHAKEEPSt10unique_ptrI14ssl_session_stNS_8internal7DeleterEEPbNS_4SpanIKhEESB_(ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef nonnull %i.b, ptr %i.i, i64 %i.h, ptr noundef nonnull byval(%"class.bssl::Span") align 8 %10)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  switch i32 %i.o, label %bb.aj [
    i32 1, label %bb.i
    i32 3, label %bb.an
  ]

bb.h:                                             ; preds = %bb.f, %bb.c, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.g
  br label %bb.an

.thread:                                          ; preds = %bb.b, %bb.e, %bb.d
  %i.q = phi i8 [ 0, %bb.d ], [ 1, %bb.e ], [ 0, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !316
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.u = load i64, ptr %i.t, align 8, !tbaa !318  ; 2 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !92    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.s, ptr %6, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 %i.u, ptr %i.v, align 8
  %i.w = load ptr, ptr %8, align 8, !tbaa !14     ; 4 uses
  store ptr null, ptr %8, align 8, !tbaa !14
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit.i, label %bb.j

bb.j:                                             ; preds = %.thread
  %i.x = invoke i32 @CRYPTO_refcount_dec_and_test_zero(ptr noundef nonnull align 4 dereferenceable(4) %i.w)
          to label %.noexc.i.i.i unwind label %bb.l

.noexc.i.i.i:                                     ; preds = %bb.j
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exitthread-pre-split.i, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i
  call void @_ZN14ssl_session_stD2Ev(ptr noundef nonnull align 8 dead_on_return(432) dereferenceable(432) %i.w) #20
  invoke void @OPENSSL_free(ptr noundef nonnull align 4 dereferenceable(4) %i.w)
          to label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exitthread-pre-split.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #21
  unreachable

_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exitthread-pre-split.i: ; preds = %bb.k, %.noexc.i.i.i
  %.pr.i = load i64, ptr %i.v, align 8, !tbaa !320
  br label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit.i

_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit.i: ; preds = %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exitthread-pre-split.i, %.thread
  %i.aa = phi i64 [ %.pr.i, %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exitthread-pre-split.i ], [ %i.u, %.thread ] ; 3 uses
  %i.ab = add i64 %i.aa, -33
  %or.cond.i = icmp ult i64 %i.ab, -32
  br i1 %or.cond.i, label %.sink.split, label %bb.m

bb.m:                                             ; preds = %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store ptr null, ptr %7, align 8, !tbaa !61
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 112 ; 5 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !88 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 148
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !321
  %i.ag = and i32 %i.af, 256
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %bb.n, label %_ZN4bssl8internal13MutexLockBaseIXadL_Z22CRYPTO_MUTEX_lock_readEEXadL_Z24CRYPTO_MUTEX_unlock_readEEED2Ev.exit.thread.i

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.copyload.i = load ptr, ptr %6, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.ah = icmp samesign ult i64 %i.aa, 4
  br i1 %i.ah, label %bb.o, label %_ZNK4bssl4SpanIKhEixEm.exit.i.i

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %.sroa.0.i.i, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i, ptr readonly align 1 %.sroa.0.0.copyload.i, i64 %i.aa, i1 false)
  %.sroa.0.2.gep19.sroa_idx.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 2
  %.sroa.0.2..pre.i.i = load i8, ptr %.sroa.0.2.gep19.sroa_idx.phi.trans.insert.i.i, align 2, !tbaa !17
  br label %bb.p

_ZNK4bssl4SpanIKhEixEm.exit.i.i:                  ; preds = %bb.n
  %.sroa.07.0.sroa.gep20.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 2
  %11 = load i8, ptr %.sroa.07.0.sroa.gep20.i.i, align 1, !tbaa !17
  br label %bb.p

bb.p:                                             ; preds = %_ZNK4bssl4SpanIKhEixEm.exit.i.i, %bb.o
  %.sink.i = phi i8 [ %11, %_ZNK4bssl4SpanIKhEixEm.exit.i.i ], [ %.sroa.0.2..pre.i.i, %bb.o ]
  %.sroa.0.pn.i.i = phi ptr [ %.sroa.0.0.copyload.i, %_ZNK4bssl4SpanIKhEixEm.exit.i.i ], [ %.sroa.0.i.i, %bb.o ] ; 2 uses
  %.sink34.in.i = load i16, ptr %.sroa.0.pn.i.i, align 1
  %.sroa.0.pn.sroa.phi.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.pn.i.i, i64 3
  %i.ai = load i8, ptr %.sroa.0.pn.sroa.phi.i.i, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 3 uses
  invoke void @CRYPTO_MUTEX_lock_read(ptr noundef nonnull %i.aj)
          to label %_ZN4bssl8internal13MutexLockBaseIXadL_Z22CRYPTO_MUTEX_lock_readEEXadL_Z24CRYPTO_MUTEX_unlock_readEEEC2EP16pthread_rwlock_t.exit.i unwind label %bb.s

_ZN4bssl8internal13MutexLockBaseIXadL_Z22CRYPTO_MUTEX_lock_readEEXadL_Z24CRYPTO_MUTEX_unlock_readEEEC2EP16pthread_rwlock_t.exit.i: ; preds = %bb.p
  %i.ak = zext i8 %.sink.i to i32
  %i.al = shl nuw nsw i32 %i.ak, 16
  %.sink34.i = zext i16 %.sink34.in.i to i32
  %i.am = or disjoint i32 %i.al, %.sink34.i
  %i.an = zext i8 %i.ai to i32
  %i.ao = shl nuw i32 %i.an, 24
  %i.ap = or disjoint i32 %i.ao, %i.am
  %i.aq = load ptr, ptr %i.ac, align 8, !tbaa !88
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 112
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !322
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr @"_ZZN4bsslL18ssl_lookup_sessionEPNS_13SSL_HANDSHAKEEPSt10unique_ptrI14ssl_session_stNS_8internal7DeleterEENS_4SpanIKhEEEN3$_08__invokeEPKvPKS3_", ptr %5, align 8, !tbaa !323
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %6, ptr %i.at, align 8, !tbaa !325
  %i.au = invoke noundef ptr @OPENSSL_lh_retrieve_key(ptr noundef %i.as, ptr noundef nonnull %5, i32 noundef %i.ap, ptr noundef nonnull @_Z27lh_SSL_SESSION_call_cmp_keyPKvS0_)
          to label %bb.q unwind label %bb.t       ; 4 uses

bb.q:                                             ; preds = %_ZN4bssl8internal13MutexLockBaseIXadL_Z22CRYPTO_MUTEX_lock_readEEXadL_Z24CRYPTO_MUTEX_unlock_readEEEC2EP16pthread_rwlock_t.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i = icmp eq ptr %i.au, null             ; 2 uses
  br i1 %.not.i.i, label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit.i, label %.split4.i.i

.split4.i.i:                                      ; preds = %bb.q
  invoke void @CRYPTO_refcount_inc(ptr noundef nonnull align 4 dereferenceable(4) %i.au)
          to label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit.i unwind label %bb.t

_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit.i: ; preds = %.split4.i.i, %bb.q
  store ptr %i.au, ptr %7, align 8, !tbaa !14
  invoke void @CRYPTO_MUTEX_unlock_read(ptr noundef nonnull %i.aj)
          to label %_ZN4bssl8internal13MutexLockBaseIXadL_Z22CRYPTO_MUTEX_lock_readEEXadL_Z24CRYPTO_MUTEX_unlock_readEEED2Ev.exit.i unwind label %bb.r

bb.r:                                             ; preds = %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit.i
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #21
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4bssl8internal13MutexLockBaseIXadL_Z22CRYPTO_MUTEX_lock_readEEXadL_Z24CRYPTO_MUTEX_unlock_readEEED2Ev.exit32.i

bb.t:                                             ; preds = %.split4.i.i, %_ZN4bssl8internal13MutexLockBaseIXadL_Z22CRYPTO_MUTEX_lock_readEEXadL_Z24CRYPTO_MUTEX_unlock_readEEEC2EP16pthread_rwlock_t.exit.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @CRYPTO_MUTEX_unlock_read(ptr noundef nonnull %i.aj)
          to label %_ZN4bssl8internal13MutexLockBaseIXadL_Z22CRYPTO_MUTEX_lock_readEEXadL_Z24CRYPTO_MUTEX_unlock_readEEED2Ev.exit32.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #21
  unreachable

_ZN4bssl8internal13MutexLockBaseIXadL_Z22CRYPTO_MUTEX_lock_readEEXadL_Z24CRYPTO_MUTEX_unlock_readEEED2Ev.exit.i: ; preds = %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit.i
  br i1 %.not.i.i, label %_ZN4bssl8internal13MutexLockBaseIXadL_Z22CRYPTO_MUTEX_lock_readEEXadL_Z24CRYPTO_MUTEX_unlock_readEEED2Ev.exit.i._ZN4bssl8internal13MutexLockBaseIXadL_Z22CRYPTO_MUTEX_lock_readEEXadL_Z24CRYPTO_MUTEX_unlock_readEEED2Ev.exit.thread.i_crit_edge, label %.thread9.i

_ZN4bssl8internal13MutexLockBaseIXadL_Z22CRYPTO_MUTEX_lock_readEEXadL_Z24CRYPTO_MUTEX_unlock_readEEED2Ev.exit.i._ZN4bssl8internal13MutexLockBaseIXadL_Z22CRYPTO_MUTEX_lock_readEEXadL_Z24CRYPTO_MUTEX_unlock_readEEED2Ev.exit.thread.i_crit_edge: ; preds = %_ZN4bssl8internal13MutexLockBaseIXadL_Z22CRYPTO_MUTEX_lock_readEEXadL_Z24CRYPTO_MUTEX_unlock_readEEED2Ev.exit.i
  %.pre = load ptr, ptr %i.ac, align 8, !tbaa !88
  br label %_ZN4bssl8internal13MutexLockBaseIXadL_Z22CRYPTO_MUTEX_lock_readEEXadL_Z24CRYPTO_MUTEX_unlock_readEEED2Ev.exit.thread.i

_ZN4bssl8internal13MutexLockBaseIXadL_Z22CRYPTO_MUTEX_lock_readEEXadL_Z24CRYPTO_MUTEX_unlock_readEEED2Ev.exit.thread.i: ; preds = %_ZN4bssl8internal13MutexLockBaseIXadL_Z22CRYPTO_MUTEX_lock_readEEXadL_Z24CRYPTO_MUTEX_unlock_readEEED2Ev.exit.i._ZN4bssl8internal13MutexLockBaseIXadL_Z22CRYPTO_MUTEX_lock_readEEXadL_Z24CRYPTO_MUTEX_unlock_readEEED2Ev.exit.thread.i_crit_edge, %bb.m
  %i.bb = phi ptr [ %.pre, %_ZN4bssl8internal13MutexLockBaseIXadL_Z22CRYPTO_MUTEX_lock_readEEXadL_Z24CRYPTO_MUTEX_unlock_readEEED2Ev.exit.i._ZN4bssl8internal13MutexLockBaseIXadL_Z22CRYPTO_MUTEX_lock_readEEXadL_Z24CRYPTO_MUTEX_unlock_readEEED2Ev.exit.thread.i_crit_edge ], [ %i.ad, %bb.m ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 176
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !326 ; 2 uses
  %.not26.i = icmp eq ptr %i.bd, null
  br i1 %.not26.i, label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit43.i, label %bb.v

bb.v:                                             ; preds = %_ZN4bssl8internal13MutexLockBaseIXadL_Z22CRYPTO_MUTEX_lock_readEEXadL_Z24CRYPTO_MUTEX_unlock_readEEED2Ev.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 1, ptr %i.a, align 4, !tbaa !81
  %i.be = load ptr, ptr %6, align 8, !tbaa !319
  %i.bf = load i64, ptr %i.v, align 8, !tbaa !320
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = invoke noundef ptr %i.bd(ptr noundef nonnull %.val, ptr noundef %i.be, i32 noundef %i.bg, ptr noundef nonnull %i.a)
          to label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit36.i unwind label %bb.w ; 6 uses

_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit36.i: ; preds = %bb.v
  store ptr %i.bh, ptr %7, align 8, !tbaa !14
  %.not16.i = icmp eq ptr %i.bh, null
  br i1 %.not16.i, label %.thread31, label %bb.x

.thread31:                                        ; preds = %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %.sink.split.sink.split

bb.w:                                             ; preds = %bb.aa, %bb.z, %bb.v
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZN4bssl8internal13MutexLockBaseIXadL_Z22CRYPTO_MUTEX_lock_readEEXadL_Z24CRYPTO_MUTEX_unlock_readEEED2Ev.exit32.i

bb.x:                                             ; preds = %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit36.i
  %i.bj = icmp eq ptr %i.bh, @_ZN4bsslL23g_pending_session_magicE
  br i1 %i.bj, label %bb.ai, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bk = load i32, ptr %i.a, align 4, !tbaa !81
  %.not27.i = icmp eq i32 %i.bk, 0
  br i1 %.not27.i, label %SSL_SESSION_up_ref.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @CRYPTO_refcount_inc(ptr noundef nonnull align 4 dereferenceable(4) %i.bh)
          to label %SSL_SESSION_up_ref.exit.i unwind label %bb.w

SSL_SESSION_up_ref.exit.i:                        ; preds = %bb.z, %bb.y
  %i.bl = load ptr, ptr %i.ac, align 8, !tbaa !88 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 148
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !321
  %i.bo = and i32 %i.bn, 512
  %.not28.i = icmp eq i32 %i.bo, 0
  br i1 %.not28.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %SSL_SESSION_up_ref.exit.i
  %i.bp = invoke i32 @SSL_CTX_add_session(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bh)
          to label %bb.ab unwind label %bb.w      ; 0 uses

bb.ab:                                            ; preds = %bb.aa, %SSL_SESSION_up_ref.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %.thread9.i

.thread9.i:                                       ; preds = %bb.ab, %_ZN4bssl8internal13MutexLockBaseIXadL_Z22CRYPTO_MUTEX_lock_readEEXadL_Z24CRYPTO_MUTEX_unlock_readEEED2Ev.exit.i
  %i.bq = phi ptr [ %i.bh, %bb.ab ], [ %i.au, %_ZN4bssl8internal13MutexLockBaseIXadL_Z22CRYPTO_MUTEX_lock_readEEXadL_Z24CRYPTO_MUTEX_unlock_readEEED2Ev.exit.i ] ; 7 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !88
  %i.bt = invoke { i64, i32 } @_ZN4bssl24ssl_ctx_get_current_timeEPK10ssl_ctx_st(ptr noundef %i.bs)
          to label %.noexc38.i unwind label %bb.ae

.noexc38.i:                                       ; preds = %.thread9.i
  %i.bu = extractvalue { i64, i32 } %i.bt, 0      ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 192
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !82 ; 2 uses
  %i.bx = icmp ult i64 %i.bu, %i.bw
  br i1 %i.bx, label %_ZN4bssl25ssl_session_is_time_validEPK6ssl_stPK14ssl_session_st.exit.thread.i, label %_ZN4bssl25ssl_session_is_time_validEPK6ssl_stPK14ssl_session_st.exit.i

_ZN4bssl25ssl_session_is_time_validEPK6ssl_stPK14ssl_session_st.exit.i: ; preds = %.noexc38.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 184
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !90
  %i.ca = zext i32 %i.bz to i64
  %i.cb = sub nuw i64 %i.bu, %i.bw
  %i.cc = icmp ult i64 %i.cb, %i.ca
  br i1 %i.cc, label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit43.i, label %_ZN4bssl25ssl_session_is_time_validEPK6ssl_stPK14ssl_session_st.exit.thread.i

_ZN4bssl25ssl_session_is_time_validEPK6ssl_stPK14ssl_session_st.exit.thread.i: ; preds = %_ZN4bssl25ssl_session_is_time_validEPK6ssl_stPK14ssl_session_st.exit.i, %.noexc38.i
  %i.cd = load ptr, ptr %i.ac, align 8, !tbaa !88
  %i.ce = invoke fastcc noundef zeroext i1 @_ZN4bsslL14remove_sessionEP10ssl_ctx_stP14ssl_session_stb(ptr noundef %i.cd, ptr noundef nonnull %i.bq, i1 noundef zeroext true)
          to label %SSL_CTX_remove_session.exit.i unwind label %bb.ae ; 0 uses

SSL_CTX_remove_session.exit.i:                    ; preds = %_ZN4bssl25ssl_session_is_time_validEPK6ssl_stPK14ssl_session_st.exit.thread.i
  %i.cf = invoke i32 @CRYPTO_refcount_dec_and_test_zero(ptr noundef nonnull align 4 dereferenceable(4) %i.bq)
          to label %.noexc.i.i41.i unwind label %bb.ad

.noexc.i.i41.i:                                   ; preds = %SSL_CTX_remove_session.exit.i
  %.not.i.i.i.i.i.i42.i = icmp eq i32 %i.cf, 0
  br i1 %.not.i.i.i.i.i.i42.i, label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit43.i, label %bb.ac

bb.ac:                                            ; preds = %.noexc.i.i41.i
  call void @_ZN14ssl_session_stD2Ev(ptr noundef nonnull align 8 dead_on_return(432) dereferenceable(432) %i.bq) #20
  invoke void @OPENSSL_free(ptr noundef nonnull align 4 dereferenceable(4) %i.bq)
          to label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit43.i unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %SSL_CTX_remove_session.exit.i
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #21
  unreachable

bb.ae:                                            ; preds = %_ZN4bssl25ssl_session_is_time_validEPK6ssl_stPK14ssl_session_st.exit.thread.i, %.thread9.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4bssl8internal13MutexLockBaseIXadL_Z22CRYPTO_MUTEX_lock_readEEXadL_Z24CRYPTO_MUTEX_unlock_readEEED2Ev.exit32.i

_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit43.i: ; preds = %bb.ac, %.noexc.i.i41.i, %_ZN4bssl25ssl_session_is_time_validEPK6ssl_stPK14ssl_session_st.exit.i, %_ZN4bssl8internal13MutexLockBaseIXadL_Z22CRYPTO_MUTEX_lock_readEEXadL_Z24CRYPTO_MUTEX_unlock_readEEED2Ev.exit.thread.i
  %i.cj = phi ptr [ null, %bb.ac ], [ null, %.noexc.i.i41.i ], [ null, %_ZN4bssl8internal13MutexLockBaseIXadL_Z22CRYPTO_MUTEX_lock_readEEXadL_Z24CRYPTO_MUTEX_unlock_readEEED2Ev.exit.thread.i ], [ %i.bq, %_ZN4bssl25ssl_session_is_time_validEPK6ssl_stPK14ssl_session_st.exit.i ]
  %i.ck = load ptr, ptr %8, align 8, !tbaa !14    ; 4 uses
  store ptr %i.cj, ptr %8, align 8, !tbaa !14
  %.not.i.i.i.i44.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i44.i, label %.sink.split.sink.split, label %bb.af

bb.af:                                            ; preds = %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit43.i
  %i.cl = invoke i32 @CRYPTO_refcount_dec_and_test_zero(ptr noundef nonnull align 4 dereferenceable(4) %i.ck)
          to label %.noexc.i.i.i.i45.i unwind label %bb.ah

.noexc.i.i.i.i45.i:                               ; preds = %bb.af
  %.not.i.i.i.i.i.i.i.i46.i = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i.i.i.i.i.i.i46.i, label %.sink.split.sink.split, label %bb.ag

bb.ag:                                            ; preds = %.noexc.i.i.i.i45.i
  call void @_ZN14ssl_session_stD2Ev(ptr noundef nonnull align 8 dead_on_return(432) dereferenceable(432) %i.ck) #20
  invoke void @OPENSSL_free(ptr noundef nonnull align 4 dereferenceable(4) %i.ck)
          to label %.sink.split.sink.split unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #21
  unreachable
end_hunk_0
