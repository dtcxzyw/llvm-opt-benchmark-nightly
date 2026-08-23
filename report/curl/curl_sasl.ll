Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/curl_sasl?download=true
inline.NumInlined: 20
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@build_message:bb.a
  %.not9 = icmp eq ptr %i.d, null
  br i1 %.not9, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @Curl_bufref_set(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i64 noundef 0, ptr noundef null) #7
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.e = tail call i64 @Curl_bufref_len(ptr noundef nonnull %0) #7
  %.not10 = icmp eq i64 %i.e, 0
  br i1 %.not10, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @Curl_bufref_set(ptr noundef nonnull %0, ptr noundef nonnull @.str.21, i64 noundef 1, ptr noundef null) #7
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.f = tail call ptr @Curl_bufref_uptr(ptr noundef nonnull %0) #7
  %i.g = tail call i64 @Curl_bufref_len(ptr noundef nonnull %0) #7
  %i.h = call i32 @curlx_base64_encode(ptr noundef %i.f, i64 noundef %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7 ; 2 uses
  %.not11 = icmp eq i32 %i.h, 0
  br i1 %.not11, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !107
  %i.j = load i64, ptr %i.b, align 8, !tbaa !9
  call void @Curl_bufref_set(ptr noundef nonnull %0, ptr noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @curl_free) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.h, %bb.e, %bb.a
  %.0 = phi i32 [ %i.h, %bb.h ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare i64 @Curl_bufref_len(ptr noundef) local_unnamed_addr #2

declare void @Curl_bufref_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @Curl_sasl_continue(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.bufref, align 8             ; 15 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %5 = alloca %struct.bufref, align 8             ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !86   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @Curl_conn_get_current_host(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7
  call void @Curl_bufref_init(ptr noundef nonnull %5) #7
  call void @Curl_bufref_init(ptr noundef nonnull %4) #7
  store i32 1, ptr %3, align 4, !tbaa !93
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !80   ; 2 uses
  switch i32 %i.f, label %bb.c [
    i32 17, label %bb.b
    i32 14, label %._crit_edge
    i32 16, label %bb.ad
  ]

._crit_edge:                                      ; preds = %bb.a
  %.pre = load ptr, ptr %0, align 8, !tbaa !79
  br label %bb.y

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !79
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  %i.i = load i32, ptr %i.h, align 4, !tbaa !112
  %.not97 = icmp eq i32 %2, %i.i
  %spec.select = select i1 %.not97, i32 0, i32 67
  store i32 2, ptr %3, align 4, !tbaa !93
  store i32 0, ptr %i.e, align 8, !tbaa !80
  br label %bb.aj

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !79     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !113
  %.not88 = icmp eq i32 %2, %i.l
  br i1 %.not88, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 2, ptr %3, align 4, !tbaa !93
  store i32 0, ptr %i.e, align 8, !tbaa !80
  br label %bb.aj

bb.e:                                             ; preds = %bb.c
  switch i32 %i.f, label %.thread105 [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.k
    i32 4, label %bb.n
    i32 5, label %bb.q
    i32 6, label %bb.s
    i32 7, label %.thread101
    i32 13, label %bb.v
    i32 14, label %bb.y
  ]

bb.f:                                             ; preds = %bb.e
  store i32 2, ptr %3, align 4, !tbaa !93
  br label %bb.aj

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !87
  %i.o = call i32 @Curl_auth_create_plain_message(ptr noundef %i.n, ptr noundef nonnull %4) #7
  br label %.thread

bb.h:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !87   ; 2 uses
  %.not95 = icmp eq ptr %i.q, null
  br i1 %.not95, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !104
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.s = phi ptr [ %i.r, %bb.i ], [ @.str.1, %bb.h ]
  call void @Curl_auth_create_login_message(ptr noundef %i.s, ptr noundef nonnull %4) #7
  br label %.thread101

bb.k:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !87   ; 2 uses
  %.not94 = icmp eq ptr %i.u, null
  br i1 %.not94, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !101
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.x = phi ptr [ %i.w, %bb.l ], [ @.str.1, %bb.k ]
  call void @Curl_auth_create_login_message(ptr noundef %i.x, ptr noundef nonnull %4) #7
  br label %.thread101

bb.n:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !87   ; 2 uses
  %.not93 = icmp eq ptr %i.z, null
  br i1 %.not93, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !104
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.ab = phi ptr [ %i.aa, %bb.o ], [ @.str.1, %bb.n ]
  call void @Curl_auth_create_external_message(ptr noundef %i.ab, ptr noundef nonnull %4) #7
  br label %.thread101

bb.q:                                             ; preds = %bb.e
  %i.ac = call fastcc i32 @get_server_message(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %5) ; 2 uses
  %.not92 = icmp eq i32 %i.ac, 0
  br i1 %.not92, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !87
  %i.af = call i32 @Curl_auth_create_cram_md5_message(ptr noundef nonnull %5, ptr noundef %i.ae, ptr noundef nonnull %4) #7
  br label %.thread

bb.s:                                             ; preds = %bb.e
  %i.ag = call fastcc i32 @get_server_message(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %5) ; 2 uses
  %.not89 = icmp eq i32 %i.ag, 0
  br i1 %.not89, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !87
  %i.aj = load ptr, ptr %0, align 8, !tbaa !79
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !114
  %i.al = call i32 @Curl_auth_create_digest_md5_message(ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef %i.ai, ptr noundef %i.ak, ptr noundef nonnull %4) #7 ; 2 uses
  %.not90 = icmp eq i32 %i.al, 0
  br i1 %.not90, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.am = load ptr, ptr %0, align 8, !tbaa !79
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 58
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !109
  %i.ap = and i16 %i.ao, 1
  %.not91 = icmp eq i16 %i.ap, 0
  %spec.select98 = select i1 %.not91, i32 17, i32 7
  br label %.thread101

bb.v:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ar = load i16, ptr %i.aq, align 4, !tbaa !85
  %i.as = icmp eq i16 %i.ar, 256
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !87 ; 2 uses
  br i1 %i.as, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !107
  %i.aw = load i32, ptr %i.b, align 4, !tbaa !93
  %i.ax = sext i32 %i.aw to i64
  %i.ay = call i32 @Curl_auth_create_oauth_bearer_message(ptr noundef %i.au, ptr noundef %i.av, i64 noundef %i.ax, ptr noundef nonnull %4) #7
  br label %.thread

bb.x:                                             ; preds = %bb.v
  %i.az = call i32 @Curl_auth_create_xoauth_bearer_message(ptr noundef %i.au, ptr noundef nonnull %4) #7
  br label %.thread

bb.y:                                             ; preds = %._crit_edge, %bb.e
  %i.ba = phi ptr [ %.pre, %._crit_edge ], [ %i.j, %bb.e ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 52
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !112
  %i.bd = icmp eq i32 %2, %i.bc
  br i1 %i.bd, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 2, ptr %3, align 4, !tbaa !93
  store i32 0, ptr %i.e, align 8, !tbaa !80
  br label %bb.aj

bb.aa:                                            ; preds = %bb.y
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !113
  %i.bg = icmp eq i32 %2, %i.bf
  br i1 %i.bg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @Curl_bufref_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.2, i64 noundef 1, ptr noundef null) #7
  br label %.thread101

bb.ac:                                            ; preds = %bb.aa
  store i32 2, ptr %3, align 4, !tbaa !93
  store i32 0, ptr %i.e, align 8, !tbaa !80
  br label %bb.aj

bb.ad:                                            ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bi = load i16, ptr %i.bh, align 4, !tbaa !85
  %i.bj = xor i16 %i.bi, -1
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bl = load i16, ptr %i.bk, align 8, !tbaa !82
  %i.bm = and i16 %i.bl, %i.bj
  store i16 %i.bm, ptr %i.bk, align 8, !tbaa !82
  store i16 0, ptr %i.bh, align 4, !tbaa !85
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.bn, align 8, !tbaa !81
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.bp = load i8, ptr %i.bo, align 2
  %i.bq = and i8 %i.bp, 4
  %i.br = icmp ne i8 %i.bq, 0
  %i.bs = call i32 @Curl_sasl_start(ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext %i.br, ptr noundef nonnull %3)
  br label %bb.aj

.thread105:                                       ; preds = %bb.e
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %1, ptr noundef nonnull @.str.3) #7
  call void @Curl_bufref_free(ptr noundef nonnull %5) #7
  br label %bb.ah

.thread101:                                       ; preds = %bb.j, %bb.m, %bb.p, %bb.ab, %bb.u, %bb.e
  %.0.ph = phi i32 [ 17, %bb.e ], [ %spec.select98, %bb.u ], [ 17, %bb.ab ], [ 17, %bb.p ], [ 17, %bb.m ], [ 3, %bb.j ]
  call void @Curl_bufref_free(ptr noundef nonnull %5) #7
  br label %bb.af

.thread:                                          ; preds = %bb.s, %bb.w, %bb.x, %bb.t, %bb.q, %bb.r, %bb.g
  %.2 = phi i32 [ %i.al, %bb.t ], [ %i.o, %bb.g ], [ %i.ay, %bb.w ], [ %i.az, %bb.x ], [ %i.af, %bb.r ], [ %i.ac, %bb.q ], [ %i.ag, %bb.s ] ; 2 uses
  %.0 = phi i32 [ 17, %bb.t ], [ 17, %bb.g ], [ 14, %bb.w ], [ 17, %bb.x ], [ 17, %bb.r ], [ 17, %bb.q ], [ 17, %bb.s ]
  call void @Curl_bufref_free(ptr noundef nonnull %5) #7
  switch i32 %.2, label %bb.ah [
    i32 61, label %bb.ae
    i32 0, label %bb.af
  ]

bb.ae:                                            ; preds = %.thread
  %i.bt = load ptr, ptr %0, align 8, !tbaa !79
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !115
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !81
  %i.by = call i32 %i.bv(ptr noundef nonnull %1, ptr noundef %i.bx) #7
  br label %bb.ai

bb.af:                                            ; preds = %.thread101, %.thread
  %.0104 = phi i32 [ %.0.ph, %.thread101 ], [ %.0, %.thread ] ; 2 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !79
  %i.bz = getelementptr i8, ptr %.val, i64 58
  %.val.val = load i16, ptr %i.bz, align 2, !tbaa !109
  %i.ca = call fastcc i32 @build_message(i16 %.val.val, ptr noundef %4) ; 2 uses
  %.not96 = icmp eq i32 %i.ca, 0
  br i1 %.not96, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.cb = load ptr, ptr %0, align 8, !tbaa !79
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !116
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !81
  %i.cg = call i32 %i.cd(ptr noundef nonnull %1, ptr noundef %i.cf, ptr noundef nonnull %4) #7
  br label %bb.ai

bb.ah:                                            ; preds = %.thread105, %.thread
  %.2108 = phi i32 [ 1, %.thread105 ], [ %.2, %.thread ]
  store i32 2, ptr %3, align 4, !tbaa !93
  br label %bb.ai

bb.ai:                                            ; preds = %bb.af, %bb.ag, %bb.ah, %bb.ae
  %.3 = phi i32 [ %.2108, %bb.ah ], [ %i.by, %bb.ae ], [ %i.ca, %bb.af ], [ %i.cg, %bb.ag ]
  %.1 = phi i32 [ 0, %bb.ah ], [ 16, %bb.ae ], [ %.0104, %bb.af ], [ %.0104, %bb.ag ]
  call void @Curl_bufref_free(ptr noundef nonnull %4) #7
  store i32 %.1, ptr %i.e, align 8, !tbaa !80
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ad, %bb.ac, %bb.z, %bb.f, %bb.d, %bb.b
  %.078 = phi i32 [ %spec.select, %bb.b ], [ 67, %bb.d ], [ %.3, %bb.ai ], [ 0, %bb.f ], [ 0, %bb.z ], [ 67, %bb.ac ], [ %i.bs, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret i32 %.078
}

declare void @Curl_conn_get_current_host(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Curl_auth_create_plain_message(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Curl_auth_create_login_message(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Curl_auth_create_external_message(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @get_server_message(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117
  %i.f = tail call i32 %i.e(ptr noundef %1, ptr noundef nonnull %2) #7 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !79
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 58
  %i.i = load i16, ptr %i.h, align 2, !tbaa !109
  %i.j = and i16 %i.i, 1
  %.not15 = icmp eq i16 %i.j, 0
  br i1 %.not15, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @Curl_bufref_ptr(ptr noundef nonnull %2) #7 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !8
  switch i8 %i.l, label %bb.e [
    i8 0, label %bb.d
    i8 61, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  tail call void @Curl_bufref_set(ptr noundef nonnull %2, ptr noundef null, i64 noundef 0, ptr noundef null) #7
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.m = call i32 @curlx_base64_decode(ptr noundef nonnull %i.k, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7 ; 2 uses
  %.not17 = icmp eq i32 %i.m, 0
  br i1 %.not17, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !107
  %i.o = load i64, ptr %i.b, align 8, !tbaa !9
  call void @Curl_bufref_set(ptr noundef nonnull %2, ptr noundef %i.n, i64 noundef %i.o, ptr noundef nonnull @curl_free) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.b, %bb.a
  %.1 = phi i32 [ %i.f, %bb.a ], [ 0, %bb.b ], [ 0, %bb.d ], [ %i.m, %bb.g ]
  ret i32 %.1
}

declare i32 @Curl_auth_create_cram_md5_message(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Curl_auth_create_digest_md5_message(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Curl_auth_create_oauth_bearer_message(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Curl_auth_create_xoauth_bearer_message(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Curl_bufref_set(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @Curl_failf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef i32 @Curl_sasl_is_blocked(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i16, ptr %i.a, align 8, !tbaa !82   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.d = load i16, ptr %i.c, align 2, !tbaa !16
  %i.e = and i16 %i.d, %i.b                       ; 10 uses
  %.not = icmp eq i16 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not55 = icmp eq ptr %1, null
  br i1 %.not55, label %sasl_unchosen.exit118, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2187
  %i.g = load i64, ptr %i.f, align 1
  %i.h = and i64 %i.g, 536870912
  %.not56 = icmp eq i64 %i.h, 0
  br i1 %.not56, label %sasl_unchosen.exit118, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4504
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !118  ; 2 uses
  %.not57 = icmp eq ptr %i.j, null
  br i1 %.not57, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !119
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %sasl_unchosen.exit118

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %1, ptr noundef nonnull @.str.4) #7
  br label %sasl_unchosen.exit118

bb.g:                                             ; preds = %bb.a
  %.not58 = icmp eq i16 %i.e, 0
  br i1 %.not58, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %.not59 = icmp eq ptr %1, null
  br i1 %.not59, label %sasl_unchosen.exit118, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 2187
  %i.o = load i64, ptr %i.n, align 1
  %i.p = and i64 %i.o, 536870912
  %.not60 = icmp eq i64 %i.p, 0
  br i1 %.not60, label %sasl_unchosen.exit118, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4504
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !118  ; 2 uses
  %.not61 = icmp eq ptr %i.r, null
  br i1 %.not61, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !119
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.l, label %sasl_unchosen.exit118

end_hunk_0
