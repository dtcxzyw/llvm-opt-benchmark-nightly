Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/x509_vfy?download=true
inline.NumInlined: 136
inline.NumDeleted: 37
begin_hunk_0_@X509_STORE_CTX_set_depth:bb.a
  ret void
}

declare void @X509_VERIFY_PARAM_set_depth(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define void @X509_STORE_CTX_set_flags(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = tail call i32 @X509_VERIFY_PARAM_set_flags(ptr noundef %i.b, i64 noundef %1) #12 ; 0 uses
  ret void
}

declare i32 @X509_VERIFY_PARAM_set_flags(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define void @X509_STORE_CTX_set_time_posix(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  tail call void @X509_VERIFY_PARAM_set_time_posix(ptr noundef %i.b, i64 noundef %2) #12
  ret void
}

declare void @X509_VERIFY_PARAM_set_time_posix(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define void @X509_STORE_CTX_set_time(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  tail call void @X509_VERIFY_PARAM_set_time_posix(ptr noundef %i.b, i64 noundef %2) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @X509_STORE_CTX_get0_cert(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @X509_STORE_CTX_set_verify_cb(ptr nofree noundef writeonly captures(none) initializes((48, 56)) %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1, ptr %i.a, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define i32 @X509_STORE_CTX_set_default(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @X509_VERIFY_PARAM_lookup(ptr noundef %1) #12 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.d = tail call i32 @X509_VERIFY_PARAM_inherit(ptr noundef %i.c, ptr noundef nonnull %i.a) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @X509_STORE_CTX_get0_param(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define void @X509_STORE_CTX_set0_param(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @X509_VERIFY_PARAM_free(ptr noundef nonnull %i.b) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %1, ptr %i.a, align 8, !tbaa !24
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

declare i32 @NAME_CONSTRAINTS_check(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @X509_get_subject_name(ptr noundef) local_unnamed_addr #2

declare i32 @X509_NAME_get_index_by_NID(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @X509_NAME_get_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @X509_NAME_ENTRY_get_data(ptr noundef) local_unnamed_addr #2

declare i32 @ASN1_STRING_to_UTF8(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @x509v3_looks_like_dns_name(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @X509_check_email(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @X509_check_ip(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @X509_check_host(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare i32 @X509_check_trust(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @X509_STORE_CTX_get1_certs(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @X509_CRL_free(ptr noundef) #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL10get_crl_skP17x509_store_ctx_stPP11X509_crl_stPP7x509_stPiP17stack_st_X509_CRL(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = load i32, ptr %3, align 4, !tbaa !53     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !45   ; 3 uses
  %i.f = tail call i64 @OPENSSL_sk_num(ptr noundef %4) #12
  %.not65 = icmp eq i64 %i.f, 0
  br i1 %.not65, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZL13get_crl_scoreP17x509_store_ctx_stPP7x509_stP11X509_crl_stS2_.exit.thread
  %.not = icmp eq ptr %.140, null
  br i1 %.not, label %._crit_edge.thread, label %bb.ac

bb.b:                                             ; preds = %.lr.ph, %_ZL13get_crl_scoreP17x509_store_ctx_stPP7x509_stP11X509_crl_stS2_.exit.thread
  %.03762 = phi i64 [ 0, %.lr.ph ], [ %i.ef, %_ZL13get_crl_scoreP17x509_store_ctx_stPP7x509_stP11X509_crl_stS2_.exit.thread ] ; 2 uses
  %.03861 = phi ptr [ null, %.lr.ph ], [ %.1, %_ZL13get_crl_scoreP17x509_store_ctx_stPP7x509_stP11X509_crl_stS2_.exit.thread ] ; 7 uses
  %.03960 = phi ptr [ null, %.lr.ph ], [ %.140, %_ZL13get_crl_scoreP17x509_store_ctx_stPP7x509_stP11X509_crl_stS2_.exit.thread ] ; 9 uses
  %.04159 = phi i32 [ %i.c, %.lr.ph ], [ %.142, %_ZL13get_crl_scoreP17x509_store_ctx_stPP7x509_stP11X509_crl_stS2_.exit.thread ] ; 9 uses
  %i.k = call ptr @OPENSSL_sk_value(ptr noundef %4, i64 noundef %.03762) #12 ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !59
  %i.n = and i32 %i.m, 98
  %or.cond.i = icmp eq i32 %i.n, 0
  br i1 %or.cond.i, label %bb.c, label %_ZL13get_crl_scoreP17x509_store_ctx_stPP7x509_stP11X509_crl_stS2_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.o = call ptr @X509_get_issuer_name(ptr noundef %i.e) #12
  %i.p = call ptr @X509_CRL_get_issuer(ptr noundef nonnull %i.k) #12
  %i.q = call i32 @X509_NAME_cmp(ptr noundef %i.o, ptr noundef %i.p) #12
  %.not13.i = icmp eq i32 %i.q, 0
  br i1 %.not13.i, label %bb.d, label %_ZL13get_crl_scoreP17x509_store_ctx_stPP7x509_stP11X509_crl_stS2_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !60
  %i.t = and i32 %i.s, 512
  %.not14.i = icmp eq i32 %i.t, 0
  %spec.select.i = select i1 %.not14.i, i32 288, i32 32 ; 2 uses
  %i.u = call fastcc noundef i32 @_ZL14check_crl_timeP17x509_store_ctx_stP11X509_crl_sti(ptr noundef %0, ptr noundef nonnull %i.k, i32 noundef 0)
  %.not15.i = icmp eq i32 %i.u, 0
  %i.v = or disjoint i32 %spec.select.i, 64
  %.1.i = select i1 %.not15.i, i32 %spec.select.i, i32 %i.v
  %i.w = call ptr @X509_CRL_get_issuer(ptr noundef nonnull %i.k) #12
  %i.x = load i32, ptr %i.g, align 8, !tbaa !48   ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.aa = call i64 @OPENSSL_sk_num(ptr noundef %i.z) #12
  %i.ab = add i64 %i.aa, -1
  %.not.i.i = icmp ne i64 %i.ab, %i.y
  %i.ac = zext i1 %.not.i.i to i32
  %spec.select.i.i = add nsw i32 %i.x, %i.ac      ; 2 uses
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.ae = sext i32 %spec.select.i.i to i64
  %i.af = call ptr @OPENSSL_sk_value(ptr noundef %i.ad, i64 noundef %i.ae) #12 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !111
  %i.ai = call i32 @X509_check_akid(ptr noundef %i.af, ptr noundef %i.ah) #12
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %.loopexit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.d
  %.127.i.i = add i32 %spec.select.i.i, 1         ; 2 uses
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.al = call i64 @OPENSSL_sk_num(ptr noundef %i.ak) #12
  %i.am = trunc i64 %i.al to i32
  %i.an = icmp slt i32 %.127.i.i, %i.am
  br i1 %i.an, label %.lr.ph.preheader.i.i, label %_ZL13get_crl_scoreP17x509_store_ctx_stPP7x509_stP11X509_crl_stS2_.exit.thread

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %i.ao = sext i32 %.127.i.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.ao, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.f ] ; 2 uses
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.aq = call ptr @OPENSSL_sk_value(ptr noundef %i.ap, i64 noundef %indvars.iv.i.i) #12 ; 3 uses
  %i.ar = call ptr @X509_get_subject_name(ptr noundef %i.aq) #12
  %i.as = call i32 @X509_NAME_cmp(ptr noundef %i.ar, ptr noundef %i.w) #12
  %.not26.i.i = icmp eq i32 %i.as, 0
  br i1 %.not26.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.at = load ptr, ptr %i.ag, align 8, !tbaa !111
  %i.au = call i32 @X509_check_akid(ptr noundef %i.aq, ptr noundef %i.at) #12
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %.loopexit.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.ax = call i64 @OPENSSL_sk_num(ptr noundef %i.aw) #12
  %sext.i.i = shl i64 %i.ax, 32
  %i.ay = ashr exact i64 %sext.i.i, 32
  %i.az = icmp slt i64 %indvars.iv.next.i.i, %i.ay
  br i1 %i.az, label %.lr.ph.i.i, label %_ZL13get_crl_scoreP17x509_store_ctx_stPP7x509_stP11X509_crl_stS2_.exit.thread, !llvm.loop !105

.loopexit.i:                                      ; preds = %bb.e, %bb.d
  %.sink33.i.i = phi i32 [ 28, %bb.d ], [ 12, %bb.e ]
  %.lcssa.sink.i.i = phi ptr [ %i.af, %bb.d ], [ %i.aq, %bb.e ]
  %i.ba = or disjoint i32 %.sink33.i.i, %.1.i     ; 5 uses
  %i.bb = load i32, ptr %i.l, align 8, !tbaa !59  ; 3 uses
  %i.bc = and i32 %i.bb, 16
  %.not.i18.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i18.i, label %bb.g, label %_ZL13get_crl_scoreP17x509_store_ctx_stPP7x509_stP11X509_crl_stS2_.exit

bb.g:                                             ; preds = %.loopexit.i
  %i.bd = load i32, ptr %i.i, align 8, !tbaa !44
  %i.be = and i32 %i.bd, 16
  %.not23.i.i = icmp eq i32 %i.be, 0
  br i1 %.not23.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = and i32 %i.bb, 4
  %.not25.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not25.i.i, label %bb.j, label %_ZL13get_crl_scoreP17x509_store_ctx_stPP7x509_stP11X509_crl_stS2_.exit

bb.i:                                             ; preds = %bb.g
  %i.bg = and i32 %i.bb, 8
  %.not24.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not24.i.i, label %bb.j, label %_ZL13get_crl_scoreP17x509_store_ctx_stPP7x509_stP11X509_crl_stS2_.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !112
  %i.bi = call i64 @OPENSSL_sk_num(ptr noundef %i.bh) #12
  %.not47.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not47.i.i, label %._crit_edge.i.i, label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  br label %bb.k

bb.k:                                             ; preds = %_ZL12idp_check_dpP18DIST_POINT_NAME_stS0_.exit.thread.i.i, %.lr.ph.i19.i
  %.01846.i.i = phi i64 [ 0, %.lr.ph.i19.i ], [ %i.dm, %_ZL12idp_check_dpP18DIST_POINT_NAME_stS0_.exit.thread.i.i ] ; 2 uses
  %i.bk = load ptr, ptr %i.j, align 8, !tbaa !112
  %i.bl = call ptr @OPENSSL_sk_value(ptr noundef %i.bk, i64 noundef %.01846.i.i) #12 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !115
  %.not26.i20.i = icmp eq ptr %i.bn, null
  br i1 %.not26.i20.i, label %bb.l, label %_ZL12idp_check_dpP18DIST_POINT_NAME_stS0_.exit.thread.i.i

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !116
  %.not27.i.i = icmp eq ptr %i.bp, null
  br i1 %.not27.i.i, label %bb.m, label %_ZL12idp_check_dpP18DIST_POINT_NAME_stS0_.exit.thread.i.i

bb.m:                                             ; preds = %bb.l
  %i.bq = load ptr, ptr %i.bj, align 8, !tbaa !117 ; 2 uses
  %.not28.i.i = icmp eq ptr %i.bq, null
  br i1 %.not28.i.i, label %_ZL15crl_crldp_checkP7x509_stP11X509_crl_sti.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !118 ; 5 uses
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !120 ; 7 uses
  %i.bt = icmp ne ptr %i.br, null
  %i.bu = icmp ne ptr %i.bs, null
  %or.cond.i.i.i = and i1 %i.bt, %i.bu
  br i1 %or.cond.i.i.i, label %bb.o, label %_ZL15crl_crldp_checkP7x509_stP11X509_crl_sti.exit.thread.i

bb.o:                                             ; preds = %bb.n
  %i.bv = load i32, ptr %i.br, align 8, !tbaa !123
  %i.bw = icmp eq i32 %i.bv, 1
  br i1 %i.bw, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !124 ; 3 uses
  %.not45.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not45.i.i.i, label %_ZL12idp_check_dpP18DIST_POINT_NAME_stS0_.exit.thread.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = load i32, ptr %i.bs, align 8, !tbaa !123
  %i.ca = icmp eq i32 %i.bz, 1
  br i1 %i.ca, label %bb.r, label %.preheader53.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !124 ; 2 uses
  %.not50.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not50.i.i.i, label %_ZL12idp_check_dpP18DIST_POINT_NAME_stS0_.exit.thread.i.i, label %_ZL12idp_check_dpP18DIST_POINT_NAME_stS0_.exit.i.i

bb.s:                                             ; preds = %bb.o
  %i.cd = load i32, ptr %i.bs, align 8, !tbaa !123
  %i.ce = icmp eq i32 %i.cd, 1
  br i1 %i.ce, label %bb.t, label %.preheader.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !124 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i, label %_ZL12idp_check_dpP18DIST_POINT_NAME_stS0_.exit.thread.i.i, label %.preheader53.i.i.i

.preheader53.i.i.i:                               ; preds = %bb.t, %bb.q
  %.sink81.i.i.i = phi ptr [ %i.bs, %bb.q ], [ %i.br, %bb.t ]
  %.038.ph.i.i.i = phi ptr [ %i.by, %bb.q ], [ %i.cg, %bb.t ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.sink81.i.i.i, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !125 ; 3 uses
  %i.cj = call i64 @OPENSSL_sk_num(ptr noundef %i.ci) #12
  %.not62.i.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not62.i.i.i, label %_ZL12idp_check_dpP18DIST_POINT_NAME_stS0_.exit.thread.i.i, label %.lr.ph.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.s
  %i.ck = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !125
  %i.cm = call i64 @OPENSSL_sk_num(ptr noundef %i.cl) #12
  %.not63.i.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not63.i.i.i, label %_ZL12idp_check_dpP18DIST_POINT_NAME_stS0_.exit.thread.i.i, label %.lr.ph61.i.i.i

.lr.ph61.i.i.i:                                   ; preds = %.preheader.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 3 uses
  br label %bb.w

.lr.ph.i.i.i:                                     ; preds = %.preheader53.i.i.i, %bb.v
  %.03655.i.i.i = phi i64 [ %i.ct, %bb.v ], [ 0, %.preheader53.i.i.i ] ; 2 uses
  %i.co = call ptr @OPENSSL_sk_value(ptr noundef %i.ci, i64 noundef %.03655.i.i.i) #12 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !127
  %.not48.i.i.i = icmp eq i32 %i.cp, 4
  br i1 %.not48.i.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !125
  %i.cs = call i32 @X509_NAME_cmp(ptr noundef nonnull %.038.ph.i.i.i, ptr noundef %i.cr) #12
  %.not49.i.i.i = icmp eq i32 %i.cs, 0
  br i1 %.not49.i.i.i, label %_ZL15crl_crldp_checkP7x509_stP11X509_crl_sti.exit.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i.i.i
  %i.ct = add nuw i64 %.03655.i.i.i, 1            ; 2 uses
  %i.cu = call i64 @OPENSSL_sk_num(ptr noundef %i.ci) #12
  %i.cv = icmp ult i64 %i.ct, %i.cu
  br i1 %i.cv, label %.lr.ph.i.i.i, label %_ZL12idp_check_dpP18DIST_POINT_NAME_stS0_.exit.thread.i.i, !llvm.loop !106

bb.w:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph61.i.i.i
  %.160.i.i.i = phi i64 [ 0, %.lr.ph61.i.i.i ], [ %i.dh, %._crit_edge.i.i.i ] ; 2 uses
  %i.cw = load ptr, ptr %i.ck, align 8, !tbaa !125
  %i.cx = call ptr @OPENSSL_sk_value(ptr noundef %i.cw, i64 noundef %.160.i.i.i) #12
  %i.cy = load ptr, ptr %i.cn, align 8, !tbaa !125
  %i.cz = call i64 @OPENSSL_sk_num(ptr noundef %i.cy) #12
  %.not64.i.i.i = icmp eq i64 %i.cz, 0
  br i1 %.not64.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph59.i.i.i

bb.x:                                             ; preds = %.lr.ph59.i.i.i
  %i.da = add nuw i64 %.058.i.i.i, 1              ; 2 uses
  %i.db = load ptr, ptr %i.cn, align 8, !tbaa !125
  %i.dc = call i64 @OPENSSL_sk_num(ptr noundef %i.db) #12
  %i.dd = icmp ult i64 %i.da, %i.dc
  br i1 %i.dd, label %.lr.ph59.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !107

.lr.ph59.i.i.i:                                   ; preds = %bb.w, %bb.x
  %.058.i.i.i = phi i64 [ %i.da, %bb.x ], [ 0, %bb.w ] ; 2 uses
  %i.de = load ptr, ptr %i.cn, align 8, !tbaa !125
  %i.df = call ptr @OPENSSL_sk_value(ptr noundef %i.de, i64 noundef %.058.i.i.i) #12
  %i.dg = call i32 @GENERAL_NAME_cmp(ptr noundef %i.cx, ptr noundef %i.df) #12
  %.not47.i.i.i = icmp eq i32 %i.dg, 0
  br i1 %.not47.i.i.i, label %_ZL15crl_crldp_checkP7x509_stP11X509_crl_sti.exit.thread.i, label %bb.x

._crit_edge.i.i.i:                                ; preds = %bb.x, %bb.w
  %i.dh = add nuw i64 %.160.i.i.i, 1              ; 2 uses
  %i.di = load ptr, ptr %i.ck, align 8, !tbaa !125
  %i.dj = call i64 @OPENSSL_sk_num(ptr noundef %i.di) #12
  %i.dk = icmp ult i64 %i.dh, %i.dj
  br i1 %i.dk, label %bb.w, label %_ZL12idp_check_dpP18DIST_POINT_NAME_stS0_.exit.thread.i.i, !llvm.loop !108

_ZL12idp_check_dpP18DIST_POINT_NAME_stS0_.exit.i.i: ; preds = %bb.r
  %i.dl = call i32 @X509_NAME_cmp(ptr noundef nonnull %i.by, ptr noundef nonnull %i.cc) #12
  %.fr.i.i = freeze i32 %i.dl
  %.not51.i.not.i.i = icmp eq i32 %.fr.i.i, 0
  br i1 %.not51.i.not.i.i, label %_ZL15crl_crldp_checkP7x509_stP11X509_crl_sti.exit.thread.i, label %_ZL12idp_check_dpP18DIST_POINT_NAME_stS0_.exit.thread.i.i

_ZL12idp_check_dpP18DIST_POINT_NAME_stS0_.exit.thread.i.i: ; preds = %._crit_edge.i.i.i, %bb.v, %_ZL12idp_check_dpP18DIST_POINT_NAME_stS0_.exit.i.i, %.preheader.i.i.i, %.preheader53.i.i.i, %bb.t, %bb.r, %bb.p, %bb.l, %bb.k
  %i.dm = add nuw i64 %.01846.i.i, 1              ; 2 uses
  %i.dn = load ptr, ptr %i.j, align 8, !tbaa !112
  %i.do = call i64 @OPENSSL_sk_num(ptr noundef %i.dn) #12
  %i.dp = icmp ult i64 %i.dm, %i.do
  br i1 %i.dp, label %bb.k, label %._crit_edge.i.i, !llvm.loop !109

._crit_edge.i.i:                                  ; preds = %_ZL12idp_check_dpP18DIST_POINT_NAME_stS0_.exit.thread.i.i, %bb.j
  %i.dq = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !117 ; 2 uses
  %.not30.i.i = icmp eq ptr %i.dr, null
  br i1 %.not30.i.i, label %_ZL15crl_crldp_checkP7x509_stP11X509_crl_sti.exit.thread.i, label %_ZL15crl_crldp_checkP7x509_stP11X509_crl_sti.exit.i

_ZL15crl_crldp_checkP7x509_stP11X509_crl_sti.exit.i: ; preds = %._crit_edge.i.i
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !120
  %.not31.i.not.i = icmp eq ptr %i.ds, null
  br i1 %.not31.i.not.i, label %_ZL15crl_crldp_checkP7x509_stP11X509_crl_sti.exit.thread.i, label %_ZL13get_crl_scoreP17x509_store_ctx_stPP7x509_stP11X509_crl_stS2_.exit

_ZL15crl_crldp_checkP7x509_stP11X509_crl_sti.exit.thread.i: ; preds = %_ZL12idp_check_dpP18DIST_POINT_NAME_stS0_.exit.i.i, %bb.n, %bb.m, %bb.u, %.lr.ph59.i.i.i, %_ZL15crl_crldp_checkP7x509_stP11X509_crl_sti.exit.i, %._crit_edge.i.i
  %i.dt = or disjoint i32 %i.ba, 128
  br label %_ZL13get_crl_scoreP17x509_store_ctx_stPP7x509_stP11X509_crl_stS2_.exit

_ZL13get_crl_scoreP17x509_store_ctx_stPP7x509_stP11X509_crl_stS2_.exit: ; preds = %.loopexit.i, %bb.h, %bb.i, %_ZL15crl_crldp_checkP7x509_stP11X509_crl_sti.exit.i, %_ZL15crl_crldp_checkP7x509_stP11X509_crl_sti.exit.thread.i
  %.0.i = phi i32 [ %i.ba, %.loopexit.i ], [ %i.ba, %bb.h ], [ %i.ba, %bb.i ], [ %i.ba, %_ZL15crl_crldp_checkP7x509_stP11X509_crl_sti.exit.i ], [ %i.dt, %_ZL15crl_crldp_checkP7x509_stP11X509_crl_sti.exit.thread.i ] ; 3 uses
  %i.du = icmp slt i32 %.0.i, %.04159
  br i1 %i.du, label %_ZL13get_crl_scoreP17x509_store_ctx_stPP7x509_stP11X509_crl_stS2_.exit.thread, label %bb.y

bb.y:                                             ; preds = %_ZL13get_crl_scoreP17x509_store_ctx_stPP7x509_stP11X509_crl_stS2_.exit
  %i.dv = icmp eq i32 %.0.i, %.04159
  %i.dw = icmp ne ptr %.03960, null
  %or.cond3 = select i1 %i.dv, i1 %i.dw, i1 false
end_hunk_0
