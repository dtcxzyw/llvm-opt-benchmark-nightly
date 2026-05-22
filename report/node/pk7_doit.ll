inline.NumInlined: 48
inline.NumDeleted: 12
begin_hunk_0_@PKCS7_dataInit:bb.a

.lr.ph141:                                        ; preds = %bb.ac, %pkcs7_encode_rinfo.exit
  %.189139 = phi i32 [ %i.dn, %pkcs7_encode_rinfo.exit ], [ 0, %bb.ac ] ; 2 uses
  %i.cp = call ptr @OPENSSL_sk_value(ptr noundef %.096, i32 noundef %.189139) #4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !57 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !61
  %i.cu = call ptr @X509_get0_pubkey(ptr noundef %i.ct) #4 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %pkcs7_encode_rinfo.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph141
  %i.cw = call ptr @ossl_pkcs7_ctx_get0_libctx(ptr noundef %i.cr) #4
  %i.cx = call ptr @ossl_pkcs7_ctx_get0_propq(ptr noundef %i.cr) #4
  %i.cy = call ptr @EVP_PKEY_CTX_new_from_pkey(ptr noundef %i.cw, ptr noundef nonnull %i.cu, ptr noundef %i.cx) #4 ; 6 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %pkcs7_encode_rinfo.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.da = call i32 @EVP_PKEY_encrypt_init(ptr noundef nonnull %i.cy) #4
  %i.db = icmp slt i32 %i.da, 1
  br i1 %i.db, label %.thread.critedge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dc = call i32 @EVP_PKEY_encrypt(ptr noundef nonnull %i.cy, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, i64 noundef %i.co) #4
  %i.dd = icmp slt i32 %i.dc, 1
  br i1 %i.dd, label %.thread.critedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.de = load i64, ptr %i.a, align 8, !tbaa !62
  %i.df = call noalias ptr @CRYPTO_malloc(i64 noundef %i.de, ptr noundef nonnull @.str, i32 noundef 170) #4 ; 4 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %.thread.critedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dh = call i32 @EVP_PKEY_encrypt(ptr noundef nonnull %i.cy, ptr noundef nonnull %i.df, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, i64 noundef %i.co) #4
  %i.di = icmp slt i32 %i.dh, 1
  br i1 %i.di, label %.thread.critedge, label %pkcs7_encode_rinfo.exit

pkcs7_encode_rinfo.exit:                          ; preds = %bb.ah
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !63
  %i.dl = load i64, ptr %i.a, align 8, !tbaa !62
  %i.dm = trunc i64 %i.dl to i32
  call void @ASN1_STRING_set0(ptr noundef %i.dk, ptr noundef nonnull %i.df, i32 noundef %i.dm) #4
  call void @EVP_PKEY_CTX_free(ptr noundef nonnull %i.cy) #4
  call void @CRYPTO_free(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 184) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %i.dn = add nuw nsw i32 %.189139, 1             ; 2 uses
  %i.do = call i32 @OPENSSL_sk_num(ptr noundef %.096) #4
  %i.dp = icmp slt i32 %i.dn, %i.do
  br i1 %i.dp, label %.lr.ph141, label %._crit_edge142, !llvm.loop !64

pkcs7_encode_rinfo.exit.thread:                   ; preds = %.lr.ph141, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %.thread

._crit_edge142:                                   ; preds = %pkcs7_encode_rinfo.exit, %bb.ac
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.c, i64 noundef %i.co) #4
  %i.dq = load ptr, ptr %i.b, align 8, !tbaa !20  ; 2 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %._crit_edge142
  store ptr %i.be, ptr %i.b, align 8, !tbaa !20
  br label %bb.ak

bb.aj:                                            ; preds = %._crit_edge142
  %i.ds = call ptr @BIO_push(ptr noundef nonnull %i.dq, ptr noundef nonnull %i.be) #4 ; 0 uses
  br label %bb.ak

.thread.critedge:                                 ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae
  %.022.i.ph = phi ptr [ %i.df, %bb.ah ], [ null, %bb.ag ], [ null, %bb.af ], [ null, %bb.ae ]
  call void @EVP_PKEY_CTX_free(ptr noundef nonnull %i.cy) #4
  call void @CRYPTO_free(ptr noundef %.022.i.ph, ptr noundef nonnull @.str, i32 noundef 184) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %.thread

.thread:                                          ; preds = %.thread.critedge, %bb.r, %bb.t, %bb.u, %bb.v, %bb.w, %bb.ab, %bb.z, %pkcs7_encode_rinfo.exit.thread
  %.0100.ph = phi ptr [ null, %pkcs7_encode_rinfo.exit.thread ], [ null, %bb.z ], [ null, %bb.ab ], [ null, %bb.w ], [ null, %bb.v ], [ %i.br, %bb.u ], [ null, %bb.t ], [ null, %.thread.critedge ], [ null, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  br label %.thread133

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.p
  %i.dt = icmp eq ptr %1, null
  br i1 %i.dt, label %bb.am, label %.thread136

bb.am:                                            ; preds = %bb.al
  %i.du = load ptr, ptr %i.m, align 8, !tbaa !9
  %i.dv = call i32 @OBJ_obj2nid(ptr noundef %i.du) #4
  %i.dw = icmp eq i32 %i.dv, 22
  br i1 %i.dw, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dx = call i64 @PKCS7_ctrl(ptr noundef nonnull %0, i32 noundef 2, i64 noundef 0, ptr noundef null) #4
  %.not120 = icmp eq i64 %i.dx, 0
  br i1 %.not120, label %bb.ao, label %bb.av

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.not121 = icmp eq ptr %.093, null
  br i1 %.not121, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dy = load i32, ptr %.093, align 8, !tbaa !65
  %i.dz = icmp sgt i32 %i.dy, 0
  br i1 %i.dz, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.ea = call ptr @BIO_s_mem() #4
  %i.eb = call ptr @BIO_new(ptr noundef %i.ea) #4 ; 5 uses
  %.not122 = icmp eq ptr %i.eb, null
  br i1 %.not122, label %.thread133, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ec = call i64 @BIO_ctrl(ptr noundef nonnull %i.eb, i32 noundef 130, i64 noundef 0, ptr noundef null) #4 ; 0 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.093, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !67
  %i.ef = load i32, ptr %.093, align 8, !tbaa !65
  %i.eg = call i32 @BIO_write(ptr noundef nonnull %i.eb, ptr noundef %i.ee, i32 noundef %i.ef) #4
  %i.eh = load i32, ptr %.093, align 8, !tbaa !65
  %.not123 = icmp eq i32 %i.eg, %i.eh
  br i1 %.not123, label %.thread136, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @BIO_free_all(ptr noundef nonnull %i.eb) #4
  br label %.thread133

bb.at:                                            ; preds = %bb.ap, %bb.ao
  %i.ei = call ptr @BIO_s_mem() #4
  %i.ej = call ptr @BIO_new(ptr noundef %i.ei) #4 ; 3 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %.thread133, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.el = call i64 @BIO_ctrl(ptr noundef nonnull %i.ej, i32 noundef 130, i64 noundef 0, ptr noundef null) #4 ; 0 uses
  br label %.thread136

bb.av:                                            ; preds = %bb.an
  %i.em = call ptr @BIO_s_null() #4
  %i.en = call ptr @BIO_new(ptr noundef %i.em) #4 ; 2 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %.thread133, label %.thread136

.thread136:                                       ; preds = %bb.ar, %bb.au, %bb.av, %bb.al
  %.1 = phi ptr [ %i.en, %bb.av ], [ %1, %bb.al ], [ %i.eb, %bb.ar ], [ %i.ej, %bb.au ] ; 2 uses
  %i.ep = load ptr, ptr %i.b, align 8, !tbaa !20  ; 3 uses
  %.not124 = icmp eq ptr %i.ep, null
  br i1 %.not124, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.thread136
  %i.eq = call ptr @BIO_push(ptr noundef nonnull %i.ep, ptr noundef nonnull %.1) #4 ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %.thread136, %bb.aw
  %i.er = phi ptr [ %i.ep, %bb.aw ], [ %.1, %.thread136 ]
  call void @ASN1_OCTET_STRING_free(ptr noundef %.093) #4
  br label %bb.ay

.thread133:                                       ; preds = %.lr.ph, %bb.aq, %bb.as, %.thread, %bb.av, %bb.at, %bb.o, %bb.l, %bb.j, %bb.h
  %.2102 = phi ptr [ null, %bb.l ], [ null, %bb.aq ], [ null, %bb.av ], [ null, %bb.at ], [ %.0100.ph, %.thread ], [ null, %bb.o ], [ null, %bb.h ], [ null, %bb.j ], [ null, %bb.as ], [ null, %.lr.ph ]
  %.194 = phi ptr [ null, %bb.l ], [ %.093, %bb.aq ], [ %.093, %bb.av ], [ %.093, %bb.at ], [ %.093, %.thread ], [ %.093, %bb.o ], [ null, %bb.h ], [ null, %bb.j ], [ %.093, %bb.as ], [ %.093, %.lr.ph ]
  %.2 = phi ptr [ null, %bb.l ], [ null, %bb.aq ], [ null, %bb.av ], [ null, %bb.at ], [ %i.be, %.thread ], [ null, %bb.o ], [ null, %bb.h ], [ null, %bb.j ], [ null, %bb.as ], [ null, %.lr.ph ]
  call void @ASN1_OCTET_STRING_free(ptr noundef %.194) #4
  call void @EVP_CIPHER_free(ptr noundef %.2102) #4
  %i.es = load ptr, ptr %i.b, align 8, !tbaa !20
  call void @BIO_free_all(ptr noundef %i.es) #4
  call void @BIO_free_all(ptr noundef %.2) #4
  br label %bb.ay

bb.ay:                                            ; preds = %.thread133, %bb.ax, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %.thread133 ], [ %i.er, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  ret ptr %.0
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @ossl_pkcs7_get0_ctx(ptr noundef) local_unnamed_addr #2

declare ptr @ossl_pkcs7_ctx_get0_libctx(ptr noundef) local_unnamed_addr #2

declare ptr @ossl_pkcs7_ctx_get0_propq(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @pkcs7_get1_data(ptr noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9
  %i.g = tail call i32 @OBJ_obj2nid(ptr noundef %i.f) #4
  %i.h = icmp eq i32 %i.g, 21
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %PKCS7_get_octet_string.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !9
  %i.k = tail call i32 @OBJ_obj2nid(ptr noundef %i.j) #4
  %i.l = add i32 %i.k, -21
  %switch.i.i = icmp ult i32 %i.l, 6
  br i1 %switch.i.i, label %PKCS7_get_octet_string.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17   ; 3 uses
  %.not8.i = icmp eq ptr %i.n, null
  br i1 %.not8.i, label %PKCS7_get_octet_string.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr %i.n, align 8, !tbaa !18
  %i.p = icmp eq i32 %i.o, 4
  br i1 %i.p, label %bb.f, label %PKCS7_get_octet_string.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  br label %PKCS7_get_octet_string.exit

PKCS7_get_octet_string.exit:                      ; preds = %bb.b, %bb.f
  %.0.i.in = phi ptr [ %i.i, %bb.b ], [ %i.q, %bb.f ]
  %.0.i = load ptr, ptr %.0.i.in, align 8, !tbaa !17 ; 3 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %PKCS7_get_octet_string.exit.thread, label %bb.g

bb.g:                                             ; preds = %PKCS7_get_octet_string.exit
  %i.r = tail call ptr @ASN1_OCTET_STRING_dup(ptr noundef nonnull %.0.i) #4 ; 4 uses
  %.not35 = icmp eq ptr %i.r, null
  br i1 %.not35, label %bb.s, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !68
  %i.u = and i64 %i.t, 16
  %.not36 = icmp eq i64 %i.u, 0
  br i1 %.not36, label %bb.s, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @ASN1_STRING_set0(ptr noundef nonnull %i.r, ptr noundef null, i32 noundef 0) #4
  br label %bb.s

PKCS7_get_octet_string.exit.thread:               ; preds = %bb.c, %bb.d, %bb.e, %PKCS7_get_octet_string.exit
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !9
  %i.w = tail call i32 @OBJ_obj2nid(ptr noundef %i.v) #4
  %i.x = add i32 %i.w, -21
  %switch.i = icmp ult i32 %i.x, 6
  br i1 %switch.i, label %bb.s, label %bb.j

bb.j:                                             ; preds = %PKCS7_get_octet_string.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !17   ; 3 uses
  %.not31 = icmp eq ptr %i.z, null
  br i1 %.not31, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !18
  %i.ab = icmp eq i32 %i.aa, 16
  br i1 %i.ab, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !17 ; 3 uses
  %.not32 = icmp eq ptr %i.ad, null
  br i1 %.not32, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !65
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !67
  store ptr %i.ah, ptr %i.a, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  %i.ai = tail call ptr @ASN1_OCTET_STRING_new() #4 ; 4 uses
  %.not34 = icmp eq ptr %i.ai, null
  br i1 %.not34, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = load ptr, ptr %i.y, align 8, !tbaa !17
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !17
  %i.am = load i32, ptr %i.al, align 8, !tbaa !65
  %i.an = sext i32 %i.am to i64
  %i.ao = call i32 @ASN1_get_object(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 noundef %i.an) #4
  %i.ap = icmp ne i32 %i.ao, 32
  %i.aq = load i32, ptr %i.c, align 4
  %i.ar = icmp ne i32 %i.aq, 16
  %or.cond = select i1 %i.ap, i1 true, i1 %i.ar
  br i1 %or.cond, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.at = load i64, ptr %i.b, align 8, !tbaa !62
  %i.au = trunc i64 %i.at to i32
  %i.av = call i32 @ASN1_OCTET_STRING_set(ptr noundef nonnull %i.ai, ptr noundef %i.as, i32 noundef %i.au) #4
  %.not33 = icmp eq i32 %i.av, 0
  br i1 %.not33, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @ASN1_OCTET_STRING_free(ptr noundef nonnull %i.ai) #4
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.n
  %spec.select = phi ptr [ null, %bb.n ], [ null, %bb.q ], [ %i.ai, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %PKCS7_get_octet_string.exit.thread, %bb.j, %bb.k, %bb.l, %bb.m, %bb.g, %bb.h, %bb.i
  %.1 = phi ptr [ %spec.select, %bb.r ], [ null, %bb.g ], [ %i.r, %bb.i ], [ %i.r, %bb.h ], [ null, %bb.m ], [ null, %bb.l ], [ null, %bb.k ], [ null, %bb.j ], [ null, %PKCS7_get_octet_string.exit.thread ]
  ret ptr %.1
}

declare i32 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @pkcs7_bio_add_digest(ptr noundef nonnull captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [50 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = tail call ptr @BIO_f_md() #4
  %i.c = tail call ptr @BIO_new(ptr noundef %i.b) #4 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 103, ptr noundef nonnull @__func__.pkcs7_bio_add_digest) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 33, i32 noundef 524320, ptr noundef null) #4
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !51
  %i.f = call i32 @OBJ_obj2txt(ptr noundef nonnull %i.a, i32 noundef 50, ptr noundef %i.e, i32 noundef 0) #4 ; 0 uses
  %i.g = call i32 @ERR_set_mark() #4              ; 0 uses
  %i.h = call ptr @ossl_pkcs7_ctx_get0_libctx(ptr noundef %2) #4
  %i.i = call ptr @ossl_pkcs7_ctx_get0_propq(ptr noundef %2) #4
  %i.j = call ptr @EVP_MD_fetch(ptr noundef %i.h, ptr noundef nonnull %i.a, ptr noundef %i.i) #4 ; 4 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.k = call ptr @EVP_get_digestbyname(ptr noundef nonnull %i.a) #4 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.m = call i32 @ERR_clear_last_mark() #4       ; 0 uses
  call void @ERR_new() #4
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 119, ptr noundef nonnull @__func__.pkcs7_bio_add_digest) #4
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 33, i32 noundef 109, ptr noundef null) #4
  br label %bb.k

.thread:                                          ; preds = %bb.c, %bb.d
  %.022 = phi ptr [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  %i.n = call i32 @ERR_pop_to_mark() #4           ; 0 uses
  %i.o = call i64 @BIO_ctrl(ptr noundef nonnull %i.c, i32 noundef 111, i64 noundef 0, ptr noundef nonnull %.022) #4
  %i.p = icmp slt i64 %i.o, 1
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread
  call void @ERR_new() #4
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 125, ptr noundef nonnull @__func__.pkcs7_bio_add_digest) #4
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 33, i32 noundef 524320, ptr noundef null) #4
  call void @EVP_MD_free(ptr noundef %i.j) #4
  br label %bb.k

bb.g:                                             ; preds = %.thread
  call void @EVP_MD_free(ptr noundef %i.j) #4
  %i.q = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.c, ptr %0, align 8, !tbaa !20
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.s = call ptr @BIO_push(ptr noundef nonnull %i.q, ptr noundef nonnull %i.c) #4
  %.not20 = icmp eq ptr %i.s, null
  br i1 %.not20, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @ERR_new() #4
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 133, ptr noundef nonnull @__func__.pkcs7_bio_add_digest) #4
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 33, i32 noundef 524320, ptr noundef null) #4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f, %bb.e, %bb.b
  %i.t = call i32 @BIO_free(ptr noundef %i.c) #4  ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.k
  %.016 = phi i32 [ 0, %bb.k ], [ 1, %bb.i ], [ 1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.016
}

declare ptr @OPENSSL_sk_value(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BIO_new(ptr noundef) local_unnamed_addr #2

declare ptr @BIO_f_cipher() local_unnamed_addr #2

declare i64 @BIO_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_get_key_length(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_get_iv_length(ptr noundef) local_unnamed_addr #2

declare ptr @OBJ_nid2obj(i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_get_type(ptr noundef) local_unnamed_addr #2

declare i32 @RAND_bytes_ex(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ERR_set_mark() local_unnamed_addr #2

declare ptr @EVP_CIPHER_fetch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @EVP_CIPHER_get0_name(ptr noundef) local_unnamed_addr #2

declare i32 @ERR_pop_to_mark() local_unnamed_addr #2

declare i32 @EVP_CipherInit_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @EVP_CIPHER_free(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_rand_key(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ASN1_TYPE_new() local_unnamed_addr #2

declare i32 @EVP_CIPHER_param_to_asn1(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ASN1_TYPE_free(ptr noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @BIO_push(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @PKCS7_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BIO_s_null() local_unnamed_addr #2

declare ptr @BIO_s_mem() local_unnamed_addr #2

declare i32 @BIO_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BIO_free_all(ptr noundef) local_unnamed_addr #2

declare void @ASN1_OCTET_STRING_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @PKCS7_dataDecode(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 12 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %i.d = alloca [50 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store ptr null, ptr %i.a, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store ptr null, ptr %i.b, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 0, ptr %i.c, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 460, ptr noundef nonnull @__func__.PKCS7_dataDecode) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 33, i32 noundef 143, ptr noundef null) #4
  br label %bb.bd

bb.c:                                             ; preds = %bb.a
  %i.f = tail call ptr @ossl_pkcs7_get0_ctx(ptr noundef nonnull %0) #4 ; 4 uses
  %i.g = tail call ptr @ossl_pkcs7_ctx_get0_libctx(ptr noundef %i.f) #4 ; 3 uses
  %i.h = tail call ptr @ossl_pkcs7_ctx_get0_propq(ptr noundef %i.f) #4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 469, ptr noundef nonnull @__func__.PKCS7_dataDecode) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 33, i32 noundef 122, ptr noundef null) #4
  br label %bb.bd

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !9
  %i.n = tail call i32 @OBJ_obj2nid(ptr noundef %i.m) #4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.o, align 8, !tbaa !22
  switch i32 %i.n, label %bb.v [
    i32 22, label %bb.f
    i32 24, label %bb.p
    i32 23, label %bb.s
  ]

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !70   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !9
  %i.u = tail call i32 @OBJ_obj2nid(ptr noundef %i.t) #4
  %i.v = icmp eq i32 %i.u, 21
end_hunk_0
