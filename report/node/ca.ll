inline.NumInlined: 41
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@make_revoked:bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.e ], [ %i.k, %bb.g ], [ %.0, %bb.i ], [ %.0, %bb.k ], [ %.03337, %bb.l ], [ null, %bb.c ], [ %i.k, %bb.f ]
  call void @CRYPTO_free(ptr noundef null, ptr noundef nonnull @.str.202, i32 noundef 2517) #11
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !52
  call void @ASN1_OBJECT_free(ptr noundef %i.x) #11
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !54
  call void @ASN1_GENERALIZEDTIME_free(ptr noundef %i.y) #11
  call void @ASN1_ENUMERATED_free(ptr noundef %.1) #11
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !54
  call void @ASN1_TIME_free(ptr noundef %i.z) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.020
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #6

declare i64 @TXT_DB_write(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @do_updatedb(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @ASN1_TIME_new() #11       ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @X509_time_adj(ptr noundef nonnull %i.a, i64 noundef 0, ptr noundef %1) #11
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.critedge.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.i = tail call i32 @OPENSSL_sk_num(ptr noundef %i.h) #11
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %.critedge.sink.split

.lr.ph:                                           ; preds = %.preheader, %bb.i
  %.02738 = phi i32 [ %.330, %bb.i ], [ 0, %.preheader ] ; 3 uses
  %.03137 = phi i32 [ %i.ag, %bb.i ], [ 0, %.preheader ] ; 2 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !32
  %i.n = tail call ptr @OPENSSL_sk_value(ptr noundef %i.m, i32 noundef %.03137) #11 ; 5 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12
  %i.p = load i8, ptr %i.o, align 1, !tbaa !26
  %i.q = icmp eq i8 %i.p, 86
  br i1 %i.q, label %bb.c, label %bb.i

bb.c:                                             ; preds = %.lr.ph
  %i.r = tail call ptr @ASN1_TIME_new() #11       ; 5 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.critedge.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !12
  %i.v = tail call i32 @ASN1_TIME_set_string(ptr noundef nonnull %i.r, ptr noundef %i.u) #11
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ASN1_TIME_free(ptr noundef nonnull %i.a) #11
  br label %.critedge.sink.split

bb.f:                                             ; preds = %bb.d
  %i.w = tail call i32 @ASN1_TIME_compare(ptr noundef nonnull %i.r, ptr noundef nonnull %i.a) #11
  %i.x = icmp slt i32 %i.w, 1
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !12
  store i8 69, ptr %i.y, align 1, !tbaa !26
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store i8 0, ptr %i.aa, align 1, !tbaa !26
  %i.ab = add nsw i32 %.02738, 1
  %i.ac = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !12
  %i.af = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ac, ptr noundef nonnull @.str.230, ptr noundef %i.ae) #11 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.128 = phi i32 [ %i.ab, %bb.g ], [ %.02738, %bb.f ]
  tail call void @ASN1_TIME_free(ptr noundef nonnull %i.r) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %.330 = phi i32 [ %.128, %bb.h ], [ %.02738, %.lr.ph ] ; 2 uses
  %i.ag = add nuw nsw i32 %.03137, 1              ; 2 uses
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !32
  %i.ak = tail call i32 @OPENSSL_sk_num(ptr noundef %i.aj) #11
  %i.al = icmp slt i32 %i.ag, %i.ak
  br i1 %i.al, label %.lr.ph, label %.critedge.sink.split, !llvm.loop !56

.critedge.sink.split:                             ; preds = %bb.i, %bb.c, %.preheader, %bb.b, %bb.e
  %.sink = phi ptr [ %i.a, %bb.b ], [ %i.r, %bb.e ], [ %i.a, %.preheader ], [ %i.a, %bb.c ], [ %i.a, %bb.i ]
  %.3.ph = phi i32 [ -1, %bb.b ], [ -1, %bb.e ], [ 0, %.preheader ], [ %.330, %bb.i ], [ -1, %bb.c ]
  tail call void @ASN1_TIME_free(ptr noundef nonnull %.sink) #11
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.a
  %.3 = phi i32 [ -1, %bb.a ], [ %.3.ph, %.critedge.sink.split ]
  ret i32 %.3
}

declare i32 @save_index(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @rotate_index(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @app_load_config_internal(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_get_default_digest_name(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @BIO_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @X509V3_set_ctx(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @X509V3_set_nconf(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @X509V3_EXT_add_nconf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @app_conf_try_number(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BN_new() local_unnamed_addr #3

declare i32 @rand_serial(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @load_serial(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BN_is_zero(ptr noundef) local_unnamed_addr #3

declare ptr @BN_bn2hex(ptr noundef) local_unnamed_addr #3

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @NCONF_get_section(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 2) i32 @certify_spkac(ptr nofree noundef nonnull writeonly captures(none) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %6, ptr nofree noundef nonnull readonly captures(none) %7, ptr noundef %8, ptr noundef %9, i64 noundef range(i64 4096, 4098) %10, i32 noundef range(i32 0, 2) %11, ptr noundef %12, ptr noundef %13, i64 noundef %14, ptr noundef %15, ptr noundef nonnull %16, i32 noundef range(i32 0, 2) %17, i64 noundef %18, i64 noundef %19, i32 noundef range(i32 0, 2) %20, i32 noundef %21, i64 noundef %22) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = call ptr @CONF_load(ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull %i.a) #11 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.e = load i64, ptr %i.a, align 8, !tbaa !14
  %i.f = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.d, ptr noundef nonnull @.str.311, i64 noundef %i.e, ptr noundef nonnull %1) #11 ; 0 uses
  br label %.loopexit87

bb.c:                                             ; preds = %bb.a
  %i.g = call ptr @CONF_get_section(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.181) #11 ; 4 uses
  %i.h = call i32 @OPENSSL_sk_num(ptr noundef %i.g) #11
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.k = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.j, ptr noundef nonnull @.str.312, ptr noundef nonnull %1) #11 ; 0 uses
  br label %.loopexit87

bb.e:                                             ; preds = %bb.c
  %i.l = call ptr @X509_REQ_new() #11             ; 10 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.loopexit87, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = call ptr @X509_REQ_get_subject_name(ptr noundef nonnull %i.l) #11
  %i.o = call i32 @OPENSSL_sk_num(ptr noundef %i.g) #11
  %.not91 = icmp sgt i32 %i.o, 0
  br i1 %.not91, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.f
  %i.p = trunc nuw nsw i64 %10 to i32
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.o
  %.093 = phi i32 [ 0, %.lr.ph ], [ %i.aj, %bb.o ] ; 2 uses
  %.07492 = phi ptr [ null, %.lr.ph ], [ %.1, %bb.o ] ; 3 uses
  %i.q = call ptr @OPENSSL_sk_value(ptr noundef %i.g, i32 noundef %.093) #11 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !57   ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.072 = phi ptr [ %i.s, %bb.g ], [ %i.w, %bb.j ] ; 3 uses
  %i.t = load i8, ptr %.072, align 1, !tbaa !26
  switch i8 %i.t, label %bb.j [
    i8 0, label %.loopexit
    i8 58, label %bb.i
    i8 44, label %bb.i
    i8 46, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %.072, i64 1 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !26
  %.not85 = icmp eq i8 %i.v, 0
  %spec.select = select i1 %.not85, ptr %i.s, ptr %i.u
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %.072, i64 1
  br label %bb.h, !llvm.loop !59

.loopexit:                                        ; preds = %bb.h, %bb.i
  %.073 = phi ptr [ %spec.select, %bb.i ], [ %i.s, %bb.h ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !60
  %i.z = call i32 @OBJ_txt2nid(ptr noundef %.073) #11 ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.k, label %bb.n

bb.k:                                             ; preds = %.loopexit
  %i.ab = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.073, ptr noundef nonnull dereferenceable(6) @.str.313) #12
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !60
  %i.ae = call ptr @NETSCAPE_SPKI_b64_decode(ptr noundef %i.ad, i32 noundef -1) #11 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.ah = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ag, ptr noundef nonnull @.str.314) #11 ; 0 uses
  br label %.loopexit87

bb.n:                                             ; preds = %.loopexit
  %i.ai = call i32 @X509_NAME_add_entry_by_NID(ptr noundef %i.n, i32 noundef %i.z, i32 noundef %i.p, ptr noundef %i.y, i32 noundef -1, i32 noundef -1, i32 noundef 0) #11
  %.not86 = icmp eq i32 %i.ai, 0
  br i1 %.not86, label %.loopexit87, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k, %bb.l
  %.1 = phi ptr [ %i.ae, %bb.l ], [ %.07492, %bb.k ], [ %.07492, %bb.n ] ; 7 uses
  %i.aj = add nuw nsw i32 %.093, 1                ; 2 uses
  %i.ak = call i32 @OPENSSL_sk_num(ptr noundef %i.g) #11
  %.not = icmp sgt i32 %i.ak, %i.aj
  br i1 %.not, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %bb.o
  %i.al = icmp eq ptr %.1, null
  br i1 %i.al, label %._crit_edge.thread, label %bb.p

._crit_edge.thread:                               ; preds = %bb.f, %._crit_edge
  %i.am = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.an = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.am, ptr noundef nonnull @.str.315, ptr noundef nonnull %1) #11 ; 0 uses
  br label %.loopexit87

bb.p:                                             ; preds = %._crit_edge
  %i.ao = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.ap = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ao, ptr noundef nonnull @.str.316) #11 ; 0 uses
  %i.aq = call ptr @NETSCAPE_SPKI_get_pubkey(ptr noundef nonnull %.1) #11 ; 5 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.as = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.at = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.as, ptr noundef nonnull @.str.317) #11 ; 0 uses
  br label %.loopexit87

bb.r:                                             ; preds = %bb.p
  %i.au = call i32 @NETSCAPE_SPKI_verify(ptr noundef nonnull %.1, ptr noundef nonnull %i.aq) #11
  %i.av = icmp slt i32 %i.au, 1
  br i1 %i.av, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @EVP_PKEY_free(ptr noundef nonnull %i.aq) #11
  %i.aw = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.ax = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.aw, ptr noundef nonnull @.str.318) #11 ; 0 uses
  br label %.loopexit87

bb.t:                                             ; preds = %bb.r
  %i.ay = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.az = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ay, ptr noundef nonnull @.str.245) #11 ; 0 uses
  %i.ba = call i32 @X509_REQ_set_pubkey(ptr noundef nonnull %i.l, ptr noundef nonnull %i.aq) #11 ; 0 uses
  call void @EVP_PKEY_free(ptr noundef nonnull %i.aq) #11
  %i.bb = call fastcc i32 @do_body(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i64 noundef %10, i32 noundef %11, ptr noundef %12, ptr noundef %13, i64 noundef %14, i32 noundef 1, i32 noundef %17, ptr noundef %i.l, ptr noundef %15, ptr noundef %16, i64 noundef %18, i64 noundef %19, i32 noundef %20, i32 noundef %21, i32 noundef 0, i64 noundef %22)
  br label %.loopexit87

.loopexit87:                                      ; preds = %bb.n, %bb.e, %bb.t, %bb.s, %bb.q, %._crit_edge.thread, %bb.m, %bb.d, %bb.b
  %.2 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.e ], [ null, %._crit_edge.thread ], [ %.1, %bb.q ], [ %.1, %bb.s ], [ %.1, %bb.t ], [ null, %bb.m ], [ %.07492, %bb.n ]
  %.071 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.e ], [ %i.l, %._crit_edge.thread ], [ %i.l, %bb.q ], [ %i.l, %bb.s ], [ %i.l, %bb.t ], [ %i.l, %bb.m ], [ %i.l, %bb.n ]
  %.070 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.e ], [ -1, %._crit_edge.thread ], [ -1, %bb.q ], [ -1, %bb.s ], [ %i.bb, %bb.t ], [ -1, %bb.m ], [ -1, %bb.n ]
  call void @X509_REQ_free(ptr noundef %.071) #11
  call void @CONF_free(ptr noundef %i.b) #11
  call void @NETSCAPE_SPKI_free(ptr noundef %.2) #11
  call void @X509_NAME_ENTRY_free(ptr noundef null) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.070
}

declare i64 @get_nameopt() local_unnamed_addr #3

declare i32 @BN_add_word(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 2) i32 @certify_cert(ptr nofree noundef nonnull writeonly captures(none) %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %9, ptr nofree noundef nonnull readonly captures(none) %10, ptr noundef %11, ptr noundef %12, i64 noundef range(i64 4096, 4098) %13, i32 noundef range(i32 0, 2) %14, ptr noundef %15, ptr noundef %16, i64 noundef %17, i32 noundef range(i32 0, 2) %18, ptr noundef %19, ptr noundef nonnull %20, i32 noundef range(i32 0, 2) %21, i64 noundef %22, i64 noundef %23, i32 noundef range(i32 0, 2) %24, i32 noundef %25, i64 noundef %26) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @load_cert_pass(ptr noundef nonnull %1, i32 noundef %2, i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.307) #11 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %21, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.d = tail call i32 @X509_print(ptr noundef %i.c, ptr noundef nonnull %i.a) #11 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.f = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.e, ptr noundef nonnull @.str.241) #11 ; 0 uses
  %i.g = tail call ptr @X509_get0_pubkey(ptr noundef nonnull %i.a) #11 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.j = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.i, ptr noundef nonnull @.str.308) #11 ; 0 uses
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.k = tail call i32 @do_X509_verify(ptr noundef nonnull %i.a, ptr noundef nonnull %i.g, ptr noundef %8) #11 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.n = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.m, ptr noundef nonnull @.str.309) #11 ; 0 uses
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.o = icmp eq i32 %i.k, 0
  %i.p = load ptr, ptr @bio_err, align 8, !tbaa !20 ; 2 uses
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.p, ptr noundef nonnull @.str.310) #11 ; 0 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.r = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.p, ptr noundef nonnull @.str.245) #11 ; 0 uses
  %i.s = tail call ptr @X509_to_X509_REQ(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null) #11 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = tail call fastcc i32 @do_body(ptr noundef %0, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, i64 noundef %13, i32 noundef %14, ptr noundef %15, ptr noundef %16, i64 noundef %17, i32 noundef %18, i32 noundef %21, ptr noundef %i.s, ptr noundef %19, ptr noundef %20, i64 noundef %22, i64 noundef %23, i32 noundef %24, i32 noundef %25, i32 noundef 0, i64 noundef %26)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.a, %bb.k, %bb.i, %bb.g, %bb.e
  %.039 = phi ptr [ null, %bb.a ], [ null, %bb.e ], [ null, %bb.g ], [ null, %bb.i ], [ null, %bb.j ], [ %i.s, %bb.k ]
  %.0 = phi i32 [ -1, %bb.a ], [ -1, %bb.e ], [ 0, %bb.g ], [ 0, %bb.i ], [ -1, %bb.j ], [ %i.u, %bb.k ]
  tail call void @X509_REQ_free(ptr noundef %.039) #11
  tail call void @X509_free(ptr noundef %i.a) #11
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 2) i32 @certify(ptr nofree noundef nonnull writeonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %8, ptr nofree noundef nonnull readonly captures(none) %9, ptr noundef %10, ptr noundef %11, i64 noundef range(i64 4096, 4098) %12, i32 noundef range(i32 0, 2) %13, ptr noundef %14, ptr noundef %15, i64 noundef %16, i32 noundef range(i32 0, 2) %17, ptr noundef %18, ptr noundef nonnull %19, i32 noundef range(i32 0, 2) %20, i64 noundef %21, i64 noundef %22, i32 noundef range(i32 0, 2) %23, i32 noundef %24, i32 noundef range(i32 0, 2) %25, i64 noundef %26) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @load_csr_autofmt(ptr noundef %1, i32 noundef %2, ptr noundef %7, ptr noundef nonnull @.str.239) #11 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @X509_REQ_get0_pubkey(ptr noundef nonnull %i.a) #11 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.f = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.e, ptr noundef nonnull @.str.240) #11 ; 0 uses
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp eq i32 %20, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.h = tail call i32 @X509_REQ_print_ex(ptr noundef %i.g, ptr noundef nonnull %i.a, i64 noundef %22, i64 noundef 0) #11 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.j = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.i, ptr noundef nonnull @.str.241) #11 ; 0 uses
  %.not46 = icmp eq i32 %25, 0
end_hunk_0
begin_hunk_1_@do_body:bb.a
.thread401:                                       ; preds = %._crit_edge474, %bb.cq, %bb.bf, %bb.ay, %bb.ax, %bb.au, %bb.bh, %bb.bg, %bb.b, %bb.bt, %bb.dw, %bb.bx, %bb.bv, %bb.bu, %bb.br, %bb.bq, %bb.bp, %bb.bn, %bb.bm, %bb.bj, %bb.al, %bb.ea, %bb.dy, %bb.ds, %bb.dq, %bb.dj, %bb.da, %bb.cx, %bb.cs, %bb.cl, %bb.ci, %bb.cf, %bb.am, %bb.ai, %bb.t, %bb.p
  %.0291 = phi ptr [ null, %bb.p ], [ null, %bb.t ], [ null, %bb.ai ], [ null, %bb.al ], [ null, %bb.am ], [ %i.fh, %bb.bq ], [ null, %bb.bj ], [ null, %bb.bm ], [ %i.fh, %bb.bn ], [ %i.fh, %bb.cs ], [ %i.fh, %bb.cx ], [ %i.fh, %bb.da ], [ %i.fh, %bb.dj ], [ %i.fh, %bb.dy ], [ null, %bb.b ], [ %i.fh, %bb.ea ], [ %i.fh, %bb.dw ], [ %i.fh, %bb.dq ], [ %i.fh, %bb.ds ], [ null, %bb.bf ], [ %i.fh, %bb.cl ], [ %i.fh, %bb.cf ], [ %i.fh, %bb.ci ], [ %i.fh, %bb.bx ], [ %i.fh, %bb.bv ], [ %i.fh, %bb.bu ], [ %i.fh, %bb.bt ], [ %i.fh, %bb.br ], [ %i.fh, %bb.bp ], [ null, %bb.bg ], [ null, %bb.bh ], [ null, %bb.au ], [ null, %bb.ax ], [ null, %bb.ay ], [ %i.fh, %bb.cq ], [ %i.fh, %._crit_edge474 ]
  %.0283 = phi i32 [ -1, %bb.p ], [ -1, %bb.t ], [ -1, %bb.ai ], [ -1, %bb.al ], [ -1, %bb.am ], [ -1, %bb.bq ], [ -1, %bb.bj ], [ -1, %bb.bm ], [ -1, %bb.bn ], [ -1, %bb.cs ], [ -1, %bb.cx ], [ -1, %bb.da ], [ -1, %bb.dj ], [ -1, %bb.dy ], [ -1, %bb.b ], [ -1, %bb.ea ], [ -1, %bb.dw ], [ 0, %bb.dq ], [ 0, %bb.ds ], [ -1, %bb.bf ], [ -1, %bb.cl ], [ -1, %bb.cf ], [ -1, %bb.ci ], [ -1, %bb.bx ], [ -1, %bb.bv ], [ -1, %bb.bu ], [ -1, %bb.bt ], [ -1, %bb.br ], [ -1, %bb.bp ], [ -1, %bb.bg ], [ -1, %bb.bh ], [ -1, %bb.au ], [ -1, %bb.ax ], [ -1, %bb.ay ], [ -1, %bb.cq ], [ -1, %._crit_edge474 ]
  %.1273 = phi ptr [ null, %bb.p ], [ null, %bb.t ], [ null, %bb.ai ], [ %i.cg, %bb.al ], [ %i.cg, %bb.am ], [ %.0272, %bb.bq ], [ null, %bb.bj ], [ %.0272, %bb.bm ], [ %.0272, %bb.bn ], [ %.0272, %bb.cs ], [ %.0272, %bb.cx ], [ %.0272, %bb.da ], [ %.0272, %bb.dj ], [ %.0272, %bb.dy ], [ null, %bb.b ], [ %.0272, %bb.ea ], [ %.0272, %bb.dw ], [ %.0272, %bb.dq ], [ %.0272, %bb.ds ], [ %i.cg, %bb.bf ], [ %.0272, %bb.cl ], [ %.0272, %bb.cf ], [ %.0272, %bb.ci ], [ %.0272, %bb.bx ], [ %.0272, %bb.bv ], [ %.0272, %bb.bu ], [ %.0272, %bb.bt ], [ %.0272, %bb.br ], [ %.0272, %bb.bp ], [ %i.cg, %bb.bg ], [ %i.cg, %bb.bh ], [ %i.cg, %bb.au ], [ %i.cg, %bb.ax ], [ %i.cg, %bb.ay ], [ %.0272, %bb.cq ], [ %.0272, %._crit_edge474 ]
  %.1270 = phi ptr [ null, %bb.p ], [ null, %bb.t ], [ null, %bb.ai ], [ null, %bb.al ], [ %i.cl, %bb.am ], [ %i.cl, %bb.bq ], [ %i.cl, %bb.bj ], [ %i.cl, %bb.bm ], [ %i.cl, %bb.bn ], [ %i.cl, %bb.cs ], [ %i.cl, %bb.cx ], [ %i.cl, %bb.da ], [ %i.cl, %bb.dj ], [ %i.cl, %bb.dy ], [ null, %bb.b ], [ %i.cl, %bb.ea ], [ %i.cl, %bb.dw ], [ %i.cl, %bb.dq ], [ %i.cl, %bb.ds ], [ %i.cl, %bb.bf ], [ %i.cl, %bb.cl ], [ %i.cl, %bb.cf ], [ %i.cl, %bb.ci ], [ %i.cl, %bb.bx ], [ %i.cl, %bb.bv ], [ %i.cl, %bb.bu ], [ %i.cl, %bb.bt ], [ %i.cl, %bb.br ], [ %i.cl, %bb.bp ], [ %i.cl, %bb.bg ], [ %i.cl, %bb.bh ], [ %i.cl, %bb.au ], [ %i.cl, %bb.ax ], [ %i.cl, %bb.ay ], [ %i.cl, %bb.cq ], [ %i.cl, %._crit_edge474 ]
  %.0268 = phi ptr [ null, %bb.p ], [ null, %bb.t ], [ null, %bb.ai ], [ null, %bb.al ], [ null, %bb.am ], [ null, %bb.bq ], [ null, %bb.bj ], [ null, %bb.bm ], [ null, %bb.bn ], [ null, %bb.cs ], [ null, %bb.cx ], [ null, %bb.da ], [ null, %bb.dj ], [ null, %bb.dy ], [ null, %bb.b ], [ %i.mg, %bb.ea ], [ null, %bb.dw ], [ null, %bb.dq ], [ null, %bb.ds ], [ null, %bb.bf ], [ null, %bb.cl ], [ null, %bb.cf ], [ null, %bb.ci ], [ null, %bb.bx ], [ null, %bb.bv ], [ null, %bb.bu ], [ null, %bb.bt ], [ null, %bb.br ], [ null, %bb.bp ], [ null, %bb.bg ], [ null, %bb.bh ], [ null, %bb.au ], [ null, %bb.ax ], [ null, %bb.ay ], [ null, %bb.cq ], [ null, %._crit_edge474 ]
  %i.nc = load ptr, ptr %i.b, align 16, !tbaa !12
  call void @CRYPTO_free(ptr noundef %i.nc, ptr noundef nonnull @.str.202, i32 noundef 1973) #11
  %i.nd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !12
  call void @CRYPTO_free(ptr noundef %i.ne, ptr noundef nonnull @.str.202, i32 noundef 1973) #11
  %i.nf = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ng = load ptr, ptr %i.nf, align 16, !tbaa !12
  call void @CRYPTO_free(ptr noundef %i.ng, ptr noundef nonnull @.str.202, i32 noundef 1973) #11
  %i.nh = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !12
  call void @CRYPTO_free(ptr noundef %i.ni, ptr noundef nonnull @.str.202, i32 noundef 1973) #11
  %i.nj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.nk = load ptr, ptr %i.nj, align 16, !tbaa !12
  call void @CRYPTO_free(ptr noundef %i.nk, ptr noundef nonnull @.str.202, i32 noundef 1973) #11
  %i.nl = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !12
  call void @CRYPTO_free(ptr noundef %i.nm, ptr noundef nonnull @.str.202, i32 noundef 1973) #11
  br label %.thread426

.thread426:                                       ; preds = %.thread401, %bb.dz
  %.0268437 = phi ptr [ null, %bb.dz ], [ %.0268, %.thread401 ]
  %.1270436 = phi ptr [ %i.cl, %bb.dz ], [ %.1270, %.thread401 ]
  %.1273435 = phi ptr [ %.0272, %bb.dz ], [ %.1273, %.thread401 ]
  %.0283434 = phi i32 [ 1, %bb.dz ], [ %.0283, %.thread401 ]
  %i.nn = phi i1 [ false, %bb.dz ], [ true, %.thread401 ]
  %.0291433 = phi ptr [ %i.fh, %bb.dz ], [ %.0291, %.thread401 ] ; 2 uses
  call void @CRYPTO_free(ptr noundef %.0268437, ptr noundef nonnull @.str.202, i32 noundef 1975) #11
  call void @X509_NAME_free(ptr noundef %.1270436) #11
  call void @X509_NAME_free(ptr noundef %.1273435) #11
  br i1 %i.nn, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %.thread426
  call void @X509_free(ptr noundef %.0291433) #11
  br label %bb.ed

bb.ec:                                            ; preds = %.thread426
  store ptr %.0291433, ptr %0, align 8, !tbaa !16
  br label %bb.ed

bb.ed:                                            ; preds = %bb.eb, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  ret i32 %.0283434
}

declare void @X509_REQ_free(ptr noundef) local_unnamed_addr #3

declare ptr @parse_name(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @X509_REQ_set_subject_name(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @X509_NAME_free(ptr noundef) local_unnamed_addr #3

declare ptr @X509_REQ_get_subject_name(ptr noundef) local_unnamed_addr #3

declare i32 @X509_NAME_entry_count(ptr noundef) local_unnamed_addr #3

declare ptr @X509_NAME_get_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @X509_NAME_ENTRY_get_data(ptr noundef) local_unnamed_addr #3

declare ptr @X509_NAME_ENTRY_get_object(ptr noundef) local_unnamed_addr #3

declare i32 @OBJ_obj2nid(ptr noundef) local_unnamed_addr #3

declare i32 @ASN1_UNIVERSALSTRING_to_string(ptr noundef) local_unnamed_addr #3

declare i32 @ASN1_PRINTABLE_type(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @X509_NAME_new() local_unnamed_addr #3

declare ptr @X509_NAME_dup(ptr noundef) local_unnamed_addr #3

declare i32 @OBJ_txt2nid(ptr noundef) local_unnamed_addr #3

declare ptr @OBJ_nid2obj(i32 noundef) local_unnamed_addr #3

declare i32 @X509_NAME_get_index_by_OBJ(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ASN1_STRING_cmp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @X509_NAME_add_entry(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @X509_new_ex(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @X509_get_serialNumber(ptr noundef) local_unnamed_addr #3

declare i32 @X509_set_issuer_name(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @set_cert_times(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ASN1_TIME_diff(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @X509_get0_notAfter(ptr noundef) local_unnamed_addr #3

declare i32 @X509_set_subject_name(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @X509_set_pubkey(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @X509V3_set_issuer_pkey(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @cert_matches_key(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @copy_extensions(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @X509_NAME_get_index_by_NID(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @X509_NAME_delete_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @X509_NAME_ENTRY_free(ptr noundef) local_unnamed_addr #3

declare ptr @X509_NAME_oneline(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @TXT_DB_get_by_index(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @X509_print_ex(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ASN1_TIME_print_ex(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @X509_get0_pubkey(ptr noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_missing_parameters(ptr noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_copy_parameters(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @do_X509_sign(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @app_malloc(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @TXT_DB_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @i2a_ASN1_OBJECT(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @X509_print(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @do_X509_verify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @X509_to_X509_REQ(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @i2d_X509_bio(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @PEM_write_bio_X509(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @CONF_load(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @CONF_get_section(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @X509_REQ_new() local_unnamed_addr #3

declare ptr @NETSCAPE_SPKI_b64_decode(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @X509_NAME_add_entry_by_NID(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @NETSCAPE_SPKI_get_pubkey(ptr noundef) local_unnamed_addr #3

declare i32 @NETSCAPE_SPKI_verify(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @X509_REQ_set_pubkey(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @CONF_free(ptr noundef) local_unnamed_addr #3

declare void @NETSCAPE_SPKI_free(ptr noundef) local_unnamed_addr #3

declare ptr @ASN1_INTEGER_to_BN(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @index_name_cmp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @X509_gmtime_adj(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @ASN1_UTCTIME_free(ptr noundef) local_unnamed_addr #3

declare void @make_uppercase(ptr noundef) local_unnamed_addr #3

declare i32 @X509_REVOKED_set_revocationDate(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ASN1_ENUMERATED_new() local_unnamed_addr #3

declare i32 @ASN1_ENUMERATED_set(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @X509_REVOKED_add1_ext_i2d(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare void @ASN1_ENUMERATED_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { cold }
attributes #14 = { nounwind willreturn memory(none) }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTS9bignum_st", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 omnipotent char", !11, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 _ZTS7x509_st", !11, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 _ZTS6bio_st", !11, i64 0}
!22 = distinct !{null}
!23 = distinct !{null}
!24 = !{!25, !6, i64 0}
!25 = !{!"db_attr_st", !6, i64 0}
!26 = !{!7, !7, i64 0}
!27 = !{!28, !29, i64 8}
!28 = !{!"ca_db_st", !25, i64 0, !29, i64 8, !13, i64 16, !30, i64 24}
!29 = !{!"p1 _ZTS9txt_db_st", !11, i64 0}
!30 = !{!"stat", !15, i64 0, !15, i64 8, !15, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !31, i64 72, !31, i64 88, !31, i64 104, !7, i64 120}
!31 = !{!"timespec", !15, i64 0, !15, i64 8}
!32 = !{!33, !34, i64 8}
!33 = !{!"txt_db_st", !6, i64 0, !34, i64 8, !35, i64 16, !36, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !37, i64 56}
!34 = !{!"p1 _ZTS24stack_st_OPENSSL_PSTRING", !11, i64 0}
!35 = !{!"p2 _ZTS23lhash_st_OPENSSL_STRING", !36, i64 0}
!36 = !{!"any p2 pointer", !11, i64 0}
!37 = !{!"p2 omnipotent char", !36, i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"p1 short", !11, i64 0}
!40 = distinct !{!40, !19}
!41 = !{!42, !42, i64 0}
!42 = !{!"short", !7, i64 0}
!43 = distinct !{!43, !19}
!44 = !{!45, !45, i64 0}
!45 = !{!"p1 _ZTS7conf_st", !11, i64 0}
!46 = distinct !{!46, !19}
!47 = !{!48, !48, i64 0}
!48 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!49 = distinct !{!49, !19}
!50 = distinct !{!50, !19}
!51 = distinct !{!51, !19}
!52 = !{!53, !53, i64 0}
!53 = !{!"p1 _ZTS14asn1_object_st", !11, i64 0}
!54 = !{!55, !55, i64 0}
!55 = !{!"p1 _ZTS14asn1_string_st", !11, i64 0}
!56 = distinct !{!56, !19}
!57 = !{!58, !13, i64 8}
!58 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16}
!59 = distinct !{!59, !19}
!60 = !{!58, !13, i64 16}
!61 = !{!62, !6, i64 0}
!62 = !{!"asn1_string_st", !6, i64 0, !6, i64 4, !13, i64 8, !15, i64 16}
!63 = !{!62, !13, i64 8}
!64 = !{!33, !15, i64 32}
!65 = !{!62, !6, i64 4}
!66 = distinct !{!66, !19}
!67 = distinct !{!67, !19}
!68 = distinct !{!68, !19}
!69 = distinct !{!69, !19}
!70 = !{!28, !6, i64 0}
end_hunk_1
