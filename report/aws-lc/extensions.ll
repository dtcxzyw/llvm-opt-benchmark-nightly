Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/extensions?download=true
inline.NumInlined: 841
inline.NumDeleted: 371
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4bsslL26ext_cookie_add_clienthelloEPKNS_13SSL_HANDSHAKEEP6cbb_stS4_NS_23ssl_client_hello_type_tE:bb.a
bb.h:                                             ; preds = %bb.a, %bb.g
  %.1 = phi i1 [ %.0, %bb.g ], [ true, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN4bsslL41ext_quic_transport_params_add_clienthelloEPKNS_13SSL_HANDSHAKEEP6cbb_stS4_NS_23ssl_client_hello_type_tE(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i32 %3) #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN4bsslL46ext_quic_transport_params_add_clienthello_implEPKNS_13SSL_HANDSHAKEEP6cbb_stb(ptr noundef %0, ptr noundef %2, i1 noundef zeroext false)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN4bsslL43ext_quic_transport_params_parse_serverhelloEPNS_13SSL_HANDSHAKEEPhP6cbs_st(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !115    ; 2 uses
  %i.b = icmp eq ptr %2, null
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !112
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 241
  %i.f = load i16, ptr %i.e, align 1
  %i.g = and i16 %i.f, 512
  %i.h = icmp eq i16 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN4bsslL48ext_quic_transport_params_parse_serverhello_implEPNS_13SSL_HANDSHAKEEPhP6cbs_stb.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !199
  %.not9.i = icmp eq ptr %i.j, null
  br i1 %.not9.i, label %_ZN4bsslL48ext_quic_transport_params_parse_serverhello_implEPNS_13SSL_HANDSHAKEEPhP6cbs_stb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 109, ptr %1, align 1, !tbaa !151
  br label %_ZN4bsslL48ext_quic_transport_params_parse_serverhello_implEPNS_13SSL_HANDSHAKEEPhP6cbs_stb.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !200  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 784 ; 3 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !18   ; 6 uses
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !154
  tail call void @OPENSSL_free(ptr noundef %i.q) #13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.r = icmp eq i64 %i.p, 0
  br i1 %i.r, label %_ZN4bsslL48ext_quic_transport_params_parse_serverhello_implEPNS_13SSL_HANDSHAKEEPhP6cbs_stb.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = tail call ptr @OPENSSL_malloc(i64 noundef %i.p) #13 ; 4 uses
  store ptr %i.s, ptr %i.m, align 8, !tbaa !154
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN4bsslL48ext_quic_transport_params_parse_serverhello_implEPNS_13SSL_HANDSHAKEEPhP6cbs_stb.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 792
  store i64 %i.p, ptr %i.u, align 8, !tbaa !152
  %i.v = icmp sgt i64 %i.p, 1
  br i1 %i.v, label %bb.h, label %bb.i, !prof !201

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.n, i64 %i.p, i1 false)
  br label %_ZN4bsslL48ext_quic_transport_params_parse_serverhello_implEPNS_13SSL_HANDSHAKEEPhP6cbs_stb.exit

bb.i:                                             ; preds = %bb.g
  %i.w = icmp eq i64 %i.p, 1
  br i1 %i.w, label %bb.j, label %_ZN4bsslL48ext_quic_transport_params_parse_serverhello_implEPNS_13SSL_HANDSHAKEEPhP6cbs_stb.exit

bb.j:                                             ; preds = %bb.i
  %i.x = load i8, ptr %i.n, align 1, !tbaa !151
  store i8 %i.x, ptr %i.s, align 1, !tbaa !151
  br label %_ZN4bsslL48ext_quic_transport_params_parse_serverhello_implEPNS_13SSL_HANDSHAKEEPhP6cbs_stb.exit

_ZN4bsslL48ext_quic_transport_params_parse_serverhello_implEPNS_13SSL_HANDSHAKEEPhP6cbs_stb.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.h, %bb.i, %bb.j
  %.0.i = phi i1 [ true, %bb.c ], [ false, %bb.d ], [ true, %bb.b ], [ false, %bb.f ], [ true, %bb.h ], [ true, %bb.i ], [ true, %bb.j ], [ true, %bb.e ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN4bsslL43ext_quic_transport_params_parse_clienthelloEPNS_13SSL_HANDSHAKEEPhP6cbs_st(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN4bsslL48ext_quic_transport_params_parse_clienthello_implEPNS_13SSL_HANDSHAKEEPhP6cbs_stb(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext false)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN4bsslL41ext_quic_transport_params_add_serverhelloEPNS_13SSL_HANDSHAKEEP6cbb_st(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN4bsslL46ext_quic_transport_params_add_serverhello_implEPNS_13SSL_HANDSHAKEEP6cbb_stb(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN4bsslL48ext_quic_transport_params_add_clienthello_legacyEPKNS_13SSL_HANDSHAKEEP6cbb_stS4_NS_23ssl_client_hello_type_tE(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i32 %3) #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN4bsslL46ext_quic_transport_params_add_clienthello_implEPKNS_13SSL_HANDSHAKEEP6cbb_stb(ptr noundef %0, ptr noundef %2, i1 noundef zeroext true)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN4bsslL50ext_quic_transport_params_parse_serverhello_legacyEPNS_13SSL_HANDSHAKEEPhP6cbs_st(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !115    ; 2 uses
  %i.b = icmp eq ptr %2, null
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !112
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 241
  %i.f = load i16, ptr %i.e, align 1
  %i.g = and i16 %i.f, 512
  %.not = icmp eq i16 %i.g, 0
  br i1 %.not, label %_ZN4bsslL48ext_quic_transport_params_parse_serverhello_implEPNS_13SSL_HANDSHAKEEPhP6cbs_stb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !199
  %.not9.i = icmp eq ptr %i.i, null
  br i1 %.not9.i, label %_ZN4bsslL48ext_quic_transport_params_parse_serverhello_implEPNS_13SSL_HANDSHAKEEPhP6cbs_stb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 109, ptr %1, align 1, !tbaa !151
  br label %_ZN4bsslL48ext_quic_transport_params_parse_serverhello_implEPNS_13SSL_HANDSHAKEEPhP6cbs_stb.exit

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !200  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 784 ; 3 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !18   ; 6 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !154
  tail call void @OPENSSL_free(ptr noundef %i.p) #13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.q = icmp eq i64 %i.o, 0
  br i1 %i.q, label %_ZN4bsslL48ext_quic_transport_params_parse_serverhello_implEPNS_13SSL_HANDSHAKEEPhP6cbs_stb.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = tail call ptr @OPENSSL_malloc(i64 noundef %i.o) #13 ; 4 uses
  store ptr %i.r, ptr %i.l, align 8, !tbaa !154
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN4bsslL48ext_quic_transport_params_parse_serverhello_implEPNS_13SSL_HANDSHAKEEPhP6cbs_stb.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 792
  store i64 %i.o, ptr %i.t, align 8, !tbaa !152
  %i.u = icmp sgt i64 %i.o, 1
  br i1 %i.u, label %bb.h, label %bb.i, !prof !201

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %i.m, i64 %i.o, i1 false)
  br label %_ZN4bsslL48ext_quic_transport_params_parse_serverhello_implEPNS_13SSL_HANDSHAKEEPhP6cbs_stb.exit

bb.i:                                             ; preds = %bb.g
  %i.v = icmp eq i64 %i.o, 1
  br i1 %i.v, label %bb.j, label %_ZN4bsslL48ext_quic_transport_params_parse_serverhello_implEPNS_13SSL_HANDSHAKEEPhP6cbs_stb.exit

bb.j:                                             ; preds = %bb.i
  %i.w = load i8, ptr %i.m, align 1, !tbaa !151
  store i8 %i.w, ptr %i.r, align 1, !tbaa !151
  br label %_ZN4bsslL48ext_quic_transport_params_parse_serverhello_implEPNS_13SSL_HANDSHAKEEPhP6cbs_stb.exit

_ZN4bsslL48ext_quic_transport_params_parse_serverhello_implEPNS_13SSL_HANDSHAKEEPhP6cbs_stb.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.h, %bb.i, %bb.j
  %.0.i = phi i1 [ true, %bb.c ], [ false, %bb.d ], [ true, %bb.b ], [ false, %bb.f ], [ true, %bb.h ], [ true, %bb.i ], [ true, %bb.j ], [ true, %bb.e ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN4bsslL50ext_quic_transport_params_parse_clienthello_legacyEPNS_13SSL_HANDSHAKEEPhP6cbs_st(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN4bsslL48ext_quic_transport_params_parse_clienthello_implEPNS_13SSL_HANDSHAKEEPhP6cbs_stb(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN4bsslL48ext_quic_transport_params_add_serverhello_legacyEPNS_13SSL_HANDSHAKEEP6cbb_st(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN4bsslL46ext_quic_transport_params_add_serverhello_implEPNS_13SSL_HANDSHAKEEP6cbb_stb(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN4bsslL32cert_compression_add_clienthelloEPKNS_13SSL_HANDSHAKEEP6cbb_stS4_NS_23ssl_client_hello_type_tE(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i32 %3) #0 {
bb.a:
  %4 = alloca %struct.cbb_st, align 8             ; 4 uses
  %5 = alloca %struct.cbb_st, align 8             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.a = load ptr, ptr %0, align 8, !tbaa !115
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !153  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 592
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 600
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !274  ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !tbaa !275  ; 2 uses
  %.idx = mul nuw nsw i64 %i.g, 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  %.not32 = icmp eq i64 %i.g, 0
  br i1 %.not32, label %select.unfold, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.01634 = phi ptr [ %i.r, %bb.g ], [ %i.f, %bb.a ] ; 3 uses
  %.01733 = phi i8 [ %.118, %bb.g ], [ 1, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.01634, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !367
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %6 = trunc nuw i8 %.01733 to i1
  br i1 %6, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = call i32 @CBB_add_u16(ptr noundef %2, i16 noundef zeroext 27) #13
  %.not22 = icmp eq i32 %i.l, 0
  br i1 %.not22, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call i32 @CBB_add_u16_length_prefixed(ptr noundef %2, ptr noundef nonnull %4) #13
  %.not23 = icmp eq i32 %i.m, 0
  br i1 %.not23, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = call i32 @CBB_add_u8_length_prefixed(ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %.not24 = icmp eq i32 %i.n, 0
  br i1 %.not24, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.01634, i64 16
  %i.p = load i16, ptr %i.o, align 8, !tbaa !277
  %i.q = call i32 @CBB_add_u16(ptr noundef nonnull %5, i16 noundef zeroext %i.p) #13
  %.not25 = icmp eq i32 %i.q, 0
  br i1 %.not25, label %select.unfold, label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %.118 = phi i8 [ %.01733, %.lr.ph ], [ 0, %bb.f ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.01634, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.r, %i.h
  br i1 %.not, label %._crit_edge.a, label %.lr.ph

._crit_edge.a:                                    ; preds = %bb.g
  %7 = trunc nuw i8 %.118 to i1
  br i1 %7, label %select.unfold, label %bb.h

bb.h:                                             ; preds = %._crit_edge.a
  %i.s = call i32 @CBB_flush(ptr noundef %2) #13
  %i.t = icmp ne i32 %i.s, 0
  br label %select.unfold

select.unfold:                                    ; preds = %bb.f, %bb.d, %bb.e, %bb.c, %bb.a, %._crit_edge.a, %bb.h
  %.3 = phi i1 [ %i.t, %bb.h ], [ true, %._crit_edge.a ], [ true, %bb.a ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i1 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN4bsslL34cert_compression_parse_serverhelloEPNS_13SSL_HANDSHAKEEPhP6cbs_st(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readnone captures(address_is_null) %2) #3 {
bb.a:
  %i.a = icmp eq ptr %2, null
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN4bsslL34cert_compression_parse_clienthelloEPNS_13SSL_HANDSHAKEEPhP6cbs_st(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %struct.cbs_st, align 8             ; 11 uses
  %i.a = alloca i16, align 2                      ; 9 uses
  %i.b = icmp eq ptr %2, null
  br i1 %i.b, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !115
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !153  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 592
  %i.g = load i64, ptr %i.f, align 8, !tbaa !275
  %.fr79 = freeze i64 %i.g                        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.h = call i32 @CBS_get_u8_length_prefixed(ptr noundef nonnull %2, ptr noundef nonnull %3) #13
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call i64 @CBS_len(ptr noundef nonnull %2) #13
  %.not49 = icmp eq i64 %i.i, 0
  br i1 %.not49, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.j = call i64 @CBS_len(ptr noundef nonnull %3) #13
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = call i64 @CBS_len(ptr noundef nonnull %3) #13
  %i.m = and i64 %i.l, 1
  %.not50 = icmp eq i64 %i.m, 0
  br i1 %.not50, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.n = call i64 @CBS_len(ptr noundef nonnull %3) #13 ; 3 uses
  %i.o = lshr i64 %i.n, 1                         ; 3 uses
  call void @OPENSSL_free(ptr noundef null) #13
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZN4bssl5ArrayItE4InitEm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = and i64 %i.n, -2
  %i.r = call ptr @OPENSSL_malloc(i64 noundef %i.q) #13 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN4bssl5ArrayItE4InitEm.exit.thread, label %_ZN4bssl5ArrayItE4InitEm.exit

_ZN4bssl5ArrayItE4InitEm.exit:                    ; preds = %bb.g, %bb.f
  %.sroa.0.0 = phi ptr [ null, %bb.f ], [ %i.r, %bb.g ] ; 9 uses
  %i.t = call i64 @CBS_len(ptr noundef nonnull %3) #13
  %.not5172 = icmp eq i64 %i.t, 0
  br i1 %.not5172, label %._crit_edge, label %.lr.ph75

.lr.ph75:                                         ; preds = %_ZN4bssl5ArrayItE4InitEm.exit
  %.not80 = icmp eq i64 %.fr79, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 600
  br i1 %.not80, label %.lr.ph75.split, label %.lr.ph75.split.us

.lr.ph75.split.us:                                ; preds = %.lr.ph75, %..loopexit_crit_edge.us
  %.03674.us = phi i64 [ %i.x, %..loopexit_crit_edge.us ], [ 0, %.lr.ph75 ] ; 2 uses
  %.03773.us = phi i64 [ %.5.us, %..loopexit_crit_edge.us ], [ %.fr79, %.lr.ph75 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.v = call i32 @CBS_get_u16(ptr noundef nonnull %3, ptr noundef nonnull %i.a) #13
  %.not53.not.us = icmp eq i32 %i.v, 0
  br i1 %.not53.not.us, label %.critedge, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph75.split.us
  %i.w = load i16, ptr %i.a, align 2, !tbaa !28   ; 2 uses
  %i.x = add i64 %.03674.us, 1
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0, i64 %.03674.us
  store i16 %i.w, ptr %i.y, align 2, !tbaa !28
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !274
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.us, %bb.i
  %.03571.us = phi i64 [ 0, %.lr.ph.us ], [ %i.af, %bb.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %.03571.us ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i16, ptr %i.ab, align 8, !tbaa !277
  %i.ad = icmp ne i16 %i.ac, %i.w
  %i.ae = load ptr, ptr %i.aa, align 8
  %.not54.us = icmp eq ptr %i.ae, null
  %or.cond.us = select i1 %i.ad, i1 true, i1 %.not54.us
  br i1 %or.cond.us, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = add nuw i64 %.03571.us, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %.fr79
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %bb.h, !llvm.loop !368

bb.j:                                             ; preds = %bb.h
  %spec.select.us = call i64 @llvm.umin.i64(i64 %.03571.us, i64 %.03773.us)
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %bb.i, %bb.j
  %.5.us = phi i64 [ %spec.select.us, %bb.j ], [ %.03773.us, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.ag = call i64 @CBS_len(ptr noundef nonnull %3) #13
  %.not51.us = icmp eq i64 %i.ag, 0
  br i1 %.not51.us, label %._crit_edge, label %.lr.ph75.split.us, !llvm.loop !369

.lr.ph75.split:                                   ; preds = %.lr.ph75, %.loopexit
  %.03674 = phi i64 [ %i.aj, %.loopexit ], [ 0, %.lr.ph75 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.ah = call i32 @CBS_get_u16(ptr noundef nonnull %3, ptr noundef nonnull %i.a) #13
  %.not53.not = icmp eq i32 %i.ah, 0
  br i1 %.not53.not, label %.critedge, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph75.split
  %i.ai = load i16, ptr %i.a, align 2, !tbaa !28
  %i.aj = add i64 %.03674, 1
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0, i64 %.03674
  store i16 %i.ai, ptr %i.ak, align 2, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.al = call i64 @CBS_len(ptr noundef nonnull %3) #13
  %.not51 = icmp eq i64 %i.al, 0
  br i1 %.not51, label %._crit_edge, label %.lr.ph75.split, !llvm.loop !369

._crit_edge:                                      ; preds = %..loopexit_crit_edge.us, %.loopexit, %_ZN4bssl5ArrayItE4InitEm.exit
  %.037.lcssa = phi i64 [ %.fr79, %_ZN4bssl5ArrayItE4InitEm.exit ], [ 0, %.loopexit ], [ %.5.us, %..loopexit_crit_edge.us ] ; 2 uses
  call void @qsort(ptr noundef %.sroa.0.0, i64 noundef %i.o, i64 noundef 2, ptr noundef nonnull @_ZN4bsslL16compare_uint16_tEPKvS1_) #13
  %.not5276 = icmp ugt i64 %i.n, 3
  br i1 %.not5276, label %.lr.ph, label %.critedge56

bb.k:                                             ; preds = %.lr.ph
  %i.am = add nuw nsw i64 %.077, 1                ; 2 uses
  %exitcond84.not = icmp eq i64 %i.am, %i.o
  br i1 %exitcond84.not, label %.critedge56, label %.lr.ph, !llvm.loop !370

.lr.ph:                                           ; preds = %._crit_edge, %bb.k
  %.077 = phi i64 [ %i.am, %bb.k ], [ 1, %._crit_edge ] ; 2 uses
  %i.an = getelementptr [2 x i8], ptr %.sroa.0.0, i64 %.077 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 -2
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !28
  %i.aq = load i16, ptr %i.an, align 2, !tbaa !28
  %i.ar = icmp eq i16 %i.ap, %i.aq
  br i1 %i.ar, label %_ZN4bssl5ArrayItE4InitEm.exit.thread, label %bb.k

.critedge56:                                      ; preds = %bb.k, %._crit_edge
  %i.as = icmp ult i64 %.037.lcssa, %.fr79
  br i1 %i.as, label %bb.l, label %_ZN4bssl5ArrayItE4InitEm.exit.thread

bb.l:                                             ; preds = %.critedge56
  %i.at = load ptr, ptr %0, align 8, !tbaa !115
  %i.au = call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef %i.at) #13
  %i.av = icmp ugt i16 %i.au, 771
  br i1 %i.av, label %bb.m, label %_ZN4bssl5ArrayItE4InitEm.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1592 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = or i32 %i.ax, 2097152
  store i32 %i.ay, ptr %i.aw, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 600
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !274
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %.037.lcssa
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load i16, ptr %i.bc, align 8, !tbaa !277
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 744
  store i16 %i.bd, ptr %i.be, align 8, !tbaa !371
  br label %_ZN4bssl5ArrayItE4InitEm.exit.thread

.critedge:                                        ; preds = %.lr.ph75.split.us, %.lr.ph75.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %_ZN4bssl5ArrayItE4InitEm.exit.thread

_ZN4bssl5ArrayItE4InitEm.exit.thread:             ; preds = %.lr.ph, %bb.g, %.critedge, %bb.m, %bb.l, %.critedge56
  %.sroa.0.065 = phi ptr [ null, %bb.g ], [ %.sroa.0.0, %.critedge56 ], [ %.sroa.0.0, %.critedge ], [ %.sroa.0.0, %bb.l ], [ %.sroa.0.0, %bb.m ], [ %.sroa.0.0, %.lr.ph ]
  %.446 = phi i1 [ false, %bb.g ], [ true, %.critedge56 ], [ false, %.critedge ], [ true, %bb.l ], [ true, %bb.m ], [ false, %.lr.ph ]
  call void @OPENSSL_free(ptr noundef %.sroa.0.065) #13
  br label %bb.n

bb.n:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %_ZN4bssl5ArrayItE4InitEm.exit.thread
  %.547 = phi i1 [ %.446, %_ZN4bssl5ArrayItE4InitEm.exit.thread ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.n
  %.6 = phi i1 [ %.547, %bb.n ], [ true, %bb.a ]
  ret i1 %.6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN4bsslL32cert_compression_add_serverhelloEPNS_13SSL_HANDSHAKEEP6cbb_st(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #3 {
bb.a:
  ret i1 true
end_hunk_0
