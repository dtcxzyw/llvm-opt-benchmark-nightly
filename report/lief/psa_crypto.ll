Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/psa_crypto?download=true
inline.NumInlined: 478
inline.NumDeleted: 143
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@psa_key_derivation_output_bytes:bb.a
  store i8 %i.bt, ptr %i.ap, align 1
  store i32 0, ptr %i.ai, align 8, !tbaa !56
  br label %psa_mac_update.exit.thread126.i

psa_mac_update.exit.thread126.i:                  ; preds = %bb.v, %psa_driver_wrapper_mac_abort.exit.i.i.i, %psa_driver_wrapper_mac_update.exit.thread.i.i
  %.sroa.8.024.i.ph.i = phi i64 [ %i.ak, %psa_driver_wrapper_mac_abort.exit.i.i.i ], [ %i.ak, %psa_driver_wrapper_mac_update.exit.thread.i.i ], [ 0, %bb.v ]
  %.0.i.ph.i = phi i32 [ %.0.i1828.i.i, %psa_driver_wrapper_mac_abort.exit.i.i.i ], [ %.0.i1828.i.i, %psa_driver_wrapper_mac_update.exit.thread.i.i ], [ -141, %bb.v ]
  call void @mbedtls_zeroize_and_free(ptr noundef %i.bn, i64 noundef %.sroa.8.024.i.ph.i) #20
  br label %psa_key_derivation_hkdf_read.exit

psa_mac_update.exit.i:                            ; preds = %psa_driver_wrapper_mac_update.exit.i.i
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.bn, i64 noundef %i.ak) #20
  br label %bb.y

bb.y:                                             ; preds = %psa_mac_update.exit.i, %bb.s
  %.pr.i = load i32, ptr %i.ai, align 8, !tbaa !56 ; 2 uses
  %i.bu = icmp eq i32 %.pr.i, 0
  br i1 %i.bu, label %psa_key_derivation_hkdf_read.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.y, %bb.u
  %i.bv = phi i32 [ %.pr.i, %bb.y ], [ %i.bl, %bb.u ] ; 3 uses
  %i.bw = load ptr, ptr %i.v, align 8, !tbaa !82
  %i.bx = load i64, ptr %.in.i, align 8, !tbaa !83 ; 7 uses
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %psa_mac_update.exit107.thread.thread.i, label %bb.z

bb.z:                                             ; preds = %.thread.i
  %i.bz = call noalias ptr @calloc(i64 noundef %i.bx, i64 noundef 1) #19 ; 5 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %psa_mac_update.exit107.thread135.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bz, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.bw, i64 range(i64 1, 0) %i.bx, i1 false)
  %cond.i.i95.i = icmp eq i32 %i.bv, 1
  br i1 %cond.i.i95.i, label %psa_driver_wrapper_mac_update.exit.i103.i, label %psa_driver_wrapper_mac_update.exit.thread.i96.i

psa_driver_wrapper_mac_update.exit.i103.i:        ; preds = %bb.aa
  %i.cb = call i32 @mbedtls_psa_mac_update(ptr noundef nonnull %i.as, ptr noundef nonnull %i.bz, i64 noundef range(i64 1, 0) %i.bx) #20 ; 2 uses
  %.not17.i104.i = icmp eq i32 %i.cb, 0
  br i1 %.not17.i104.i, label %psa_mac_update.exit107.thread.i, label %psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i105.i

psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i105.i: ; preds = %psa_driver_wrapper_mac_update.exit.i103.i
  %.pre.i106.i = load i32, ptr %i.ai, align 8, !tbaa !56
  br label %psa_driver_wrapper_mac_update.exit.thread.i96.i

psa_driver_wrapper_mac_update.exit.thread.i96.i:  ; preds = %bb.aa, %psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i105.i
  %i.cc = phi i32 [ %.pre.i106.i, %psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i105.i ], [ %i.bv, %bb.aa ]
  %.0.i1828.i97.i = phi i32 [ %i.cb, %psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i105.i ], [ -135, %bb.aa ] ; 2 uses
  switch i32 %i.cc, label %psa_driver_wrapper_mac_abort.exit.i.i98.i [
    i32 0, label %psa_mac_update.exit107.thread135.i
    i32 1, label %bb.ab
  ]

bb.ab:                                            ; preds = %psa_driver_wrapper_mac_update.exit.thread.i96.i
  %i.cd = call i32 @mbedtls_psa_mac_abort(ptr noundef nonnull %i.as) #20 ; 0 uses
  br label %psa_driver_wrapper_mac_abort.exit.i.i98.i

psa_driver_wrapper_mac_abort.exit.i.i98.i:        ; preds = %bb.ab, %psa_driver_wrapper_mac_update.exit.thread.i96.i
  store i8 0, ptr %i.aq, align 4, !tbaa !57
  %i.ce = load i8, ptr %i.ap, align 1
  %i.cf = and i8 %i.ce, -2
  store i8 %i.cf, ptr %i.ap, align 1
  store i32 0, ptr %i.ai, align 8, !tbaa !56
  br label %psa_mac_update.exit107.thread135.i

psa_mac_update.exit107.thread135.i:               ; preds = %bb.z, %psa_driver_wrapper_mac_abort.exit.i.i98.i, %psa_driver_wrapper_mac_update.exit.thread.i96.i
  %.sroa.8.024.i100.ph.i = phi i64 [ %i.bx, %psa_driver_wrapper_mac_abort.exit.i.i98.i ], [ %i.bx, %psa_driver_wrapper_mac_update.exit.thread.i96.i ], [ 0, %bb.z ]
  %.0.i101.ph.i = phi i32 [ %.0.i1828.i97.i, %psa_driver_wrapper_mac_abort.exit.i.i98.i ], [ %.0.i1828.i97.i, %psa_driver_wrapper_mac_update.exit.thread.i96.i ], [ -141, %bb.z ]
  call void @mbedtls_zeroize_and_free(ptr noundef %i.bz, i64 noundef %.sroa.8.024.i100.ph.i) #20
  br label %psa_key_derivation_hkdf_read.exit

psa_mac_update.exit107.thread.i:                  ; preds = %psa_driver_wrapper_mac_update.exit.i103.i
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.bz, i64 noundef %i.bx) #20
  %.pre.i = load i32, ptr %i.ai, align 8, !tbaa !56 ; 2 uses
  %i.cg = icmp eq i32 %.pre.i, 0
  br i1 %i.cg, label %psa_key_derivation_hkdf_read.exit, label %psa_mac_update.exit107.thread.thread.i

psa_mac_update.exit107.thread.thread.i:           ; preds = %psa_mac_update.exit107.thread.i, %.thread.i
  %i.ch = phi i32 [ %.pre.i, %psa_mac_update.exit107.thread.i ], [ %i.bv, %.thread.i ] ; 2 uses
  %i.ci = call noalias dereferenceable_or_null(1) ptr @calloc(i64 noundef 1, i64 noundef 1) #19 ; 5 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %psa_mac_update.exit120.thread141.i, label %bb.ac

bb.ac:                                            ; preds = %psa_mac_update.exit107.thread.thread.i
  %i.ck = load i8, ptr %i.ag, align 1
  store i8 %i.ck, ptr %i.ci, align 1
  %cond.i.i108.i = icmp eq i32 %i.ch, 1
  br i1 %cond.i.i108.i, label %psa_driver_wrapper_mac_update.exit.i116.i, label %psa_driver_wrapper_mac_update.exit.thread.i109.i

psa_driver_wrapper_mac_update.exit.i116.i:        ; preds = %bb.ac
  %i.cl = call i32 @mbedtls_psa_mac_update(ptr noundef nonnull %i.as, ptr noundef nonnull %i.ci, i64 noundef range(i64 1, 0) 1) #20 ; 2 uses
  %.not17.i117.i = icmp eq i32 %i.cl, 0
  br i1 %.not17.i117.i, label %bb.ae, label %psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i118.i

psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i118.i: ; preds = %psa_driver_wrapper_mac_update.exit.i116.i
  %.pre.i119.i = load i32, ptr %i.ai, align 8, !tbaa !56
  br label %psa_driver_wrapper_mac_update.exit.thread.i109.i

psa_driver_wrapper_mac_update.exit.thread.i109.i: ; preds = %bb.ac, %psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i118.i
  %i.cm = phi i32 [ %.pre.i119.i, %psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i118.i ], [ %i.ch, %bb.ac ]
  %.0.i1828.i110.i = phi i32 [ %i.cl, %psa_driver_wrapper_mac_update.exit.psa_driver_wrapper_mac_update.exit.thread_crit_edge.i118.i ], [ -135, %bb.ac ] ; 2 uses
  switch i32 %i.cm, label %psa_driver_wrapper_mac_abort.exit.i.i111.i [
    i32 0, label %psa_mac_update.exit120.thread141.i
    i32 1, label %bb.ad
  ]

bb.ad:                                            ; preds = %psa_driver_wrapper_mac_update.exit.thread.i109.i
  %i.cn = call i32 @mbedtls_psa_mac_abort(ptr noundef nonnull %i.as) #20 ; 0 uses
  br label %psa_driver_wrapper_mac_abort.exit.i.i111.i

psa_driver_wrapper_mac_abort.exit.i.i111.i:       ; preds = %bb.ad, %psa_driver_wrapper_mac_update.exit.thread.i109.i
  store i8 0, ptr %i.aq, align 4, !tbaa !57
  %i.co = load i8, ptr %i.ap, align 1
  %i.cp = and i8 %i.co, -2
  store i8 %i.cp, ptr %i.ap, align 1
  store i32 0, ptr %i.ai, align 8, !tbaa !56
  br label %psa_mac_update.exit120.thread141.i

psa_mac_update.exit120.thread141.i:               ; preds = %psa_mac_update.exit107.thread.thread.i, %psa_driver_wrapper_mac_abort.exit.i.i111.i, %psa_driver_wrapper_mac_update.exit.thread.i109.i
  %.sroa.8.024.i113.ph.i = phi i64 [ 1, %psa_driver_wrapper_mac_abort.exit.i.i111.i ], [ 1, %psa_driver_wrapper_mac_update.exit.thread.i109.i ], [ 0, %psa_mac_update.exit107.thread.thread.i ]
  %.0.i114.ph.i = phi i32 [ %.0.i1828.i110.i, %psa_driver_wrapper_mac_abort.exit.i.i111.i ], [ %.0.i1828.i110.i, %psa_driver_wrapper_mac_update.exit.thread.i109.i ], [ -141, %psa_mac_update.exit107.thread.thread.i ]
  call void @mbedtls_zeroize_and_free(ptr noundef %i.ci, i64 noundef %.sroa.8.024.i113.ph.i) #20
  br label %psa_key_derivation_hkdf_read.exit

bb.ae:                                            ; preds = %psa_driver_wrapper_mac_update.exit.i116.i
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.ci, i64 noundef 1) #20
  %i.cq = call i32 @psa_mac_sign_finish(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.af, i64 noundef 64, ptr noundef nonnull %i.b) ; 2 uses
  %.not83.i = icmp eq i32 %i.cq, 0
  br i1 %.not83.i, label %bb.n, label %psa_key_derivation_hkdf_read.exit

psa_key_derivation_hkdf_read.exit:                ; preds = %bb.n, %bb.o, %bb.p, %bb.t, %bb.y, %psa_mac_update.exit107.thread.i, %bb.ae, %bb.k, %bb.l, %psa_key_derivation_start_hmac.exit.i, %psa_mac_update.exit.thread126.i, %psa_mac_update.exit107.thread135.i, %psa_mac_update.exit120.thread141.i
  %.2.i = phi i32 [ -137, %bb.k ], [ %.0.i114.ph.i, %psa_mac_update.exit120.thread141.i ], [ -137, %bb.l ], [ %i.bj, %psa_key_derivation_start_hmac.exit.i ], [ %.0.i101.ph.i, %psa_mac_update.exit107.thread135.i ], [ %.0.i.ph.i, %psa_mac_update.exit.thread126.i ], [ 0, %bb.o ], [ 0, %bb.n ], [ -137, %bb.y ], [ -137, %bb.t ], [ %i.cq, %bb.ae ], [ -137, %bb.p ], [ -137, %psa_mac_update.exit107.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %psa_crypto_local_output_alloc.exit

bb.af:                                            ; preds = %bb.h, %bb.h
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cs = and i32 %.0.i, 255                      ; 3 uses
  %trunc.i67 = trunc i32 %.0.i to i8              ; 2 uses
  %switch.tableidx313 = add i8 %trunc.i67, -3     ; 2 uses
  %i.ct = icmp ult i8 %switch.tableidx313, 17
  br i1 %i.ct, label %switch.lookup314, label %bb.ag

switch.lookup314:                                 ; preds = %bb.af
  %i.cu = zext nneg i8 %switch.tableidx313 to i64
  %switch.gep315 = getelementptr inbounds nuw i8, ptr @switch.table.psa_key_policy_algorithm_intersection.31, i64 %i.cu
  %switch.load316 = load i8, ptr %switch.gep315, align 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %switch.lookup314
  %i.cv = phi i8 [ %switch.load316, %switch.lookup314 ], [ 0, %bb.af ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !85
  switch i32 %i.cx, label %psa_crypto_local_output_alloc.exit.thread88 [
    i32 4, label %bb.ah
    i32 5, label %bb.ai
  ]

bb.ah:                                            ; preds = %bb.ag
  store i32 5, ptr %i.cw, align 4, !tbaa !85
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 5 ; 10 uses
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 6 uses
  %i.dg = or disjoint i32 %i.cs, 58720256         ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 11 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.in152.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  br i1 %i.g, label %psa_crypto_local_output_alloc.exit.thread95, label %.outer.split.i.preheader.preheader

.outer.split.i.preheader.preheader:               ; preds = %bb.ai
  %switch.tableidx317 = add nsw i32 %i.cs, -3     ; 2 uses
  %i.dp = icmp ult i32 %switch.tableidx317, 17
  %i.dq = zext nneg i32 %switch.tableidx317 to i64
  %switch.gep319 = getelementptr inbounds nuw i8, ptr @switch.table.psa_key_policy_algorithm_intersection.31, i64 %i.dq
  %switch.tableidx321 = add nsw i32 %i.cs, -3     ; 2 uses
  %i.dr = icmp ult i32 %switch.tableidx321, 17
  %i.ds = zext nneg i32 %switch.tableidx321 to i64
  %switch.gep323 = getelementptr inbounds nuw i8, ptr @switch.table.psa_key_policy_algorithm_intersection.31, i64 %i.ds
  br label %.outer.split.i.preheader

.outer.split.i.preheader:                         ; preds = %.outer.split.i.preheader.preheader, %.outer.i
  %.038.ph.i144 = phi i64 [ %i.gz, %.outer.i ], [ %2, %.outer.split.i.preheader.preheader ] ; 2 uses
  %.039.ph.i143 = phi ptr [ %i.gy, %.outer.i ], [ %i.p, %.outer.split.i.preheader.preheader ] ; 2 uses
  br label %.outer.split.i

.outer.split.i:                                   ; preds = %.outer.split.i.preheader, %psa_key_derivation_tls12_prf_generate_next_block.exit.i
  %i.dt = load i8, ptr %i.cr, align 8, !tbaa !127 ; 4 uses
  %i.du = icmp eq i8 %i.dt, 0
  br i1 %i.du, label %bb.aj, label %.outer.i

bb.aj:                                            ; preds = %.outer.split.i
  switch i8 %trunc.i67, label %bb.ak [
    i8 3, label %bb.al
    i8 4, label %.fold.split.i.i81
    i8 5, label %.fold.split.i.i81
    i8 8, label %.fold.split77.i.i
    i8 9, label %.fold.split78.i.i
    i8 10, label %.fold.split79.i.i
    i8 11, label %.fold.split80.i.i
    i8 12, label %.fold.split77.i.i
    i8 13, label %.fold.split78.i.i
    i8 16, label %.fold.split77.i.i
    i8 17, label %.fold.split78.i.i
    i8 18, label %.fold.split79.i.i
    i8 19, label %.fold.split80.i.i
  ]

bb.ak:                                            ; preds = %bb.aj
  br label %bb.al

.fold.split.i.i81:                                ; preds = %bb.aj, %bb.aj
  br label %bb.al

.fold.split77.i.i:                                ; preds = %bb.aj, %bb.aj, %bb.aj
  br label %bb.al

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
  %i.dx = load i8, ptr %i.cy, align 1, !tbaa !128 ; 2 uses
  %i.dy = icmp eq i8 %i.dx, -1
  br i1 %i.dy, label %psa_key_derivation_tls12_prf_generate_next_block.exit.thread.i, label %bb.am

psa_key_derivation_tls12_prf_generate_next_block.exit.thread.i: ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %psa_crypto_local_output_alloc.exit.thread88

bb.am:                                            ; preds = %bb.al
  %i.dz = add nuw i8 %i.dx, 1
  store i8 %i.dz, ptr %i.cy, align 1, !tbaa !128
  store i8 %i.dw, ptr %i.cr, align 8, !tbaa !127
  %i.ea = load ptr, ptr %i.cz, align 8, !tbaa !86
  %i.eb = load i64, ptr %i.da, align 8, !tbaa !87 ; 2 uses
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
  store i32 1, ptr %5, align 8, !tbaa !56
  call void @psa_reset_key_attributes(ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.eh = load i8, ptr %i.cy, align 1, !tbaa !128
  %i.ei = icmp eq i8 %i.eh, 1
  br i1 %i.ei, label %bb.ap, label %bb.ay

bb.ap:                                            ; preds = %bb.ao
  %i.ej = load ptr, ptr %i.dj, align 8, !tbaa !88
  %i.ek = load i64, ptr %i.dk, align 8, !tbaa !89 ; 7 uses
  %i.el = load i32, ptr %5, align 8, !tbaa !56    ; 4 uses
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
  %.pre.i.i.i = load i32, ptr %5, align 8, !tbaa !56
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
  store i32 0, ptr %5, align 8, !tbaa !56
  br label %psa_mac_update.exit.thread126.i.i

psa_mac_update.exit.thread126.i.i:                ; preds = %psa_driver_wrapper_mac_abort.exit.i.i.i.i, %psa_driver_wrapper_mac_update.exit.thread.i.i.i, %bb.ar
  %.sroa.8.024.i.ph.i.i = phi i64 [ %i.ek, %psa_driver_wrapper_mac_abort.exit.i.i.i.i ], [ %i.ek, %psa_driver_wrapper_mac_update.exit.thread.i.i.i ], [ 0, %bb.ar ]
  %.0.i.ph.i.i = phi i32 [ %.0.i1828.i.i.i, %psa_driver_wrapper_mac_abort.exit.i.i.i.i ], [ %.0.i1828.i.i.i, %psa_driver_wrapper_mac_update.exit.thread.i.i.i ], [ -141, %bb.ar ]
  call void @mbedtls_zeroize_and_free(ptr noundef %i.eo, i64 noundef %.sroa.8.024.i.ph.i.i) #20
  br label %psa_mac_update.exit98.thread132.i.i

bb.au:                                            ; preds = %psa_driver_wrapper_mac_update.exit.i.i.i
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.eo, i64 noundef %i.ek) #20
  %.pr.i.i = load i32, ptr %5, align 8, !tbaa !56 ; 2 uses
  %i.ev = icmp eq i32 %.pr.i.i, 0
  br i1 %i.ev, label %psa_key_derivation_tls12_prf_generate_next_block.exit.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.au, %bb.aq
  %i.ew = phi i32 [ %.pr.i.i, %bb.au ], [ %i.el, %bb.aq ] ; 2 uses
  %i.ex = load ptr, ptr %.in152.i.i, align 8, !tbaa !90
  %i.ey = load i64, ptr %.in.i.i, align 8, !tbaa !91 ; 7 uses
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
  %.pre.i97.i.i = load i32, ptr %5, align 8, !tbaa !56
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
end_hunk_0
