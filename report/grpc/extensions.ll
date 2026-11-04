Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/extensions?download=true
inline.NumInlined: 1428
inline.NumDeleted: 610
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4bsslL38ext_supported_groups_parse_clienthelloEPNS_13SSL_HANDSHAKEEPhP6cbs_st:bb.a
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !29
  %.not6 = icmp eq i64 %i.g, 0
  br i1 %.not6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.i = call fastcc noundef zeroext i1 @_ZN4bsslL15parse_u16_arrayEPK6cbs_stPNS_5ArrayItEE(ptr noundef nonnull %3, ptr noundef nonnull %i.h)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.c
  %.0 = phi i1 [ false, %bb.b ], [ %i.i, %bb.d ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.1 = phi i1 [ %.0, %bb.e ], [ true, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN4bsslL20dont_add_serverhelloEPNS_13SSL_HANDSHAKEEP6cbb_st(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #14 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4bsslL28ext_ec_point_add_clienthelloEPKNS_13SSL_HANDSHAKEEP6cbb_stS4_NS_23ssl_client_hello_type_tE(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %4 = alloca %struct.cbb_st, align 8             ; 4 uses
  %5 = alloca %struct.cbb_st, align 8             ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i16, ptr %i.a, align 4, !tbaa !332
  %i.c = icmp ugt i16 %i.b, 771
  %i.d = icmp eq i32 %3, 1
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.e = tail call i32 @CBB_add_u16(ptr noundef %1, i16 noundef zeroext 11)
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN4bsslL26ext_ec_point_add_extensionEPKNS_13SSL_HANDSHAKEEP6cbb_st.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call i32 @CBB_add_u16_length_prefixed(ptr noundef %1, ptr noundef nonnull %4)
  %.not4.i = icmp eq i32 %i.f, 0
  br i1 %.not4.i, label %_ZN4bsslL26ext_ec_point_add_extensionEPKNS_13SSL_HANDSHAKEEP6cbb_st.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = call i32 @CBB_add_u8_length_prefixed(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %.not5.i = icmp eq i32 %i.g, 0
  br i1 %.not5.i, label %_ZN4bsslL26ext_ec_point_add_extensionEPKNS_13SSL_HANDSHAKEEP6cbb_st.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = call i32 @CBB_add_u8(ptr noundef nonnull %5, i8 noundef zeroext 0)
  %.not6.i = icmp eq i32 %i.h, 0
  br i1 %.not6.i, label %_ZN4bsslL26ext_ec_point_add_extensionEPKNS_13SSL_HANDSHAKEEP6cbb_st.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = call i32 @CBB_flush(ptr noundef %1)
  %.not7.i = icmp ne i32 %i.i, 0
  br label %_ZN4bsslL26ext_ec_point_add_extensionEPKNS_13SSL_HANDSHAKEEP6cbb_st.exit

_ZN4bsslL26ext_ec_point_add_extensionEPKNS_13SSL_HANDSHAKEEP6cbb_st.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i1 [ false, %bb.b ], [ %.not7.i, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN4bsslL26ext_ec_point_add_extensionEPKNS_13SSL_HANDSHAKEEP6cbb_st.exit
  %.0 = phi i1 [ %.0.i, %_ZN4bsslL26ext_ec_point_add_extensionEPKNS_13SSL_HANDSHAKEEP6cbb_st.exit ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4bsslL30ext_ec_point_parse_serverhelloEPNS_13SSL_HANDSHAKEEPhP6cbs_st(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %struct.cbs_st, align 8             ; 5 uses
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !158
  %i.c = tail call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef %i.b)
  %i.d = icmp ugt i16 %i.c, 771
  br i1 %i.d, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.e = call i32 @CBS_get_u8_length_prefixed(ptr noundef nonnull %2, ptr noundef nonnull %3)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !29
  %.not7 = icmp eq i64 %i.g, 0
  br i1 %.not7, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !29   ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZL14OPENSSL_memchrPKvim.exit.thread, label %_ZL14OPENSSL_memchrPKvim.exit

_ZL14OPENSSL_memchrPKvim.exit:                    ; preds = %bb.e
  %i.k = load ptr, ptr %3, align 8, !tbaa !30
  %i.l = call noundef ptr @memchr(ptr noundef readonly %i.k, i32 noundef 0, i64 noundef %i.i) #23
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZL14OPENSSL_memchrPKvim.exit.thread, label %bb.f

_ZL14OPENSSL_memchrPKvim.exit.thread:             ; preds = %bb.e, %_ZL14OPENSSL_memchrPKvim.exit
  store i8 47, ptr %1, align 1, !tbaa !187
  br label %bb.f

bb.f:                                             ; preds = %_ZL14OPENSSL_memchrPKvim.exit, %bb.c, %bb.d, %_ZL14OPENSSL_memchrPKvim.exit.thread
  %.0 = phi i1 [ false, %bb.c ], [ false, %_ZL14OPENSSL_memchrPKvim.exit.thread ], [ false, %bb.d ], [ true, %_ZL14OPENSSL_memchrPKvim.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.a, %bb.f
  %.1 = phi i1 [ %.0, %bb.f ], [ true, %bb.a ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4bsslL30ext_ec_point_parse_clienthelloEPNS_13SSL_HANDSHAKEEPhP6cbs_st(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %struct.cbs_st, align 8             ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !158
  %i.b = tail call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef %i.a)
  %i.c = icmp ugt i16 %i.b, 771
  %i.d = icmp eq ptr %2, null
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %_ZN4bsslL30ext_ec_point_parse_serverhelloEPNS_13SSL_HANDSHAKEEPhP6cbs_st.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !158
  %i.f = tail call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef %i.e)
  %i.g = icmp ugt i16 %i.f, 771
  br i1 %i.g, label %_ZN4bsslL30ext_ec_point_parse_serverhelloEPNS_13SSL_HANDSHAKEEPhP6cbs_st.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.h = call i32 @CBS_get_u8_length_prefixed(ptr noundef nonnull %2, ptr noundef nonnull %3)
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !29
  %.not7.i = icmp eq i64 %i.j, 0
  br i1 %.not7.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !29   ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZL14OPENSSL_memchrPKvim.exit.thread.i, label %_ZL14OPENSSL_memchrPKvim.exit.i

_ZL14OPENSSL_memchrPKvim.exit.i:                  ; preds = %bb.e
  %i.n = load ptr, ptr %3, align 8, !tbaa !30
  %i.o = call noundef ptr @memchr(ptr noundef readonly %i.n, i32 noundef 0, i64 noundef %i.l) #23
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZL14OPENSSL_memchrPKvim.exit.thread.i, label %bb.f

_ZL14OPENSSL_memchrPKvim.exit.thread.i:           ; preds = %_ZL14OPENSSL_memchrPKvim.exit.i, %bb.e
  store i8 47, ptr %1, align 1, !tbaa !187
  br label %bb.f

bb.f:                                             ; preds = %_ZL14OPENSSL_memchrPKvim.exit.thread.i, %_ZL14OPENSSL_memchrPKvim.exit.i, %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.c ], [ false, %_ZL14OPENSSL_memchrPKvim.exit.thread.i ], [ false, %bb.d ], [ true, %_ZL14OPENSSL_memchrPKvim.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZN4bsslL30ext_ec_point_parse_serverhelloEPNS_13SSL_HANDSHAKEEPhP6cbs_st.exit

_ZN4bsslL30ext_ec_point_parse_serverhelloEPNS_13SSL_HANDSHAKEEPhP6cbs_st.exit: ; preds = %bb.f, %bb.b, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ %.0.i, %bb.f ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4bsslL28ext_ec_point_add_serverhelloEPNS_13SSL_HANDSHAKEEP6cbb_st(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.cbb_st, align 8             ; 4 uses
  %3 = alloca %struct.cbb_st, align 8             ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !158
  %i.b = tail call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef %i.a)
  %i.c = icmp ugt i16 %i.b, 771
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1584
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !293
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.g = load <2 x i32>, ptr %i.f, align 4, !tbaa !188
  %4 = and <2 x i32> %i.g, <i32 2, i32 4>
  %5 = icmp ne <2 x i32> %4, zeroinitializer      ; 2 uses
  %6 = extractelement <2 x i1> %5, i64 0
  %7 = extractelement <2 x i1> %5, i64 1
  %8 = select i1 %6, i1 true, i1 %7
  br i1 %8, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.h = tail call i32 @CBB_add_u16(ptr noundef %1, i16 noundef zeroext 11)
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN4bsslL26ext_ec_point_add_extensionEPKNS_13SSL_HANDSHAKEEP6cbb_st.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = call i32 @CBB_add_u16_length_prefixed(ptr noundef %1, ptr noundef nonnull %2)
  %.not4.i = icmp eq i32 %i.i, 0
  br i1 %.not4.i, label %_ZN4bsslL26ext_ec_point_add_extensionEPKNS_13SSL_HANDSHAKEEP6cbb_st.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = call i32 @CBB_add_u8_length_prefixed(ptr noundef nonnull %2, ptr noundef nonnull %3)
  %.not5.i = icmp eq i32 %i.j, 0
  br i1 %.not5.i, label %_ZN4bsslL26ext_ec_point_add_extensionEPKNS_13SSL_HANDSHAKEEP6cbb_st.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = call i32 @CBB_add_u8(ptr noundef nonnull %3, i8 noundef zeroext 0)
  %.not6.i = icmp eq i32 %i.k, 0
  br i1 %.not6.i, label %_ZN4bsslL26ext_ec_point_add_extensionEPKNS_13SSL_HANDSHAKEEP6cbb_st.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = call i32 @CBB_flush(ptr noundef %1)
  %.not7.i = icmp ne i32 %i.l, 0
  br label %_ZN4bsslL26ext_ec_point_add_extensionEPKNS_13SSL_HANDSHAKEEP6cbb_st.exit

_ZN4bsslL26ext_ec_point_add_extensionEPKNS_13SSL_HANDSHAKEEP6cbb_st.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i1 [ false, %bb.c ], [ %.not7.i, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.h

bb.h:                                             ; preds = %_ZN4bsslL26ext_ec_point_add_extensionEPKNS_13SSL_HANDSHAKEEP6cbb_st.exit, %bb.b, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ %.0.i, %_ZN4bsslL26ext_ec_point_add_extensionEPKNS_13SSL_HANDSHAKEEP6cbb_st.exit ], [ true, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4bsslL26ext_ticket_add_clienthelloEPKNS_13SSL_HANDSHAKEEP6cbb_stS4_NS_23ssl_client_hello_type_tE(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %4 = alloca %struct.cbb_st, align 8             ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !158    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = load i16, ptr %i.b, align 4, !tbaa !332
  %i.d = icmp ugt i16 %i.c, 771
  %i.e = icmp eq i32 %3, 1
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @SSL_get_options(ptr noundef %i.a)
  %i.g = and i32 %i.f, 16384
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !231
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 220
  %i.k = load i16, ptr %i.j, align 4
  %i.l = and i16 %i.k, 16
  %.not12 = icmp eq i16 %i.l, 0
  br i1 %.not12, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !256  ; 2 uses
  %.not18 = icmp eq ptr %i.n, null
  br i1 %.not18, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noundef i32 @_ZN4bssl20ssl_session_get_typeEPK14ssl_session_st(ptr noundef nonnull %i.n)
  %i.p = icmp eq i32 %i.o, 2
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !256  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 232
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !191
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 240
  %i.u = load i64, ptr %i.t, align 8, !tbaa !189
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.5.0 = phi i64 [ %i.u, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ]
  %.sroa.017.0 = phi ptr [ %i.s, %bb.f ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.v = tail call i32 @CBB_add_u16(ptr noundef %1, i16 noundef zeroext 35)
  %.not13 = icmp eq i32 %i.v, 0
  br i1 %.not13, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = call i32 @CBB_add_u16_length_prefixed(ptr noundef %1, ptr noundef nonnull %4)
  %.not14 = icmp eq i32 %i.w, 0
  br i1 %.not14, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = call i32 @CBB_add_bytes(ptr noundef nonnull %4, ptr noundef %.sroa.017.0, i64 noundef %.sroa.5.0)
  %.not15 = icmp eq i32 %i.x, 0
  br i1 %.not15, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = call i32 @CBB_flush(ptr noundef %1)
  %.not16 = icmp ne i32 %i.y, 0
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g, %bb.h, %bb.i
  %.0 = phi i1 [ false, %bb.g ], [ %.not16, %bb.j ], [ false, %bb.i ], [ false, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.b, %bb.k
  %.1 = phi i1 [ %.0, %bb.k ], [ true, %bb.b ], [ true, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4bsslL28ext_ticket_parse_serverhelloEPNS_13SSL_HANDSHAKEEPhP6cbs_st(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !158
  %i.c = tail call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef %i.b)
  %i.d = icmp ugt i16 %i.c, 771
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !29
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = or i32 %i.h, 65536
  store i32 %i.i, ptr %i.g, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i1 [ true, %bb.d ], [ true, %bb.a ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN4bsslL24ignore_parse_clienthelloEPNS_13SSL_HANDSHAKEEPhP6cbs_st(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #14 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4bsslL26ext_ticket_add_serverhelloEPNS_13SSL_HANDSHAKEEP6cbb_st(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 65536
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @CBB_add_u16(ptr noundef %1, i16 noundef zeroext 35)
  %.not4 = icmp eq i32 %i.d, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @CBB_add_u16(ptr noundef %1, i16 noundef zeroext 0)
  %.not5 = icmp ne i32 %i.e, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ %.not5, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4bsslL24ext_alpn_add_clienthelloEPKNS_13SSL_HANDSHAKEEP6cbb_stS4_NS_23ssl_client_hello_type_tE(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i32 %3) #0 {
bb.a:
  %4 = alloca %struct.cbb_st, align 8             ; 4 uses
  %5 = alloca %struct.cbb_st, align 8             ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !158    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !155
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.e = load i64, ptr %i.d, align 8, !tbaa !189
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @SSL_is_quic(ptr noundef %i.a)
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 307, ptr noundef nonnull @.str, i32 noundef 1349)
  br label %bb.k

end_hunk_0
