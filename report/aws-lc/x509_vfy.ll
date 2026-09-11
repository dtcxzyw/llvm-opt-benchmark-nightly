Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/x509_vfy?download=true
inline.NumInlined: 149
inline.NumDeleted: 40
begin_hunk_0_@X509_STORE_CTX_set0_param:bb.a
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @X509_VERIFY_PARAM_free(ptr noundef nonnull %i.b) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %1, ptr %i.a, align 8, !tbaa !21
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @X509_STORE_CTX_add_custom_crit_oid(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 14, i32 noundef 0, i32 noundef 67, ptr noundef nonnull @.str, i32 noundef 1873) #12
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %.not14 = icmp eq ptr %1, null
  br i1 %.not14, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 14, i32 noundef 0, i32 noundef 67, ptr noundef nonnull @.str, i32 noundef 1874) #12
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.a = tail call ptr @OBJ_dup(ptr noundef nonnull %1) #12 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.f = tail call ptr @OPENSSL_sk_new_null() #12 ; 3 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !53
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @ASN1_OBJECT_free(ptr noundef nonnull %i.a) #12
  br label %bb.k

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.h = phi ptr [ %i.f, %bb.g ], [ %i.d, %bb.f ]
  %i.i = tail call i64 @OPENSSL_sk_push(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a) #12
  %.not15 = icmp eq i64 %i.i, 0
  br i1 %.not15, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @ASN1_OBJECT_free(ptr noundef nonnull %i.a) #12
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %bb.e, %bb.i, %bb.d, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.j ], [ 0, %bb.h ], [ 0, %bb.e ], [ 1, %bb.i ]
  ret i32 %.1
}

declare ptr @OBJ_dup(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @X509_STORE_CTX_set_verify_crit_oids(ptr nofree noundef writeonly captures(none) initializes((80, 88)) %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %1, ptr %i.a, align 8, !tbaa !54
  ret void
}

declare ptr @OPENSSL_sk_new_null() local_unnamed_addr #2

declare i64 @OPENSSL_sk_push(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_dup(ptr noundef) local_unnamed_addr #2

declare i64 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_value(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @x509v3_cache_extensions(ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_delete_ptr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

declare ptr @OPENSSL_sk_set(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_pop(ptr noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_free(ptr noundef) local_unnamed_addr #2

declare i32 @X509_STORE_CTX_get1_issuer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @X509_check_ca(ptr noundef) local_unnamed_addr #2

declare i32 @X509_check_purpose(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @X509_get_ext_by_critical(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @X509_get_ext(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @X509_supported_extension(ptr noundef) local_unnamed_addr #2

declare i32 @OBJ_cmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @X509_get0_pubkey(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_id(ptr noundef) local_unnamed_addr #2

declare ptr @EVP_PKEY_get0_EC_KEY(ptr noundef) local_unnamed_addr #2

declare i32 @EC_KEY_decoded_from_explicit_params(ptr noundef) local_unnamed_addr #2

declare i32 @NAME_CONSTRAINTS_check(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @NAME_CONSTRAINTS_check_CN(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @X509_get_ext_d2i(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @GENERAL_NAMES_free(ptr noundef) local_unnamed_addr #2

declare i32 @X509_check_email(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @X509_check_ip(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @X509_check_host(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare i32 @X509_check_trust(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @X509_STORE_CTX_get1_certs(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @X509_get_subject_name(ptr noundef) local_unnamed_addr #2

declare void @X509_CRL_free(ptr noundef) #2

declare i32 @X509_CRL_get0_by_cert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @X509_policy_check(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @X509_verify(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @X509_get_issuer_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @get_crl_sk(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = load i32, ptr %3, align 4, !tbaa !66     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !45   ; 3 uses
  %i.f = tail call i64 @OPENSSL_sk_num(ptr noundef %4) #12
  %.not65 = icmp eq i64 %i.f, 0
  br i1 %.not65, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %get_crl_score.exit.thread
  %.not = icmp eq ptr %.140, null
  br i1 %.not, label %._crit_edge.thread, label %bb.ae

bb.b:                                             ; preds = %.lr.ph, %get_crl_score.exit.thread
  %.03762 = phi i64 [ 0, %.lr.ph ], [ %i.ef, %get_crl_score.exit.thread ] ; 2 uses
  %.03861 = phi ptr [ null, %.lr.ph ], [ %.1, %get_crl_score.exit.thread ] ; 7 uses
  %.03960 = phi ptr [ null, %.lr.ph ], [ %.140, %get_crl_score.exit.thread ] ; 9 uses
  %.04159 = phi i32 [ %i.c, %.lr.ph ], [ %.142, %get_crl_score.exit.thread ] ; 9 uses
  %i.k = call ptr @OPENSSL_sk_value(ptr noundef %4, i64 noundef %.03762) #12 ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !67
  %i.n = and i32 %i.m, 98
  %or.cond.i = icmp eq i32 %i.n, 0
  br i1 %or.cond.i, label %bb.c, label %get_crl_score.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.o = call ptr @X509_get_issuer_name(ptr noundef %i.e) #12
  %i.p = call ptr @X509_CRL_get_issuer(ptr noundef nonnull %i.k) #12
  %i.q = call i32 @X509_NAME_cmp(ptr noundef %i.o, ptr noundef %i.p) #12
  %.not13.i = icmp eq i32 %i.q, 0
  br i1 %.not13.i, label %bb.d, label %get_crl_score.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !61
  %i.t = and i32 %i.s, 512
  %i.u = call fastcc i32 @check_crl_time(ptr noundef %0, ptr noundef nonnull %i.k, i32 noundef 0)
  %5 = shl nuw nsw i32 %i.u, 7
  %i.v = or disjoint i32 %5, %i.t
  %i.w = call ptr @X509_CRL_get_issuer(ptr noundef nonnull %i.k) #12
  %i.x = load i32, ptr %i.g, align 8, !tbaa !46   ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.aa = call i64 @OPENSSL_sk_num(ptr noundef %i.z) #12
  %i.ab = add i64 %i.aa, -1
  %.not.i.i = icmp ne i64 %i.ab, %i.y
  %i.ac = zext i1 %.not.i.i to i32
  %spec.select.i.i = add nsw i32 %i.x, %i.ac      ; 2 uses
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.ae = sext i32 %spec.select.i.i to i64
  %i.af = call ptr @OPENSSL_sk_value(ptr noundef %i.ad, i64 noundef %i.ae) #12 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !119
  %i.ai = call i32 @X509_check_akid(ptr noundef %i.af, ptr noundef %i.ah) #12
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %.loopexit51.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.d
  %.127.i.i = add i32 %spec.select.i.i, 1         ; 2 uses
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.al = call i64 @OPENSSL_sk_num(ptr noundef %i.ak) #12
  %i.am = trunc i64 %i.al to i32
  %i.an = icmp slt i32 %.127.i.i, %i.am
  br i1 %i.an, label %.lr.ph.preheader.i.i, label %get_crl_score.exit.thread

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %i.ao = sext i32 %.127.i.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.ao, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.f ] ; 2 uses
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.aq = call ptr @OPENSSL_sk_value(ptr noundef %i.ap, i64 noundef %indvars.iv.i.i) #12 ; 3 uses
  %i.ar = call ptr @X509_get_subject_name(ptr noundef %i.aq) #12
  %i.as = call i32 @X509_NAME_cmp(ptr noundef %i.ar, ptr noundef %i.w) #12
  %.not26.i.i = icmp eq i32 %i.as, 0
  br i1 %.not26.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.at = load ptr, ptr %i.ag, align 8, !tbaa !119
  %i.au = call i32 @X509_check_akid(ptr noundef %i.aq, ptr noundef %i.at) #12
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %.loopexit51.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.ax = call i64 @OPENSSL_sk_num(ptr noundef %i.aw) #12
  %sext.i.i = shl i64 %i.ax, 32
  %i.ay = ashr exact i64 %sext.i.i, 32
  %i.az = icmp slt i64 %indvars.iv.next.i.i, %i.ay
  br i1 %i.az, label %.lr.ph.i.i, label %get_crl_score.exit.thread, !llvm.loop !113

.loopexit51.i:                                    ; preds = %bb.e, %bb.d
  %.sink33.i.i = phi i32 [ 28, %bb.d ], [ 12, %bb.e ]
  %.lcssa.sink.i.i = phi ptr [ %i.af, %bb.d ], [ %i.aq, %bb.e ]
  %i.ba = or disjoint i32 %.sink33.i.i, %i.v
  %6 = xor i32 %i.ba, 544                         ; 7 uses
  %i.bb = load i32, ptr %i.l, align 8, !tbaa !67  ; 3 uses
  %i.bc = and i32 %i.bb, 16
  %.not.i19.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i19.i, label %bb.g, label %get_crl_score.exit

bb.g:                                             ; preds = %.loopexit51.i
  %i.bd = load i32, ptr %i.i, align 8, !tbaa !41
  %i.be = and i32 %i.bd, 16
  %.not26.i20.i = icmp eq i32 %i.be, 0
  br i1 %.not26.i20.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = and i32 %i.bb, 4
  %.not28.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not28.i.i, label %bb.j, label %get_crl_score.exit

bb.i:                                             ; preds = %bb.g
  %i.bg = and i32 %i.bb, 8
  %.not27.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not27.i.i, label %bb.j, label %get_crl_score.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !120
  %i.bi = call i64 @OPENSSL_sk_num(ptr noundef %i.bh) #12
  %.not49.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not49.i.i, label %._crit_edge.i.i, label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  br label %bb.k

bb.k:                                             ; preds = %idp_check_dp.exit.thread.i.i, %.lr.ph.i21.i
  %.02048.i.i = phi i64 [ 0, %.lr.ph.i21.i ], [ %i.dk, %idp_check_dp.exit.thread.i.i ] ; 2 uses
  %i.bk = load ptr, ptr %i.j, align 8, !tbaa !120
  %i.bl = call ptr @OPENSSL_sk_value(ptr noundef %i.bk, i64 noundef %.02048.i.i) #12 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !123
  %.not29.i.i = icmp eq ptr %i.bn, null
  br i1 %.not29.i.i, label %bb.l, label %idp_check_dp.exit.thread.i.i

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !124
  %.not30.i.i = icmp eq ptr %i.bp, null
  br i1 %.not30.i.i, label %bb.m, label %idp_check_dp.exit.thread.i.i

bb.m:                                             ; preds = %bb.l
  %i.bq = load ptr, ptr %i.bj, align 8, !tbaa !125 ; 2 uses
  %.not31.i.i = icmp eq ptr %i.bq, null
  br i1 %.not31.i.i, label %idp_check_dp.exit.thread.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !127 ; 7 uses
  %.not32.i.i = icmp eq ptr %i.br, null
  br i1 %.not32.i.i, label %idp_check_dp.exit.thread.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = load ptr, ptr %i.bl, align 8, !tbaa !128 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i, label %.loopexit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !131
  %i.bu = icmp eq i32 %i.bt, 1
  br i1 %i.bu, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !132 ; 3 uses
  %.not46.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not46.i.i.i, label %idp_check_dp.exit.thread.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = load i32, ptr %i.br, align 8, !tbaa !131
  %i.by = icmp eq i32 %i.bx, 1
  br i1 %i.by, label %bb.s, label %.preheader54.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !132 ; 2 uses
  %.not51.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not51.i.i.i, label %idp_check_dp.exit.thread.i.i, label %idp_check_dp.exit.i.i

bb.t:                                             ; preds = %bb.p
  %i.cb = load i32, ptr %i.br, align 8, !tbaa !131
  %i.cc = icmp eq i32 %i.cb, 1
  br i1 %i.cc, label %bb.u, label %.preheader.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.cd = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !132 ; 2 uses
  %.not45.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not45.i.i.i, label %idp_check_dp.exit.thread.i.i, label %.preheader54.i.i.i

.preheader54.i.i.i:                               ; preds = %bb.u, %bb.r
  %.sink81.i.i.i = phi ptr [ %i.br, %bb.r ], [ %i.bs, %bb.u ]
  %.038.ph.i.i.i = phi ptr [ %i.bw, %bb.r ], [ %i.ce, %bb.u ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.sink81.i.i.i, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !133 ; 3 uses
  %i.ch = call i64 @OPENSSL_sk_num(ptr noundef %i.cg) #12
  %.not63.i.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not63.i.i.i, label %idp_check_dp.exit.thread.i.i, label %.lr.ph.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.t
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !133
  %i.ck = call i64 @OPENSSL_sk_num(ptr noundef %i.cj) #12
  %.not64.i.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not64.i.i.i, label %idp_check_dp.exit.thread.i.i, label %.lr.ph62.i.i.i

.lr.ph62.i.i.i:                                   ; preds = %.preheader.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 3 uses
  br label %bb.x

.lr.ph.i.i.i:                                     ; preds = %.preheader54.i.i.i, %bb.w
  %.03656.i.i.i = phi i64 [ %i.cr, %bb.w ], [ 0, %.preheader54.i.i.i ] ; 2 uses
  %i.cm = call ptr @OPENSSL_sk_value(ptr noundef %i.cg, i64 noundef %.03656.i.i.i) #12 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !63
  %.not49.i.i.i = icmp eq i32 %i.cn, 4
  br i1 %.not49.i.i.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !133
  %i.cq = call i32 @X509_NAME_cmp(ptr noundef nonnull %.038.ph.i.i.i, ptr noundef %i.cp) #12
  %.not50.i.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not50.i.i.i, label %.loopexit.i, label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph.i.i.i
  %i.cr = add nuw i64 %.03656.i.i.i, 1            ; 2 uses
  %i.cs = call i64 @OPENSSL_sk_num(ptr noundef %i.cg) #12
  %i.ct = icmp ult i64 %i.cr, %i.cs
  br i1 %i.ct, label %.lr.ph.i.i.i, label %idp_check_dp.exit.thread.i.i, !llvm.loop !114

bb.x:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph62.i.i.i
  %.161.i.i.i = phi i64 [ 0, %.lr.ph62.i.i.i ], [ %i.df, %._crit_edge.i.i.i ] ; 2 uses
  %i.cu = load ptr, ptr %i.ci, align 8, !tbaa !133
  %i.cv = call ptr @OPENSSL_sk_value(ptr noundef %i.cu, i64 noundef %.161.i.i.i) #12
  %i.cw = load ptr, ptr %i.cl, align 8, !tbaa !133
  %i.cx = call i64 @OPENSSL_sk_num(ptr noundef %i.cw) #12
  %.not65.i.i.i = icmp eq i64 %i.cx, 0
  br i1 %.not65.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph60.i.i.i

bb.y:                                             ; preds = %.lr.ph60.i.i.i
  %i.cy = add nuw i64 %.059.i.i.i, 1              ; 2 uses
  %i.cz = load ptr, ptr %i.cl, align 8, !tbaa !133
  %i.da = call i64 @OPENSSL_sk_num(ptr noundef %i.cz) #12
  %i.db = icmp ult i64 %i.cy, %i.da
  br i1 %i.db, label %.lr.ph60.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !115

.lr.ph60.i.i.i:                                   ; preds = %bb.x, %bb.y
  %.059.i.i.i = phi i64 [ %i.cy, %bb.y ], [ 0, %bb.x ] ; 2 uses
  %i.dc = load ptr, ptr %i.cl, align 8, !tbaa !133
  %i.dd = call ptr @OPENSSL_sk_value(ptr noundef %i.dc, i64 noundef %.059.i.i.i) #12
  %i.de = call i32 @GENERAL_NAME_cmp(ptr noundef %i.cv, ptr noundef %i.dd) #12
  %.not48.i.i.i = icmp eq i32 %i.de, 0
  br i1 %.not48.i.i.i, label %.loopexit.i, label %bb.y

._crit_edge.i.i.i:                                ; preds = %bb.y, %bb.x
  %i.df = add nuw i64 %.161.i.i.i, 1              ; 2 uses
  %i.dg = load ptr, ptr %i.ci, align 8, !tbaa !133
  %i.dh = call i64 @OPENSSL_sk_num(ptr noundef %i.dg) #12
  %i.di = icmp ult i64 %i.df, %i.dh
  br i1 %i.di, label %bb.x, label %idp_check_dp.exit.thread.i.i, !llvm.loop !116

idp_check_dp.exit.i.i:                            ; preds = %bb.s
  %i.dj = call i32 @X509_NAME_cmp(ptr noundef nonnull %i.bw, ptr noundef nonnull %i.ca) #12
  %.not52.i.not.i.i = icmp eq i32 %i.dj, 0
  br i1 %.not52.i.not.i.i, label %.loopexit.i, label %idp_check_dp.exit.thread.i.i

idp_check_dp.exit.thread.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.w, %idp_check_dp.exit.i.i, %.preheader.i.i.i, %.preheader54.i.i.i, %bb.u, %bb.s, %bb.q, %bb.n, %bb.m, %bb.l, %bb.k
  %i.dk = add nuw i64 %.02048.i.i, 1              ; 2 uses
  %i.dl = load ptr, ptr %i.j, align 8, !tbaa !120
  %i.dm = call i64 @OPENSSL_sk_num(ptr noundef %i.dl) #12
  %i.dn = icmp ult i64 %i.dk, %i.dm
  br i1 %i.dn, label %bb.k, label %._crit_edge.i.i, !llvm.loop !117

._crit_edge.i.i:                                  ; preds = %idp_check_dp.exit.thread.i.i, %bb.j
  %i.do = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !125 ; 2 uses
  %.not34.i.i = icmp eq ptr %i.dp, null
  br i1 %.not34.i.i, label %bb.z, label %crl_crldp_check.exit.i

crl_crldp_check.exit.i:                           ; preds = %._crit_edge.i.i
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !127
  %.not35.i.not.i = icmp eq ptr %i.dq, null
  %i.dr = or disjoint i32 %6, 256
  %spec.select47.i = select i1 %.not35.i.not.i, i32 %i.dr, i32 %6
  br label %get_crl_score.exit

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.ds = or disjoint i32 %6, 256
  br label %get_crl_score.exit

.loopexit.i:                                      ; preds = %idp_check_dp.exit.i.i, %bb.o, %bb.v, %.lr.ph60.i.i.i
  %i.dt = or disjoint i32 %6, 320
  br label %get_crl_score.exit

get_crl_score.exit:                               ; preds = %.loopexit51.i, %bb.h, %bb.i, %crl_crldp_check.exit.i, %bb.z, %.loopexit.i
  %.0.i = phi i32 [ %6, %.loopexit51.i ], [ %6, %bb.h ], [ %6, %bb.i ], [ %spec.select47.i, %crl_crldp_check.exit.i ], [ %i.ds, %bb.z ], [ %i.dt, %.loopexit.i ] ; 3 uses
  %i.du = icmp slt i32 %.0.i, %.04159
  br i1 %i.du, label %get_crl_score.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %get_crl_score.exit
  %i.dv = icmp eq i32 %.0.i, %.04159
  %i.dw = icmp ne ptr %.03960, null
  %or.cond3 = select i1 %i.dv, i1 %i.dw, i1 false
  br i1 %or.cond3, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.dx = call ptr @X509_CRL_get0_lastUpdate(ptr noundef nonnull %.03960) #12
  %i.dy = call ptr @X509_CRL_get0_lastUpdate(ptr noundef nonnull %i.k) #12
  %i.dz = call i32 @ASN1_TIME_diff(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.dx, ptr noundef %i.dy) #12
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %.critedge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eb = load i32, ptr %i.a, align 4, !tbaa !66
  %i.ec = icmp sgt i32 %i.eb, 0
  %i.ed = load i32, ptr %i.b, align 4
  %i.ee = icmp sgt i32 %i.ed, 0
  %or.cond5.not = select i1 %i.ec, i1 true, i1 %i.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br i1 %or.cond5.not, label %bb.ad, label %get_crl_score.exit.thread

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  br label %get_crl_score.exit.thread

.critedge:                                        ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %get_crl_score.exit.thread

get_crl_score.exit.thread:                        ; preds = %bb.f, %.preheader.i.i, %bb.b, %bb.c, %.critedge, %get_crl_score.exit, %bb.ac, %bb.ad
  %.142 = phi i32 [ %.04159, %bb.ac ], [ %.0.i, %bb.ad ], [ %.04159, %get_crl_score.exit ], [ %.04159, %.critedge ], [ %.04159, %bb.c ], [ %.04159, %bb.b ], [ %.04159, %.preheader.i.i ], [ %.04159, %bb.f ] ; 4 uses
  %.140 = phi ptr [ %.03960, %bb.ac ], [ %i.k, %bb.ad ], [ %.03960, %get_crl_score.exit ], [ %.03960, %.critedge ], [ %.03960, %bb.c ], [ %.03960, %bb.b ], [ %.03960, %.preheader.i.i ], [ %.03960, %bb.f ] ; 4 uses
  %.1 = phi ptr [ %.03861, %bb.ac ], [ %.lcssa.sink.i.i, %bb.ad ], [ %.03861, %get_crl_score.exit ], [ %.03861, %.critedge ], [ %.03861, %bb.c ], [ %.03861, %bb.b ], [ %.03861, %.preheader.i.i ], [ %.03861, %bb.f ] ; 2 uses
  %i.ef = add nuw i64 %.03762, 1                  ; 2 uses
  %i.eg = call i64 @OPENSSL_sk_num(ptr noundef %4) #12
  %i.eh = icmp ult i64 %i.ef, %i.eg
  br i1 %i.eh, label %bb.b, label %._crit_edge, !llvm.loop !118

bb.ae:                                            ; preds = %._crit_edge
  %i.ei = load ptr, ptr %1, align 8, !tbaa !56    ; 2 uses
  %.not46 = icmp eq ptr %i.ei, null
  br i1 %.not46, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @X509_CRL_free(ptr noundef nonnull %i.ei) #12
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  store ptr %.140, ptr %1, align 8, !tbaa !56
  store ptr %.1, ptr %2, align 8, !tbaa !43
  store i32 %.142, ptr %3, align 4, !tbaa !66
  %i.ej = call i32 @X509_CRL_up_ref(ptr noundef nonnull %.140) #12 ; 0 uses
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.ag, %._crit_edge
  %.041.lcssa86 = phi i32 [ %.142, %._crit_edge ], [ %.142, %bb.ag ], [ %i.c, %bb.a ]
  %i.ek = icmp sgt i32 %.041.lcssa86, 895
  %.47 = zext i1 %i.ek to i32
  ret i32 %.47
}

declare i32 @ASN1_TIME_diff(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @X509_CRL_get0_lastUpdate(ptr noundef) local_unnamed_addr #2

declare i32 @X509_CRL_up_ref(ptr noundef) local_unnamed_addr #2

declare i32 @X509_NAME_cmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @X509_CRL_get_issuer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @check_crl_time(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !28   ; 2 uses
  %i.g = and i64 %i.f, 2097152
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %.not30 = icmp eq i32 %2, 0                     ; 6 uses
  br i1 %.not30, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %1, ptr %i.h, align 8, !tbaa !58
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = and i64 %i.f, 2
  %.not31 = icmp eq i64 %i.i, 0
  br i1 %.not31, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i64, ptr %i.d, align 8, !tbaa !50
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.k = tail call i64 @time(ptr noundef null) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i64 [ %i.j, %bb.e ], [ %i.k, %bb.f ]  ; 2 uses
  %i.l = tail call ptr @X509_CRL_get0_lastUpdate(ptr noundef %1) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.m = call i32 @ASN1_TIME_to_posix(ptr noundef %i.l, ptr noundef nonnull %i.b) #12
  %.not.i = icmp eq i32 %i.m, 0
  %i.n = load i64, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br i1 %.not.i, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  br i1 %.not30, label %bb.v, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 15, ptr %i.o, align 4, !tbaa !44
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.r = call i32 %i.q(i32 noundef 0, ptr noundef nonnull %0) #12, !inline_history !0 ; 2 uses
  %or.cond.i = icmp ult i32 %i.r, 2
  br i1 %or.cond.i, label %call_verify_cb.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @abort() #13
  unreachable

call_verify_cb.exit:                              ; preds = %bb.i
  %.not32 = icmp eq i32 %i.r, 0
  br i1 %.not32, label %bb.v, label %.thread

bb.k:                                             ; preds = %bb.g
  %.not2.i = icmp sgt i64 %i.n, %.0
  br i1 %.not2.i, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  br i1 %.not30, label %bb.v, label %.thread46

.thread46:                                        ; preds = %bb.l
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 11, ptr %i.s, align 4, !tbaa !44
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !47
  %i.v = call i32 %i.u(i32 noundef 0, ptr noundef nonnull %0) #12, !inline_history !0 ; 2 uses
  %or.cond.i37 = icmp ult i32 %i.v, 2
  br i1 %or.cond.i37, label %call_verify_cb.exit38, label %bb.m

bb.m:                                             ; preds = %.thread46
  call void @abort() #13
  unreachable

call_verify_cb.exit38:                            ; preds = %.thread46
  %.not33 = icmp eq i32 %i.v, 0
  br i1 %.not33, label %bb.v, label %.thread

.thread:                                          ; preds = %call_verify_cb.exit, %call_verify_cb.exit38, %bb.k
  %i.w = call ptr @X509_CRL_get0_nextUpdate(ptr noundef %1) #12
  %.not34 = icmp eq ptr %i.w, null
  br i1 %.not34, label %bb.u, label %bb.n

bb.n:                                             ; preds = %.thread
  %i.x = call ptr @X509_CRL_get0_nextUpdate(ptr noundef %1) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.y = call i32 @ASN1_TIME_to_posix(ptr noundef %i.x, ptr noundef nonnull %i.a) #12
  %.not.i39 = icmp eq i32 %i.y, 0
  %i.z = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br i1 %.not.i39, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  br i1 %.not30, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 16, ptr %i.aa, align 4, !tbaa !44
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !47
  %i.ad = call i32 %i.ac(i32 noundef 0, ptr noundef nonnull %0) #12, !inline_history !0 ; 2 uses
  %or.cond.i42 = icmp ult i32 %i.ad, 2
  br i1 %or.cond.i42, label %call_verify_cb.exit43, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @abort() #13
  unreachable

call_verify_cb.exit43:                            ; preds = %bb.p
  %.not35 = icmp eq i32 %i.ad, 0
  br i1 %.not35, label %bb.v, label %.thread49
end_hunk_0
