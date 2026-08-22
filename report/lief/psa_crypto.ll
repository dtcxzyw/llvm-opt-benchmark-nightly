Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/psa_crypto?download=true
inline.NumInlined: 478
inline.NumDeleted: 143
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@psa_key_derivation_output_bytes:bb.a

.fold.split78.i.i:                                ; preds = %bb.aj, %bb.aj, %bb.aj
  br label %bb.al

.fold.split79.i.i:                                ; preds = %bb.aj, %bb.aj
  br label %bb.al

.fold.split80.i.i:                                ; preds = %bb.aj, %bb.aj
  br label %bb.al

bb.al:                                            ; preds = %.fold.split80.i.i, %.fold.split79.i.i, %.fold.split78.i.i, %.fold.split77.i.i, %.fold.split.i.i81, %bb.ak, %bb.aj
  %i.dv = phi i1 [ false, %bb.aj ], [ true, %bb.ak ], [ false, %.fold.split.i.i81 ], [ false, %.fold.split80.i.i ], [ false, %.fold.split77.i.i ], [ false, %.fold.split78.i.i ], [ false, %.fold.split79.i.i ] ; 2 uses
  %i.dw = phi i8 [ 16, %bb.aj ], [ 0, %bb.ak ], [ 20, %.fold.split.i.i81 ], [ 64, %.fold.split80.i.i ], [ 28, %.fold.split77.i.i ], [ 32, %.fold.split78.i.i ], [ 48, %.fold.split79.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.dx = load i8, ptr %i.cy, align 1, !tbaa !87  ; 2 uses
  %i.dy = icmp eq i8 %i.dx, -1
  br i1 %i.dy, label %psa_key_derivation_tls12_prf_generate_next_block.exit.thread.i, label %bb.am

psa_key_derivation_tls12_prf_generate_next_block.exit.thread.i: ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %psa_crypto_local_output_alloc.exit.thread88

bb.am:                                            ; preds = %bb.al
  %i.dz = add nuw i8 %i.dx, 1
  store i8 %i.dz, ptr %i.cy, align 1, !tbaa !87
  store i8 %i.dw, ptr %i.cr, align 8, !tbaa !86
  %i.ea = load ptr, ptr %i.cz, align 8, !tbaa !88
  %i.eb = load i64, ptr %i.da, align 8, !tbaa !89 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.db, i8 0, i64 20, i1 false)
  store i16 4352, ptr %4, align 4, !tbaa !26
  %i.ec = shl i64 %i.eb, 3                        ; 2 uses
  %i.ed = icmp ugt i64 %i.ec, 65528
  %i.ee = trunc nuw i64 %i.ec to i16
  %spec.select.i.i.i.i = select i1 %i.ed, i16 -1, i16 %i.ee
  store i16 %spec.select.i.i.i.i, ptr %i.dc, align 2, !tbaa !48
  store i32 5120, ptr %i.dd, align 4, !tbaa !81
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %5, i8 0, i64 400, i1 false)
  store i8 1, ptr %i.de, align 1
  br i1 %i.dp, label %switch.lookup318, label %bb.an

switch.lookup318:                                 ; preds = %bb.am
  %switch.load320 = load i8, ptr %switch.gep319, align 1
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %switch.lookup318
  %i.ef = phi i8 [ %switch.load320, %switch.lookup318 ], [ 0, %bb.am ]
  store i8 %i.ef, ptr %i.df, align 4, !tbaa !57
  %i.eg = call i32 @mbedtls_psa_mac_sign_setup(ptr noundef nonnull %i.dh, ptr noundef nonnull %4, ptr noundef %i.ea, i64 noundef %i.eb, i32 noundef %i.dg) #20 ; 2 uses
  %cond.i.i.i70 = icmp eq i32 %i.eg, 0
  br i1 %cond.i.i.i70, label %bb.ao, label %psa_key_derivation_start_hmac.exit.i.i

psa_key_derivation_start_hmac.exit.i.i:           ; preds = %bb.an
  call void @psa_reset_key_attributes(ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %psa_mac_update.exit98.thread132.i.i

bb.ao:                                            ; preds = %bb.an
  store i32 1, ptr %5, align 8, !tbaa !55
  call void @psa_reset_key_attributes(ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.eh = load i8, ptr %i.cy, align 1, !tbaa !87
  %i.ei = icmp eq i8 %i.eh, 1
  br i1 %i.ei, label %bb.ap, label %bb.ay

bb.ap:                                            ; preds = %bb.ao
  %i.ej = load ptr, ptr %i.dj, align 8, !tbaa !90
  %i.ek = load i64, ptr %i.dk, align 8, !tbaa !91 ; 7 uses
  %i.el = load i32, ptr %5, align 8, !tbaa !55    ; 4 uses
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %psa_key_derivation_tls12_prf_generate_next_block.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.en = icmp eq i64 %i.ek, 0
  br i1 %i.en, label %.thread.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eo = call noalias ptr @calloc(i64 noundef %i.ek, i64 noundef 1) #19 ; 5 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %psa_mac_update.exit.thread126.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.eo, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.ej, i64 range(i64 1, 0) %i.ek, i1 false)
  %cond.i.i.i.i = icmp eq i32 %i.el, 1
  br i1 %cond.i.i.i.i, label %psa_driver_wrapper_mac_update.exit.i.i.i, label %psa_driver_wrapper_mac_update.exit.thread.i.i.i

psa_driver_wrapper_mac_update.exit.i.i.i:         ; preds = %bb.as
  %i.eq = call i32 @mbedtls_psa_mac_update(ptr noundef nonnull %i.dh, ptr noundef nonnull %i.eo, i64 noundef range(i64 1, 0) %i.ek) #20 ; 2 uses
  %.not17.i.i.i = icmp eq i32 %i.eq, 0
  br i1 %.not17.i.i.i, label %bb.au, label %psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i.i.i

psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i.i.i: ; preds = %psa_driver_wrapper_mac_update.exit.i.i.i
  %.pre.i.i.i = load i32, ptr %5, align 8, !tbaa !55
  br label %psa_driver_wrapper_mac_update.exit.thread.i.i.i

psa_driver_wrapper_mac_update.exit.thread.i.i.i:  ; preds = %psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i.i.i, %bb.as
  %i.er = phi i32 [ %.pre.i.i.i, %psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i.i.i ], [ %i.el, %bb.as ]
  %.0.i1828.i.i.i = phi i32 [ %i.eq, %psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i.i.i ], [ -135, %bb.as ] ; 2 uses
  switch i32 %i.er, label %psa_driver_wrapper_mac_abort.exit.i.i.i.i [
    i32 0, label %psa_mac_update.exit.thread126.i.i
    i32 1, label %bb.at
  ]

bb.at:                                            ; preds = %psa_driver_wrapper_mac_update.exit.thread.i.i.i
  %i.es = call i32 @mbedtls_psa_mac_abort(ptr noundef nonnull %i.dh) #20 ; 0 uses
  br label %psa_driver_wrapper_mac_abort.exit.i.i.i.i

psa_driver_wrapper_mac_abort.exit.i.i.i.i:        ; preds = %bb.at, %psa_driver_wrapper_mac_update.exit.thread.i.i.i
  store i8 0, ptr %i.df, align 4, !tbaa !57
  %i.et = load i8, ptr %i.de, align 1
  %i.eu = and i8 %i.et, -2
  store i8 %i.eu, ptr %i.de, align 1
  store i32 0, ptr %5, align 8, !tbaa !55
  br label %psa_mac_update.exit.thread126.i.i

psa_mac_update.exit.thread126.i.i:                ; preds = %psa_driver_wrapper_mac_abort.exit.i.i.i.i, %psa_driver_wrapper_mac_update.exit.thread.i.i.i, %bb.ar
  %.sroa.8.024.i.ph.i.i = phi i64 [ %i.ek, %psa_driver_wrapper_mac_abort.exit.i.i.i.i ], [ %i.ek, %psa_driver_wrapper_mac_update.exit.thread.i.i.i ], [ 0, %bb.ar ]
  %.0.i.ph.i.i = phi i32 [ %.0.i1828.i.i.i, %psa_driver_wrapper_mac_abort.exit.i.i.i.i ], [ %.0.i1828.i.i.i, %psa_driver_wrapper_mac_update.exit.thread.i.i.i ], [ -141, %bb.ar ]
  call void @mbedtls_zeroize_and_free(ptr noundef %i.eo, i64 noundef %.sroa.8.024.i.ph.i.i) #20
  br label %psa_mac_update.exit98.thread132.i.i

bb.au:                                            ; preds = %psa_driver_wrapper_mac_update.exit.i.i.i
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.eo, i64 noundef %i.ek) #20
  %.pr.i.i = load i32, ptr %5, align 8, !tbaa !55 ; 2 uses
  %i.ev = icmp eq i32 %.pr.i.i, 0
  br i1 %i.ev, label %psa_key_derivation_tls12_prf_generate_next_block.exit.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.au, %bb.aq
  %i.ew = phi i32 [ %.pr.i.i, %bb.au ], [ %i.el, %bb.aq ] ; 2 uses
  %i.ex = load ptr, ptr %.in152.i.i, align 8, !tbaa !92
  %i.ey = load i64, ptr %.in.i.i, align 8, !tbaa !93 ; 7 uses
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %psa_mac_update.exit98.thread.i.i, label %bb.av

bb.av:                                            ; preds = %.thread.i.i
  %i.fa = call noalias ptr @calloc(i64 noundef %i.ey, i64 noundef 1) #19 ; 5 uses
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %psa_mac_update.exit98.thread135.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fa, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.ex, i64 range(i64 1, 0) %i.ey, i1 false)
  %cond.i.i86.i.i = icmp eq i32 %i.ew, 1
  br i1 %cond.i.i86.i.i, label %psa_driver_wrapper_mac_update.exit.i94.i.i, label %psa_driver_wrapper_mac_update.exit.thread.i87.i.i

psa_driver_wrapper_mac_update.exit.i94.i.i:       ; preds = %bb.aw
  %i.fc = call i32 @mbedtls_psa_mac_update(ptr noundef nonnull %i.dh, ptr noundef nonnull %i.fa, i64 noundef range(i64 1, 0) %i.ey) #20 ; 2 uses
  %.not17.i95.i.i = icmp eq i32 %i.fc, 0
  br i1 %.not17.i95.i.i, label %psa_mac_update.exit98.i.i, label %psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i96.i.i

psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i96.i.i: ; preds = %psa_driver_wrapper_mac_update.exit.i94.i.i
  %.pre.i97.i.i = load i32, ptr %5, align 8, !tbaa !55
  br label %psa_driver_wrapper_mac_update.exit.thread.i87.i.i

psa_driver_wrapper_mac_update.exit.thread.i87.i.i: ; preds = %psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i96.i.i, %bb.aw
  %i.fd = phi i32 [ %.pre.i97.i.i, %psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i96.i.i ], [ %i.ew, %bb.aw ]
  %.0.i1828.i88.i.i = phi i32 [ %i.fc, %psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i96.i.i ], [ -135, %bb.aw ] ; 2 uses
  switch i32 %i.fd, label %psa_driver_wrapper_mac_abort.exit.i.i89.i.i [
    i32 0, label %psa_mac_update.exit98.thread135.i.i
    i32 1, label %bb.ax
  ]

bb.ax:                                            ; preds = %psa_driver_wrapper_mac_update.exit.thread.i87.i.i
  %i.fe = call i32 @mbedtls_psa_mac_abort(ptr noundef nonnull %i.dh) #20 ; 0 uses
  br label %psa_driver_wrapper_mac_abort.exit.i.i89.i.i

psa_driver_wrapper_mac_abort.exit.i.i89.i.i:      ; preds = %bb.ax, %psa_driver_wrapper_mac_update.exit.thread.i87.i.i
  store i8 0, ptr %i.df, align 4, !tbaa !57
  %i.ff = load i8, ptr %i.de, align 1
  %i.fg = and i8 %i.ff, -2
  store i8 %i.fg, ptr %i.de, align 1
  store i32 0, ptr %5, align 8, !tbaa !55
  br label %psa_mac_update.exit98.thread135.i.i

psa_mac_update.exit98.thread135.i.i:              ; preds = %psa_driver_wrapper_mac_abort.exit.i.i89.i.i, %psa_driver_wrapper_mac_update.exit.thread.i87.i.i, %bb.av
  %.sroa.8.024.i91.ph.i.i = phi i64 [ %i.ey, %psa_driver_wrapper_mac_abort.exit.i.i89.i.i ], [ %i.ey, %psa_driver_wrapper_mac_update.exit.thread.i87.i.i ], [ 0, %bb.av ]
  %.0.i92.ph.i.i = phi i32 [ %.0.i1828.i88.i.i, %psa_driver_wrapper_mac_abort.exit.i.i89.i.i ], [ %.0.i1828.i88.i.i, %psa_driver_wrapper_mac_update.exit.thread.i87.i.i ], [ -141, %bb.av ]
  call void @mbedtls_zeroize_and_free(ptr noundef %i.fa, i64 noundef %.sroa.8.024.i91.ph.i.i) #20
  br label %psa_mac_update.exit98.thread132.i.i

psa_mac_update.exit98.i.i:                        ; preds = %psa_driver_wrapper_mac_update.exit.i94.i.i
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.fa, i64 noundef %i.ey) #20
  br label %psa_mac_update.exit98.thread.i.i

bb.ay:                                            ; preds = %bb.ao
  %i.fh = zext nneg i8 %i.dw to i64               ; 6 uses
  %i.fi = load i32, ptr %5, align 8, !tbaa !55    ; 3 uses
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %psa_key_derivation_tls12_prf_generate_next_block.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  br i1 %i.dv, label %psa_mac_update.exit98.thread.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fk = call noalias ptr @calloc(i64 noundef %i.fh, i64 noundef 1) #19 ; 5 uses
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %psa_mac_update.exit111.thread144.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fk, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.di, i64 range(i64 1, 0) %i.fh, i1 false)
  %cond.i.i99.i.i = icmp eq i32 %i.fi, 1
  br i1 %cond.i.i99.i.i, label %psa_driver_wrapper_mac_update.exit.i107.i.i, label %psa_driver_wrapper_mac_update.exit.thread.i100.i.i

psa_driver_wrapper_mac_update.exit.i107.i.i:      ; preds = %bb.bb
  %i.fm = call i32 @mbedtls_psa_mac_update(ptr noundef nonnull %i.dh, ptr noundef nonnull %i.fk, i64 noundef range(i64 1, 0) %i.fh) #20 ; 2 uses
  %.not17.i108.i.i = icmp eq i32 %i.fm, 0
  br i1 %.not17.i108.i.i, label %psa_mac_update.exit111.i.i, label %psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i109.i.i

psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i109.i.i: ; preds = %psa_driver_wrapper_mac_update.exit.i107.i.i
  %.pre.i110.i.i = load i32, ptr %5, align 8, !tbaa !55
  br label %psa_driver_wrapper_mac_update.exit.thread.i100.i.i

psa_driver_wrapper_mac_update.exit.thread.i100.i.i: ; preds = %psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i109.i.i, %bb.bb
  %i.fn = phi i32 [ %.pre.i110.i.i, %psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i109.i.i ], [ %i.fi, %bb.bb ]
  %.0.i1828.i101.i.i = phi i32 [ %i.fm, %psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i109.i.i ], [ -135, %bb.bb ] ; 2 uses
  switch i32 %i.fn, label %psa_driver_wrapper_mac_abort.exit.i.i102.i.i [
    i32 0, label %psa_mac_update.exit111.thread144.i.i
    i32 1, label %bb.bc
  ]

bb.bc:                                            ; preds = %psa_driver_wrapper_mac_update.exit.thread.i100.i.i
  %i.fo = call i32 @mbedtls_psa_mac_abort(ptr noundef nonnull %i.dh) #20 ; 0 uses
  br label %psa_driver_wrapper_mac_abort.exit.i.i102.i.i

psa_driver_wrapper_mac_abort.exit.i.i102.i.i:     ; preds = %bb.bc, %psa_driver_wrapper_mac_update.exit.thread.i100.i.i
  store i8 0, ptr %i.df, align 4, !tbaa !57
  %i.fp = load i8, ptr %i.de, align 1
  %i.fq = and i8 %i.fp, -2
  store i8 %i.fq, ptr %i.de, align 1
  store i32 0, ptr %5, align 8, !tbaa !55
  br label %psa_mac_update.exit111.thread144.i.i

psa_mac_update.exit111.thread144.i.i:             ; preds = %psa_driver_wrapper_mac_abort.exit.i.i102.i.i, %psa_driver_wrapper_mac_update.exit.thread.i100.i.i, %bb.ba
  %.sroa.8.024.i104.ph.i.i = phi i64 [ %i.fh, %psa_driver_wrapper_mac_abort.exit.i.i102.i.i ], [ %i.fh, %psa_driver_wrapper_mac_update.exit.thread.i100.i.i ], [ 0, %bb.ba ]
  %.0.i105.ph.i.i = phi i32 [ %.0.i1828.i101.i.i, %psa_driver_wrapper_mac_abort.exit.i.i102.i.i ], [ %.0.i1828.i101.i.i, %psa_driver_wrapper_mac_update.exit.thread.i100.i.i ], [ -141, %bb.ba ]
  call void @mbedtls_zeroize_and_free(ptr noundef %i.fk, i64 noundef %.sroa.8.024.i104.ph.i.i) #20
  br label %psa_mac_update.exit98.thread132.i.i

psa_mac_update.exit111.i.i:                       ; preds = %psa_driver_wrapper_mac_update.exit.i107.i.i
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.fk, i64 noundef %i.fh) #20
  br label %psa_mac_update.exit98.thread.i.i

psa_mac_update.exit98.thread.i.i:                 ; preds = %psa_mac_update.exit111.i.i, %bb.az, %psa_mac_update.exit98.i.i, %.thread.i.i
  %i.fr = zext nneg i8 %i.dw to i64               ; 9 uses
  %i.fs = call i32 @psa_mac_sign_finish(ptr noundef nonnull %5, ptr noundef nonnull %i.di, i64 noundef %i.fr, ptr noundef nonnull %i.a)
  %i.ft = load i64, ptr %i.a, align 8, !tbaa !27
  %.not70.i.i = icmp eq i64 %i.ft, %i.fr
  %spec.store.select.i.i = select i1 %.not70.i.i, i32 %i.fs, i32 -151 ; 2 uses
  %.not71.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not71.i.i, label %bb.bd, label %psa_mac_update.exit98.thread132.i.i

bb.bd:                                            ; preds = %psa_mac_update.exit98.thread.i.i
  %i.fu = load ptr, ptr %i.cz, align 8, !tbaa !88
  %i.fv = load i64, ptr %i.da, align 8, !tbaa !89 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.dl, i8 0, i64 20, i1 false)
  store i16 4352, ptr %3, align 4, !tbaa !26
  %i.fw = shl i64 %i.fv, 3                        ; 2 uses
  %i.fx = icmp ugt i64 %i.fw, 65528
  %i.fy = trunc nuw i64 %i.fw to i16
  %spec.select.i.i112.i.i = select i1 %i.fx, i16 -1, i16 %i.fy
  store i16 %spec.select.i.i112.i.i, ptr %i.dm, align 2, !tbaa !48
  store i32 5120, ptr %i.dn, align 4, !tbaa !81
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %5, i8 0, i64 400, i1 false)
  store i8 1, ptr %i.de, align 1
  br i1 %i.dr, label %switch.lookup322, label %bb.be

switch.lookup322:                                 ; preds = %bb.bd
  %switch.load324 = load i8, ptr %switch.gep323, align 1
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %switch.lookup322
  %i.fz = phi i8 [ %switch.load324, %switch.lookup322 ], [ 0, %bb.bd ]
  store i8 %i.fz, ptr %i.df, align 4, !tbaa !57
  %i.ga = call i32 @mbedtls_psa_mac_sign_setup(ptr noundef nonnull %i.dh, ptr noundef nonnull %3, ptr noundef %i.fu, i64 noundef %i.fv, i32 noundef %i.dg) #20 ; 2 uses
  %cond.i114.i.i = icmp eq i32 %i.ga, 0
  br i1 %cond.i114.i.i, label %bb.bf, label %psa_key_derivation_start_hmac.exit119.i.i

psa_key_derivation_start_hmac.exit119.i.i:        ; preds = %bb.be
  call void @psa_reset_key_attributes(ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %psa_mac_update.exit98.thread132.i.i

bb.bf:                                            ; preds = %bb.be
  store i32 1, ptr %5, align 8, !tbaa !55
  call void @psa_reset_key_attributes(ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.gb = load i32, ptr %5, align 8, !tbaa !55    ; 3 uses
  %i.gc = icmp eq i32 %i.gb, 0
  br i1 %i.gc, label %psa_key_derivation_tls12_prf_generate_next_block.exit.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.dv, label %psa_mac_update.exit.thread.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gd = call noalias ptr @calloc(i64 noundef %i.fr, i64 noundef 1) #19 ; 5 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %psa_mac_update.exit.thread61.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gd, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.di, i64 range(i64 1, 0) %i.fr, i1 false)
  %cond.i.i54.i = icmp eq i32 %i.gb, 1
  br i1 %cond.i.i54.i, label %psa_driver_wrapper_mac_update.exit.i.i76, label %psa_driver_wrapper_mac_update.exit.thread.i.i72

psa_driver_wrapper_mac_update.exit.i.i76:         ; preds = %bb.bi
  %i.gf = call i32 @mbedtls_psa_mac_update(ptr noundef nonnull %i.dh, ptr noundef nonnull %i.gd, i64 noundef range(i64 1, 0) %i.fr) #20 ; 2 uses
  %.not17.i.i77 = icmp eq i32 %i.gf, 0
  br i1 %.not17.i.i77, label %psa_mac_update.exit.i80, label %psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i.i78

psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i.i78: ; preds = %psa_driver_wrapper_mac_update.exit.i.i76
  %.pre.i.i79 = load i32, ptr %5, align 8, !tbaa !55
  br label %psa_driver_wrapper_mac_update.exit.thread.i.i72

psa_driver_wrapper_mac_update.exit.thread.i.i72:  ; preds = %psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i.i78, %bb.bi
  %i.gg = phi i32 [ %.pre.i.i79, %psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i.i78 ], [ %i.gb, %bb.bi ]
  %.0.i1828.i.i73 = phi i32 [ %i.gf, %psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i.i78 ], [ -135, %bb.bi ] ; 2 uses
  switch i32 %i.gg, label %psa_driver_wrapper_mac_abort.exit.i.i55.i [
    i32 0, label %psa_mac_update.exit.thread61.i
    i32 1, label %bb.bj
  ]

bb.bj:                                            ; preds = %psa_driver_wrapper_mac_update.exit.thread.i.i72
  %i.gh = call i32 @mbedtls_psa_mac_abort(ptr noundef nonnull %i.dh) #20 ; 0 uses
  br label %psa_driver_wrapper_mac_abort.exit.i.i55.i

psa_driver_wrapper_mac_abort.exit.i.i55.i:        ; preds = %bb.bj, %psa_driver_wrapper_mac_update.exit.thread.i.i72
  store i8 0, ptr %i.df, align 4, !tbaa !57
  %i.gi = load i8, ptr %i.de, align 1
  %i.gj = and i8 %i.gi, -2
  store i8 %i.gj, ptr %i.de, align 1
  store i32 0, ptr %5, align 8, !tbaa !55
  br label %psa_mac_update.exit.thread61.i

psa_mac_update.exit.thread61.i:                   ; preds = %psa_driver_wrapper_mac_abort.exit.i.i55.i, %psa_driver_wrapper_mac_update.exit.thread.i.i72, %bb.bh
  %.sroa.8.024.i.ph.i74 = phi i64 [ %i.fr, %psa_driver_wrapper_mac_abort.exit.i.i55.i ], [ %i.fr, %psa_driver_wrapper_mac_update.exit.thread.i.i72 ], [ 0, %bb.bh ]
  %.0.i.ph.i75 = phi i32 [ %.0.i1828.i.i73, %psa_driver_wrapper_mac_abort.exit.i.i55.i ], [ %.0.i1828.i.i73, %psa_driver_wrapper_mac_update.exit.thread.i.i72 ], [ -141, %bb.bh ]
  call void @mbedtls_zeroize_and_free(ptr noundef %i.gd, i64 noundef %.sroa.8.024.i.ph.i74) #20
  br label %psa_mac_update.exit98.thread132.i.i

psa_mac_update.exit.i80:                          ; preds = %psa_driver_wrapper_mac_update.exit.i.i76
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.gd, i64 noundef %i.fr) #20
  br label %psa_mac_update.exit.thread.i

psa_mac_update.exit.thread.i:                     ; preds = %psa_mac_update.exit.i80, %bb.bg
  %i.gk = load ptr, ptr %i.dj, align 8, !tbaa !90
  %i.gl = load i64, ptr %i.dk, align 8, !tbaa !91
  %i.gm = call i32 @psa_mac_update(ptr noundef nonnull %5, ptr noundef %i.gk, i64 noundef %i.gl) ; 2 uses
  %.not74.i.i = icmp eq i32 %i.gm, 0
  br i1 %.not74.i.i, label %bb.bk, label %psa_mac_update.exit98.thread132.i.i

bb.bk:                                            ; preds = %psa_mac_update.exit.thread.i
  %i.gn = load ptr, ptr %.in152.i.i, align 8, !tbaa !92
  %i.go = load i64, ptr %.in.i.i, align 8, !tbaa !93
  %i.gp = call i32 @psa_mac_update(ptr noundef nonnull %5, ptr noundef %i.gn, i64 noundef %i.go) ; 2 uses
  %.not75.i.i = icmp eq i32 %i.gp, 0
  br i1 %.not75.i.i, label %bb.bl, label %psa_mac_update.exit98.thread132.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.gq = call i32 @psa_mac_sign_finish(ptr noundef nonnull %5, ptr noundef nonnull %i.do, i64 noundef %i.fr, ptr noundef nonnull %i.a)
  br label %psa_mac_update.exit98.thread132.i.i

psa_mac_update.exit98.thread132.i.i:              ; preds = %bb.bl, %bb.bk, %psa_mac_update.exit.thread.i, %psa_mac_update.exit.thread61.i, %psa_key_derivation_start_hmac.exit119.i.i, %psa_mac_update.exit98.thread.i.i, %psa_mac_update.exit111.thread144.i.i, %psa_mac_update.exit98.thread135.i.i, %psa_mac_update.exit.thread126.i.i, %psa_key_derivation_start_hmac.exit.i.i
  %.0.ph.ph.i.ph.i = phi i32 [ %i.eg, %psa_key_derivation_start_hmac.exit.i.i ], [ %.0.i105.ph.i.i, %psa_mac_update.exit111.thread144.i.i ], [ %i.gq, %bb.bl ], [ %i.gp, %bb.bk ], [ %i.gm, %psa_mac_update.exit.thread.i ], [ %.0.i.ph.i75, %psa_mac_update.exit.thread61.i ], [ %i.ga, %psa_key_derivation_start_hmac.exit119.i.i ], [ %spec.store.select.i.i, %psa_mac_update.exit98.thread.i.i ], [ %.0.i92.ph.i.i, %psa_mac_update.exit98.thread135.i.i ], [ %.0.i.ph.i.i, %psa_mac_update.exit.thread126.i.i ] ; 3 uses
  %.pr148.pr.i.pr.i = load i32, ptr %5, align 8, !tbaa !55 ; 2 uses
  switch i32 %.pr148.pr.i.pr.i, label %psa_driver_wrapper_mac_abort.exit.i.i.i71 [
    i32 0, label %psa_key_derivation_tls12_prf_generate_next_block.exit.i
    i32 1, label %bb.bm
  ]

bb.bm:                                            ; preds = %psa_mac_update.exit98.thread132.i.i
  %i.gr = call i32 @mbedtls_psa_mac_abort(ptr noundef nonnull %i.dh) #20
  br label %psa_key_derivation_tls12_prf_generate_next_block.exit.i

psa_driver_wrapper_mac_abort.exit.i.i.i71:        ; preds = %psa_mac_update.exit98.thread132.i.i
  br label %psa_key_derivation_tls12_prf_generate_next_block.exit.i

psa_key_derivation_tls12_prf_generate_next_block.exit.i: ; preds = %psa_driver_wrapper_mac_abort.exit.i.i.i71, %bb.bm, %psa_mac_update.exit98.thread132.i.i, %bb.bf, %bb.ay, %bb.au, %bb.ap
  %.0151.i.i = phi i32 [ -137, %bb.au ], [ %.0.ph.ph.i.ph.i, %psa_mac_update.exit98.thread132.i.i ], [ -137, %bb.ap ], [ -137, %bb.ay ], [ %.0.ph.ph.i.ph.i, %bb.bm ], [ %.0.ph.ph.i.ph.i, %psa_driver_wrapper_mac_abort.exit.i.i.i71 ], [ -137, %bb.bf ] ; 2 uses
  %.0.i120.i.i = phi i32 [ 0, %bb.au ], [ %.pr148.pr.i.pr.i, %psa_mac_update.exit98.thread132.i.i ], [ 0, %bb.ap ], [ 0, %bb.ay ], [ %i.gr, %bb.bm ], [ -135, %psa_driver_wrapper_mac_abort.exit.i.i.i71 ], [ 0, %bb.bf ] ; 2 uses
  %i.gs = icmp eq i32 %.0151.i.i, 0
  %i.gt = icmp ne i32 %.0.i120.i.i, 0
  %or.cond.i.i = select i1 %i.gs, i1 %i.gt, i1 false
  %spec.select.i.i = select i1 %or.cond.i.i, i32 %.0.i120.i.i, i32 %.0151.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not43.i = icmp eq i32 %spec.select.i.i, 0
  br i1 %.not43.i, label %.outer.split.i, label %psa_crypto_local_output_alloc.exit.thread88, !llvm.loop !94

.outer.i:                                         ; preds = %.outer.split.i
  %i.gu = zext i8 %i.dt to i64
  %.069.i = call i64 @llvm.umin.i64(i64 %.038.ph.i144, i64 %i.gu) ; 4 uses
  %.0.i69 = trunc nuw i64 %.069.i to i8
  %i.gv = sub i8 %i.cv, %i.dt
  %i.gw = zext i8 %i.gv to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.gw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.039.ph.i143, ptr nonnull align 1 %i.gx, i64 %.069.i, i1 false)
  %i.gy = getelementptr inbounds nuw i8, ptr %.039.ph.i143, i64 %.069.i
  %i.gz = sub i64 %.038.ph.i144, %.069.i          ; 2 uses
  %i.ha = sub i8 %i.dt, %.0.i69
  store i8 %i.ha, ptr %i.cr, align 8, !tbaa !86
  %.not.i68 = icmp eq i64 %i.gz, 0
  br i1 %.not.i68, label %psa_crypto_local_output_alloc.exit.thread95, label %.outer.split.i.preheader, !llvm.loop !94

bb.bn:                                            ; preds = %bb.h
  %i.hb = icmp eq i32 %.0.i, 134219273
  br i1 %i.hb, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hd = tail call fastcc i32 @psa_key_derivation_tls12_ecjpake_to_pms_read(ptr noundef nonnull %i.hc, ptr noundef %i.p, i64 noundef %2)
  br label %psa_crypto_local_output_alloc.exit

bb.bp:                                            ; preds = %bb.bn
  %i.he = icmp eq i32 %i.t, 142606592
  %i.hf = icmp eq i32 %.0.i, 142606848
  %or.cond = or i1 %i.hf, %i.he
  br i1 %or.cond, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hh = tail call fastcc i32 @psa_key_derivation_pbkdf2_read(ptr noundef nonnull %i.hg, i32 noundef %.0.i, ptr noundef %i.p, i64 noundef %2)
  br label %psa_crypto_local_output_alloc.exit

bb.br:                                            ; preds = %bb.bp
  %i.hi = call i32 @psa_crypto_local_output_free(ptr noundef nonnull %7) ; 2 uses
  %.not60 = icmp eq i32 %i.hi, 0
  %spec.select = select i1 %.not60, i32 -137, i32 %i.hi
  br label %psa_crypto_local_output_free.exit

psa_crypto_local_output_alloc.exit:               ; preds = %psa_key_derivation_hkdf_read.exit, %bb.bo, %bb.bq
  %.1 = phi i32 [ %i.hh, %bb.bq ], [ %i.hd, %bb.bo ], [ %.2.i, %psa_key_derivation_hkdf_read.exit ] ; 2 uses
  %.not61 = icmp eq i32 %.1, 0
  br i1 %.not61, label %psa_crypto_local_output_alloc.exit.thread95, label %psa_crypto_local_output_alloc.exit.thread88

psa_crypto_local_output_alloc.exit.thread88:      ; preds = %psa_key_derivation_tls12_prf_generate_next_block.exit.i, %bb.ag, %psa_key_derivation_tls12_prf_generate_next_block.exit.thread.i, %bb.c, %bb.g, %psa_crypto_local_output_alloc.exit
  %i.hj = phi ptr [ %i.p, %psa_crypto_local_output_alloc.exit ], [ %i.p, %bb.g ], [ %i.p, %psa_key_derivation_tls12_prf_generate_next_block.exit.thread.i ], [ %i.p, %bb.ag ], [ null, %bb.c ], [ %i.p, %psa_key_derivation_tls12_prf_generate_next_block.exit.i ] ; 2 uses
  %.192 = phi i32 [ %.1, %psa_crypto_local_output_alloc.exit ], [ -143, %bb.g ], [ -151, %psa_key_derivation_tls12_prf_generate_next_block.exit.thread.i ], [ -137, %bb.ag ], [ -141, %bb.c ], [ %spec.select.i.i, %psa_key_derivation_tls12_prf_generate_next_block.exit.i ] ; 2 uses
  %i.hk = load i32, ptr %0, align 8, !tbaa !75
  %i.hl = call i32 @psa_key_derivation_abort(ptr noundef nonnull %0) ; 0 uses
  store i32 %i.hk, ptr %0, align 8, !tbaa !75
  %.not62 = icmp eq ptr %i.hj, null
  br i1 %.not62, label %psa_crypto_local_output_free.exit, label %bb.bs

bb.bs:                                            ; preds = %psa_crypto_local_output_alloc.exit.thread88
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.hj, i8 33, i64 %2, i1 false)
  %.phi.trans.insert186 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre187 = load ptr, ptr %.phi.trans.insert186, align 8, !tbaa !42
  br label %psa_crypto_local_output_alloc.exit.thread95

psa_crypto_local_output_alloc.exit.thread95:      ; preds = %.outer.i, %bb.ai, %bb.bs, %psa_crypto_local_output_alloc.exit
  %i.hm = phi ptr [ %i.p, %bb.ai ], [ %.pre187, %bb.bs ], [ %i.p, %psa_crypto_local_output_alloc.exit ], [ %i.p, %.outer.i ] ; 3 uses
  %.193 = phi i32 [ 0, %bb.ai ], [ %.192, %bb.bs ], [ 0, %psa_crypto_local_output_alloc.exit ], [ 0, %.outer.i ] ; 2 uses
  %i.hn = icmp eq ptr %i.hm, null
  br i1 %i.hn, label %psa_crypto_local_output_free.exit, label %bb.bt

bb.bt:                                            ; preds = %psa_crypto_local_output_alloc.exit.thread95
  %i.ho = load ptr, ptr %7, align 8, !tbaa !45    ; 2 uses
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %psa_crypto_local_output_free.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !44 ; 3 uses
  %.not.i.i = icmp eq i64 %i.hr, 0
  br i1 %.not.i.i, label %psa_crypto_copy_output.exit.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ho, ptr nonnull readonly align 1 %i.hm, i64 %i.hr, i1 false)
  br label %psa_crypto_copy_output.exit.i

psa_crypto_copy_output.exit.i:                    ; preds = %bb.bv, %bb.bu
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.hm, i64 noundef %i.hr) #20
  br label %psa_crypto_local_output_free.exit

psa_crypto_local_output_free.exit:                ; preds = %psa_crypto_local_output_alloc.exit.thread95, %psa_crypto_local_output_alloc.exit.thread88, %bb.bt, %psa_crypto_copy_output.exit.i, %bb.e, %bb.a, %bb.br
  %.051 = phi i32 [ %spec.select, %bb.br ], [ -137, %bb.a ], [ -143, %bb.e ], [ -151, %bb.bt ], [ %.193, %psa_crypto_copy_output.exit.i ], [ %.193, %psa_crypto_local_output_alloc.exit.thread95 ], [ %.192, %psa_crypto_local_output_alloc.exit.thread88 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  ret i32 %.051
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @psa_key_derivation_tls12_ecjpake_to_pms_read(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address) %1, i64 noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 0, ptr %i.a, align 8, !tbaa !27
  %.not = icmp eq i64 %2, 32
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = call i32 @psa_hash_compute(i32 noundef 33554441, ptr noundef %0, i64 noundef 32, ptr noundef %1, i64 noundef 32, ptr noundef nonnull %i.a) ; 2 uses
  %.not9 = icmp eq i32 %i.b, 0
  br i1 %.not9, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = load i64, ptr %i.a, align 8, !tbaa !27
  %.not10 = icmp eq i64 %i.c, 32
  %. = select i1 %.not10, i32 0, i32 -132
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
end_hunk_0
begin_hunk_1_@psa_key_derivation_pbkdf2_read:bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not154 = icmp eq i64 %3, 0
  br i1 %.not154, label %.thread67, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 5 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = zext nneg i8 %.047 to i64               ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ad = load i8, ptr %i.r, align 8, !tbaa !99   ; 2 uses
  %i.ae = sub i8 %.047, %i.ad
  %i.af = zext i8 %i.ae to i64
  %spec.select80287 = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.af) ; 4 uses
  %spec.select288 = trunc nuw i64 %spec.select80287 to i8
  %i.ag = zext i8 %i.ad to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr nonnull align 1 %i.ah, i64 %spec.select80287, i1 false)
  %i.ai = sub i64 %3, %spec.select80287           ; 2 uses
  %i.aj = load i8, ptr %i.r, align 8, !tbaa !99
  %i.ak = add i8 %i.aj, %spec.select288
  store i8 %i.ak, ptr %i.r, align 8, !tbaa !99
  %i.al = icmp eq i64 %i.ai, 0
  br i1 %i.al, label %.thread67, label %.lr.ph289

.lr.ph289:                                        ; preds = %.lr.ph
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 %spec.select80287
  %i.an = or disjoint i64 %i.ab, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.an, i64 16)
  %i.ao = add nsw i64 %umax, -9
  %i.ap = and i64 %i.ao, -8                       ; 2 uses
  %i.aq = add nuw nsw i64 %i.ap, 9
  %umax290 = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 %i.ab) ; 2 uses
  %i.ar = add i64 %umax290, -8
  %i.as = sub i64 %i.ar, %i.ap                    ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %min.iters.check = icmp ult i64 %i.as, 4
  %min.iters.check291 = icmp ult i64 %i.as, 16
  %i.bh = and i64 %i.as, 12
  %n.vec = and i64 %i.as, -16                     ; 4 uses
  %cmp.n = icmp eq i64 %i.as, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.bh, 0
  %i.bi = and i64 %umax290, 1                     ; 2 uses
  %n.vec295 = sub i64 %i.as, %i.bi                ; 2 uses
  %cmp.n300 = icmp eq i64 %i.bi, 0
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph289, %psa_key_derivation_pbkdf2_generate_block.exit.thread75
  %i.bj = phi i64 [ %i.ai, %.lr.ph289 ], [ %i.eh, %psa_key_derivation_pbkdf2_generate_block.exit.thread75 ] ; 2 uses
  %i.bk = phi ptr [ %i.am, %.lr.ph289 ], [ %i.eg, %psa_key_derivation_pbkdf2_generate_block.exit.thread75 ] ; 2 uses
  store i8 0, ptr %i.r, align 8, !tbaa !99
  %i.bl = load i32, ptr %i.t, align 4, !tbaa !100
  %i.bm = add i32 %i.bl, 1                        ; 2 uses
  store i32 %i.bm, ptr %i.t, align 4, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %4, i8 0, i64 400, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i8 1, ptr %i.u, align 1
  store i8 %.047, ptr %i.v, align 4, !tbaa !57
  %i.bn = call i32 @llvm.bswap.i32(i32 %i.bm)
  %.val.i.i = load i32, ptr %i.x, align 4, !tbaa !41
  %cond.i.i = icmp ult i32 %.val.i.i, 256
  br i1 %cond.i.i, label %bb.i, label %.thread67.sink.split

bb.i:                                             ; preds = %bb.h
  %i.bo = load i64, ptr %i.d, align 8, !tbaa !96
  %i.bp = call i32 @mbedtls_psa_mac_sign_setup(ptr noundef nonnull %i.y, ptr noundef nonnull %5, ptr noundef nonnull %i.w, i64 noundef %i.bo, i32 noundef range(i32 58720256, 62915073) %.048) #20 ; 2 uses
  %cond = icmp eq i32 %i.bp, 0
  br i1 %cond, label %.thread.i, label %.thread67.sink.split

.thread.i:                                        ; preds = %bb.i
  store i32 1, ptr %4, align 8, !tbaa !55
  %i.bq = load ptr, ptr %i.z, align 8, !tbaa !101
  %i.br = load i64, ptr %i.aa, align 8, !tbaa !102 ; 7 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %psa_mac_update.exit.thread.thread.i, label %bb.j

bb.j:                                             ; preds = %.thread.i
  %i.bt = call noalias ptr @calloc(i64 noundef %i.br, i64 noundef 1) #19 ; 5 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %psa_mac_update.exit.thread72.i, label %psa_driver_wrapper_mac_update.exit.i.i

psa_driver_wrapper_mac_update.exit.i.i:           ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bt, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.bq, i64 range(i64 1, 0) %i.br, i1 false)
  %i.bv = call i32 @mbedtls_psa_mac_update(ptr noundef nonnull %i.y, ptr noundef nonnull %i.bt, i64 noundef range(i64 1, 0) %i.br) #20 ; 3 uses
  %.not17.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not17.i.i, label %psa_mac_update.exit.thread.i, label %psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i.i

psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i.i: ; preds = %psa_driver_wrapper_mac_update.exit.i.i
  %.pre.i.i = load i32, ptr %4, align 8, !tbaa !55
  switch i32 %.pre.i.i, label %psa_driver_wrapper_mac_abort.exit.i.i.i [
    i32 0, label %psa_mac_update.exit.thread72.i
    i32 1, label %bb.k
  ]

bb.k:                                             ; preds = %psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i.i
  %i.bw = call i32 @mbedtls_psa_mac_abort(ptr noundef nonnull %i.y) #20 ; 0 uses
  br label %psa_driver_wrapper_mac_abort.exit.i.i.i

psa_driver_wrapper_mac_abort.exit.i.i.i:          ; preds = %bb.k, %psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i.i
  store i8 0, ptr %i.v, align 4, !tbaa !57
  %i.bx = load i8, ptr %i.u, align 1
  %i.by = and i8 %i.bx, -2
  store i8 %i.by, ptr %i.u, align 1
  store i32 0, ptr %4, align 8, !tbaa !55
  br label %psa_mac_update.exit.thread72.i

psa_mac_update.exit.thread72.i:                   ; preds = %bb.j, %psa_driver_wrapper_mac_abort.exit.i.i.i, %psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i.i
  %.sroa.8.024.i.ph.i = phi i64 [ %i.br, %psa_driver_wrapper_mac_abort.exit.i.i.i ], [ %i.br, %psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i.i ], [ 0, %bb.j ]
  %.0.i45.ph.i = phi i32 [ %i.bv, %psa_driver_wrapper_mac_abort.exit.i.i.i ], [ %i.bv, %psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i.i ], [ -141, %bb.j ]
  call void @mbedtls_zeroize_and_free(ptr noundef %i.bt, i64 noundef %.sroa.8.024.i.ph.i) #20
  br label %.thread67.sink.split

psa_mac_update.exit.thread.i:                     ; preds = %psa_driver_wrapper_mac_update.exit.i.i
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.bt, i64 noundef %i.br) #20
  %.pre.i = load i32, ptr %4, align 8, !tbaa !55  ; 2 uses
  %i.bz = icmp eq i32 %.pre.i, 0
  br i1 %i.bz, label %.thread67.sink.split, label %psa_mac_update.exit.thread.thread.i

psa_mac_update.exit.thread.thread.i:              ; preds = %psa_mac_update.exit.thread.i, %.thread.i
  %i.ca = phi i32 [ %.pre.i, %psa_mac_update.exit.thread.i ], [ 1, %.thread.i ] ; 2 uses
  %i.cb = call noalias dereferenceable_or_null(4) ptr @calloc(i64 noundef 4, i64 noundef 1) #19 ; 5 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %psa_mac_update.exit58.thread78.i, label %bb.l

bb.l:                                             ; preds = %psa_mac_update.exit.thread.thread.i
  store i32 %i.bn, ptr %i.cb, align 1
  %cond.i.i46.i = icmp eq i32 %i.ca, 1
  br i1 %cond.i.i46.i, label %psa_driver_wrapper_mac_update.exit.i54.i, label %psa_driver_wrapper_mac_update.exit.thread.i47.i

psa_driver_wrapper_mac_update.exit.i54.i:         ; preds = %bb.l
  %i.cd = call i32 @mbedtls_psa_mac_update(ptr noundef nonnull %i.y, ptr noundef nonnull %i.cb, i64 noundef range(i64 1, 0) 4) #20 ; 2 uses
  %.not17.i55.i = icmp eq i32 %i.cd, 0
  br i1 %.not17.i55.i, label %bb.n, label %psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i56.i

psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i56.i: ; preds = %psa_driver_wrapper_mac_update.exit.i54.i
  %.pre.i57.i = load i32, ptr %4, align 8, !tbaa !55
  br label %psa_driver_wrapper_mac_update.exit.thread.i47.i

psa_driver_wrapper_mac_update.exit.thread.i47.i:  ; preds = %bb.l, %psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i56.i
  %i.ce = phi i32 [ %.pre.i57.i, %psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i56.i ], [ %i.ca, %bb.l ]
  %.0.i1828.i48.i = phi i32 [ %i.cd, %psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i56.i ], [ -135, %bb.l ] ; 2 uses
  switch i32 %i.ce, label %psa_driver_wrapper_mac_abort.exit.i.i49.i [
    i32 0, label %psa_mac_update.exit58.thread78.i
    i32 1, label %bb.m
  ]

bb.m:                                             ; preds = %psa_driver_wrapper_mac_update.exit.thread.i47.i
  %i.cf = call i32 @mbedtls_psa_mac_abort(ptr noundef nonnull %i.y) #20 ; 0 uses
  br label %psa_driver_wrapper_mac_abort.exit.i.i49.i

psa_driver_wrapper_mac_abort.exit.i.i49.i:        ; preds = %bb.m, %psa_driver_wrapper_mac_update.exit.thread.i47.i
  store i8 0, ptr %i.v, align 4, !tbaa !57
  %i.cg = load i8, ptr %i.u, align 1
  %i.ch = and i8 %i.cg, -2
  store i8 %i.ch, ptr %i.u, align 1
  store i32 0, ptr %4, align 8, !tbaa !55
  br label %psa_mac_update.exit58.thread78.i

psa_mac_update.exit58.thread78.i:                 ; preds = %psa_mac_update.exit.thread.thread.i, %psa_driver_wrapper_mac_abort.exit.i.i49.i, %psa_driver_wrapper_mac_update.exit.thread.i47.i
  %.sroa.8.024.i51.ph.i = phi i64 [ 4, %psa_driver_wrapper_mac_abort.exit.i.i49.i ], [ 4, %psa_driver_wrapper_mac_update.exit.thread.i47.i ], [ 0, %psa_mac_update.exit.thread.thread.i ]
  %.0.i52.ph.i = phi i32 [ %.0.i1828.i48.i, %psa_driver_wrapper_mac_abort.exit.i.i49.i ], [ %.0.i1828.i48.i, %psa_driver_wrapper_mac_update.exit.thread.i47.i ], [ -141, %psa_mac_update.exit.thread.thread.i ]
  call void @mbedtls_zeroize_and_free(ptr noundef %i.cb, i64 noundef %.sroa.8.024.i51.ph.i) #20
  br label %.thread67.sink.split

bb.n:                                             ; preds = %psa_driver_wrapper_mac_update.exit.i54.i
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.cb, i64 noundef 4) #20
  %i.ci = call i32 @psa_mac_sign_finish(ptr noundef nonnull %4, ptr noundef nonnull %i.b, i64 noundef 64, ptr noundef nonnull %i.a) ; 2 uses
  %.not40.i = icmp eq i32 %i.ci, 0
  br i1 %.not40.i, label %bb.o, label %.thread67.sink.split

bb.o:                                             ; preds = %bb.n
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !27
  %.not41.i = icmp eq i64 %i.cj, %i.ab
  br i1 %.not41.i, label %bb.p, label %.thread67.sink.split

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 16 %i.b, i64 %i.ab, i1 false)
  %i.ck = load i64, ptr %i.ac, align 8, !tbaa !103
  %i.cl = icmp ugt i64 %i.ck, 1
  br i1 %i.cl, label %.lr.ph90.i, label %psa_key_derivation_pbkdf2_generate_block.exit.thread75

.lr.ph90.i:                                       ; preds = %bb.p
  br i1 %.not.i85.i, label %.lr.ph90.split.us.split.i, label %.lr.ph90.split.i

.lr.ph90.split.us.split.i:                        ; preds = %.lr.ph90.i, %.preheader84.us.i
  %.089.us.i = phi i64 [ %i.co, %.preheader84.us.i ], [ 1, %.lr.ph90.i ]
  %.val.i59.us.i = load i32, ptr %i.x, align 4, !tbaa !41
  %cond.i60.us.i = icmp ult i32 %.val.i59.us.i, 256
  br i1 %cond.i60.us.i, label %psa_driver_wrapper_mac_compute.exit.us.i, label %.thread67.sink.split

psa_driver_wrapper_mac_compute.exit.us.i:         ; preds = %.lr.ph90.split.us.split.i
  %i.cm = load i64, ptr %i.d, align 8, !tbaa !96
  %i.cn = call i32 @mbedtls_psa_mac_compute(ptr noundef nonnull %5, ptr noundef nonnull %i.w, i64 noundef %i.cm, i32 noundef range(i32 58720256, 62915073) %.048, ptr noundef nonnull %i.b, i64 noundef %i.ab, ptr noundef nonnull %i.b, i64 noundef range(i64 0, 256) %i.ab, ptr noundef nonnull %i.a) #20 ; 2 uses
  %.not42.us.i = icmp eq i32 %i.cn, 0
  br i1 %.not42.us.i, label %.preheader84.us.i, label %.thread67.sink.split

.preheader84.us.i:                                ; preds = %psa_driver_wrapper_mac_compute.exit.us.i
  %i.co = add nuw i64 %.089.us.i, 1               ; 2 uses
  %i.cp = load i64, ptr %i.ac, align 8, !tbaa !103
  %i.cq = icmp ult i64 %i.co, %i.cp
  br i1 %i.cq, label %.lr.ph90.split.us.split.i, label %psa_key_derivation_pbkdf2_generate_block.exit.thread75, !llvm.loop !104

.lr.ph90.split.i:                                 ; preds = %.lr.ph90.i, %mbedtls_xor.exit.i
  %.089.i = phi i64 [ %i.dy, %mbedtls_xor.exit.i ], [ 1, %.lr.ph90.i ]
  %.val.i59.i = load i32, ptr %i.x, align 4, !tbaa !41
  %cond.i60.i = icmp ult i32 %.val.i59.i, 256
  br i1 %cond.i60.i, label %psa_driver_wrapper_mac_compute.exit.i, label %.thread67.sink.split

psa_driver_wrapper_mac_compute.exit.i:            ; preds = %.lr.ph90.split.i
  %i.cr = load i64, ptr %i.d, align 8, !tbaa !96
  %i.cs = call i32 @mbedtls_psa_mac_compute(ptr noundef nonnull %5, ptr noundef nonnull %i.w, i64 noundef %i.cr, i32 noundef range(i32 58720256, 62915073) %.048, ptr noundef nonnull %i.b, i64 noundef %i.ab, ptr noundef nonnull %i.b, i64 noundef range(i64 0, 256) %i.ab, ptr noundef nonnull %i.a) #20 ; 2 uses
  %.not42.i = icmp eq i32 %i.cs, 0
  br i1 %.not42.i, label %.preheader84.i, label %.thread67.sink.split

..preheader_crit_edge.i:                          ; preds = %.preheader84.i.6, %.preheader84.i.4, %.preheader84.i.3, %.preheader84.i.2, %.preheader84.i.1, %.preheader84.i
  %.lcssa = phi i64 [ 8, %.preheader84.i ], [ 16, %.preheader84.i.1 ], [ 24, %.preheader84.i.2 ], [ 32, %.preheader84.i.3 ], [ 64, %.preheader84.i.6 ], [ 48, %.preheader84.i.4 ] ; 6 uses
  %i.ct = icmp samesign ult i64 %.lcssa, %i.ab
  br i1 %i.ct, label %iter.check, label %mbedtls_xor.exit.i

iter.check:                                       ; preds = %..preheader_crit_edge.i
  br i1 %min.iters.check, label %.lr.ph88.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check291, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cu = add i64 %.lcssa, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cv = add nuw i64 %.lcssa, %index             ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.cv ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  %wide.load = load <8 x i8>, ptr %i.cw, align 1, !tbaa !29
  %wide.load292 = load <8 x i8>, ptr %i.cx, align 1, !tbaa !29
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cv ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %wide.load293 = load <8 x i8>, ptr %i.cy, align 8, !tbaa !29
  %wide.load294 = load <8 x i8>, ptr %i.cz, align 8, !tbaa !29
  %i.da = xor <8 x i8> %wide.load293, %wide.load
  %i.db = xor <8 x i8> %wide.load294, %wide.load292
  store <8 x i8> %i.da, ptr %i.cw, align 1, !tbaa !29
  store <8 x i8> %i.db, ptr %i.cx, align 1, !tbaa !29
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %mbedtls_xor.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph88.i.preheader, label %vec.epilog.ph, !prof !108

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.dd = add i64 %.lcssa, %n.vec295
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index296 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next299, %vec.epilog.vector.body ] ; 2 uses
  %i.de = add nuw i64 %.lcssa, %index296          ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.de ; 2 uses
  %wide.load297 = load <4 x i8>, ptr %i.df, align 1, !tbaa !29
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.de
  %wide.load298 = load <4 x i8>, ptr %i.dg, align 4, !tbaa !29
  %i.dh = xor <4 x i8> %wide.load298, %wide.load297
  store <4 x i8> %i.dh, ptr %i.df, align 1, !tbaa !29
  %index.next299 = add nuw i64 %index296, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next299, %n.vec295
  br i1 %i.di, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !109

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n300, label %mbedtls_xor.exit.i, label %.lr.ph88.i.preheader

.lr.ph88.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1.i87.i.ph = phi i64 [ %.lcssa, %iter.check ], [ %i.cu, %vec.epilog.iter.check ], [ %i.dd, %vec.epilog.middle.block ]
  br label %.lr.ph88.i

.preheader84.i:                                   ; preds = %psa_driver_wrapper_mac_compute.exit.i
  %.0.copyload.i43.i = load i64, ptr %i.s, align 8
  %.0.copyload.i.i = load i64, ptr %i.b, align 16
  %i.dj = xor i64 %.0.copyload.i.i, %.0.copyload.i43.i
  store i64 %i.dj, ptr %i.s, align 8
  br i1 %.not.i85.i, label %..preheader_crit_edge.i, label %.preheader84.i.1

.preheader84.i.1:                                 ; preds = %.preheader84.i
  %.0.copyload.i43.i.1 = load i64, ptr %i.at, align 8
  %.0.copyload.i.i.1 = load i64, ptr %i.au, align 8
  %i.dk = xor i64 %.0.copyload.i.i.1, %.0.copyload.i43.i.1
  store i64 %i.dk, ptr %i.at, align 8
  br i1 %.not.i.i.1, label %..preheader_crit_edge.i, label %.preheader84.i.2

.preheader84.i.2:                                 ; preds = %.preheader84.i.1
  %.0.copyload.i43.i.2 = load i64, ptr %i.av, align 8
  %.0.copyload.i.i.2 = load i64, ptr %i.aw, align 16
  %i.dl = xor i64 %.0.copyload.i.i.2, %.0.copyload.i43.i.2
  store i64 %i.dl, ptr %i.av, align 8
  br i1 %.not.i.i.2, label %..preheader_crit_edge.i, label %.preheader84.i.3

.preheader84.i.3:                                 ; preds = %.preheader84.i.2
  %.0.copyload.i43.i.3 = load i64, ptr %i.ax, align 8
  %.0.copyload.i.i.3 = load i64, ptr %i.ay, align 8
  %i.dm = xor i64 %.0.copyload.i.i.3, %.0.copyload.i43.i.3
  store i64 %i.dm, ptr %i.ax, align 8
  br i1 %.not.i.i.3, label %..preheader_crit_edge.i, label %.preheader84.i.4

.preheader84.i.4:                                 ; preds = %.preheader84.i.3
  %.0.copyload.i43.i.4 = load i64, ptr %i.az, align 8
  %.0.copyload.i.i.4 = load i64, ptr %i.ba, align 16
  %i.dn = xor i64 %.0.copyload.i.i.4, %.0.copyload.i43.i.4
  store i64 %i.dn, ptr %i.az, align 8
  %.0.copyload.i43.i.5 = load i64, ptr %i.bb, align 8
  %.0.copyload.i.i.5 = load i64, ptr %i.bc, align 8
  %i.do = xor i64 %.0.copyload.i.i.5, %.0.copyload.i43.i.5
  store i64 %i.do, ptr %i.bb, align 8
  br i1 %.not.i.i.5, label %..preheader_crit_edge.i, label %.preheader84.i.6

.preheader84.i.6:                                 ; preds = %.preheader84.i.4
  %.0.copyload.i43.i.6 = load i64, ptr %i.bd, align 8
  %.0.copyload.i.i.6 = load i64, ptr %i.be, align 16
  %i.dp = xor i64 %.0.copyload.i.i.6, %.0.copyload.i43.i.6
  store i64 %i.dp, ptr %i.bd, align 8
  %.0.copyload.i43.i.7 = load i64, ptr %i.bf, align 8
  %.0.copyload.i.i.7 = load i64, ptr %i.bg, align 8
  %i.dq = xor i64 %.0.copyload.i.i.7, %.0.copyload.i43.i.7
  store i64 %i.dq, ptr %i.bf, align 8
  br label %..preheader_crit_edge.i

.lr.ph88.i:                                       ; preds = %.lr.ph88.i.preheader, %.lr.ph88.i
  %.1.i87.i = phi i64 [ %i.dw, %.lr.ph88.i ], [ %.1.i87.i.ph, %.lr.ph88.i.preheader ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.s, i64 %.1.i87.i ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !29
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 %.1.i87.i
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !29
  %i.dv = xor i8 %i.du, %i.ds
  store i8 %i.dv, ptr %i.dr, align 1, !tbaa !29
  %i.dw = add nuw nsw i64 %.1.i87.i, 1            ; 2 uses
  %i.dx = icmp samesign ult i64 %i.dw, %i.ab
  br i1 %i.dx, label %.lr.ph88.i, label %mbedtls_xor.exit.i, !llvm.loop !110

mbedtls_xor.exit.i:                               ; preds = %.lr.ph88.i, %middle.block, %vec.epilog.middle.block, %..preheader_crit_edge.i
  %i.dy = add nuw i64 %.089.i, 1                  ; 2 uses
  %i.dz = load i64, ptr %i.ac, align 8, !tbaa !103
  %i.ea = icmp ult i64 %i.dy, %i.dz
  br i1 %i.ea, label %.lr.ph90.split.i, label %psa_key_derivation_pbkdf2_generate_block.exit.thread75, !llvm.loop !104

psa_key_derivation_pbkdf2_generate_block.exit.thread75: ; preds = %mbedtls_xor.exit.i, %.preheader84.us.i, %bb.p
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.b, i64 noundef 64) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.eb = load i8, ptr %i.r, align 8, !tbaa !99   ; 2 uses
  %i.ec = sub i8 %.047, %i.eb
  %i.ed = zext i8 %i.ec to i64
  %spec.select80 = call i64 @llvm.umin.i64(i64 %i.bj, i64 %i.ed) ; 4 uses
  %spec.select = trunc nuw i64 %spec.select80 to i8
  %i.ee = zext i8 %i.eb to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ee
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bk, ptr nonnull align 1 %i.ef, i64 %spec.select80, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bk, i64 %spec.select80
  %i.eh = sub i64 %i.bj, %spec.select80           ; 2 uses
  %i.ei = load i8, ptr %i.r, align 8, !tbaa !99
  %i.ej = add i8 %i.ei, %spec.select
  store i8 %i.ej, ptr %i.r, align 8, !tbaa !99
  %i.ek = icmp eq i64 %i.eh, 0
  br i1 %i.ek, label %.thread67, label %bb.h

.thread67.sink.split:                             ; preds = %bb.i, %bb.n, %bb.h, %bb.o, %psa_mac_update.exit.thread.i, %psa_driver_wrapper_mac_compute.exit.i, %.lr.ph90.split.i, %psa_driver_wrapper_mac_compute.exit.us.i, %.lr.ph90.split.us.split.i, %psa_mac_update.exit.thread72.i, %psa_mac_update.exit58.thread78.i
  %.2.ph = phi i32 [ %.0.i52.ph.i, %psa_mac_update.exit58.thread78.i ], [ %.0.i45.ph.i, %psa_mac_update.exit.thread72.i ], [ -135, %.lr.ph90.split.us.split.i ], [ -135, %.lr.ph90.split.i ], [ %i.cn, %psa_driver_wrapper_mac_compute.exit.us.i ], [ %i.cs, %psa_driver_wrapper_mac_compute.exit.i ], [ -135, %bb.h ], [ %i.ci, %bb.n ], [ -151, %bb.o ], [ -137, %psa_mac_update.exit.thread.i ], [ %i.bp, %bb.i ]
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.b, i64 noundef 64) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.thread67

.thread67:                                        ; preds = %psa_key_derivation_pbkdf2_generate_block.exit.thread75, %.lr.ph, %.thread67.sink.split, %bb.g, %bb.e, %bb.d
end_hunk_1
begin_hunk_2_@psa_key_derivation_input_internal:bb.a
  %i.cs = icmp ne i8 %.pre-phi.i, 3
  %i.ct = and i8 %i.cq, 4
  %.not.i = icmp eq i8 %i.ct, 0
  %or.cond.i = and i1 %i.cs, %.not.i
  br i1 %or.cond.i, label %bb.aj, label %psa_hkdf_input.exit

bb.aj:                                            ; preds = %bb.ai
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %4, ptr %i.cu, align 8, !tbaa !83
  %.not96.i = icmp eq i64 %4, 0
  br i1 %.not96.i, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cv = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %4) #19 ; 3 uses
  store ptr %i.cv, ptr %i.h, align 8, !tbaa !82
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %psa_hkdf_input.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cv, ptr align 1 %3, i64 %4, i1 false)
  %.pre157.i = load i8, ptr %i.cr, align 2
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aj
  %i.cx = phi i8 [ %.pre157.i, %bb.al ], [ %i.cq, %bb.aj ]
  %i.cy = or i8 %i.cx, 4
  store i8 %i.cy, ptr %i.cr, align 2
  br label %psa_hkdf_input.exit

psa_hkdf_input.exit:                              ; preds = %bb.g, %bb.h, %bb.i, %psa_key_derivation_start_hmac.exit.i, %bb.l, %bb.n, %bb.p, %bb.r, %psa_key_derivation_start_hmac.exit145.i, %bb.v, %bb.w, %psa_mac_update.exit.thread151.i, %psa_mac_update.exit.thread.i, %bb.ad, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.ak, %bb.am
  %.0.i45 = phi i32 [ -141, %bb.ak ], [ 0, %bb.am ], [ -135, %bb.h ], [ -137, %bb.i ], [ 0, %bb.l ], [ %i.ab, %psa_key_derivation_start_hmac.exit.i ], [ -137, %bb.n ], [ %i.bx, %psa_mac_update.exit.thread.i ], [ -135, %bb.p ], [ -137, %bb.r ], [ %i.bb, %psa_key_derivation_start_hmac.exit145.i ], [ -137, %bb.v ], [ %.0.i.ph.i, %psa_mac_update.exit.thread151.i ], [ 0, %bb.ad ], [ -135, %bb.ag ], [ -137, %bb.ah ], [ -137, %bb.ai ], [ -135, %bb.g ], [ 0, %bb.af ], [ -137, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %psa_key_derivation_check_input_type.exit

bb.an:                                            ; preds = %select.unfold
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.da = tail call fastcc i32 @psa_tls12_prf_input(ptr noundef nonnull %i.cz, i16 noundef zeroext %1, ptr noundef %3, i64 noundef %4)
  br label %psa_key_derivation_check_input_type.exit

bb.ao:                                            ; preds = %select.unfold
  switch i16 %1, label %bb.bi [
    i16 257, label %bb.ap
    i16 259, label %bb.bd
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !84 ; 2 uses
  %i.dd = icmp eq i32 %i.dc, 2                    ; 2 uses
  br i1 %i.dd, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.de = add i64 %4, 4
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !120
  %i.dh = add i64 %i.de, %i.dg
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.di = shl i64 %4, 1
  %i.dj = add i64 %i.di, 4
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.dk = phi i64 [ %i.dh, %bb.aq ], [ %i.dj, %bb.ar ] ; 2 uses
  %i.dl = icmp ugt i64 %4, 128
  br i1 %i.dl, label %psa_key_derivation_check_input_type.exit.thread56, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dm = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.dk) #19 ; 10 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %psa_key_derivation_check_input_type.exit.thread56, label %bb.au

bb.au:                                            ; preds = %bb.at
  br i1 %i.dd, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !120 ; 5 uses
  %i.dq = lshr i64 %i.dp, 8
  %i.dr = trunc i64 %i.dq to i8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  store i8 %i.dr, ptr %i.dm, align 1, !tbaa !29
  %i.dt = trunc i64 %i.dp to i8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dm, i64 2 ; 3 uses
  store i8 %i.dt, ptr %i.ds, align 1, !tbaa !29
  %.not.i.i = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !121 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.du, ptr align 1 %i.dw, i64 %i.dp, i1 false)
  tail call void @mbedtls_platform_zeroize(ptr noundef %i.dw, i64 noundef %i.dp) #20
  %i.dx = load i64, ptr %i.do, align 8, !tbaa !120
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dx
  %.pre.i.i47 = load i32, ptr %i.db, align 4, !tbaa !84
  br label %bb.ay

bb.ax:                                            ; preds = %bb.au
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  %i.ea = trunc nuw i64 %4 to i8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dm, i64 2
  store i8 %i.ea, ptr %i.dz, align 1, !tbaa !29
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %4
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av
  %i.ed = phi i32 [ %.pre.i.i47, %bb.aw ], [ 2, %bb.av ], [ %i.dc, %bb.ax ]
  %.0.i.i = phi ptr [ %i.dy, %bb.aw ], [ %i.du, %bb.av ], [ %i.ec, %bb.ax ] ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  store i8 0, ptr %.0.i.i, align 1, !tbaa !29
  %i.ef = trunc nuw i64 %4 to i8
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2 ; 2 uses
  store i8 %i.ef, ptr %i.ee, align 1, !tbaa !29
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eg, ptr readonly align 1 %3, i64 %4, i1 false)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %4 ; 2 uses
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.dm to i64
  %i.ek = sub i64 %i.ei, %i.ej                    ; 3 uses
  %.off.i.i.i = add i32 %i.ed, -1
  %switch.i.i.i = icmp ult i32 %.off.i.i.i, 2
  br i1 %switch.i.i.i, label %bb.az, label %psa_tls12_prf_set_key.exit.i.i

bb.az:                                            ; preds = %bb.ay
  %.not16.i.i.i = icmp eq ptr %i.eh, %i.dm
  br i1 %.not16.i.i.i, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.el = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.ek) #19 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.el, ptr %i.em, align 8, !tbaa !88
  %i.en = icmp eq ptr %i.el, null
  br i1 %i.en, label %psa_tls12_prf_set_key.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.el, ptr nonnull readonly align 1 %i.dm, i64 %i.ek, i1 false)
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ek, ptr %i.eo, align 8, !tbaa !89
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.az
  store i32 3, ptr %i.db, align 4, !tbaa !84
  br label %psa_tls12_prf_set_key.exit.i.i

psa_tls12_prf_set_key.exit.i.i:                   ; preds = %bb.bc, %bb.ba, %bb.ay
  %.0.i.i.i = phi i32 [ 0, %bb.bc ], [ -137, %bb.ay ], [ -141, %bb.ba ]
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.dm, i64 noundef %i.dk) #20
  br label %psa_key_derivation_check_input_type.exit

bb.bd:                                            ; preds = %bb.ao
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !84
  %.not.i11.i = icmp eq i32 %i.eq, 1
  br i1 %.not.i11.i, label %bb.be, label %psa_key_derivation_check_input_type.exit.thread56

bb.be:                                            ; preds = %bb.bd
  %.not14.i.i = icmp eq i64 %4, 0
  br i1 %.not14.i.i, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.er = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %4) #19 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.er, ptr %i.es, align 8, !tbaa !121
  %i.et = icmp eq ptr %i.er, null
  br i1 %i.et, label %psa_key_derivation_check_input_type.exit.thread56, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.er, ptr readonly align 1 %3, i64 %4, i1 false)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.be
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %4, ptr %i.eu, align 8, !tbaa !120
  store i32 2, ptr %i.ep, align 4, !tbaa !84
  br label %psa_key_derivation_check_input_type.exit.thread61

bb.bi:                                            ; preds = %bb.ao
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ew = tail call fastcc i32 @psa_tls12_prf_input(ptr noundef nonnull %i.ev, i16 noundef zeroext %1, ptr noundef readonly %3, i64 noundef %4)
  br label %psa_key_derivation_check_input_type.exit

bb.bj:                                            ; preds = %select.unfold
  %i.ex = icmp eq i32 %.0.i, 134219273
  br i1 %i.ex, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ez = icmp ne i64 %4, 65
  %i.fa = icmp ne i16 %1, 257
  %or.cond.i48 = or i1 %i.fa, %i.ez
  br i1 %or.cond.i48, label %psa_key_derivation_check_input_type.exit.thread56, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fb = load i8, ptr %3, align 1, !tbaa !29
  %.not.i49 = icmp eq i8 %i.fb, 4
  br i1 %.not.i49, label %bb.bm, label %psa_key_derivation_check_input_type.exit.thread56

bb.bm:                                            ; preds = %bb.bl
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ey, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.fc, i64 32, i1 false)
  br label %psa_key_derivation_check_input_type.exit.thread61

bb.bn:                                            ; preds = %bb.bj
  %i.fd = icmp eq i32 %i.f, 142606592
  %i.fe = icmp eq i32 %.0.i, 142606848
  %or.cond = or i1 %i.fe, %i.fd
  br i1 %or.cond, label %bb.bo, label %psa_key_derivation_check_input_type.exit.thread61

bb.bo:                                            ; preds = %bb.bn
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fg = tail call fastcc i32 @psa_pbkdf2_input(ptr noundef nonnull %i.ff, i32 noundef %.0.i, i16 noundef zeroext %1, ptr noundef %3, i64 noundef %4)
  br label %psa_key_derivation_check_input_type.exit

psa_key_derivation_check_input_type.exit:         ; preds = %bb.bi, %psa_tls12_prf_set_key.exit.i.i, %psa_hkdf_input.exit, %bb.bo, %bb.an
  %.0 = phi i32 [ %i.fg, %bb.bo ], [ %i.ew, %bb.bi ], [ %.0.i45, %psa_hkdf_input.exit ], [ %i.da, %bb.an ], [ %.0.i.i.i, %psa_tls12_prf_set_key.exit.i.i ] ; 2 uses
  %.not43 = icmp eq i32 %.0, 0
  br i1 %.not43, label %psa_key_derivation_check_input_type.exit.thread61, label %psa_key_derivation_check_input_type.exit.thread56

psa_key_derivation_check_input_type.exit.thread56: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.f, %bb.bl, %bb.bk, %bb.bd, %bb.as, %bb.at, %bb.bf, %bb.a, %psa_key_derivation_check_input_type.exit
  %.059 = phi i32 [ %.0, %psa_key_derivation_check_input_type.exit ], [ -135, %bb.bl ], [ -135, %bb.bk ], [ -137, %bb.bd ], [ -135, %bb.as ], [ -141, %bb.at ], [ -135, %bb.c ], [ -135, %bb.d ], [ -137, %bb.a ], [ -141, %bb.bf ], [ -135, %bb.e ], [ -135, %bb.f ], [ -135, %bb.b ]
  %i.fh = call i32 @psa_key_derivation_abort(ptr noundef nonnull %0) ; 0 uses
  br label %psa_key_derivation_check_input_type.exit.thread61

psa_key_derivation_check_input_type.exit.thread61: ; preds = %bb.bh, %bb.bm, %psa_key_derivation_check_input_type.exit, %psa_key_derivation_check_input_type.exit.thread56, %bb.bn
  %.039 = phi i32 [ -137, %bb.bn ], [ %.059, %psa_key_derivation_check_input_type.exit.thread56 ], [ 0, %psa_key_derivation_check_input_type.exit ], [ 0, %bb.bm ], [ 0, %bb.bh ]
  ret i32 %.039
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -137, 1) i32 @psa_key_derivation_input_integer(ptr noundef %0, i16 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #6 {
bb.a:
  %.val.i = load i32, ptr %0, align 8, !tbaa !75  ; 3 uses
  %i.a = and i32 %.val.i, 2130706432
  %i.b = icmp eq i32 %i.a, 150994944
  %i.c = and i32 %.val.i, -2013200385
  %.0.i.i = select i1 %i.b, i32 %i.c, i32 %.val.i ; 2 uses
  %i.d = icmp eq i32 %.0.i.i, 0
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i32 %.0.i.i, -142606592
  %or.cond.i = icmp ult i32 %i.e, 257
  br i1 %or.cond.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i.i = icmp eq i16 %1, 517
  br i1 %.not.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.f, align 8, !tbaa !98
  %.not8.i.i = icmp eq i32 %i.g, 0
  br i1 %.not8.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = icmp ugt i64 %2, 4294967295
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %bb.g, label %psa_pbkdf2_set_input_cost.exit.i

psa_pbkdf2_set_input_cost.exit.i:                 ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %i.j, align 8, !tbaa !103
  store i32 1, ptr %i.f, align 8, !tbaa !98
  br label %psa_key_derivation_input_integer_internal.exit

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0.ph.i = phi i32 [ -135, %bb.f ], [ -134, %bb.e ], [ -137, %bb.d ], [ -135, %bb.c ], [ -135, %bb.b ], [ -137, %bb.a ]
  %i.k = tail call i32 @psa_key_derivation_abort(ptr noundef nonnull %0) ; 0 uses
  br label %psa_key_derivation_input_integer_internal.exit

psa_key_derivation_input_integer_internal.exit:   ; preds = %psa_pbkdf2_set_input_cost.exit.i, %bb.g
  %.015.i = phi i32 [ %.0.ph.i, %bb.g ], [ 0, %psa_pbkdf2_set_input_cost.exit.i ]
  ret i32 %.015.i
}

; Function Attrs: nounwind uwtable
define hidden i32 @psa_key_derivation_input_key(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = load i32, ptr %0, align 8, !tbaa !75
  %i.c = call fastcc i32 @psa_get_and_lock_key_slot_with_policy(i32 noundef %2, ptr noundef nonnull %i.a, i32 noundef 16384, i32 noundef %i.b) ; 2 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !31   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !32
  %i.g = icmp ult i32 %i.f, 256
  br i1 %i.g, label %psa_get_and_lock_transparent_key_slot_with_policy.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call i32 @psa_unregister_read_under_mutex(ptr noundef nonnull %i.d) #20 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !31
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.0.i.ph = phi i32 [ -134, %bb.c ], [ %i.c, %bb.a ]
  %i.i = call i32 @psa_key_derivation_abort(ptr noundef nonnull %0) ; 0 uses
  br label %bb.g

psa_get_and_lock_transparent_key_slot_with_policy.exit: ; preds = %bb.b
  %i.j = add i16 %1, -257
  %or.cond = icmp ult i16 %i.j, 2
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %psa_get_and_lock_transparent_key_slot_with_policy.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.l = load i8, ptr %i.k, align 4
  %i.m = or i8 %i.l, 1
  store i8 %i.m, ptr %i.k, align 4
  br label %bb.f

bb.f:                                             ; preds = %psa_get_and_lock_transparent_key_slot_with_policy.exit, %bb.e
  %i.n = load i16, ptr %i.d, align 8, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.r = load i64, ptr %i.q, align 8, !tbaa !25
  %i.s = call fastcc i32 @psa_key_derivation_input_internal(ptr noundef nonnull %0, i16 noundef zeroext %1, i16 noundef zeroext %i.n, ptr noundef %i.p, i64 noundef %i.r) ; 2 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.u = call i32 @psa_unregister_read_under_mutex(ptr noundef %i.t) #20
  %i.v = icmp eq i32 %i.s, 0
  %i.w = select i1 %i.v, i32 %i.u, i32 %i.s
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.0 = phi i32 [ %.0.i.ph, %bb.d ], [ %i.w, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @psa_key_agreement_raw_builtin(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8) local_unnamed_addr #6 {
bb.a:
  switch i32 %3, label %bb.d [
    i32 151126016, label %bb.b
    i32 151060480, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @mbedtls_psa_key_agreement_ecdh(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 151126016, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8) #20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i32 @mbedtls_psa_ffdh_key_agreement(ptr noundef %0, ptr noundef %4, i64 noundef %5, ptr noundef %1, i64 noundef %2, ptr noundef %6, i64 noundef %7, ptr noundef %8) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i32 [ %i.b, %bb.c ], [ %i.a, %bb.b ], [ -134, %bb.a ]
  ret i32 %.0
}

declare i32 @mbedtls_psa_key_agreement_ecdh(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @mbedtls_psa_ffdh_key_agreement(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define hidden i32 @psa_key_derivation_key_agreement(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 9 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.d = load i32, ptr %0, align 8, !tbaa !75     ; 2 uses
  %i.e = and i32 %i.d, 2130706432
  %i.f = icmp eq i32 %i.e, 150994944
  br i1 %i.f, label %bb.b, label %psa_get_and_lock_transparent_key_slot_with_policy.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = call fastcc i32 @psa_get_and_lock_key_slot_with_policy(i32 noundef %2, ptr noundef nonnull %i.c, i32 noundef 16384, i32 noundef %i.d) ; 2 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.c, label %psa_get_and_lock_transparent_key_slot_with_policy.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !31   ; 6 uses
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !32
  %i.k = icmp ult i32 %i.j, 256
  br i1 %i.k, label %psa_get_and_lock_transparent_key_slot_with_policy.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = call i32 @psa_unregister_read_under_mutex(ptr noundef nonnull %i.h) #20 ; 0 uses
  br label %psa_get_and_lock_transparent_key_slot_with_policy.exit.thread

psa_get_and_lock_transparent_key_slot_with_policy.exit: ; preds = %bb.c
  %i.m = icmp eq i64 %4, 0
  br i1 %i.m, label %bb.g, label %bb.e

bb.e:                                             ; preds = %psa_get_and_lock_transparent_key_slot_with_policy.exit
  %i.n = call noalias ptr @calloc(i64 noundef %4, i64 noundef 1) #19 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %psa_crypto_local_input_alloc.exit.thread39, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull readonly align 1 dereferenceable(1) %3, i64 range(i64 1, 0) %4, i1 false)
end_hunk_2
begin_hunk_3_@psa_crypto_init:bb.a

mbedtls_psa_crypto_free.exit.sink.split:          ; preds = %bb.q, %bb.j
  %.sink = phi i8 [ %i.aa, %bb.j ], [ %i.am, %bb.q ]
  %.06.ph = phi i32 [ 0, %bb.j ], [ %.0, %bb.q ]
  store i8 %.sink, ptr @global_data, align 8, !tbaa !8
  br label %mbedtls_psa_crypto_free.exit

mbedtls_psa_crypto_free.exit:                     ; preds = %mbedtls_psa_crypto_free.exit.sink.split, %bb.i, %bb.p, %bb.a
  %.06 = phi i32 [ 0, %bb.a ], [ 0, %bb.i ], [ %.0, %bb.p ], [ %.06.ph, %mbedtls_psa_crypto_free.exit.sink.split ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -137, 1) i32 @psa_crypto_driver_pake_get_password_len(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !133  ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.b, ptr %1, align 8, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -137, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 -138, 1) i32 @psa_crypto_driver_pake_get_password(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !133  ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %2, %i.b
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !136
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.e, i64 %i.b, i1 false)
  %i.f = load i64, ptr %i.a, align 8, !tbaa !133
  store i64 %i.f, ptr %3, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -137, %bb.a ], [ -138, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -137, 1) i32 @psa_crypto_driver_pake_get_user_len(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !137  ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.b, ptr %1, align 8, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -137, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 -138, 1) i32 @psa_crypto_driver_pake_get_user(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !137  ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %2, %i.b
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !138
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.f, i64 %i.b, i1 false)
  %i.g = load i64, ptr %i.a, align 8, !tbaa !137
  store i64 %i.g, ptr %3, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -137, %bb.a ], [ -138, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -137, 1) i32 @psa_crypto_driver_pake_get_peer_len(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !139  ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.b, ptr %1, align 8, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -137, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 -138, 1) i32 @psa_crypto_driver_pake_get_peer(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !139  ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %2, %i.b
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !140
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.f, i64 %i.b, i1 false)
  %i.g = load i64, ptr %i.a, align 8, !tbaa !139
  store i64 %i.g, ptr %3, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -137, %bb.a ], [ -138, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -137, 1) i32 @psa_crypto_driver_pake_get_cipher_suite(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !141
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %i.a, i64 12, i1 false), !tbaa.struct !142
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -137, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @psa_pake_setup(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.c = load i8, ptr %i.b, align 4, !tbaa !143   ; 2 uses
  switch i8 %i.c, label %psa_driver_wrapper_pake_abort.exit.i [
    i8 0, label %bb.b
    i8 2, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %2, align 4, !tbaa !145
  %i.e = and i32 %i.d, 2130706432
  %.not24 = icmp eq i32 %i.e, 167772160
  br i1 %.not24, label %bb.c, label %psa_pake_abort.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(880) %i.f, i8 0, i64 880, i1 false)
  %i.g = load i32, ptr %2, align 4, !tbaa !145    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.g, ptr %i.h, align 4, !tbaa !146
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.j = load i16, ptr %i.i, align 2, !tbaa !147
  %i.k = zext i16 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.m = load i8, ptr %i.l, align 4, !tbaa !148
  %i.n = zext i8 %i.m to i32
  %i.o = shl nuw i32 %i.n, 24
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.q = load i8, ptr %i.p, align 1, !tbaa !149
  %i.r = zext i8 %i.q to i32
  %i.s = shl nuw nsw i32 %i.r, 16
  %i.t = or disjoint i32 %i.o, %i.k
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.u, ptr %i.v, align 8, !tbaa !150
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.w, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !142
  %i.x = and i32 %i.g, -256
  %i.y = icmp eq i32 %i.x, 167772416
  br i1 %i.y, label %bb.d, label %psa_pake_abort.exit

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.z, i8 0, i64 12, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 1, ptr %i.aa, align 2, !tbaa !151
  store i8 1, ptr %i.b, align 4, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8, !tbaa !31
  %i.ab = call fastcc i32 @psa_get_and_lock_key_slot_with_policy(i32 noundef %1, ptr noundef %i.a, i32 noundef 16384, i32 noundef %i.g) ; 2 uses
  %.not19.i = icmp eq i32 %i.ab, 0
  br i1 %.not19.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !31  ; 5 uses
  %.val.i = load i16, ptr %i.ac, align 4, !tbaa !26
  switch i16 %.val.i, label %bb.g [
    i16 4613, label %bb.f
    i16 4611, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !25
  %i.af = call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.ae) #19 ; 3 uses
  store ptr %i.af, ptr %i.f, align 8, !tbaa !29
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.0.ph.ph.i = phi i32 [ %i.ab, %bb.d ], [ -135, %bb.e ], [ -141, %bb.f ]
  %.pr.i = load i8, ptr %i.b, align 4, !tbaa !143 ; 2 uses
  %i.ah = icmp eq i8 %.pr.i, 2
  br i1 %i.ah, label %bb.h, label %psa_driver_wrapper_pake_abort.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.ai = load i32, ptr %0, align 8, !tbaa !153
  %cond.i.i.i = icmp eq i32 %i.ai, 1
  br i1 %cond.i.i.i, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.aj = call i32 @mbedtls_psa_pake_abort(ptr noundef nonnull %i.f) #20 ; 0 uses
  %.pr.i.i = load i8, ptr %i.b, align 4, !tbaa !143
  br label %psa_driver_wrapper_pake_abort.exit.i.i

psa_driver_wrapper_pake_abort.exit.i.i:           ; preds = %bb.i, %bb.g
  %i.ak = phi i8 [ %.pr.i.i, %bb.i ], [ %.pr.i, %bb.g ]
  %i.al = icmp eq i8 %i.ak, 1
  br i1 %i.al, label %bb.j, label %bb.p

bb.j:                                             ; preds = %psa_driver_wrapper_pake_abort.exit.i.i
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !29  ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !29
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.am, i64 noundef %i.ao) #20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !29 ; 2 uses
  %.not14.i.i = icmp eq ptr %i.aq, null
  br i1 %.not14.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.aq) #20
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !29 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.as, null
  br i1 %.not15.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.as) #20
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %psa_driver_wrapper_pake_abort.exit.i.i, %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(912) %0, i8 0, i64 912, i1 false)
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.au = call i32 @psa_unregister_read_under_mutex(ptr noundef %i.at) #20 ; 0 uses
  br label %psa_pake_set_password_key.exit

bb.q:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !18
  %i.ax = load i64, ptr %i.ad, align 8, !tbaa !25 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr align 1 %i.aw, i64 %i.ax, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !29
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !tbaa.struct !34
  %i.ba = call i32 @psa_unregister_read_under_mutex(ptr noundef nonnull %i.ac) #20
  br label %psa_pake_set_password_key.exit

psa_pake_set_password_key.exit:                   ; preds = %bb.p, %bb.q
  %i.bb = phi i32 [ %i.ba, %bb.q ], [ %.0.ph.ph.i, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.z

bb.r:                                             ; preds = %bb.a
  %i.bc = load i32, ptr %0, align 8, !tbaa !153
  %cond.i.i = icmp eq i32 %i.bc, 1
  br i1 %cond.i.i, label %bb.s, label %psa_pake_abort.exit

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.be = tail call i32 @mbedtls_psa_pake_abort(ptr noundef nonnull %i.bd) #20 ; 0 uses
  %.pr.i26 = load i8, ptr %i.b, align 4, !tbaa !143
  br label %psa_driver_wrapper_pake_abort.exit.i

psa_driver_wrapper_pake_abort.exit.i:             ; preds = %bb.a, %bb.s
  %i.bf = phi i8 [ %.pr.i26, %bb.s ], [ %i.c, %bb.a ]
  %i.bg = icmp eq i8 %i.bf, 1
  br i1 %i.bg, label %bb.t, label %psa_pake_abort.exit

bb.t:                                             ; preds = %psa_driver_wrapper_pake_abort.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !29 ; 2 uses
  %.not.i25 = icmp eq ptr %i.bi, null
  br i1 %.not.i25, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !29
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.bi, i64 noundef %i.bk) #20
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !29 ; 2 uses
  %.not14.i = icmp eq ptr %i.bm, null
  br i1 %.not14.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @free(ptr noundef nonnull %i.bm) #20
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !29 ; 2 uses
  %.not15.i = icmp eq ptr %i.bo, null
  br i1 %.not15.i, label %psa_pake_abort.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @free(ptr noundef nonnull %i.bo) #20
  br label %psa_pake_abort.exit

psa_pake_abort.exit:                              ; preds = %bb.c, %bb.b, %bb.r, %psa_driver_wrapper_pake_abort.exit.i, %bb.x, %bb.y
  %.02228 = phi i32 [ -137, %bb.r ], [ -137, %psa_driver_wrapper_pake_abort.exit.i ], [ -137, %bb.x ], [ -137, %bb.y ], [ -134, %bb.c ], [ -135, %bb.b ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(912) %0, i8 0, i64 912, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %psa_pake_abort.exit, %psa_pake_set_password_key.exit
  %.0 = phi i32 [ %.02228, %psa_pake_abort.exit ], [ %i.bb, %psa_pake_set_password_key.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @psa_pake_abort(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !143   ; 2 uses
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %bb.b, label %psa_driver_wrapper_pake_abort.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !153
  %cond.i = icmp eq i32 %i.d, 1
  br i1 %cond.i, label %bb.c, label %psa_driver_wrapper_pake_abort.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = tail call i32 @mbedtls_psa_pake_abort(ptr noundef nonnull %i.e) #20
  %.pr = load i8, ptr %i.a, align 4, !tbaa !143
  br label %psa_driver_wrapper_pake_abort.exit

psa_driver_wrapper_pake_abort.exit:               ; preds = %bb.c, %bb.a
  %i.g = phi i8 [ %.pr, %bb.c ], [ %i.b, %bb.a ]
  %.0 = phi i32 [ %i.f, %bb.c ], [ 0, %bb.a ]     ; 3 uses
  %i.h = icmp eq i8 %i.g, 1
  br i1 %i.h, label %bb.d, label %psa_driver_wrapper_pake_abort.exit.thread

bb.d:                                             ; preds = %psa_driver_wrapper_pake_abort.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29   ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !29
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.j, i64 noundef %i.l) #20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !29   ; 2 uses
  %.not14 = icmp eq ptr %i.n, null
  br i1 %.not14, label %bb.h, label %bb.g
end_hunk_3
begin_hunk_4_@mbedtls_ecp_group_load

declare i32 @mbedtls_mpi_sub_int(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare i32 @mbedtls_mpi_read_binary(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare i32 @mbedtls_mpi_lt_mpi_ct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @mbedtls_mpi_add_int(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare i32 @mbedtls_mpi_write_binary(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @mbedtls_mpi_free(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -141, 1) i32 @psa_tls12_prf_input(ptr nofree noundef captures(none) %0, i16 noundef zeroext %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) unnamed_addr #5 {
bb.a:
  switch i16 %1, label %psa_tls12_prf_set_seed.exit [
    i16 516, label %bb.b
    i16 257, label %bb.g
    i16 513, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !84
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %psa_tls12_prf_set_seed.exit

bb.c:                                             ; preds = %bb.b
  %.not13.i = icmp eq i64 %3, 0
  br i1 %.not13.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %3) #19 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.d, align 8, !tbaa !92
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %psa_tls12_prf_set_seed.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr readonly align 1 %2, i64 %3, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %3, ptr %i.f, align 8, !tbaa !93
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  store i32 1, ptr %i.a, align 4, !tbaa !84
  br label %psa_tls12_prf_set_seed.exit

bb.g:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !84
  %.off.i = add i32 %i.h, -1
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %bb.h, label %psa_tls12_prf_set_seed.exit

bb.h:                                             ; preds = %bb.g
  %.not16.i = icmp eq i64 %3, 0
  br i1 %.not16.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %3) #19 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !88
  %i.k = icmp eq ptr %i.i, null
  br i1 %i.k, label %psa_tls12_prf_set_seed.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr readonly align 1 %2, i64 %3, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.l, align 8, !tbaa !89
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  store i32 3, ptr %i.g, align 4, !tbaa !84
  br label %psa_tls12_prf_set_seed.exit

bb.l:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !84
  %.not.i11 = icmp eq i32 %i.n, 3
  br i1 %.not.i11, label %bb.m, label %psa_tls12_prf_set_seed.exit

bb.m:                                             ; preds = %bb.l
  %.not13.i13 = icmp eq i64 %3, 0
  br i1 %.not13.i13, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.o = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %3) #19 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.o, ptr %i.p, align 8, !tbaa !90
  %i.q = icmp eq ptr %i.o, null
  br i1 %i.q, label %psa_tls12_prf_set_seed.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr readonly align 1 %2, i64 %3, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %3, ptr %i.r, align 8, !tbaa !91
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  store i32 4, ptr %i.m, align 4, !tbaa !84
  br label %psa_tls12_prf_set_seed.exit

psa_tls12_prf_set_seed.exit:                      ; preds = %bb.p, %bb.n, %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.d, %bb.b, %bb.a
  %.0 = phi i32 [ -141, %bb.i ], [ -135, %bb.a ], [ -141, %bb.d ], [ 0, %bb.f ], [ -137, %bb.b ], [ 0, %bb.k ], [ -137, %bb.g ], [ 0, %bb.p ], [ -137, %bb.l ], [ -141, %bb.n ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @psa_pbkdf2_input(ptr noundef %0, i32 noundef range(i32 1, 0) %1, i16 noundef zeroext %2, ptr noundef %3, i64 noundef %4) unnamed_addr #6 {
bb.a:
  %5 = alloca %struct.psa_key_attributes_s, align 4 ; 7 uses
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  switch i16 %2, label %psa_pbkdf2_set_salt.exit [
    i16 514, label %bb.b
    i16 258, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !98
  switch i32 %i.b, label %psa_pbkdf2_set_salt.exit [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %0, align 8, !tbaa !98
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = icmp eq i64 %4, 0
  br i1 %i.c, label %psa_pbkdf2_set_salt.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !102  ; 4 uses
  %i.f = add i64 %i.e, %4                         ; 2 uses
  %i.g = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.f) #19 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %psa_pbkdf2_set_salt.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq i64 %i.e, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !101 ; 2 uses
  br i1 %.not.i, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr align 1 %.pre.i, i64 %i.e, i1 false)
  br label %.thread.i

.thread.i:                                        ; preds = %bb.g, %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr readonly align 1 %3, i64 %4, i1 false)
  store i64 %i.f, ptr %i.d, align 8, !tbaa !102
  tail call void @free(ptr noundef %.pre.i) #20
  store ptr %i.g, ptr %.phi.trans.insert.i, align 8, !tbaa !101
  br label %psa_pbkdf2_set_salt.exit

bb.h:                                             ; preds = %bb.a
  %i.j = load i32, ptr %0, align 8, !tbaa !98
  %.not.i8 = icmp eq i32 %i.j, 2
  br i1 %.not.i8, label %bb.i, label %psa_pbkdf2_set_salt.exit

bb.i:                                             ; preds = %bb.h
  %i.k = and i32 %1, -256
  %i.l = icmp eq i32 %i.k, 142606592
  br i1 %i.l, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.m = and i32 %1, 255                          ; 3 uses
  %i.n = or disjoint i32 %i.m, 33554432
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %switch.tableidx = add nsw i32 %i.m, -3         ; 2 uses
  %i.q = icmp ult i32 %switch.tableidx, 17
  br i1 %i.q, label %switch.lookup, label %bb.k

switch.lookup:                                    ; preds = %bb.j
  %i.r = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.psa_pbkdf2_input.32, i64 %i.r
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %switch.lookup
  %i.s = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.j ]
  %i.t = icmp ugt i64 %4, %i.s
  br i1 %i.t, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.u = tail call i32 @psa_hash_compute(i32 noundef range(i32 33554432, 33554688) %i.n, ptr noundef readonly %3, i64 noundef %4, ptr noundef nonnull %i.o, i64 noundef 144, ptr noundef nonnull %i.p)
  br label %psa_pbkdf2_hmac_set_password.exit.i

bb.m:                                             ; preds = %bb.k
  %.not.i.i = icmp eq i64 %4, 0
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr readonly align 1 %3, i64 %4, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %switch.tableidx12 = add nsw i32 %i.m, -3       ; 2 uses
  %i.v = icmp ult i32 %switch.tableidx12, 17
  br i1 %i.v, label %switch.lookup13, label %bb.p

switch.lookup13:                                  ; preds = %bb.o
  %i.w = zext nneg i32 %switch.tableidx12 to i64
  %switch.gep14 = getelementptr inbounds nuw i8, ptr @switch.table.psa_pbkdf2_input.32, i64 %i.w
  %switch.load15 = load i8, ptr %switch.gep14, align 1
  %switch.ext16 = zext i8 %switch.load15 to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %switch.lookup13
  %i.x = phi i64 [ %switch.ext16, %switch.lookup13 ], [ 0, %bb.o ]
  store i64 %i.x, ptr %i.p, align 8, !tbaa !27
  br label %psa_pbkdf2_hmac_set_password.exit.i

bb.q:                                             ; preds = %bb.i
  %i.y = icmp eq i32 %1, 142606848
  br i1 %i.y, label %bb.r, label %psa_pbkdf2_set_salt.exit

bb.r:                                             ; preds = %bb.q
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %.not.i16.i = icmp eq i64 %4, 16
  br i1 %.not.i16.i, label %bb.s, label %psa_driver_wrapper_mac_compute.exit.i.i

psa_driver_wrapper_mac_compute.exit.i.i:          ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ab, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store i16 9216, ptr %5, align 4, !tbaa !26
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 128, ptr %i.ac, align 2, !tbaa !48
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 1024, ptr %i.ad, align 4, !tbaa !81
  %i.ae = call i32 @mbedtls_psa_mac_compute(ptr noundef nonnull %5, ptr noundef nonnull %i.a, i64 noundef 16, i32 noundef 62915072, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %i.z, i64 noundef 16, ptr noundef nonnull %i.aa) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %psa_pbkdf2_hmac_set_password.exit.i

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 1 dereferenceable(16) %3, i64 16, i1 false)
  store i64 16, ptr %i.aa, align 8, !tbaa !27
  br label %psa_pbkdf2_hmac_set_password.exit.i

psa_pbkdf2_hmac_set_password.exit.i:              ; preds = %bb.s, %psa_driver_wrapper_mac_compute.exit.i.i, %bb.p, %bb.l
  %.015.i = phi i32 [ 0, %bb.p ], [ %i.u, %bb.l ], [ %i.ae, %psa_driver_wrapper_mac_compute.exit.i.i ], [ 0, %bb.s ]
  store i32 3, ptr %0, align 8, !tbaa !98
  br label %psa_pbkdf2_set_salt.exit

psa_pbkdf2_set_salt.exit:                         ; preds = %psa_pbkdf2_hmac_set_password.exit.i, %bb.q, %bb.h, %.thread.i, %bb.e, %bb.d, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.d ], [ -135, %bb.a ], [ -141, %bb.e ], [ -137, %bb.b ], [ 0, %.thread.i ], [ -137, %bb.h ], [ %.015.i, %psa_pbkdf2_hmac_set_password.exit.i ], [ -135, %bb.q ]
  ret i32 %.0
}

declare void @mbedtls_ctr_drbg_free(ptr noundef) local_unnamed_addr #7

declare i32 @psa_initialize_key_slots() local_unnamed_addr #7

declare void @mbedtls_entropy_init(ptr noundef) #7

declare void @mbedtls_entropy_free(ptr noundef) #7

declare void @mbedtls_ctr_drbg_init(ptr noundef) local_unnamed_addr #7

declare i32 @mbedtls_ctr_drbg_seed(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare i32 @mbedtls_entropy_func(ptr noundef, ptr noundef, i64 noundef) #7

declare i32 @mbedtls_psa_pake_setup(ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @mbedtls_psa_pake_output(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @mbedtls_psa_pake_input(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare i32 @mbedtls_psa_pake_get_implicit_key(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @mbedtls_psa_pake_abort(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind allocsize(0,1) }
attributes #20 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !6, i64 0}
!9 = !{!"", !6, i64 0, !6, i64 1, !10, i64 8}
!10 = !{!"", !11, i64 0, !11, i64 8, !12, i64 16, !15, i64 208}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"mbedtls_entropy_context", !13, i64 0, !5, i64 24, !5, i64 28, !6, i64 32}
!13 = !{!"mbedtls_md_context_t", !14, i64 0, !11, i64 8, !11, i64 16}
!14 = !{!"p1 _ZTS17mbedtls_md_info_t", !11, i64 0}
!15 = !{!"mbedtls_ctr_drbg_context", !6, i64 0, !5, i64 16, !5, i64 20, !16, i64 24, !5, i64 32, !17, i64 40, !11, i64 328, !11, i64 336}
!16 = !{!"long", !6, i64 0}
!17 = !{!"mbedtls_aes_context", !5, i64 0, !16, i64 8, !6, i64 16}
!18 = !{!19, !24, i64 40}
!19 = !{!"", !20, i64 0, !5, i64 24, !6, i64 28, !6, i64 32, !23, i64 40}
!20 = !{!"psa_key_attributes_s", !21, i64 0, !21, i64 2, !5, i64 4, !22, i64 8, !5, i64 20}
!21 = !{!"short", !6, i64 0}
!22 = !{!"psa_key_policy_s", !5, i64 0, !5, i64 4, !5, i64 8}
!23 = !{!"key_data", !24, i64 0, !16, i64 8}
!24 = !{!"p1 omnipotent char", !11, i64 0}
!25 = !{!19, !16, i64 48}
!26 = !{!20, !21, i64 0}
!27 = !{!16, !16, i64 0}
!28 = !{!19, !5, i64 24}
!29 = !{!6, !6, i64 0}
!30 = !{!19, !6, i64 28}
!31 = !{!11, !11, i64 0}
!32 = !{!19, !5, i64 4}
!33 = !{!19, !5, i64 20}
!34 = !{i64 0, i64 2, !35, i64 2, i64 2, !35, i64 4, i64 4, !36, i64 8, i64 4, !36, i64 12, i64 4, !36, i64 16, i64 4, !36, i64 20, i64 4, !36}
!35 = !{!21, !21, i64 0}
!36 = !{!5, !5, i64 0}
!37 = !{!19, !21, i64 0}
!38 = !{!19, !5, i64 8}
!39 = !{!22, !5, i64 4}
!40 = !{!22, !5, i64 8}
!41 = !{!20, !5, i64 4}
!42 = !{!43, !24, i64 8}
!43 = !{!"psa_crypto_local_output_s", !24, i64 0, !24, i64 8, !16, i64 16}
!44 = !{!43, !16, i64 16}
!45 = !{!43, !24, i64 0}
!46 = !{!20, !5, i64 20}
!47 = !{!22, !5, i64 0}
!48 = !{!20, !21, i64 2}
!49 = !{!19, !21, i64 2}
!50 = !{!51, !24, i64 0}
!51 = !{!"psa_crypto_local_input_s", !24, i64 0, !16, i64 8}
!52 = !{!51, !16, i64 8}
!53 = !{!54, !5, i64 0}
!54 = !{!"psa_hash_operation_s", !5, i64 0, !6, i64 8}
!55 = !{!56, !5, i64 0}
!56 = !{!"psa_mac_operation_s", !5, i64 0, !6, i64 4, !5, i64 5, !6, i64 8}
!57 = !{!56, !6, i64 4}
!58 = !{!59, !5, i64 12}
!59 = !{!"psa_sign_hash_interruptible_operation_s", !5, i64 0, !6, i64 4, !5, i64 8, !5, i64 12}
!60 = !{!61, !5, i64 12}
!61 = !{!"psa_verify_hash_interruptible_operation_s", !5, i64 0, !6, i64 4, !5, i64 8, !5, i64 12}
!62 = !{!59, !5, i64 0}
!63 = !{!61, !5, i64 0}
!64 = !{!65, !5, i64 0}
!65 = !{!"psa_cipher_operation_s", !5, i64 0, !5, i64 4, !5, i64 4, !6, i64 5, !6, i64 8}
!66 = !{!65, !6, i64 5}
!67 = !{!9, !6, i64 1}
!68 = !{i64 2706846, i64 2706896, i64 2706968, i64 2707040, i64 2707112}
!69 = !{!70, !5, i64 0}
!70 = !{!"psa_aead_operation_s", !5, i64 0, !5, i64 4, !21, i64 8, !16, i64 16, !16, i64 24, !5, i64 32, !5, i64 32, !5, i64 32, !5, i64 32, !5, i64 32, !6, i64 40}
!71 = !{!70, !21, i64 8}
!72 = !{!70, !5, i64 4}
!73 = !{!70, !16, i64 16}
!74 = !{!70, !16, i64 24}
!75 = !{!76, !5, i64 0}
!76 = !{!"psa_key_derivation_s", !5, i64 0, !5, i64 4, !16, i64 8, !6, i64 16}
!77 = !{!76, !16, i64 8}
!78 = !{!79, !6, i64 16}
!79 = !{!"", !24, i64 0, !16, i64 8, !6, i64 16, !6, i64 17, !5, i64 18, !5, i64 18, !6, i64 19, !6, i64 83, !56, i64 152}
!80 = !{!79, !6, i64 17}
!81 = !{!20, !5, i64 8}
!82 = !{!79, !24, i64 0}
!83 = !{!79, !16, i64 8}
!84 = !{!85, !5, i64 4}
!85 = !{!"psa_tls12_prf_key_derivation_s", !6, i64 0, !6, i64 1, !5, i64 4, !24, i64 8, !16, i64 16, !24, i64 24, !16, i64 32, !24, i64 40, !16, i64 48, !24, i64 56, !16, i64 64, !6, i64 72, !6, i64 136}
!86 = !{!85, !6, i64 0}
!87 = !{!85, !6, i64 1}
!88 = !{!85, !24, i64 8}
!89 = !{!85, !16, i64 16}
!90 = !{!85, !24, i64 40}
!91 = !{!85, !16, i64 48}
!92 = !{!85, !24, i64 24}
!93 = !{!85, !16, i64 32}
!94 = distinct !{!94, !95}
!95 = !{!"llvm.loop.mustprogress"}
!96 = !{!97, !16, i64 176}
!97 = !{!"", !5, i64 0, !16, i64 8, !24, i64 16, !16, i64 24, !6, i64 32, !16, i64 176, !6, i64 184, !6, i64 248, !5, i64 252}
!98 = !{!97, !5, i64 0}
!99 = !{!97, !6, i64 248}
!100 = !{!97, !5, i64 252}
!101 = !{!97, !24, i64 16}
!102 = !{!97, !16, i64 24}
!103 = !{!97, !16, i64 8}
!104 = distinct !{!104, !95}
!105 = distinct !{!105, !95, !106, !107}
!106 = !{!"llvm.loop.isvectorized", i32 1}
!107 = !{!"llvm.loop.unroll.runtime.disable"}
!108 = !{!"branch_weights", i32 4, i32 12}
!109 = distinct !{!109, !95, !106, !107}
!110 = distinct !{!110, !95, !107, !106}
!111 = !{!112, !5, i64 0}
!112 = !{!"psa_custom_key_parameters_s", !5, i64 0}
!113 = !{!114, !16, i64 128}
!114 = !{!"mbedtls_ecp_group", !5, i64 0, !115, i64 8, !115, i64 24, !115, i64 40, !117, i64 56, !115, i64 104, !16, i64 120, !16, i64 128, !5, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !118, i64 176, !16, i64 184}
!115 = !{!"mbedtls_mpi", !116, i64 0, !21, i64 8, !21, i64 10}
!116 = !{!"p1 long", !11, i64 0}
!117 = !{!"mbedtls_ecp_point", !115, i64 0, !115, i64 16, !115, i64 32}
!118 = !{!"p1 _ZTS17mbedtls_ecp_point", !11, i64 0}
!119 = distinct !{!119, !95}
!120 = !{!85, !16, i64 64}
!121 = !{!85, !24, i64 56}
!122 = !{!123, !5, i64 300}
!123 = !{!"psa_generate_key_iop_s", !5, i64 0, !124, i64 8, !20, i64 272, !5, i64 296, !5, i64 300}
!124 = !{!"", !125, i64 0, !5, i64 256}
end_hunk_4
