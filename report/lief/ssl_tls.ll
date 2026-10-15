Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/ssl_tls?download=true
inline.NumInlined: 207
inline.NumDeleted: 67
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@mbedtls_ssl_derive_keys:bb.a

bb.s:                                             ; preds = %bb.d
  %i.bg = load ptr, ptr %i.k, align 8, !tbaa !192
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 2088 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 2208
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !257
  %i.bk = load i64, ptr %i.b, align 8, !tbaa !36
  %i.bl = call i32 %i.bg(ptr noundef nonnull %i.bh, i64 noundef %i.bj, ptr noundef nonnull %.041.i, ptr noundef nonnull %.040.i, i64 noundef %i.bk, ptr noundef nonnull %i.p, i64 noundef 48) #24, !inline_history !255 ; 2 uses
  %.not44.i = icmp eq i32 %i.bl, 0
  br i1 %.not44.i, label %bb.t, label %ssl_compute_master.exit.thread

bb.t:                                             ; preds = %bb.s
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.bh, i64 noundef 118) #24
  br label %bb.u

.critedge.i:                                      ; preds = %bb.q, %setup_psa_key_derivation.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %ssl_compute_master.exit.thread

ssl_compute_master.exit.thread:                   ; preds = %.critedge.i, %bb.r, %bb.s
  %.1.i.ph = phi i32 [ %i.bl, %bb.s ], [ -32640, %bb.r ], [ -32640, %.critedge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.w

bb.u:                                             ; preds = %bb.r, %bb.t, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !63  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 2024 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.bn, i64 64, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 2056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i64 32, i1 false)
  %i.bp = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 2056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, ptr noundef nonnull align 16 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.c, i64 noundef 64) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !78
  %i.bt = load ptr, ptr %i.n, align 8, !tbaa !79  ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !112
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 232
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !172
  %i.bz = load ptr, ptr %i.d, align 8, !tbaa !63  ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !192
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 2024
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !75
  %i.cf = load ptr, ptr %0, align 8, !tbaa !31
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !84
  %i.ci = zext i8 %i.ch to i32
  %i.cj = call fastcc i32 @ssl_tls12_populate_transform(ptr noundef %i.bs, i32 noundef %i.bv, ptr noundef nonnull %i.bw, i32 noundef %i.by, ptr noundef %i.cb, ptr noundef nonnull %i.cc, i32 noundef %i.ce, i32 noundef %i.ci, ptr noundef nonnull %0) ; 2 uses
  %.not28 = icmp eq i32 %i.cj, 0
  br i1 %.not28, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ck = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 2024
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.cl, i64 noundef 64) #24
  br label %bb.w

bb.w:                                             ; preds = %ssl_compute_master.exit.thread, %bb.u, %bb.v
  %.0 = phi i32 [ 0, %bb.v ], [ %.1.i.ph, %ssl_compute_master.exit.thread ], [ %i.cj, %bb.u ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ssl_tls12_populate_transform(ptr noundef initializes((84, 92), (170, 234)) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address) %4, ptr noundef %5, i32 noundef %6, i32 noundef range(i32 0, 256) %7, ptr nofree noundef readonly captures(none) %8) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca [256 x i8], align 16              ; 11 uses
  %i.e = alloca i16, align 2                      ; 5 uses
  %9 = alloca %struct.psa_key_attributes_s, align 4 ; 13 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  store i32 %3, ptr %i.h, align 4, !tbaa !144
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %6, ptr %i.i, align 8, !tbaa !167
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 170
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %i.j, ptr noundef nonnull align 1 dereferenceable(64) %5, i64 64, i1 false)
  %i.k = icmp eq i32 %6, 772
  br i1 %i.k, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @mbedtls_ssl_ciphersuite_from_id(i32 noundef %1) #24 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.an, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.o = load i8, ptr %i.n, align 8, !tbaa !145
  %i.p = zext i8 %i.o to i32                      ; 2 uses
  %i.q = call i32 @mbedtls_ssl_cipher_to_psa(i32 noundef %i.p, i64 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %mbedtls_ssl_get_mode_from_ciphersuite.exit

bb.d:                                             ; preds = %bb.c
  %i.s = load i32, ptr %i.a, align 4, !tbaa !35   ; 2 uses
  %i.t = icmp eq i32 %i.s, 71319552
  %i.u = and i32 %i.s, 2130706432
  %i.v = icmp eq i32 %i.u, 83886080
  %..i.i = select i1 %i.v, i32 3, i32 0
  %.0.i.i = select i1 %i.t, i32 1, i32 %..i.i
  br label %mbedtls_ssl_get_mode_from_ciphersuite.exit

mbedtls_ssl_get_mode_from_ciphersuite.exit:       ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %.0.i.i, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.w = icmp eq i32 %3, 1
  %i.x = icmp eq i32 %.0.i, 1
  %or.cond.i.i = and i1 %i.w, %i.x
  %..i3.i = select i1 %or.cond.i.i, i32 2, i32 %.0.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.y = icmp eq i32 %..i3.i, 3                   ; 2 uses
  br i1 %i.y, label %bb.e, label %mbedtls_ssl_get_mode_from_ciphersuite.exit._crit_edge

mbedtls_ssl_get_mode_from_ciphersuite.exit._crit_edge: ; preds = %mbedtls_ssl_get_mode_from_ciphersuite.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !185
  br label %bb.f

bb.e:                                             ; preds = %mbedtls_ssl_get_mode_from_ciphersuite.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 19
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !258
  %i.ab = and i8 %i.aa, 2
  %.not = icmp eq i8 %i.ab, 0
  %i.ac = select i1 %.not, i64 16, i64 8          ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !185
  br label %bb.f

bb.f:                                             ; preds = %mbedtls_ssl_get_mode_from_ciphersuite.exit._crit_edge, %bb.e
  %i.ae = phi i64 [ %.pre, %mbedtls_ssl_get_mode_from_ciphersuite.exit._crit_edge ], [ %i.ac, %bb.e ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = call i32 @mbedtls_ssl_cipher_to_psa(i32 noundef %i.p, i64 noundef %i.ae, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, ptr noundef nonnull %i.g) ; 2 uses
  %.not185 = icmp eq i32 %i.ag, 0
  br i1 %.not185, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = tail call i32 @psa_status_to_mbedtls(i32 noundef %i.ag, ptr noundef nonnull @psa_to_ssl_errors, i64 noundef 7, ptr noundef nonnull @psa_generic_status_to_mbedtls) #24
  br label %bb.am

bb.h:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 17
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !62  ; 2 uses
  %i.ak = zext i8 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 112 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !63
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1432
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !259
  %i.ap = icmp eq i8 %i.ao, 1
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 544
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !34  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %i.ar, ptr %i.as, align 8, !tbaa !40
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 106
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 512
  %i.av = zext i8 %i.ar to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.at, ptr nonnull align 8 %i.au, i64 %i.av, i1 false)
  %i.aw = load ptr, ptr %i.al, align 8, !tbaa !63 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1465
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !260 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 105
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !41
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 138
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 1433
  %i.bc = zext i8 %i.ay to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ba, ptr nonnull align 1 %i.bb, i64 %i.bc, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bd = call i32 %4(ptr noundef %2, i64 noundef 48, ptr noundef nonnull @.str.14, ptr noundef nonnull %5, i64 noundef 64, ptr noundef nonnull %i.d, i64 noundef 256) #24 ; 2 uses
  %.not186 = icmp eq i32 %i.bd, 0
  br i1 %.not186, label %bb.k, label %bb.an

bb.k:                                             ; preds = %bb.j
  %i.be = load i64, ptr %i.g, align 8, !tbaa !36
  %i.bf = add i64 %i.be, 7
  %i.bg = lshr i64 %i.bf, 3                       ; 6 uses
  br i1 %i.y, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.bh, align 8, !tbaa !184
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 12, ptr %i.bi, align 8, !tbaa !261
  %i.bj = load i16, ptr %i.e, align 2, !tbaa !146 ; 2 uses
  %i.bk = icmp eq i16 %i.bj, 8196
  %spec.select = select i1 %i.bk, i64 12, i64 4   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %spec.select, ptr %i.bl, align 8, !tbaa !262
  %i.bm = load i64, ptr %i.af, align 8, !tbaa !185
  %reass.sub213 = sub i64 %i.bm, %spec.select
  %i.bn = add i64 %reass.sub213, 12
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.bo = load i16, ptr %i.e, align 2, !tbaa !146 ; 4 uses
  %i.bp = zext i16 %i.bo to i32                   ; 2 uses
  %i.bq = and i32 %i.bp, 28672
  %i.br = icmp eq i32 %i.bq, 8192
  %i.bs = lshr i32 %i.bp, 8
  %i.bt = and i32 %i.bs, 7
  %i.bu = shl nuw nsw i32 1, %i.bt                ; 7 uses
  %i.bv = select i1 %i.br, i32 %i.bu, i32 0       ; 2 uses
  %i.bw = zext nneg i32 %i.bv to i64              ; 3 uses
  %switch.tableidx = add i8 %i.aj, -3             ; 2 uses
  %i.bx = icmp ult i8 %switch.tableidx, 17
  br i1 %i.bx, label %switch.lookup, label %bb.n

switch.lookup:                                    ; preds = %bb.m
  %i.by = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.mbedtls_ssl_export_keying_material, i64 %i.by
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %switch.lookup
  %i.bz = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.m ] ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !184
  %i.cb = icmp samesign ugt i32 %i.bv, 1
  %.pre214 = load i32, ptr %i.f, align 4          ; 3 uses
  br i1 %i.cb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  switch i32 %.pre214, label %bb.p [
    i32 79696384, label %bb.q
    i32 79696128, label %bb.q
    i32 79695872, label %bb.q
    i32 71368448, label %bb.q
    i32 71319808, label %bb.q
    i32 71319552, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cc = icmp eq i16 %i.bo, 8196
  %i.cd = icmp eq i32 %.pre214, 75497728
  %or.cond15 = select i1 %i.cc, i1 %i.cd, i1 false
  %i.ce = icmp eq i32 %.pre214, 79696640
  %i.cf = select i1 %i.ce, i32 13, i32 0
  %i.cg = select i1 %or.cond15, i32 12, i32 %i.cf
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.p
  %i.ch = phi i32 [ %i.cg, %bb.p ], [ %i.bu, %bb.o ], [ %i.bu, %bb.o ], [ %i.bu, %bb.o ], [ %i.bu, %bb.o ], [ %i.bu, %bb.o ], [ %i.bu, %bb.o ]
  %i.ci = zext nneg i32 %i.ch to i64              ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !261
  switch i32 %..i3.i, label %bb.s [
    i32 0, label %.thread
    i32 2, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.ck = add nuw nsw i64 %i.bz, %i.bw
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.cl = add nuw nsw i64 %i.bz, %i.bw
  %i.cm = add nsw i64 %i.bw, -1
  %i.cn = and i64 %i.bz, %i.cm
  %i.co = sub nsw i64 %i.cl, %i.cn
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %storemerge = phi i64 [ %i.co, %bb.s ], [ %i.ck, %bb.r ] ; 2 uses
  store i64 %storemerge, ptr %0, align 8, !tbaa !263
  %i.cp = icmp eq i32 %6, 771
  br i1 %i.cp, label %bb.u, label %bb.am

bb.u:                                             ; preds = %bb.t
  %i.cq = add nsw i64 %storemerge, %i.ci
  br label %.thread

.thread:                                          ; preds = %bb.q, %bb.u, %bb.l
  %i.cr = phi i16 [ %i.bj, %bb.l ], [ %i.bo, %bb.u ], [ %i.bo, %bb.q ]
  %i.cs = phi i64 [ 12, %bb.l ], [ %i.ci, %bb.u ], [ %i.ci, %bb.q ]
  %storemerge210 = phi i64 [ %i.bn, %bb.l ], [ %i.cq, %bb.u ], [ %i.bz, %bb.q ]
  %.0160 = phi i64 [ 0, %bb.l ], [ %i.bz, %bb.u ], [ %i.bz, %bb.q ] ; 7 uses
  store i64 %storemerge210, ptr %0, align 8, !tbaa !263
  %trunc = trunc nuw i32 %7 to i8
  switch i8 %trunc, label %bb.am [
    i8 0, label %bb.v
    i8 1, label %bb.w
  ]

bb.v:                                             ; preds = %.thread
  %i.ct = shl nuw nsw i64 %.0160, 1               ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ct ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.bg
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0160
  br label %bb.x

bb.w:                                             ; preds = %.thread
  %i.cx = shl nuw nsw i64 %.0160, 1               ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cx ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.bg
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0160
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink235 = phi i64 [ 56, %bb.w ], [ 40, %bb.v ]
  %i.db = phi i64 [ %i.cx, %bb.w ], [ %i.ct, %bb.v ]
  %.sink231 = phi i64 [ 40, %bb.w ], [ 56, %bb.v ]
  %.0164 = phi ptr [ %i.cz, %bb.w ], [ %i.cu, %bb.v ]
  %.0163 = phi ptr [ %i.cy, %bb.w ], [ %i.cv, %bb.v ]
  %.0162 = phi ptr [ %i.da, %bb.w ], [ %i.d, %bb.v ]
  %.0161 = phi ptr [ %i.d, %bb.w ], [ %i.cw, %bb.v ]
  %10 = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.db
  %i.dc = getelementptr inbounds nuw i8, ptr %10, i64 %i.bg
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !262 ; 2 uses
  %.not188 = icmp eq i64 %i.de, 0
  %spec.select227 = select i1 %.not188, i64 %i.cs, i64 %i.de ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 %.sink235
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.bg ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.df, ptr nonnull align 1 %i.dg, i64 %spec.select227, i1 false)
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 %.sink231
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 %spec.select227
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dh, ptr nonnull align 1 %i.di, i64 %spec.select227, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 552
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !161 ; 2 uses
  %.not190 = icmp eq ptr %i.dk, null
  br i1 %.not190, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 560
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !162
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.do = icmp eq ptr %4, @tls_prf_sha384
  %i.dp = icmp eq ptr %4, @tls_prf_sha256
  %..i = select i1 %i.dp, i32 2, i32 0
  %.0.i207 = select i1 %i.do, i32 1, i32 %..i
  call void %i.dk(ptr noundef %i.dm, i32 noundef 0, ptr noundef %2, i64 noundef 48, ptr noundef nonnull %i.dn, ptr noundef nonnull %5, i32 noundef %.0.i207) #24
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dq = load i32, ptr %i.f, align 4, !tbaa !35  ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !143
  %.not191 = icmp eq i32 %i.dq, 67108864
  br i1 %.not191, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i32 256, ptr %i.ds, align 4, !tbaa !140
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 %i.dq, ptr %i.dt, align 4, !tbaa !141
  store i16 %i.cr, ptr %9, align 4, !tbaa !142
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.dv = call i32 @psa_import_key(ptr noundef nonnull %9, ptr noundef nonnull %.0164, i64 noundef %i.bg, ptr noundef nonnull %i.du) #24 ; 2 uses
  %.not192 = icmp eq i32 %i.dv, 0
  br i1 %.not192, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dw = call i32 @psa_status_to_mbedtls(i32 noundef %i.dv, ptr noundef nonnull @psa_to_ssl_errors, i64 noundef 7, ptr noundef nonnull @psa_generic_status_to_mbedtls) #24
  br label %bb.am

bb.ac:                                            ; preds = %bb.aa
  store i32 512, ptr %i.ds, align 4, !tbaa !140
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dy = call i32 @psa_import_key(ptr noundef nonnull %9, ptr noundef nonnull %.0163, i64 noundef %i.bg, ptr noundef nonnull %i.dx) #24 ; 2 uses
  %.not193 = icmp eq i32 %i.dy, 0
  br i1 %.not193, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dz = call i32 @psa_status_to_mbedtls(i32 noundef %i.dy, ptr noundef nonnull @psa_to_ssl_errors, i64 noundef 7, ptr noundef nonnull @psa_generic_status_to_mbedtls) #24
  br label %bb.am

bb.ae:                                            ; preds = %bb.ac, %bb.z
  %.not194 = icmp eq i64 %.0160, 0
  br i1 %.not194, label %bb.am, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ea = or disjoint i32 %i.ak, 58720256         ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.ea, ptr %i.eb, align 8, !tbaa !264
  %i.ec = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i32 1024, ptr %i.ec, align 4, !tbaa !140
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 %i.ea, ptr %i.ed, align 4, !tbaa !141
  store i16 4352, ptr %9, align 4, !tbaa !142
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ef = call i32 @psa_import_key(ptr noundef nonnull %9, ptr noundef nonnull %.0162, i64 noundef %.0160, ptr noundef nonnull %i.ee) #24 ; 2 uses
  %.not195 = icmp eq i32 %i.ef, 0
  br i1 %.not195, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eg = call i32 @psa_status_to_mbedtls(i32 noundef %i.ef, ptr noundef nonnull @psa_to_ssl_errors, i64 noundef 7, ptr noundef nonnull @psa_generic_status_to_mbedtls) #24
  br label %bb.am

bb.ah:                                            ; preds = %bb.af
  %i.eh = load i32, ptr %i.dr, align 4, !tbaa !143
  switch i32 %i.eh, label %bb.aj [
    i32 67108864, label %bb.ak
    i32 71319552, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.ei = load i32, ptr %i.h, align 4, !tbaa !144
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %bb.aj
  %storemerge211 = phi i32 [ 10240, %bb.aj ], [ 10241, %bb.ah ], [ 10241, %bb.ai ]
  store i32 %storemerge211, ptr %i.ec, align 4, !tbaa !140
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.el = call i32 @psa_import_key(ptr noundef nonnull %9, ptr noundef nonnull %.0161, i64 noundef %.0160, ptr noundef nonnull %i.ek) #24 ; 2 uses
  %.not196 = icmp eq i32 %i.el, 0
  br i1 %.not196, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.em = call i32 @psa_status_to_mbedtls(i32 noundef %i.el, ptr noundef nonnull @psa_to_ssl_errors, i64 noundef 7, ptr noundef nonnull @psa_generic_status_to_mbedtls) #24
  br label %bb.am

bb.am:                                            ; preds = %bb.t, %.thread, %bb.ae, %bb.ak, %bb.al, %bb.ag, %bb.ad, %bb.ab, %bb.g
  %.2 = phi i32 [ %i.ah, %bb.g ], [ %i.dw, %bb.ab ], [ %i.dz, %bb.ad ], [ %i.eg, %bb.ag ], [ %i.em, %bb.al ], [ 0, %bb.ak ], [ 0, %bb.ae ], [ -27648, %.thread ], [ -27648, %bb.t ]
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.d, i64 noundef 256) #24
  br label %bb.an

bb.an:                                            ; preds = %bb.j, %bb.b, %bb.a, %bb.am
  %.0166 = phi i32 [ -135, %bb.b ], [ -27648, %bb.a ], [ %.2, %bb.am ], [ %i.bd, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  ret i32 %.0166
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 -1, 1) i32 @mbedtls_ssl_set_calc_verify_md(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 5, label %.sink.split
    i32 4, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b
  %ssl_calc_verify_tls_sha384.sink = phi ptr [ @ssl_calc_verify_tls_sha256, %bb.b ], [ @ssl_calc_verify_tls_sha384, %bb.a ]
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %ssl_calc_verify_tls_sha384.sink, ptr %i.c, align 8, !tbaa !193
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @ssl_calc_verify_tls_sha384(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #4 {
bb.a:
  %3 = alloca %struct.psa_hash_operation_s, align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1704
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %3, i8 0, i64 232, i1 false), !alias.scope !267
  %i.d = call i32 @psa_hash_clone(ptr noundef nonnull %i.c, ptr noundef nonnull %3) #24 ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %ssl_calc_verify_tls_psa.exit

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 @psa_hash_finish(ptr noundef nonnull %3, ptr noundef %1, i64 noundef 48, ptr noundef %2) #24
  br label %ssl_calc_verify_tls_psa.exit

ssl_calc_verify_tls_psa.exit:                     ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.d, %bb.a ], [ %i.e, %bb.b ]
  %i.f = call i32 @psa_hash_abort(ptr noundef nonnull %3) #24 ; 0 uses
  %i.g = call i32 @mbedtls_md_error_from_psa(i32 noundef %.0.i) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define internal i32 @ssl_calc_verify_tls_sha256(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #4 {
bb.a:
  %3 = alloca %struct.psa_hash_operation_s, align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1472
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %3, i8 0, i64 232, i1 false), !alias.scope !270
  %i.d = call i32 @psa_hash_clone(ptr noundef nonnull %i.c, ptr noundef nonnull %3) #24 ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %ssl_calc_verify_tls_psa.exit

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 @psa_hash_finish(ptr noundef nonnull %3, ptr noundef %1, i64 noundef 32, ptr noundef %2) #24
  br label %ssl_calc_verify_tls_psa.exit

ssl_calc_verify_tls_psa.exit:                     ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.d, %bb.a ], [ %i.e, %bb.b ]
  %i.f = call i32 @psa_hash_abort(ptr noundef nonnull %3) #24 ; 0 uses
  %i.g = call i32 @mbedtls_md_error_from_psa(i32 noundef %.0.i) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_ssl_resend_hello_request(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !31     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 292
  %i.c = load i32, ptr %i.b, align 4, !tbaa !159
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
end_hunk_0
