Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/handshake?download=true
inline.NumInlined: 668
inline.NumDeleted: 440
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4bssl19ssl_add_message_cbbEP6ssl_stP6cbb_st:bb.a
  %i.l = invoke noundef zeroext i1 %i.g(ptr noundef nonnull %0, ptr noundef nonnull align 8 %3)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %3, align 8, !tbaa !142
  invoke void @OPENSSL_free(ptr noundef %i.m)
          to label %_ZN4bssl5ArrayIhED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #17
  unreachable

bb.g:                                             ; preds = %bb.c, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4bssl5ArrayIhED2Ev.exit13

bb.h:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %3, align 8, !tbaa !142
  invoke void @OPENSSL_free(ptr noundef %i.r)
          to label %_ZN4bssl5ArrayIhED2Ev.exit13 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #17
  unreachable

_ZN4bssl5ArrayIhED2Ev.exit:                       ; preds = %bb.e, %bb.b
  %.011 = phi i1 [ false, %bb.b ], [ %i.l, %bb.e ]
  %i.u = load ptr, ptr %2, align 8, !tbaa !142
  invoke void @OPENSSL_free(ptr noundef %i.u)
          to label %_ZN4bssl5ArrayIhED2Ev.exit14 unwind label %bb.j

bb.j:                                             ; preds = %_ZN4bssl5ArrayIhED2Ev.exit
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #17
  unreachable

_ZN4bssl5ArrayIhED2Ev.exit14:                     ; preds = %_ZN4bssl5ArrayIhED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret i1 %.011

_ZN4bssl5ArrayIhED2Ev.exit13:                     ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.q, %bb.h ]
  %i.x = load ptr, ptr %2, align 8, !tbaa !142
  invoke void @OPENSSL_free(ptr noundef %i.x)
          to label %_ZN4bssl5ArrayIhED2Ev.exit15 unwind label %bb.k

bb.k:                                             ; preds = %_ZN4bssl5ArrayIhED2Ev.exit13
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #17
  unreachable

_ZN4bssl5ArrayIhED2Ev.exit15:                     ; preds = %_ZN4bssl5ArrayIhED2Ev.exit13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i64 0, 4294967296) i64 @_ZN4bssl29ssl_max_handshake_message_lenEPK6ssl_st(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @SSL_in_init(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.c = load i8, ptr %i.b, align 4
  %i.d = trunc i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !249
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 268
  %i.h = load i8, ptr %i.g, align 4, !tbaa !255
  %i.i = and i8 %i.h, 1
  %.not9 = icmp eq i8 %i.i, 0
  br i1 %.not9, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load i32, ptr %i.j, align 8, !tbaa !273
  %narrow = tail call i32 @llvm.umax.i32(i32 %i.k, i32 16384)
  %spec.select = zext i32 %narrow to i64
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef %0)
  %i.m = icmp ult i16 %i.l, 772
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.o = load i8, ptr %i.n, align 4
  %i.p = trunc i8 %i.o to i1
  %. = select i1 %i.p, i64 1, i64 16384
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e, %bb.c
  %.1 = phi i64 [ 0, %bb.e ], [ 16384, %bb.c ], [ %., %bb.f ], [ %spec.select, %bb.d ]
  ret i64 %.1
}

declare i32 @SSL_in_init(ptr noundef) local_unnamed_addr #1

declare noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4bssl16ssl_hash_messageEPNS_13SSL_HANDSHAKEERKNS_10SSLMessageE(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !216, !range !150, !noundef !151
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !245
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !246
  %i.h = tail call noundef zeroext i1 @_ZN4bssl13SSLTranscript6UpdateENS_4SpanIKhEE(ptr noundef nonnull align 8 dereferenceable(44) %i.c, ptr %i.e, i64 %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.h, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN4bssl13SSLTranscript6UpdateENS_4SpanIKhEE(ptr noundef nonnull align 8 dereferenceable(44), ptr, i64) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4bssl20ssl_parse_extensionsEPK6cbs_stPhSt16initializer_listIPNS_12SSLExtensionEEb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree readonly captures(address) %2, i64 %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.cbs_st, align 8             ; 15 uses
  %i.a = alloca i16, align 2                      ; 15 uses
  %6 = alloca %struct.cbs_st, align 8             ; 14 uses
  %.fr = freeze i64 %3                            ; 2 uses
  %.idx = shl i64 %.fr, 3                         ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 3 uses
  %.not57 = icmp eq i64 %.fr, 0
  br i1 %.not57, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = add i64 %.idx, -8                        ; 2 uses
  %i.d = lshr exact i64 %i.c, 3
  %i.e = add nuw nsw i64 %i.d, 1
  %xtraiter = and i64 %i.e, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.03658.prol = phi ptr [ %i.i, %.lr.ph.prol ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.f = load ptr, ptr %.03658.prol, align 8, !tbaa !277 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  store i8 0, ptr %i.g, align 1, !tbaa !279
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.03658.prol, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !274

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.03658.unr = phi ptr [ %2, %.lr.ph.preheader ], [ %i.i, %.lr.ph.prol ]
  %i.j = icmp ult i64 %i.c, 56
  br i1 %i.j, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !281
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !246
  %.not3763 = icmp eq i64 %i.l, 0
  br i1 %.not3763, label %.loopexit, label %.lr.ph66.split.us

._crit_edge.thread:                               ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !281
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !246
  %.not3763103 = icmp eq i64 %i.n, 0
  br i1 %.not3763103, label %.loopexit, label %.lr.ph66.split

.lr.ph66.split.us:                                ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.o = call i32 @CBS_get_u16(ptr noundef nonnull %5, ptr noundef nonnull %i.a)
  %.not38.us.us88 = icmp eq i32 %i.o, 0
  br i1 %.not38.us.us88, label %.split.us, label %.lr.ph66.split.us.split.us, !llvm.loop !275

.lr.ph66.split.us.split.us:                       ; preds = %.lr.ph66.split.us
  br i1 %4, label %.lr.ph90, label %bb.c

bb.b:                                             ; preds = %.preheader.us.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.p = call i32 @CBS_get_u16(ptr noundef nonnull %5, ptr noundef nonnull %i.a)
  %.not38.us.us = icmp eq i32 %i.p, 0
  br i1 %.not38.us.us, label %.split.us, label %.lr.ph90

.lr.ph90:                                         ; preds = %.lr.ph66.split.us.split.us, %bb.b
  %i.q = call i32 @CBS_get_u16_length_prefixed(ptr noundef nonnull %5, ptr noundef nonnull %6)
  %.not39.us.us = icmp eq i32 %i.q, 0
  br i1 %.not39.us.us, label %.split.us, label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.lr.ph90
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.r = load i64, ptr %i.k, align 8, !tbaa !246
  %.not37.us.us = icmp eq i64 %i.r, 0
  br i1 %.not37.us.us, label %.loopexit, label %bb.b

bb.c:                                             ; preds = %.lr.ph66.split.us.split.us
  %i.s = call i32 @CBS_get_u16_length_prefixed(ptr noundef nonnull %5, ptr noundef nonnull %6)
  %.not39.us = icmp eq i32 %i.s, 0
  br i1 %.not39.us, label %.split.us, label %.split68.us

.lr.ph66.split:                                   ; preds = %._crit_edge.thread
  br i1 %4, label %.lr.ph66.split.split.us, label %.lr.ph66.split.split, !llvm.loop !275

.lr.ph66.split.split.us:                          ; preds = %.lr.ph66.split, %._crit_edge62.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.t = call i32 @CBS_get_u16(ptr noundef nonnull %5, ptr noundef nonnull %i.a)
  %.not38.us72 = icmp eq i32 %i.t, 0
  br i1 %.not38.us72, label %.split.us, label %bb.d

bb.d:                                             ; preds = %.lr.ph66.split.split.us
  %i.u = call i32 @CBS_get_u16_length_prefixed(ptr noundef nonnull %5, ptr noundef nonnull %6)
  %.not39.us73 = icmp eq i32 %i.u, 0
  br i1 %.not39.us73, label %.split.us, label %.preheader.us74

.preheader.us74:                                  ; preds = %bb.d
  %i.v = load i16, ptr %i.a, align 2, !tbaa !282
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.preheader.us74
  %.060.us = phi ptr [ %2, %.preheader.us74 ], [ %i.ac, %bb.g ] ; 2 uses
  %i.w = load ptr, ptr %.060.us, align 8, !tbaa !277 ; 4 uses
  %i.x = load i16, ptr %i.w, align 8, !tbaa !283
  %i.y = icmp eq i16 %i.v, %i.x
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !284, !range !150, !noundef !151
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.060.us, i64 8 ; 2 uses
  %.not40.us = icmp eq ptr %i.ac, %i.b
  br i1 %.not40.us, label %._crit_edge62.us, label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 3 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !279, !range !150, !noundef !151
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %.split79.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.ad, align 1, !tbaa !279
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !281
  br label %._crit_edge62.us

._crit_edge62.us:                                 ; preds = %bb.g, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.ah = load i64, ptr %i.m, align 8, !tbaa !246
  %.not37.us75 = icmp eq i64 %i.ah, 0
  br i1 %.not37.us75, label %.loopexit, label %.lr.ph66.split.split.us

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03658 = phi ptr [ %i.bn, %.lr.ph ], [ %.03658.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.ai = load ptr, ptr %.03658, align 8, !tbaa !277 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 3
  store i8 0, ptr %i.aj, align 1, !tbaa !279
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %.03658, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !277 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 3
  store i8 0, ptr %i.an, align 1, !tbaa !279
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.03658, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !277 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 3
  store i8 0, ptr %i.ar, align 1, !tbaa !279
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %.03658, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !277 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 3
  store i8 0, ptr %i.av, align 1, !tbaa !279
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.03658, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !277 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 3
  store i8 0, ptr %i.az, align 1, !tbaa !279
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.03658, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !277 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 3
  store i8 0, ptr %i.bd, align 1, !tbaa !279
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.03658, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !277 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 3
  store i8 0, ptr %i.bh, align 1, !tbaa !279
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.03658, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !277 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 3
  store i8 0, ptr %i.bl, align 1, !tbaa !279
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.03658, i64 64 ; 2 uses
  %.not.7 = icmp eq ptr %i.bn, %i.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  br i1 %.not.7, label %._crit_edge.thread, label %.lr.ph

.lr.ph66.split.split:                             ; preds = %.lr.ph66.split, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.bo = call i32 @CBS_get_u16(ptr noundef nonnull %5, ptr noundef nonnull %i.a)
  %.not38 = icmp eq i32 %i.bo, 0
  br i1 %.not38, label %.split.us, label %bb.j

bb.j:                                             ; preds = %.lr.ph66.split.split
  %i.bp = call i32 @CBS_get_u16_length_prefixed(ptr noundef nonnull %5, ptr noundef nonnull %6)
  %.not39 = icmp eq i32 %i.bp, 0
  br i1 %.not39, label %.split.us, label %.preheader

.preheader:                                       ; preds = %bb.j
  %i.bq = load i16, ptr %i.a, align 2, !tbaa !282
  br label %bb.k

.split.us:                                        ; preds = %bb.j, %.lr.ph66.split.split, %bb.d, %.lr.ph66.split.split.us, %bb.b, %.lr.ph90, %.lr.ph66.split.us, %bb.c
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 190, ptr noundef nonnull @.str, i32 noundef 190)
  br label %.thread50

bb.k:                                             ; preds = %.preheader, %bb.m
  %.060 = phi ptr [ %2, %.preheader ], [ %i.bx, %bb.m ] ; 2 uses
  %i.br = load ptr, ptr %.060, align 8, !tbaa !277 ; 4 uses
  %i.bs = load i16, ptr %i.br, align 8, !tbaa !283
  %i.bt = icmp eq i16 %i.bq, %i.bs
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  %i.bv = load i8, ptr %i.bu, align 2, !tbaa !284, !range !150, !noundef !151
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %.060, i64 8 ; 2 uses
  %.not40 = icmp eq ptr %i.bx, %i.b
  br i1 %.not40, label %.split68.us, label %bb.k

.split68.us:                                      ; preds = %bb.m, %bb.c
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 222, ptr noundef nonnull @.str, i32 noundef 207)
  %i.by = load i16, ptr %i.a, align 2, !tbaa !282
  %i.bz = zext i16 %i.by to i32
  call void (ptr, ...) @ERR_add_error_dataf(ptr noundef nonnull @.str.2, i32 noundef %i.bz)
  br label %.thread50

bb.n:                                             ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 3 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !279, !range !150, !noundef !151
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %.split79.us, label %bb.o

.split79.us:                                      ; preds = %bb.n, %bb.h
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 257, ptr noundef nonnull @.str, i32 noundef 215)
  br label %.thread50

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %i.ca, align 1, !tbaa !279
  %i.cd = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !281
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.ce = load i64, ptr %i.m, align 8, !tbaa !246
  %.not37 = icmp eq i64 %i.ce, 0
  br i1 %.not37, label %.loopexit, label %.lr.ph66.split.split

.thread50:                                        ; preds = %.split.us, %.split68.us, %.split79.us
  %.sink = phi i8 [ 50, %.split.us ], [ 110, %.split68.us ], [ 47, %.split79.us ]
  store i8 %.sink, ptr %1, align 1, !tbaa !257
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %._crit_edge62.us, %.preheader.us.us, %._crit_edge.thread, %._crit_edge, %.thread50
  %.not3755 = phi i1 [ false, %.thread50 ], [ true, %._crit_edge ], [ true, %.preheader.us.us ], [ true, %._crit_edge.thread ], [ true, %._crit_edge62.us ], [ true, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret i1 %.not3755
}

declare i32 @CBS_get_u16(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @CBS_get_u16_length_prefixed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4bssl20ssl_verify_peer_certEPNS_13SSL_HANDSHAKEE(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !136    ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !258
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 464
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !147  ; 5 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 136 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !152
  %i.i = tail call i64 @OPENSSL_sk_num(ptr noundef %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1552 ; 7 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !147
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !152
  %i.n = tail call i64 @OPENSSL_sk_num(ptr noundef %i.m)
  %.not65 = icmp eq i64 %i.i, %i.n
  br i1 %.not65, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !147
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !152
  %i.r = tail call i64 @OPENSSL_sk_num(ptr noundef %i.q)
  %.not6687.not = icmp eq i64 %i.r, 0
  br i1 %.not6687.not, label %.critedge68, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 273, ptr noundef nonnull @.str, i32 noundef 238)
  tail call void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef nonnull %i.b, i32 noundef 2, i32 noundef 47)
  br label %bb.w

.lr.ph:                                           ; preds = %.preheader, %.critedge
  %.05088 = phi i64 [ %i.ac, %.critedge ], [ 0, %.preheader ] ; 3 uses
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !152
  %i.t = tail call ptr @OPENSSL_sk_value(ptr noundef %i.s, i64 noundef %.05088) ; 2 uses
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !147
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 136
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !152
  %i.x = tail call ptr @OPENSSL_sk_value(ptr noundef %i.w, i64 noundef %.05088) ; 2 uses
  %i.y = tail call ptr @CRYPTO_BUFFER_data(ptr noundef %i.t)
  %i.z = tail call i64 @CRYPTO_BUFFER_len(ptr noundef %i.t) ; 3 uses
  %i.aa = tail call ptr @CRYPTO_BUFFER_data(ptr noundef %i.x)
  %i.ab = tail call i64 @CRYPTO_BUFFER_len(ptr noundef %i.x)
  %.not.i.i.i.i = icmp eq i64 %i.z, %i.ab
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN4bssl8internalneENS_4SpanIKhEES3_.exit.thread

bb.d:                                             ; preds = %.lr.ph
  %.not.not.i.i.i.i.i.i.i.i = icmp samesign eq i64 %i.z, 0
  br i1 %.not.not.i.i.i.i.i.i.i.i, label %.critedge, label %_ZN4bssl8internalneENS_4SpanIKhEES3_.exit

_ZN4bssl8internalneENS_4SpanIKhEES3_.exit:        ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.y, ptr %i.aa, i64 %i.z)
  %.not9.i.i.i.i.i.i.i.i.not = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i.i.i.not, label %.critedge, label %_ZN4bssl8internalneENS_4SpanIKhEES3_.exit.thread

_ZN4bssl8internalneENS_4SpanIKhEES3_.exit.thread: ; preds = %.lr.ph, %_ZN4bssl8internalneENS_4SpanIKhEES3_.exit
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 273, ptr noundef nonnull @.str, i32 noundef 251)
  tail call void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef %i.b, i32 noundef 2, i32 noundef 47)
  br label %bb.w

.critedge:                                        ; preds = %bb.d, %_ZN4bssl8internalneENS_4SpanIKhEES3_.exit
  %i.ac = add nuw i64 %.05088, 1                  ; 2 uses
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !147
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 136
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !152
  %i.ag = tail call i64 @OPENSSL_sk_num(ptr noundef %i.af)
  %.not66 = icmp ult i64 %i.ac, %i.ag
  br i1 %.not66, label %.lr.ph, label %.critedge68, !llvm.loop !285

.critedge68:                                      ; preds = %.critedge, %.preheader
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !295, !noalias !296 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %_ZN4bssl5UpRefERKSt10unique_ptrI16crypto_buffer_stNS_8internal7DeleterEE.exit, label %.split4.i.i

.split4.i.i:                                      ; preds = %.critedge68
  %i.aj = tail call i32 @CRYPTO_BUFFER_up_ref(ptr noundef nonnull %i.ai), !noalias !297 ; 0 uses
  br label %_ZN4bssl5UpRefERKSt10unique_ptrI16crypto_buffer_stNS_8internal7DeleterEE.exit

_ZN4bssl5UpRefERKSt10unique_ptrI16crypto_buffer_stNS_8internal7DeleterEE.exit: ; preds = %.critedge68, %.split4.i.i
  %i.ak = load ptr, ptr %i.j, align 8, !tbaa !147
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 256 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !295 ; 2 uses
  store ptr %i.ai, ptr %i.al, align 8, !tbaa !295
  %.not.i.i.i.i69 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i69, label %_ZNSt10unique_ptrI16crypto_buffer_stN4bssl8internal7DeleterEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4bssl5UpRefERKSt10unique_ptrI16crypto_buffer_stNS_8internal7DeleterEE.exit
  invoke void @CRYPTO_BUFFER_free(ptr noundef nonnull %i.am)
          to label %_ZNSt10unique_ptrI16crypto_buffer_stN4bssl8internal7DeleterEED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #17
  unreachable

_ZNSt10unique_ptrI16crypto_buffer_stN4bssl8internal7DeleterEED2Ev.exit: ; preds = %bb.e, %_ZN4bssl5UpRefERKSt10unique_ptrI16crypto_buffer_stNS_8internal7DeleterEE.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !295, !noalias !298 ; 3 uses
  %.not.i.i70 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i70, label %_ZN4bssl5UpRefERKSt10unique_ptrI16crypto_buffer_stNS_8internal7DeleterEE.exit72, label %.split4.i.i71

.split4.i.i71:                                    ; preds = %_ZNSt10unique_ptrI16crypto_buffer_stN4bssl8internal7DeleterEED2Ev.exit
  %i.ar = tail call i32 @CRYPTO_BUFFER_up_ref(ptr noundef nonnull %i.aq), !noalias !299 ; 0 uses
  br label %_ZN4bssl5UpRefERKSt10unique_ptrI16crypto_buffer_stNS_8internal7DeleterEE.exit72

_ZN4bssl5UpRefERKSt10unique_ptrI16crypto_buffer_stNS_8internal7DeleterEE.exit72: ; preds = %_ZNSt10unique_ptrI16crypto_buffer_stN4bssl8internal7DeleterEED2Ev.exit, %.split4.i.i71
  %i.as = load ptr, ptr %i.j, align 8, !tbaa !147 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 248 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !295 ; 2 uses
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !295
  %.not.i.i.i.i73 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i73, label %_ZNSt10unique_ptrI16crypto_buffer_stN4bssl8internal7DeleterEED2Ev.exit76, label %bb.g

bb.g:                                             ; preds = %_ZN4bssl5UpRefERKSt10unique_ptrI16crypto_buffer_stNS_8internal7DeleterEE.exit72
  invoke void @CRYPTO_BUFFER_free(ptr noundef nonnull %i.au)
          to label %._ZNSt10unique_ptrI16crypto_buffer_stN4bssl8internal7DeleterEED2Ev.exit76_crit_edge unwind label %bb.h

._ZNSt10unique_ptrI16crypto_buffer_stN4bssl8internal7DeleterEED2Ev.exit76_crit_edge: ; preds = %bb.g
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !147
  br label %_ZNSt10unique_ptrI16crypto_buffer_stN4bssl8internal7DeleterEED2Ev.exit76

bb.h:                                             ; preds = %bb.g
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  tail call void @__clang_call_terminate(ptr %i.aw) #17
end_hunk_0
