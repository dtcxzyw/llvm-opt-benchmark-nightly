Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/p12_mutl?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@pkcs12_gen_mac:bb.a
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %.thread116, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  %i.ck = call ptr @OBJ_nid2obj(i32 noundef %6) #4
  %i.cl = call i32 @OBJ_obj2txt(ptr noundef nonnull %i.g, i32 noundef 128, ptr noundef %i.ck, i32 noundef 0) #4
  %i.cm = icmp slt i32 %i.cl, 0
  br i1 %i.cm, label %.thread, label %bb.ag

.thread:                                          ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  br label %.thread133

bb.ag:                                            ; preds = %bb.af
  %i.cn = call ptr @EVP_MD_fetch(ptr noundef %i.s, ptr noundef nonnull %i.g, ptr noundef %i.u) #4 ; 4 uses
  %.not138.not = icmp eq ptr %i.cn, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  br i1 %.not138.not, label %.thread133, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.ba, label %bb.al, label %bb.ai

.thread116:                                       ; preds = %bb.ae
  br i1 %i.ba, label %.thread129, label %.thread123

.thread123:                                       ; preds = %.thread116
  %i.co = call i32 %7(ptr noundef %1, i32 noundef %2, ptr noundef %i.aa, i32 noundef %i.ab, i32 noundef 3, i32 noundef %.091, i32 noundef %i.av, ptr noundef nonnull %i.b, ptr noundef nonnull %i.at, ptr noundef %i.s, ptr noundef %i.u) #4, !callees !49
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cp = call i32 %7(ptr noundef %1, i32 noundef %2, ptr noundef %i.aa, i32 noundef %i.ab, i32 noundef 3, i32 noundef %.091, i32 noundef %i.av, ptr noundef nonnull %i.b, ptr noundef nonnull %i.cn, ptr noundef %i.s, ptr noundef %i.u) #4, !callees !49
  call void @EVP_MD_free(ptr noundef nonnull %i.cn) #4
  br label %bb.aj

bb.aj:                                            ; preds = %.thread123, %bb.ai
  %i.cq = phi i32 [ %i.co, %.thread123 ], [ %i.cp, %bb.ai ]
  %.not107 = icmp eq i32 %i.cq, 1
  br i1 %.not107, label %.thread136, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @ERR_new() #4
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 276, ptr noundef nonnull @__func__.pkcs12_gen_mac) #4
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 35, i32 noundef 107, ptr noundef null) #4
  br label %.thread133

bb.al:                                            ; preds = %bb.ah
  call void @EVP_MD_free(ptr noundef nonnull %i.cn) #4
  br label %.thread129

.thread129:                                       ; preds = %.thread116, %bb.al
  %i.cr = call i32 @PKCS12_key_gen_utf8_ex(ptr noundef %1, i32 noundef %2, ptr noundef %i.aa, i32 noundef %i.ab, i32 noundef 3, i32 noundef %.091, i32 noundef %i.av, ptr noundef nonnull %i.b, ptr noundef nonnull %i.at, ptr noundef %i.s, ptr noundef %i.u) #4
  %.not105 = icmp eq i32 %i.cr, 0
  br i1 %.not105, label %bb.am, label %.thread136

bb.am:                                            ; preds = %.thread129
  call void @ERR_new() #4
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 285, ptr noundef nonnull @__func__.pkcs12_gen_mac) #4
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 35, i32 noundef 107, ptr noundef null) #4
  br label %.thread133

.thread136:                                       ; preds = %bb.aj, %.thread129, %bb.ac, %PBMAC1_PBKDF2_HMAC.exit
  %.090 = phi i32 [ %.029.i, %PBMAC1_PBKDF2_HMAC.exit ], [ 32, %bb.ac ], [ %i.av, %bb.aj ], [ %i.av, %.thread129 ]
  %i.cs = zext nneg i32 %.090 to i64
  %i.ct = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !36 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !39
  %i.cy = load i32, ptr %i.cv, align 8, !tbaa !41
  %i.cz = sext i32 %i.cy to i64
  %i.da = call ptr @EVP_Q_mac(ptr noundef %i.s, ptr noundef nonnull @.str.2, ptr noundef %i.u, ptr noundef nonnull %i.c, ptr noundef null, ptr noundef nonnull %i.b, i64 noundef %i.cs, ptr noundef %i.cx, i64 noundef %i.cz, ptr noundef %3, i64 noundef %i.ay, ptr noundef nonnull %i.f) #4
  %i.db = icmp eq ptr %i.da, null
  %i.dc = load i64, ptr %i.f, align 8             ; 2 uses
  %i.dd = icmp ugt i64 %i.dc, 4294967295
  %or.cond8 = select i1 %i.db, i1 true, i1 %i.dd
  br i1 %or.cond8, label %.thread133, label %bb.an

bb.an:                                            ; preds = %.thread136
  %i.de = trunc nuw i64 %i.dc to i32
  store i32 %i.de, ptr %4, align 4, !tbaa !50
  br label %.thread133

.thread133:                                       ; preds = %bb.ag, %bb.am, %bb.ak, %.thread, %.thread136, %PBMAC1_PBKDF2_HMAC.exit, %bb.l, %bb.an, %bb.ad
  %.092 = phi i32 [ 0, %bb.l ], [ 0, %PBMAC1_PBKDF2_HMAC.exit ], [ 0, %.thread136 ], [ 1, %bb.an ], [ 0, %bb.ad ], [ 0, %bb.am ], [ 0, %.thread ], [ 0, %bb.ak ], [ 0, %bb.ag ]
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 64) #4
  call void @EVP_MD_free(ptr noundef nonnull %i.at) #4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.i, %bb.h, %.thread133, %bb.k, %bb.d, %bb.b
  %.093 = phi i32 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.k ], [ %.092, %.thread133 ], [ 0, %bb.i ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  ret i32 %.093
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @PKCS12_verify_mac(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8    ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 321, ptr noundef nonnull @__func__.PKCS12_verify_mac) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 35, i32 noundef 108, ptr noundef null) #4
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !14
  call void @X509_SIG_get0(ptr noundef %i.j, ptr noundef nonnull %i.d, ptr noundef null) #4
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !20
  call void @X509_ALGOR_get0(ptr noundef nonnull %i.e, ptr noundef null, ptr noundef null, ptr noundef %i.k) #4
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.m = call i32 @OBJ_obj2nid(ptr noundef %i.l) #4
  %i.n = icmp eq i32 %i.m, 162
  br i1 %i.n, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  %i.o = call ptr @PBMAC1PARAM_it() #4
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !22
  %i.s = call ptr @ASN1_TYPE_unpack_sequence(ptr noundef %i.o, ptr noundef %i.r) #4 ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @ERR_new() #4
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 334, ptr noundef nonnull @__func__.PKCS12_verify_mac) #4
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 35, i32 noundef 524556, ptr noundef null) #4
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !51
  call void @X509_ALGOR_get0(ptr noundef nonnull %i.f, ptr noundef null, ptr noundef null, ptr noundef %i.v) #4
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.x = call i32 @OBJ_obj2nid(ptr noundef %i.w) #4
  %i.y = call i32 @ossl_hmac2mdnid(i32 noundef %i.x) #4
  %i.z = call fastcc i32 @pkcs12_gen_mac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %i.y, i32 noundef 0, ptr noundef null)
  %.not18 = icmp eq i32 %i.z, 0
  br i1 %.not18, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @ERR_new() #4
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 341, ptr noundef nonnull @__func__.PKCS12_verify_mac) #4
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 35, i32 noundef 109, ptr noundef null) #4
  call void @PBMAC1PARAM_free(ptr noundef nonnull %i.s) #4
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  call void @PBMAC1PARAM_free(ptr noundef nonnull %i.s) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  br label %bb.k

bb.i:                                             ; preds = %bb.c
  %i.aa = call fastcc i32 @pkcs12_gen_mac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 0, ptr noundef null)
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @ERR_new() #4
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 348, ptr noundef nonnull @__func__.PKCS12_verify_mac) #4
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 35, i32 noundef 109, ptr noundef null) #4
  br label %bb.m

bb.k:                                             ; preds = %bb.h, %bb.i
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !14
  call void @X509_SIG_get0(ptr noundef %i.ac, ptr noundef null, ptr noundef nonnull %i.c) #4
  %i.ad = load i32, ptr %i.b, align 4, !tbaa !50  ; 2 uses
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.af = call i32 @ASN1_STRING_length(ptr noundef %i.ae) #4
  %.not19 = icmp eq i32 %i.ad, %i.af
  br i1 %.not19, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.ah = call ptr @ASN1_STRING_get0_data(ptr noundef %i.ag) #4
  %i.ai = zext i32 %i.ad to i64
  %i.aj = call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.a, ptr noundef %i.ah, i64 noundef %i.ai) #4
  %.not20 = icmp eq i32 %i.aj, 0
  %spec.select = zext i1 %.not20 to i32
  br label %bb.m

.critedge:                                        ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %.critedge, %bb.j, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %.critedge ], [ %spec.select, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.1
}

declare i32 @ossl_hmac2mdnid(i32 noundef) local_unnamed_addr #2

declare i32 @ASN1_STRING_length(ptr noundef) local_unnamed_addr #2

declare i32 @CRYPTO_memcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @ASN1_STRING_get0_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @PKCS12_set_mac(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.d = icmp eq ptr %6, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @EVP_sha256() #4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.e, %bb.b ], [ %6, %bb.a ]
  %.not = icmp eq i32 %5, 0
  %spec.store.select = select i1 %.not, i32 2048, i32 %5
  %i.f = tail call i32 @EVP_MD_get_type(ptr noundef %.0) #4
  %i.g = tail call fastcc range(i32 0, 2) i32 @pkcs12_setup_mac(ptr noundef %0, i32 noundef %spec.store.select, ptr noundef readonly %3, i32 noundef %4, i32 noundef %i.f)
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 375, ptr noundef nonnull @__func__.PKCS12_set_mac) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 35, i32 noundef 110, ptr noundef null) #4
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.i = call fastcc i32 @pkcs12_gen_mac(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 0, ptr noundef null)
  %.not13 = icmp eq i32 %i.i, 0
  br i1 %.not13, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @ERR_new() #4
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 382, ptr noundef nonnull @__func__.PKCS12_set_mac) #4
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 35, i32 noundef 109, ptr noundef null) #4
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14
  call void @X509_SIG_getm(ptr noundef %i.l, ptr noundef null, ptr noundef nonnull %i.c) #4
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.n = load i32, ptr %i.b, align 4, !tbaa !50
  %i.o = call i32 @ASN1_OCTET_STRING_set(ptr noundef %i.m, ptr noundef nonnull %i.a, i32 noundef %i.n) #4
  %.not14 = icmp eq i32 %i.o, 0
  br i1 %.not14, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @ERR_new() #4
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 387, ptr noundef nonnull @__func__.PKCS12_set_mac) #4
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 35, i32 noundef 111, ptr noundef null) #4
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f, %bb.d
  %.011 = phi i32 [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.h ], [ 1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.011
}

declare ptr @EVP_sha256() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @PKCS12_setup_mac(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @EVP_MD_get_type(ptr noundef %4) #4
  %i.b = tail call fastcc i32 @pkcs12_setup_mac(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %i.a)
  ret i32 %i.b
}

declare void @X509_SIG_getm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ASN1_OCTET_STRING_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @pkcs12_setup_mac(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  tail call void @PKCS12_MAC_DATA_free(ptr noundef %i.c) #4
  store ptr null, ptr %i.b, align 8, !tbaa !8
  %i.d = tail call ptr @PKCS12_MAC_DATA_new() #4  ; 2 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i32 %1, 1
  br i1 %i.f, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @ASN1_INTEGER_new() #4     ; 3 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.g, ptr %i.i, align 8, !tbaa !19
  %i.j = icmp eq ptr %i.g, null
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 416, ptr noundef nonnull @__func__.pkcs12_setup_mac) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 35, i32 noundef 524301, ptr noundef null) #4
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %1 to i64
  %i.l = tail call i32 @ASN1_INTEGER_set(ptr noundef nonnull %i.g, i64 noundef %i.k) #4
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 420, ptr noundef nonnull @__func__.pkcs12_setup_mac) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 35, i32 noundef 524301, ptr noundef null) #4
  br label %bb.o

bb.g:                                             ; preds = %bb.e, %bb.b
  %i.m = icmp eq i32 %3, 0
  br i1 %i.m, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = icmp slt i32 %3, 0
  br i1 %i.n, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.022 = phi i32 [ %3, %bb.h ], [ 16, %bb.g ]    ; 2 uses
  %i.o = zext nneg i32 %.022 to i64               ; 3 uses
  %i.p = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.o, ptr noundef nonnull @.str, i32 noundef 428) #4 ; 4 uses
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !17   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.p, ptr %i.t, align 8, !tbaa !39
  %i.u = icmp eq ptr %i.p, null
  br i1 %i.u, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %.022, ptr %i.s, align 8, !tbaa !41
  %i.v = icmp eq ptr %2, null
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !29
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !37
  %i.aa = tail call i32 @RAND_bytes_ex(ptr noundef %i.z, ptr noundef nonnull %i.p, i64 noundef %i.o, i32 noundef 0) #4
  %i.ab = icmp slt i32 %i.aa, 1
  br i1 %i.ab, label %bb.o, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 1 %2, i64 %i.o, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.l
  %i.ac = phi ptr [ %.pre, %._crit_edge ], [ %i.q, %bb.l ]
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !14
  call void @X509_SIG_getm(ptr noundef %i.ad, ptr noundef nonnull %i.a, ptr noundef null) #4
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.af = call ptr @OBJ_nid2obj(i32 noundef %4) #4
  %i.ag = call i32 @X509_ALGOR_set0(ptr noundef %i.ae, ptr noundef %i.af, i32 noundef 5, ptr noundef null) #4
  %.not26 = icmp eq i32 %i.ag, 0
  br i1 %.not26, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @ERR_new() #4
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 441, ptr noundef nonnull @__func__.pkcs12_setup_mac) #4
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 35, i32 noundef 524301, ptr noundef null) #4
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.k, %bb.i, %bb.h, %bb.a, %bb.n, %bb.f, %bb.d
end_hunk_0
