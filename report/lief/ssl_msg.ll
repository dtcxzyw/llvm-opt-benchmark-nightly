Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/ssl_msg?download=true
inline.NumInlined: 166
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@mbedtls_ssl_flight_transmit:bb.a
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lc, i64 105
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !58
  %i.lj = zext i8 %i.li to i64
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.lj ; 2 uses
  store ptr %i.lk, ptr %i.lg, align 8, !tbaa !88
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.ll = phi ptr [ %i.lk, %bb.bp ], [ %i.lf, %bb.bo ]
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 2
  br label %bb.bs

bb.br:                                            ; preds = %bb.bn
  %i.ln = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  store ptr %i.ln, ptr %i.kg, align 8, !tbaa !83
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !85
  %i.lq = getelementptr inbounds nuw i8, ptr %i.kz, i64 11 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr %i.lq, ptr %i.lr, align 8, !tbaa !88
  store ptr %i.lq, ptr %i.la, align 8, !tbaa !87
  %i.ls = getelementptr inbounds nuw i8, ptr %i.kz, i64 13
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.lt = phi ptr [ %i.lp, %bb.br ], [ %i.lc, %bb.bq ] ; 3 uses
  %.sink.i.i159 = phi ptr [ %i.ls, %bb.br ], [ %i.lm, %bb.bq ] ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 384
  store ptr %.sink.i.i159, ptr %i.lu, align 8, !tbaa !89
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  store ptr %.sink.i.i159, ptr %i.lv, align 8, !tbaa !90
  %.not23.i.i160 = icmp eq ptr %i.lt, null
  br i1 %.not23.i.i160, label %mbedtls_ssl_flush_output.exit165.thread, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.lw = getelementptr i8, ptr %i.lt, i64 8
  %.val.i.i161 = load i64, ptr %i.lw, align 8, !tbaa !46
  %i.lx = getelementptr i8, ptr %i.lt, i64 16
  %.val24.i.i162 = load i64, ptr %i.lx, align 8, !tbaa !47
  %i.ly = sub i64 %.val.i.i161, %.val24.i.i162
  %i.lz = getelementptr inbounds nuw i8, ptr %.sink.i.i159, i64 %i.ly
  store ptr %i.lz, ptr %i.lv, align 8, !tbaa !90
  br label %mbedtls_ssl_flush_output.exit165.thread

mbedtls_ssl_flush_output.exit165:                 ; preds = %bb.bk
  %.not119 = icmp eq i32 %i.ko, 0
  br i1 %.not119, label %mbedtls_ssl_flush_output.exit165.thread, label %mbedtls_ssl_set_timer.exit

mbedtls_ssl_flush_output.exit165.thread:          ; preds = %bb.bt, %bb.bj, %bb.bs, %mbedtls_ssl_flush_output.exit165
  %i.ma = getelementptr i8, ptr %0, i64 8
  %.val = load i32, ptr %i.ma, align 8, !tbaa !65
  %i.mb = icmp slt i32 %.val, 27
  %i.mc = load ptr, ptr %i.a, align 8, !tbaa !66  ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 13 ; 2 uses
  br i1 %i.mb, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %mbedtls_ssl_flush_output.exit165.thread
  store i8 3, ptr %i.md, align 1, !tbaa !94
  br label %mbedtls_ssl_set_timer.exit

bb.bv:                                            ; preds = %mbedtls_ssl_flush_output.exit165.thread
  store i8 2, ptr %i.md, align 1, !tbaa !94
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !19 ; 2 uses
  %i.mg = icmp eq ptr %i.mf, null
  br i1 %i.mg, label %mbedtls_ssl_set_timer.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mc, i64 1380
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !76 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !20
  %i.ml = lshr i32 %i.mi, 2
  tail call void %i.mf(ptr noundef %i.mk, i32 noundef %i.ml, i32 noundef %i.mi) #19, !inline_history !68
  br label %mbedtls_ssl_set_timer.exit

mbedtls_ssl_set_timer.exit:                       ; preds = %ssl_swap_epochs.exit147, %bb.x, %ssl_swap_epochs.exit135, %mbedtls_ssl_flush_output.exit, %bb.bi, %bb.bd, %bb.av, %bb.z, %bb.bl, %._crit_edge, %bb.bw, %bb.bv, %bb.bu, %mbedtls_ssl_flush_output.exit165
  %.4 = phi i32 [ %i.ko, %mbedtls_ssl_flush_output.exit165 ], [ 0, %bb.bw ], [ 0, %bb.bu ], [ -27648, %bb.bl ], [ 0, %bb.bv ], [ -27648, %bb.av ], [ -27648, %bb.z ], [ -135, %._crit_edge ], [ -135, %ssl_swap_epochs.exit147 ], [ -135, %bb.x ], [ %i.ha, %bb.bd ], [ %i.js, %bb.bi ], [ %i.ds, %mbedtls_ssl_flush_output.exit ], [ %i.dc, %ssl_swap_epochs.exit135 ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 16385) i32 @ssl_get_remaining_payload_in_datagram(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.psa_key_attributes_s, align 4 ; 6 uses
  %i.a = tail call i64 @mbedtls_ssl_get_output_max_frag_len(ptr noundef %0) #19
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.a, i64 16384) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.c = load i64, ptr %i.b, align 8, !tbaa !82   ; 4 uses
  %.not = icmp ugt i64 %spec.select, %i.c
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw nsw i64 %spec.select, %i.c
  %i.e = tail call i64 @mbedtls_ssl_get_current_mtu(ptr noundef nonnull %0) #19 ; 2 uses
  %i.f = add i64 %i.e, -1
  %or.cond.i.i = icmp ult i64 %i.f, 16764
  %.0.i.i = select i1 %or.cond.i.i, i64 %i.e, i64 16765 ; 2 uses
  %i.g = icmp ugt i64 %i.c, %.0.i.i
  %i.h = sub nuw nsw i64 %.0.i.i, %i.c
  %i.i = trunc nuw nsw i64 %i.h to i32
  %.0.i = select i1 %i.g, i32 -27648, i32 %i.i    ; 4 uses
  %i.j = icmp slt i32 %.0.i, 0
  br i1 %i.j, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !85   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.m = getelementptr i8, ptr %0, i64 360
  %.val.i = load ptr, ptr %i.m, align 8, !tbaa !83
  %i.n = getelementptr i8, ptr %0, i64 384
  %.val27.i = load ptr, ptr %i.n, align 8, !tbaa !89
  %i.o = ptrtoint ptr %.val27.i to i64
  %i.p = ptrtoint ptr %.val.i to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = icmp eq ptr %i.l, null
  br i1 %i.r, label %mbedtls_ssl_get_record_expansion.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 100
  %i.t = load i32, ptr %i.s, align 4, !tbaa !51
  switch i32 %i.t, label %mbedtls_ssl_get_record_expansion.exit.thread [
    i32 89129472, label %bb.e
    i32 89129216, label %bb.e
    i32 88604928, label %bb.e
    i32 84935936, label %bb.e
    i32 67108864, label %bb.e
    i32 71319552, label %bb.f
  ]

mbedtls_ssl_get_record_expansion.exit.thread:     ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.j

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %i.u = load i64, ptr %i.l, align 8, !tbaa !101
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 92
  %i.w = load i32, ptr %i.v, align 4, !tbaa !60
  %i.x = call i32 @psa_get_key_attributes(i32 noundef %i.w, ptr noundef nonnull %1) #19 ; 0 uses
  %.val28.i = load i16, ptr %1, align 4, !tbaa !104
  %i.y = zext i16 %.val28.i to i32                ; 2 uses
  %i.z = and i32 %i.y, 28672
  %i.aa = icmp eq i32 %i.z, 8192
  %i.ab = lshr i32 %i.y, 8
  %i.ac = and i32 %i.ab, 7
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !53
  %i.af = shl nuw nsw i32 2, %i.ac
  %i.ag = select i1 %i.aa, i32 %i.af, i32 0
  %reass.add.i = zext nneg i32 %i.ag to i64
  %i.ah = add i64 %i.ae, %reass.add.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i38 = phi i64 [ %i.u, %bb.e ], [ %i.ah, %bb.f ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 105
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !58
  %.not.i = icmp eq i8 %i.aj, 0
  %i.ak = add i64 %.0.i38, 16
  %spec.select.i = select i1 %.not.i, i64 %.0.i38, i64 %i.ak
  %i.al = add i64 %spec.select.i, %i.q
  br label %mbedtls_ssl_get_record_expansion.exit

mbedtls_ssl_get_record_expansion.exit:            ; preds = %bb.c, %bb.g
  %.024.i.in = phi i64 [ %i.al, %bb.g ], [ %i.q, %bb.c ]
  %.024.i = trunc i64 %.024.i.in to i32           ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.am = icmp slt i32 %.024.i, 0
  br i1 %i.am, label %bb.j, label %bb.h

bb.h:                                             ; preds = %mbedtls_ssl_get_record_expansion.exit
  %.not35 = icmp samesign ugt i32 %.0.i, %.024.i
  br i1 %.not35, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %narrow = sub nuw nsw i32 %.0.i, %.024.i
  %i.an = zext nneg i32 %narrow to i64
  %spec.select3740 = call i64 @llvm.umin.i64(i64 %i.d, i64 %i.an)
  %spec.select37 = trunc nuw nsw i64 %spec.select3740 to i32
  br label %bb.j

bb.j:                                             ; preds = %mbedtls_ssl_get_record_expansion.exit.thread, %bb.h, %mbedtls_ssl_get_record_expansion.exit, %bb.b, %bb.a, %bb.i
  %.025 = phi i32 [ %spec.select37, %bb.i ], [ 0, %bb.a ], [ %.0.i, %bb.b ], [ %.024.i, %mbedtls_ssl_get_record_expansion.exit ], [ 0, %bb.h ], [ -27648, %mbedtls_ssl_get_record_expansion.exit.thread ]
  ret i32 %.025
}

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_ssl_write_record(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.mbedtls_record, align 8     ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !99   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !105  ; 2 uses
  %i.e = icmp eq i32 %i.d, 772
  %spec.store.select = select i1 %i.e, i32 771, i32 %i.d ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load ptr, ptr %0, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  %i.k = load i8, ptr %i.j, align 1, !tbaa !32
  %i.l = icmp eq i8 %i.k, 1
  %i.m = icmp eq i32 %spec.store.select, 770
  %3 = select i1 %i.m, i32 513, i32 512
  %4 = sub i32 %3, %spec.store.select             ; 2 uses
  %.0.in.i = select i1 %i.l, i32 %4, i32 %spec.store.select
  %.0.i = trunc i32 %.0.in.i to i16
  %i.n = tail call i16 @llvm.bswap.i16(i16 %.0.i)
  store i16 %i.n, ptr %i.h, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !86
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8
  store i64 %i.r, ptr %i.p, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 8 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !88
  %i.u = trunc i64 %i.b to i16
  %i.v = tail call i16 @llvm.bswap.i16(i16 %i.u)
  store i16 %i.v, ptr %i.t, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !85   ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !89   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !41
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !84
  %i.ad = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %reass.sub = sub i64 %i.ae, %i.ad
  %i.af = add i64 %reass.sub, 16765
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !42
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !99
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !40
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !90
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.ad
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store i64 %i.am, ptr %i.an, align 8, !tbaa !39
  %i.ao = load ptr, ptr %i.o, align 8, !tbaa !86
  %i.ap = load i64, ptr %i.ao, align 1
  store i64 %i.ap, ptr %2, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.ar = load ptr, ptr %0, align 8, !tbaa !22
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 9
  %i.at = load i8, ptr %i.as, align 1, !tbaa !32
  %i.au = icmp eq i8 %i.at, 1
  %.0.in.i92 = select i1 %i.au, i32 %4, i32 %spec.store.select
  %.0.i93 = trunc i32 %.0.in.i92 to i16
  %i.av = tail call i16 @llvm.bswap.i16(i16 %.0.i93)
  store i16 %i.av, ptr %i.aq, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !100
  %i.ay = trunc i32 %i.ax to i8
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i8 %i.ay, ptr %i.az, align 8, !tbaa !36
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store i8 0, ptr %i.ba, align 8, !tbaa !37
  %i.bb = call i32 @mbedtls_ssl_encrypt_buf(ptr nonnull poison, ptr noundef nonnull %i.x, ptr noundef nonnull %2) ; 2 uses
  %.not85 = icmp eq i32 %i.bb, 0
  br i1 %.not85, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.bc = load i64, ptr %i.an, align 8, !tbaa !39
  %.not86 = icmp eq i64 %i.bc, 0
  br i1 %.not86, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %.075.ph = phi i32 [ -27648, %bb.c ], [ %i.bb, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %.thread102

bb.d:                                             ; preds = %bb.c
  %i.bd = load i8, ptr %i.az, align 8, !tbaa !36
  %i.be = zext i8 %i.bd to i32
  store i32 %i.be, ptr %i.aw, align 8, !tbaa !100
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !87
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 49
  %i.bi = load i8, ptr %i.ba, align 8, !tbaa !37
  %i.bj = zext i8 %i.bi to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr nonnull align 1 %i.bh, i64 %i.bj, i1 false)
  %i.bk = load i64, ptr %i.ai, align 8, !tbaa !40 ; 3 uses
  store i64 %i.bk, ptr %i.a, align 8, !tbaa !99
  %i.bl = load ptr, ptr %i.s, align 8, !tbaa !88
  %i.bm = trunc i64 %i.bk to i16
  %i.bn = call i16 @llvm.bswap.i16(i16 %i.bm)
  store i16 %i.bn, ptr %i.bl, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.174 = phi i64 [ %i.bk, %bb.d ], [ %i.b, %bb.a ]
  %.val = load ptr, ptr %i.f, align 8, !tbaa !83  ; 2 uses
  %i.bo = getelementptr i8, ptr %0, i64 384       ; 3 uses
  %.val89 = load ptr, ptr %i.bo, align 8, !tbaa !89
  %i.bp = ptrtoint ptr %.val89 to i64
  %i.bq = ptrtoint ptr %.val to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = add i64 %i.br, %.174                    ; 3 uses
  %i.bt = load ptr, ptr %0, align 8, !tbaa !22
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 9
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !32
  %i.bw = icmp eq i8 %i.bv, 1
  br i1 %i.bw, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !82 ; 2 uses
  %i.bz = call i64 @mbedtls_ssl_get_current_mtu(ptr noundef nonnull %0) #19 ; 2 uses
  %i.ca = add i64 %i.bz, -1
  %or.cond.i.i = icmp ult i64 %i.ca, 16764
  %.0.i.i = select i1 %or.cond.i.i, i64 %i.bz, i64 16765 ; 2 uses
  %i.cb = icmp ugt i64 %i.by, %.0.i.i
  %i.cc = sub nuw nsw i64 %.0.i.i, %i.by
  %i.cd = trunc nuw nsw i64 %i.cc to i32
  %.0.i94 = select i1 %i.cb, i32 -27648, i32 %i.cd ; 3 uses
  %i.ce = icmp slt i32 %.0.i94, 0
  br i1 %i.ce, label %.thread102, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cf = zext nneg i32 %.0.i94 to i64
  %i.cg = icmp ugt i64 %i.bs, %i.cf
  br i1 %i.cg, label %.thread102, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !83
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.e
  %i.ch = phi ptr [ %.pre, %._crit_edge ], [ %.val, %bb.e ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !100
  %i.ck = trunc i32 %i.cj to i8
  store i8 %i.ck, ptr %i.ch, align 1, !tbaa !34
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 5 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !82
  %i.cn = add i64 %i.cm, %i.bs
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !82
  %i.co = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.bs ; 4 uses
  store ptr %i.cp, ptr %i.f, align 8, !tbaa !83
  %i.cq = load ptr, ptr %i.w, align 8, !tbaa !85  ; 5 uses
  %i.cr = load ptr, ptr %0, align 8, !tbaa !22
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 9 ; 3 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !32
  %i.cu = icmp eq i8 %i.ct, 1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 3 ; 3 uses
  br i1 %i.cu, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  store ptr %i.cv, ptr %i.o, align 8, !tbaa !86
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 11 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !87
  store ptr %i.cw, ptr %i.s, align 8, !tbaa !88
  %.not.i = icmp eq ptr %i.cq, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 105
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !58
  %i.da = zext i8 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.da ; 2 uses
  store ptr %i.db, ptr %i.s, align 8, !tbaa !88
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.dc = phi ptr [ %i.db, %bb.j ], [ %i.cw, %bb.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  store ptr %i.cv, ptr %i.s, align 8, !tbaa !88
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.cv, ptr %i.de, align 8, !tbaa !87
  %i.df = getelementptr inbounds nuw i8, ptr %i.cp, i64 5
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sink.i = phi ptr [ %i.df, %bb.l ], [ %i.dd, %bb.k ] ; 3 uses
  store ptr %.sink.i, ptr %i.bo, align 8, !tbaa !89
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  store ptr %.sink.i, ptr %i.dg, align 8, !tbaa !90
  %.not23.i = icmp eq ptr %i.cq, null
  br i1 %.not23.i, label %mbedtls_ssl_update_out_pointers.exit.preheader, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dh = getelementptr i8, ptr %i.cq, i64 8
  %.val.i = load i64, ptr %i.dh, align 8, !tbaa !46
  %i.di = getelementptr i8, ptr %i.cq, i64 16
  %.val24.i = load i64, ptr %i.di, align 8, !tbaa !47
  %i.dj = sub i64 %.val.i, %.val24.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.sink.i, i64 %i.dj
  store ptr %i.dk, ptr %i.dg, align 8, !tbaa !90
  br label %mbedtls_ssl_update_out_pointers.exit.preheader

mbedtls_ssl_update_out_pointers.exit.preheader:   ; preds = %bb.m, %bb.n
  br label %mbedtls_ssl_update_out_pointers.exit

mbedtls_ssl_update_out_pointers.exit:             ; preds = %mbedtls_ssl_update_out_pointers.exit.preheader, %bb.o
  %.069 = phi i32 [ %i.do, %bb.o ], [ 8, %mbedtls_ssl_update_out_pointers.exit.preheader ] ; 2 uses
  %i.dl = zext i32 %.069 to i64                   ; 2 uses
  %.val91.val = load i8, ptr %i.cs, align 1, !tbaa !32 ; 2 uses
  %i.dm = icmp eq i8 %.val91.val, 1
  %..i = select i1 %i.dm, i64 2, i64 0
  %i.dn = icmp samesign ult i64 %..i, %i.dl
  br i1 %i.dn, label %bb.o, label %split

bb.o:                                             ; preds = %mbedtls_ssl_update_out_pointers.exit
  %i.do = add i32 %.069, -1                       ; 2 uses
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.dp ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !34
  %i.ds = add i8 %i.dr, 1                         ; 2 uses
  store i8 %i.ds, ptr %i.dq, align 1, !tbaa !34
  %.not87 = icmp eq i8 %i.ds, 0
  br i1 %.not87, label %mbedtls_ssl_update_out_pointers.exit, label %._crit_edge119, !llvm.loop !165

._crit_edge119:                                   ; preds = %bb.o
  %.val90.val.pre = load i8, ptr %i.cs, align 1, !tbaa !32
  br label %split, !llvm.loop !165

split:                                            ; preds = %mbedtls_ssl_update_out_pointers.exit, %._crit_edge119
  %i.dt = phi i8 [ %.val90.val.pre, %._crit_edge119 ], [ %.val91.val, %mbedtls_ssl_update_out_pointers.exit ]
  %i.du = icmp eq i8 %i.dt, 1                     ; 2 uses
  %..i95 = select i1 %i.du, i64 2, i64 0
  %.not111 = icmp eq i64 %..i95, %i.dl
  br i1 %.not111, label %.thread102, label %bb.p

bb.p:                                             ; preds = %split
  %i.dv = icmp eq i32 %1, 0
  %or.cond = and i1 %i.dv, %i.du
  br i1 %or.cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dw = call fastcc i32 @ssl_get_remaining_payload_in_datagram(ptr noundef nonnull %0) ; 3 uses
  %i.dx = icmp sgt i32 %i.dw, -1
  %i.dy = icmp eq i32 %i.dw, 0
  %spec.select = zext i1 %i.dy to i32
  br i1 %i.dx, label %bb.r, label %.thread102

bb.r:                                             ; preds = %bb.q, %bb.p
  %.272 = phi i32 [ %spec.select, %bb.q ], [ %1, %bb.p ]
  %i.dz = icmp eq i32 %.272, 1
  br i1 %i.dz, label %bb.s, label %mbedtls_ssl_flush_output.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !81
end_hunk_0
begin_hunk_1_@mbedtls_ssl_write_handshake_msg_ext:bb.a

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !66   ; 2 uses
  %.not62 = icmp eq ptr %i.s, null
  br i1 %.not62, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 13
  %i.u = load i8, ptr %i.t, align 1, !tbaa !94
  %i.v = icmp eq i8 %i.u, 1
  %i.w = icmp ugt i64 %i.b, 16384
  %or.cond69 = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond69, label %ssl_flight_append.exit, label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d
  %.old = icmp ugt i64 %i.b, 16384
  br i1 %.old, label %ssl_flight_append.exit, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  br i1 %i.i, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.x = lshr i64 %i.c, 16
  %i.y = trunc i64 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 %i.y, ptr %i.z, align 1, !tbaa !34
  %i.aa = lshr i64 %i.c, 8
  %i.ab = trunc i64 %i.aa to i8
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  store i8 %i.ab, ptr %i.ad, align 1, !tbaa !34
  %i.ae = trunc i64 %i.c to i8
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 3
  store i8 %i.ae, ptr %i.ag, align 1, !tbaa !34
  %i.ah = load ptr, ptr %0, align 8, !tbaa !22
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 9
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !32
  %i.ak = icmp eq i8 %i.aj, 1
  br i1 %i.ak, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.al = load i64, ptr %i.a, align 8, !tbaa !99
  %i.am = add i64 %i.al, -16377
  %i.an = icmp ult i64 %i.am, 8
  br i1 %i.an, label %ssl_flight_append.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !90  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr nonnull align 1 %i.aq, i64 %i.c, i1 false)
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !99
  %i.as = add i64 %i.ar, 8
  store i64 %i.as, ptr %i.a, align 8, !tbaa !99
  %i.at = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 2 uses
  br i1 %i.j, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !66
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1372
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !167
  %i.az = trunc i32 %i.ay to i16
  %i.ba = tail call i16 @llvm.bswap.i16(i16 %i.az)
  store i16 %i.ba, ptr %i.au, align 1
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !66
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1372 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !167
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !167
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  store i8 0, ptr %i.au, align 1, !tbaa !34
  %i.bf = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 5
  store i8 0, ptr %i.bg, align 1, !tbaa !34
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bh = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bi, i8 0, i64 3, i1 false)
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !90  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 9
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bk, ptr noundef nonnull align 1 dereferenceable(3) %i.bl, i64 3, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.i
  %i.bm = icmp ne i8 %i.f, 0
  %i.bn = icmp ne i32 %1, 0
  %or.cond4 = and i1 %i.bn, %i.bm
  br i1 %or.cond4, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !66
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !118
  %i.bs = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.bt = load i64, ptr %i.a, align 8, !tbaa !99
  %i.bu = tail call i32 %i.br(ptr noundef nonnull %0, ptr noundef %i.bs, i64 noundef %i.bt) #19 ; 2 uses
  %.not64 = icmp eq i32 %i.bu, 0
  br i1 %.not64, label %bb.q, label %ssl_flight_append.exit

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.h
  %i.bv = load ptr, ptr %0, align 8, !tbaa !22
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 9
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !32
  %i.by = icmp eq i8 %i.bx, 1
  br i1 %i.by, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.bz = load i32, ptr %i.g, align 8, !tbaa !100 ; 2 uses
  %i.ca = icmp eq i32 %i.bz, 22
  %or.cond7 = select i1 %i.ca, i1 %i.j, i1 false
  br i1 %or.cond7, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #20 ; 7 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %ssl_flight_append.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !99  ; 3 uses
  %i.ce = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.cd) #20 ; 3 uses
  store ptr %i.ce, ptr %i.cb, align 8, !tbaa !93
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.cb) #19
  br label %ssl_flight_append.exit

bb.v:                                             ; preds = %bb.t
  %i.cg = load ptr, ptr %i.d, align 8, !tbaa !90
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ce, ptr align 1 %i.cg, i64 %i.cd, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 %i.cd, ptr %i.ch, align 8, !tbaa !98
  %i.ci = trunc i32 %i.bz to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store i8 %i.ci, ptr %i.cj, align 8, !tbaa !96
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !66
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 1384 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !95 ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.w, label %.preheader.i

bb.w:                                             ; preds = %bb.v
  store ptr %i.cb, ptr %i.cm, align 8, !tbaa !95
  br label %ssl_flight_append.exit.thread

.preheader.i:                                     ; preds = %bb.v, %.preheader.i
  %.0.i = phi ptr [ %i.cq, %.preheader.i ], [ %i.cn, %bb.v ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !92 ; 2 uses
  %.not.i = icmp eq ptr %i.cq, null
  br i1 %.not.i, label %bb.x, label %.preheader.i, !llvm.loop !166

bb.x:                                             ; preds = %.preheader.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store ptr %i.cb, ptr %i.cr, align 8, !tbaa !92
  br label %ssl_flight_append.exit.thread

bb.y:                                             ; preds = %bb.r, %bb.q
  %i.cs = tail call i32 @mbedtls_ssl_write_record(ptr noundef nonnull %0, i32 noundef %2) ; 2 uses
  %.not66 = icmp eq i32 %i.cs, 0
  br i1 %.not66, label %ssl_flight_append.exit.thread, label %ssl_flight_append.exit

ssl_flight_append.exit.thread:                    ; preds = %bb.x, %bb.w, %bb.y
  br label %ssl_flight_append.exit

ssl_flight_append.exit:                           ; preds = %bb.u, %bb.s, %bb.y, %bb.p, %bb.j, %bb.g, %bb.f, %bb.c, %bb.a, %ssl_flight_append.exit.thread
  %.0 = phi i32 [ -27648, %bb.a ], [ -27648, %bb.c ], [ -27648, %bb.f ], [ -27648, %bb.g ], [ -135, %bb.j ], [ %i.cs, %bb.y ], [ 0, %ssl_flight_append.exit.thread ], [ %i.bu, %bb.p ], [ -141, %bb.s ], [ -141, %bb.u ]
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
  %3 = select i1 %i.b, i32 513, i32 512
  %4 = sub i32 %3, %2
  %.0.in = select i1 %i.a, i32 %4, i32 %2
  %.0 = trunc i32 %.0.in to i16
  %i.c = tail call i16 @llvm.bswap.i16(i16 %.0)
  store i16 %i.c, ptr %0, align 1
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
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !34
  %i.bl = zext i8 %i.bk to i32
  %i.bm = shl nuw nsw i32 %i.bl, 8
  %i.bn = or disjoint i32 %i.bm, %i.bi
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ab, i64 11
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !34
  %i.bq = zext i8 %i.bp to i32
  %i.br = or disjoint i32 %i.bn, %i.bq            ; 2 uses
  %i.bs = icmp samesign ugt i32 %i.be, %i.ar
  %i.bt = sub nuw nsw i32 %i.ar, %i.be
  %i.bu = icmp samesign ugt i32 %i.br, %i.bt
  %or.cond.i = select i1 %i.bs, i1 true, i1 %i.bu
  br i1 %or.cond.i, label %.thread104, label %ssl_check_hs_header.exit

ssl_check_hs_header.exit:                         ; preds = %bb.e
  %i.bv = add nuw nsw i32 %i.br, 12
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !120 ; 2 uses
  %.not = icmp ult i64 %i.by, %i.bw
  br i1 %.not, label %.thread104, label %bb.f

bb.f:                                             ; preds = %ssl_check_hs_header.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !66 ; 4 uses
  %.not72 = icmp eq ptr %i.ca, null
  br i1 %.not72, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cb = getelementptr i8, ptr %0, i64 8
  %.val80 = load i32, ptr %i.cb, align 8, !tbaa !65
  %i.cc = icmp slt i32 %.val80, 27
  br i1 %i.cc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 1376
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !106 ; 2 uses
  %.not73 = icmp eq i32 %i.ce, %i.ae
  br i1 %.not73, label %.thread, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.cf = load i8, ptr %i.ab, align 1, !tbaa !34
  %.not75 = icmp eq i8 %i.cf, 1
  br i1 %.not75, label %.thread, label %._crit_edge108

._crit_edge108:                                   ; preds = %bb.i
  %.phi.trans.insert109 = getelementptr inbounds nuw i8, ptr %i.ca, i64 1376
  %.pre110 = load i32, ptr %.phi.trans.insert109, align 8, !tbaa !106
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge108, %bb.h
  %i.cg = phi i32 [ %.pre110, %._crit_edge108 ], [ %i.ce, %bb.h ]
  %i.ch = icmp ult i32 %i.cg, %i.ae
  br i1 %i.ch, label %.thread104, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 1408
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !107
  %i.ck = add i32 %i.cj, -1
  %i.cl = icmp eq i32 %i.ck, %i.ae
  br i1 %i.cl, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cm = load i8, ptr %i.ab, align 1, !tbaa !34
  %.not77 = icmp eq i8 %i.cm, 3
  br i1 %.not77, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cn = tail call i32 @mbedtls_ssl_flight_transmit(ptr noundef nonnull %0) ; 2 uses
  %.not78 = icmp eq i32 %i.cn, 0
  br i1 %.not78, label %bb.n, label %.thread104

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.m
  br label %.thread104

.thread:                                          ; preds = %bb.h, %bb.i, %bb.f
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !121
  %i.cq = icmp ult i64 %i.by, %i.cp
  br i1 %i.cq, label %.thread104, label %bb.o

bb.o:                                             ; preds = %.thread
  %i.cr = load i16, ptr %i.as, align 1
  %i.cs = getelementptr i8, ptr %i.as, i64 2
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = zext i8 %i.ct to i16
  %i.cv = or i16 %i.cr, %i.cu
  %i.cw = icmp ne i16 %i.cv, 0
  %i.cx = zext i1 %i.cw to i32
  %.not.i = icmp eq i32 %i.cx, 0
  br i1 %.not.i, label %ssl_hs_is_proper_fragment.exit, label %.thread104

ssl_hs_is_proper_fragment.exit:                   ; preds = %bb.o
  %i.cy = load i16, ptr %i.bf, align 1
  %i.cz = load i16, ptr %i.af, align 1
  %i.da = xor i16 %i.cy, %i.cz
  %i.db = getelementptr i8, ptr %i.bf, i64 2
  %i.dc = getelementptr i8, ptr %i.af, i64 2
  %i.dd = load i8, ptr %i.db, align 1
  %i.de = load i8, ptr %i.dc, align 1
  %i.df = zext i8 %i.dd to i16
  %i.dg = zext i8 %i.de to i16
  %i.dh = xor i16 %i.df, %i.dg
  %i.di = or i16 %i.da, %i.dh
  %i.dj = icmp ne i16 %i.di, 0
  %i.dk = zext i1 %i.dj to i32
  %bcmp5.i.fr = freeze i32 %i.dk
end_hunk_1
