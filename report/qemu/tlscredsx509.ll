Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/tlscredsx509?download=true
inline.NumInlined: 57
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@gnutls_certificate_set_x509_key
declare i32 @gnutls_certificate_set_x509_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gnutls_x509_privkey_init(ptr noundef) local_unnamed_addr #1

declare ptr @qcrypto_secret_lookup_as_utf8(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gnutls_x509_privkey_import2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 1) i32 @qcrypto_tls_creds_check_cert(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = tail call i64 @time(ptr noundef null) #8 ; 3 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__errno_location() #9
  %i.h = load i32, ptr %i.g, align 4
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef 116, ptr noundef nonnull @__func__.qcrypto_tls_creds_check_cert_times, i32 noundef %i.h, ptr noundef nonnull @.str.36) #8
  br label %qcrypto_tls_creds_check_cert_times.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.i = tail call i64 @gnutls_x509_crt_get_expiration_time(ptr noundef %1) #8
  %i.j = icmp slt i64 %i.i, %i.e
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = select i1 %3, ptr @.str.38, ptr @.str.39
  %i.l = select i1 %4, ptr @.str.37, ptr %i.k
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef 127, ptr noundef nonnull @__func__.qcrypto_tls_creds_check_cert_times, ptr noundef nonnull %i.l, ptr noundef %2) #8
  br label %qcrypto_tls_creds_check_cert_times.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.m = tail call i64 @gnutls_x509_crt_get_activation_time(ptr noundef %1) #8
  %i.n = icmp sgt i64 %i.m, %i.e
  br i1 %i.n, label %bb.f, label %qcrypto_tls_creds_check_cert_times.exit

bb.f:                                             ; preds = %bb.e
  %i.o = select i1 %3, ptr @.str.41, ptr @.str.42
  %i.p = select i1 %4, ptr @.str.40, ptr %i.o
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef 138, ptr noundef nonnull @__func__.qcrypto_tls_creds_check_cert_times, ptr noundef nonnull %i.p, ptr noundef %2) #8
  br label %qcrypto_tls_creds_check_cert_times.exit.thread

qcrypto_tls_creds_check_cert_times.exit:          ; preds = %bb.e
  %i.q = tail call i32 @gnutls_x509_crt_get_basic_constraints(ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #8 ; 4 uses
  %i.r = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i, label %trace_qcrypto_tls_creds_x509_check_basic_constraints.exit.i, label %bb.g, !prof !10

bb.g:                                             ; preds = %qcrypto_tls_creds_check_cert_times.exit
  %i.s = load i16, ptr @_TRACE_QCRYPTO_TLS_CREDS_X509_CHECK_BASIC_CONSTRAINTS_DSTATE, align 2
  %.not2.i.i = icmp eq i16 %i.s, 0
  br i1 %.not2.i.i, label %trace_qcrypto_tls_creds_x509_check_basic_constraints.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load i32, ptr @qemu_loglevel, align 4
  %i.u = and i32 %i.t, 32768
  %.not3.i.i = icmp eq i32 %i.u, 0
  br i1 %.not3.i.i, label %trace_qcrypto_tls_creds_x509_check_basic_constraints.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.48, ptr noundef %0, ptr noundef %2, i32 noundef %i.q) #8
  br label %trace_qcrypto_tls_creds_x509_check_basic_constraints.exit.i

trace_qcrypto_tls_creds_x509_check_basic_constraints.exit.i: ; preds = %bb.i, %bb.h, %bb.g, %qcrypto_tls_creds_check_cert_times.exit
  %i.v = icmp sgt i32 %i.q, 0
  br i1 %i.v, label %bb.j, label %bb.l

bb.j:                                             ; preds = %trace_qcrypto_tls_creds_x509_check_basic_constraints.exit.i
  br i1 %4, label %qcrypto_tls_creds_check_cert_basic_constraints.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = select i1 %3, ptr @.str.43, ptr @.str.44
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef 167, ptr noundef nonnull @__func__.qcrypto_tls_creds_check_cert_basic_constraints, ptr noundef nonnull %i.w, ptr noundef %2) #8
  br label %qcrypto_tls_creds_check_cert_times.exit.thread

bb.l:                                             ; preds = %trace_qcrypto_tls_creds_x509_check_basic_constraints.exit.i
  switch i32 %i.q, label %bb.q [
    i32 0, label %bb.m
    i32 -56, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  br i1 %4, label %bb.n, label %qcrypto_tls_creds_check_cert_basic_constraints.exit

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef 175, ptr noundef nonnull @__func__.qcrypto_tls_creds_check_cert_basic_constraints, ptr noundef nonnull @.str.45, ptr noundef %2) #8
  br label %qcrypto_tls_creds_check_cert_times.exit.thread

bb.o:                                             ; preds = %bb.l
  br i1 %4, label %bb.p, label %qcrypto_tls_creds_check_cert_basic_constraints.exit

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef 184, ptr noundef nonnull @__func__.qcrypto_tls_creds_check_cert_basic_constraints, ptr noundef nonnull @.str.46, ptr noundef %2) #8
  br label %qcrypto_tls_creds_check_cert_times.exit.thread

bb.q:                                             ; preds = %bb.l
  %i.x = tail call ptr @gnutls_strerror(i32 noundef %i.q) #9
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef 190, ptr noundef nonnull @__func__.qcrypto_tls_creds_check_cert_basic_constraints, ptr noundef nonnull @.str.47, ptr noundef %2, ptr noundef %i.x) #8
  br label %qcrypto_tls_creds_check_cert_times.exit.thread

qcrypto_tls_creds_check_cert_basic_constraints.exit: ; preds = %bb.o, %bb.m, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4
  %i.y = call i32 @gnutls_x509_crt_get_key_usage(ptr noundef %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #8 ; 4 uses
  %i.z = load i32, ptr %i.c, align 4
  %i.aa = load i32, ptr %i.d, align 4
  %i.ab = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i23 = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i23, label %trace_qcrypto_tls_creds_x509_check_key_usage.exit.i, label %bb.r, !prof !10

bb.r:                                             ; preds = %qcrypto_tls_creds_check_cert_basic_constraints.exit
  %i.ac = load i16, ptr @_TRACE_QCRYPTO_TLS_CREDS_X509_CHECK_KEY_USAGE_DSTATE, align 2
  %.not4.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not4.i.i, label %trace_qcrypto_tls_creds_x509_check_key_usage.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ad = load i32, ptr @qemu_loglevel, align 4
  %i.ae = and i32 %i.ad, 32768
  %.not5.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not5.i.i, label %trace_qcrypto_tls_creds_x509_check_key_usage.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.52, ptr noundef %0, ptr noundef %2, i32 noundef %i.y, i32 noundef %i.z, i32 noundef %i.aa) #8
  br label %trace_qcrypto_tls_creds_x509_check_key_usage.exit.i

trace_qcrypto_tls_creds_x509_check_key_usage.exit.i: ; preds = %bb.t, %bb.s, %bb.r, %qcrypto_tls_creds_check_cert_basic_constraints.exit
  %i.af = icmp slt i32 %i.y, 0
  br i1 %i.af, label %bb.u, label %trace_qcrypto_tls_creds_x509_check_key_usage.exit.i._crit_edge

trace_qcrypto_tls_creds_x509_check_key_usage.exit.i._crit_edge: ; preds = %trace_qcrypto_tls_creds_x509_check_key_usage.exit.i
  %.pre = load i32, ptr %i.c, align 4
  br label %bb.x

bb.u:                                             ; preds = %trace_qcrypto_tls_creds_x509_check_key_usage.exit.i
  %i.ag = icmp eq i32 %i.y, -56
  br i1 %i.ag, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ah = select i1 %4, i32 4, i32 128            ; 2 uses
  store i32 %i.ah, ptr %i.c, align 4
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ai = call ptr @gnutls_strerror(i32 noundef %i.y) #9
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef 220, ptr noundef nonnull @__func__.qcrypto_tls_creds_check_cert_key_usage, ptr noundef nonnull @.str.49, ptr noundef %2, ptr noundef %i.ai) #8
  br label %qcrypto_tls_creds_check_cert_key_usage.exit.thread

bb.x:                                             ; preds = %trace_qcrypto_tls_creds_x509_check_key_usage.exit.i._crit_edge, %bb.v
  %i.aj = phi i32 [ %.pre, %trace_qcrypto_tls_creds_x509_check_key_usage.exit.i._crit_edge ], [ %i.ah, %bb.v ] ; 2 uses
  %i.ak = load i32, ptr %i.d, align 4
  %i.al = icmp ne i32 %i.ak, 0                    ; 2 uses
  br i1 %4, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.am = and i32 %i.aj, 4
  %i.an = icmp eq i32 %i.am, 0
  %or.cond.i = select i1 %i.an, i1 %i.al, i1 false
  br i1 %or.cond.i, label %bb.z, label %.thread

.thread:                                          ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %qcrypto_tls_creds_check_cert_times.exit.thread

bb.z:                                             ; preds = %bb.y
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef 230, ptr noundef nonnull @__func__.qcrypto_tls_creds_check_cert_key_usage, ptr noundef nonnull @.str.50, ptr noundef %2) #8
  br label %qcrypto_tls_creds_check_cert_key_usage.exit.thread

bb.aa:                                            ; preds = %bb.x
  %i.ao = and i32 %i.aj, 128
  %i.ap = icmp eq i32 %i.ao, 0
  %or.cond3.i = select i1 %i.ap, i1 %i.al, i1 false
  br i1 %or.cond3.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef 239, ptr noundef nonnull @__func__.qcrypto_tls_creds_check_cert_key_usage, ptr noundef nonnull @.str.51, ptr noundef %2) #8
  br label %qcrypto_tls_creds_check_cert_key_usage.exit.thread

qcrypto_tls_creds_check_cert_key_usage.exit.thread: ; preds = %bb.z, %bb.w, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %qcrypto_tls_creds_check_cert_times.exit.thread

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ar, %bb.ac
  %.062.i = phi i64 [ 0, %bb.ac ], [ %i.bo, %bb.ar ] ; 3 uses
  %.060.i = phi i1 [ false, %bb.ac ], [ %spec.select69.i, %bb.ar ] ; 3 uses
  %.056.i = phi i1 [ false, %bb.ac ], [ %.157.i, %bb.ar ] ; 3 uses
  %.055.i = phi i1 [ false, %bb.ac ], [ %.1.i, %bb.ar ] ; 3 uses
  store i64 0, ptr %i.b, align 8
  %i.aq = trunc i64 %.062.i to i32                ; 2 uses
  %i.ar = call i32 @gnutls_x509_crt_get_key_purpose_oid(ptr noundef %1, i32 noundef %i.aq, ptr noundef null, ptr noundef nonnull %i.b, ptr noundef null) #8 ; 2 uses
  switch i32 %i.ar, label %bb.af [
    i32 -56, label %bb.ae
    i32 -51, label %bb.ag
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.as = icmp eq i64 %.062.i, 0                  ; 2 uses
  br i1 %3, label %bb.as, label %bb.au

bb.af:                                            ; preds = %bb.ad
  %i.at = call ptr @gnutls_strerror(i32 noundef %i.ar) #9
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef 282, ptr noundef nonnull @__func__.qcrypto_tls_creds_check_cert_key_purpose, ptr noundef nonnull @.str.53, ptr noundef %2, ptr noundef %i.at) #8
  br label %qcrypto_tls_creds_check_cert_key_purpose.exit.thread

bb.ag:                                            ; preds = %bb.ad
  %i.au = load i64, ptr %i.b, align 8
  %i.av = call noalias ptr @g_malloc0(i64 noundef %i.au) #10 ; 7 uses
  %i.aw = call i32 @gnutls_x509_crt_get_key_purpose_oid(ptr noundef %1, i32 noundef %i.aq, ptr noundef %i.av, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #8 ; 4 uses
  %i.ax = icmp slt i32 %i.aw, 0
  %i.ay = load i32, ptr %i.a, align 4             ; 5 uses
  %i.az = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i25 = icmp eq i32 %i.az, 0              ; 2 uses
  br i1 %i.ax, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  br i1 %.not.i.i25, label %trace_qcrypto_tls_creds_x509_check_key_purpose.exit.i, label %bb.ai, !prof !10

bb.ai:                                            ; preds = %bb.ah
  %i.ba = load i16, ptr @_TRACE_QCRYPTO_TLS_CREDS_X509_CHECK_KEY_PURPOSE_DSTATE, align 2
  %.not4.i.i26 = icmp eq i16 %i.ba, 0
  br i1 %.not4.i.i26, label %trace_qcrypto_tls_creds_x509_check_key_purpose.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bb = load i32, ptr @qemu_loglevel, align 4
  %i.bc = and i32 %i.bb, 32768
  %.not5.i.i27 = icmp eq i32 %i.bc, 0
  br i1 %.not5.i.i27, label %trace_qcrypto_tls_creds_x509_check_key_purpose.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.60, ptr noundef %0, ptr noundef %2, i32 noundef %i.aw, ptr noundef nonnull @.str.54, i32 noundef %i.ay) #8
  br label %trace_qcrypto_tls_creds_x509_check_key_purpose.exit.i

trace_qcrypto_tls_creds_x509_check_key_purpose.exit.i: ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah
  call void @g_free(ptr noundef %i.av) #8
  %i.bd = call ptr @gnutls_strerror(i32 noundef %i.aw) #9
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef 297, ptr noundef nonnull @__func__.qcrypto_tls_creds_check_cert_key_purpose, ptr noundef nonnull @.str.53, ptr noundef %2, ptr noundef %i.bd) #8
  br label %qcrypto_tls_creds_check_cert_key_purpose.exit.thread

bb.al:                                            ; preds = %bb.ag
  br i1 %.not.i.i25, label %trace_qcrypto_tls_creds_x509_check_key_purpose.exit77.i, label %bb.am, !prof !10

bb.am:                                            ; preds = %bb.al
  %i.be = load i16, ptr @_TRACE_QCRYPTO_TLS_CREDS_X509_CHECK_KEY_PURPOSE_DSTATE, align 2
  %.not4.i75.i = icmp eq i16 %i.be, 0
  br i1 %.not4.i75.i, label %trace_qcrypto_tls_creds_x509_check_key_purpose.exit77.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bf = load i32, ptr @qemu_loglevel, align 4
  %i.bg = and i32 %i.bf, 32768
  %.not5.i76.i = icmp eq i32 %i.bg, 0
  br i1 %.not5.i76.i, label %trace_qcrypto_tls_creds_x509_check_key_purpose.exit77.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.60, ptr noundef %0, ptr noundef %2, i32 noundef %i.aw, ptr noundef %i.av, i32 noundef %i.ay) #8
  %.pre.i = load i32, ptr %i.a, align 4
  br label %trace_qcrypto_tls_creds_x509_check_key_purpose.exit77.i

trace_qcrypto_tls_creds_x509_check_key_purpose.exit77.i: ; preds = %bb.ao, %bb.an, %bb.am, %bb.al
  %i.bh = phi i32 [ %i.ay, %bb.al ], [ %i.ay, %bb.am ], [ %i.ay, %bb.an ], [ %.pre.i, %bb.ao ]
  %.not67.i = icmp ne i32 %i.bh, 0
  %spec.select69.i = select i1 %.not67.i, i1 true, i1 %.060.i
  %i.bi = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.av, ptr noundef nonnull dereferenceable(18) @.str.55) #11
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %trace_qcrypto_tls_creds_x509_check_key_purpose.exit77.i
  %i.bk = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.av, ptr noundef nonnull dereferenceable(18) @.str.56) #11
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bm = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.av, ptr noundef nonnull dereferenceable(12) @.str.57) #11
  %i.bn = icmp eq i32 %i.bm, 0                    ; 2 uses
  %spec.select72.i = select i1 %i.bn, i1 true, i1 %.056.i
  %spec.select73.i = select i1 %i.bn, i1 true, i1 %.055.i
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %trace_qcrypto_tls_creds_x509_check_key_purpose.exit77.i
  %.157.i = phi i1 [ %spec.select72.i, %bb.aq ], [ %.056.i, %trace_qcrypto_tls_creds_x509_check_key_purpose.exit77.i ], [ true, %bb.ap ]
  %.1.i = phi i1 [ %spec.select73.i, %bb.aq ], [ true, %trace_qcrypto_tls_creds_x509_check_key_purpose.exit77.i ], [ %.055.i, %bb.ap ]
  call void @g_free(ptr noundef nonnull %i.av) #8
  %i.bo = add i64 %.062.i, 1
  br label %bb.ad

bb.as:                                            ; preds = %bb.ae
  %i.bp = select i1 %i.as, i1 true, i1 %.055.i
  %.not.i = xor i1 %i.bp, true
  %or.cond.not.i = select i1 %.not.i, i1 %.060.i, i1 false
  br i1 %or.cond.not.i, label %bb.at, label %qcrypto_tls_creds_check_cert_key_purpose.exit

bb.at:                                            ; preds = %bb.as
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef 323, ptr noundef nonnull @__func__.qcrypto_tls_creds_check_cert_key_purpose, ptr noundef nonnull @.str.58, ptr noundef %2) #8
  br label %qcrypto_tls_creds_check_cert_key_purpose.exit.thread

bb.au:                                            ; preds = %bb.ae
  %i.bq = select i1 %i.as, i1 true, i1 %.056.i
  %.not2.i = xor i1 %i.bq, true
  %or.cond4.not.i = select i1 %.not2.i, i1 %.060.i, i1 false
  br i1 %or.cond4.not.i, label %bb.av, label %qcrypto_tls_creds_check_cert_key_purpose.exit

bb.av:                                            ; preds = %bb.au
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef 332, ptr noundef nonnull @__func__.qcrypto_tls_creds_check_cert_key_purpose, ptr noundef nonnull @.str.59, ptr noundef %2) #8
  br label %qcrypto_tls_creds_check_cert_key_purpose.exit.thread

qcrypto_tls_creds_check_cert_key_purpose.exit.thread: ; preds = %bb.at, %trace_qcrypto_tls_creds_x509_check_key_purpose.exit.i, %bb.av, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %qcrypto_tls_creds_check_cert_times.exit.thread

qcrypto_tls_creds_check_cert_key_purpose.exit:    ; preds = %bb.as, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %qcrypto_tls_creds_check_cert_times.exit.thread

qcrypto_tls_creds_check_cert_times.exit.thread:   ; preds = %bb.p, %bb.n, %bb.k, %bb.q, %bb.f, %bb.d, %bb.b, %.thread, %qcrypto_tls_creds_check_cert_key_purpose.exit, %qcrypto_tls_creds_check_cert_key_purpose.exit.thread, %qcrypto_tls_creds_check_cert_key_usage.exit.thread
  %.0 = phi i32 [ -1, %qcrypto_tls_creds_check_cert_key_usage.exit.thread ], [ 0, %.thread ], [ -1, %bb.f ], [ -1, %qcrypto_tls_creds_check_cert_key_purpose.exit.thread ], [ 0, %qcrypto_tls_creds_check_cert_key_purpose.exit ], [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.q ], [ -1, %bb.k ], [ -1, %bb.n ], [ -1, %bb.p ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #7

declare void @error_setg_errno_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

declare i64 @gnutls_x509_crt_get_expiration_time(ptr noundef) local_unnamed_addr #1

declare i64 @gnutls_x509_crt_get_activation_time(ptr noundef) local_unnamed_addr #1

declare i32 @gnutls_x509_crt_get_basic_constraints(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gnutls_x509_crt_get_key_usage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gnutls_x509_crt_get_key_purpose_oid(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @gnutls_x509_crt_check_issuer(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gnutls_x509_crt_get_dn2(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gnutls_x509_crt_list_verify(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(none) }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !{!0, !11}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"auto-init"}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
end_hunk_0
