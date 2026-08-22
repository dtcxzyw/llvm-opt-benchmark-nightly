Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/krb5kdf?download=true
inline.NumInlined: 12
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@krb5kdf_free:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !18
  tail call void @CRYPTO_clear_free(ptr noundef %i.h, i64 noundef %i.j, ptr noundef nonnull @.str, i32 noundef 91) #7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !8
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 80) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @krb5kdf_reset(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @ossl_prov_cipher_reset(ptr noundef nonnull %i.b) #7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  tail call void @CRYPTO_clear_free(ptr noundef %i.d, i64 noundef %i.f, ptr noundef nonnull @.str, i32 noundef 90) #7
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !18
  tail call void @CRYPTO_clear_free(ptr noundef %i.h, i64 noundef %i.j, ptr noundef nonnull @.str, i32 noundef 91) #7
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, i8 0, i64 48, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !8
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @krb5kdf_derive(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 11 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = tail call i32 @ossl_prov_is_running() #7
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @krb5kdf_set_ctx_params(ptr noundef %0, ptr noundef %3)
  %.not17 = icmp eq i32 %i.d, 0
  br i1 %.not17, label %bb.ag, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = tail call ptr @ossl_prov_cipher_cipher(ptr noundef nonnull %i.e) #7 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 137, ptr noundef nonnull @__func__.krb5kdf_derive) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 155, ptr noundef null) #7
  br label %bb.ag

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15   ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 141, ptr noundef nonnull @__func__.krb5kdf_derive) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 128, ptr noundef null) #7
  br label %bb.ag

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17   ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 145, ptr noundef nonnull @__func__.krb5kdf_derive) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 156, ptr noundef null) #7
  br label %bb.ag

bb.i:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !16   ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load i64, ptr %i.p, align 8, !tbaa !18   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %.not.i = icmp ne i64 %i.o, %2                  ; 2 uses
  br i1 %.not.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.r = tail call i32 @EVP_CIPHER_get_nid(ptr noundef nonnull %i.f) #7
  %i.s = icmp eq i32 %i.r, 44
  %i.t = icmp eq i64 %i.o, 24
  %or.cond.i = and i1 %i.t, %i.s
  %i.u = icmp eq i64 %2, 21
  %or.cond3.i = and i1 %i.u, %or.cond.i
  br i1 %or.cond3.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 395, ptr noundef nonnull @__func__.KRB5KDF) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 139, ptr noundef null) #7
  br label %KRB5KDF.exit

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.v = tail call ptr @EVP_CIPHER_CTX_new() #7   ; 17 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %KRB5KDF.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call i32 @EVP_EncryptInit_ex(ptr noundef nonnull %i.v, ptr noundef nonnull %i.f, ptr noundef null, ptr noundef null, ptr noundef null) #7
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %cipher_init.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = tail call i32 @EVP_CIPHER_CTX_get_key_length(ptr noundef nonnull %i.v) #7
  %i.z = sext i32 %i.y to i64
  %.not16.i.i = icmp eq i64 %i.o, %i.z
  br i1 %.not16.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = trunc i64 %i.o to i32
  %i.ab = tail call i32 @EVP_CIPHER_CTX_set_key_length(ptr noundef nonnull %i.v, i32 noundef %i.aa) #7
  %i.ac = icmp slt i32 %i.ab, 1
  br i1 %i.ac, label %cipher_init.exit.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ad = tail call i32 @EVP_EncryptInit_ex(ptr noundef nonnull %i.v, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.i, ptr noundef null) #7
  %.not17.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not17.i.i, label %cipher_init.exit.thread.i, label %cipher_init.exit.i

cipher_init.exit.i:                               ; preds = %bb.p
  %i.ae = tail call i32 @EVP_CIPHER_CTX_set_padding(ptr noundef nonnull %i.v, i32 noundef 0) #7
  %.not94.i = icmp eq i32 %i.ae, 0
  br i1 %.not94.i, label %cipher_init.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %cipher_init.exit.i
  %i.af = tail call i32 @EVP_CIPHER_CTX_get_block_size(ptr noundef nonnull %i.v) #7 ; 11 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 414, ptr noundef nonnull @__func__.KRB5KDF) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 155, ptr noundef null) #7
  br label %cipher_init.exit.thread.i

bb.s:                                             ; preds = %bb.q
  %i.ah = sext i32 %i.af to i64
  %i.ai = icmp ugt i64 %i.q, %i.ah
  br i1 %i.ai, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 420, ptr noundef nonnull @__func__.KRB5KDF) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 157, ptr noundef null) #7
  br label %cipher_init.exit.thread.i

bb.u:                                             ; preds = %bb.s
  %i.aj = trunc i64 %i.q to i32                   ; 7 uses
  %i.ak = icmp eq i32 %i.af, %i.aj
  br i1 %i.ak, label %bb.v, label %.preheader60.i.i

.preheader60.i.i:                                 ; preds = %bb.u
  %.not61.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not61.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.v:                                             ; preds = %bb.u
  %i.al = and i64 %i.q, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 1 %i.l, i64 %i.al, i1 false)
  br label %n_fold.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader60.i.i, %.lr.ph.i.i
  %.063.i.i = phi i32 [ %.05362.i.i, %.lr.ph.i.i ], [ %i.af, %.preheader60.i.i ]
  %.05362.i.i = phi i32 [ %i.am, %.lr.ph.i.i ], [ %i.aj, %.preheader60.i.i ] ; 3 uses
  %i.am = urem i32 %.063.i.i, %.05362.i.i         ; 2 uses
  %.not.i102.i = icmp eq i32 %i.am, 0
  br i1 %.not.i102.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !19

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.preheader60.i.i
  %.0.lcssa.i.i = phi i32 [ %i.af, %.preheader60.i.i ], [ %.05362.i.i, %.lr.ph.i.i ]
  %i.an = mul i32 %i.af, %i.aj
  %i.ao = udiv i32 %i.an, %.0.lcssa.i.i
  %i.ap = zext i32 %i.af to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.ap, i1 false)
  %.05464.i.i = add i32 %i.ao, -1                 ; 2 uses
  %i.aq = icmp sgt i32 %.05464.i.i, -1
  br i1 %i.aq, label %.lr.ph68.i.i, label %n_fold.exit.i

.preheader.i.i:                                   ; preds = %.lr.ph68.i.i
  %i.ar = icmp ne i32 %i.bw, 0
  %.05570.i.i = add i32 %i.af, -1                 ; 2 uses
  %i.as = icmp sgt i32 %.05570.i.i, -1
  %i.at = select i1 %i.as, i1 %i.ar, i1 false
  br i1 %i.at, label %.lr.ph72.preheader.i.i, label %n_fold.exit.i

.lr.ph72.preheader.i.i:                           ; preds = %.preheader.i.i
  %4 = zext nneg i32 %.05570.i.i to i64
  br label %.lr.ph72.i.i

.lr.ph68.i.i:                                     ; preds = %._crit_edge.i.i, %.lr.ph68.i.i
  %.05466.i.i = phi i32 [ %.054.i.i, %.lr.ph68.i.i ], [ %.05464.i.i, %._crit_edge.i.i ] ; 5 uses
  %.05665.i.i = phi i32 [ %i.bw, %.lr.ph68.i.i ], [ 0, %._crit_edge.i.i ]
  %i.au = urem i32 %.05466.i.i, %i.af
  %i.av = udiv i32 %.05466.i.i, %i.aj
  %i.aw = mul i32 %i.av, 13                       ; 2 uses
  %i.ax = lshr i32 %i.aw, 3
  %i.ay = sub nsw i32 %.05466.i.i, %i.ax          ; 2 uses
  %i.az = and i32 %i.aw, 7                        ; 2 uses
  %i.ba = add nsw i32 %i.ay, -1
  %i.bb = urem i32 %i.ba, %i.aj
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !21
  %i.bf = zext i8 %i.be to i32
  %i.bg = sub nuw nsw i32 8, %i.az
  %i.bh = shl nuw nsw i32 %i.bf, %i.bg
  %i.bi = urem i32 %i.ay, %i.aj
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !21
  %i.bm = zext i8 %i.bl to i32
  %i.bn = lshr i32 %i.bm, %i.az
  %.masked.i.i = and i32 %i.bh, 254
  %i.bo = or i32 %i.bn, %.masked.i.i
  %i.bp = zext nneg i32 %i.au to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bp ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !21
  %i.bs = zext i8 %i.br to i32
  %i.bt = add nuw nsw i32 %.05665.i.i, %i.bs
  %i.bu = add nuw nsw i32 %i.bt, %i.bo            ; 2 uses
  %i.bv = trunc i32 %i.bu to i8
  store i8 %i.bv, ptr %i.bq, align 1, !tbaa !21
  %i.bw = lshr i32 %i.bu, 8                       ; 2 uses
  %.054.i.i = add nsw i32 %.05466.i.i, -1
  %.not76.i.i = icmp eq i32 %.05466.i.i, 0
  br i1 %.not76.i.i, label %.preheader.i.i, label %.lr.ph68.i.i, !llvm.loop !22

.lr.ph72.i.i:                                     ; preds = %.lr.ph72.i.i, %.lr.ph72.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %4, %.lr.ph72.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph72.i.i ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !21  ; 2 uses
  %i.bz = add i8 %i.by, 1
  store i8 %i.bz, ptr %i.bx, align 1, !tbaa !21
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %i.ca = icmp ne i64 %indvars.iv.i.i, 0
  %i.cb = icmp eq i8 %i.by, -1
  %i.cc = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %i.cc, label %.lr.ph72.i.i, label %n_fold.exit.i, !llvm.loop !23

n_fold.exit.i:                                    ; preds = %.lr.ph72.i.i, %.preheader.i.i, %._crit_edge.i.i, %bb.v
  %.not123.i = icmp eq i64 %2, 0
  br i1 %.not123.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %n_fold.exit.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.ce = trunc i64 %i.o to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.cf = call i32 @EVP_EncryptUpdate(ptr noundef nonnull %i.v, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef %i.af) #7
  %.not96.i18 = icmp eq i32 %i.cf, 0
  br i1 %.not96.i18, label %.thread.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i, %bb.ae
  %.070121.i20 = phi ptr [ %spec.select101.i, %bb.ae ], [ %i.cd, %.lr.ph.i ] ; 5 uses
  %.066122.i19 = phi i64 [ %i.cm, %bb.ae ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.cg = load i32, ptr %i.b, align 4, !tbaa !24
  %i.ch = sext i32 %i.cg to i64
  %i.ci = call i32 @EVP_EncryptFinal_ex(ptr noundef nonnull %i.v, ptr noundef nonnull %.070121.i20, ptr noundef nonnull %i.b) #7
  %.not97.i = icmp eq i32 %i.ci, 0
  br i1 %.not97.i, label %.thread.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  %i.cj = load i32, ptr %i.b, align 4, !tbaa !24
  %.not98.i = icmp eq i32 %i.cj, 0
  br i1 %.not98.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @ERR_new() #7
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 441, ptr noundef nonnull @__func__.KRB5KDF) #7
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 107, ptr noundef null) #7
  br label %.thread.i

bb.y:                                             ; preds = %bb.w
  %i.ck = sub i64 %2, %.066122.i19
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.ck, i64 %i.ch) ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 %.066122.i19
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cl, ptr nonnull align 1 %.070121.i20, i64 %spec.select.i, i1 false)
  %i.cm = add i64 %spec.select.i, %.066122.i19    ; 2 uses
  %i.cn = icmp ugt i64 %2, %i.cm
  br i1 %i.cn, label %bb.z, label %._crit_edge.loopexit.i

bb.z:                                             ; preds = %bb.y
  %i.co = call i32 @EVP_CIPHER_CTX_reset(ptr noundef nonnull %i.v) #7
  %.not99.i = icmp eq i32 %i.co, 0
  br i1 %.not99.i, label %.thread.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cp = call i32 @EVP_EncryptInit_ex(ptr noundef nonnull %i.v, ptr noundef nonnull %i.f, ptr noundef null, ptr noundef null, ptr noundef null) #7
  %.not.i103.i = icmp eq i32 %i.cp, 0
  br i1 %.not.i103.i, label %.thread.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cq = call i32 @EVP_CIPHER_CTX_get_key_length(ptr noundef nonnull %i.v) #7
  %i.cr = sext i32 %i.cq to i64
  %.not16.i104.i = icmp eq i64 %i.o, %i.cr
  br i1 %.not16.i104.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cs = call i32 @EVP_CIPHER_CTX_set_key_length(ptr noundef nonnull %i.v, i32 noundef %i.ce) #7
  %i.ct = icmp slt i32 %i.cs, 1
  br i1 %i.ct, label %.thread.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cu = call i32 @EVP_EncryptInit_ex(ptr noundef nonnull %i.v, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.i, ptr noundef null) #7
  %.not17.i105.i = icmp eq i32 %i.cu, 0
  br i1 %.not17.i105.i, label %.thread.i, label %cipher_init.exit107.i

cipher_init.exit107.i:                            ; preds = %bb.ad
  %i.cv = call i32 @EVP_CIPHER_CTX_set_padding(ptr noundef nonnull %i.v, i32 noundef 0) #7
  %.not100.i = icmp eq i32 %i.cv, 0
  br i1 %.not100.i, label %.thread.i, label %bb.ae

.thread.i:                                        ; preds = %bb.ae, %.lr.ph, %bb.z, %bb.aa, %bb.ac, %bb.ad, %cipher_init.exit107.i, %.lr.ph.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %cipher_init.exit.thread.i

bb.ae:                                            ; preds = %cipher_init.exit107.i
  %i.cw = icmp eq ptr %.070121.i20, %i.a
  %i.cx = getelementptr inbounds nuw i8, ptr %.070121.i20, i64 32
  %spec.select101.i = select i1 %i.cw, ptr %i.cx, ptr %i.a ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.cy = call i32 @EVP_EncryptUpdate(ptr noundef nonnull %i.v, ptr noundef nonnull %spec.select101.i, ptr noundef nonnull %i.b, ptr noundef nonnull %.070121.i20, i32 noundef %i.af) #7
  %.not96.i = icmp eq i32 %i.cy, 0
  br i1 %.not96.i, label %.thread.i, label %.lr.ph

._crit_edge.loopexit.i:                           ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %n_fold.exit.i
  %i.cz = call i32 @EVP_CIPHER_get_nid(ptr noundef nonnull %i.f) #7
  %i.da = icmp ne i32 %i.cz, 44
  %or.cond5.i = or i1 %.not.i, %i.da
  br i1 %or.cond5.i, label %cipher_init.exit.thread.i, label %bb.af

bb.af:                                            ; preds = %._crit_edge.i
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 14 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.db, ptr noundef nonnull align 1 dereferenceable(7) %i.dc, i64 7, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.de = load i8, ptr %i.db, align 1, !tbaa !21
  %i.df = shl i8 %i.de, 1
  %i.dg = and i8 %i.df, 2
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !21
  %i.dj = shl i8 %i.di, 2
  %i.dk = and i8 %i.dj, 4
  %i.dl = or disjoint i8 %i.dk, %i.dg
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !21
  %i.do = shl i8 %i.dn, 3
  %i.dp = and i8 %i.do, 8
  %i.dq = or disjoint i8 %i.dl, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !21
  %i.dt = shl i8 %i.ds, 4
  %i.du = and i8 %i.dt, 16
  %i.dv = or disjoint i8 %i.dq, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !21
  %i.dy = shl i8 %i.dx, 5
  %i.dz = and i8 %i.dy, 32
  %i.ea = or disjoint i8 %i.dv, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !21
  %i.ed = shl i8 %i.ec, 6
  %i.ee = and i8 %i.ed, 64
  %i.ef = or disjoint i8 %i.ea, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !21
  %i.ei = shl i8 %i.eh, 7
  %i.ej = or disjoint i8 %i.ef, %i.ei
  store i8 %i.ej, ptr %i.dd, align 1, !tbaa !21
  call void @DES_set_odd_parity(ptr noundef nonnull %i.db) #7
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 7 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ek, ptr noundef nonnull align 1 dereferenceable(7) %i.el, i64 7, i1 false)
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.en = load i8, ptr %i.ek, align 1, !tbaa !21
  %i.eo = shl i8 %i.en, 1
  %i.ep = and i8 %i.eo, 2
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !21
  %i.es = shl i8 %i.er, 2
  %i.et = and i8 %i.es, 4
  %i.eu = or disjoint i8 %i.et, %i.ep
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !21
  %i.ex = shl i8 %i.ew, 3
  %i.ey = and i8 %i.ex, 8
  %i.ez = or disjoint i8 %i.eu, %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !21
  %i.fc = shl i8 %i.fb, 4
  %i.fd = and i8 %i.fc, 16
  %i.fe = or disjoint i8 %i.ez, %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !21
  %i.fh = shl i8 %i.fg, 5
  %i.fi = and i8 %i.fh, 32
  %i.fj = or disjoint i8 %i.fe, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !21
  %i.fm = shl i8 %i.fl, 6
  %i.fn = and i8 %i.fm, 64
  %i.fo = or disjoint i8 %i.fj, %i.fn
  %i.fp = load i8, ptr %i.dc, align 1, !tbaa !21
  %i.fq = shl i8 %i.fp, 7
  %i.fr = or disjoint i8 %i.fo, %i.fq
  store i8 %i.fr, ptr %i.em, align 1, !tbaa !21
  call void @DES_set_odd_parity(ptr noundef nonnull %i.ek) #7
  %i.fs = load i8, ptr %1, align 1, !tbaa !21
  %i.ft = shl i8 %i.fs, 1
  %i.fu = and i8 %i.ft, 2
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !21
  %i.fx = shl i8 %i.fw, 2
  %i.fy = and i8 %i.fx, 4
  %i.fz = or disjoint i8 %i.fy, %i.fu
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !21
  %i.gc = shl i8 %i.gb, 3
  %i.gd = and i8 %i.gc, 8
  %i.ge = or disjoint i8 %i.fz, %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !21
  %i.gh = shl i8 %i.gg, 4
  %i.gi = and i8 %i.gh, 16
  %i.gj = or disjoint i8 %i.ge, %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !21
  %i.gm = shl i8 %i.gl, 5
  %i.gn = and i8 %i.gm, 32
  %i.go = or disjoint i8 %i.gj, %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 5
end_hunk_0
