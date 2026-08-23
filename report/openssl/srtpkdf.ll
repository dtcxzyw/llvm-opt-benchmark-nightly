Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/srtpkdf?download=true
inline.NumInlined: 12
inline.NumDeleted: 6
begin_hunk_0_@kdf_srtpkdf_derive
define internal range(i32 0, 2) i32 @kdf_srtpkdf_derive(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 8 uses
  %i.d = alloca [16 x i8], align 16               ; 7 uses
  %i.e = alloca [16 x i8], align 16               ; 9 uses
  %i.f = tail call i32 @ossl_prov_is_running() #8
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @kdf_srtpkdf_set_ctx_params(ptr noundef %0, ptr noundef %3)
  %.not21 = icmp eq i32 %i.g, 0
  br i1 %.not21, label %bb.ab, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !8
  %i.i = tail call ptr @ossl_prov_ctx_get0_libctx(ptr noundef %i.h) #8 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = tail call ptr @ossl_prov_cipher_cipher(ptr noundef nonnull %i.j) #8 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 204, ptr noundef nonnull @__func__.kdf_srtpkdf_derive) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 155, ptr noundef null) #8
  br label %bb.ab

bb.e:                                             ; preds = %bb.c
  %i.m = tail call ptr @ossl_prov_cipher_cipher(ptr noundef nonnull %i.j) #8 ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %kdf_srtpkdf_check_key.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !16
  %i.s = tail call i32 @EVP_CIPHER_get_key_length(ptr noundef nonnull %i.m) #8
  %i.t = sext i32 %i.s to i64
  %.not6.i = icmp eq i64 %i.r, %i.t
  br i1 %.not6.i, label %bb.h, label %kdf_srtpkdf_check_key.exit

kdf_srtpkdf_check_key.exit:                       ; preds = %bb.f, %bb.g
  %.sink8.i = phi i32 [ 179, %bb.f ], [ 183, %bb.g ]
  %.sink.i = phi i32 [ 128, %bb.f ], [ 105, %bb.g ]
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef %.sink8.i, ptr noundef nonnull @__func__.kdf_srtpkdf_check_key) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef %.sink.i, ptr noundef null) #8
  br label %bb.ab

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !17   ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 210, ptr noundef nonnull @__func__.kdf_srtpkdf_derive) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 131, ptr noundef null) #8
  br label %bb.ab

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !19  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !20 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !23
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !24
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.aj = icmp eq ptr %1, null
  %i.ak = icmp ugt i64 %2, 2147483647
  %or.cond.i = or i1 %i.aj, %i.ak
  br i1 %or.cond.i, label %SRTPKDF.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  switch i32 %i.ai, label %SRTPKDF.exit [
    i32 0, label %bb.l
    i32 3, label %bb.l
    i32 6, label %bb.l
    i32 1, label %bb.n
    i32 4, label %bb.n
    i32 2, label %bb.m
    i32 7, label %bb.m
    i32 5, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k, %bb.k, %bb.k
  %i.al = tail call i32 @EVP_CIPHER_get_key_length(ptr noundef nonnull %i.k) #8
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.k, %bb.k
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.k
  %.061.i = phi i32 [ %i.al, %bb.l ], [ 20, %bb.k ], [ 20, %bb.k ], [ 14, %bb.m ] ; 3 uses
  %i.am = trunc nuw nsw i64 %2 to i32
  %i.an = icmp sgt i32 %.061.i, %i.am
  br i1 %i.an, label %SRTPKDF.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 14
  store i16 0, ptr %i.ao, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(14) %i.e, ptr noundef nonnull readonly align 1 dereferenceable(14) %i.v, i64 14, i1 false)
  %i.ap = tail call ptr @BN_new() #8              ; 5 uses
  %i.aq = tail call ptr @BN_new() #8              ; 5 uses
  %i.ar = icmp eq ptr %i.ap, null
  %i.as = icmp eq ptr %i.aq, null
  %or.cond3.i = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond3.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @BN_free(ptr noundef %i.ap) #8
  tail call void @BN_free(ptr noundef %i.aq) #8
  br label %SRTPKDF.exit

bb.q:                                             ; preds = %bb.o
  %i.at = zext nneg i32 %i.ai to i64
  %i.au = getelementptr inbounds nuw i8, ptr @is_srtp.strp_table, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !25, !range !27, !noundef !28
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = select i1 %i.aw, i32 6, i32 4           ; 3 uses
  %i.ay = icmp ne ptr %i.aa, null
  %i.az = icmp ne i64 %i.ac, 0
  %or.cond5.i = and i1 %i.ay, %i.az
  %i.ba = icmp ne i32 %i.ae, 0
  %or.cond7.i = and i1 %or.cond5.i, %i.ba
  br i1 %or.cond7.i, label %bb.r, label %.loopexit.i

bb.r:                                             ; preds = %bb.q
  %i.bb = trunc i64 %i.ac to i32
  %i.bc = icmp sgt i32 %i.ax, %i.bb
  br i1 %i.bc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 457, ptr noundef nonnull @__func__.SRTPKDF) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 259, ptr noundef null) #8
  br label %bb.aa

bb.t:                                             ; preds = %bb.r
  %i.bd = tail call ptr @BN_bin2bn(ptr noundef nonnull %i.aa, i32 noundef %i.ax, ptr noundef nonnull %i.ap) #8
  %.not.i24 = icmp eq ptr %i.bd, null
  br i1 %.not.i24, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = tail call i32 @BN_rshift(ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ap, i32 noundef %i.ag) #8
  %.not74.i = icmp eq i32 %i.be, 0
  br i1 %.not74.i, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bf = call i32 @BN_bn2bin(ptr noundef nonnull %i.aq, ptr noundef nonnull %i.c) #8 ; 6 uses
  %.not751.i = icmp slt i32 %i.bf, 1
  br i1 %.not751.i, label %.loopexit.i, label %iter.check

iter.check:                                       ; preds = %bb.v
  %i.bg = zext nneg i32 %i.bf to i64              ; 3 uses
  %i.bh = add nuw i32 %i.bf, 1
  %wide.trip.count.i = zext i32 %i.bh to i64
  %i.bi = zext nneg i32 %i.bf to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.bf, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check39 = icmp ult i32 %i.bf, 32
  br i1 %min.iters.check39, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bj = and i64 %i.bi, 24
  %n.vec = and i64 %i.bi, 2147483616              ; 4 uses
  %i.bk = or disjoint i64 %n.vec, 1
  %invariant.gep = getelementptr i8, ptr %i.c, i64 %i.bg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %.neg = xor i64 %index, -1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.neg ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %gep, i64 -15
  %i.bm = getelementptr inbounds i8, ptr %gep, i64 -31
  %wide.load = load <16 x i8>, ptr %i.bl, align 1, !tbaa !29
  %wide.load40 = load <16 x i8>, ptr %i.bm, align 1, !tbaa !29
  %i.bn = sub nsw i64 13, %index
  %i.bo = getelementptr inbounds i8, ptr %i.e, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -15 ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 -31 ; 2 uses
  %wide.load41 = load <16 x i8>, ptr %i.bp, align 2, !tbaa !29
  %wide.load42 = load <16 x i8>, ptr %i.bq, align 2, !tbaa !29
  %i.br = xor <16 x i8> %wide.load41, %wide.load
  %i.bs = xor <16 x i8> %wide.load42, %wide.load40
  store <16 x i8> %i.br, ptr %i.bp, align 2, !tbaa !29
  store <16 x i8> %i.bs, ptr %i.bq, align 2, !tbaa !29
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bi
  br i1 %cmp.n, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec43 = and i64 %i.bi, 2147483640            ; 3 uses
  %i.bu = or disjoint i64 %n.vec43, 1
  %invariant.gep51 = getelementptr i8, ptr %i.c, i64 %i.bg
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index44 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next47, %vec.epilog.vector.body ] ; 3 uses
  %.neg50 = xor i64 %index44, -1
  %gep52 = getelementptr i8, ptr %invariant.gep51, i64 %.neg50
  %i.bv = getelementptr inbounds i8, ptr %gep52, i64 -7
  %wide.load45 = load <8 x i8>, ptr %i.bv, align 1, !tbaa !29
  %i.bw = sub nsw i64 13, %index44
  %i.bx = getelementptr inbounds i8, ptr %i.e, i64 %i.bw
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -7 ; 2 uses
  %wide.load46 = load <8 x i8>, ptr %i.by, align 2, !tbaa !29
  %i.bz = xor <8 x i8> %wide.load46, %wide.load45
  store <8 x i8> %i.bz, ptr %i.by, align 2, !tbaa !29
  %index.next47 = add nuw i64 %index44, 8         ; 2 uses
  %i.ca = icmp eq i64 %index.next47, %n.vec43
  br i1 %i.ca, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !35

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n48 = icmp eq i64 %n.vec43, %i.bi
  br i1 %cmp.n48, label %.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 1, %iter.check ], [ %i.bk, %vec.epilog.iter.check ], [ %i.bu, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.cb = sub nsw i64 %i.bg, %indvars.iv.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !29
  %i.ce = sub nsw i64 14, %indvars.iv.i
  %i.cf = getelementptr inbounds i8, ptr %i.e, i64 %i.ce ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !29
  %i.ch = xor i8 %i.cg, %i.cd
  store i8 %i.ch, ptr %i.cf, align 1, !tbaa !29
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !36

.loopexit.i:                                      ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.v, %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 14
  store i16 0, ptr %i.ci, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(14) %i.d, ptr noundef nonnull align 16 dereferenceable(14) %i.e, i64 14, i1 false)
  %i.cj = sub nuw nsw i32 13, %i.ax
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ck ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !29
  %i.cn = trunc nuw nsw i32 %i.ai to i8
  %i.co = xor i8 %i.cm, %i.cn
  store i8 %i.co, ptr %i.cl, align 1, !tbaa !29
  %i.cp = sext i32 %.061.i to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 0, i64 %i.cp, i1 false)
  %i.cq = call ptr @EVP_CIPHER_CTX_new() #8       ; 9 uses
  %.not76.i = icmp eq ptr %i.cq, null
  br i1 %.not76.i, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %.loopexit.i
  %i.cr = call i32 @EVP_EncryptInit_ex(ptr noundef nonnull %i.cq, ptr noundef nonnull %i.k, ptr noundef null, ptr noundef %i.y, ptr noundef nonnull %i.d) #8
  %i.cs = icmp slt i32 %i.cr, 1
  br i1 %i.cs, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ct = call i32 @EVP_CIPHER_CTX_set_padding(ptr noundef nonnull %i.cq, i32 noundef 0) #8
  %i.cu = icmp slt i32 %i.ct, 1
  br i1 %i.cu, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cv = call i32 @EVP_EncryptUpdate(ptr noundef nonnull %i.cq, ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.061.i) #8
  %i.cw = icmp slt i32 %i.cv, 1
  br i1 %i.cw, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cx = call i32 @EVP_EncryptFinal_ex(ptr noundef nonnull %i.cq, ptr noundef nonnull %1, ptr noundef nonnull %i.a) #8
  %i.cy = icmp sgt i32 %i.cx, 0
  %spec.select.i = zext i1 %i.cy to i32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %.loopexit.i, %bb.u, %bb.t, %bb.s
  %.063.i = phi ptr [ null, %bb.s ], [ %i.cq, %bb.w ], [ %i.cq, %bb.x ], [ %i.cq, %bb.y ], [ %i.cq, %bb.z ], [ null, %bb.t ], [ null, %.loopexit.i ], [ null, %bb.u ]
  %.0.i23 = phi i32 [ 0, %bb.s ], [ 0, %bb.w ], [ 0, %bb.x ], [ 0, %bb.y ], [ %spec.select.i, %bb.z ], [ 0, %bb.t ], [ 0, %.loopexit.i ], [ 0, %bb.u ]
  call void @EVP_CIPHER_CTX_free(ptr noundef %.063.i) #8
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.c, i64 noundef 16) #8
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.d, i64 noundef 16) #8
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.e, i64 noundef 16) #8
  call void @BN_clear_free(ptr noundef nonnull %i.ap) #8
  call void @BN_clear_free(ptr noundef nonnull %i.aq) #8
  br label %SRTPKDF.exit

SRTPKDF.exit:                                     ; preds = %bb.j, %bb.k, %bb.n, %bb.p, %bb.aa
  %.064.i = phi i32 [ %.0.i23, %bb.aa ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.p ], [ 0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.ab

bb.ab:                                            ; preds = %kdf_srtpkdf_check_key.exit, %bb.a, %bb.b, %SRTPKDF.exit, %bb.i, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.i ], [ %.064.i, %SRTPKDF.exit ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %kdf_srtpkdf_check_key.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @kdf_srtpkdf_settable_ctx_params(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  ret ptr @srtp_set_ctx_params_list
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @kdf_srtpkdf_set_ctx_params(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !37     ; 2 uses
  %.not62.i = icmp eq ptr %i.c, null
  br i1 %.not62.i, label %.thread129, label %.lr.ph.i

.thread129:                                       ; preds = %bb.c
  %i.d = load ptr, ptr %0, align 8, !tbaa !8
  %i.e = tail call ptr @ossl_prov_ctx_get0_libctx(ptr noundef %i.d) #8 ; 0 uses
  br label %bb.ar

.lr.ph.i:                                         ; preds = %bb.c, %bb.q
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %bb.q ], [ null, %bb.c ] ; 15 uses
  %.sroa.5.0 = phi ptr [ %.sroa.5.1, %bb.q ], [ null, %bb.c ] ; 15 uses
  %.sroa.7.0 = phi ptr [ %.sroa.7.1, %bb.q ], [ null, %bb.c ] ; 15 uses
  %.sroa.9.0 = phi ptr [ %.sroa.9.1, %bb.q ], [ null, %bb.c ] ; 15 uses
  %.sroa.11.0 = phi ptr [ %.sroa.11.1, %bb.q ], [ null, %bb.c ] ; 15 uses
  %.sroa.13.0 = phi ptr [ %.sroa.13.1, %bb.q ], [ null, %bb.c ] ; 15 uses
  %.sroa.15.0 = phi ptr [ %.sroa.15.1, %bb.q ], [ null, %bb.c ] ; 15 uses
  %i.f = phi ptr [ %i.az, %bb.q ], [ null, %bb.c ] ; 16 uses
  %i.g = phi ptr [ %i.ba, %bb.q ], [ null, %bb.c ] ; 16 uses
  %i.h = phi ptr [ %i.bb, %bb.q ], [ null, %bb.c ] ; 16 uses
  %i.i = phi ptr [ %i.bc, %bb.q ], [ null, %bb.c ] ; 16 uses
  %i.j = phi ptr [ %i.bd, %bb.q ], [ null, %bb.c ] ; 16 uses
  %i.k = phi ptr [ %i.be, %bb.q ], [ null, %bb.c ] ; 16 uses
  %i.l = phi ptr [ %i.bf, %bb.q ], [ null, %bb.c ] ; 16 uses
  %i.m = phi ptr [ %i.bh, %bb.q ], [ %i.c, %bb.c ] ; 12 uses
  %.04163.i = phi ptr [ %i.bg, %bb.q ], [ %1, %bb.c ] ; 15 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !29
  switch i8 %i.n, label %bb.q [
    i8 99, label %bb.d
    i8 105, label %bb.f
    i8 107, label %bb.h
    i8 108, label %bb.k
    i8 112, label %bb.m
    i8 115, label %bb.o
  ]

bb.d:                                             ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.12, ptr noundef nonnull dereferenceable(1) %i.o) #9
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.q, !prof !39

bb.e:                                             ; preds = %bb.d
  %.not50.i = icmp eq ptr %i.f, null
  br i1 %.not50.i, label %bb.q, label %srtp_set_ctx_params_decoder.exit, !prof !39

bb.f:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.s = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.15, ptr noundef nonnull dereferenceable(1) %i.r) #9
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.q, !prof !39

bb.g:                                             ; preds = %bb.f
  %.not49.i = icmp eq ptr %i.g, null
  br i1 %.not49.i, label %bb.q, label %srtp_set_ctx_params_decoder.exit, !prof !39

bb.h:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !29
  switch i8 %i.v, label %bb.q [
    i8 100, label %sub_0.i
    i8 101, label %sub_052.i
  ]

sub_0.i:                                          ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.x = load i8, ptr %i.w, align 1               ; 2 uses
  %i.y = zext i8 %i.x to i32
  %i.z = sub nsw i32 114, %i.y
  %.not65.i = icmp eq i8 %i.x, 114
  br i1 %.not65.i, label %sub_1.i, label %.tail.i

sub_1.i:                                          ; preds = %sub_0.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i32
  %i.ad = sub nsw i32 0, %i.ac
  br label %.tail.i

.tail.i:                                          ; preds = %sub_1.i, %sub_0.i
  %i.ae = phi i32 [ %i.z, %sub_0.i ], [ %i.ad, %sub_1.i ]
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.i, label %bb.q, !prof !39

bb.i:                                             ; preds = %.tail.i
  %.not48.i = icmp eq ptr %i.h, null
  br i1 %.not48.i, label %bb.q, label %srtp_set_ctx_params_decoder.exit, !prof !39

sub_052.i:                                        ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.ah = load i8, ptr %i.ag, align 1             ; 2 uses
  %i.ai = zext i8 %i.ah to i32
  %i.aj = sub nsw i32 121, %i.ai
  %.not64.i = icmp eq i8 %i.ah, 121
  br i1 %.not64.i, label %sub_153.i, label %.tail51.i

sub_153.i:                                        ; preds = %sub_052.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i32
  %i.an = sub nsw i32 0, %i.am
  br label %.tail51.i

.tail51.i:                                        ; preds = %sub_153.i, %sub_052.i
  %i.ao = phi i32 [ %i.aj, %sub_052.i ], [ %i.an, %sub_153.i ]
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.j, label %bb.q, !prof !39

bb.j:                                             ; preds = %.tail51.i
  %.not47.i = icmp eq ptr %i.i, null
  br i1 %.not47.i, label %bb.q, label %srtp_set_ctx_params_decoder.exit, !prof !39

bb.k:                                             ; preds = %.lr.ph.i
end_hunk_0
