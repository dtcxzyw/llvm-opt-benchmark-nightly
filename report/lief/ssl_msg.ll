Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/ssl_msg?download=true
inline.NumInlined: 166
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@mbedtls_ssl_recv_flight_completed:bb.a
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !110
  %i.x = load i8, ptr %i.w, align 1, !tbaa !34
  %i.y = icmp eq i8 %i.x, 20
  br i1 %i.y, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %mbedtls_ssl_set_timer.exit
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi i8 [ 0, %bb.d ], [ 3, %bb.c ]
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 13
  store i8 %.sink, ptr %i.aa, align 1, !tbaa !94
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @mbedtls_ssl_buffering_free(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1336 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !111  ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %ssl_free_buffered_record.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1224 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1344
  %i.h = load i64, ptr %i.g, align 8, !tbaa !112
  %i.i = load i64, ptr %i.f, align 8, !tbaa !113
  %i.j = sub i64 %i.i, %i.h
  store i64 %i.j, ptr %i.f, align 8, !tbaa !113
  tail call void @free(ptr noundef nonnull %i.e) #19
  store ptr null, ptr %i.d, align 8, !tbaa !111
  %.val6.pre = load ptr, ptr %i.a, align 8, !tbaa !66
  br label %ssl_free_buffered_record.exit

ssl_free_buffered_record.exit:                    ; preds = %bb.b, %bb.c
  %.val6 = phi ptr [ %i.b, %bb.b ], [ %.val6.pre, %bb.c ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val6, i64 1240 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8
  %i.m = and i8 %i.l, 1
  %.not.i7 = icmp eq i8 %i.m, 0
  br i1 %.not.i7, label %ssl_buffering_free_slot.exit, label %bb.d

bb.d:                                             ; preds = %ssl_free_buffered_record.exit
  %i.n = getelementptr inbounds nuw i8, ptr %.val6, i64 1224 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val6, i64 1256
  %i.p = load i64, ptr %i.o, align 8, !tbaa !115  ; 2 uses
  %i.q = load i64, ptr %i.n, align 8, !tbaa !113
  %i.r = sub i64 %i.q, %i.p
  store i64 %i.r, ptr %i.n, align 8, !tbaa !113
  %i.s = getelementptr inbounds nuw i8, ptr %.val6, i64 1248
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !116
  tail call void @mbedtls_zeroize_and_free(ptr noundef %i.t, i64 noundef %i.p) #19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %.val6.1.pre = load ptr, ptr %i.a, align 8, !tbaa !66
  br label %ssl_buffering_free_slot.exit

ssl_buffering_free_slot.exit:                     ; preds = %ssl_free_buffered_record.exit, %bb.d
  %.val6.1 = phi ptr [ %.val6, %ssl_free_buffered_record.exit ], [ %.val6.1.pre, %bb.d ] ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val6.1, i64 1264 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8
  %i.w = and i8 %i.v, 1
  %.not.i7.1 = icmp eq i8 %i.w, 0
  br i1 %.not.i7.1, label %ssl_buffering_free_slot.exit.1, label %bb.e

bb.e:                                             ; preds = %ssl_buffering_free_slot.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.val6.1, i64 1224 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val6.1, i64 1280
  %i.z = load i64, ptr %i.y, align 8, !tbaa !115  ; 2 uses
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !113
  %i.ab = sub i64 %i.aa, %i.z
  store i64 %i.ab, ptr %i.x, align 8, !tbaa !113
  %i.ac = getelementptr inbounds nuw i8, ptr %.val6.1, i64 1272
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !116
  tail call void @mbedtls_zeroize_and_free(ptr noundef %i.ad, i64 noundef %i.z) #19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %.val6.2.pre = load ptr, ptr %i.a, align 8, !tbaa !66
  br label %ssl_buffering_free_slot.exit.1

ssl_buffering_free_slot.exit.1:                   ; preds = %bb.e, %ssl_buffering_free_slot.exit
  %.val6.2 = phi ptr [ %.val6.2.pre, %bb.e ], [ %.val6.1, %ssl_buffering_free_slot.exit ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val6.2, i64 1288 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8
  %i.ag = and i8 %i.af, 1
  %.not.i7.2 = icmp eq i8 %i.ag, 0
  br i1 %.not.i7.2, label %ssl_buffering_free_slot.exit.2, label %bb.f

bb.f:                                             ; preds = %ssl_buffering_free_slot.exit.1
  %i.ah = getelementptr inbounds nuw i8, ptr %.val6.2, i64 1224 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val6.2, i64 1304
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !115 ; 2 uses
  %i.ak = load i64, ptr %i.ah, align 8, !tbaa !113
  %i.al = sub i64 %i.ak, %i.aj
  store i64 %i.al, ptr %i.ah, align 8, !tbaa !113
  %i.am = getelementptr inbounds nuw i8, ptr %.val6.2, i64 1296
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !116
  tail call void @mbedtls_zeroize_and_free(ptr noundef %i.an, i64 noundef %i.aj) #19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  %.val6.3.pre = load ptr, ptr %i.a, align 8, !tbaa !66
  br label %ssl_buffering_free_slot.exit.2

ssl_buffering_free_slot.exit.2:                   ; preds = %bb.f, %ssl_buffering_free_slot.exit.1
  %.val6.3 = phi ptr [ %.val6.3.pre, %bb.f ], [ %.val6.2, %ssl_buffering_free_slot.exit.1 ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val6.3, i64 1312 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8
  %i.aq = and i8 %i.ap, 1
  %.not.i7.3 = icmp eq i8 %i.aq, 0
  br i1 %.not.i7.3, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %ssl_buffering_free_slot.exit.2
  %i.ar = getelementptr inbounds nuw i8, ptr %.val6.3, i64 1224 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val6.3, i64 1328
  %i.at = load i64, ptr %i.as, align 8, !tbaa !115 ; 2 uses
  %i.au = load i64, ptr %i.ar, align 8, !tbaa !113
  %i.av = sub i64 %i.au, %i.at
  store i64 %i.av, ptr %i.ar, align 8, !tbaa !113
  %i.aw = getelementptr inbounds nuw i8, ptr %.val6.3, i64 1320
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !116
  tail call void @mbedtls_zeroize_and_free(ptr noundef %i.ax, i64 noundef %i.at) #19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %ssl_buffering_free_slot.exit.2, %bb.g, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @mbedtls_ssl_send_flight_completed(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !22
  %i.a = getelementptr i8, ptr %0, i64 112        ; 2 uses
  %.val7 = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.b = getelementptr i8, ptr %.val, i64 284
  %.val.val = load i32, ptr %i.b, align 4, !tbaa !77 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val7, i64 1380
  store i32 %.val.val, ptr %i.c, align 4, !tbaa !76
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %mbedtls_ssl_set_timer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.i = lshr i32 %.val.val, 2
  tail call void %i.e(ptr noundef %i.h, i32 noundef %i.i, i32 noundef %.val.val) #19, !inline_history !68
  br label %mbedtls_ssl_set_timer.exit

mbedtls_ssl_set_timer.exit:                       ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.k = load i32, ptr %i.j, align 8, !tbaa !109
  %i.l = icmp eq i32 %i.k, 22
  br i1 %i.l, label %bb.c, label %mbedtls_ssl_set_timer.exit._crit_edge

bb.c:                                             ; preds = %mbedtls_ssl_set_timer.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !110
  %i.o = load i8, ptr %i.n, align 1, !tbaa !34
  %i.p = icmp eq i8 %i.o, 20
  %spec.select = select i1 %i.p, i8 3, i8 2
  br label %mbedtls_ssl_set_timer.exit._crit_edge

mbedtls_ssl_set_timer.exit._crit_edge:            ; preds = %mbedtls_ssl_set_timer.exit, %bb.c
  %.sink = phi i8 [ %spec.select, %bb.c ], [ 2, %mbedtls_ssl_set_timer.exit ]
  %.sink10 = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.q = getelementptr inbounds nuw i8, ptr %.sink10, i64 13
  store i8 %.sink, ptr %i.q, align 1, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @mbedtls_ssl_start_handshake_msg(ptr nofree noundef captures(none) initializes((400, 404)) %0, i8 noundef zeroext %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.c, ptr %2, align 8, !tbaa !117
  store i64 16380, ptr %3, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i32 22, ptr %i.d, align 8, !tbaa !100
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !90
  store i8 %1, ptr %i.e, align 1, !tbaa !34
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_ssl_write_handshake_msg_ext(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !99   ; 3 uses
  %i.c = add nsw i64 %i.b, -4                     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 10 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !90   ; 2 uses
  %3 = load i8, ptr %i.e, align 1, !tbaa !34      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !100  ; 2 uses
  switch i32 %i.g, label %ssl_flight_append.exit [
    i32 22, label %bb.b
    i32 20, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.h = icmp eq i32 %i.g, 22                     ; 2 uses
  %i.i = icmp eq i8 %3, 0                         ; 3 uses
  %or.cond = select i1 %i.h, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !66
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %ssl_flight_append.exit, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 9
  %i.o = load i8, ptr %i.n, align 1, !tbaa !32
  %i.p = icmp eq i8 %i.o, 1
  br i1 %i.p, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !66   ; 2 uses
  %.not62 = icmp eq ptr %i.r, null
  br i1 %.not62, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 13
  %i.t = load i8, ptr %i.s, align 1, !tbaa !94
  %i.u = icmp eq i8 %i.t, 1
  %i.v = icmp ugt i64 %i.b, 16384
  %or.cond69 = select i1 %i.u, i1 true, i1 %i.v
  br i1 %or.cond69, label %ssl_flight_append.exit, label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d
  %.old = icmp ugt i64 %i.b, 16384
  br i1 %.old, label %ssl_flight_append.exit, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  br i1 %i.h, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.w = lshr i64 %i.c, 16
  %i.x = trunc i64 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 %i.x, ptr %i.y, align 1, !tbaa !34
  %i.z = lshr i64 %i.c, 8
  %i.aa = trunc i64 %i.z to i8
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  store i8 %i.aa, ptr %i.ac, align 1, !tbaa !34
  %i.ad = trunc i64 %i.c to i8
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 3
  store i8 %i.ad, ptr %i.af, align 1, !tbaa !34
  %i.ag = load ptr, ptr %0, align 8, !tbaa !22
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 9
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !32
  %i.aj = icmp eq i8 %i.ai, 1
  br i1 %i.aj, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !99
  %i.al = add i64 %i.ak, -16377
  %i.am = icmp ult i64 %i.al, 8
  br i1 %i.am, label %ssl_flight_append.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !90  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr nonnull align 1 %i.ap, i64 %i.c, i1 false)
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !99
  %i.ar = add i64 %i.aq, 8
  store i64 %i.ar, ptr %i.a, align 8, !tbaa !99
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 2 uses
  br i1 %i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !66
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1372
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !167
  %i.ay = trunc i32 %i.ax to i16
  %i.az = tail call i16 @llvm.bswap.i16(i16 %i.ay)
  store i16 %i.az, ptr %i.at, align 1
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !66
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1372 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !167
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !167
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  store i8 0, ptr %i.at, align 1, !tbaa !34
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 5
  store i8 0, ptr %i.bf, align 1, !tbaa !34
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bg = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bh, i8 0, i64 3, i1 false)
  %i.bi = load ptr, ptr %i.d, align 8, !tbaa !90  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 9
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bj, ptr noundef nonnull align 1 dereferenceable(3) %i.bk, i64 3, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.i
  %4 = icmp ne i8 %3, 0
  %5 = icmp ne i32 %1, 0
  %or.cond4 = and i1 %5, %4
  br i1 %or.cond4, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !66
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !118
  %i.bp = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.bq = load i64, ptr %i.a, align 8, !tbaa !99
  %i.br = tail call i32 %i.bo(ptr noundef nonnull %0, ptr noundef %i.bp, i64 noundef %i.bq) #19 ; 2 uses
  %.not64 = icmp eq i32 %i.br, 0
  br i1 %.not64, label %bb.q, label %ssl_flight_append.exit

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.h
  %i.bs = load ptr, ptr %0, align 8, !tbaa !22
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 9
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !32
  %i.bv = icmp eq i8 %i.bu, 1
  br i1 %i.bv, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.bw = load i32, ptr %i.f, align 8, !tbaa !100 ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 22
  %or.cond7 = select i1 %i.bx, i1 %i.i, i1 false
  br i1 %or.cond7, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #20 ; 7 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %ssl_flight_append.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !99  ; 3 uses
  %i.cb = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.ca) #20 ; 3 uses
  store ptr %i.cb, ptr %i.by, align 8, !tbaa !93
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.by) #19
  br label %ssl_flight_append.exit

bb.v:                                             ; preds = %bb.t
  %i.cd = load ptr, ptr %i.d, align 8, !tbaa !90
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cb, ptr align 1 %i.cd, i64 %i.ca, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i64 %i.ca, ptr %i.ce, align 8, !tbaa !98
  %i.cf = trunc i32 %i.bw to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store i8 %i.cf, ptr %i.cg, align 8, !tbaa !96
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !66
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1384 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !95 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.w, label %.preheader.i

bb.w:                                             ; preds = %bb.v
  store ptr %i.by, ptr %i.cj, align 8, !tbaa !95
  br label %ssl_flight_append.exit.thread

.preheader.i:                                     ; preds = %bb.v, %.preheader.i
  %.0.i = phi ptr [ %i.cn, %.preheader.i ], [ %i.ck, %bb.v ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !92 ; 2 uses
  %.not.i = icmp eq ptr %i.cn, null
  br i1 %.not.i, label %bb.x, label %.preheader.i, !llvm.loop !166

bb.x:                                             ; preds = %.preheader.i
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store ptr %i.by, ptr %i.co, align 8, !tbaa !92
  br label %ssl_flight_append.exit.thread

bb.y:                                             ; preds = %bb.r, %bb.q
  %i.cp = tail call i32 @mbedtls_ssl_write_record(ptr noundef nonnull %0, i32 noundef %2) ; 2 uses
  %.not66 = icmp eq i32 %i.cp, 0
  br i1 %.not66, label %ssl_flight_append.exit.thread, label %ssl_flight_append.exit

ssl_flight_append.exit.thread:                    ; preds = %bb.x, %bb.w, %bb.y
  br label %ssl_flight_append.exit

ssl_flight_append.exit:                           ; preds = %bb.u, %bb.s, %bb.y, %bb.p, %bb.j, %bb.g, %bb.f, %bb.c, %bb.a, %ssl_flight_append.exit.thread
  %.0 = phi i32 [ -27648, %bb.a ], [ -27648, %bb.c ], [ -27648, %bb.f ], [ -27648, %bb.g ], [ -135, %bb.j ], [ %i.cp, %bb.y ], [ 0, %ssl_flight_append.exit.thread ], [ %i.br, %bb.p ], [ -141, %bb.s ], [ -141, %bb.u ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_ssl_finish_handshake_msg(ptr noundef initializes((408, 416)) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %2, 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i64 %i.a, ptr %i.b, align 8, !tbaa !99
  %i.c = tail call i32 @mbedtls_ssl_write_handshake_msg_ext(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @mbedtls_ssl_write_version(ptr nofree noundef writeonly captures(none) initializes((0, 2)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp eq i32 %1, 1
  %i.b = icmp eq i32 %2, 770
  %i.c = select i1 %i.b, i32 513, i32 512
  %i.d = sub i32 %i.c, %2
  %.0.in = select i1 %i.a, i32 %i.d, i32 %2
  %.0 = trunc i32 %.0.in to i16
  %i.e = tail call i16 @llvm.bswap.i16(i16 %.0)
  store i16 %i.e, ptr %0, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_ssl_prepare_handshake_record(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !119  ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  br i1 %i.c, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 9
  %.pre107 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !32
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = load i64, ptr %i.d, align 8, !tbaa !120
  %i.f = getelementptr i8, ptr %.pre, i64 9
  %.val82.val = load i8, ptr %i.f, align 1, !tbaa !32 ; 2 uses
  %i.g = icmp eq i8 %.val82.val, 1
  %..i = select i1 %i.g, i64 12, i64 4            ; 2 uses
  %i.h = icmp ult i64 %i.e, %..i
  br i1 %i.h, label %.thread104, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %0, i64 232
  %.val83 = load ptr, ptr %i.i, align 8, !tbaa !110 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val83, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !34
  %i.l = zext i8 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 16
  %i.n = getelementptr inbounds nuw i8, ptr %.val83, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !34
  %i.p = zext i8 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 8
  %i.r = or disjoint i64 %i.q, %i.m
  %i.s = getelementptr inbounds nuw i8, ptr %.val83, i64 3
  %i.t = load i8, ptr %i.s, align 1, !tbaa !34
  %i.u = zext i8 %i.t to i64
  %i.v = or disjoint i64 %i.r, %i.u
  %i.w = add nuw nsw i64 %i.v, %..i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i64 %i.w, ptr %i.x, align 8, !tbaa !121
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %i.y = phi i8 [ %.pre107, %._crit_edge ], [ %.val82.val, %bb.c ]
  %i.z = icmp eq i8 %i.y, 1
  br i1 %i.z, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !110 ; 12 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %.0.copyload.i = load i16, ptr %i.ac, align 1
  %i.ad = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i)
  %i.ae = zext i16 %i.ad to i32                   ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !34
  %i.ah = zext i8 %i.ag to i32
  %i.ai = shl nuw nsw i32 %i.ah, 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !34
  %i.al = zext i8 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 8
  %i.an = or disjoint i32 %i.am, %i.ai
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !34
  %i.aq = zext i8 %i.ap to i32
  %i.ar = or disjoint i32 %i.an, %i.aq            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 6 ; 3 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !34
  %i.au = zext i8 %i.at to i32
  %i.av = shl nuw nsw i32 %i.au, 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 7
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !34
  %i.ay = zext i8 %i.ax to i32
  %i.az = shl nuw nsw i32 %i.ay, 8
  %i.ba = or disjoint i32 %i.az, %i.av
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !34
  %i.bd = zext i8 %i.bc to i32
  %i.be = or disjoint i32 %i.ba, %i.bd            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ab, i64 9 ; 3 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !34
  %i.bh = zext i8 %i.bg to i32
  %i.bi = shl nuw nsw i32 %i.bh, 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ab, i64 10
end_hunk_0
