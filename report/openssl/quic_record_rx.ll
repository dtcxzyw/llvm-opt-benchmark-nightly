Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/quic_record_rx?download=true
inline.NumInlined: 110
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@qrx_reserve_rxe:bb.a

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i
  %.not18.i.i = icmp eq ptr %.pre19.i.i, null
  br i1 %.not18.i.i, label %ossl_list_rxe_remove.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %.pre19.i.i, i64 80
  store ptr %.val.i, ptr %i.n, align 8, !tbaa !36
  br label %ossl_list_rxe_remove.exit.i

ossl_list_rxe_remove.exit.i:                      ; preds = %bb.i, %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !37
  %i.q = add i64 %i.p, -1
  store i64 %i.q, ptr %i.o, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.s = load i64, ptr %i.r, align 8, !tbaa !51
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.j, label %qrx_resize_rxe.exit, !prof !52

bb.j:                                             ; preds = %ossl_list_rxe_remove.exit.i
  %i.u = add nuw i64 %2, 464
  %i.v = tail call ptr @CRYPTO_realloc(ptr noundef nonnull %1, i64 noundef %i.u, ptr noundef nonnull @.str, i32 noundef 625) #11 ; 12 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  br i1 %.not.i.i, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.x = load ptr, ptr %0, align 8, !tbaa !24     ; 3 uses
  %.not.i28.i = icmp eq ptr %i.x, null
  br i1 %.not.i28.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  store ptr %1, ptr %i.y, align 8, !tbaa !36
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store ptr %i.x, ptr %i.l, align 8, !tbaa !34
  store ptr null, ptr %i.d, align 8, !tbaa !36
  store ptr %1, ptr %0, align 8, !tbaa !24
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.o, label %ossl_list_rxe_insert_head.exit.i

bb.o:                                             ; preds = %bb.n
  store ptr %1, ptr %i.i, align 8, !tbaa !35
  br label %ossl_list_rxe_insert_head.exit.i

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
  %i.u = zext nneg i8 %9 to i64                   ; 5 uses
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
  %11 = zext nneg i8 %9 to i32                    ; 2 uses
  %12 = trunc i64 %i.ab to i32
  %13 = and i32 %12, 1                            ; 2 uses
  %14 = xor i32 %13, %11
  %15 = zext nneg i32 %14 to i64
  %i.ac = sub i64 %i.ab, %15
  store i64 %i.ac, ptr %10, align 8, !tbaa !14
  %.not56 = icmp eq i32 %13, %11
  br i1 %.not56, label %qrx_get_cipher_ctx_idx.exit.thread, label %bb.h

bb.h:                                             ; preds = %qrx_get_cipher_ctx_idx.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !89
  %.not57 = icmp ult i64 %7, %i.ae
  br i1 %.not57, label %qrx_get_cipher_ctx_idx.exit.thread, label %bb.p

qrx_get_cipher_ctx_idx.exit.thread:               ; preds = %bb.f, %qrx_get_cipher_ctx_idx.exit.thread68, %bb.h, %qrx_get_cipher_ctx_idx.exit
  %.0.i67 = phi i64 [ %.0.ph.i.ph, %qrx_get_cipher_ctx_idx.exit.thread68 ], [ %i.u, %bb.h ], [ %i.u, %qrx_get_cipher_ctx_idx.exit ], [ %i.u, %bb.f ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.0.i67
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !119 ; 6 uses
  %i.ai = tail call i32 @EVP_CIPHER_CTX_get_iv_length(ptr noundef %i.ah) #11 ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 7
  br i1 %i.aj, label %bb.i, label %bb.p, !prof !52

bb.i:                                             ; preds = %qrx_get_cipher_ctx_idx.exit.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 106
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %.0.i67
  %i.am = zext nneg i32 %i.ai to i64              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 2 %i.al, i64 %i.am, i1 false)
  %invariant.gep = getelementptr i8, ptr %i.c, i64 %i.am
  %gep.7 = getelementptr i8, ptr %invariant.gep, i64 -8 ; 2 uses
  %i.an = lshr i64 %7, 8
  %i.ao = insertelement <4 x i64> poison, i64 %7, i64 0
  %i.ap = shufflevector <4 x i64> %i.ao, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.aq = lshr <4 x i64> %i.ap, <i64 40, i64 32, i64 24, i64 16>
  %i.ar = lshr i64 %7, 48
  %i.as = lshr i64 %7, 56
  %i.at = insertelement <2 x i64> poison, i64 %i.an, i64 0
  %i.au = insertelement <2 x i64> %i.at, i64 %7, i64 1
  %i.av = trunc <2 x i64> %i.au to <2 x i8>
  %i.aw = trunc <4 x i64> %i.aq to <4 x i8>
  %i.ax = trunc i64 %i.ar to i8
  %i.ay = trunc nuw i64 %i.as to i8
  %i.az = load <8 x i8>, ptr %gep.7, align 1, !tbaa !69
  %i.ba = insertelement <8 x i8> poison, i8 %i.ay, i64 0
  %i.bb = insertelement <8 x i8> %i.ba, i8 %i.ax, i64 1
  %i.bc = shufflevector <4 x i8> %i.aw, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bd = shufflevector <8 x i8> %i.bb, <8 x i8> %i.bc, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison>
  %i.be = shufflevector <2 x i8> %i.av, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bf = shufflevector <8 x i8> %i.bd, <8 x i8> %i.be, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.bg = xor <8 x i8> %i.az, %i.bf
  store <8 x i8> %i.bg, ptr %gep.7, align 1, !tbaa !69
  %i.bh = call i32 @EVP_CipherInit_ex(ptr noundef %i.ah, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.c, i32 noundef 0) #11
  %.not58 = icmp eq i32 %i.bh, 1
  br i1 %.not58, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.bi = load i32, ptr %i.g, align 4, !tbaa !118 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.bk = zext i32 %i.bi to i64
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = getelementptr inbounds i8, ptr %i.bj, i64 %i.bl
  %i.bn = call i32 @EVP_CIPHER_CTX_ctrl(ptr noundef %i.ah, i32 noundef 17, i32 noundef %i.bi, ptr noundef nonnull %i.bm) #11
  %.not59 = icmp eq i32 %i.bn, 1
  br i1 %.not59, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.bo = trunc nuw nsw i64 %6 to i32
  %i.bp = call i32 @EVP_CipherUpdate(ptr noundef %i.ah, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef %5, i32 noundef %i.bo) #11
  %.not60 = icmp eq i32 %i.bp, 1
  br i1 %.not60, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bq = load i32, ptr %i.g, align 4, !tbaa !118
  %i.br = trunc nuw nsw i64 %3 to i32
  %i.bs = sub i32 %i.br, %i.bq
  %i.bt = call i32 @EVP_CipherUpdate(ptr noundef %i.ah, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %2, i32 noundef %i.bs) #11
  %.not61 = icmp eq i32 %i.bt, 1
  br i1 %.not61, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bu = call i32 @EVP_CipherFinal_ex(ptr noundef %i.ah, ptr noundef null, ptr noundef nonnull %i.b) #11
  %.not62 = icmp eq i32 %i.bu, 1
  br i1 %.not62, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = load i64, ptr %i.j, align 8, !tbaa !87
  %i.bw = add i64 %i.bv, 1
  store i64 %i.bw, ptr %i.j, align 8, !tbaa !87
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bx = load i32, ptr %i.a, align 4, !tbaa !116
  %i.by = sext i32 %i.bx to i64
  store i64 %i.by, ptr %4, align 8, !tbaa !14
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
end_hunk_0
