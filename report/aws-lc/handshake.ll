Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/handshake?download=true
inline.NumInlined: 462
inline.NumDeleted: 318
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4bssl22ssl_check_message_typeEP6ssl_stRKNS_10SSLMessageEi:bb.a
  %i.c = zext i8 %i.b to i32
  %.not = icmp eq i32 %2, %i.c                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef %0, i32 noundef 2, i32 noundef 10) #11
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 223, ptr noundef nonnull @.str, i32 noundef 107) #11
  %i.d = load i8, ptr %i.a, align 1, !tbaa !107
  %i.e = zext i8 %i.d to i32
  tail call void (ptr, ...) @ERR_add_error_dataf(ptr noundef nonnull @.str.1, i32 noundef %i.e, i32 noundef %2) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %.not
}

declare void @ERR_add_error_dataf(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4bssl19ssl_add_message_cbbEP6ssl_stP6cbb_st(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.bssl::Array", align 8       ; 8 uses
  %3 = alloca %"class.bssl::Array", align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.a = load ptr, ptr %0, align 8, !tbaa !144
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !154
  %i.d = call noundef zeroext i1 %i.c(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2) #11
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !144
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !155
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @OPENSSL_free(ptr noundef null) #11
  %i.i = load ptr, ptr %2, align 8, !tbaa !98
  store ptr %i.i, ptr %3, align 8, !tbaa !101
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !103
  store i64 %i.k, ptr %i.h, align 8, !tbaa !108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.l = call noundef zeroext i1 %i.g(ptr noundef nonnull %0, ptr nofreeobj noundef nonnull align 8 dereferenceable(16) %3) #11
  %i.m = load ptr, ptr %3, align 8, !tbaa !98
  call void @OPENSSL_free(ptr noundef %i.m) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.07 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  %i.n = load ptr, ptr %2, align 8, !tbaa !98
  call void @OPENSSL_free(ptr noundef %i.n) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret i1 %.07
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i64 0, 4294967296) i64 @_ZN4bssl29ssl_max_handshake_message_lenEPK6ssl_st(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @SSL_in_init(ptr noundef %0) #11
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.c = load i8, ptr %i.b, align 4
  %i.d = trunc i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !151
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %i.h = load i8, ptr %i.g, align 8, !tbaa !183
  %i.i = and i8 %i.h, 1
  %.not10 = icmp eq i8 %i.i, 0
  br i1 %.not10, label %bb.f, label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef %0) #11
  %i.k = icmp ult i16 %i.j, 772
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.m = load i8, ptr %i.l, align 4
  %i.n = trunc i8 %i.m to i1
  br i1 %i.n, label %bb.f, label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.b, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.p = load i32, ptr %i.o, align 8, !tbaa !242
  %narrow = tail call i32 @llvm.umax.i32(i32 %i.p, i32 16384)
  %i.q = zext i32 %narrow to i64
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e, %bb.d, %bb.c
  %.1.shrunk = phi i64 [ 1, %bb.e ], [ 16384, %bb.c ], [ 0, %bb.d ], [ %i.q, %.sink.split ]
  ret i64 %.1.shrunk
}

declare i32 @SSL_in_init(ptr noundef) local_unnamed_addr #1

declare noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4bssl16ssl_hash_messageEPNS_13SSL_HANDSHAKEERKNS_10SSLMessageE(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !106, !range !184, !noundef !185
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !147
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !148
  %i.h = tail call noundef zeroext i1 @_ZN4bssl13SSLTranscript6UpdateENS_4SpanIKhEE(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr %i.e, i64 %i.g) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.h, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN4bssl13SSLTranscript6UpdateENS_4SpanIKhEE(ptr noundef nonnull align 8 dereferenceable(56), ptr, i64) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4bssl20ssl_parse_extensionsEPK6cbs_stPhSt16initializer_listIPNS_12SSLExtensionEEb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree readonly captures(address) %2, i64 %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.cbs_st, align 8             ; 15 uses
  %i.a = alloca i16, align 2                      ; 14 uses
  %6 = alloca %struct.cbs_st, align 8             ; 14 uses
  %.fr = freeze i64 %3                            ; 2 uses
  %.idx = shl nuw nsw i64 %.fr, 3
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 3 uses
  %.not57 = icmp eq i64 %.fr, 0                   ; 2 uses
  br i1 %.not57, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !244
  %i.c = call i64 @CBS_len(ptr noundef nonnull %5) #11
  %.not3763 = icmp eq i64 %i.c, 0
  br i1 %.not3763, label %.loopexit, label %.lr.ph66

.lr.ph66:                                         ; preds = %._crit_edge
  br i1 %.not57, label %.lr.ph66.split.us, label %.lr.ph66.split

.lr.ph66.split.us:                                ; preds = %.lr.ph66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.d = call i32 @CBS_get_u16(ptr noundef nonnull %5, ptr noundef nonnull %i.a) #11
  %.not38.us.us88 = icmp eq i32 %i.d, 0           ; 2 uses
  br i1 %4, label %.lr.ph66.split.us.split.us, label %.lr.ph66.split.us.split, !llvm.loop !243

.lr.ph66.split.us.split.us:                       ; preds = %.lr.ph66.split.us
  br i1 %.not38.us.us88, label %.split.us, label %.lr.ph90

bb.b:                                             ; preds = %.preheader.us.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.e = call i32 @CBS_get_u16(ptr noundef nonnull %5, ptr noundef nonnull %i.a) #11
  %.not38.us.us = icmp eq i32 %i.e, 0
  br i1 %.not38.us.us, label %.split.us, label %.lr.ph90

.lr.ph90:                                         ; preds = %.lr.ph66.split.us.split.us, %bb.b
  %i.f = call i32 @CBS_get_u16_length_prefixed(ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %.not39.us.us = icmp eq i32 %i.f, 0
  br i1 %.not39.us.us, label %.split.us, label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.lr.ph90
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.g = call i64 @CBS_len(ptr noundef nonnull %5) #11
  %.not37.us.us = icmp eq i64 %i.g, 0
  br i1 %.not37.us.us, label %.loopexit, label %bb.b

.lr.ph66.split.us.split:                          ; preds = %.lr.ph66.split.us
  br i1 %.not38.us.us88, label %.split.us, label %bb.c

bb.c:                                             ; preds = %.lr.ph66.split.us.split
  %i.h = call i32 @CBS_get_u16_length_prefixed(ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %.not39.us = icmp eq i32 %i.h, 0
  br i1 %.not39.us, label %.split.us, label %.split68.us

.lr.ph66.split:                                   ; preds = %.lr.ph66
  br i1 %4, label %.lr.ph66.split.split.us, label %.lr.ph66.split.split, !llvm.loop !243

.lr.ph66.split.split.us:                          ; preds = %.lr.ph66.split, %._crit_edge62.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.i = call i32 @CBS_get_u16(ptr noundef nonnull %5, ptr noundef nonnull %i.a) #11
  %.not38.us72 = icmp eq i32 %i.i, 0
  br i1 %.not38.us72, label %.split.us, label %bb.d

bb.d:                                             ; preds = %.lr.ph66.split.split.us
  %i.j = call i32 @CBS_get_u16_length_prefixed(ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %.not39.us73 = icmp eq i32 %i.j, 0
  br i1 %.not39.us73, label %.split.us, label %.preheader.us74

.preheader.us74:                                  ; preds = %bb.d
  %7 = load i16, ptr %i.a, align 2, !tbaa !245
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.preheader.us74
  %.060.us = phi ptr [ %2, %.preheader.us74 ], [ %i.q, %bb.g ] ; 2 uses
  %i.k = load ptr, ptr %.060.us, align 8, !tbaa !247 ; 4 uses
  %i.l = load i16, ptr %i.k, align 8, !tbaa !249
  %i.m = icmp eq i16 %7, %i.l
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.o = load i8, ptr %i.n, align 2, !tbaa !250, !range !184, !noundef !185
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.060.us, i64 8 ; 2 uses
  %.not40.us = icmp eq ptr %i.q, %i.b
  br i1 %.not40.us, label %._crit_edge62.us, label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 3 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !251, !range !184, !noundef !185
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %.split79.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.r, align 1, !tbaa !251
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !244
  br label %._crit_edge62.us

._crit_edge62.us:                                 ; preds = %bb.g, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.v = call i64 @CBS_len(ptr noundef nonnull %5) #11
  %.not37.us74 = icmp eq i64 %i.v, 0
  br i1 %.not37.us74, label %.loopexit, label %.lr.ph66.split.split.us

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.03658 = phi ptr [ %i.z, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %i.w = load ptr, ptr %.03658, align 8, !tbaa !247 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 3
  store i8 0, ptr %i.x, align 1, !tbaa !251
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  tail call void @CBS_init(ptr noundef nonnull %i.y, ptr noundef null, i64 noundef 0) #11
  %i.z = getelementptr inbounds nuw i8, ptr %.03658, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.z, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph66.split.split:                             ; preds = %.lr.ph66.split, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.aa = call i32 @CBS_get_u16(ptr noundef nonnull %5, ptr noundef nonnull %i.a) #11
  %.not38 = icmp eq i32 %i.aa, 0
  br i1 %.not38, label %.split.us, label %bb.j

bb.j:                                             ; preds = %.lr.ph66.split.split
  %i.ab = call i32 @CBS_get_u16_length_prefixed(ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %.not39 = icmp eq i32 %i.ab, 0
  br i1 %.not39, label %.split.us, label %.preheader

.preheader:                                       ; preds = %bb.j
  %i.ac = load i16, ptr %i.a, align 2, !tbaa !245
  br label %bb.k

.split.us:                                        ; preds = %bb.j, %.lr.ph66.split.split, %bb.d, %.lr.ph66.split.split.us, %bb.b, %.lr.ph90, %.lr.ph66.split.us.split.us, %bb.c, %.lr.ph66.split.us.split
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 190, ptr noundef nonnull @.str, i32 noundef 183) #11
  br label %.thread50

bb.k:                                             ; preds = %.preheader, %bb.m
  %.060 = phi ptr [ %2, %.preheader ], [ %i.aj, %bb.m ] ; 2 uses
  %i.ad = load ptr, ptr %.060, align 8, !tbaa !247 ; 4 uses
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !249
  %i.af = icmp eq i16 %i.ac, %i.ae
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.ah = load i8, ptr %i.ag, align 2, !tbaa !250, !range !184, !noundef !185
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %.060, i64 8 ; 2 uses
  %.not40 = icmp eq ptr %i.aj, %i.b
  br i1 %.not40, label %.split68.us, label %bb.k

.split68.us:                                      ; preds = %bb.m, %bb.c
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 222, ptr noundef nonnull @.str, i32 noundef 200) #11
  br label %.thread50

bb.n:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 3 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !251, !range !184, !noundef !185
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %.split79.us, label %bb.o

.split79.us:                                      ; preds = %bb.n, %bb.h
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 257, ptr noundef nonnull @.str, i32 noundef 207) #11
  br label %.thread50

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %i.ak, align 1, !tbaa !251
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !244
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.ao = call i64 @CBS_len(ptr noundef nonnull %5) #11
  %.not37 = icmp eq i64 %i.ao, 0
  br i1 %.not37, label %.loopexit, label %.lr.ph66.split.split

.thread50:                                        ; preds = %.split.us, %.split68.us, %.split79.us
  %.sink = phi i8 [ 50, %.split.us ], [ 110, %.split68.us ], [ 47, %.split79.us ]
  store i8 %.sink, ptr %1, align 1, !tbaa !187
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %._crit_edge62.us, %.preheader.us.us, %._crit_edge, %.thread50
  %.not3755 = phi i1 [ false, %.thread50 ], [ true, %._crit_edge ], [ true, %.preheader.us.us ], [ true, %._crit_edge62.us ], [ true, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret i1 %.not3755
}

declare void @CBS_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @CBS_len(ptr noundef) local_unnamed_addr #1

declare i32 @CBS_get_u16(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @CBS_get_u16_length_prefixed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN4bssl20ssl_verify_peer_certEPNS_13SSL_HANDSHAKEE(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !96     ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !188
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 672
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !99   ; 5 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 136 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !100
  %i.i = tail call i64 @OPENSSL_sk_num(ptr noundef %i.h) #11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1528 ; 7 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !99
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !100
  %i.n = tail call i64 @OPENSSL_sk_num(ptr noundef %i.m) #11
  %.not70 = icmp eq i64 %i.i, %i.n
  br i1 %.not70, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !99
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !100
  %i.r = tail call i64 @OPENSSL_sk_num(ptr noundef %i.q) #11
  %.not7390.not = icmp eq i64 %i.r, 0
  br i1 %.not7390.not, label %.critedge75, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 273, ptr noundef nonnull @.str, i32 noundef 230) #11
  tail call void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef nonnull %i.b, i32 noundef 2, i32 noundef 47) #11
  br label %bb.u

.lr.ph:                                           ; preds = %.preheader, %_ZL14OPENSSL_memcmpPKvS0_m.exit.thread
  %.05591 = phi i64 [ %i.av, %_ZL14OPENSSL_memcmpPKvS0_m.exit.thread ], [ 0, %.preheader ] ; 3 uses
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !100
  %i.t = tail call ptr @OPENSSL_sk_value(ptr noundef %i.s, i64 noundef %.05591) #11 ; 3 uses
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !99
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 136
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !100
  %i.x = tail call ptr @OPENSSL_sk_value(ptr noundef %i.w, i64 noundef %.05591) #11 ; 2 uses
  %i.y = tail call i64 @CRYPTO_BUFFER_len(ptr noundef %i.t) #11
  %i.z = tail call i64 @CRYPTO_BUFFER_len(ptr noundef %i.x) #11
  %.not71 = icmp eq i64 %i.y, %i.z
  br i1 %.not71, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.aa = tail call ptr @CRYPTO_BUFFER_data(ptr noundef %i.t) #11
  %i.ab = tail call ptr @CRYPTO_BUFFER_data(ptr noundef %i.x) #11
  %i.ac = tail call i64 @CRYPTO_BUFFER_len(ptr noundef %i.t) #11 ; 2 uses
  %.not16.i = icmp eq i64 %i.ac, 0
  br i1 %.not16.i, label %_ZL14OPENSSL_memcmpPKvS0_m.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.018.i = phi i64 [ %i.au, %.lr.ph.i ], [ 0, %bb.d ]
  %.01517.i = phi i64 [ %i.ad, %.lr.ph.i ], [ %i.ac, %bb.d ]
  %i.ad = add i64 %.01517.i, -1                   ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !187
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ad
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !187
  %i.ai = zext i8 %i.af to i32                    ; 2 uses
  %i.aj = zext i8 %i.ah to i32                    ; 2 uses
  %i.ak = xor i32 %i.aj, %i.ai
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = add nsw i64 %i.al, -1
  %.neg.i.i.i = ashr i64 %i.am, 63                ; 2 uses
  %i.an = xor i64 %.neg.i.i.i, -1
  %i.ao = sub nsw i32 %i.ai, %i.aj
  %i.ap = zext i32 %i.ao to i64
  %i.aq = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.an) #13, !srcloc !262
  %i.ar = and i64 %i.aq, %i.ap
  %i.as = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i) #13, !srcloc !262
  %i.at = and i64 %i.as, %.018.i
  %i.au = or i64 %i.ar, %i.at                     ; 2 uses
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %_ZL14OPENSSL_memcmpPKvS0_m.exit, label %.lr.ph.i, !llvm.loop !252

_ZL14OPENSSL_memcmpPKvS0_m.exit:                  ; preds = %.lr.ph.i
  %.not72 = icmp eq i64 %i.au, 0
  br i1 %.not72, label %_ZL14OPENSSL_memcmpPKvS0_m.exit.thread, label %.critedge

.critedge:                                        ; preds = %_ZL14OPENSSL_memcmpPKvS0_m.exit, %.lr.ph
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 273, ptr noundef nonnull @.str, i32 noundef 245) #11
  tail call void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef %i.b, i32 noundef 2, i32 noundef 47) #11
  br label %bb.u

_ZL14OPENSSL_memcmpPKvS0_m.exit.thread:           ; preds = %bb.d, %_ZL14OPENSSL_memcmpPKvS0_m.exit
  %i.av = add nuw i64 %.05591, 1                  ; 2 uses
  %i.aw = load ptr, ptr %i.j, align 8, !tbaa !99
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 136
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !100
  %i.az = tail call i64 @OPENSSL_sk_num(ptr noundef %i.ay) #11
  %.not73 = icmp ult i64 %i.av, %i.az
  br i1 %.not73, label %.lr.ph, label %.critedge75, !llvm.loop !253

.critedge75:                                      ; preds = %_ZL14OPENSSL_memcmpPKvS0_m.exit.thread, %.preheader
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 264
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !263, !noalias !264 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i, label %_ZN4bssl5UpRefERKSt10unique_ptrI16crypto_buffer_stNS_8internal7DeleterEE.exit, label %.split4.i.i

.split4.i.i:                                      ; preds = %.critedge75
  %i.bc = tail call i32 @CRYPTO_BUFFER_up_ref(ptr noundef nonnull %i.bb) #11, !noalias !265 ; 0 uses
  br label %_ZN4bssl5UpRefERKSt10unique_ptrI16crypto_buffer_stNS_8internal7DeleterEE.exit

_ZN4bssl5UpRefERKSt10unique_ptrI16crypto_buffer_stNS_8internal7DeleterEE.exit: ; preds = %.critedge75, %.split4.i.i
  %i.bd = load ptr, ptr %i.j, align 8, !tbaa !99
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 264 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !263 ; 2 uses
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !263
  %.not.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrI16crypto_buffer_stN4bssl8internal7DeleterEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4bssl5UpRefERKSt10unique_ptrI16crypto_buffer_stNS_8internal7DeleterEE.exit
  tail call void @CRYPTO_BUFFER_free(ptr noundef nonnull %i.bf) #11
  br label %_ZNSt10unique_ptrI16crypto_buffer_stN4bssl8internal7DeleterEED2Ev.exit

_ZNSt10unique_ptrI16crypto_buffer_stN4bssl8internal7DeleterEED2Ev.exit: ; preds = %bb.e, %_ZN4bssl5UpRefERKSt10unique_ptrI16crypto_buffer_stNS_8internal7DeleterEE.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !263, !noalias !266 ; 3 uses
  %.not.i.i77 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i77, label %_ZN4bssl5UpRefERKSt10unique_ptrI16crypto_buffer_stNS_8internal7DeleterEE.exit79, label %.split4.i.i78

.split4.i.i78:                                    ; preds = %_ZNSt10unique_ptrI16crypto_buffer_stN4bssl8internal7DeleterEED2Ev.exit
  %i.bi = tail call i32 @CRYPTO_BUFFER_up_ref(ptr noundef nonnull %i.bh) #11, !noalias !267 ; 0 uses
  br label %_ZN4bssl5UpRefERKSt10unique_ptrI16crypto_buffer_stNS_8internal7DeleterEE.exit79

_ZN4bssl5UpRefERKSt10unique_ptrI16crypto_buffer_stNS_8internal7DeleterEE.exit79: ; preds = %_ZNSt10unique_ptrI16crypto_buffer_stN4bssl8internal7DeleterEED2Ev.exit, %.split4.i.i78
  %i.bj = load ptr, ptr %i.j, align 8, !tbaa !99  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 256 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !263 ; 2 uses
  store ptr %i.bh, ptr %i.bk, align 8, !tbaa !263
  %.not.i.i.i.i80 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i80, label %_ZNSt10unique_ptrI16crypto_buffer_stN4bssl8internal7DeleterEED2Ev.exit83, label %bb.f

bb.f:                                             ; preds = %_ZN4bssl5UpRefERKSt10unique_ptrI16crypto_buffer_stNS_8internal7DeleterEE.exit79
  tail call void @CRYPTO_BUFFER_free(ptr noundef nonnull %i.bl) #11
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !99
  br label %_ZNSt10unique_ptrI16crypto_buffer_stN4bssl8internal7DeleterEED2Ev.exit83

_ZNSt10unique_ptrI16crypto_buffer_stN4bssl8internal7DeleterEED2Ev.exit83: ; preds = %bb.f, %_ZN4bssl5UpRefERKSt10unique_ptrI16crypto_buffer_stNS_8internal7DeleterEE.exit79
  %i.bm = phi ptr [ %.pre, %bb.f ], [ %i.bj, %_ZN4bssl5UpRefERKSt10unique_ptrI16crypto_buffer_stNS_8internal7DeleterEE.exit79 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 184
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !268 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 184
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !268
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store i64 %i.bo, ptr %i.bq, align 8, !tbaa !269
  br label %bb.u

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i8 46, ptr %i.a, align 1, !tbaa !187
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !152
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !201 ; 2 uses
  %.not67 = icmp eq ptr %i.bu, null
  br i1 %.not67, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bv = call noundef i32 %i.bu(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #11 ; 2 uses
  switch i32 %i.bv, label %bb.m [
    i32 0, label %.thread
    i32 1, label %bb.i
  ]
end_hunk_0
begin_hunk_1_@llvm.umax.i32
!45 = !{!"_ZTSSt10_Head_baseILm0EPcLb0EE", !34, i64 0}
!46 = !{!"_ZTSSt11_Tuple_implILm0EJPcN4bssl8internal7DeleterEEE", !45, i64 0}
!47 = !{!"_ZTSSt5tupleIJPcN4bssl8internal7DeleterEEE", !46, i64 0}
!48 = !{!"_ZTSSt15__uniq_ptr_implIcN4bssl8internal7DeleterEE", !47, i64 0}
!49 = !{!"_ZTSSt15__uniq_ptr_dataIcN4bssl8internal7DeleterELb1ELb1EE", !48, i64 0}
!50 = !{!"_ZTSSt10unique_ptrIcN4bssl8internal7DeleterEE", !49, i64 0}
!51 = !{!"p1 _ZTS22stack_st_CRYPTO_BUFFER", !8, i64 0}
!52 = !{!"_ZTSSt10_Head_baseILm0EP22stack_st_CRYPTO_BUFFERLb0EE", !51, i64 0}
!53 = !{!"_ZTSSt11_Tuple_implILm0EJP22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterEEE", !52, i64 0}
!54 = !{!"_ZTSSt5tupleIJP22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterEEE", !53, i64 0}
!55 = !{!"_ZTSSt15__uniq_ptr_implI22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterEE", !54, i64 0}
!56 = !{!"_ZTSSt15__uniq_ptr_dataI22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterELb1ELb1EE", !55, i64 0}
!57 = !{!"_ZTSSt10unique_ptrI22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterEE", !56, i64 0}
!58 = !{!"p1 _ZTS11evp_pkey_st", !8, i64 0}
!59 = !{!"_ZTSSt10_Head_baseILm0EP11evp_pkey_stLb0EE", !58, i64 0}
!60 = !{!"_ZTSSt11_Tuple_implILm0EJP11evp_pkey_stN4bssl8internal7DeleterEEE", !59, i64 0}
!61 = !{!"_ZTSSt5tupleIJP11evp_pkey_stN4bssl8internal7DeleterEEE", !60, i64 0}
!62 = !{!"_ZTSSt15__uniq_ptr_implI11evp_pkey_stN4bssl8internal7DeleterEE", !61, i64 0}
!63 = !{!"_ZTSSt15__uniq_ptr_dataI11evp_pkey_stN4bssl8internal7DeleterELb1ELb1EE", !62, i64 0}
!64 = !{!"_ZTSSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEE", !63, i64 0}
!65 = !{!"p1 _ZTS14ssl_session_st", !8, i64 0}
!66 = !{!"_ZTSSt10_Head_baseILm0EP14ssl_session_stLb0EE", !65, i64 0}
!67 = !{!"_ZTSSt11_Tuple_implILm0EJP14ssl_session_stN4bssl8internal7DeleterEEE", !66, i64 0}
!68 = !{!"_ZTSSt5tupleIJP14ssl_session_stN4bssl8internal7DeleterEEE", !67, i64 0}
!69 = !{!"_ZTSSt15__uniq_ptr_implI14ssl_session_stN4bssl8internal7DeleterEE", !68, i64 0}
!70 = !{!"_ZTSSt15__uniq_ptr_dataI14ssl_session_stN4bssl8internal7DeleterELb1ELb1EE", !69, i64 0}
!71 = !{!"_ZTSSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE", !70, i64 0}
!72 = !{!"p1 _ZTS15ssl_ech_keys_st", !8, i64 0}
!73 = !{!"_ZTSSt10_Head_baseILm0EP15ssl_ech_keys_stLb0EE", !72, i64 0}
!74 = !{!"_ZTSSt11_Tuple_implILm0EJP15ssl_ech_keys_stN4bssl8internal7DeleterEEE", !73, i64 0}
!75 = !{!"_ZTSSt5tupleIJP15ssl_ech_keys_stN4bssl8internal7DeleterEEE", !74, i64 0}
!76 = !{!"_ZTSSt15__uniq_ptr_implI15ssl_ech_keys_stN4bssl8internal7DeleterEE", !75, i64 0}
!77 = !{!"_ZTSSt15__uniq_ptr_dataI15ssl_ech_keys_stN4bssl8internal7DeleterELb1ELb1EE", !76, i64 0}
!78 = !{!"_ZTSSt10unique_ptrI15ssl_ech_keys_stN4bssl8internal7DeleterEE", !77, i64 0}
!79 = !{!"p1 _ZTSN4bssl9ECHConfigE", !8, i64 0}
!80 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl9ECHConfigELb0EE", !79, i64 0}
!81 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl9ECHConfigENS0_8internal7DeleterEEE", !80, i64 0}
!82 = !{!"_ZTSSt5tupleIJPN4bssl9ECHConfigENS0_8internal7DeleterEEE", !81, i64 0}
!83 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl9ECHConfigENS0_8internal7DeleterEE", !82, i64 0}
!84 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl9ECHConfigENS0_8internal7DeleterELb1ELb1EE", !83, i64 0}
!85 = !{!"_ZTSSt10unique_ptrIN4bssl9ECHConfigENS0_8internal7DeleterEE", !84, i64 0}
!86 = !{!"p1 _ZTS13ssl_cipher_st", !8, i64 0}
!87 = !{!"p1 _ZTSN4bssl19SSL_HANDSHAKE_HINTSE", !8, i64 0}
!88 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl19SSL_HANDSHAKE_HINTSELb0EE", !87, i64 0}
!89 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl19SSL_HANDSHAKE_HINTSENS0_8internal7DeleterEEE", !88, i64 0}
!90 = !{!"_ZTSSt5tupleIJPN4bssl19SSL_HANDSHAKE_HINTSENS0_8internal7DeleterEEE", !89, i64 0}
!91 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl19SSL_HANDSHAKE_HINTSENS0_8internal7DeleterEE", !90, i64 0}
!92 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl19SSL_HANDSHAKE_HINTSENS0_8internal7DeleterELb1ELb1EE", !91, i64 0}
!93 = !{!"_ZTSSt10unique_ptrIN4bssl19SSL_HANDSHAKE_HINTSENS0_8internal7DeleterEE", !92, i64 0}
!94 = !{!"bool", !4, i64 0}
!95 = !{!"_ZTSN4bssl13SSL_HANDSHAKEE", !9, i64 0, !10, i64 8, !11, i64 16, !5, i64 20, !5, i64 24, !12, i64 28, !12, i64 30, !12, i64 32, !13, i64 40, !4, i64 48, !4, i64 96, !4, i64 144, !4, i64 192, !4, i64 240, !4, i64 288, !4, i64 336, !4, i64 384, !5, i64 388, !4, i64 392, !20, i64 400, !4, i64 408, !33, i64 424, !33, i64 480, !4, i64 536, !35, i64 568, !35, i64 584, !35, i64 600, !35, i64 616, !35, i64 632, !35, i64 648, !35, i64 664, !37, i64 680, !37, i64 696, !37, i64 712, !35, i64 728, !12, i64 744, !44, i64 752, !35, i64 1464, !50, i64 1480, !57, i64 1488, !35, i64 1496, !64, i64 1512, !64, i64 1520, !71, i64 1528, !71, i64 1536, !78, i64 1544, !85, i64 1552, !86, i64 1560, !35, i64 1568, !93, i64 1584, !94, i64 1592, !94, i64 1592, !94, i64 1592, !94, i64 1592, !94, i64 1592, !94, i64 1592, !94, i64 1592, !94, i64 1592, !94, i64 1593, !94, i64 1593, !94, i64 1593, !94, i64 1593, !94, i64 1593, !94, i64 1593, !94, i64 1593, !94, i64 1593, !94, i64 1594, !94, i64 1594, !94, i64 1594, !94, i64 1594, !94, i64 1594, !94, i64 1594, !94, i64 1594, !94, i64 1594, !94, i64 1595, !12, i64 1596, !12, i64 1598, !12, i64 1600, !4, i64 1602, !4, i64 1603, !4, i64 1635, !4, i64 1636}
!96 = !{!95, !9, i64 0}
!97 = !{!95, !11, i64 16}
!98 = !{!35, !34, i64 0}
!99 = !{!65, !65, i64 0}
!100 = !{!51, !51, i64 0}
!101 = !{!34, !34, i64 0}
!102 = !{!14, !14, i64 0}
!103 = !{!35, !13, i64 8}
!104 = !{!"_ZTS6cbs_st", !34, i64 0, !13, i64 8}
!105 = !{!"_ZTSN4bssl10SSLMessageE", !94, i64 0, !4, i64 1, !104, i64 8, !104, i64 24}
!106 = !{!105, !94, i64 0}
!107 = !{!105, !4, i64 1}
!108 = !{!13, !13, i64 0}
!109 = !{!"p1 _ZTSN4bssl19SSL_PROTOCOL_METHODE", !8, i64 0}
!110 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl10SSL_CONFIGELb0EE", !10, i64 0}
!111 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl10SSL_CONFIGENS0_8internal7DeleterEEE", !110, i64 0}
!112 = !{!"_ZTSSt5tupleIJPN4bssl10SSL_CONFIGENS0_8internal7DeleterEEE", !111, i64 0}
!113 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl10SSL_CONFIGENS0_8internal7DeleterEE", !112, i64 0}
!114 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl10SSL_CONFIGENS0_8internal7DeleterELb1ELb1EE", !113, i64 0}
!115 = !{!"_ZTSSt10unique_ptrIN4bssl10SSL_CONFIGENS0_8internal7DeleterEE", !114, i64 0}
!116 = !{!"p1 _ZTS6bio_st", !8, i64 0}
!117 = !{!"_ZTSSt10_Head_baseILm0EP6bio_stLb0EE", !116, i64 0}
!118 = !{!"_ZTSSt11_Tuple_implILm0EJP6bio_stN4bssl8internal7DeleterEEE", !117, i64 0}
!119 = !{!"_ZTSSt5tupleIJP6bio_stN4bssl8internal7DeleterEEE", !118, i64 0}
!120 = !{!"_ZTSSt15__uniq_ptr_implI6bio_stN4bssl8internal7DeleterEE", !119, i64 0}
!121 = !{!"_ZTSSt15__uniq_ptr_dataI6bio_stN4bssl8internal7DeleterELb1ELb1EE", !120, i64 0}
!122 = !{!"_ZTSSt10unique_ptrI6bio_stN4bssl8internal7DeleterEE", !121, i64 0}
!123 = !{!"p1 _ZTSN4bssl10SSL3_STATEE", !8, i64 0}
!124 = !{!"p1 _ZTSN4bssl11DTLS1_STATEE", !8, i64 0}
!125 = !{!"p1 _ZTS19stack_st_SSL_CIPHER", !8, i64 0}
!126 = !{!"_ZTSSt10_Head_baseILm0EP19stack_st_SSL_CIPHERLb0EE", !125, i64 0}
!127 = !{!"_ZTSSt11_Tuple_implILm0EJP19stack_st_SSL_CIPHERN4bssl8internal7DeleterEEE", !126, i64 0}
!128 = !{!"_ZTSSt5tupleIJP19stack_st_SSL_CIPHERN4bssl8internal7DeleterEEE", !127, i64 0}
!129 = !{!"_ZTSSt15__uniq_ptr_implI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEE", !128, i64 0}
!130 = !{!"_ZTSSt15__uniq_ptr_dataI19stack_st_SSL_CIPHERN4bssl8internal7DeleterELb1ELb1EE", !129, i64 0}
!131 = !{!"_ZTSSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEE", !130, i64 0}
!132 = !{!"p1 _ZTS10ssl_ctx_st", !8, i64 0}
!133 = !{!"_ZTSSt10_Head_baseILm0EP10ssl_ctx_stLb0EE", !132, i64 0}
!134 = !{!"_ZTSSt11_Tuple_implILm0EJP10ssl_ctx_stN4bssl8internal7DeleterEEE", !133, i64 0}
!135 = !{!"_ZTSSt5tupleIJP10ssl_ctx_stN4bssl8internal7DeleterEEE", !134, i64 0}
!136 = !{!"_ZTSSt15__uniq_ptr_implI10ssl_ctx_stN4bssl8internal7DeleterEE", !135, i64 0}
!137 = !{!"_ZTSSt15__uniq_ptr_dataI10ssl_ctx_stN4bssl8internal7DeleterELb1ELb1EE", !136, i64 0}
!138 = !{!"_ZTSSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEE", !137, i64 0}
!139 = !{!"p1 _ZTS13stack_st_void", !8, i64 0}
!140 = !{!"_ZTS17crypto_ex_data_st", !139, i64 0}
!141 = !{!"p1 _ZTS18ssl_quic_method_st", !8, i64 0}
!142 = !{!"_ZTS22ssl_renegotiate_mode_t", !4, i64 0}
!143 = !{!"_ZTS6ssl_st", !109, i64 0, !115, i64 8, !12, i64 16, !12, i64 18, !13, i64 24, !122, i64 32, !122, i64 40, !8, i64 48, !123, i64 56, !124, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !5, i64 104, !71, i64 112, !131, i64 120, !50, i64 128, !12, i64 136, !8, i64 144, !138, i64 152, !138, i64 160, !140, i64 168, !13, i64 176, !5, i64 184, !5, i64 188, !5, i64 192, !50, i64 200, !141, i64 208, !142, i64 216, !94, i64 220, !94, i64 220, !94, i64 220, !94, i64 220, !94, i64 220}
!144 = !{!143, !109, i64 0}
!145 = !{!"_ZTSN4bssl19SSL_PROTOCOL_METHODE", !94, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144}
!146 = !{!145, !8, i64 24}
!147 = !{!104, !34, i64 0}
!148 = !{!104, !13, i64 8}
!149 = !{!"p1 _ZTSN4bssl13SSL_HANDSHAKEE", !8, i64 0}
!150 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl13SSL_HANDSHAKEELb0EE", !149, i64 0}
!151 = !{!10, !10, i64 0}
!152 = !{!95, !10, i64 8}
!153 = !{!149, !149, i64 0}
!154 = !{!145, !8, i64 96}
!155 = !{!145, !8, i64 104}
!156 = !{!"p1 _ZTS20X509_VERIFY_PARAM_st", !8, i64 0}
!157 = !{!"p1 _ZTSN4bssl23SSLCipherPreferenceListE", !8, i64 0}
!158 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl23SSLCipherPreferenceListELb0EE", !157, i64 0}
!159 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl23SSLCipherPreferenceListENS0_8internal7DeleterEEE", !158, i64 0}
!160 = !{!"_ZTSSt5tupleIJPN4bssl23SSLCipherPreferenceListENS0_8internal7DeleterEEE", !159, i64 0}
!161 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl23SSLCipherPreferenceListENS0_8internal7DeleterEE", !160, i64 0}
!162 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl23SSLCipherPreferenceListENS0_8internal7DeleterELb1ELb1EE", !161, i64 0}
!163 = !{!"_ZTSSt10unique_ptrIN4bssl23SSLCipherPreferenceListENS0_8internal7DeleterEE", !162, i64 0}
!164 = !{!"p1 _ZTSN4bssl4CERTE", !8, i64 0}
!165 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl4CERTELb0EE", !164, i64 0}
!166 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl4CERTENS0_8internal7DeleterEEE", !165, i64 0}
!167 = !{!"_ZTSSt5tupleIJPN4bssl4CERTENS0_8internal7DeleterEEE", !166, i64 0}
!168 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl4CERTENS0_8internal7DeleterEE", !167, i64 0}
!169 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl4CERTENS0_8internal7DeleterELb1ELb1EE", !168, i64 0}
!170 = !{!"_ZTSSt10unique_ptrIN4bssl4CERTENS0_8internal7DeleterEE", !169, i64 0}
!171 = !{!"p1 _ZTS18stack_st_X509_NAME", !8, i64 0}
!172 = !{!"p1 _ZTSN4bssl10ALPSConfigE", !8, i64 0}
!173 = !{!"_ZTSN4bssl5ArrayINS_10ALPSConfigEEE", !172, i64 0, !13, i64 8}
!174 = !{!"_ZTSN4bssl13GrowableArrayINS_10ALPSConfigEEE", !13, i64 0, !173, i64 8}
!175 = !{!"p1 _ZTS32stack_st_SRTP_PROTECTION_PROFILE", !8, i64 0}
!176 = !{!"_ZTSSt10_Head_baseILm0EP32stack_st_SRTP_PROTECTION_PROFILELb0EE", !175, i64 0}
!177 = !{!"_ZTSSt11_Tuple_implILm0EJP32stack_st_SRTP_PROTECTION_PROFILEN4bssl8internal7DeleterEEE", !176, i64 0}
!178 = !{!"_ZTSSt5tupleIJP32stack_st_SRTP_PROTECTION_PROFILEN4bssl8internal7DeleterEEE", !177, i64 0}
!179 = !{!"_ZTSSt15__uniq_ptr_implI32stack_st_SRTP_PROTECTION_PROFILEN4bssl8internal7DeleterEE", !178, i64 0}
!180 = !{!"_ZTSSt15__uniq_ptr_dataI32stack_st_SRTP_PROTECTION_PROFILEN4bssl8internal7DeleterELb1ELb1EE", !179, i64 0}
!181 = !{!"_ZTSSt10unique_ptrI32stack_st_SRTP_PROTECTION_PROFILEN4bssl8internal7DeleterEE", !180, i64 0}
!182 = !{!"_ZTSN4bssl10SSL_CONFIGE", !9, i64 0, !12, i64 8, !12, i64 10, !156, i64 16, !163, i64 24, !163, i64 32, !170, i64 40, !8, i64 48, !8, i64 56, !50, i64 64, !8, i64 72, !8, i64 80, !57, i64 88, !171, i64 96, !37, i64 104, !64, i64 120, !35, i64 128, !174, i64 144, !35, i64 168, !35, i64 184, !37, i64 200, !181, i64 216, !35, i64 224, !4, i64 240, !94, i64 241, !94, i64 241, !94, i64 241, !94, i64 241, !94, i64 241, !94, i64 241, !94, i64 241, !94, i64 241, !94, i64 242, !94, i64 242, !94, i64 242, !94, i64 242, !94, i64 242, !94, i64 242, !94, i64 242, !94, i64 242, !94, i64 243}
!183 = !{!182, !4, i64 240}
!184 = !{i8 0, i8 2}
!185 = !{}
!186 = !{!"llvm.loop.mustprogress"}
!187 = !{!4, !4, i64 0}
!188 = !{!143, !123, i64 56}
!189 = !{!"p1 _ZTS16crypto_buffer_st", !8, i64 0}
!190 = !{!"_ZTSN4bssl10RefCountedI14ssl_session_stEE", !5, i64 0}
!191 = !{!"p1 _ZTSN4bssl15SSL_X509_METHODE", !8, i64 0}
!192 = !{!"p1 _ZTS7x509_st", !8, i64 0}
!193 = !{!"p1 _ZTS13stack_st_X509", !8, i64 0}
!194 = !{!"_ZTSSt10_Head_baseILm0EP16crypto_buffer_stLb0EE", !189, i64 0}
!195 = !{!"_ZTSSt11_Tuple_implILm0EJP16crypto_buffer_stN4bssl8internal7DeleterEEE", !194, i64 0}
!196 = !{!"_ZTSSt5tupleIJP16crypto_buffer_stN4bssl8internal7DeleterEEE", !195, i64 0}
!197 = !{!"_ZTSSt15__uniq_ptr_implI16crypto_buffer_stN4bssl8internal7DeleterEE", !196, i64 0}
!198 = !{!"_ZTSSt15__uniq_ptr_dataI16crypto_buffer_stN4bssl8internal7DeleterELb1ELb1EE", !197, i64 0}
!199 = !{!"_ZTSSt10unique_ptrI16crypto_buffer_stN4bssl8internal7DeleterEE", !198, i64 0}
!200 = !{!"_ZTS14ssl_session_st", !190, i64 0, !12, i64 4, !12, i64 6, !12, i64 8, !4, i64 10, !4, i64 11, !4, i64 59, !4, i64 60, !4, i64 92, !4, i64 93, !50, i64 128, !57, i64 136, !191, i64 144, !192, i64 152, !193, i64 160, !193, i64 168, !193, i64 176, !13, i64 184, !5, i64 192, !5, i64 196, !13, i64 200, !86, i64 208, !140, i64 216, !65, i64 224, !65, i64 232, !35, i64 240, !199, i64 256, !199, i64 264, !4, i64 272, !4, i64 304, !4, i64 368, !5, i64 372, !5, i64 376, !5, i64 380, !35, i64 384, !35, i64 400, !35, i64 416, !94, i64 432, !94, i64 432, !94, i64 432, !94, i64 432, !94, i64 432, !94, i64 432, !94, i64 432, !35, i64 440}
!201 = !{!182, !8, i64 56}
!202 = !{!"_ZTSN4bssl9SSLBufferE", !34, i64 0, !94, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !4, i64 52, !5, i64 60}
!203 = !{!"_ZTSN4bssl4SpanIhEE", !34, i64 0, !13, i64 8}
!204 = !{!"_ZTSN4bssl4SpanIKhEE", !34, i64 0, !13, i64 8}
!205 = !{!"_ZTSN4bssl14ssl_shutdown_tE", !4, i64 0}
!206 = !{!"_ZTS22ssl_encryption_level_t", !4, i64 0}
!207 = !{!"_ZTSN4bssl16ssl_ech_status_tE", !4, i64 0}
!208 = !{!"_ZTS23ssl_early_data_reason_t", !4, i64 0}
!209 = !{!"p1 _ZTSN4bssl14SSLAEADContextE", !8, i64 0}
!210 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl14SSLAEADContextELb0EE", !209, i64 0}
!211 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl14SSLAEADContextENS0_8internal7DeleterEEE", !210, i64 0}
!212 = !{!"_ZTSSt5tupleIJPN4bssl14SSLAEADContextENS0_8internal7DeleterEEE", !211, i64 0}
!213 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl14SSLAEADContextENS0_8internal7DeleterEE", !212, i64 0}
!214 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl14SSLAEADContextENS0_8internal7DeleterELb1ELb1EE", !213, i64 0}
!215 = !{!"_ZTSSt10unique_ptrIN4bssl14SSLAEADContextENS0_8internal7DeleterEE", !214, i64 0}
!216 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl13SSL_HANDSHAKEENS0_8internal7DeleterEEE", !150, i64 0}
!217 = !{!"_ZTSSt5tupleIJPN4bssl13SSL_HANDSHAKEENS0_8internal7DeleterEEE", !216, i64 0}
!218 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl13SSL_HANDSHAKEENS0_8internal7DeleterEE", !217, i64 0}
!219 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl13SSL_HANDSHAKEENS0_8internal7DeleterELb1ELb1EE", !218, i64 0}
!220 = !{!"_ZTSSt10unique_ptrIN4bssl13SSL_HANDSHAKEENS0_8internal7DeleterEE", !219, i64 0}
!221 = !{!"p1 _ZTS26srtp_protection_profile_st", !8, i64 0}
!222 = !{!"_ZTSN4bssl10SSL3_STATEE", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 48, !202, i64 80, !202, i64 144, !203, i64 208, !13, i64 224, !204, i64 232, !4, i64 248, !205, i64 252, !205, i64 256, !20, i64 264, !5, i64 272, !5, i64 276, !5, i64 280, !206, i64 284, !206, i64 288, !12, i64 292, !4, i64 294, !4, i64 295, !207, i64 296, !94, i64 300, !94, i64 300, !94, i64 300, !94, i64 300, !94, i64 300, !94, i64 300, !94, i64 300, !94, i64 300, !94, i64 301, !94, i64 301, !94, i64 301, !94, i64 301, !94, i64 301, !94, i64 301, !94, i64 301, !27, i64 304, !27, i64 312, !27, i64 320, !5, i64 328, !5, i64 332, !208, i64 336, !215, i64 344, !215, i64 352, !220, i64 360, !171, i64 368, !35, i64 376, !4, i64 392, !4, i64 440, !4, i64 488, !4, i64 536, !4, i64 537, !4, i64 538, !4, i64 539, !4, i64 603, !4, i64 604, !4, i64 605, !4, i64 669, !71, i64 672, !35, i64 680, !35, i64 696, !50, i64 712, !4, i64 720, !35, i64 784, !221, i64 800}
!223 = !{!222, !4, i64 603}
!224 = !{!222, !4, i64 604}
!225 = !{!145, !8, i64 88}
!226 = !{ptr @_ZN4bssl19ssl_add_message_cbbEP6ssl_stP6cbb_st}
!227 = distinct !{null, null, null, null}
!228 = !{!87, !87, i64 0}
!229 = !{!79, !79, i64 0}
!230 = !{!72, !72, i64 0}
!231 = !{!58, !58, i64 0}
!232 = !{!37, !36, i64 0}
!233 = !{!"p1 _ZTSN4bssl11SSLKeyShareE", !8, i64 0}
!234 = !{!233, !233, i64 0}
!235 = !{!"vtable pointer", !3, i64 0}
!236 = !{!235, !235, i64 0}
!237 = !{!95, !13, i64 40}
!238 = distinct !{!238, !"_ZN4bssl10MakeUniqueINS_13SSL_HANDSHAKEEJRP6ssl_stEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_"}
!239 = distinct !{!239, !238, !"_ZN4bssl10MakeUniqueINS_13SSL_HANDSHAKEEJRP6ssl_stEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_: argument 0"}
!240 = !{!239}
!241 = !{!150, !149, i64 0}
!242 = !{!143, !5, i64 192}
!243 = distinct !{!243, !186}
!244 = !{i64 0, i64 8, !101, i64 8, i64 8, !108}
!245 = !{!12, !12, i64 0}
!246 = !{!"p1 _ZTSN4bssl12SSLExtensionE", !8, i64 0}
!247 = !{!246, !246, i64 0}
!248 = !{!"_ZTSN4bssl12SSLExtensionE", !12, i64 0, !94, i64 2, !94, i64 3, !104, i64 8}
!249 = !{!248, !12, i64 0}
!250 = !{!248, !94, i64 2}
!251 = !{!248, !94, i64 3}
!252 = distinct !{!252, !186}
!253 = distinct !{!253, !186}
!254 = distinct !{!254, !"_ZN4bssl5UpRefERKSt10unique_ptrI16crypto_buffer_stNS_8internal7DeleterEE"}
!255 = distinct !{!255, !254, !"_ZN4bssl5UpRefERKSt10unique_ptrI16crypto_buffer_stNS_8internal7DeleterEE: argument 0"}
!256 = distinct !{!256, !"_ZN4bssl5UpRefEP16crypto_buffer_st"}
!257 = distinct !{!257, !256, !"_ZN4bssl5UpRefEP16crypto_buffer_st: argument 0"}
!258 = distinct !{!258, !"_ZN4bssl5UpRefERKSt10unique_ptrI16crypto_buffer_stNS_8internal7DeleterEE"}
!259 = distinct !{!259, !258, !"_ZN4bssl5UpRefERKSt10unique_ptrI16crypto_buffer_stNS_8internal7DeleterEE: argument 0"}
!260 = distinct !{!260, !"_ZN4bssl5UpRefEP16crypto_buffer_st"}
!261 = distinct !{!261, !260, !"_ZN4bssl5UpRefEP16crypto_buffer_st: argument 0"}
!262 = !{i64 4696772}
!263 = !{!189, !189, i64 0}
!264 = !{!255}
!265 = !{!257, !255}
!266 = !{!259}
!267 = !{!261, !259}
!268 = !{!200, !13, i64 184}
!269 = !{!143, !13, i64 176}
!270 = !{!132, !132, i64 0}
!271 = !{!"_ZTSN4bssl10RefCountedI10ssl_ctx_stEE", !5, i64 0}
!272 = !{!"p1 _ZTS13x509_store_st", !8, i64 0}
!273 = !{!"p1 _ZTS20lhash_st_SSL_SESSION", !8, i64 0}
!274 = !{!"_ZTSSt13__atomic_baseIiE", !5, i64 0}
!275 = !{!"_ZTSSt6atomicIiE", !274, i64 0}
!276 = !{!"_ZTSN10ssl_ctx_stUt_E", !275, i64 0, !275, i64 4, !275, i64 8, !275, i64 12, !275, i64 16, !275, i64 20, !275, i64 24, !275, i64 28, !275, i64 32, !275, i64 36}
!277 = !{!"p1 _ZTS29stack_st_SSL_CUSTOM_EXTENSION", !8, i64 0}
!278 = !{!"p1 _ZTSN4bssl9TicketKeyE", !8, i64 0}
!279 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl9TicketKeyELb0EE", !278, i64 0}
!280 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl9TicketKeyENS0_8internal7DeleterEEE", !279, i64 0}
!281 = !{!"_ZTSSt5tupleIJPN4bssl9TicketKeyENS0_8internal7DeleterEEE", !280, i64 0}
!282 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl9TicketKeyENS0_8internal7DeleterEE", !281, i64 0}
!283 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl9TicketKeyENS0_8internal7DeleterELb1ELb1EE", !282, i64 0}
!284 = !{!"_ZTSSt10unique_ptrIN4bssl9TicketKeyENS0_8internal7DeleterEE", !283, i64 0}
!285 = !{!"p1 _ZTSN4bssl18CertCompressionAlgE", !8, i64 0}
!286 = !{!"_ZTSN4bssl5ArrayINS_18CertCompressionAlgEEE", !285, i64 0, !13, i64 8}
!287 = !{!"_ZTSN4bssl13GrowableArrayINS_18CertCompressionAlgEEE", !13, i64 0, !286, i64 8}
!288 = !{!"p1 _ZTS21crypto_buffer_pool_st", !8, i64 0}
!289 = !{!"p1 _ZTS25ssl_ticket_aead_method_st", !8, i64 0}
!290 = !{!"_ZTS10ssl_ctx_st", !271, i64 0, !109, i64 8, !191, i64 16, !4, i64 24, !12, i64 80, !12, i64 82, !4, i64 84, !13, i64 88, !141, i64 96, !163, i64 104, !163, i64 112, !272, i64 120, !273, i64 128, !13, i64 136, !65, i64 144, !65, i64 152, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !8, i64 176, !8, i64 184, !8, i64 192, !276, i64 200, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !140, i64 288, !277, i64 296, !277, i64 304, !8, i64 312, !57, i64 320, !171, i64 328, !5, i64 336, !5, i64 340, !5, i64 344, !170, i64 352, !8, i64 360, !8, i64 368, !8, i64 376, !8, i64 384, !5, i64 392, !8, i64 400, !156, i64 408, !8, i64 416, !8, i64 424, !94, i64 432, !12, i64 434, !8, i64 440, !8, i64 448, !8, i64 456, !8, i64 464, !284, i64 472, !284, i64 480, !8, i64 488, !50, i64 496, !8, i64 504, !8, i64 512, !8, i64 520, !8, i64 528, !8, i64 536, !8, i64 544, !8, i64 552, !8, i64 560, !35, i64 568, !181, i64 584, !287, i64 592, !37, i64 616, !64, i64 632, !78, i64 640, !8, i64 648, !8, i64 656, !288, i64 664, !289, i64 672, !8, i64 680, !8, i64 688, !37, i64 696, !94, i64 712, !94, i64 712, !94, i64 712, !94, i64 712, !94, i64 712, !94, i64 712, !94, i64 712, !94, i64 712, !94, i64 713, !94, i64 713, !94, i64 713, !94, i64 713, !94, i64 713, !94, i64 713, !94, i64 713, !94, i64 713}
!291 = !{!290, !191, i64 16}
!292 = !{!"_ZTSN4bssl15SSL_X509_METHODE", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136}
!293 = !{!292, !8, i64 72}
!294 = !{!290, !8, i64 680}
!295 = !{!290, !8, i64 688}
!296 = !{!145, !8, i64 40}
!297 = !{!145, !8, i64 32}
!298 = !{!200, !4, i64 10}
!299 = distinct !{!299, !186}
!300 = !{!145, !8, i64 120}
!301 = !{!143, !141, i64 208}
!302 = !{!222, !5, i64 276}
!303 = !{!202, !34, i64 0}
!304 = !{!202, !5, i64 40}
!305 = !{!202, !5, i64 44}
!306 = !{!94, !94, i64 0}
!307 = !{!143, !8, i64 48}
end_hunk_1
