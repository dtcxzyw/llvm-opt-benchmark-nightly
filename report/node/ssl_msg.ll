inline.NumInlined: 137
inline.NumDeleted: 57
begin_hunk_0_@mbedtls_ssl_flight_transmit:bb.a
bb.x:                                             ; preds = %bb.v, %bb.w, %bb.t
  %i.dq = tail call i32 @mbedtls_ssl_write_record(ptr noundef nonnull %0, i32 noundef %i.aj) ; 3 uses
  %.not139 = icmp eq i32 %i.dq, 0
  br i1 %.not139, label %select.unfold, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @mbedtls_debug_print_ret(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 2663, ptr noundef nonnull @.str.72, i32 noundef %i.dq) #19
  br label %.thread149

select.unfold:                                    ; preds = %bb.k, %bb.s, %bb.x
  %i.dr = load ptr, ptr %i.a, align 8, !tbaa !80  ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 1904
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !116 ; 2 uses
  %.not132 = icmp eq ptr %i.dt, null
  br i1 %.not132, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %select.unfold, %bb.c
  %i.du = tail call i32 @mbedtls_ssl_flush_output(ptr noundef nonnull %0) ; 2 uses
  %.not133 = icmp eq i32 %i.du, 0
  br i1 %.not133, label %bb.z, label %.thread149

bb.z:                                             ; preds = %._crit_edge
  %i.dv = getelementptr i8, ptr %0, i64 8
  %.val = load i32, ptr %i.dv, align 8, !tbaa !79
  %i.dw = icmp slt i32 %.val, 27
  %i.dx = load ptr, ptr %i.a, align 8, !tbaa !80  ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 13 ; 2 uses
  br i1 %i.dw, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i8 3, ptr %i.dy, align 1, !tbaa !114
  br label %mbedtls_ssl_set_timer.exit

bb.ab:                                            ; preds = %bb.z
  store i8 2, ptr %i.dy, align 1, !tbaa !114
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !8
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %mbedtls_ssl_set_timer.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 1892
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !86 ; 3 uses
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 292, ptr noundef nonnull @.str.1, i32 noundef %i.ed) #19
  %i.ee = load ptr, ptr %i.dz, align 8, !tbaa !8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !18
  %i.eh = lshr i32 %i.ed, 2
  tail call void %i.ee(ptr noundef %i.eg, i32 noundef %i.eh, i32 noundef %i.ed) #19, !inline_history !123
  br label %mbedtls_ssl_set_timer.exit

mbedtls_ssl_set_timer.exit:                       ; preds = %bb.ac, %bb.ab, %bb.aa
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 2680, ptr noundef nonnull @.str.73) #19
  br label %.thread149

.thread149:                                       ; preds = %bb.h, %bb.k, %bb.s, %bb.y, %._crit_edge, %mbedtls_ssl_set_timer.exit
  %.4 = phi i32 [ 0, %mbedtls_ssl_set_timer.exit ], [ %i.du, %._crit_edge ], [ %i.dq, %bb.y ], [ %i.de, %bb.s ], [ %i.aq, %bb.k ], [ %i.ak, %bb.h ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ssl_swap_epochs(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1928
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !124
  %i.g = icmp eq ptr %i.b, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 2485, ptr noundef nonnull @.str.157) #19
  br label %mbedtls_ssl_update_out_pointers.exit

bb.c:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 2489, ptr noundef nonnull @.str.158) #19
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !105
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !80   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1928 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !124
  store ptr %i.k, ptr %i.a, align 8, !tbaa !105
  store ptr %i.h, ptr %i.j, align 8, !tbaa !124
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 1936 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8
  store i64 %i.n, ptr %i.l, align 8
  store i64 %.sroa.0.0.copyload, ptr %i.m, align 8
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !105  ; 5 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 9
  %i.r = load i8, ptr %i.q, align 1, !tbaa !21
  %i.s = icmp eq i8 %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !100  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 3 ; 3 uses
  br i1 %i.s, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %i.v, ptr %i.w, align 8, !tbaa !106
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 11 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr %i.x, ptr %i.y, align 8, !tbaa !107
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  store ptr %i.x, ptr %i.z, align 8, !tbaa !108
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 321
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !65
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ac ; 2 uses
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !108
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ae = phi ptr [ %i.ad, %bb.e ], [ %i.x, %bb.d ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.v, ptr %i.ag, align 8, !tbaa !108
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr %i.v, ptr %i.ah, align 8, !tbaa !107
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 5
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi ptr [ %i.ai, %bb.g ], [ %i.af, %bb.f ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr %.sink.i, ptr %i.aj, align 8, !tbaa !101
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  store ptr %.sink.i, ptr %i.ak, align 8, !tbaa !109
  %.not23.i = icmp eq ptr %i.o, null
  br i1 %.not23.i, label %mbedtls_ssl_update_out_pointers.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr i8, ptr %i.o, i64 8
  %.val.i = load i64, ptr %i.al, align 8, !tbaa !54
  %i.am = getelementptr i8, ptr %i.o, i64 16
  %.val24.i = load i64, ptr %i.am, align 8, !tbaa !55
  %i.an = sub i64 %.val.i, %.val24.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.sink.i, i64 %i.an
  store ptr %i.ao, ptr %i.ak, align 8, !tbaa !109
  br label %mbedtls_ssl_update_out_pointers.exit

mbedtls_ssl_update_out_pointers.exit:             ; preds = %bb.i, %bb.h, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 16385) i32 @ssl_get_remaining_payload_in_datagram(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @mbedtls_ssl_get_output_max_frag_len(ptr noundef %0) #19
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.a, i64 16384) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.c = load i64, ptr %i.b, align 8, !tbaa !99   ; 4 uses
  %.not = icmp ugt i64 %spec.select, %i.c
  br i1 %.not, label %bb.b, label %bb.i

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
  br i1 %i.j, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !105  ; 5 uses
  %i.m = getelementptr i8, ptr %0, i64 352
  %.val.i = load ptr, ptr %i.m, align 8, !tbaa !100
  %i.n = getelementptr i8, ptr %0, i64 376
  %.val20.i = load ptr, ptr %i.n, align 8, !tbaa !101
  %i.o = ptrtoint ptr %.val20.i to i64
  %i.p = ptrtoint ptr %.val.i to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = icmp eq ptr %i.l, null
  br i1 %i.r, label %mbedtls_ssl_get_record_expansion.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %.val21.i = load ptr, ptr %i.s, align 8, !tbaa !125 ; 2 uses
  %i.t = icmp eq ptr %.val21.i, null
  br i1 %i.t, label %mbedtls_ssl_get_record_expansion.exit.thread, label %mbedtls_cipher_get_cipher_mode.exit.i

mbedtls_cipher_get_cipher_mode.exit.i:            ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.val21.i, i64 8
  %i.v = load i32, ptr %i.u, align 8              ; 2 uses
  %1 = trunc i32 %i.v to i16
  %trunc.i = and i16 %1, -4096
  switch i16 %trunc.i, label %mbedtls_ssl_get_record_expansion.exit.thread [
    i16 24576, label %bb.e
    i16 -32768, label %bb.e
    i16 -20480, label %bb.e
    i16 28672, label %bb.e
    i16 8192, label %mbedtls_cipher_get_block_size.exit.i
  ]

bb.e:                                             ; preds = %mbedtls_cipher_get_cipher_mode.exit.i, %mbedtls_cipher_get_cipher_mode.exit.i, %mbedtls_cipher_get_cipher_mode.exit.i, %mbedtls_cipher_get_cipher_mode.exit.i
  %i.w = load i64, ptr %i.l, align 8, !tbaa !126
  br label %bb.f

mbedtls_cipher_get_block_size.exit.i:             ; preds = %mbedtls_cipher_get_cipher_mode.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !59
  %i.z = shl i32 %i.v, 1
  %i.aa = and i32 %i.z, 62
  %reass.add.i = zext nneg i32 %i.aa to i64
  %i.ab = add i64 %i.y, %reass.add.i
  br label %bb.f

mbedtls_ssl_get_record_expansion.exit.thread:     ; preds = %bb.d, %mbedtls_cipher_get_cipher_mode.exit.i
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 5662, ptr noundef nonnull @.str.26) #19
  br label %bb.i

bb.f:                                             ; preds = %mbedtls_cipher_get_block_size.exit.i, %bb.e
  %.018.i = phi i64 [ %i.w, %bb.e ], [ %i.ab, %mbedtls_cipher_get_block_size.exit.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 321
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !65
  %.not.i = icmp eq i8 %i.ad, 0
  %i.ae = add i64 %.018.i, 16
  %spec.select.i = select i1 %.not.i, i64 %.018.i, i64 %i.ae
  %i.af = add i64 %spec.select.i, %i.q
  br label %mbedtls_ssl_get_record_expansion.exit

mbedtls_ssl_get_record_expansion.exit:            ; preds = %bb.c, %bb.f
  %.0.i38.in = phi i64 [ %i.af, %bb.f ], [ %i.q, %bb.c ]
  %.0.i38 = trunc i64 %.0.i38.in to i32           ; 4 uses
  %i.ag = icmp slt i32 %.0.i38, 0
  br i1 %i.ag, label %bb.i, label %bb.g

bb.g:                                             ; preds = %mbedtls_ssl_get_record_expansion.exit
  %.not35 = icmp samesign ugt i32 %.0.i, %.0.i38
  br i1 %.not35, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %narrow = sub nuw nsw i32 %.0.i, %.0.i38
  %i.ah = zext nneg i32 %narrow to i64
  %spec.select3740 = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.ah)
  %spec.select37 = trunc nuw nsw i64 %spec.select3740 to i32
  br label %bb.i

bb.i:                                             ; preds = %mbedtls_ssl_get_record_expansion.exit.thread, %bb.g, %mbedtls_ssl_get_record_expansion.exit, %bb.b, %bb.a, %bb.h
  %.0 = phi i32 [ %spec.select37, %bb.h ], [ 0, %bb.a ], [ %.0.i, %bb.b ], [ %.0.i38, %mbedtls_ssl_get_record_expansion.exit ], [ 0, %bb.g ], [ -27648, %mbedtls_ssl_get_record_expansion.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_ssl_write_record(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.mbedtls_record, align 8     ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !102  ; 2 uses
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 2944, ptr noundef nonnull @.str.81) #19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !127  ; 2 uses
  %i.e = icmp eq i32 %i.d, 772
  %spec.store.select = select i1 %i.e, i32 771, i32 %i.d ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 7 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !100
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load ptr, ptr %0, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  %i.k = load i8, ptr %i.j, align 1, !tbaa !21
  %i.l = icmp eq i8 %i.k, 1
  %i.m = icmp eq i32 %spec.store.select, 770
  %i.n = select i1 %i.m, i32 513, i32 512
  %i.o = sub i32 %i.n, %spec.store.select         ; 2 uses
  %.0.in.i = select i1 %i.l, i32 %i.o, i32 %spec.store.select
  %.0.i = trunc i32 %.0.in.i to i16
  %i.p = tail call i16 @llvm.bswap.i16(i16 %.0.i)
  store i16 %i.p, ptr %i.h, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !106
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  store i64 %i.t, ptr %i.r, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !108
  %i.w = trunc i64 %i.b to i16
  %i.x = tail call i16 @llvm.bswap.i16(i16 %i.w)
  store i16 %i.x, ptr %i.v, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !105  ; 2 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !101 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !43
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !104
  %i.af = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %reass.sub = sub i64 %i.ag, %i.af
  %i.ah = add i64 %reass.sub, 16765
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !44
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !102
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !42
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !109
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.af
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !41
  %i.aq = load ptr, ptr %i.q, align 8, !tbaa !106
  %i.ar = load i64, ptr %i.aq, align 1
  store i64 %i.ar, ptr %2, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.at = load ptr, ptr %0, align 8, !tbaa !20    ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 9
  %i.av = load i8, ptr %i.au, align 1, !tbaa !21
  %i.aw = icmp eq i8 %i.av, 1
  %.0.in.i114 = select i1 %i.aw, i32 %i.o, i32 %spec.store.select
  %.0.i115 = trunc i32 %.0.in.i114 to i16
  %i.ax = tail call i16 @llvm.bswap.i16(i16 %.0.i115)
  store i16 %i.ax, ptr %i.as, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !122
  %i.ba = trunc i32 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i8 %i.ba, ptr %i.bb, align 8, !tbaa !35
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store i8 0, ptr %i.bc, align 8, !tbaa !37
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !128
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !129
  %i.bh = call i32 @mbedtls_ssl_encrypt_buf(ptr noundef nonnull %0, ptr noundef nonnull %i.z, ptr noundef nonnull %2, ptr noundef %i.be, ptr noundef %i.bg) ; 3 uses
  %.not107 = icmp eq i32 %i.bh, 0
  br i1 %.not107, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @mbedtls_debug_print_ret(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 2989, ptr noundef nonnull @.str.82, i32 noundef %i.bh) #19
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.bi = load i64, ptr %i.ap, align 8, !tbaa !41
  %.not108 = icmp eq i64 %i.bi, 0
  br i1 %.not108, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 2994, ptr noundef nonnull @.str.26) #19
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.e
  %.0.ph = phi i32 [ -27648, %bb.e ], [ %i.bh, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %.thread122

bb.f:                                             ; preds = %bb.d
  %i.bj = load i8, ptr %i.bb, align 8, !tbaa !35
  %i.bk = zext i8 %i.bj to i32
  store i32 %i.bk, ptr %i.ay, align 8, !tbaa !122
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !107
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 49
  %i.bo = load i8, ptr %i.bc, align 8, !tbaa !37
  %i.bp = zext i8 %i.bo to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bm, ptr nonnull align 1 %i.bn, i64 %i.bp, i1 false)
  %i.bq = load i64, ptr %i.ak, align 8, !tbaa !42 ; 3 uses
  store i64 %i.bq, ptr %i.a, align 8, !tbaa !102
  %i.br = load ptr, ptr %i.u, align 8, !tbaa !108
  %i.bs = trunc i64 %i.bq to i16
  %i.bt = call i16 @llvm.bswap.i16(i16 %i.bs)
  store i16 %i.bt, ptr %i.br, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %.195 = phi i64 [ %i.bq, %bb.f ], [ %i.b, %bb.a ] ; 2 uses
  %.val = load ptr, ptr %i.f, align 8, !tbaa !100 ; 2 uses
  %i.bu = getelementptr i8, ptr %0, i64 376       ; 2 uses
  %.val111 = load ptr, ptr %i.bu, align 8, !tbaa !101
  %i.bv = ptrtoint ptr %.val111 to i64
  %i.bw = ptrtoint ptr %.val to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = add i64 %i.bx, %.195                    ; 4 uses
  %i.bz = load ptr, ptr %0, align 8, !tbaa !20
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 9
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !21
  %i.cc = icmp eq i8 %i.cb, 1
  br i1 %i.cc, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !99 ; 2 uses
  %i.cf = call i64 @mbedtls_ssl_get_current_mtu(ptr noundef nonnull %0) #19 ; 2 uses
  %i.cg = add i64 %i.cf, -1
  %or.cond.i.i = icmp ult i64 %i.cg, 16764
  %.0.i.i = select i1 %or.cond.i.i, i64 %i.cf, i64 16765 ; 2 uses
end_hunk_0
begin_hunk_1_@mbedtls_ssl_parse_change_cipher_spec:bb.a
  %.sink21.i = phi ptr [ %i.ab, %bb.j ], [ %i.af, %bb.k ]
  %.sink20.i = phi ptr [ %i.ac, %bb.j ], [ %i.ai, %bb.k ] ; 2 uses
  %.sink.i = phi ptr [ %i.ad, %bb.j ], [ %i.aj, %bb.k ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %.sink21.i, ptr %i.ak, align 8, !tbaa !40
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %.sink20.i, ptr %i.al, align 8, !tbaa !150
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %.sink20.i, ptr %i.am, align 8, !tbaa !151
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %.sink.i, ptr %i.an, align 8, !tbaa !149
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %.sink.i, ptr %i.ao, align 8, !tbaa !135
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !79 ; 3 uses
  %i.ar = add nsw i32 %i.aq, 1                    ; 3 uses
  %i.as = tail call ptr @mbedtls_ssl_states_str(i32 noundef %i.aq) #19
  %i.at = tail call ptr @mbedtls_ssl_states_str(i32 noundef range(i32 -2147483647, -2147483648) %i.ar) #19
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.245, i32 noundef 1355, ptr noundef nonnull @.str.246, i32 noundef %i.aq, ptr noundef %i.as, i32 noundef range(i32 -2147483647, -2147483648) %i.ar, ptr noundef %i.at) #19
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !79
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 5386, ptr noundef nonnull @.str.136) #19
  br label %bb.l

bb.l:                                             ; preds = %mbedtls_ssl_update_in_pointers.exit, %bb.g, %bb.d, %bb.b
  %.0 = phi i32 [ %i.a, %bb.b ], [ -30464, %bb.d ], [ -27520, %bb.g ], [ 0, %mbedtls_ssl_update_in_pointers.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @mbedtls_ssl_reset_in_pointers(ptr noundef captures(none) initializes((192, 240)) %0) local_unnamed_addr #6 {
mbedtls_ssl_update_in_pointers.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.c = load i8, ptr %i.b, align 1, !tbaa !21
  %i.d = icmp eq i8 %i.c, 1                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75   ; 4 uses
  %.sink.idx = select i1 %i.d, i64 0, i64 8
  %.sink = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sink.idx
  %.sink21.i.idx = select i1 %i.d, i64 3, i64 0
  %.sink21.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sink21.i.idx
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %.sink, ptr %i.g, align 8, !tbaa !74
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.f, i64 13 ; 2 uses
  %.sink20.i = getelementptr inbounds nuw i8, ptr %i.f, i64 11 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %.sink21.i, ptr %i.h, align 8, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %.sink20.i, ptr %i.i, align 8, !tbaa !150
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %.sink20.i, ptr %i.j, align 8, !tbaa !151
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %.sink.i, ptr %i.k, align 8, !tbaa !149
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %.sink.i, ptr %i.l, align 8, !tbaa !135
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @mbedtls_ssl_reset_out_pointers(ptr noundef captures(none) initializes((344, 392)) %0) local_unnamed_addr #6 {
mbedtls_ssl_update_out_pointers.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.c = load i8, ptr %i.b, align 1, !tbaa !21
  %i.d = icmp eq i8 %i.c, 1                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !104  ; 4 uses
  %.sink10.idx = select i1 %i.d, i64 0, i64 8
  %.sink10 = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sink10.idx
  %.sink9.idx = select i1 %i.d, i64 3, i64 0
  %.sink9 = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sink9.idx
  %.sink8 = getelementptr inbounds nuw i8, ptr %i.f, i64 11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr %.sink10, ptr %i.g, align 8, !tbaa !100
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %.sink9, ptr %i.h, align 8, !tbaa !106
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr %.sink8, ptr %i.i, align 8, !tbaa !107
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %.sink8, ptr %i.j, align 8, !tbaa !108
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.f, i64 13 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr %.sink.i, ptr %i.k, align 8, !tbaa !101
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 384
  store ptr %.sink.i, ptr %i.l, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @mbedtls_ssl_get_bytes_avail(ptr noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !156
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = load i64, ptr %i.d, align 8, !tbaa !147
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i64 %i.f
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @mbedtls_ssl_check_pending(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.b = load i32, ptr %i.a, align 4, !tbaa !155
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 5538, ptr noundef nonnull @.str.137) #19
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !21
  %i.g = icmp eq i8 %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.i = load i64, ptr %i.h, align 8, !tbaa !77
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.k = load i64, ptr %i.j, align 8, !tbaa !76
  %i.l = icmp ugt i64 %i.i, %i.k
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 5549, ptr noundef nonnull @.str.138) #19
  br label %bb.l

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.n = load i64, ptr %i.m, align 8, !tbaa !148  ; 2 uses
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.p = load i64, ptr %i.o, align 8, !tbaa !147
  %i.q = icmp ult i64 %i.n, %i.p
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 5560, ptr noundef nonnull @.str.139) #19
  br label %bb.l

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !156
  %.not14 = icmp eq ptr %i.s, null
  br i1 %.not14, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 5568, ptr noundef nonnull @.str.140) #19
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 5578, ptr noundef nonnull @.str.141) #19
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.e, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 1, %bb.e ], [ 1, %bb.h ], [ 1, %bb.j ], [ 0, %bb.k ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_ssl_get_record_expansion(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105  ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 352
  %.val = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.d = getelementptr i8, ptr %0, i64 376
  %.val20 = load ptr, ptr %i.d, align 8, !tbaa !101
  %i.e = ptrtoint ptr %.val20 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq ptr %i.b, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.g to i32
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %.val21 = load ptr, ptr %i.j, align 8, !tbaa !125 ; 2 uses
  %i.k = icmp eq ptr %.val21, null
  br i1 %i.k, label %mbedtls_cipher_get_cipher_mode.exit.thread, label %mbedtls_cipher_get_cipher_mode.exit

mbedtls_cipher_get_cipher_mode.exit:              ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.val21, i64 8
  %i.m = load i32, ptr %i.l, align 8              ; 2 uses
  %1 = trunc i32 %i.m to i16
  %trunc = and i16 %1, -4096
  switch i16 %trunc, label %mbedtls_cipher_get_cipher_mode.exit.thread [
    i16 24576, label %bb.d
    i16 -32768, label %bb.d
    i16 -20480, label %bb.d
    i16 28672, label %bb.d
    i16 8192, label %mbedtls_cipher_get_block_size.exit
  ]

bb.d:                                             ; preds = %mbedtls_cipher_get_cipher_mode.exit, %mbedtls_cipher_get_cipher_mode.exit, %mbedtls_cipher_get_cipher_mode.exit, %mbedtls_cipher_get_cipher_mode.exit
  %i.n = load i64, ptr %i.b, align 8, !tbaa !126
  br label %bb.e

mbedtls_cipher_get_block_size.exit:               ; preds = %mbedtls_cipher_get_cipher_mode.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !59
  %i.q = shl i32 %i.m, 1
  %i.r = and i32 %i.q, 62
  %reass.add = zext nneg i32 %i.r to i64
  %i.s = add i64 %i.p, %reass.add
  br label %bb.e

mbedtls_cipher_get_cipher_mode.exit.thread:       ; preds = %bb.c, %mbedtls_cipher_get_cipher_mode.exit
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 5662, ptr noundef nonnull @.str.26) #19
  br label %bb.f

bb.e:                                             ; preds = %mbedtls_cipher_get_block_size.exit, %bb.d
  %.018 = phi i64 [ %i.n, %bb.d ], [ %i.s, %mbedtls_cipher_get_block_size.exit ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 321
  %i.u = load i8, ptr %i.t, align 1, !tbaa !65
  %.not = icmp eq i8 %i.u, 0
  %i.v = add i64 %.018, 16
  %spec.select = select i1 %.not, i64 %.018, i64 %i.v
  %i.w = add i64 %spec.select, %i.g
  %i.x = trunc i64 %i.w to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %mbedtls_cipher_get_cipher_mode.exit.thread, %bb.b
  %.0 = phi i32 [ %i.i, %bb.b ], [ -27648, %mbedtls_cipher_get_cipher_mode.exit.thread ], [ %i.x, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_ssl_read(ptr noundef %0, ptr noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !20
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 5929, ptr noundef nonnull @.str.142) #19
  %i.d = load ptr, ptr %0, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !21
  %i.g = icmp eq i8 %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @mbedtls_ssl_flush_output(ptr noundef nonnull %0) ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !80   ; 2 uses
  %.not86 = icmp eq ptr %i.j, null
  br i1 %.not86, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 13
  %i.l = load i8, ptr %i.k, align 1, !tbaa !114
  %i.m = icmp eq i8 %i.l, 1
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = tail call i32 @mbedtls_ssl_flight_transmit(ptr noundef nonnull %0) ; 2 uses
  %.not87 = icmp eq i32 %i.n, 0
  br i1 %.not87, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.c
  %.val19.i = load ptr, ptr %0, align 8, !tbaa !20 ; 3 uses
  %i.o = getelementptr i8, ptr %.val19.i, i64 9
  %.val19.val.i = load i8, ptr %i.o, align 1, !tbaa !21
  %i.p = icmp eq i8 %.val19.val.i, 1
  %..i.i = select i1 %i.p, i64 2, i64 0           ; 4 uses
  %i.q = getelementptr i8, ptr %0, i64 8          ; 5 uses
  %.val.i = load i32, ptr %i.q, align 8, !tbaa !79
  %i.r = icmp slt i32 %.val.i, 27
  br i1 %i.r, label %ssl_check_ctr_renegotiate.exit.thread.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !83
  %i.u = icmp eq i32 %i.t, 3
  br i1 %i.u, label %ssl_check_ctr_renegotiate.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %.val19.i, i64 16
  %i.w = load i8, ptr %i.v, align 8, !tbaa !165
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %ssl_check_ctr_renegotiate.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %..i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.val19.i, i64 352
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %..i.i ; 2 uses
  %i.ad = sub nuw nsw i64 8, %..i.i               ; 2 uses
  %i.ae = tail call i32 @memcmp(ptr noundef nonnull dereferenceable(1) %i.aa, ptr noundef nonnull dereferenceable(1) %i.ac, i64 noundef %i.ad) #21
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %..i.i
  %i.ah = tail call i32 @memcmp(ptr noundef nonnull dereferenceable(1) %i.ag, ptr noundef nonnull dereferenceable(1) %i.ac, i64 noundef %i.ad) #21
  %i.ai = icmp slt i32 %i.ae, 1
  %i.aj = icmp slt i32 %i.ah, 1
  %or.cond.i = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond.i, label %ssl_check_ctr_renegotiate.exit.thread, label %ssl_check_ctr_renegotiate.exit

ssl_check_ctr_renegotiate.exit:                   ; preds = %bb.k
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 5704, ptr noundef nonnull @.str.247) #19
  %i.ak = tail call i32 @mbedtls_ssl_renegotiate(ptr noundef nonnull %0) #19 ; 3 uses
  switch i32 %i.ak, label %bb.l [
    i32 -27392, label %ssl_check_ctr_renegotiate.exit.thread
    i32 0, label %ssl_check_ctr_renegotiate.exit.thread
  ]

bb.l:                                             ; preds = %ssl_check_ctr_renegotiate.exit
  tail call void @mbedtls_debug_print_ret(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 5962, ptr noundef nonnull @.str.143, i32 noundef %i.ak) #19
  br label %.loopexit

ssl_check_ctr_renegotiate.exit.thread:            ; preds = %bb.k, %bb.i, %bb.j, %ssl_check_ctr_renegotiate.exit, %ssl_check_ctr_renegotiate.exit
  %.pr = load i32, ptr %i.q, align 8, !tbaa !79
  %.not88 = icmp eq i32 %.pr, 27
  br i1 %.not88, label %bb.n, label %ssl_check_ctr_renegotiate.exit.thread.thread

ssl_check_ctr_renegotiate.exit.thread.thread:     ; preds = %bb.h, %ssl_check_ctr_renegotiate.exit.thread
  %i.al = tail call i32 @mbedtls_ssl_handshake(ptr noundef nonnull %0) #19 ; 3 uses
  switch i32 %i.al, label %bb.m [
    i32 -27392, label %bb.n
    i32 0, label %bb.n
  ]

bb.m:                                             ; preds = %ssl_check_ctr_renegotiate.exit.thread.thread
  tail call void @mbedtls_debug_print_ret(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 5971, ptr noundef nonnull @.str.144, i32 noundef %i.al) #19
  br label %.loopexit

bb.n:                                             ; preds = %ssl_check_ctr_renegotiate.exit.thread.thread, %ssl_check_ctr_renegotiate.exit.thread.thread, %ssl_check_ctr_renegotiate.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 6 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !156 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 464
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %.backedge
  %i.ba = load ptr, ptr %i.ap, align 8, !tbaa !19 ; 2 uses
  %.not89 = icmp eq ptr %i.ba, null
  br i1 %.not89, label %mbedtls_ssl_set_timer.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = load ptr, ptr %i.aq, align 8, !tbaa !18
  %i.bc = tail call i32 %i.ba(ptr noundef %i.bb) #19
  %i.bd = icmp eq i32 %i.bc, -1
  br i1 %i.bd, label %bb.q, label %mbedtls_ssl_set_timer.exit

bb.q:                                             ; preds = %bb.p
  %i.be = load ptr, ptr %i.ar, align 8, !tbaa !8
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %mbedtls_ssl_set_timer.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = load ptr, ptr %0, align 8, !tbaa !20
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 336
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !84 ; 3 uses
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 292, ptr noundef nonnull @.str.1, i32 noundef %i.bi) #19
  %i.bj = load ptr, ptr %i.ar, align 8, !tbaa !8
  %i.bk = load ptr, ptr %i.aq, align 8, !tbaa !18
  %i.bl = lshr i32 %i.bi, 2
  tail call void %i.bj(ptr noundef %i.bk, i32 noundef %i.bl, i32 noundef %i.bi) #19, !inline_history !123
  br label %mbedtls_ssl_set_timer.exit

mbedtls_ssl_set_timer.exit:                       ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %i.bm = tail call i32 @mbedtls_ssl_read_record(ptr noundef nonnull %0, i32 noundef 1) ; 3 uses
  switch i32 %i.bm, label %bb.s [
    i32 0, label %bb.t
    i32 -29312, label %.loopexit
  ]

bb.s:                                             ; preds = %mbedtls_ssl_set_timer.exit
  tail call void @mbedtls_debug_print_ret(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 5989, ptr noundef nonnull @.str.132, i32 noundef %i.bm) #19
  br label %.loopexit
end_hunk_1
