inline.NumInlined: 11
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@krb5kdf_free:bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @krb5kdf_reset(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @ossl_prov_cipher_reset(ptr noundef nonnull %i.b) #6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19
  tail call void @CRYPTO_clear_free(ptr noundef %i.d, i64 noundef %i.f, ptr noundef nonnull @.str, i32 noundef 89) #6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i64, ptr %i.i, align 8, !tbaa !21
  tail call void @CRYPTO_clear_free(ptr noundef %i.h, i64 noundef %i.j, ptr noundef nonnull @.str, i32 noundef 90) #6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, i8 0, i64 56, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @krb5kdf_derive(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 11 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = tail call i32 @ossl_prov_is_running() #6
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @krb5kdf_set_ctx_params(ptr noundef %0, ptr noundef %3)
  %.not17 = icmp eq i32 %i.d, 0
  br i1 %.not17, label %bb.ah, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = tail call ptr @ossl_prov_cipher_cipher(ptr noundef nonnull %i.e) #6 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 137, ptr noundef nonnull @__func__.krb5kdf_derive) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 155, ptr noundef null) #6
  br label %bb.ah

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 141, ptr noundef nonnull @__func__.krb5kdf_derive) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 128, ptr noundef null) #6
  br label %bb.ah

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 145, ptr noundef nonnull @__func__.krb5kdf_derive) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 156, ptr noundef null) #6
  br label %bb.ah

bb.i:                                             ; preds = %bb.g
  %i.n = tail call ptr @ossl_prov_cipher_engine(ptr noundef nonnull %i.e) #6 ; 2 uses
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !18   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !19   ; 6 uses
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !20   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load i64, ptr %i.s, align 8, !tbaa !21   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %.not.i = icmp ne i64 %i.q, %2                  ; 2 uses
  br i1 %.not.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.u = tail call i32 @EVP_CIPHER_get_nid(ptr noundef nonnull %i.f) #6
  %i.v = icmp eq i32 %i.u, 44
  %i.w = icmp eq i64 %i.q, 24
  %or.cond.i = and i1 %i.w, %i.v
  %i.x = icmp eq i64 %2, 21
  %or.cond3.i = and i1 %i.x, %or.cond.i
  br i1 %or.cond3.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 402, ptr noundef nonnull @__func__.KRB5KDF) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 139, ptr noundef null) #6
  br label %KRB5KDF.exit

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.y = tail call ptr @EVP_CIPHER_CTX_new() #6   ; 17 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %KRB5KDF.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = tail call i32 @EVP_EncryptInit_ex(ptr noundef nonnull %i.y, ptr noundef nonnull %i.f, ptr noundef %i.n, ptr noundef null, ptr noundef null) #6
  %.not.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i, label %cipher_init.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = tail call i32 @EVP_CIPHER_CTX_get_key_length(ptr noundef nonnull %i.y) #6
  %i.ac = sext i32 %i.ab to i64
  %.not17.i.i = icmp eq i64 %i.q, %i.ac
  br i1 %.not17.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = trunc i64 %i.q to i32
  %i.ae = tail call i32 @EVP_CIPHER_CTX_set_key_length(ptr noundef nonnull %i.y, i32 noundef %i.ad) #6
  %i.af = icmp slt i32 %i.ae, 1
  br i1 %i.af, label %cipher_init.exit.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ag = tail call i32 @EVP_EncryptInit_ex(ptr noundef nonnull %i.y, ptr noundef null, ptr noundef null, ptr noundef %i.o, ptr noundef null) #6
  %.not18.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not18.i.i, label %cipher_init.exit.thread.i, label %cipher_init.exit.i

cipher_init.exit.i:                               ; preds = %bb.p
  %i.ah = tail call i32 @EVP_CIPHER_CTX_set_padding(ptr noundef nonnull %i.y, i32 noundef 0) #6
  %.not96.i = icmp eq i32 %i.ah, 0
  br i1 %.not96.i, label %cipher_init.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %cipher_init.exit.i
  %i.ai = tail call i32 @EVP_CIPHER_CTX_get_block_size(ptr noundef nonnull %i.y) #6 ; 8 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 421, ptr noundef nonnull @__func__.KRB5KDF) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 155, ptr noundef null) #6
  br label %cipher_init.exit.thread.i

bb.s:                                             ; preds = %bb.q
  %i.ak = sext i32 %i.ai to i64
  %i.al = icmp ugt i64 %i.t, %i.ak
  br i1 %i.al, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 427, ptr noundef nonnull @__func__.KRB5KDF) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 157, ptr noundef null) #6
  br label %cipher_init.exit.thread.i

bb.u:                                             ; preds = %bb.s
  %i.am = zext i32 %i.ai to i64                   ; 4 uses
  %i.an = icmp eq i64 %i.t, %i.am
  br i1 %i.an, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.r, i64 %i.t, i1 false)
  br label %n_fold.exit.i

bb.w:                                             ; preds = %bb.u
  %i.ao = trunc i64 %i.t to i32                   ; 2 uses
  %.not60.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not60.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %.lr.ph.i.i
  %.062.i.i = phi i32 [ %.05361.i.i, %.lr.ph.i.i ], [ %i.ai, %bb.w ]
  %.05361.i.i = phi i32 [ %i.ap, %.lr.ph.i.i ], [ %i.ao, %bb.w ] ; 3 uses
  %i.ap = urem i32 %.062.i.i, %.05361.i.i         ; 2 uses
  %.not.i104.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i104.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !22

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = zext i32 %.05361.i.i to i64
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.w
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.am, %bb.w ]
  %i.aq = mul i64 %i.t, %i.am
  %i.ar = udiv i64 %i.aq, %.pre-phi.i.i
  %i.as = trunc i64 %i.ar to i32
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.am, i1 false)
  %.05463.i.i = add i32 %i.as, -1                 ; 2 uses
  %i.at = icmp sgt i32 %.05463.i.i, -1
  br i1 %i.at, label %.lr.ph67.preheader.i.i, label %n_fold.exit.i

.lr.ph67.preheader.i.i:                           ; preds = %._crit_edge.i.i
  %i.au = zext nneg i32 %.05463.i.i to i64
  br label %.lr.ph67.i.i

.preheader.i.i:                                   ; preds = %.lr.ph67.i.i
  %i.av = icmp ne i32 %i.cc, 0
  %.05569.i.i = add i32 %i.ai, -1                 ; 2 uses
  %i.aw = icmp sgt i32 %.05569.i.i, -1
  %i.ax = select i1 %i.aw, i1 %i.av, i1 false
  br i1 %i.ax, label %.lr.ph71.i.i, label %n_fold.exit.i

.lr.ph67.i.i:                                     ; preds = %.lr.ph67.i.i, %.lr.ph67.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.au, %.lr.ph67.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph67.i.i ] ; 4 uses
  %.05664.i.i = phi i32 [ 0, %.lr.ph67.preheader.i.i ], [ %i.cc, %.lr.ph67.i.i ]
  %i.ay = trunc nuw nsw i64 %indvars.iv.i.i to i32 ; 2 uses
  %i.az = urem i32 %i.ay, %i.ai
  %i.ba = udiv i64 %indvars.iv.i.i, %i.t
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %i.bc = mul i32 %i.bb, 13                       ; 2 uses
  %i.bd = lshr i32 %i.bc, 3
  %i.be = sub nsw i32 %i.ay, %i.bd                ; 2 uses
  %i.bf = and i32 %i.bc, 7                        ; 2 uses
  %i.bg = add nsw i32 %i.be, -1
  %i.bh = zext i32 %i.bg to i64
  %i.bi = urem i64 %i.bh, %i.t
  %i.bj = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !24
  %i.bl = zext i8 %i.bk to i32
  %i.bm = sub nuw nsw i32 8, %i.bf
  %i.bn = shl nuw nsw i32 %i.bl, %i.bm
  %i.bo = zext i32 %i.be to i64
  %i.bp = urem i64 %i.bo, %i.t
  %i.bq = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !24
  %i.bs = zext i8 %i.br to i32
  %i.bt = lshr i32 %i.bs, %i.bf
  %.masked.i.i = and i32 %i.bn, 254
  %i.bu = or i32 %.masked.i.i, %i.bt
  %i.bv = zext nneg i32 %i.az to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bv ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !24
  %i.by = zext i8 %i.bx to i32
  %i.bz = add nuw nsw i32 %.05664.i.i, %i.by
  %i.ca = add nuw nsw i32 %i.bz, %i.bu            ; 2 uses
  %i.cb = trunc i32 %i.ca to i8
  store i8 %i.cb, ptr %i.bw, align 1, !tbaa !24
  %i.cc = lshr i32 %i.ca, 8                       ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %.not77.i.i = icmp eq i64 %indvars.iv.i.i, 0
  br i1 %.not77.i.i, label %.preheader.i.i, label %.lr.ph67.i.i, !llvm.loop !25

.lr.ph71.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph71.i.i
  %.05570.i.i = phi i32 [ %.055.i.i, %.lr.ph71.i.i ], [ %.05569.i.i, %.preheader.i.i ] ; 3 uses
  %4 = zext nneg i32 %.05570.i.i to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 %4 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !24  ; 2 uses
  %i.cf = add i8 %i.ce, 1
  store i8 %i.cf, ptr %i.cd, align 1, !tbaa !24
  %.055.i.i = add nsw i32 %.05570.i.i, -1
  %i.cg = icmp ne i32 %.05570.i.i, 0
  %i.ch = icmp eq i8 %i.ce, -1
  %i.ci = select i1 %i.cg, i1 %i.ch, i1 false
  br i1 %i.ci, label %.lr.ph71.i.i, label %n_fold.exit.i, !llvm.loop !26

n_fold.exit.i:                                    ; preds = %.lr.ph71.i.i, %.preheader.i.i, %._crit_edge.i.i, %bb.v
  %.not125.i = icmp eq i64 %2, 0
  br i1 %.not125.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %n_fold.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.ck = trunc i64 %i.q to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.cl = call i32 @EVP_EncryptUpdate(ptr noundef nonnull %i.y, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef %i.ai) #6
  %.not98.i18 = icmp eq i32 %i.cl, 0
  br i1 %.not98.i18, label %.thread.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i, %bb.af
  %.072123.i20 = phi ptr [ %spec.select103.i, %bb.af ], [ %i.cj, %.lr.ph.i ] ; 5 uses
  %.068124.i19 = phi i64 [ %i.cs, %bb.af ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.cm = load i32, ptr %i.b, align 4, !tbaa !27
  %i.cn = sext i32 %i.cm to i64
  %i.co = call i32 @EVP_EncryptFinal_ex(ptr noundef nonnull %i.y, ptr noundef nonnull %.072123.i20, ptr noundef nonnull %i.b) #6
  %.not99.i = icmp eq i32 %i.co, 0
  br i1 %.not99.i, label %.thread.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph
  %i.cp = load i32, ptr %i.b, align 4, !tbaa !27
  %.not100.i = icmp eq i32 %i.cp, 0
  br i1 %.not100.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @ERR_new() #6
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 448, ptr noundef nonnull @__func__.KRB5KDF) #6
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 107, ptr noundef null) #6
  br label %.thread.i

bb.z:                                             ; preds = %bb.x
  %i.cq = sub i64 %2, %.068124.i19
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.cq, i64 %i.cn) ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 %.068124.i19
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cr, ptr nonnull align 1 %.072123.i20, i64 %spec.select.i, i1 false)
  %i.cs = add i64 %spec.select.i, %.068124.i19    ; 2 uses
  %i.ct = icmp ugt i64 %2, %i.cs
  br i1 %i.ct, label %bb.aa, label %._crit_edge.loopexit.i

bb.aa:                                            ; preds = %bb.z
  %i.cu = call i32 @EVP_CIPHER_CTX_reset(ptr noundef nonnull %i.y) #6
  %.not101.i = icmp eq i32 %i.cu, 0
  br i1 %.not101.i, label %.thread.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cv = call i32 @EVP_EncryptInit_ex(ptr noundef nonnull %i.y, ptr noundef nonnull %i.f, ptr noundef %i.n, ptr noundef null, ptr noundef null) #6
  %.not.i105.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i105.i, label %.thread.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cw = call i32 @EVP_CIPHER_CTX_get_key_length(ptr noundef nonnull %i.y) #6
  %i.cx = sext i32 %i.cw to i64
  %.not17.i106.i = icmp eq i64 %i.q, %i.cx
  br i1 %.not17.i106.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cy = call i32 @EVP_CIPHER_CTX_set_key_length(ptr noundef nonnull %i.y, i32 noundef %i.ck) #6
  %i.cz = icmp slt i32 %i.cy, 1
  br i1 %i.cz, label %.thread.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.da = call i32 @EVP_EncryptInit_ex(ptr noundef nonnull %i.y, ptr noundef null, ptr noundef null, ptr noundef %i.o, ptr noundef null) #6
  %.not18.i107.i = icmp eq i32 %i.da, 0
  br i1 %.not18.i107.i, label %.thread.i, label %cipher_init.exit109.i

cipher_init.exit109.i:                            ; preds = %bb.ae
  %i.db = call i32 @EVP_CIPHER_CTX_set_padding(ptr noundef nonnull %i.y, i32 noundef 0) #6
  %.not102.i = icmp eq i32 %i.db, 0
  br i1 %.not102.i, label %.thread.i, label %bb.af

.thread.i:                                        ; preds = %bb.af, %.lr.ph, %bb.aa, %bb.ab, %bb.ad, %bb.ae, %cipher_init.exit109.i, %.lr.ph.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %cipher_init.exit.thread.i

bb.af:                                            ; preds = %cipher_init.exit109.i
  %i.dc = icmp eq ptr %.072123.i20, %i.a
  %i.dd = getelementptr inbounds nuw i8, ptr %.072123.i20, i64 32
  %spec.select103.i = select i1 %i.dc, ptr %i.dd, ptr %i.a ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.de = call i32 @EVP_EncryptUpdate(ptr noundef nonnull %i.y, ptr noundef nonnull %spec.select103.i, ptr noundef nonnull %i.b, ptr noundef nonnull %.072123.i20, i32 noundef %i.ai) #6
  %.not98.i = icmp eq i32 %i.de, 0
  br i1 %.not98.i, label %.thread.i, label %.lr.ph

._crit_edge.loopexit.i:                           ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %n_fold.exit.i
  %i.df = call i32 @EVP_CIPHER_get_nid(ptr noundef nonnull %i.f) #6
  %i.dg = icmp ne i32 %i.df, 44
  %or.cond5.i = or i1 %.not.i, %i.dg
  br i1 %or.cond5.i, label %cipher_init.exit.thread.i, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge.i
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 14 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.dh, ptr noundef nonnull align 1 dereferenceable(7) %i.di, i64 7, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.dk = load i8, ptr %i.dh, align 1, !tbaa !24
  %i.dl = shl i8 %i.dk, 1
  %i.dm = and i8 %i.dl, 2
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !24
  %i.dp = shl i8 %i.do, 2
  %i.dq = and i8 %i.dp, 4
  %i.dr = or disjoint i8 %i.dq, %i.dm
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !24
  %i.du = shl i8 %i.dt, 3
  %i.dv = and i8 %i.du, 8
  %i.dw = or disjoint i8 %i.dr, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !24
  %i.dz = shl i8 %i.dy, 4
  %i.ea = and i8 %i.dz, 16
  %i.eb = or disjoint i8 %i.dw, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !24
  %i.ee = shl i8 %i.ed, 5
  %i.ef = and i8 %i.ee, 32
  %i.eg = or disjoint i8 %i.eb, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !24
  %i.ej = shl i8 %i.ei, 6
  %i.ek = and i8 %i.ej, 64
  %i.el = or disjoint i8 %i.eg, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.en = load i8, ptr %i.em, align 1, !tbaa !24
  %i.eo = shl i8 %i.en, 7
  %i.ep = or disjoint i8 %i.el, %i.eo
  store i8 %i.ep, ptr %i.dj, align 1, !tbaa !24
  call void @DES_set_odd_parity(ptr noundef nonnull %i.dh) #6
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 7 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.eq, ptr noundef nonnull align 1 dereferenceable(7) %i.er, i64 7, i1 false)
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.et = load i8, ptr %i.eq, align 1, !tbaa !24
  %i.eu = shl i8 %i.et, 1
  %i.ev = and i8 %i.eu, 2
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !24
  %i.ey = shl i8 %i.ex, 2
  %i.ez = and i8 %i.ey, 4
  %i.fa = or disjoint i8 %i.ez, %i.ev
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !24
  %i.fd = shl i8 %i.fc, 3
  %i.fe = and i8 %i.fd, 8
  %i.ff = or disjoint i8 %i.fa, %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !24
  %i.fi = shl i8 %i.fh, 4
  %i.fj = and i8 %i.fi, 16
  %i.fk = or disjoint i8 %i.ff, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !24
  %i.fn = shl i8 %i.fm, 5
  %i.fo = and i8 %i.fn, 32
  %i.fp = or disjoint i8 %i.fk, %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !24
  %i.fs = shl i8 %i.fr, 6
  %i.ft = and i8 %i.fs, 64
  %i.fu = or disjoint i8 %i.fp, %i.ft
  %i.fv = load i8, ptr %i.di, align 1, !tbaa !24
  %i.fw = shl i8 %i.fv, 7
  %i.fx = or disjoint i8 %i.fu, %i.fw
  store i8 %i.fx, ptr %i.es, align 1, !tbaa !24
  call void @DES_set_odd_parity(ptr noundef nonnull %i.eq) #6
  %i.fy = load i8, ptr %1, align 1, !tbaa !24
  %i.fz = shl i8 %i.fy, 1
  %i.ga = and i8 %i.fz, 2
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !24
  %i.gd = shl i8 %i.gc, 2
  %i.ge = and i8 %i.gd, 4
  %i.gf = or disjoint i8 %i.ge, %i.ga
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !24
  %i.gi = shl i8 %i.gh, 3
  %i.gj = and i8 %i.gi, 8
  %i.gk = or disjoint i8 %i.gf, %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !24
  %i.gn = shl i8 %i.gm, 4
  %i.go = and i8 %i.gn, 16
  %i.gp = or disjoint i8 %i.gk, %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !24
  %i.gs = shl i8 %i.gr, 5
  %i.gt = and i8 %i.gs, 32
  %i.gu = or disjoint i8 %i.gp, %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 5
end_hunk_0
