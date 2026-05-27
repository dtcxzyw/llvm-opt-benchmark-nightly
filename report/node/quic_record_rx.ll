inline.NumInlined: 110
inline.NumDeleted: 45
begin_hunk_0_@qrx_reserve_rxe:bb.a
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !42
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.o, align 8, !tbaa !42
  br label %qrx_resize_rxe.exit

bb.p:                                             ; preds = %bb.k
  store ptr %.val.i, ptr %i.d, align 8, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i, i64 72 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !30 ; 3 uses
  store ptr %i.ae, ptr %i.l, align 8, !tbaa !30
  %.not.i29.i = icmp eq ptr %i.ae, null
  br i1 %.not.i29.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  store ptr %1, ptr %i.af, align 8, !tbaa !41
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  store ptr %1, ptr %i.ad, align 8, !tbaa !30
  %i.ag = load ptr, ptr %i.i, align 8, !tbaa !40
  %i.ah = icmp eq ptr %i.ag, %.val.i
  br i1 %i.ah, label %bb.s, label %ossl_list_rxe_insert_after.exit.i

bb.s:                                             ; preds = %bb.r
  store ptr %1, ptr %i.i, align 8, !tbaa !40
  br label %ossl_list_rxe_insert_after.exit.i

ossl_list_rxe_insert_after.exit.i:                ; preds = %bb.s, %bb.r
  %i.ai = load i64, ptr %i.o, align 8, !tbaa !42
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.o, align 8, !tbaa !42
  br label %qrx_resize_rxe.exit

bb.t:                                             ; preds = %bb.j
  br i1 %.not.i.i, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.ak = load ptr, ptr %0, align 8, !tbaa !29    ; 3 uses
  %.not.i30.i = icmp eq ptr %i.ak, null
  br i1 %.not.i30.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  store ptr %i.v, ptr %i.al, align 8, !tbaa !41
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !30
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  store ptr null, ptr %i.an, align 8, !tbaa !41
  store ptr %i.v, ptr %0, align 8, !tbaa !29
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !40
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %ossl_list_rxe_insert_head.exit31.sink.split.i, label %ossl_list_rxe_insert_head.exit31.i

bb.x:                                             ; preds = %bb.t
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  store ptr %.val.i, ptr %i.ar, align 8, !tbaa !41
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i, i64 72 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !30 ; 3 uses
  store ptr %i.at, ptr %i.aq, align 8, !tbaa !30
  %.not.i32.i = icmp eq ptr %i.at, null
  br i1 %.not.i32.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  store ptr %i.v, ptr %i.au, align 8, !tbaa !41
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  store ptr %i.v, ptr %i.as, align 8, !tbaa !30
  %i.av = load ptr, ptr %i.i, align 8, !tbaa !40
  %i.aw = icmp eq ptr %i.av, %.val.i
  br i1 %i.aw, label %ossl_list_rxe_insert_head.exit31.sink.split.i, label %ossl_list_rxe_insert_head.exit31.i

ossl_list_rxe_insert_head.exit31.sink.split.i:    ; preds = %bb.z, %bb.w
  store ptr %i.v, ptr %i.i, align 8, !tbaa !40
  br label %ossl_list_rxe_insert_head.exit31.i

ossl_list_rxe_insert_head.exit31.i:               ; preds = %ossl_list_rxe_insert_head.exit31.sink.split.i, %bb.z, %bb.w
  %storemerge.in.i = load i64, ptr %i.o, align 8, !tbaa !42
  %storemerge.i = add i64 %storemerge.in.i, 1
  store i64 %storemerge.i, ptr %i.o, align 8, !tbaa !42
  %i.ax = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  store i64 %2, ptr %i.ax, align 8, !tbaa !65
  br label %qrx_resize_rxe.exit

qrx_resize_rxe.exit:                              ; preds = %ossl_list_rxe_insert_head.exit31.i, %ossl_list_rxe_insert_after.exit.i, %ossl_list_rxe_insert_head.exit.i, %ossl_list_rxe_remove.exit.i, %bb.b, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ null, %ossl_list_rxe_insert_head.exit.i ], [ null, %bb.b ], [ null, %ossl_list_rxe_remove.exit.i ], [ %i.v, %ossl_list_rxe_insert_head.exit31.i ], [ null, %ossl_list_rxe_insert_after.exit.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @qrx_decrypt_pkt_body(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull writeonly captures(none) %4, ptr noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef range(i32 0, 4) %8, i8 noundef zeroext range(i8 0, 2) %9, ptr noundef nonnull writeonly captures(none) %10) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 0, ptr %i.b, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = tail call ptr @ossl_qrl_enc_level_set_get(ptr noundef nonnull %i.d, i32 noundef %8, i32 noundef 1) #11 ; 9 uses
  %i.f = or i64 %6, %3
  %or.cond.not = icmp ugt i64 %i.f, 2147483647
  %.not = icmp eq ptr %i.e, null
  %or.cond = select i1 %or.cond.not, i1 true, i1 %.not, !prof !115
  br i1 %or.cond, label %bb.p, label %bb.b, !prof !115

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 100 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !116
  %i.i = zext i32 %i.h to i64
  %.not54 = icmp samesign ugt i64 %3, %i.i
  br i1 %.not54, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !113
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.m = load i32, ptr %i.l, align 8, !tbaa !114
  %i.n = tail call i64 @ossl_qrl_get_suite_max_forged_pkt(i32 noundef %i.m) #11
  %.not55 = icmp ult i64 %i.k, %i.n
  br i1 %.not55, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq i32 %8, 3
  br i1 %.not.i, label %bb.e, label %qrx_get_cipher_ctx_idx.exit.thread68

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.p = load i8, ptr %i.o, align 8, !tbaa !112   ; 2 uses
  %i.q = icmp eq i8 %i.p, 3
  br i1 %i.q, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.s = load i64, ptr %i.r, align 8, !tbaa !91   ; 2 uses
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
  %i.w = load i64, ptr %i.v, align 8, !tbaa !91   ; 2 uses
  %i.x = and i64 %i.w, 1
  %i.y = xor i64 %i.x, %i.u
  %i.z = add i64 %i.y, %i.w
  br label %qrx_get_cipher_ctx_idx.exit.thread68

qrx_get_cipher_ctx_idx.exit.thread68:             ; preds = %.thread.i, %bb.g, %bb.d
  %.sink.i.ph = phi i64 [ 0, %bb.d ], [ %i.s, %.thread.i ], [ %i.z, %bb.g ]
  %.0.ph.i.ph = phi i64 [ 0, %bb.d ], [ %i.t, %.thread.i ], [ %i.u, %bb.g ]
  store i64 %.sink.i.ph, ptr %10, align 8, !tbaa !17
  br label %qrx_get_cipher_ctx_idx.exit.thread

qrx_get_cipher_ctx_idx.exit:                      ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !91 ; 2 uses
  %i.ac = and i64 %i.ab, 1                        ; 2 uses
  %i.ad = xor i64 %i.ac, %i.u
  %i.ae = sub i64 %i.ab, %i.ad
  store i64 %i.ae, ptr %10, align 8, !tbaa !17
  %.not56 = icmp eq i64 %i.ac, %i.u
  br i1 %.not56, label %qrx_get_cipher_ctx_idx.exit.thread, label %bb.h

bb.h:                                             ; preds = %qrx_get_cipher_ctx_idx.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !117
  %.not57 = icmp ult i64 %7, %i.ag
  br i1 %.not57, label %qrx_get_cipher_ctx_idx.exit.thread, label %bb.p

qrx_get_cipher_ctx_idx.exit.thread:               ; preds = %bb.f, %qrx_get_cipher_ctx_idx.exit.thread68, %bb.h, %qrx_get_cipher_ctx_idx.exit
  %.0.i67 = phi i64 [ %.0.ph.i.ph, %qrx_get_cipher_ctx_idx.exit.thread68 ], [ %i.u, %bb.h ], [ %i.u, %qrx_get_cipher_ctx_idx.exit ], [ %i.u, %bb.f ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.0.i67
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !118 ; 6 uses
  %i.ak = tail call i32 @EVP_CIPHER_CTX_get_iv_length(ptr noundef %i.aj) #11 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 7
  br i1 %i.al, label %bb.i, label %bb.p, !prof !59

bb.i:                                             ; preds = %qrx_get_cipher_ctx_idx.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 106
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %.0.i67
  %i.ao = zext nneg i32 %i.ak to i64              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 2 %i.an, i64 %i.ao, i1 false)
  %invariant.gep = getelementptr i8, ptr %i.c, i64 %i.ao
  %gep.7 = getelementptr i8, ptr %invariant.gep, i64 -8 ; 2 uses
  %i.ap = lshr i64 %7, 8
  %11 = lshr i64 %7, 16
  %12 = lshr i64 %7, 24
  %13 = lshr i64 %7, 32
  %14 = lshr i64 %7, 40
  %i.aq = lshr i64 %7, 48
  %i.ar = lshr i64 %7, 56
  %15 = trunc i64 %7 to i8
  %16 = trunc i64 %i.ap to i8
  %17 = trunc i64 %11 to i8
  %18 = trunc i64 %12 to i8
  %19 = trunc i64 %13 to i8
  %20 = trunc i64 %14 to i8
  %i.as = trunc i64 %i.aq to i8
  %i.at = trunc nuw i64 %i.ar to i8
  %i.au = load <8 x i8>, ptr %gep.7, align 1, !tbaa !76
  %21 = insertelement <8 x i8> poison, i8 %i.at, i64 0
  %22 = insertelement <8 x i8> %21, i8 %i.as, i64 1
  %i.av = insertelement <8 x i8> %22, i8 %20, i64 2
  %i.aw = insertelement <8 x i8> %i.av, i8 %19, i64 3
  %23 = insertelement <8 x i8> %i.aw, i8 %18, i64 4
  %24 = insertelement <8 x i8> %23, i8 %17, i64 5
  %25 = insertelement <8 x i8> %24, i8 %16, i64 6
  %26 = insertelement <8 x i8> %25, i8 %15, i64 7
  %i.ax = xor <8 x i8> %i.au, %26
  store <8 x i8> %i.ax, ptr %gep.7, align 1, !tbaa !76
  %i.ay = call i32 @EVP_CipherInit_ex(ptr noundef %i.aj, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.c, i32 noundef 0) #11
  %.not58 = icmp eq i32 %i.ay, 1
  br i1 %.not58, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.az = load i32, ptr %i.g, align 4, !tbaa !116 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.bb = zext i32 %i.az to i64
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.ba, i64 %i.bc
  %i.be = call i32 @EVP_CIPHER_CTX_ctrl(ptr noundef %i.aj, i32 noundef 17, i32 noundef %i.az, ptr noundef nonnull %i.bd) #11
  %.not59 = icmp eq i32 %i.be, 1
  br i1 %.not59, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.bf = trunc nuw nsw i64 %6 to i32
  %i.bg = call i32 @EVP_CipherUpdate(ptr noundef %i.aj, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef %5, i32 noundef %i.bf) #11
  %.not60 = icmp eq i32 %i.bg, 1
  br i1 %.not60, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bh = load i32, ptr %i.g, align 4, !tbaa !116
  %i.bi = trunc nuw nsw i64 %3 to i32
  %i.bj = sub i32 %i.bi, %i.bh
  %i.bk = call i32 @EVP_CipherUpdate(ptr noundef %i.aj, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %2, i32 noundef %i.bj) #11
  %.not61 = icmp eq i32 %i.bk, 1
  br i1 %.not61, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bl = call i32 @EVP_CipherFinal_ex(ptr noundef %i.aj, ptr noundef null, ptr noundef nonnull %i.b) #11
  %.not62 = icmp eq i32 %i.bl, 1
  br i1 %.not62, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = load i64, ptr %i.j, align 8, !tbaa !113
  %i.bn = add i64 %i.bm, 1
  store i64 %i.bn, ptr %i.j, align 8, !tbaa !113
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bo = load i32, ptr %i.a, align 4, !tbaa !5
  %i.bp = sext i32 %i.bo to i64
  store i64 %i.bp, ptr %4, align 8, !tbaa !17
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %qrx_get_cipher_ctx_idx.exit.thread, %bb.h, %bb.c, %bb.b, %bb.a, %bb.o, %bb.n
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.l ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %qrx_get_cipher_ctx_idx.exit.thread ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.n ], [ 1, %bb.o ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @qrx_validate_hdr_late(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 112
  %.val = load i32, ptr %i.a, align 8
  %trunc.i.i = trunc i32 %.val to i8
  %switch.tableidx = add i8 %trunc.i.i, -2        ; 2 uses
  %i.b = icmp ult i8 %switch.tableidx, 4
  br i1 %i.b, label %switch.lookup, label %rxe_determine_pn_space.exit

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.qrx_validate_hdr_late, i64 %i.c
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %rxe_determine_pn_space.exit

rxe_determine_pn_space.exit:                      ; preds = %bb.a, %switch.lookup
  %.0.i1.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %rxe_determine_pn_space.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.g = load i64, ptr %i.f, align 8, !tbaa !72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !89
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
  store i64 %1, ptr %i.c, align 8, !tbaa !117
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !110  ; 2 uses
  %.not6 = icmp eq ptr %i.e, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !111
  tail call void %i.e(i64 noundef %1, ptr noundef %i.g) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

declare i32 @ossl_qrl_enc_level_set_key_update(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #10

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !14, i64 16}
!10 = !{!"ossl_qrx_args_st", !11, i64 0, !13, i64 8, !14, i64 16, !15, i64 24, !15, i64 32, !7, i64 40, !7, i64 64}
!11 = !{!"p1 _ZTS15ossl_lib_ctx_st", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"p1 _ZTS13quic_demux_st", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!10, !15, i64 32}
!17 = !{!15, !15, i64 0}
!18 = !{!12, !12, i64 0}
!19 = !{!20, !14, i64 16}
!20 = !{!"ossl_qrx_st", !11, i64 0, !13, i64 8, !14, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !21, i64 48, !21, i64 72, !23, i64 96, !23, i64 120, !7, i64 144, !25, i64 168, !15, i64 1000, !15, i64 1008, !15, i64 1016, !12, i64 1024, !12, i64 1032, !12, i64 1040, !12, i64 1048, !7, i64 1056, !7, i64 1057, !12, i64 1064, !12, i64 1072, !26, i64 1080}
!21 = !{!"ossl_list_st_urxe", !22, i64 0, !22, i64 8, !15, i64 16}
!22 = !{!"p1 _ZTS12quic_urxe_st", !12, i64 0}
!23 = !{!"ossl_list_st_rxe", !24, i64 0, !24, i64 8, !15, i64 16}
!24 = !{!"p1 _ZTS6rxe_st", !12, i64 0}
!25 = !{!"ossl_qrl_enc_level_set_st", !7, i64 0}
!26 = !{!"p1 _ZTS6ssl_st", !12, i64 0}
!27 = !{!10, !7, i64 64}
!28 = !{!20, !7, i64 1056}
!29 = !{!23, !24, i64 0}
!30 = !{!31, !24, i64 72}
!31 = !{!"rxe_st", !32, i64 0, !37, i64 72, !15, i64 88, !15, i64 96, !15, i64 104, !38, i64 112, !15, i64 200, !7, i64 208, !7, i64 320, !35, i64 432, !15, i64 440, !15, i64 448, !15, i64 456}
!32 = !{!"ossl_qrx_pkt_st", !33, i64 0, !34, i64 8, !34, i64 16, !15, i64 24, !15, i64 32, !35, i64 40, !36, i64 48, !15, i64 56, !15, i64 64}
!33 = !{!"p1 _ZTS15quic_pkt_hdr_st", !12, i64 0}
!34 = !{!"p1 _ZTS11bio_addr_st", !12, i64 0}
!35 = !{!"", !15, i64 0}
!36 = !{!"p1 _ZTS11ossl_qrx_st", !12, i64 0}
!37 = !{!"", !24, i64 0, !24, i64 8}
!38 = !{!"quic_pkt_hdr_st", !6, i64 0, !6, i64 1, !6, i64 1, !6, i64 1, !6, i64 1, !6, i64 1, !6, i64 2, !6, i64 2, !6, i64 4, !39, i64 8, !39, i64 29, !7, i64 50, !13, i64 56, !15, i64 64, !15, i64 72, !13, i64 80}
!39 = !{!"quic_conn_id_st", !7, i64 0, !7, i64 1}
!40 = !{!23, !24, i64 8}
!41 = !{!31, !24, i64 80}
end_hunk_0
