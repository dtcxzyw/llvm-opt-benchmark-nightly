Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/ncrypto?download=true
inline.NumInlined: 3407
inline.NumDeleted: 1384
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN7ncrypto4hkdfERKNS_6DigestERKNS_6BufferIKhEES7_S7_m:bb.a

bb.u:                                             ; preds = %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  store ptr %i.al, ptr %0, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %5, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.ar, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 17, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.s
  call void @_ZN7ncrypto11DataPointerD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(24) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.q, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %_ZN7ncrypto16EVPKeyCtxPointer5resetEP15evp_pkey_ctx_st.exit.i

.thread33:                                        ; preds = %bb.g, %bb.h, %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZN7ncrypto16EVPKeyCtxPointer5resetEP15evp_pkey_ctx_st.exit.i

bb.x:                                             ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit

_ZN7ncrypto16EVPKeyCtxPointer5resetEP15evp_pkey_ctx_st.exit.i: ; preds = %.thread33, %.thread
  call void @EVP_PKEY_CTX_free(ptr noundef nonnull %i.o) #21
  br label %_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit

_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit:         ; preds = %bb.e, %_ZN7ncrypto16EVPKeyCtxPointer5resetEP15evp_pkey_ctx_st.exit.i, %bb.x
  call void @ERR_clear_error() #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7ncrypto16EVPKeyCtxPointer9NewFromIDEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.ncrypto::EVPKeyCtxPointer") align 8 captures(none) initializes((0, 8)) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call ptr @EVP_PKEY_CTX_new_id(i32 noundef %1, ptr noundef null) #21
  store ptr %i.a, ptr %0, align 8
  ret void
}

declare i32 @EVP_PKEY_CTX_set_hkdf_md(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_CTX_add1_hkdf_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @HMAC(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_CTX_set_hkdf_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_CTX_set1_hkdf_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN7ncrypto17checkScryptParamsEmmmm(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @EVP_PBE_scrypt(ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef null, i64 noundef 0) #21
  %i.b = icmp eq i32 %i.a, 1
  ret i1 %i.b
}

declare i32 @EVP_PBE_scrypt(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7ncrypto6scryptERKNS_6BufferIKcEERKNS0_IKhEEmmmmm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.ncrypto::DataPointer") align 8 captures(none) initializes((0, 17)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) local_unnamed_addr #0 {
bb.a:
  tail call void @ERR_clear_error() #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp ugt i64 %i.b, 2147483647
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp ugt i64 %i.e, 2147483647
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noalias ptr @CRYPTO_zalloc(i64 noundef %7, ptr noundef nonnull @.str, i32 noundef 142) #21, !noalias !149 ; 4 uses
  %.not23 = icmp eq ptr %i.g, null
  br i1 %.not23, label %.thread21, label %bb.e

.thread21:                                        ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %1, align 8
  %i.i = load i64, ptr %i.a, align 8
  %i.j = load ptr, ptr %2, align 8
  %i.k = load i64, ptr %i.d, align 8
  %i.l = tail call i32 @EVP_PBE_scrypt(ptr noundef %i.h, i64 noundef %i.i, ptr noundef %i.j, i64 noundef %i.k, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull %i.g, i64 noundef %7) #21
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.e
  store ptr %i.g, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %7, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.n, align 8
  br label %_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  tail call void @CRYPTO_clear_free(ptr noundef nonnull %i.g, i64 noundef %7, ptr noundef nonnull @.str, i32 noundef 226) #21
  br label %_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit

_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit:         ; preds = %bb.c, %.thread21, %.thread, %bb.f
  tail call void @ERR_clear_error() #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7ncrypto6pbkdf2ERKNS_6DigestERKNS_6BufferIKcEERKNS3_IKhEEjm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.ncrypto::DataPointer") align 8 captures(none) initializes((0, 17)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, i32 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  tail call void @ERR_clear_error() #21
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp ugt i64 %i.b, 2147483647
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = or i64 %i.e, %5
  %or.cond.not = icmp ult i64 %i.f, 2147483648
  br i1 %or.cond.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noalias ptr @CRYPTO_zalloc(i64 noundef %5, ptr noundef nonnull @.str, i32 noundef 142) #21, !noalias !152 ; 4 uses
  %.not24 = icmp eq ptr %i.g, null
  br i1 %.not24, label %.thread22, label %bb.e

.thread22:                                        ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %1, align 8
  %i.i = load ptr, ptr %2, align 8
  %i.j = load i64, ptr %i.a, align 8
  %i.k = trunc i64 %i.j to i32
  %i.l = load ptr, ptr %3, align 8
  %i.m = load i64, ptr %i.d, align 8
  %i.n = trunc i64 %i.m to i32
  %i.o = trunc nuw nsw i64 %5 to i32
  %i.p = tail call i32 @PKCS5_PBKDF2_HMAC(ptr noundef %i.i, i32 noundef %i.k, ptr noundef %i.l, i32 noundef %i.n, i32 noundef %4, ptr noundef %i.h, i32 noundef %i.o, ptr noundef nonnull %i.g) #21
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.e
  store ptr %i.g, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %5, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.r, align 8
  br label %_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  tail call void @CRYPTO_clear_free(ptr noundef nonnull %i.g, i64 noundef %5, ptr noundef nonnull @.str, i32 noundef 226) #21
  br label %_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit

_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit:         ; preds = %bb.c, %.thread22, %.thread, %bb.f
  tail call void @ERR_clear_error() #21
  ret void
}

declare i32 @PKCS5_PBKDF2_HMAC(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7ncrypto6argon2ERKNS_6BufferIKcEERKNS0_IKhEEjmjjjS8_S8_NS_10Argon2TypeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.ncrypto::DataPointer") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %9, i32 noundef %10) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %11 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  %12 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  %13 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  %14 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  %15 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  %16 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  %17 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  %18 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  %19 = alloca %struct.ossl_param_st, align 8     ; 5 uses
  store i32 %3, ptr %i.a, align 4
  store i32 %5, ptr %i.b, align 4
  store i32 %6, ptr %i.c, align 4
  tail call void @ERR_clear_error() #21
  %i.d = icmp ult i32 %10, 3
  br i1 %i.d, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit

switch.lookup:                                    ; preds = %bb.a
  %i.e = zext nneg i32 %10 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN7ncrypto6argon2ERKNS_6BufferIKcEERKNS0_IKhEEjmjjjS8_S8_NS_10Argon2TypeE, i64 %i.e
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.f = tail call ptr @OSSL_LIB_CTX_new() #21    ; 4 uses
  %.not168 = icmp eq ptr %i.f, null
  br i1 %.not168, label %_ZNSt10unique_ptrI10evp_kdf_stN7ncrypto15FunctionDeleterIS0_XadL_Z12EVP_KDF_freeEEEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %switch.lookup
  %i.g = icmp ugt i32 %3, 1
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = zext i32 %3 to i64
  %i.i = tail call i32 @OSSL_set_max_threads(ptr noundef nonnull %i.f, i64 noundef %i.h) #21
  %.not = icmp eq i32 %i.i, 1
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.n

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.j = tail call ptr @EVP_KDF_fetch(ptr noundef nonnull %i.f, ptr noundef nonnull %switch.load, ptr noundef null) #21 ; 3 uses
  %.not169 = icmp eq ptr %i.j, null
  br i1 %.not169, label %_ZNSt10unique_ptrI14evp_kdf_ctx_stN7ncrypto15FunctionDeleterIS0_XadL_Z16EVP_KDF_CTX_freeEEEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = tail call ptr @EVP_KDF_CTX_new(ptr noundef nonnull %i.j) #21 ; 3 uses
  %.not170 = icmp eq ptr %i.k, null
  br i1 %.not170, label %.thread164, label %_ZNSt6vectorI13ossl_param_stSaIS0_EE7reserveEm.exit

.thread164:                                       ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.m

_ZNSt6vectorI13ossl_param_stSaIS0_EE7reserveEm.exit: ; preds = %bb.g
  %i.l = tail call noalias noundef nonnull dereferenceable(360) ptr @_Znwm(i64 noundef 360) #24 ; 13 uses
  %20 = getelementptr inbounds nuw i8, ptr %i.l, i64 360
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %.not13 = icmp eq i64 %i.n, 0
  br i1 %.not13, label %_ZNSt6vectorI13ossl_param_stSaIS0_EE9push_backEOS0_.exit47, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorI13ossl_param_stSaIS0_EE7reserveEm.exit
  %i.o = load ptr, ptr %1, align 8
  br label %_ZNSt6vectorI13ossl_param_stSaIS0_EE9push_backEOS0_.exit47

_ZNSt6vectorI13ossl_param_stSaIS0_EE9push_backEOS0_.exit47: ; preds = %_ZNSt6vectorI13ossl_param_stSaIS0_EE7reserveEm.exit, %bb.h
  %i.p = phi ptr [ %i.o, %bb.h ], [ @.str.48, %_ZNSt6vectorI13ossl_param_stSaIS0_EE7reserveEm.exit ]
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %11, ptr noundef nonnull @.str.47, ptr noundef %i.p, i64 noundef %i.n) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %11, i64 40, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.r = load ptr, ptr %2, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i64, ptr %i.s, align 8
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %12, ptr noundef nonnull @.str.49, ptr noundef %i.r, i64 noundef %i.t) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %12, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  call void @OSSL_PARAM_construct_uint32(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %13, ptr noundef nonnull @.str.50, ptr noundef nonnull %i.a) #21
  %.sroa.26.4 = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.26.4, ptr noundef nonnull align 8 dereferenceable(40) %13, i64 40, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  call void @OSSL_PARAM_construct_uint32(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %14, ptr noundef nonnull @.str.51, ptr noundef nonnull %i.a) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull align 8 dereferenceable(40) %14, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  call void @OSSL_PARAM_construct_uint32(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %15, ptr noundef nonnull @.str.52, ptr noundef nonnull %i.b) #21
  %.sroa.26.6 = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.26.6, ptr noundef nonnull align 8 dereferenceable(40) %15, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  call void @OSSL_PARAM_construct_uint32(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %16, ptr noundef nonnull @.str.53, ptr noundef nonnull %i.c) #21
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull align 8 dereferenceable(40) %16, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %.not14 = icmp eq i64 %i.x, 0
  br i1 %.not14, label %bb.i, label %_ZNSt6vectorI13ossl_param_stSaIS0_EE9push_backEOS0_.exit63

_ZNSt6vectorI13ossl_param_stSaIS0_EE9push_backEOS0_.exit63: ; preds = %_ZNSt6vectorI13ossl_param_stSaIS0_EE9push_backEOS0_.exit47
  %.sroa.26.8.ptr = getelementptr inbounds nuw i8, ptr %i.l, i64 240
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  %i.y = load ptr, ptr %9, align 8
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %17, ptr noundef nonnull @.str.54, ptr noundef %i.y, i64 noundef %i.x) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.26.8.ptr, ptr noundef nonnull align 8 dereferenceable(40) %17, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorI13ossl_param_stSaIS0_EE9push_backEOS0_.exit63, %_ZNSt6vectorI13ossl_param_stSaIS0_EE9push_backEOS0_.exit47
  %.sroa.26.0.idx = phi i64 [ 240, %_ZNSt6vectorI13ossl_param_stSaIS0_EE9push_backEOS0_.exit47 ], [ 280, %_ZNSt6vectorI13ossl_param_stSaIS0_EE9push_backEOS0_.exit63 ] ; 3 uses
  %.sroa.26.0.ptr = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.26.0.idx
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %.not15 = icmp eq i64 %i.aa, 0
  br i1 %.not15, label %21, label %_ZNSt6vectorI13ossl_param_stSaIS0_EE9push_backEOS0_.exit71

_ZNSt6vectorI13ossl_param_stSaIS0_EE9push_backEOS0_.exit71: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  %i.ab = load ptr, ptr %8, align 8
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %18, ptr noundef nonnull @.str.55, ptr noundef %i.ab, i64 noundef %i.aa) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.26.0.ptr, ptr noundef nonnull align 8 dereferenceable(40) %18, i64 40, i1 false)
  %.sroa.26.0.add = add nuw nsw i64 %.sroa.26.0.idx, 40
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %21

21:                                               ; preds = %_ZNSt6vectorI13ossl_param_stSaIS0_EE9push_backEOS0_.exit71, %bb.i
  %.sroa.26.1.idx = phi i64 [ %.sroa.26.0.idx, %bb.i ], [ %.sroa.26.0.add, %_ZNSt6vectorI13ossl_param_stSaIS0_EE9push_backEOS0_.exit71 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %19) #21
  %.not.i.i72 = icmp eq i64 %.sroa.26.1.idx, 360
  br i1 %.not.i.i72, label %_ZNKSt6vectorI13ossl_param_stSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i73, label %22

22:                                               ; preds = %21
  %.sroa.26.1.ptr = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.26.1.idx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.26.1.ptr, ptr noundef nonnull align 8 dereferenceable(40) %19, i64 40, i1 false)
  br label %_ZNSt6vectorI13ossl_param_stSaIS0_EE9push_backEOS0_.exit79

_ZNKSt6vectorI13ossl_param_stSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i73: ; preds = %21
  %23 = call noalias noundef nonnull dereferenceable(720) ptr @_Znwm(i64 noundef 720) #24 ; 4 uses
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 %.sroa.26.1.idx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %24, ptr noundef nonnull align 8 dereferenceable(40) %19, i64 40, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %23, ptr noundef nonnull align 8 dereferenceable(1) %i.l, i64 %.sroa.26.1.idx, i1 false)
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %.sroa.26.1.idx) #22
  %25 = getelementptr inbounds nuw i8, ptr %23, i64 720
  br label %_ZNSt6vectorI13ossl_param_stSaIS0_EE9push_backEOS0_.exit79

_ZNSt6vectorI13ossl_param_stSaIS0_EE9push_backEOS0_.exit79: ; preds = %22, %_ZNKSt6vectorI13ossl_param_stSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i73
  %.sroa.090.11 = phi ptr [ %23, %_ZNKSt6vectorI13ossl_param_stSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i73 ], [ %i.l, %22 ] ; 3 uses
  %.sroa.65.11 = phi ptr [ %25, %_ZNKSt6vectorI13ossl_param_stSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i73 ], [ %20, %22 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  %i.ac = call noalias ptr @CRYPTO_zalloc(i64 noundef %4, ptr noundef nonnull @.str, i32 noundef 142) #21, !noalias !155 ; 4 uses
  %.not174 = icmp eq ptr %i.ac, null
  br i1 %.not174, label %.thread162, label %bb.j

.thread162:                                       ; preds = %_ZNSt6vectorI13ossl_param_stSaIS0_EE9push_backEOS0_.exit79
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.l

bb.j:                                             ; preds = %_ZNSt6vectorI13ossl_param_stSaIS0_EE9push_backEOS0_.exit79
  %i.ad = call i32 @EVP_KDF_derive(ptr noundef nonnull %i.k, ptr noundef nonnull %i.ac, i64 noundef %4, ptr noundef nonnull %.sroa.090.11) #21
  %i.ae = icmp eq i32 %i.ad, 1
  br i1 %i.ae, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.j
  store ptr %i.ac, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.ag, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @CRYPTO_clear_free(ptr noundef nonnull %i.ac, i64 noundef %4, ptr noundef nonnull @.str, i32 noundef 226) #21
  br label %bb.l

bb.l:                                             ; preds = %.thread162, %.thread, %bb.k
  %26 = ptrtoint ptr %.sroa.65.11 to i64
  %27 = ptrtoint ptr %.sroa.090.11 to i64
  %28 = sub i64 %26, %27
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.090.11, i64 noundef %28) #22
  call void @EVP_KDF_CTX_free(ptr noundef nonnull %i.k) #21
  br label %bb.m

_ZNSt10unique_ptrI14evp_kdf_ctx_stN7ncrypto15FunctionDeleterIS0_XadL_Z16EVP_KDF_CTX_freeEEEEED2Ev.exit: ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.n

bb.m:                                             ; preds = %bb.l, %.thread164
  call void @EVP_KDF_free(ptr noundef nonnull %i.j) #21
  br label %bb.n

_ZNSt10unique_ptrI10evp_kdf_stN7ncrypto15FunctionDeleterIS0_XadL_Z12EVP_KDF_freeEEEEED2Ev.exit: ; preds = %switch.lookup
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit

bb.n:                                             ; preds = %bb.m, %_ZNSt10unique_ptrI14evp_kdf_ctx_stN7ncrypto15FunctionDeleterIS0_XadL_Z16EVP_KDF_CTX_freeEEEEED2Ev.exit, %bb.e
  call void @OSSL_LIB_CTX_free(ptr noundef nonnull %i.f) #21
  br label %_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit

_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit:         ; preds = %bb.b, %_ZNSt10unique_ptrI10evp_kdf_stN7ncrypto15FunctionDeleterIS0_XadL_Z12EVP_KDF_freeEEEEED2Ev.exit, %bb.n
  call void @ERR_clear_error() #21
  ret void
}

declare ptr @OSSL_LIB_CTX_new() local_unnamed_addr #1

declare i32 @OSSL_set_max_threads(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @EVP_KDF_fetch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @EVP_KDF_CTX_new(ptr noundef) local_unnamed_addr #1

declare void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @OSSL_PARAM_construct_uint32(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @OSSL_PARAM_construct_end(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8) local_unnamed_addr #1

declare i32 @EVP_KDF_derive(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7ncrypto13EVPKeyPointer24PrivateKeyEncodingConfigC2ERKS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) initializes((0, 1), (4, 12), (16, 24), (48, 49)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !range !9, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load <2 x i32>, ptr %i.b, align 4
  store i8 %i.a, ptr %0, align 8
  store <2 x i32> %i.d, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store i8 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  store ptr %i.h, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load i8, ptr %i.i, align 8, !range !9, !noundef !10
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZNKRSt8optionalIN7ncrypto11DataPointerEE5valueEv.exit, label %_ZN7ncrypto11DataPointerD2Ev.exit

_ZNKRSt8optionalIN7ncrypto11DataPointerEE5valueEv.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8              ; 3 uses
  %i.o = tail call noalias ptr @CRYPTO_zalloc(i64 noundef %i.n, ptr noundef nonnull @.str, i32 noundef 142) #21, !noalias !158 ; 3 uses
  %i.p = load ptr, ptr %i.l, align 8
  %i.q = load i64, ptr %i.m, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.p, i64 %i.q, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.s = load i8, ptr %i.f, align 8, !range !9, !noundef !10
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNKRSt8optionalIN7ncrypto11DataPointerEE5valueEv.exit
  %i.u = load ptr, ptr %i.r, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZN7ncrypto11DataPointerD2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load i8, ptr %i.v, align 8, !range !9, !noundef !10
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @CRYPTO_secure_clear_free(ptr noundef nonnull %i.u, i64 noundef %i.z, ptr noundef nonnull @.str, i32 noundef 224) #21
  br label %_ZN7ncrypto11DataPointerD2Ev.exit.i.i

bb.e:                                             ; preds = %bb.c
  tail call void @CRYPTO_clear_free(ptr noundef nonnull %i.u, i64 noundef %i.z, ptr noundef nonnull @.str, i32 noundef 226) #21
  br label %_ZN7ncrypto11DataPointerD2Ev.exit.i.i

_ZN7ncrypto11DataPointerD2Ev.exit.i.i:            ; preds = %bb.e, %bb.d, %bb.b
  store ptr %i.o, ptr %i.r, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.n, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.ab, align 8
  br label %_ZN7ncrypto11DataPointerD2Ev.exit

bb.f:                                             ; preds = %_ZNKRSt8optionalIN7ncrypto11DataPointerEE5valueEv.exit
  store ptr %i.o, ptr %i.r, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.n, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.ad, align 8
  store i8 1, ptr %i.f, align 8
  br label %_ZN7ncrypto11DataPointerD2Ev.exit

_ZN7ncrypto11DataPointerD2Ev.exit:                ; preds = %_ZN7ncrypto11DataPointerD2Ev.exit.i.i, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN7ncrypto13EVPKeyPointer27AsymmetricKeyEncodingConfigC2EbNS0_12PKFormatTypeENS0_14PKEncodingTypeE(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(12) initializes((0, 1), (4, 12)) %0, i1 noundef zeroext %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  store i8 %i.a, ptr %0, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %i.c, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN7ncrypto13EVPKeyPointer24PrivateKeyEncodingConfigaSERKS1_(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(56) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !9, !noundef !10
  %i.d = trunc nuw i8 %i.c to i1
  store i8 0, ptr %i.b, align 8
  br i1 %i.d, label %bb.c, label %_ZN7ncrypto13EVPKeyPointer24PrivateKeyEncodingConfigD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN7ncrypto13EVPKeyPointer24PrivateKeyEncodingConfigD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i8, ptr %i.g, align 8, !range !9, !noundef !10
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @CRYPTO_secure_clear_free(ptr noundef nonnull %i.f, i64 noundef %i.k, ptr noundef nonnull @.str, i32 noundef 224) #21
  br label %_ZN7ncrypto13EVPKeyPointer24PrivateKeyEncodingConfigD2Ev.exit

bb.f:                                             ; preds = %bb.d
  tail call void @CRYPTO_clear_free(ptr noundef nonnull %i.f, i64 noundef %i.k, ptr noundef nonnull @.str, i32 noundef 226) #21
  br label %_ZN7ncrypto13EVPKeyPointer24PrivateKeyEncodingConfigD2Ev.exit

_ZN7ncrypto13EVPKeyPointer24PrivateKeyEncodingConfigD2Ev.exit: ; preds = %bb.b, %bb.c, %bb.e, %bb.f
  tail call void @_ZN7ncrypto13EVPKeyPointer24PrivateKeyEncodingConfigC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN7ncrypto13EVPKeyPointer24PrivateKeyEncodingConfigD2Ev.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7ncrypto13EVPKeyPointer3NewEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.ncrypto::EVPKeyPointer") align 8 captures(none) initializes((0, 8)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call ptr @EVP_PKEY_new() #21
  store ptr %i.a, ptr %0, align 8
  ret void
}

declare ptr @EVP_PKEY_new() local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7ncrypto13EVPKeyPointer12NewRawPublicEiRKNS_6BufferIKhEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.ncrypto::EVPKeyPointer") align 8 captures(none) initializes((0, 8)) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call ptr @EVP_PKEY_new_raw_public_key(i32 noundef %1, ptr noundef null, ptr noundef %i.b, i64 noundef %i.d) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  store ptr %storemerge, ptr %0, align 8
  ret void
}

end_hunk_0
