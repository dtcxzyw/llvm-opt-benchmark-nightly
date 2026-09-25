Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/quic_record_rx?download=true
inline.NumInlined: 110
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@qrx_reserve_rxe:bb.a
ossl_list_rxe_insert_head.exit.i:                 ; preds = %bb.o, %bb.n
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !37
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.o, align 8, !tbaa !37
  br label %qrx_resize_rxe.exit

bb.p:                                             ; preds = %bb.k
  store ptr %.val.i, ptr %i.d, align 8, !tbaa !36
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i, i64 72 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !34 ; 3 uses
  store ptr %i.ae, ptr %i.l, align 8, !tbaa !34
  %.not.i29.i = icmp eq ptr %i.ae, null
  br i1 %.not.i29.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  store ptr %1, ptr %i.af, align 8, !tbaa !36
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  store ptr %1, ptr %i.ad, align 8, !tbaa !34
  %i.ag = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.ah = icmp eq ptr %i.ag, %.val.i
  br i1 %i.ah, label %bb.s, label %ossl_list_rxe_insert_after.exit.i

bb.s:                                             ; preds = %bb.r
  store ptr %1, ptr %i.i, align 8, !tbaa !35
  br label %ossl_list_rxe_insert_after.exit.i

ossl_list_rxe_insert_after.exit.i:                ; preds = %bb.s, %bb.r
  %i.ai = load i64, ptr %i.o, align 8, !tbaa !37
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.o, align 8, !tbaa !37
  br label %qrx_resize_rxe.exit

bb.t:                                             ; preds = %bb.j
  br i1 %.not.i.i, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.ak = load ptr, ptr %0, align 8, !tbaa !24    ; 3 uses
  %.not.i30.i = icmp eq ptr %i.ak, null
  br i1 %.not.i30.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  store ptr %i.v, ptr %i.al, align 8, !tbaa !36
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !34
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  store ptr null, ptr %i.an, align 8, !tbaa !36
  store ptr %i.v, ptr %0, align 8, !tbaa !24
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %ossl_list_rxe_insert_head.exit31.sink.split.i, label %ossl_list_rxe_insert_head.exit31.i

bb.x:                                             ; preds = %bb.t
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  store ptr %.val.i, ptr %i.ar, align 8, !tbaa !36
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i, i64 72 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !34 ; 3 uses
  store ptr %i.at, ptr %i.aq, align 8, !tbaa !34
  %.not.i32.i = icmp eq ptr %i.at, null
  br i1 %.not.i32.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  store ptr %i.v, ptr %i.au, align 8, !tbaa !36
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  store ptr %i.v, ptr %i.as, align 8, !tbaa !34
  %i.av = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.aw = icmp eq ptr %i.av, %.val.i
  br i1 %i.aw, label %ossl_list_rxe_insert_head.exit31.sink.split.i, label %ossl_list_rxe_insert_head.exit31.i

ossl_list_rxe_insert_head.exit31.sink.split.i:    ; preds = %bb.z, %bb.w
  store ptr %i.v, ptr %i.i, align 8, !tbaa !35
  br label %ossl_list_rxe_insert_head.exit31.i

ossl_list_rxe_insert_head.exit31.i:               ; preds = %ossl_list_rxe_insert_head.exit31.sink.split.i, %bb.z, %bb.w
  %storemerge.in.i = load i64, ptr %i.o, align 8, !tbaa !37
  %storemerge.i = add i64 %storemerge.in.i, 1
  store i64 %storemerge.i, ptr %i.o, align 8, !tbaa !37
  %i.ax = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  store i64 %2, ptr %i.ax, align 8, !tbaa !59
  br label %qrx_resize_rxe.exit

qrx_resize_rxe.exit:                              ; preds = %ossl_list_rxe_insert_head.exit31.i, %ossl_list_rxe_insert_after.exit.i, %ossl_list_rxe_insert_head.exit.i, %ossl_list_rxe_remove.exit.i, %bb.b, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ null, %ossl_list_rxe_insert_head.exit.i ], [ null, %bb.b ], [ null, %ossl_list_rxe_remove.exit.i ], [ %i.v, %ossl_list_rxe_insert_head.exit31.i ], [ null, %ossl_list_rxe_insert_after.exit.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @qrx_decrypt_pkt_body(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef nonnull writeonly captures(none) %4, ptr noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef range(i32 0, 4) %8, i8 noundef zeroext range(i8 0, 2) %9, ptr nofree noundef nonnull writeonly captures(none) %10) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 0, ptr %i.b, align 4, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = tail call ptr @ossl_qrl_enc_level_set_get(ptr noundef nonnull %i.d, i32 noundef %8, i32 noundef 1) #11 ; 9 uses
  %i.f = or i64 %6, %3
  %or.cond.not = icmp ugt i64 %i.f, 2147483647
  %.not = icmp eq ptr %i.e, null
  %or.cond = select i1 %or.cond.not, i1 true, i1 %.not, !prof !117
  br i1 %or.cond, label %bb.p, label %bb.b, !prof !117

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 100 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !118
  %i.i = zext i32 %i.h to i64
  %.not54 = icmp samesign ugt i64 %3, %i.i
  br i1 %.not54, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !87
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.m = load i32, ptr %i.l, align 8, !tbaa !88
  %i.n = tail call i64 @ossl_qrl_get_suite_max_forged_pkt(i32 noundef %i.m) #11
  %.not55 = icmp ult i64 %i.k, %i.n
  br i1 %.not55, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq i32 %8, 3
  br i1 %.not.i, label %bb.e, label %qrx_get_cipher_ctx_idx.exit.thread68

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.p = load i8, ptr %i.o, align 8, !tbaa !86    ; 2 uses
  %i.q = icmp eq i8 %i.p, 3
  br i1 %i.q, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.s = load i64, ptr %i.r, align 8, !tbaa !83   ; 2 uses
  %i.t = and i64 %i.s, 1
  br label %qrx_get_cipher_ctx_idx.exit.thread68

bb.f:                                             ; preds = %bb.e
  %i.u = zext nneg i8 %9 to i64                   ; 7 uses
  switch i8 %i.p, label %qrx_get_cipher_ctx_idx.exit.thread [
    i8 1, label %bb.g
    i8 2, label %qrx_get_cipher_ctx_idx.exit
  ]

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.w = load i64, ptr %i.v, align 8, !tbaa !83   ; 2 uses
  %i.x = and i64 %i.w, 1
  %i.y = xor i64 %i.x, %i.u
  %i.z = add i64 %i.y, %i.w
  br label %qrx_get_cipher_ctx_idx.exit.thread68

qrx_get_cipher_ctx_idx.exit.thread68:             ; preds = %.thread.i, %bb.g, %bb.d
  %.sink.i.ph = phi i64 [ 0, %bb.d ], [ %i.s, %.thread.i ], [ %i.z, %bb.g ]
  %.0.ph.i.ph = phi i64 [ 0, %bb.d ], [ %i.t, %.thread.i ], [ %i.u, %bb.g ]
  store i64 %.sink.i.ph, ptr %10, align 8, !tbaa !14
  br label %qrx_get_cipher_ctx_idx.exit.thread

qrx_get_cipher_ctx_idx.exit:                      ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !83 ; 2 uses
  %i.ac = and i64 %i.ab, 1                        ; 2 uses
  %i.ad = xor i64 %i.ac, %i.u
  %i.ae = sub i64 %i.ab, %i.ad
  store i64 %i.ae, ptr %10, align 8, !tbaa !14
  %.not56 = icmp eq i64 %i.ac, %i.u
  br i1 %.not56, label %qrx_get_cipher_ctx_idx.exit.thread, label %bb.h

bb.h:                                             ; preds = %qrx_get_cipher_ctx_idx.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !89
  %.not57 = icmp ult i64 %7, %i.ag
  br i1 %.not57, label %qrx_get_cipher_ctx_idx.exit.thread, label %bb.p

qrx_get_cipher_ctx_idx.exit.thread:               ; preds = %bb.f, %qrx_get_cipher_ctx_idx.exit.thread68, %bb.h, %qrx_get_cipher_ctx_idx.exit
  %.0.i67 = phi i64 [ %.0.ph.i.ph, %qrx_get_cipher_ctx_idx.exit.thread68 ], [ %i.u, %bb.h ], [ %i.u, %qrx_get_cipher_ctx_idx.exit ], [ %i.u, %bb.f ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.0.i67
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !119 ; 6 uses
  %i.ak = tail call i32 @EVP_CIPHER_CTX_get_iv_length(ptr noundef %i.aj) #11 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 7
  br i1 %i.al, label %bb.i, label %bb.p, !prof !52

bb.i:                                             ; preds = %qrx_get_cipher_ctx_idx.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 106
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %.0.i67
  %i.ao = zext nneg i32 %i.ak to i64              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 2 %i.an, i64 %i.ao, i1 false)
  %invariant.gep = getelementptr i8, ptr %i.c, i64 %i.ao
  %gep.7 = getelementptr i8, ptr %invariant.gep, i64 -8 ; 2 uses
  %11 = lshr i64 %7, 8
  %12 = insertelement <4 x i64> poison, i64 %7, i64 0
  %13 = shufflevector <4 x i64> %12, <4 x i64> poison, <4 x i32> zeroinitializer
  %14 = lshr <4 x i64> %13, <i64 40, i64 32, i64 24, i64 16>
  %15 = lshr i64 %7, 48
  %16 = lshr i64 %7, 56
  %17 = insertelement <2 x i64> poison, i64 %11, i64 0
  %18 = insertelement <2 x i64> %17, i64 %7, i64 1
  %19 = trunc <2 x i64> %18 to <2 x i8>
  %20 = trunc <4 x i64> %14 to <4 x i8>
  %21 = trunc i64 %15 to i8
  %22 = trunc nuw i64 %16 to i8
  %i.ap = load <8 x i8>, ptr %gep.7, align 1, !tbaa !69
  %23 = insertelement <8 x i8> poison, i8 %22, i64 0
  %24 = insertelement <8 x i8> %23, i8 %21, i64 1
  %25 = shufflevector <4 x i8> %20, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %26 = shufflevector <8 x i8> %24, <8 x i8> %25, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison>
  %27 = shufflevector <2 x i8> %19, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %28 = shufflevector <8 x i8> %26, <8 x i8> %27, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.aq = xor <8 x i8> %i.ap, %28
  store <8 x i8> %i.aq, ptr %gep.7, align 1, !tbaa !69
  %i.ar = call i32 @EVP_CipherInit_ex(ptr noundef %i.aj, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.c, i32 noundef 0) #11
  %.not58 = icmp eq i32 %i.ar, 1
  br i1 %.not58, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.as = load i32, ptr %i.g, align 4, !tbaa !118 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.au = zext i32 %i.as to i64
  %i.av = sub nsw i64 0, %i.au
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 %i.av
  %i.ax = call i32 @EVP_CIPHER_CTX_ctrl(ptr noundef %i.aj, i32 noundef 17, i32 noundef %i.as, ptr noundef nonnull %i.aw) #11
  %.not59 = icmp eq i32 %i.ax, 1
  br i1 %.not59, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.ay = trunc nuw nsw i64 %6 to i32
  %i.az = call i32 @EVP_CipherUpdate(ptr noundef %i.aj, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef %5, i32 noundef %i.ay) #11
  %.not60 = icmp eq i32 %i.az, 1
  br i1 %.not60, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ba = load i32, ptr %i.g, align 4, !tbaa !118
  %i.bb = trunc nuw nsw i64 %3 to i32
  %i.bc = sub i32 %i.bb, %i.ba
  %i.bd = call i32 @EVP_CipherUpdate(ptr noundef %i.aj, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %2, i32 noundef %i.bc) #11
  %.not61 = icmp eq i32 %i.bd, 1
  br i1 %.not61, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.be = call i32 @EVP_CipherFinal_ex(ptr noundef %i.aj, ptr noundef null, ptr noundef nonnull %i.b) #11
  %.not62 = icmp eq i32 %i.be, 1
  br i1 %.not62, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = load i64, ptr %i.j, align 8, !tbaa !87
  %i.bg = add i64 %i.bf, 1
  store i64 %i.bg, ptr %i.j, align 8, !tbaa !87
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bh = load i32, ptr %i.a, align 4, !tbaa !116
  %i.bi = sext i32 %i.bh to i64
  store i64 %i.bi, ptr %4, align 8, !tbaa !14
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %qrx_get_cipher_ctx_idx.exit.thread, %bb.h, %bb.c, %bb.b, %bb.a, %bb.o, %bb.n
  %.048 = phi i32 [ 0, %bb.a ], [ 0, %bb.l ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %qrx_get_cipher_ctx_idx.exit.thread ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.n ], [ 1, %bb.o ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.048
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @qrx_validate_hdr_late(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 112
  %.val = load i32, ptr %i.a, align 8
  %trunc.i.i = trunc i32 %.val to i8
  %switch.tableidx = add i8 %trunc.i.i, -2        ; 2 uses
  %i.b = icmp ult i8 %switch.tableidx, 4
  br i1 %i.b, label %switch.lookup, label %rxe_determine_pn_space.exit

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.qrx_validate_hdr_late, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %rxe_determine_pn_space.exit

rxe_determine_pn_space.exit:                      ; preds = %bb.a, %switch.lookup
  %.0.i1.i = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !76   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %rxe_determine_pn_space.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.g = load i64, ptr %i.f, align 8, !tbaa !66
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !77
  %i.j = tail call i32 %i.e(i64 noundef %i.g, i32 noundef %.0.i1.i, ptr noundef %i.i) #11
  %.not7 = icmp eq i32 %i.j, 0
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %rxe_determine_pn_space.exit
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_quic_wire_decode_pkt_hdr_pn(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CRYPTO_realloc(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_get_iv_length(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_CipherInit_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_ctrl(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_CipherUpdate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CipherFinal_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @qrx_key_update_initiated(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = tail call i32 @ossl_qrl_enc_level_set_key_update(ptr noundef nonnull %i.a, i32 noundef 3) #11
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store i64 %1, ptr %i.c, align 8, !tbaa !89
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !84   ; 2 uses
  %.not6 = icmp eq ptr %i.e, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !85
  tail call void %i.e(i64 noundef %1, ptr noundef %i.g) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

declare i32 @ossl_qrl_enc_level_set_key_update(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !38}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS15ossl_lib_ctx_st", !9, i64 0}
!11 = !{!"p1 omnipotent char", !9, i64 0}
!12 = !{!"p1 _ZTS13quic_demux_st", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"p1 _ZTS12quic_urxe_st", !9, i64 0}
!16 = !{!"ossl_list_st_urxe", !15, i64 0, !15, i64 8, !13, i64 16}
!17 = !{!"p1 _ZTS6rxe_st", !9, i64 0}
!18 = !{!"ossl_list_st_rxe", !17, i64 0, !17, i64 8, !13, i64 16}
!19 = !{!"ossl_qrl_enc_level_set_st", !5, i64 0}
!20 = !{!"p1 _ZTS6ssl_st", !9, i64 0}
!21 = !{!"ossl_qrx_st", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !16, i64 48, !16, i64 72, !18, i64 96, !18, i64 120, !5, i64 144, !19, i64 168, !13, i64 1000, !13, i64 1008, !13, i64 1016, !9, i64 1024, !9, i64 1032, !9, i64 1040, !9, i64 1048, !5, i64 1056, !5, i64 1057, !9, i64 1064, !9, i64 1072, !20, i64 1080}
!22 = !{!21, !12, i64 16}
!23 = !{!21, !5, i64 1056}
!24 = !{!18, !17, i64 0}
!25 = !{!"p1 _ZTS15quic_pkt_hdr_st", !9, i64 0}
!26 = !{!"p1 _ZTS11bio_addr_st", !9, i64 0}
!27 = !{!"", !13, i64 0}
!28 = !{!"p1 _ZTS11ossl_qrx_st", !9, i64 0}
!29 = !{!"ossl_qrx_pkt_st", !25, i64 0, !26, i64 8, !26, i64 16, !13, i64 24, !13, i64 32, !27, i64 40, !28, i64 48, !13, i64 56, !13, i64 64}
!30 = !{!"", !17, i64 0, !17, i64 8}
!31 = !{!"quic_conn_id_st", !5, i64 0, !5, i64 1}
!32 = !{!"quic_pkt_hdr_st", !6, i64 0, !6, i64 1, !6, i64 1, !6, i64 1, !6, i64 1, !6, i64 1, !6, i64 2, !6, i64 2, !6, i64 4, !31, i64 8, !31, i64 29, !5, i64 50, !11, i64 56, !13, i64 64, !13, i64 72, !11, i64 80}
!33 = !{!"rxe_st", !29, i64 0, !30, i64 72, !13, i64 88, !13, i64 96, !13, i64 104, !32, i64 112, !13, i64 200, !5, i64 208, !5, i64 320, !27, i64 432, !13, i64 440, !13, i64 448, !13, i64 456}
!34 = !{!33, !17, i64 72}
!35 = !{!18, !17, i64 8}
!36 = !{!33, !17, i64 80}
!37 = !{!18, !13, i64 16}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!16, !15, i64 0}
!40 = !{!"", !15, i64 0, !15, i64 8}
end_hunk_0
