Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/cipher_aes_gcm_hw?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@vaes_gcm_aadupdate:bb.a
  %.065.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec89, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.065.ph, 1
  %xtraiter = and i64 %.247, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.az = getelementptr inbounds nuw i8, ptr %.250, i64 %.065.ph
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !14
  %i.bb = sub i64 15, %.065.ph
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bb ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !14
  %i.be = xor i8 %i.bd, %i.ba
  store i8 %i.be, ptr %i.bc, align 1, !tbaa !14
  %i.bf = or disjoint i64 %.065.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.065.unr = phi i64 [ %.065.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bf, %vec.epilog.scalar.ph.prol ]
  %i.bg = icmp eq i64 %.247, %.neg
  br i1 %i.bg, label %.loopexit.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.065 = phi i64 [ %i.bu, %vec.epilog.scalar.ph ], [ %.065.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.250, i64 %.065
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !14
  %i.bj = sub i64 15, %.065
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bj ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !14
  %i.bm = xor i8 %i.bl, %i.bi
  store i8 %i.bm, ptr %i.bk, align 1, !tbaa !14
  %i.bn = getelementptr inbounds nuw i8, ptr %.250, i64 %.065
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !14
  %i.bq = sub i64 14, %.065
  %i.br = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bq ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !14
  %i.bt = xor i8 %i.bs, %i.bp
  store i8 %i.bt, ptr %i.br, align 1, !tbaa !14
  %i.bu = add nuw i64 %.065, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bu, %.247
  br i1 %exitcond.not.1, label %.loopexit.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !27

.loopexit.loopexit:                               ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.bv = trunc nuw nsw i64 %.247 to i32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %.loopexit.loopexit, %._crit_edge, %.preheader
  %.2.sink = phi i32 [ %i.j, %.preheader ], [ %i.u, %._crit_edge ], [ 0, %bb.h ], [ %i.bv, %.loopexit.loopexit ]
  store i32 %.2.sink, ptr %i.i, align 4, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.051 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 1, %.sink.split ]
  ret i32 %.051
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @vaes_gcm_cipherupdate(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !14
  %i.d = add i64 %i.c, %2                         ; 3 uses
  %i.e = icmp ugt i64 %i.d, 68719476704
  %i.f = icmp ult i64 %i.d, %2
  %or.cond = or i1 %i.e, %i.f
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.b, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 628 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !13
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @ossl_gcm_gmult_avx512(ptr noundef nonnull %i.i, ptr noundef nonnull %i.a) #4
  store i32 0, ptr %i.g, align 4, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.k = load i8, ptr %i.j, align 4
  %i.l = and i8 %i.k, 1
  %.not28 = icmp eq i8 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  br i1 %.not28, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @ossl_aes_gcm_encrypt_avx512(ptr noundef %i.n, ptr noundef nonnull %i.a, ptr noundef nonnull %i.o, ptr noundef %1, i64 noundef %2, ptr noundef %3) #4
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @ossl_aes_gcm_decrypt_avx512(ptr noundef %i.n, ptr noundef nonnull %i.a, ptr noundef nonnull %i.o, ptr noundef %1, i64 noundef %2, ptr noundef %3) #4
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.f ], [ 1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @vaes_gcm_cipherfinal(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 628 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !13
  %.not = icmp eq i32 %i.d, 0
  %spec.select = select i1 %.not, ptr %i.b, ptr %i.c ; 2 uses
  %i.e = load i32, ptr %spec.select, align 4, !tbaa !8
  tail call void @ossl_aes_gcm_finalize_avx512(ptr noundef nonnull %i.a, i32 noundef %i.e) #4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, 1
  %.not17 = icmp eq i8 %i.h, 0
  br i1 %.not17, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 16, ptr %i.i, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  store i32 0, ptr %spec.select, align 4, !tbaa !8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !34
  %i.n = tail call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.k, ptr noundef %1, i64 noundef %i.m) #4
  %.not18 = icmp eq i32 %i.n, 0
  %i.o = zext i1 %.not18 to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.016 = phi i32 [ 1, %bb.b ], [ %i.o, %bb.c ]
  ret i32 %.016
}

declare i32 @ossl_gcm_one_shot(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) #1

declare i32 @aesni_set_encrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare void @ossl_aes_gcm_init_avx512(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ossl_aes_gcm_setiv_avx512(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @ossl_gcm_gmult_avx512(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ossl_aes_gcm_update_aad_avx512(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @ossl_aes_gcm_encrypt_avx512(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @ossl_aes_gcm_decrypt_avx512(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @ossl_aes_gcm_finalize_avx512(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare i32 @CRYPTO_memcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @aesni_gcm_initkey(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %.tr = trunc i64 %2 to i32
  %i.b = shl i32 %.tr, 3
  %i.c = tail call i32 @aesni_set_encrypt_key(ptr noundef %1, i32 noundef %i.b, ptr noundef nonnull %i.a) #4 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @CRYPTO_gcm128_init(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull @aesni_encrypt) #4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 696
  store ptr @aesni_ctr32_encrypt_blocks, ptr %i.e, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = or i8 %i.g, 4
  store i8 %i.h, ptr %i.f, align 4
  ret i32 1
}

declare i32 @ossl_gcm_setiv(ptr noundef, ptr noundef, i64 noundef) #1

declare i32 @ossl_gcm_aad_update(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @generic_aes_gcm_cipher_update(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 1
  %.not = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 5 uses
  %.not86 = icmp eq ptr %i.e, null                ; 2 uses
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not86, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ugt i64 %2, 31
  %i.g = icmp eq ptr %i.e, @aesni_ctr32_encrypt_blocks
  %or.cond = and i1 %i.f, %i.g
  br i1 %or.cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.k = icmp eq ptr %i.j, @gcm_ghash_avx
  br i1 %i.k, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.m = load i32, ptr %i.l, align 8, !tbaa !36
  %i.n = sub i32 0, %i.m
  %i.o = and i32 %i.n, 15
  %i.p = zext nneg i32 %i.o to i64                ; 5 uses
  %i.q = tail call i32 @CRYPTO_gcm128_encrypt(ptr noundef nonnull %i.h, ptr noundef %1, ptr noundef %3, i64 noundef %i.p) #4
  %.not92 = icmp eq i32 %i.q, 0
  br i1 %.not92, label %bb.f, label %.critedge.thread

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 %i.p
  %i.t = sub nuw i64 %2, %i.p
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.x = tail call i64 @aesni_gcm_encrypt(ptr noundef %i.r, ptr noundef %i.s, i64 noundef %i.t, ptr noundef %i.v, ptr noundef nonnull %i.h, ptr noundef nonnull %i.w) #4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !14
  %i.aa = add i64 %i.z, %i.x
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !14
  %i.ab = add i64 %i.x, %i.p
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.c
  %i.ac = phi ptr [ %.pre, %bb.f ], [ @aesni_ctr32_encrypt_blocks, %bb.d ], [ %i.e, %bb.c ]
  %.177 = phi i64 [ %i.ab, %bb.f ], [ 0, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.177
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 %.177
  %i.ag = sub i64 %2, %.177
  %i.ah = tail call i32 @CRYPTO_gcm128_encrypt_ctr32(ptr noundef nonnull %i.ad, ptr noundef %i.ae, ptr noundef %i.af, i64 noundef %i.ag, ptr noundef %i.ac) #4
  %.not93 = icmp eq i32 %i.ah, 0
  br i1 %.not93, label %.critedge, label %.critedge.thread

bb.h:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.aj = tail call i32 @CRYPTO_gcm128_encrypt(ptr noundef nonnull %i.ai, ptr noundef %1, ptr noundef %3, i64 noundef %2) #4
  %.not91 = icmp eq i32 %i.aj, 0
  br i1 %.not91, label %.critedge, label %.critedge.thread

bb.i:                                             ; preds = %bb.a
  br i1 %.not86, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = icmp ugt i64 %2, 15
  %i.al = icmp eq ptr %i.e, @aesni_ctr32_encrypt_blocks
  %or.cond94 = and i1 %i.ak, %i.al
  br i1 %or.cond94, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !35
  %i.ap = icmp eq ptr %i.ao, @gcm_ghash_avx
  br i1 %i.ap, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !36
  %i.as = sub i32 0, %i.ar
  %i.at = and i32 %i.as, 15
  %i.au = zext nneg i32 %i.at to i64              ; 5 uses
  %i.av = tail call i32 @CRYPTO_gcm128_decrypt(ptr noundef nonnull %i.am, ptr noundef %1, ptr noundef %3, i64 noundef %i.au) #4
  %.not88 = icmp eq i32 %i.av, 0
  br i1 %.not88, label %bb.m, label %.critedge.thread

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %i.au
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 %i.au
  %i.ay = sub nuw i64 %2, %i.au
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !37
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bc = tail call i64 @aesni_gcm_decrypt(ptr noundef %i.aw, ptr noundef %i.ax, i64 noundef %i.ay, ptr noundef %i.ba, ptr noundef nonnull %i.am, ptr noundef nonnull %i.bb) #4 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !14
  %i.bf = add i64 %i.be, %i.bc
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !14
  %i.bg = add i64 %i.bc, %i.au
  %.pre101 = load ptr, ptr %i.d, align 8, !tbaa !19
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k, %bb.j
  %i.bh = phi ptr [ %.pre101, %bb.m ], [ @aesni_ctr32_encrypt_blocks, %bb.k ], [ %i.e, %bb.j ]
  %.1 = phi i64 [ %i.bg, %bb.m ], [ 0, %bb.k ], [ 0, %bb.j ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %.1
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 %.1
  %i.bl = sub i64 %2, %.1
  %i.bm = tail call i32 @CRYPTO_gcm128_decrypt_ctr32(ptr noundef nonnull %i.bi, ptr noundef %i.bj, ptr noundef %i.bk, i64 noundef %i.bl, ptr noundef %i.bh) #4
  %.not89 = icmp eq i32 %i.bm, 0
  br i1 %.not89, label %.critedge, label %.critedge.thread

bb.o:                                             ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bo = tail call i32 @CRYPTO_gcm128_decrypt(ptr noundef nonnull %i.bn, ptr noundef %1, ptr noundef %3, i64 noundef %2) #4
  %.not87 = icmp eq i32 %i.bo, 0
  br i1 %.not87, label %.critedge, label %.critedge.thread

.critedge:                                        ; preds = %bb.n, %bb.g, %bb.o, %bb.h
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.l, %bb.n, %bb.e, %bb.g, %bb.o, %bb.h, %.critedge
  %.6 = phi i32 [ 1, %.critedge ], [ 0, %bb.o ], [ 0, %bb.h ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.n ], [ 0, %bb.l ]
  ret i32 %.6
}

declare i32 @ossl_gcm_cipher_final(ptr noundef, ptr noundef) #1

declare void @CRYPTO_gcm128_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @aesni_encrypt(ptr noundef, ptr noundef, ptr noundef) #1

declare void @aesni_ctr32_encrypt_blocks(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #1

declare void @gcm_ghash_avx(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #1

declare i32 @CRYPTO_gcm128_encrypt(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @aesni_gcm_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @CRYPTO_gcm128_encrypt_ctr32(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @CRYPTO_gcm128_decrypt(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @aesni_gcm_decrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @CRYPTO_gcm128_decrypt_ctr32(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @aes_gcm_initkey(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !8
  %i.c = and i32 %i.b, 512
  %.not = icmp eq i32 %i.c, 0
  %.tr = trunc i64 %2 to i32
  %i.d = shl i32 %.tr, 3
  %i.e = tail call i32 @AES_set_encrypt_key(ptr noundef %1, i32 noundef %i.d, ptr noundef nonnull %i.a) #4 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @CRYPTO_gcm128_init(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull @AES_encrypt) #4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %.ossl_bsaes_ctr32_encrypt_blocks = select i1 %.not, ptr null, ptr @ossl_bsaes_ctr32_encrypt_blocks
  store ptr %.ossl_bsaes_ctr32_encrypt_blocks, ptr %i.g, align 8, !tbaa !19
  %i.i = load i8, ptr %i.h, align 4
  %i.j = or i8 %i.i, 4
  store i8 %i.j, ptr %i.h, align 4
  ret i32 1
}

declare i32 @AES_set_encrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @AES_encrypt(ptr noundef, ptr noundef, ptr noundef) #1

declare void @ossl_bsaes_ctr32_encrypt_blocks(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"gcm_funcs_st", !9, i64 0, !9, i64 8, !9, i64 16}
!11 = !{!"gcm128_context", !4, i64 0, !4, i64 16, !4, i64 32, !4, i64 48, !4, i64 64, !4, i64 80, !4, i64 96, !10, i64 352, !5, i64 376, !5, i64 380, !9, i64 384, !9, i64 392, !4, i64 400}
!12 = !{!11, !9, i64 392}
!13 = !{!11, !5, i64 380}
!14 = !{!4, !4, i64 0}
!15 = !{!"long", !4, i64 0}
!16 = !{!"p1 _ZTS15ossl_lib_ctx_st", !9, i64 0}
!17 = !{!"p1 _ZTS14prov_gcm_hw_st", !9, i64 0}
!18 = !{!"prov_gcm_ctx_st", !5, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !5, i64 80, !5, i64 84, !5, i64 84, !5, i64 84, !5, i64 84, !5, i64 84, !4, i64 85, !4, i64 213, !16, i64 232, !17, i64 240, !11, i64 248, !9, i64 696}
!19 = !{!18, !9, i64 696}
!20 = !{!11, !5, i64 376}
!21 = distinct !{!21, !28}
!22 = distinct !{!22, i1 false, !"LVerDomain"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !28, !31, !32}
!26 = distinct !{!26, !28, !31, !32}
!27 = distinct !{!27, !28, !31}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!23}
!30 = !{!24}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = !{!"branch_weights", i32 8, i32 24}
!34 = !{!18, !15, i64 24}
!35 = !{!18, !9, i64 608}
!36 = !{!18, !5, i64 624}
!37 = !{!18, !9, i64 640}
end_hunk_0
