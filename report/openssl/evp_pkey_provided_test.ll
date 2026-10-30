Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/evp_pkey_provided_test?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@test_print_key_using_pem:bb.a
  %i.r = tail call i32 @PEM_write_bio_PKCS8PrivateKey(ptr noundef %i.p, ptr noundef %1, ptr noundef %i.q, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.59) #5
  %i.s = icmp ne i32 %i.r, 0
  %i.t = zext i1 %i.s to i32
  %i.u = tail call i32 @test_true(ptr noundef nonnull @.str, i32 noundef 161, ptr noundef nonnull @.str.91, i32 noundef %i.t) #5
  %.not27 = icmp eq i32 %i.u, 0
  br i1 %.not27, label %bb.s, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr @bio_out, align 8, !tbaa !20
  %i.w = tail call ptr @EVP_aes_256_cbc() #5
  %i.x = tail call i32 @PEM_write_bio_PKCS8PrivateKey(ptr noundef %i.v, ptr noundef %1, ptr noundef %i.w, ptr noundef null, i32 noundef 0, ptr noundef nonnull @pass_cb, ptr noundef null) #5
  %i.y = icmp ne i32 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %i.aa = tail call i32 @test_true(ptr noundef nonnull @.str, i32 noundef 164, ptr noundef nonnull @.str.92, i32 noundef %i.z) #5
  %.not28 = icmp eq i32 %i.aa, 0
  br i1 %.not28, label %bb.s, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr @bio_out, align 8, !tbaa !20
  %i.ac = tail call ptr @EVP_aes_256_cbc() #5
  %i.ad = tail call i32 @PEM_write_bio_PKCS8PrivateKey(ptr noundef %i.ab, ptr noundef %1, ptr noundef %i.ac, ptr noundef null, i32 noundef 0, ptr noundef nonnull @pass_cb_error, ptr noundef null) #5
  %i.ae = icmp ne i32 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  %i.ag = tail call i32 @test_false(ptr noundef nonnull @.str, i32 noundef 168, ptr noundef nonnull @.str.93, i32 noundef %i.af) #5
  %.not29 = icmp eq i32 %i.ag, 0
  br i1 %.not29, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr @bio_out, align 8, !tbaa !20
  %i.ai = tail call i32 @PEM_write_bio_PKCS8PrivateKey_nid(ptr noundef %i.ah, ptr noundef %1, i32 noundef 146, ptr noundef nonnull inttoptr (i64 -1 to ptr), i32 noundef 0, ptr noundef null, ptr noundef null) #5
  %i.aj = icmp ne i32 %i.ai, 0
  %i.ak = zext i1 %i.aj to i32
  %i.al = tail call i32 @test_true(ptr noundef nonnull @.str, i32 noundef 172, ptr noundef nonnull @.str.94, i32 noundef %i.ak) #5
  %.not30 = icmp eq i32 %i.al, 0
  br i1 %.not30, label %bb.s, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = load ptr, ptr @bio_out, align 8, !tbaa !20
  %i.an = tail call i32 @PEM_write_bio_PKCS8PrivateKey_nid(ptr noundef %i.am, ptr noundef %1, i32 noundef 146, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.59) #5
  %i.ao = icmp ne i32 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  %i.aq = tail call i32 @test_true(ptr noundef nonnull @.str, i32 noundef 175, ptr noundef nonnull @.str.95, i32 noundef %i.ap) #5
  %.not31 = icmp eq i32 %i.aq, 0
  br i1 %.not31, label %bb.s, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr @bio_out, align 8, !tbaa !20
  %i.as = tail call i32 @PEM_write_bio_PKCS8PrivateKey_nid(ptr noundef %i.ar, ptr noundef %1, i32 noundef 146, ptr noundef null, i32 noundef 0, ptr noundef nonnull @pass_cb, ptr noundef null) #5
  %i.at = icmp ne i32 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %i.av = tail call i32 @test_true(ptr noundef nonnull @.str, i32 noundef 178, ptr noundef nonnull @.str.96, i32 noundef %i.au) #5
  %.not32 = icmp eq i32 %i.av, 0
  br i1 %.not32, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = load ptr, ptr @bio_out, align 8, !tbaa !20
  %i.ax = tail call i32 @PEM_write_bio_PKCS8PrivateKey_nid(ptr noundef %i.aw, ptr noundef %1, i32 noundef 146, ptr noundef null, i32 noundef 0, ptr noundef nonnull @pass_cb_error, ptr noundef null) #5
  %i.ay = icmp ne i32 %i.ax, 0
  %i.az = zext i1 %i.ay to i32
  %i.ba = tail call i32 @test_false(ptr noundef nonnull @.str, i32 noundef 181, ptr noundef nonnull @.str.97, i32 noundef %i.az) #5
  %.not33 = icmp eq i32 %i.ba, 0
  br i1 %.not33, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = tail call i32 @EVP_PKEY_print_private(ptr noundef %i.b, ptr noundef %1, i32 noundef 0, ptr noundef null) #5
  %i.bc = tail call i32 @test_int_gt(ptr noundef nonnull @.str, i32 noundef 184, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.38, i32 noundef %i.bb, i32 noundef 0) #5
  %.not34 = icmp eq i32 %i.bc, 0
  br i1 %.not34, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = tail call fastcc i32 @compare_with_file(ptr noundef %0, i32 noundef 0, ptr noundef %i.b)
  %i.be = tail call i32 @test_true(ptr noundef nonnull @.str, i32 noundef 185, ptr noundef nonnull @.str.99, i32 noundef %i.bd) #5
  %.not35 = icmp eq i32 %i.be, 0
  br i1 %.not35, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = tail call i32 @PEM_write_bio_PUBKEY(ptr noundef %i.b, ptr noundef %1) #5
  %i.bg = icmp ne i32 %i.bf, 0
  %i.bh = zext i1 %i.bg to i32
  %i.bi = tail call i32 @test_true(ptr noundef nonnull @.str, i32 noundef 187, ptr noundef nonnull @.str.100, i32 noundef %i.bh) #5
  %.not36 = icmp eq i32 %i.bi, 0
  br i1 %.not36, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = tail call fastcc i32 @compare_with_file(ptr noundef %0, i32 noundef 4, ptr noundef %i.b)
  %i.bk = tail call i32 @test_true(ptr noundef nonnull @.str, i32 noundef 188, ptr noundef nonnull @.str.101, i32 noundef %i.bj) #5
  %.not37 = icmp eq i32 %i.bk, 0
  br i1 %.not37, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = tail call i32 @PEM_write_bio_PrivateKey(ptr noundef %i.b, ptr noundef %1, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null) #5
  %i.bm = icmp ne i32 %i.bl, 0
  %i.bn = zext i1 %i.bm to i32
  %i.bo = tail call i32 @test_true(ptr noundef nonnull @.str, i32 noundef 191, ptr noundef nonnull @.str.102, i32 noundef %i.bn) #5
  %.not38 = icmp eq i32 %i.bo, 0
  br i1 %.not38, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = tail call fastcc i32 @compare_with_file(ptr noundef %0, i32 noundef 1, ptr noundef %i.b)
  %i.bq = tail call i32 @test_true(ptr noundef nonnull @.str, i32 noundef 192, ptr noundef nonnull @.str.103, i32 noundef %i.bp) #5
  %.not39 = icmp eq i32 %i.bq, 0
  br i1 %.not39, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = tail call i32 @PEM_write_bio_PrivateKey(ptr noundef %i.b, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null) #5
  %i.bs = icmp ne i32 %i.br, 0
  %i.bt = zext i1 %i.bs to i32
  %i.bu = tail call i32 @test_false(ptr noundef nonnull @.str, i32 noundef 195, ptr noundef nonnull @.str.104, i32 noundef %i.bt) #5
  %.not40 = icmp eq i32 %i.bu, 0
  br i1 %.not40, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bv = tail call i32 @PEM_write_bio_PrivateKey_traditional(ptr noundef %i.b, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null) #5
  %i.bw = icmp ne i32 %i.bv, 0
  %i.bx = zext i1 %i.bw to i32
  %i.by = tail call i32 @test_false(ptr noundef nonnull @.str, i32 noundef 197, ptr noundef nonnull @.str.105, i32 noundef %i.bx) #5
  %.not41 = icmp ne i32 %i.by, 0
  %spec.select = zext i1 %.not41 to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.r ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.bz = tail call i32 @BIO_free(ptr noundef %i.b) #5 ; 0 uses
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @test_print_key_using_encoder(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @test_print_key_type_using_encoder(ptr noundef %0, i32 noundef 0, ptr noundef %1)
  %.not.1 = icmp eq i32 %i.a, 0
  br i1 %.not.1, label %.thread16, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @test_print_key_type_using_encoder(ptr noundef %0, i32 noundef 1, ptr noundef %1)
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.thread16, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call fastcc i32 @test_print_key_type_using_encoder(ptr noundef %0, i32 noundef 2, ptr noundef %1)
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.thread16, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call fastcc i32 @test_print_key_type_using_encoder(ptr noundef %0, i32 noundef 3, ptr noundef %1)
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.thread16, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call fastcc i32 @test_print_key_type_using_encoder(ptr noundef %0, i32 noundef 4, ptr noundef %1)
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.thread16, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call fastcc i32 @test_print_key_type_using_encoder(ptr noundef %0, i32 noundef 5, ptr noundef %1)
  br label %.thread16

.thread16:                                        ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.f, %bb.e
  %i.k = phi i32 [ 0, %bb.e ], [ %i.j, %bb.f ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.k
}

declare ptr @EVP_PKEY_dup(ptr noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BN_set_word(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @BIO_new(ptr noundef) local_unnamed_addr #1

declare ptr @BIO_s_mem() local_unnamed_addr #1

declare i32 @PEM_write_bio_PrivateKey(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @EVP_aes_256_cbc() local_unnamed_addr #1

declare i32 @PEM_write_bio_PKCS8PrivateKey(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @pass_cb(ptr nofree readnone captures(none) %0, i32 %1, i32 %2, ptr nofree readnone captures(none) %3) #4 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @pass_cb_error(ptr nofree readnone captures(none) %0, i32 %1, i32 %2, ptr nofree readnone captures(none) %3) #4 {
bb.a:
  ret i32 -1
}

declare i32 @PEM_write_bio_PKCS8PrivateKey_nid(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_print_private(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @compare_with_file(ptr noundef %0, i32 noundef range(i32 -2147483648, 6) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 4 uses
  %i.b = alloca [4096 x i8], align 16             ; 10 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.e = icmp ult i32 %1, 6
  br i1 %i.e, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str, i32 noundef 92, ptr noundef nonnull @.str.112) #5
  br label %bb.ad

switch.lookup:                                    ; preds = %bb.a
  %i.f = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.compare_with_file, i64 %i.f
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.g = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.a, i64 noundef 80, ptr noundef nonnull @.str.113, ptr noundef %0, ptr noundef nonnull %switch.load) #5 ; 0 uses
  %i.h = load ptr, ptr @datadir, align 8, !tbaa !11
  %i.i = call ptr @test_mk_file_path(ptr noundef %i.h, ptr noundef nonnull %i.a) #5 ; 10 uses
  %i.j = call i32 @test_ptr(ptr noundef nonnull @.str, i32 noundef 98, ptr noundef nonnull @.str.114, ptr noundef %i.i) #5
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.ad, label %bb.c

bb.c:                                             ; preds = %switch.lookup
  call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str, i32 noundef 101, ptr noundef nonnull @.str.115, ptr noundef %i.i) #5
  %i.k = call ptr @BIO_new_file(ptr noundef %i.i, ptr noundef nonnull @.str.116) #5 ; 9 uses
  %i.l = call i32 @test_ptr(ptr noundef nonnull @.str, i32 noundef 103, ptr noundef nonnull @.str.117, ptr noundef %i.k) #5
  %.not21 = icmp eq i32 %i.l, 0
  br i1 %.not21, label %bb.ad, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call i32 @BIO_read_ex(ptr noundef %i.k, ptr noundef nonnull %i.b, i64 noundef 4096, ptr noundef nonnull %i.d) #5
  %i.n = icmp ne i32 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %i.p = call i32 @test_true(ptr noundef nonnull @.str, i32 noundef 106, ptr noundef nonnull @.str.118, i32 noundef %i.o) #5
  %.not22 = icmp eq i32 %i.p, 0
  br i1 %.not22, label %bb.ad, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = call i32 @BIO_eof(ptr noundef %i.k) #5
  %i.r = icmp ne i32 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %i.t = call i32 @test_true(ptr noundef nonnull @.str, i32 noundef 107, ptr noundef nonnull @.str.119, i32 noundef %i.s) #5
  %.not23 = icmp eq i32 %i.t, 0
  br i1 %.not23, label %bb.ad, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr %i.d, align 8, !tbaa !13
  %i.v = call i32 @test_size_t_lt(ptr noundef nonnull @.str, i32 noundef 108, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.121, i64 noundef %i.u, i64 noundef 4096) #5
  %.not24 = icmp eq i32 %i.v, 0
  br i1 %.not24, label %bb.ad, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = call i64 @BIO_ctrl(ptr noundef %2, i32 noundef 3, i64 noundef 0, ptr noundef nonnull %i.c) #5 ; 3 uses
  %i.x = trunc i64 %i.w to i32
  %i.y = call i32 @test_int_gt(ptr noundef nonnull @.str, i32 noundef 112, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.38, i32 noundef %i.x, i32 noundef 0) #5
  %.not25 = icmp eq i32 %i.y, 0
  br i1 %.not25, label %bb.ad, label %bb.h

bb.h:                                             ; preds = %bb.g
  %sext = shl i64 %i.w, 32                        ; 3 uses
  %i.z = ashr exact i64 %sext, 32                 ; 7 uses
  switch i32 %1, label %bb.i [
    i32 5, label %stripcr.exit35
    i32 2, label %stripcr.exit35
  ]

bb.i:                                             ; preds = %bb.h
  %.not15.i = icmp eq i64 %sext, 0
  br i1 %.not15.i, label %stripcr.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.i
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !11  ; 6 uses
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !29
  %i.ac = icmp eq i8 %i.ab, 13                    ; 2 uses
  %i.ad = add nsw i64 %i.z, -1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %.2.prol = select i1 %i.ac, i64 %i.ad, i64 %i.z ; 2 uses
  %.1.i.prol = select i1 %i.ac, ptr %i.aa, ptr %i.ae
  %i.af = add nsw i64 %i.z, -1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.2.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %.2.prol, %.lr.ph.i.prol ]
  %.1.unr = phi i64 [ %i.z, %.lr.ph.i.preheader ], [ %.2.prol, %.lr.ph.i.prol ]
  %.018.i.unr = phi ptr [ %i.aa, %.lr.ph.i.preheader ], [ %.1.i.prol, %.lr.ph.i.prol ]
  %.01217.i.unr = phi ptr [ %i.aa, %.lr.ph.i.preheader ], [ %i.ag, %.lr.ph.i.prol ]
  %.01316.i.unr = phi i64 [ %i.z, %.lr.ph.i.preheader ], [ %i.af, %.lr.ph.i.prol ]
  %i.ah = icmp eq i64 %sext, 4294967296
  br i1 %i.ah, label %stripcr.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.r
  %.1 = phi i64 [ %.2.1, %bb.r ], [ %.1.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.018.i = phi ptr [ %.1.i.1, %bb.r ], [ %.018.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.01217.i = phi ptr [ %i.as, %bb.r ], [ %.01217.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.01316.i = phi i64 [ %i.ar, %bb.r ], [ %.01316.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.ai = load i8, ptr %.01217.i, align 1, !tbaa !29 ; 2 uses
  %i.aj = icmp eq i8 %i.ai, 13
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i
  %i.ak = add i64 %.1, -1
  br label %.lr.ph.i.1

bb.k:                                             ; preds = %.lr.ph.i
  %.not14.i = icmp eq ptr %.01217.i, %.018.i
  br i1 %.not14.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 %i.ai, ptr %.018.i, align 1, !tbaa !29
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %.018.i, i64 1
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.m, %bb.j
  %.2 = phi i64 [ %i.ak, %bb.j ], [ %.1, %bb.m ]  ; 2 uses
  %.1.i = phi ptr [ %.018.i, %bb.j ], [ %i.al, %bb.m ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.01217.i, i64 1 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !29  ; 2 uses
  %i.ao = icmp eq i8 %i.an, 13
  br i1 %i.ao, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.1
  %.not14.i.1 = icmp eq ptr %i.am, %.1.i
  br i1 %.not14.i.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 %i.an, ptr %.1.i, align 1, !tbaa !29
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph.i.1
  %i.aq = add i64 %.2, -1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.2.1 = phi i64 [ %i.aq, %bb.q ], [ %.2, %bb.p ] ; 2 uses
  %.1.i.1 = phi ptr [ %.1.i, %bb.q ], [ %i.ap, %bb.p ]
  %i.ar = add i64 %.01316.i, -2                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01217.i, i64 2
  %.not.i.1 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.1, label %stripcr.exit, label %.lr.ph.i, !llvm.loop !34

stripcr.exit:                                     ; preds = %.lr.ph.i.prol.loopexit, %bb.r, %bb.i
  %.3 = phi i64 [ 0, %bb.i ], [ %.2.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.2.1, %bb.r ] ; 3 uses
  %i.at = load i64, ptr %i.d, align 8, !tbaa !13  ; 8 uses
  %.not15.i27 = icmp eq i64 %i.at, 0
  br i1 %.not15.i27, label %stripcr.exit35, label %.lr.ph.i28.preheader

.lr.ph.i28.preheader:                             ; preds = %stripcr.exit
  %xtraiter44 = and i64 %i.at, 1
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i28.prol.loopexit, label %.lr.ph.i28.prol

.lr.ph.i28.prol:                                  ; preds = %.lr.ph.i28.preheader
  %i.au = load i8, ptr %i.b, align 16, !tbaa !29
  %i.av = icmp eq i8 %i.au, 13
  br i1 %i.av, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i28.prol
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  br label %.lr.ph.i28.prol.loopexit.unr-lcssa

bb.t:                                             ; preds = %.lr.ph.i28.prol
  %i.ax = add nsw i64 %i.at, -1                   ; 2 uses
  store i64 %i.ax, ptr %i.d, align 8, !tbaa !13
  br label %.lr.ph.i28.prol.loopexit.unr-lcssa

.lr.ph.i28.prol.loopexit.unr-lcssa:               ; preds = %bb.t, %bb.s
  %3 = phi i64 [ %i.ax, %bb.t ], [ %i.at, %bb.s ]
  %.1.i33.prol = phi ptr [ %i.b, %bb.t ], [ %i.aw, %bb.s ]
  %i.ay = add nsw i64 %i.at, -1
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  br label %.lr.ph.i28.prol.loopexit

.lr.ph.i28.prol.loopexit:                         ; preds = %.lr.ph.i28.prol.loopexit.unr-lcssa, %.lr.ph.i28.preheader
  %.unr = phi i64 [ %i.at, %.lr.ph.i28.preheader ], [ %3, %.lr.ph.i28.prol.loopexit.unr-lcssa ]
  %.018.i29.unr = phi ptr [ %i.b, %.lr.ph.i28.preheader ], [ %.1.i33.prol, %.lr.ph.i28.prol.loopexit.unr-lcssa ]
  %.01217.i30.unr = phi ptr [ %i.b, %.lr.ph.i28.preheader ], [ %i.az, %.lr.ph.i28.prol.loopexit.unr-lcssa ]
  %.01316.i31.unr = phi i64 [ %i.at, %.lr.ph.i28.preheader ], [ %i.ay, %.lr.ph.i28.prol.loopexit.unr-lcssa ]
  %i.ba = icmp eq i64 %i.at, 1
  br i1 %i.ba, label %stripcr.exit35, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28.prol.loopexit, %bb.ac
  %4 = phi i64 [ %6, %bb.ac ], [ %.unr, %.lr.ph.i28.prol.loopexit ] ; 2 uses
  %.018.i29 = phi ptr [ %.1.i33.1, %bb.ac ], [ %.018.i29.unr, %.lr.ph.i28.prol.loopexit ] ; 4 uses
  %.01217.i30 = phi ptr [ %i.bl, %bb.ac ], [ %.01217.i30.unr, %.lr.ph.i28.prol.loopexit ] ; 4 uses
  %.01316.i31 = phi i64 [ %i.bk, %bb.ac ], [ %.01316.i31.unr, %.lr.ph.i28.prol.loopexit ]
  %i.bb = load i8, ptr %.01217.i30, align 1, !tbaa !29 ; 2 uses
  %i.bc = icmp eq i8 %i.bb, 13
  br i1 %i.bc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i28
  %i.bd = add i64 %4, -1                          ; 2 uses
  store i64 %i.bd, ptr %i.d, align 8, !tbaa !13
  br label %.lr.ph.i28.1

bb.v:                                             ; preds = %.lr.ph.i28
  %.not14.i32 = icmp eq ptr %.01217.i30, %.018.i29
  br i1 %.not14.i32, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 %i.bb, ptr %.018.i29, align 1, !tbaa !29
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.be = getelementptr inbounds nuw i8, ptr %.018.i29, i64 1
  br label %.lr.ph.i28.1

.lr.ph.i28.1:                                     ; preds = %bb.x, %bb.u
  %5 = phi i64 [ %i.bd, %bb.u ], [ %4, %bb.x ]    ; 2 uses
  %.1.i33 = phi ptr [ %.018.i29, %bb.u ], [ %i.be, %bb.x ] ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.01217.i30, i64 1 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !29  ; 2 uses
  %i.bh = icmp eq i8 %i.bg, 13
  br i1 %i.bh, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i28.1
  %.not14.i32.1 = icmp eq ptr %i.bf, %.1.i33
  br i1 %.not14.i32.1, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i8 %i.bg, ptr %.1.i33, align 1, !tbaa !29
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bi = getelementptr inbounds nuw i8, ptr %.1.i33, i64 1
  br label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.i28.1
  %i.bj = add i64 %5, -1                          ; 2 uses
  store i64 %i.bj, ptr %i.d, align 8, !tbaa !13
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %6 = phi i64 [ %i.bj, %bb.ab ], [ %5, %bb.aa ]
  %.1.i33.1 = phi ptr [ %.1.i33, %bb.ab ], [ %i.bi, %bb.aa ]
  %i.bk = add i64 %.01316.i31, -2                 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01217.i30, i64 2
  %.not.i34.1 = icmp eq i64 %i.bk, 0
  br i1 %.not.i34.1, label %stripcr.exit35, label %.lr.ph.i28, !llvm.loop !34

stripcr.exit35:                                   ; preds = %.lr.ph.i28.prol.loopexit, %bb.ac, %stripcr.exit, %bb.h, %bb.h
  %.038 = phi i64 [ %i.z, %bb.h ], [ %i.z, %bb.h ], [ %.3, %stripcr.exit ], [ %.3, %bb.ac ], [ %.3, %.lr.ph.i28.prol.loopexit ]
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.bn = load i64, ptr %i.d, align 8, !tbaa !13
  %i.bo = call i32 @test_mem_eq(ptr noundef nonnull @.str, i32 noundef 121, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.123, ptr noundef %i.bm, i64 noundef %.038, ptr noundef nonnull %i.b, i64 noundef %i.bn) #5
  %.not26 = icmp ne i32 %i.bo, 0
  %spec.select = zext i1 %.not26 to i32
  br label %bb.ad

bb.ad:                                            ; preds = %stripcr.exit35, %bb.g, %bb.d, %bb.e, %bb.f, %bb.c, %switch.lookup, %bb.b
  %.020 = phi ptr [ null, %bb.b ], [ null, %switch.lookup ], [ %i.k, %stripcr.exit35 ], [ %i.k, %bb.g ], [ %i.k, %bb.f ], [ %i.k, %bb.e ], [ %i.k, %bb.d ], [ %i.k, %bb.c ]
  %.019 = phi ptr [ null, %bb.b ], [ %i.i, %switch.lookup ], [ %i.i, %stripcr.exit35 ], [ %i.i, %bb.g ], [ %i.i, %bb.f ], [ %i.i, %bb.e ], [ %i.i, %bb.d ], [ %i.i, %bb.c ]
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %switch.lookup ], [ %spec.select, %stripcr.exit35 ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ]
  call void @CRYPTO_free(ptr noundef %.019, ptr noundef nonnull @.str, i32 noundef 126) #5
  %i.bp = call i64 @BIO_ctrl(ptr noundef %2, i32 noundef 1, i64 noundef 0, ptr noundef null) #5 ; 0 uses
  %i.bq = call i32 @BIO_free(ptr noundef %.020) #5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

declare i32 @PEM_write_bio_PUBKEY(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PEM_write_bio_PrivateKey_traditional(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BIO_free(ptr noundef) local_unnamed_addr #1

declare i32 @BIO_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @test_mk_file_path(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BIO_new_file(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BIO_read_ex(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BIO_eof(ptr noundef) local_unnamed_addr #1

declare i32 @test_size_t_lt(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @BIO_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @test_mem_eq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @test_print_key_type_using_encoder(ptr noundef %0, i32 noundef range(i32 -2147483648, 6) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @BIO_s_mem() #5
  %i.b = tail call ptr @BIO_new(ptr noundef %i.a) #5 ; 6 uses
  %i.c = icmp ult i32 %1, 6
  br i1 %i.c, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str, i32 noundef 259, ptr noundef nonnull @.str.129) #5
  br label %bb.q

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.test_print_key_type_using_encoder, i64 %i.d
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.e = zext nneg i32 %1 to i64
  %switch.gep43 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.test_print_key_type_using_encoder.2, i64 %i.e
  %switch.load44 = load ptr, ptr %switch.gep43, align 8
  %i.f = zext nneg i32 %1 to i64
  %switch.gep45 = getelementptr inbounds nuw i8, ptr @switch.table.test_print_key_type_using_encoder.3, i64 %i.f
  %switch.load46 = load i8, ptr %switch.gep45, align 1
  %i.g = tail call i32 @test_ptr(ptr noundef nonnull @.str, i32 noundef 263, ptr noundef nonnull @.str.87, ptr noundef %i.b) #5
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.q, label %bb.c

bb.c:                                             ; preds = %switch.lookup
  %switch.ext = zext i8 %switch.load46 to i32
  tail call void (ptr, ...) @test_note(ptr noundef nonnull @.str.130) #5
  %i.h = tail call ptr @OSSL_ENCODER_CTX_new_for_pkey(ptr noundef %2, i32 noundef %switch.ext, ptr noundef nonnull %switch.load, ptr noundef %switch.load44, ptr noundef null) #5 ; 23 uses
  %i.i = tail call i32 @test_ptr(ptr noundef nonnull @.str, i32 noundef 271, ptr noundef nonnull @.str.131, ptr noundef %i.h) #5
  %.not31 = icmp eq i32 %i.i, 0
  br i1 %.not31, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @OSSL_ENCODER_CTX_get_num_encoders(ptr noundef %i.h) #5
  %i.k = tail call i32 @test_int_ne(ptr noundef nonnull @.str, i32 noundef 273, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.38, i32 noundef %i.j, i32 noundef 0) #5
  %.not32 = icmp eq i32 %i.k, 0
  br i1 %.not32, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @test_note(ptr noundef nonnull @.str.133) #5
  %i.l = tail call i32 @OSSL_ENCODER_to_bio(ptr noundef %i.h, ptr noundef %i.b) #5
  %i.m = icmp ne i32 %i.l, 0
  %i.n = zext i1 %i.m to i32
  %i.o = tail call i32 @test_true(ptr noundef nonnull @.str, i32 noundef 278, ptr noundef nonnull @.str.134, i32 noundef %i.n) #5
  %.not33 = icmp eq i32 %i.o, 0
  br i1 %.not33, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call fastcc i32 @compare_with_file(ptr noundef %0, i32 noundef %1, ptr noundef %i.b)
  %i.q = tail call i32 @test_true(ptr noundef nonnull @.str, i32 noundef 279, ptr noundef nonnull @.str.135, i32 noundef %i.p) #5
  %.not34 = icmp eq i32 %i.q, 0
  br i1 %.not34, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = icmp eq i32 %1, 1
  br i1 %i.r, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.s = tail call i32 @OSSL_ENCODER_CTX_set_passphrase(ptr noundef %i.h, ptr noundef nonnull @.str.89, i64 noundef 4) #5
  %i.t = icmp ne i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %i.v = tail call i32 @test_true(ptr noundef nonnull @.str, i32 noundef 286, ptr noundef nonnull @.str.136, i32 noundef %i.u) #5
  %.not35 = icmp eq i32 %i.v, 0
  br i1 %.not35, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @test_note(ptr noundef nonnull @.str.137) #5
  %i.w = tail call i32 @OSSL_ENCODER_CTX_set_cipher(ptr noundef %i.h, ptr noundef nonnull @.str.139, ptr noundef null) #5
  %i.x = icmp ne i32 %i.w, 0
  %i.y = zext i1 %i.x to i32
  %i.z = tail call i32 @test_true(ptr noundef nonnull @.str, i32 noundef 291, ptr noundef nonnull @.str.138, i32 noundef %i.y) #5
  %.not36 = icmp eq i32 %i.z, 0
  br i1 %.not36, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr @bio_out, align 8, !tbaa !20
  %i.ab = tail call i32 @OSSL_ENCODER_to_bio(ptr noundef %i.h, ptr noundef %i.aa) #5
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = zext i1 %i.ac to i32
  %i.ae = tail call i32 @test_true(ptr noundef nonnull @.str, i32 noundef 292, ptr noundef nonnull @.str.140, i32 noundef %i.ad) #5
  %.not37 = icmp eq i32 %i.ae, 0
  br i1 %.not37, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @test_note(ptr noundef nonnull @.str.141) #5
  %i.af = tail call i32 @OSSL_ENCODER_CTX_set_cipher(ptr noundef %i.h, ptr noundef nonnull @.str.143, ptr noundef null) #5
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  %i.ai = tail call i32 @test_false(ptr noundef nonnull @.str, i32 noundef 297, ptr noundef nonnull @.str.142, i32 noundef %i.ah) #5
  %.not38 = icmp eq i32 %i.ai, 0
  br i1 %.not38, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = load ptr, ptr @bio_out, align 8, !tbaa !20
  %i.ak = tail call i32 @OSSL_ENCODER_to_bio(ptr noundef %i.h, ptr noundef %i.aj) #5
  %i.al = icmp ne i32 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %i.an = tail call i32 @test_false(ptr noundef nonnull @.str, i32 noundef 298, ptr noundef nonnull @.str.140, i32 noundef %i.am) #5
  %.not39 = icmp eq i32 %i.an, 0
  br i1 %.not39, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @test_note(ptr noundef nonnull @.str.144) #5
  %i.ao = tail call i32 @OSSL_ENCODER_CTX_set_cipher(ptr noundef %i.h, ptr noundef null, ptr noundef null) #5
  %i.ap = icmp ne i32 %i.ao, 0
  %i.aq = zext i1 %i.ap to i32
  %i.ar = tail call i32 @test_true(ptr noundef nonnull @.str, i32 noundef 303, ptr noundef nonnull @.str.145, i32 noundef %i.aq) #5
  %.not40 = icmp eq i32 %i.ar, 0
  br i1 %.not40, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = tail call i32 @OSSL_ENCODER_to_bio(ptr noundef %i.h, ptr noundef %i.b) #5
  %i.at = icmp ne i32 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %i.av = tail call i32 @test_true(ptr noundef nonnull @.str, i32 noundef 304, ptr noundef nonnull @.str.134, i32 noundef %i.au) #5
  %.not41 = icmp eq i32 %i.av, 0
  br i1 %.not41, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = tail call fastcc i32 @compare_with_file(ptr noundef %0, i32 noundef 1, ptr noundef %i.b)
  %i.ax = tail call i32 @test_true(ptr noundef nonnull @.str, i32 noundef 305, ptr noundef nonnull @.str.135, i32 noundef %i.aw) #5
  %.not42 = icmp eq i32 %i.ax, 0
  br i1 %.not42, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.g
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.n, %bb.o, %bb.k, %bb.l, %bb.i, %bb.j, %bb.h, %bb.e, %bb.f, %bb.c, %bb.d, %switch.lookup, %bb.p, %bb.b
  %.026 = phi ptr [ null, %bb.b ], [ %i.h, %bb.p ], [ %i.h, %bb.o ], [ %i.h, %bb.n ], [ %i.h, %bb.m ], [ %i.h, %bb.l ], [ %i.h, %bb.k ], [ %i.h, %bb.j ], [ %i.h, %bb.i ], [ %i.h, %bb.h ], [ %i.h, %bb.f ], [ %i.h, %bb.e ], [ %i.h, %bb.d ], [ %i.h, %bb.c ], [ null, %switch.lookup ]
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %switch.lookup ]
  %i.ay = tail call i32 @BIO_free(ptr noundef %i.b) #5 ; 0 uses
  tail call void @OSSL_ENCODER_CTX_free(ptr noundef %.026) #5
  ret i32 %.0
}

declare void @test_note(ptr noundef, ...) local_unnamed_addr #1

declare ptr @OSSL_ENCODER_CTX_new_for_pkey(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @test_int_ne(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @OSSL_ENCODER_CTX_get_num_encoders(ptr noundef) local_unnamed_addr #1

declare i32 @OSSL_ENCODER_to_bio(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @OSSL_ENCODER_CTX_set_passphrase(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

end_hunk_0
