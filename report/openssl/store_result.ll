Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/store_result?download=true
inline.NumInlined: 18
inline.NumDeleted: 15
begin_hunk_0_@ossl_store_handle_load_result:bb.a
bb.cb:                                            ; preds = %bb.ca
  store ptr null, ptr %i.d, align 8, !tbaa !48
  %i.hp = call i32 @OPENSSL_sk_push(ptr noundef nonnull %i.hm, ptr noundef nonnull %i.ho) #5
  %.not62.i = icmp eq i32 %i.hp, 0
  br i1 %.not62.i, label %.critedge.i101, label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bz
  %i.hq = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not8.i = icmp eq ptr %i.hq, null
  br i1 %.not8.i, label %.lr.ph.i.preheader, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.hr = call ptr @OSSL_STORE_INFO_new_CERT(ptr noundef nonnull %i.hq) #5 ; 3 uses
  %.not63.i = icmp eq ptr %i.hr, null
  br i1 %.not63.i, label %.critedge.i101, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  store ptr null, ptr %i.e, align 8, !tbaa !63
  %i.hs = call i32 @OPENSSL_sk_push(ptr noundef nonnull %i.hm, ptr noundef nonnull %i.hr) #5
  %.not64.i = icmp eq i32 %i.hs, 0
  br i1 %.not64.i, label %.critedge.i101, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.ce, %bb.cc
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.ch
  %i.ht = load ptr, ptr %i.f, align 8, !tbaa !65
  %i.hu = call i32 @OPENSSL_sk_num(ptr noundef %i.ht) #5
  %i.hv = icmp sgt i32 %i.hu, 0                   ; 5 uses
  br i1 %i.hv, label %bb.cf, label %.critedge.i101

bb.cf:                                            ; preds = %.lr.ph.i
  %i.hw = load ptr, ptr %i.f, align 8, !tbaa !65
  %i.hx = call ptr @OPENSSL_sk_value(ptr noundef %i.hw, i32 noundef 0) #5
  %i.hy = call ptr @OSSL_STORE_INFO_new_CERT(ptr noundef %i.hx) #5 ; 4 uses
  %.not67.i = icmp eq ptr %i.hy, null
  br i1 %.not67.i, label %.critedge.i101, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.hz = load ptr, ptr %i.f, align 8, !tbaa !65
  %i.ia = call ptr @OPENSSL_sk_shift(ptr noundef %i.hz) #5
  %.not68.i = icmp eq ptr %i.ia, null
  br i1 %.not68.i, label %.critedge.i101, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ib = call i32 @OPENSSL_sk_push(ptr noundef nonnull %i.hm, ptr noundef nonnull %i.hy) #5
  %.not69.i = icmp eq i32 %i.ib, 0
  br i1 %.not69.i, label %.critedge.i101, label %.lr.ph.i, !llvm.loop !11

.critedge.i101:                                   ; preds = %bb.ch, %bb.cg, %bb.cf, %.lr.ph.i, %bb.ce, %bb.cd, %bb.cb, %bb.ca, %bb.by
  %.not66.i = phi i1 [ false, %bb.by ], [ true, %bb.ce ], [ true, %bb.cd ], [ true, %bb.ca ], [ true, %bb.cb ], [ %i.hv, %.lr.ph.i ], [ %i.hv, %bb.cf ], [ %i.hv, %bb.cg ], [ %i.hv, %bb.ch ] ; 2 uses
  %.138.i = phi ptr [ null, %bb.by ], [ null, %bb.ce ], [ null, %bb.cd ], [ null, %bb.ca ], [ %i.ho, %bb.cb ], [ null, %.lr.ph.i ], [ null, %bb.cf ], [ null, %bb.cg ], [ null, %bb.ch ]
  %.136.i = phi ptr [ null, %bb.by ], [ %i.hr, %bb.ce ], [ null, %bb.cd ], [ null, %bb.ca ], [ null, %bb.cb ], [ null, %.lr.ph.i ], [ null, %bb.cf ], [ null, %bb.cg ], [ null, %bb.ch ]
  %.2.i = phi ptr [ null, %bb.by ], [ null, %bb.ce ], [ null, %bb.cd ], [ null, %bb.ca ], [ null, %bb.cb ], [ %i.hy, %bb.ch ], [ %i.hy, %bb.cg ], [ null, %bb.cf ], [ null, %.lr.ph.i ]
  %i.ic = load ptr, ptr %i.d, align 8, !tbaa !48
  call void @EVP_PKEY_free(ptr noundef %i.ic) #5
  %i.id = load ptr, ptr %i.e, align 8, !tbaa !63
  call void @X509_free(ptr noundef %i.id) #5
  %i.ie = load ptr, ptr %i.f, align 8, !tbaa !65
  call void @OSSL_STACK_OF_X509_free(ptr noundef %i.ie) #5
  call void @OSSL_STORE_INFO_free(ptr noundef %.138.i) #5
  call void @OSSL_STORE_INFO_free(ptr noundef %.136.i) #5
  call void @OSSL_STORE_INFO_free(ptr noundef %.2.i) #5
  br i1 %.not66.i, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %.critedge.i101
  %i.if = call ptr @OPENSSL_sk_set_thunks(ptr noundef %i.hm, ptr noundef nonnull @sk_OSSL_STORE_INFO_freefunc_thunk) #5
  call void @OPENSSL_sk_pop_free(ptr noundef %i.if, ptr noundef nonnull @OSSL_STORE_INFO_free) #5
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %.critedge.i101
  %.039.i = phi ptr [ %i.hm, %.critedge.i101 ], [ null, %bb.ci ]
  %i.ig = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store ptr %.039.i, ptr %i.ig, align 8, !tbaa !67
  br label %try_pkcs12.exit

try_pkcs12.exit:                                  ; preds = %bb.cj, %bb.bx, %.thread.i102
  %.5.i = phi i1 [ %.not66.i, %bb.cj ], [ true, %bb.bx ], [ true, %.thread.i102 ]
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 1025) #5
  call void @PKCS12_free(ptr noundef nonnull %i.gx) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  %i.ih = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !67
  %i.ij = call ptr @OPENSSL_sk_shift(ptr noundef %i.ii) #5
  store ptr %i.ij, ptr %1, align 8, !tbaa !26
  br i1 %.5.i, label %try_name.exit.thread, label %try_pkcs12.exit.thread

try_pkcs12.exit.thread.critedge:                  ; preds = %bb.bo
  %i.ik = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !67
  %i.im = call ptr @OPENSSL_sk_shift(ptr noundef %i.il) #5
  store ptr %i.im, ptr %1, align 8, !tbaa !26
  br label %try_pkcs12.exit.thread

try_pkcs12.exit.thread:                           ; preds = %try_pkcs12.exit.thread.critedge, %try_pkcs12.exit, %try_crl.exit
  %i.in = call i32 @ERR_pop_to_mark() #5          ; 0 uses
  %i.io = call i32 @ERR_set_mark() #5             ; 0 uses
  %i.ip = load ptr, ptr %1, align 8, !tbaa !26
  %i.iq = icmp eq ptr %i.ip, null
  br i1 %i.iq, label %bb.ck, label %bb.cs

bb.ck:                                            ; preds = %try_pkcs12.exit.thread
  %i.ir = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !32 ; 2 uses
  %i.it = icmp eq ptr %i.is, null
  %spec.select.i = select i1 %i.it, ptr @.str.17, ptr %i.is ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store ptr null, ptr %i.a, align 8, !tbaa !49
  %i.iu = load i32, ptr %6, align 8, !tbaa !30
  %.not.i103 = icmp eq i32 %i.iu, 5
  br i1 %.not.i103, label %bb.cl, label %try_skey.exit.thread

bb.cl:                                            ; preds = %bb.ck
  %i.iv = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !45 ; 3 uses
  %.not32.i = icmp eq ptr %i.iw, null
  br i1 %.not32.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ix = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !50
  store ptr %i.iw, ptr %i.a, align 8, !tbaa !49
  %i.iz = call ptr @EVP_SKEY_import_raw_key(ptr noundef %i.w, ptr noundef nonnull %spec.select.i, ptr noundef nonnull %i.iw, i64 noundef %i.iy, ptr noundef %i.y) #5
  br label %bb.cq

bb.cn:                                            ; preds = %bb.cl
  %i.ja = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !31
  %.not33.i = icmp eq ptr %i.jb, null
  br i1 %.not33.i, label %thread-pre-split.i106.thread, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.jc = call ptr @evp_skeymgmt_fetch_from_prov(ptr noundef %i.v, ptr noundef nonnull %spec.select.i, ptr noundef %i.y) #5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %.not34.i = icmp eq ptr %i.jc, null
  br i1 %.not34.i, label %.critedge.i108, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.jd = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !33
  %i.jf = load ptr, ptr %i.ja, align 8, !tbaa !31
  store ptr %i.jf, ptr %i.a, align 8, !tbaa !49
  call void @OSSL_PARAM_construct_octet_ptr(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %2, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a, i64 noundef %i.je) #5
  %i.jg = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %3) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.jg, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !69
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %i.jh = call ptr @EVP_SKEY_import_SKEYMGMT(ptr noundef %i.w, ptr noundef nonnull %i.jc, i32 noundef 3, ptr noundef nonnull %2) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.cm
  %.1.i104 = phi ptr [ %i.iz, %bb.cm ], [ %i.jh, %bb.cp ] ; 3 uses
  %.not35.i = icmp eq ptr %.1.i104, null
  br i1 %.not35.i, label %.thread-pre-split.i106_crit_edge, label %bb.cr

.thread-pre-split.i106_crit_edge:                 ; preds = %bb.cq
  %.pr.i107.pre = load ptr, ptr %1, align 8, !tbaa !26
  br label %thread-pre-split.i106

bb.cr:                                            ; preds = %bb.cq
  %i.ji = call ptr @OSSL_STORE_INFO_new_SKEY(ptr noundef nonnull %.1.i104) #5 ; 2 uses
  store ptr %i.ji, ptr %1, align 8, !tbaa !26
  br label %thread-pre-split.i106

thread-pre-split.i106:                            ; preds = %.thread-pre-split.i106_crit_edge, %bb.cr
  %i.jj = phi ptr [ %i.ji, %bb.cr ], [ %.pr.i107.pre, %.thread-pre-split.i106_crit_edge ]
  %i.jk = icmp eq ptr %i.jj, null
  br i1 %i.jk, label %thread-pre-split.i106.thread, label %try_skey.exit

thread-pre-split.i106.thread:                     ; preds = %bb.cn, %thread-pre-split.i106
  %.138.i105168 = phi ptr [ %.1.i104, %thread-pre-split.i106 ], [ null, %bb.cn ]
  call void @EVP_SKEY_free(ptr noundef %.138.i105168) #5
  br label %try_skey.exit

.critedge.i108:                                   ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  br label %try_skey.exit.thread

try_skey.exit.thread:                             ; preds = %.critedge.i108, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %try_name.exit.thread

try_skey.exit:                                    ; preds = %thread-pre-split.i106, %thread-pre-split.i106.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.cs

bb.cs:                                            ; preds = %try_skey.exit, %try_pkcs12.exit.thread
  %i.jl = call i32 @ERR_pop_to_mark() #5          ; 0 uses
  %i.jm = load ptr, ptr %1, align 8, !tbaa !26
  %i.jn = icmp eq ptr %i.jm, null
  br i1 %i.jn, label %bb.ct, label %bb.cy

bb.ct:                                            ; preds = %bb.cs
  %i.jo = call i32 @OSSL_PROVIDER_available(ptr noundef %i.w, ptr noundef nonnull @.str.8) #5
  %.not89 = icmp eq i32 %i.jo, 0                  ; 2 uses
  %.not90 = icmp eq ptr %i.v, null
  call void @ERR_new() #5
  br i1 %.not90, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %spec.select = select i1 %.not89, ptr @.str.9, ptr @.str.7
  call void @ERR_set_debug(ptr noundef nonnull @.str.10, i32 noundef 166, ptr noundef nonnull @__func__.ossl_store_handle_load_result) #5
  %i.jp = call ptr @OSSL_PROVIDER_get0_name(ptr noundef nonnull %i.v) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 44, i32 noundef 524556, ptr noundef nonnull @.str.11, ptr noundef %i.jp, ptr noundef nonnull %spec.select) #5
  br label %bb.cy

bb.cv:                                            ; preds = %bb.ct
  br i1 %.not89, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  call void @ERR_set_debug(ptr noundef nonnull @.str.10, i32 noundef 169, ptr noundef nonnull @__func__.ossl_store_handle_load_result) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 44, i32 noundef 524556, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.9) #5
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cv
  call void @ERR_set_debug(ptr noundef nonnull @.str.10, i32 noundef 171, ptr noundef nonnull @__func__.ossl_store_handle_load_result) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 44, i32 noundef 524556, ptr noundef null) #5
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cu, %bb.cx, %bb.cw, %bb.cs
  %i.jq = load ptr, ptr %1, align 8, !tbaa !26
  %i.jr = icmp ne ptr %i.jq, null
  %i.js = zext i1 %i.jr to i32
  br label %bb.cz

try_name.exit.thread:                             ; preds = %bb.z, %try_key_ref.exit.thread56.i, %try_key_ref.exit.i, %bb.q, %bb.v, %try_skey.exit.thread, %try_cert.exit, %try_pkcs12.exit, %try_key.exit
  %i.jt = call i32 @ERR_clear_last_mark() #5      ; 0 uses
  br label %bb.cz

bb.cz:                                            ; preds = %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.d, %bb.b, %try_name.exit.thread, %bb.cy
  %.061 = phi i32 [ %i.js, %bb.cy ], [ 0, %try_name.exit.thread ], [ 0, %bb.m ], [ 0, %bb.k ], [ 0, %bb.i ], [ 0, %bb.g ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  ret i32 %.061
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @OSSL_STORE_LOADER_get0_provider(ptr noundef) local_unnamed_addr #2

declare ptr @ossl_provider_libctx(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare ptr @OSSL_PARAM_locate_const(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OSSL_PARAM_get_int(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OSSL_PARAM_get_utf8_string_ptr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OSSL_PARAM_get_octet_string_ptr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ERR_set_mark() local_unnamed_addr #2

declare i32 @ERR_pop_to_mark() local_unnamed_addr #2

declare i32 @OSSL_PROVIDER_available(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @OSSL_PROVIDER_get0_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @ERR_clear_last_mark() local_unnamed_addr #2

declare ptr @CRYPTO_strdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @OSSL_STORE_INFO_new_NAME(ptr noundef) local_unnamed_addr #2

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OSSL_STORE_INFO_set0_NAME_description(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ossl_pw_passphrase_callback_dec(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @evp_keymgmt_util_has(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @OSSL_STORE_INFO_new_PKEY(ptr noundef) local_unnamed_addr #2

declare ptr @OSSL_STORE_INFO_new_PUBKEY(ptr noundef) local_unnamed_addr #2

declare ptr @OSSL_STORE_INFO_new_PARAMS(ptr noundef) local_unnamed_addr #2

declare void @EVP_PKEY_free(ptr noundef) local_unnamed_addr #2

declare ptr @EVP_KEYMGMT_fetch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @EVP_KEYMGMT_get0_provider(ptr noundef) local_unnamed_addr #2

declare ptr @evp_keymgmt_load(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @evp_keymgmt_util_try_import(ptr noundef, ptr noundef) #2

declare void @EVP_KEYMGMT_free(ptr noundef) local_unnamed_addr #2

declare ptr @evp_keymgmt_fetch_from_prov(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @evp_keymgmt_util_make_pkey(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OSSL_DECODER_CTX_new_for_pkey(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OSSL_DECODER_CTX_set_passphrase_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OSSL_DECODER_from_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ossl_decoder_ctx_get_harderr(ptr noundef) local_unnamed_addr #2

declare void @OSSL_DECODER_CTX_free(ptr noundef) local_unnamed_addr #2

declare ptr @d2i_PUBKEY_ex(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @d2i_X509_SIG(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @X509_SIG_get0(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PKCS12_pbe_crypt(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @X509_SIG_free(ptr noundef) local_unnamed_addr #2

declare ptr @d2i_PKCS8_PRIV_KEY_INFO(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @EVP_PKCS82PKEY_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @PKCS8_PRIV_KEY_INFO_free(ptr noundef) local_unnamed_addr #2

declare ptr @X509_new_ex(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OPENSSL_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @d2i_X509_AUX(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @d2i_X509(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @X509_free(ptr noundef) local_unnamed_addr #2

declare ptr @OSSL_STORE_INFO_new_CERT(ptr noundef) local_unnamed_addr #2

declare ptr @d2i_X509_CRL(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ossl_x509_crl_set0_libctx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @X509_CRL_free(ptr noundef) local_unnamed_addr #2

declare ptr @OSSL_STORE_INFO_new_CRL(ptr noundef) local_unnamed_addr #2

declare ptr @d2i_PKCS12(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @PKCS12_mac_present(ptr noundef) local_unnamed_addr #2

declare i32 @PKCS12_verify_mac(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @ossl_pw_get_passphrase(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PKCS12_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_value(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_shift(ptr noundef) local_unnamed_addr #2

declare void @OSSL_STACK_OF_X509_free(ptr noundef) local_unnamed_addr #2

declare void @OSSL_STORE_INFO_free(ptr noundef) #2

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @PKCS12_free(ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_new_null() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @sk_OSSL_STORE_INFO_freefunc_thunk(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #4 {
bb.a:
  tail call void %0(ptr noundef %1) #5
  ret void
}

declare ptr @OPENSSL_sk_set_thunks(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @EVP_SKEY_import_raw_key(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @evp_skeymgmt_fetch_from_prov(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_octet_ptr(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_end(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8) local_unnamed_addr #2

declare ptr @EVP_SKEY_import_SKEYMGMT(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OSSL_STORE_INFO_new_SKEY(ptr noundef) local_unnamed_addr #2

declare void @EVP_SKEY_free(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
end_hunk_0
