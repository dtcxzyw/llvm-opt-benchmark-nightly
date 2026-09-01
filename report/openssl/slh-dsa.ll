Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/slh-dsa?download=true
inline.NumInlined: 11
inline.NumDeleted: 2
begin_hunk_0_@slh_dsa_gen_key_with_params:bb.a

bb.l:                                             ; preds = %bb.i
  br i1 %.not32, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @OPENSSL_die(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.6, i32 noundef 267) #6
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @slh_dsa_export_import(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree readnone captures(none) %4, ptr nofree readnone captures(none) %5) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 12 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store ptr null, ptr %i.b, align 8, !tbaa !21
  %i.c = call i32 @EVP_PKEY_todata(ptr noundef %2, i32 noundef 135, ptr noundef nonnull %i.b) #5
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @OPENSSL_die(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.6, i32 noundef 427) #6
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = call ptr @EVP_PKEY_CTX_new_from_pkey(ptr noundef null, ptr noundef %2, ptr noundef null) #5 ; 4 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @OPENSSL_die(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 430) #6
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = call i32 @EVP_PKEY_fromdata_init(ptr noundef nonnull %i.e) #5
  %.not20 = icmp eq i32 %i.f, 0
  br i1 %.not20, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @OPENSSL_die(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef 432) #6
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.g = call ptr @EVP_PKEY_new() #5              ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !23
  %.not21 = icmp eq ptr %i.g, null
  br i1 %.not21, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @OPENSSL_die(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.6, i32 noundef 435) #6
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.i = call i32 @EVP_PKEY_fromdata(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, i32 noundef 135, ptr noundef %i.h) #5
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @OPENSSL_die(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.6, i32 noundef 436) #6
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.l = call i32 @EVP_PKEY_eq(ptr noundef %2, ptr noundef %i.k) #5
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @OPENSSL_die(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.6, i32 noundef 445) #6
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !23
  call void @EVP_PKEY_free(ptr noundef %i.n) #5
  call void @EVP_PKEY_CTX_free(ptr noundef nonnull %i.e) #5
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !21
  call void @OSSL_PARAM_free(ptr noundef %i.o) #5
  store ptr null, ptr %i.b, align 8, !tbaa !21
  store ptr null, ptr %i.a, align 8, !tbaa !23
  %i.p = call i32 @EVP_PKEY_todata(ptr noundef %3, i32 noundef 135, ptr noundef nonnull %i.b) #5
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @OPENSSL_die(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.6, i32 noundef 453) #6
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.r = call ptr @EVP_PKEY_CTX_new_from_pkey(ptr noundef null, ptr noundef %3, ptr noundef null) #5 ; 4 uses
  %.not22 = icmp eq ptr %i.r, null
  br i1 %.not22, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @OPENSSL_die(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 456) #6
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.s = call i32 @EVP_PKEY_fromdata_init(ptr noundef nonnull %i.r) #5
  %.not23 = icmp eq i32 %i.s, 0
  br i1 %.not23, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @OPENSSL_die(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef 458) #6
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.t = call ptr @EVP_PKEY_new() #5              ; 2 uses
  store ptr %i.t, ptr %i.a, align 8, !tbaa !23
  %.not24 = icmp eq ptr %i.t, null
  br i1 %.not24, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @OPENSSL_die(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.6, i32 noundef 461) #6
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.v = call i32 @EVP_PKEY_fromdata(ptr noundef nonnull %i.r, ptr noundef nonnull %i.a, i32 noundef 135, ptr noundef %i.u) #5
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @OPENSSL_die(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.6, i32 noundef 462) #6
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.y = call i32 @EVP_PKEY_eq(ptr noundef %3, ptr noundef %i.x) #5
  %i.z = icmp eq i32 %i.y, 1
  br i1 %i.z, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @OPENSSL_die(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.6, i32 noundef 464) #6
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.ab = call i32 @EVP_PKEY_eq(ptr noundef %2, ptr noundef %i.aa) #5
  %i.ac = add i32 %i.ab, 1
  %or.cond = icmp ult i32 %i.ac, 2
  br i1 %or.cond, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @OPENSSL_die(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.6, i32 noundef 471) #6
  unreachable

bb.aa:                                            ; preds = %bb.y
  call void @EVP_PKEY_CTX_free(ptr noundef nonnull %i.r) #5
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !23
  call void @EVP_PKEY_free(ptr noundef %i.ad) #5
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !21
  call void @OSSL_PARAM_free(ptr noundef %i.ae) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @slh_dsa_sign_verify(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree readnone captures(none) %5) #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca [4 x %struct.ossl_param_st], align 16 ; 8 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %7 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %8 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %9 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.d = load i64, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %consume_uint8t.exit.thread, label %select_keytype.exit

consume_uint8t.exit.thread:                       ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !14
  br label %bb.ab

select_keytype.exit:                              ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !11
  %i.h = add i64 %i.d, -1
  store i64 %i.h, ptr %1, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.i, ptr %0, align 8, !tbaa !14
  %i.j = urem i8 %i.g, 12
  %i.k = zext nneg i8 %i.j to i32
  %i.l = add nuw nsw i32 %i.k, 1460
  %i.m = tail call ptr @OBJ_nid2ln(i32 noundef %i.l) #5 ; 2 uses
  %i.n = load i64, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %consume_uint8t.exit66.thread, label %bb.b

consume_uint8t.exit66.thread:                     ; preds = %select_keytype.exit
  store ptr null, ptr %0, align 8, !tbaa !14
  br label %bb.ab

bb.b:                                             ; preds = %select_keytype.exit
  %i.p = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !11    ; 3 uses
  %i.r = add i64 %i.n, -1                         ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 5 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !14
  %i.t = icmp ugt i64 %i.r, 255
  %.not = trunc i8 %i.q to i1
  %i.u = and i1 %i.t, %.not                       ; 2 uses
  %narrow = xor i1 %i.u, true
  %.0 = zext i1 %narrow to i32
  store i64 0, ptr %1, align 8, !tbaa !12
  %i.v = and i8 %i.q, 1
  %.not53 = icmp eq i8 %i.v, 0
  br i1 %.not53, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %6, ptr noundef nonnull @.str.22, ptr noundef nonnull %i.s, i64 noundef %i.r) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.046 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]      ; 3 uses
  %i.w = zext i8 %i.q to i32                      ; 4 uses
  %i.x = and i32 %i.w, 2
  %.not54 = icmp eq i32 %i.x, 0
  br i1 %.not54, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = and i32 %i.w, 4
  store i32 %i.y, ptr %i.b, align 4, !tbaa !20
  %i.z = add nuw nsw i32 %.046, 1
  %i.aa = zext nneg i32 %.046 to i64
  %i.ab = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %i.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  call void @OSSL_PARAM_construct_int(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %7, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.b) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1 = phi i32 [ %i.z, %bb.e ], [ %.046, %bb.d ] ; 3 uses
  %i.ac = and i32 %i.w, 8
  %.not55 = icmp eq i32 %i.ac, 0
  br i1 %.not55, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = and i32 %i.w, 16
  store i32 %i.ad, ptr %i.c, align 4, !tbaa !20
  %i.ae = add nuw nsw i32 %.1, 1
  %i.af = zext nneg i32 %.1 to i64
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %i.af
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  call void @OSSL_PARAM_construct_int(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %8, ptr noundef nonnull @.str.24, ptr noundef nonnull %i.c) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ag, ptr noundef nonnull align 8 dereferenceable(40) %8, i64 40, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2 = phi i32 [ %i.ae, %bb.g ], [ %.1, %bb.f ]
  %i.ah = zext nneg i32 %.2 to i64
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %i.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #5
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %9) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull align 8 dereferenceable(40) %9, i64 40, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #5
  %i.aj = call fastcc ptr @slh_dsa_gen_key(ptr noundef %i.m, ptr noundef null, ptr noundef null) ; 3 uses
  %.not56 = icmp eq ptr %i.aj, null
  br i1 %.not56, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @OPENSSL_die(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.6, i32 noundef 368) #6
  unreachable

bb.j:                                             ; preds = %bb.h
  store ptr %i.aj, ptr %4, align 8, !tbaa !9
  %i.ak = call ptr @EVP_PKEY_CTX_new_from_pkey(ptr noundef null, ptr noundef nonnull %i.aj, ptr noundef null) #5 ; 7 uses
  %.not57 = icmp eq ptr %i.ak, null
  br i1 %.not57, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @OPENSSL_die(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 372) #6
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.al = call ptr @EVP_SIGNATURE_fetch(ptr noundef null, ptr noundef %i.m, ptr noundef null) #5 ; 4 uses
  %.not58 = icmp eq ptr %i.al, null
  br i1 %.not58, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @OPENSSL_die(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.6, i32 noundef 375) #6
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.am = call i32 @EVP_PKEY_sign_message_init(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al, ptr noundef nonnull %6) #5
  %i.an = icmp eq i32 %i.am, %.0
  br i1 %i.an, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @OPENSSL_die(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.6, i32 noundef 377) #6
  unreachable

bb.p:                                             ; preds = %bb.n
  br i1 %i.u, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = call i32 @EVP_PKEY_sign(ptr noundef nonnull %i.ak, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.s, i64 noundef %i.r) #5
  %.not59 = icmp eq i32 %i.ao, 0
  br i1 %.not59, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @OPENSSL_die(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.6, i32 noundef 387) #6
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !12
  %i.aq = call noalias ptr @CRYPTO_zalloc(i64 noundef %i.ap, ptr noundef nonnull @.str.6, i32 noundef 388) #5 ; 4 uses
  %.not60 = icmp eq ptr %i.aq, null
  br i1 %.not60, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @OPENSSL_die(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.6, i32 noundef 389) #6
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ar = call i32 @EVP_PKEY_sign(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.a, ptr noundef nonnull %i.s, i64 noundef %i.r) #5
  %.not61 = icmp eq i32 %i.ar, 0
  br i1 %.not61, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @OPENSSL_die(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.6, i32 noundef 391) #6
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.as = call i32 @EVP_PKEY_verify_message_init(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al, ptr noundef nonnull %6) #5
  %.not62 = icmp eq i32 %i.as, 0
  br i1 %.not62, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @OPENSSL_die(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.6, i32 noundef 393) #6
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.at = load i64, ptr %i.a, align 8, !tbaa !12
  %i.au = call i32 @EVP_PKEY_verify(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.aq, i64 noundef %i.at, ptr noundef nonnull %i.s, i64 noundef %i.r) #5
  %.not63 = icmp eq i32 %i.au, 0
  br i1 %.not63, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @OPENSSL_die(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.6, i32 noundef 394) #6
  unreachable

bb.aa:                                            ; preds = %bb.y, %bb.p
  %.047 = phi ptr [ null, %bb.p ], [ %i.aq, %bb.y ]
  call void @CRYPTO_free(ptr noundef %.047, ptr noundef nonnull @.str.6, i32 noundef 397) #5
  call void @EVP_SIGNATURE_free(ptr noundef nonnull %i.al) #5
  call void @EVP_PKEY_CTX_free(ptr noundef nonnull %i.ak) #5
  br label %bb.ab

bb.ab:                                            ; preds = %consume_uint8t.exit66.thread, %consume_uint8t.exit.thread, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @slh_dsa_gen_key(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store ptr null, ptr %i.a, align 8, !tbaa !23
  %i.b = tail call ptr @EVP_PKEY_CTX_new_from_name(ptr noundef null, ptr noundef %0, ptr noundef null) #5 ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 69) #6
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not13 = icmp eq ptr %1, null
  br i1 %.not13, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call ptr @EVP_PKEY_new() #5
  store ptr %i.c, ptr %i.a, align 8, !tbaa !23
  %i.d = tail call i32 @EVP_PKEY_fromdata_init(ptr noundef nonnull %i.b) #5
  %.not16 = icmp eq i32 %i.d, 0
  br i1 %.not16, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef 72) #6
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.e = load i8, ptr %2, align 1, !tbaa !11
  %.not17 = icmp eq i8 %i.e, 0
  %i.f = call i32 @EVP_PKEY_fromdata(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef 135, ptr noundef nonnull %1) #5 ; 2 uses
  br i1 %.not17, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @OPENSSL_die(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef 75) #6
  unreachable

bb.i:                                             ; preds = %bb.g
end_hunk_0
