inline.NumInlined: 18
inline.NumDeleted: 11
begin_hunk_0_@OSSL_HTTP_REQ_CTX_set_expected:bb.a
bb.m:                                             ; preds = %bb.g, %bb.l, %bb.e, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.e ], [ 1, %bb.l ], [ 0, %bb.g ]
  ret i32 %.0
}

declare ptr @CRYPTO_strdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @OSSL_HTTP_REQ_CTX_set1_req(ptr noundef captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @ASN1_item_i2d_mem_bio(ptr noundef %2, ptr noundef nonnull %3) #10 ; 2 uses
  %.not11 = icmp eq ptr %i.a, null
  br i1 %.not11, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %.0814 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.b = tail call fastcc i32 @set1_content(ptr noundef %0, ptr noundef %1, ptr noundef %.0814)
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %.0815 = phi ptr [ null, %bb.b ], [ %.0814, %.thread ]
  %i.c = phi i32 [ 0, %bb.b ], [ %i.b, %.thread ]
  %i.d = tail call i32 @BIO_free(ptr noundef %.0815) #10 ; 0 uses
  ret i32 %i.c
}

declare ptr @ASN1_item_i2d_mem_bio(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @set1_content(ptr noundef captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !35
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %2, null                     ; 2 uses
  %i.d = icmp ne ptr %1, null
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 291, ptr noundef nonnull @__func__.set1_content) #10
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 61, i32 noundef 786690, ptr noundef null) #10
  br label %bb.x

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @OSSL_HTTP_REQ_CTX_add1_header(ptr noundef nonnull %0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17)
  %.not31 = icmp eq i32 %i.g, 0
  br i1 %.not31, label %bb.x, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.j = tail call i32 @BIO_free(ptr noundef %i.i) #10 ; 0 uses
  store ptr null, ptr %i.h, align 8, !tbaa !23
  br i1 %i.c, label %bb.x, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.l = load i32, ptr %i.k, align 8, !tbaa !29
  %.not32 = icmp eq i32 %i.l, 0
  br i1 %.not32, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 304, ptr noundef nonnull @__func__.set1_content) #10
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 61, i32 noundef 786689, ptr noundef null) #10
  br label %bb.x

bb.i:                                             ; preds = %bb.g
  %i.m = icmp eq ptr %1, null
  br i1 %i.m, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 1, ptr %i.n, align 4, !tbaa !37
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.o = tail call i32 @OPENSSL_strncasecmp(ptr noundef nonnull %1, ptr noundef nonnull @.str.14, i64 noundef 5) #10
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 1, ptr %i.q, align 4, !tbaa !37
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !22
  %i.t = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.s, ptr noundef nonnull @.str.48, ptr noundef nonnull %1) #10
  %i.u = icmp slt i32 %i.t, 1
  br i1 %i.u, label %bb.x, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.v = tail call i32 @BIO_method_type(ptr noundef nonnull %2) #10
  %i.w = icmp eq i32 %i.v, 1026
  br i1 %i.w, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.x = call i64 @BIO_ctrl(ptr noundef nonnull %2, i32 noundef 107, i64 noundef 0, ptr noundef nonnull %i.a) #10
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.aa = call i32 @fseek(ptr noundef %i.z, i64 noundef 0, i32 noundef 2)
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.ad = call i64 @ftell(ptr noundef %i.ac)
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.af = call i32 @fseek(ptr noundef %i.ae, i64 noundef 0, i32 noundef 0) ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.ag = icmp ne ptr %.pre, null
  br label %bb.t

bb.r:                                             ; preds = %bb.p, %bb.o
  store ptr null, ptr %i.a, align 8, !tbaa !35
  br label %bb.t

bb.s:                                             ; preds = %bb.n
  %i.ah = tail call i64 @BIO_ctrl(ptr noundef nonnull %2, i32 noundef 3, i64 noundef 0, ptr noundef null) #10
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.r, %bb.s
  %i.ai = phi i1 [ %i.ag, %bb.q ], [ false, %bb.r ], [ false, %bb.s ]
  %.0 = phi i64 [ %i.ad, %bb.q ], [ 0, %bb.r ], [ %i.ah, %bb.s ] ; 2 uses
  %i.aj = icmp sgt i64 %.0, 0
  %or.cond3 = select i1 %i.ai, i1 true, i1 %i.aj
  br i1 %or.cond3, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !22
  %i.am = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.al, ptr noundef nonnull @.str.49, i64 noundef %.0) #10
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.ao = call i32 @BIO_up_ref(ptr noundef nonnull %2) #10
  %.not33 = icmp eq i32 %i.ao, 0
  br i1 %.not33, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %2, ptr %i.h, align 8, !tbaa !23
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.u, %bb.m, %bb.f, %bb.e, %bb.w, %bb.h, %bb.c
  %.027 = phi i32 [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.m ], [ 1, %bb.w ], [ 0, %bb.u ], [ 1, %bb.f ], [ 0, %bb.h ], [ 0, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.027
}

; Function Attrs: nounwind uwtable
define dso_local void @OSSL_HTTP_REQ_CTX_set_max_response_hdr_lines(ptr noundef writeonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 368, ptr noundef nonnull @__func__.OSSL_HTTP_REQ_CTX_set_max_response_hdr_lines) #10
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 61, i32 noundef 786690, ptr noundef null) #10
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %1, ptr %i.b, align 8, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @OSSL_HTTP_REQ_CTX_nbio(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 13 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store ptr null, ptr %i.c, align 8, !tbaa !38
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 562, ptr noundef nonnull @__func__.OSSL_HTTP_REQ_CTX_nbio) #10
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 61, i32 noundef 786690, ptr noundef null) #10
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 10 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 566, ptr noundef nonnull @__func__.OSSL_HTTP_REQ_CTX_nbio) #10
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 61, i32 noundef 786689, ptr noundef null) #10
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store ptr null, ptr %i.o, align 8, !tbaa !39
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.g
  %.0268 = phi i32 [ 0, %bb.g ], [ %.0268.be, %.backedge.backedge ] ; 6 uses
  %.0204 = phi i64 [ 0, %bb.g ], [ %.0204.be, %.backedge.backedge ] ; 7 uses
  %.0197 = phi i32 [ 0, %bb.g ], [ %.0197.be, %.backedge.backedge ] ; 6 uses
  %.0191 = phi i64 [ 0, %bb.g ], [ %.0191.be, %.backedge.backedge ] ; 6 uses
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !16  ; 13 uses
  %i.ac = load i32, ptr %0, align 8, !tbaa !9     ; 3 uses
  %i.ad = and i32 %i.ac, 4096
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %bb.s

bb.h:                                             ; preds = %.backedge
  %i.af = load i32, ptr %i.q, align 8, !tbaa !31
  %.not = icmp ne i32 %i.af, 0
  %.off = add i32 %i.ac, -5
  %switch = icmp ult i32 %.off, 2
  %or.cond265 = and i1 %switch, %.not
  br i1 %or.cond265, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.ah = load i32, ptr %i.r, align 8, !tbaa !15
  %i.ai = call i32 @BIO_read(ptr noundef %i.ag, ptr noundef %i.ab, i32 noundef %i.ah) #10
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.aj = call i32 @ERR_set_mark() #10            ; 0 uses
  %i.ak = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.al = load i32, ptr %i.r, align 8, !tbaa !15
  %i.am = call i32 @BIO_gets(ptr noundef %i.ak, ptr noundef %i.ab, i32 noundef %i.al) #10 ; 2 uses
  %i.an = icmp eq i32 %i.am, -2
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ao = call i32 @ERR_pop_to_mark() #10         ; 0 uses
  %i.ap = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.aq = load i32, ptr %i.r, align 8, !tbaa !15
  %i.ar = call i32 @BIO_get_line(ptr noundef %i.ap, ptr noundef %i.ab, i32 noundef %i.aq) #10
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.as = call i32 @ERR_clear_last_mark() #10     ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.i
  %.0210.in = phi i32 [ %i.ai, %bb.i ], [ %i.ar, %bb.k ], [ %i.am, %bb.l ] ; 3 uses
  %i.at = icmp slt i32 %.0210.in, 1
  br i1 %i.at, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.au = load i32, ptr %0, align 8, !tbaa !9
  %i.av = icmp eq i32 %i.au, 9
  br i1 %i.av, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aw = call fastcc i32 @check_set_resp_len(ptr noundef nonnull @.str.11, ptr noundef %0, i64 noundef %.0204) ; 0 uses
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  %i.ax = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.ay = call i32 @BIO_test_flags(ptr noundef %i.ax, i32 noundef 8) #10
  %.not263 = icmp eq i32 %i.ay, 0
  br i1 %.not263, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 596, ptr noundef nonnull @__func__.OSSL_HTTP_REQ_CTX_nbio) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 61, i32 noundef 128, ptr noundef null) #10
  br label %.loopexit

bb.r:                                             ; preds = %bb.m
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.ba = call i32 @BIO_write(ptr noundef %i.az, ptr noundef %i.ab, i32 noundef %.0210.in) #10
  %.not232 = icmp eq i32 %i.ba, %.0210.in
  br i1 %.not232, label %thread-pre-split, label %.loopexit

thread-pre-split:                                 ; preds = %bb.r
  %.pr = load i32, ptr %0, align 8, !tbaa !9
  br label %bb.s

bb.s:                                             ; preds = %thread-pre-split, %.backedge
  %i.bb = phi i32 [ %.pr, %thread-pre-split ], [ %i.ac, %.backedge ] ; 2 uses
  switch i32 %i.bb, label %.loopexit [
    i32 6, label %bb.dq
    i32 4097, label %bb.t
    i32 4098, label %.thread524
    i32 4099, label %bb.w
    i32 4100, label %bb.w
    i32 4101, label %bb.w
    i32 4102, label %bb.al
    i32 1, label %bb.ap
    i32 2, label %bb.ap
    i32 3, label %bb.ap
    i32 4, label %bb.ap
    i32 9, label %bb.ap
    i32 5, label %bb.dg
  ]

bb.t:                                             ; preds = %bb.s
  %i.bc = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.bd = call i32 @BIO_write(ptr noundef %i.bc, ptr noundef nonnull @.str.10, i32 noundef 2) #10
  %.not256 = icmp eq i32 %i.bd, 2
  br i1 %.not256, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 4096, ptr %0, align 8, !tbaa !9
  br label %.loopexit

bb.v:                                             ; preds = %bb.t
  store i32 4098, ptr %0, align 8, !tbaa !9
  br label %.thread524

bb.w:                                             ; preds = %bb.s, %bb.s, %bb.s
  %.pr523 = load i64, ptr %i.y, align 8, !tbaa !40 ; 2 uses
  %i.be = icmp sgt i64 %.pr523, 0
  br i1 %i.be, label %bb.x, label %bb.ad

.thread524:                                       ; preds = %bb.s, %bb.v
  %i.bf = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.bg = call i64 @BIO_ctrl(ptr noundef %i.bf, i32 noundef 3, i64 noundef 0, ptr noundef nonnull %i.x) #10 ; 3 uses
  store i64 %i.bg, ptr %i.y, align 8, !tbaa !40
  store i32 4099, ptr %0, align 8, !tbaa !9
  %i.bh = icmp sgt i64 %i.bg, 0
  br i1 %i.bh, label %bb.x, label %.thread525

bb.x:                                             ; preds = %.thread524, %bb.w
  %i.bi = phi i64 [ %i.bg, %.thread524 ], [ %.pr523, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.bj = load ptr, ptr %i.i, align 8, !tbaa !17
  %i.bk = load ptr, ptr %i.x, align 8, !tbaa !41
  %i.bl = call i32 @BIO_write_ex(ptr noundef %i.bj, ptr noundef %i.bk, i64 noundef %i.bi, ptr noundef nonnull %i.d) #10
  %.not261.not = icmp eq i32 %i.bl, 0
  br i1 %.not261.not, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.bm = load ptr, ptr %i.i, align 8, !tbaa !17
  %i.bn = call i32 @BIO_test_flags(ptr noundef %i.bm, i32 noundef 8) #10
  %.not262 = icmp eq i32 %i.bn, 0
  br i1 %.not262, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  store i32 4096, ptr %0, align 8, !tbaa !9
  br label %.thread

bb.aa:                                            ; preds = %bb.x
  %i.bo = load i32, ptr %0, align 8, !tbaa !9
  %i.bp = icmp eq i32 %i.bo, 4099
  br i1 %i.bp, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 4100, ptr %0, align 8, !tbaa !9
  br label %bb.ac

.thread:                                          ; preds = %bb.y, %bb.z
  %.1.ph = phi i32 [ -1, %bb.y ], [ 0, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %.loopexit

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.bq = load i64, ptr %i.d, align 8, !tbaa !42  ; 2 uses
  %i.br = load ptr, ptr %i.x, align 8, !tbaa !41
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bq
  store ptr %i.bs, ptr %i.x, align 8, !tbaa !41
  %i.bt = load i64, ptr %i.y, align 8, !tbaa !40
  %i.bu = sub i64 %i.bt, %i.bq
  store i64 %i.bu, ptr %i.y, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %.backedge.backedge

bb.ad:                                            ; preds = %bb.w
  %i.bv = icmp eq i32 %i.bb, 4100
  br i1 %i.bv, label %bb.ae, label %.thread525

bb.ae:                                            ; preds = %bb.ad
  %i.bw = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.bx = call i64 @BIO_ctrl(ptr noundef %i.bw, i32 noundef 1, i64 noundef 0, ptr noundef null) #10 ; 0 uses
  store i32 4101, ptr %0, align 8, !tbaa !9
  br label %.thread525

.thread525:                                       ; preds = %.thread524, %bb.ae, %bb.ad
  %i.by = load ptr, ptr %i.z, align 8, !tbaa !23  ; 2 uses
  %.not257 = icmp eq ptr %i.by, null
  br i1 %.not257, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %.thread525
  %i.bz = call i64 @BIO_ctrl(ptr noundef nonnull %i.by, i32 noundef 2, i64 noundef 0, ptr noundef null) #10
  %i.ca = and i64 %i.bz, 4294967295
  %.not258 = icmp eq i64 %i.ca, 0
  br i1 %.not258, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.cb = load ptr, ptr %i.z, align 8, !tbaa !23
  %i.cc = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.cd = load i32, ptr %i.r, align 8, !tbaa !15
  %i.ce = call i32 @BIO_read(ptr noundef %i.cb, ptr noundef %i.cc, i32 noundef %i.cd) #10 ; 2 uses
  %i.cf = icmp slt i32 %i.ce, 1
  br i1 %i.cf, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.cg = load ptr, ptr %i.z, align 8, !tbaa !23
  %i.ch = call i32 @BIO_test_flags(ptr noundef %i.cg, i32 noundef 8) #10
  %.not259 = icmp eq i32 %i.ch, 0
  br i1 %.not259, label %bb.ai, label %.loopexit

bb.ai:                                            ; preds = %bb.ah
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 665, ptr noundef nonnull @__func__.OSSL_HTTP_REQ_CTX_nbio) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 61, i32 noundef 128, ptr noundef null) #10
  br label %.loopexit

bb.aj:                                            ; preds = %bb.ag
  %i.ci = zext nneg i32 %i.ce to i64
  %i.cj = load ptr, ptr %i.p, align 8, !tbaa !16
  store ptr %i.cj, ptr %i.x, align 8, !tbaa !41
  store i64 %i.ci, ptr %i.y, align 8, !tbaa !40
  br label %.backedge.backedge

bb.ak:                                            ; preds = %bb.af, %.thread525
  store i32 4102, ptr %0, align 8, !tbaa !9
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.s
  %i.ck = load ptr, ptr %i.i, align 8, !tbaa !17
  %i.cl = call i64 @BIO_ctrl(ptr noundef %i.ck, i32 noundef 11, i64 noundef 0, ptr noundef null) #10
  %i.cm = trunc i64 %i.cl to i32
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 1, ptr %0, align 8, !tbaa !9
  br label %.backedge.backedge

bb.an:                                            ; preds = %bb.al
  %i.co = load ptr, ptr %i.i, align 8, !tbaa !17
  %i.cp = call i32 @BIO_test_flags(ptr noundef %i.co, i32 noundef 8) #10
  %.not260 = icmp eq i32 %i.cp, 0
  br i1 %.not260, label %bb.ao, label %.loopexit

bb.ao:                                            ; preds = %bb.an
  store i32 4096, ptr %0, align 8, !tbaa !9
  br label %.loopexit

bb.ap:                                            ; preds = %bb.s, %bb.s, %bb.s, %bb.s, %bb.s
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ab, i64 7 ; 10 uses
  br label %check_max_len.exit.outer.outer

check_max_len.exit.outer.outer:                   ; preds = %bb.cs, %bb.ap
  %.1269.ph.ph = phi i32 [ %.0268, %bb.ap ], [ %.2270, %bb.cs ]
  %.1205.ph.ph = phi i64 [ %.0204, %bb.ap ], [ %.1205, %bb.cs ]
  %.1198.ph.ph = phi i32 [ %.0197, %bb.ap ], [ %.4201, %bb.cs ] ; 7 uses
  %.1192.ph.ph = phi i64 [ %.0191, %bb.ap ], [ %i.dl, %bb.cs ]
  br label %check_max_len.exit.outer

check_max_len.exit.outer:                         ; preds = %check_max_len.exit.outer.backedge, %check_max_len.exit.outer.outer
  %.1269.ph = phi i32 [ %.1269.ph.ph, %check_max_len.exit.outer.outer ], [ %.1269.ph.be, %check_max_len.exit.outer.backedge ] ; 8 uses
  %.1205.ph = phi i64 [ %.1205.ph.ph, %check_max_len.exit.outer.outer ], [ %.1205, %check_max_len.exit.outer.backedge ]
  %.1192.ph = phi i64 [ %.1192.ph.ph, %check_max_len.exit.outer.outer ], [ %i.dl, %check_max_len.exit.outer.backedge ] ; 3 uses
  br label %check_max_len.exit

check_max_len.exit:                               ; preds = %check_max_len.exit.outer, %bb.ax
  %.1205 = phi i64 [ %i.di, %bb.ax ], [ %.1205.ph, %check_max_len.exit.outer ] ; 6 uses
  %i.cr = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.cs = call i64 @BIO_ctrl(ptr noundef %i.cr, i32 noundef 3, i64 noundef 0, ptr noundef nonnull %i.b) #10 ; 3 uses
  %i.ct = icmp slt i64 %i.cs, 1
  br i1 %i.ct, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %check_max_len.exit
  %i.cu = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.cv = call ptr @memchr(ptr noundef %i.cu, i32 noundef 10, i64 noundef %i.cs) #11
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq, %check_max_len.exit
  %i.cx = load i32, ptr %i.r, align 8, !tbaa !15
  %i.cy = sext i32 %i.cx to i64
  %.not255 = icmp slt i64 %i.cs, %i.cy
  br i1 %.not255, label %.backedge.backedge, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i32 4096, ptr %0, align 8, !tbaa !9
  br label %.loopexit

bb.at:                                            ; preds = %bb.aq
  %i.cz = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.da = load i32, ptr %i.r, align 8, !tbaa !15
  %i.db = call i32 @BIO_gets(ptr noundef %i.cz, ptr noundef %i.ab, i32 noundef %i.da) #10 ; 3 uses
  %i.dc = sext i32 %i.db to i64
  %i.dd = icmp slt i32 %i.db, 1
  br i1 %i.dd, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.de = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.df = call i32 @BIO_test_flags(ptr noundef %i.de, i32 noundef 8) #10
  %.not254 = icmp eq i32 %i.df, 0
  br i1 %.not254, label %bb.av, label %.backedge.backedge

bb.av:                                            ; preds = %bb.au
  store i32 4096, ptr %0, align 8, !tbaa !9
  br label %.loopexit

bb.aw:                                            ; preds = %bb.at
  %i.dg = load i32, ptr %0, align 8, !tbaa !9     ; 2 uses
  %i.dh = icmp eq i32 %i.dg, 9
  br i1 %i.dh, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.di = add i64 %.1205, %i.dc                   ; 3 uses
  %i.dj = load i64, ptr %i.s, align 8, !tbaa !20  ; 3 uses
  %.not.i = icmp ne i64 %i.dj, 0
  %i.dk = icmp ugt i64 %i.di, %i.dj
  %or.cond.i = and i1 %.not.i, %i.dk
  br i1 %or.cond.i, label %check_max_len.exit.thread, label %check_max_len.exit

check_max_len.exit.thread:                        ; preds = %bb.ax
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 512, ptr noundef nonnull @__func__.check_max_len) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 61, i32 noundef 117, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.11, i64 noundef %i.di, i64 noundef %i.dj) #10
  br label %.loopexit

bb.ay:                                            ; preds = %bb.aw
  %i.dl = add i64 %.1192.ph, 1                    ; 4 uses
  %i.dm = load i64, ptr %i.t, align 8, !tbaa !19  ; 2 uses
  %.not233 = icmp ne i64 %i.dm, 0
  %i.dn = icmp ult i64 %i.dm, %i.dl
  %or.cond264 = select i1 %.not233, i1 %i.dn, i1 false
  br i1 %or.cond264, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 733, ptr noundef nonnull @__func__.OSSL_HTTP_REQ_CTX_nbio) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 61, i32 noundef 130, ptr noundef null) #10
  store i32 4096, ptr %0, align 8, !tbaa !9
  br label %.loopexit

bb.ba:                                            ; preds = %bb.ay
  %i.do = load i32, ptr %i.r, align 8, !tbaa !15
  %i.dp = icmp eq i32 %i.db, %i.do
  br i1 %i.dp, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 740, ptr noundef nonnull @__func__.OSSL_HTTP_REQ_CTX_nbio) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 61, i32 noundef 113, ptr noundef null) #10
  store i32 4096, ptr %0, align 8, !tbaa !9
  br label %.loopexit

bb.bc:                                            ; preds = %bb.ba
  %i.dq = icmp eq i32 %i.dg, 1
  br i1 %i.dq, label %bb.bd, label %bb.bv

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.dr = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ab, ptr noundef nonnull dereferenceable(8) @.str.52, i64 noundef 7) #11
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.be, label %.critedge.thread.i

bb.be:                                            ; preds = %bb.bd
  %i.dt = load i8, ptr %i.cq, align 1, !tbaa !30  ; 3 uses
  %i.du = icmp sgt i8 %i.dt, 48
  %i.dv = zext i1 %i.du to i32                    ; 12 uses
  %.not87.i = icmp eq i8 %i.dt, 0
  br i1 %.not87.i, label %.critedge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.be, %bb.bf
  %i.dw = phi i8 [ %i.ea, %bb.bf ], [ %i.dt, %bb.be ]
  %.05488.i = phi ptr [ %i.dz, %bb.bf ], [ %i.cq, %bb.be ] ; 3 uses
  %i.dx = sext i8 %i.dw to i32
  %i.dy = call i32 @ossl_ctype_check(i32 noundef %i.dx, i32 noundef 8) #10
  %.not64.i = icmp eq i32 %i.dy, 0
  br i1 %.not64.i, label %bb.bf, label %.critedge.i

bb.bf:                                            ; preds = %.lr.ph.i
  %i.dz = getelementptr inbounds nuw i8, ptr %.05488.i, i64 1 ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !30  ; 2 uses
  %.not.i267 = icmp eq i8 %i.ea, 0
  br i1 %.not.i267, label %.critedge.thread.i, label %.lr.ph.i, !llvm.loop !43

.critedge.i:                                      ; preds = %.lr.ph.i
  %.pr.i = load i8, ptr %.05488.i, align 1, !tbaa !30 ; 2 uses
  %i.eb = icmp eq i8 %.pr.i, 0
  br i1 %i.eb, label %.critedge.thread.i, label %.preheader83.i

.preheader83.i:                                   ; preds = %.critedge.i, %bb.bg
  %.15589.i = phi ptr [ %i.ef, %bb.bg ], [ %.05488.i, %.critedge.i ] ; 5 uses
  %i.ec = phi i8 [ %.pr77.i, %bb.bg ], [ %.pr.i, %.critedge.i ]
  %i.ed = sext i8 %i.ec to i32
  %i.ee = call i32 @ossl_ctype_check(i32 noundef %i.ed, i32 noundef 8) #10
  %.not66.i = icmp eq i32 %i.ee, 0
  br i1 %.not66.i, label %.critedge2.i, label %bb.bg

bb.bg:                                            ; preds = %.preheader83.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.15589.i, i64 1 ; 2 uses
  %.pr77.i = load i8, ptr %i.ef, align 1, !tbaa !30 ; 2 uses
  %.not65.i = icmp eq i8 %.pr77.i, 0
  br i1 %.not65.i, label %.critedge.thread.i, label %.preheader83.i, !llvm.loop !45

.critedge2.i:                                     ; preds = %.preheader83.i
  %.pre.i = load i8, ptr %.15589.i, align 1, !tbaa !30 ; 2 uses
  %i.eg = icmp eq i8 %.pre.i, 0
  br i1 %i.eg, label %.critedge.thread.i, label %.preheader82.i

.preheader82.i:                                   ; preds = %.critedge2.i, %bb.bh
  %.090.i = phi ptr [ %i.ek, %bb.bh ], [ %.15589.i, %.critedge2.i ] ; 4 uses
  %i.eh = phi i8 [ %.pr78.i, %bb.bh ], [ %.pre.i, %.critedge2.i ]
  %i.ei = sext i8 %i.eh to i32
  %i.ej = call i32 @ossl_ctype_check(i32 noundef %i.ei, i32 noundef 8) #10
  %.not68.i = icmp eq i32 %i.ej, 0
  br i1 %.not68.i, label %bb.bh, label %.critedge4.i

bb.bh:                                            ; preds = %.preheader82.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.090.i, i64 1 ; 2 uses
  %.pr78.i = load i8, ptr %i.ek, align 1, !tbaa !30 ; 2 uses
  %.not67.i = icmp eq i8 %.pr78.i, 0
  br i1 %.not67.i, label %.critedge.thread.i, label %.preheader82.i, !llvm.loop !46

.critedge4.i:                                     ; preds = %.preheader82.i
  %.pre101.i = load i8, ptr %.090.i, align 1, !tbaa !30
  %i.el = icmp eq i8 %.pre101.i, 0
  br i1 %i.el, label %.critedge.thread.i, label %bb.bi

bb.bi:                                            ; preds = %.critedge4.i
  store i8 0, ptr %.090.i, align 1, !tbaa !30
  %i.em = call i64 @strtoul(ptr noundef nonnull %.15589.i, ptr noundef nonnull %i.a, i32 noundef 10) #10
  %i.en = trunc i64 %i.em to i32                  ; 5 uses
  %i.eo = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !30
  %.not69.i = icmp eq i8 %i.ep, 0
  br i1 %.not69.i, label %.preheader.i, label %.critedge.thread.i

.preheader.i:                                     ; preds = %bb.bi, %bb.bj
  %.0.pn.i = phi ptr [ %.1.i, %bb.bj ], [ %.090.i, %bb.bi ]
  %.1.i = getelementptr inbounds nuw i8, ptr %.0.pn.i, i64 1 ; 7 uses
  %i.eq = load i8, ptr %.1.i, align 1, !tbaa !30  ; 2 uses
  %.not70.i = icmp eq i8 %i.eq, 0
  br i1 %.not70.i, label %.critedge6.thread.i, label %bb.bj

bb.bj:                                            ; preds = %.preheader.i
  %i.er = sext i8 %i.eq to i32
  %i.es = call i32 @ossl_ctype_check(i32 noundef %i.er, i32 noundef 8) #10
  %.not71.i = icmp eq i32 %i.es, 0
  br i1 %.not71.i, label %.critedge6.i, label %.preheader.i, !llvm.loop !47

.critedge6.i:                                     ; preds = %bb.bj
  %.pr79.i = load i8, ptr %.1.i, align 1, !tbaa !30
  %.not72.i = icmp eq i8 %.pr79.i, 0
  br i1 %.not72.i, label %.critedge6.thread.i, label %bb.bk

bb.bk:                                            ; preds = %.critedge6.i
  %i.et = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.1.i) #11
  %i.eu = getelementptr inbounds nuw i8, ptr %.1.i, i64 %i.et
  %storemerge91.i = getelementptr inbounds i8, ptr %i.eu, i64 -1 ; 2 uses
  %i.ev = load i8, ptr %storemerge91.i, align 1, !tbaa !30
  %i.ew = sext i8 %i.ev to i32
  %i.ex = call i32 @ossl_ctype_check(i32 noundef %i.ew, i32 noundef 8) #10
  %.not7392.i = icmp eq i32 %i.ex, 0
  br i1 %.not7392.i, label %.critedge6.thread.i, label %.lr.ph94.i

.lr.ph94.i:                                       ; preds = %bb.bk, %.lr.ph94.i
  %storemerge93.i = phi ptr [ %storemerge.i, %.lr.ph94.i ], [ %storemerge91.i, %bb.bk ] ; 2 uses
  store i8 0, ptr %storemerge93.i, align 1, !tbaa !30
  %storemerge.i = getelementptr inbounds i8, ptr %storemerge93.i, i64 -1 ; 3 uses
  store ptr %storemerge.i, ptr %i.a, align 8, !tbaa !38
  %i.ey = load i8, ptr %storemerge.i, align 1, !tbaa !30
  %i.ez = sext i8 %i.ey to i32
  %i.fa = call i32 @ossl_ctype_check(i32 noundef %i.ez, i32 noundef 8) #10
  %.not73.i = icmp eq i32 %i.fa, 0
  br i1 %.not73.i, label %.critedge6.thread.i, label %.lr.ph94.i, !llvm.loop !48

.critedge6.thread.i:                              ; preds = %.preheader.i, %.lr.ph94.i, %bb.bk, %.critedge6.i
  switch i32 %i.en, label %bb.bl [
    i32 200, label %parse_http_line1.exit
    i32 301, label %parse_http_line1.exit
    i32 302, label %parse_http_line1.exit
  ]

bb.bl:                                            ; preds = %.critedge6.thread.i
  %i.fb = icmp eq i32 %i.en, 404
  %i.fc = icmp slt i32 %i.en, 400
  %or.cond.i266 = or i1 %i.fb, %i.fc
  br i1 %or.cond.i266, label %bb.bm, label %parse_http_line1.exit

bb.bm:                                            ; preds = %bb.bl
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 493, ptr noundef nonnull @__func__.parse_http_line1) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 61, i32 noundef 114, ptr noundef nonnull @.str.53, ptr noundef nonnull %.15589.i) #10
  %i.fd = load i8, ptr %.1.i, align 1, !tbaa !30
  %.not74.i = icmp eq i8 %i.fd, 0
  br i1 %.not74.i, label %parse_http_line1.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void (i32, ...) @ERR_add_error_data(i32 noundef 2, ptr noundef nonnull @.str.54, ptr noundef nonnull %.1.i) #10
  br label %parse_http_line1.exit

.critedge.thread.i:                               ; preds = %bb.bf, %bb.bg, %bb.bh, %bb.bi, %.critedge4.i, %.critedge2.i, %.critedge.i, %bb.be, %bb.bd
  %.5273 = phi i32 [ %i.dv, %bb.be ], [ %i.dv, %bb.bh ], [ %i.dv, %.critedge.i ], [ %i.dv, %.critedge2.i ], [ %.1269.ph, %bb.bd ], [ %i.dv, %.critedge4.i ], [ %i.dv, %bb.bi ], [ %i.dv, %bb.bg ], [ %i.dv, %bb.bf ]
  %.058.i = phi ptr [ %i.cq, %bb.be ], [ %i.cq, %bb.bh ], [ %i.cq, %.critedge.i ], [ %i.cq, %.critedge2.i ], [ %i.ab, %bb.bd ], [ %i.cq, %.critedge4.i ], [ %i.cq, %bb.bi ], [ %i.cq, %bb.bg ], [ %i.cq, %bb.bf ] ; 3 uses
  br label %bb.bo

bb.bo:                                            ; preds = %bb.br, %.critedge.thread.i
  %indvars.iv.i = phi i64 [ 0, %.critedge.thread.i ], [ %indvars.iv.next.i, %bb.br ] ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.058.i, i64 %indvars.iv.i ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !30  ; 2 uses
  %.not75.i = icmp eq i8 %i.ff, 0
  br i1 %.not75.i, label %parse_http_line1.exit.thread, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fg = sext i8 %i.ff to i32
  %i.fh = call i32 @ossl_ctype_check(i32 noundef %i.fg, i32 noundef 256) #10
  %.not76.i = icmp eq i32 %i.fh, 0
  br i1 %.not76.i, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i8 32, ptr %i.fe, align 1, !tbaa !30
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 60
  br i1 %exitcond.not.i, label %parse_http_line1.exit.thread, label %bb.bo, !llvm.loop !49

parse_http_line1.exit.thread:                     ; preds = %bb.bo, %bb.br
  %.057.lcssa.i = phi i64 [ 60, %bb.br ], [ %indvars.iv.i, %bb.bo ]
  %i.fi = and i64 %.057.lcssa.i, 4294967295
  %i.fj = getelementptr inbounds nuw i8, ptr %.058.i, i64 %i.fi
  store i8 0, ptr %i.fj, align 1, !tbaa !30
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 505, ptr noundef nonnull @__func__.parse_http_line1) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 61, i32 noundef 126, ptr noundef nonnull @.str.55, ptr noundef nonnull %.058.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %check_max_len.exit.outer.backedge

parse_http_line1.exit:                            ; preds = %.critedge6.thread.i, %.critedge6.thread.i, %.critedge6.thread.i, %bb.bl, %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  switch i32 %i.en, label %bb.bu [
    i32 200, label %check_max_len.exit.outer.backedge
    i32 301, label %bb.bs
    i32 302, label %bb.bs
  ]

bb.bs:                                            ; preds = %parse_http_line1.exit, %parse_http_line1.exit
  %i.fk = load i32, ptr %i.u, align 8, !tbaa !29
  %.not252 = icmp eq i32 %i.fk, 0
  br i1 %.not252, label %check_max_len.exit.outer.backedge, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 765, ptr noundef nonnull @__func__.OSSL_HTTP_REQ_CTX_nbio) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 61, i32 noundef 116, ptr noundef null) #10
  br label %check_max_len.exit.outer.backedge

bb.bu:                                            ; preds = %parse_http_line1.exit
  %i.fl = icmp slt i32 %i.en, 400
  %spec.select = select i1 %i.fl, i32 3, i32 2
  br label %check_max_len.exit.outer.backedge

check_max_len.exit.outer.backedge:                ; preds = %parse_http_line1.exit.thread, %bb.bt, %bb.bu, %bb.bs, %parse_http_line1.exit
  %.sink = phi i32 [ 4, %bb.bs ], [ 2, %parse_http_line1.exit ], [ %spec.select, %bb.bu ], [ 3, %parse_http_line1.exit.thread ], [ 3, %bb.bt ]
  %.1269.ph.be = phi i32 [ %i.dv, %bb.bs ], [ %i.dv, %parse_http_line1.exit ], [ %i.dv, %bb.bu ], [ %.5273, %parse_http_line1.exit.thread ], [ %i.dv, %bb.bt ]
  store i32 %.sink, ptr %0, align 8, !tbaa !9
  br label %check_max_len.exit.outer

bb.bv:                                            ; preds = %bb.bc
  %i.fm = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ab, i32 noundef 58) #11 ; 3 uses
  %.not234 = icmp eq ptr %i.fm, null
  br i1 %.not234, label %.thread290, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  store i8 0, ptr %i.fm, align 1, !tbaa !30
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bx, %bb.bw
  %.pn = phi ptr [ %i.fm, %bb.bw ], [ %.0195, %bb.bx ]
  %.0195 = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 16 uses
  %i.fn = load i8, ptr %.0195, align 1, !tbaa !30
  %i.fo = sext i8 %i.fn to i32
  %i.fp = call i32 @ossl_ctype_check(i32 noundef %i.fo, i32 noundef 8) #10
  %.not235 = icmp eq i32 %i.fp, 0
  br i1 %.not235, label %bb.by, label %bb.bx, !llvm.loop !50

bb.by:                                            ; preds = %bb.bx
  %i.fq = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.0195, i32 noundef 13) #11 ; 3 uses
  store ptr %i.fq, ptr %i.c, align 8, !tbaa !38
  %i.fr = icmp eq ptr %i.fq, null
  br i1 %i.fr, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.fs = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.0195, i32 noundef 10) #11 ; 3 uses
  store ptr %i.fs, ptr %i.c, align 8, !tbaa !38
  %.not236 = icmp eq ptr %i.fs, null
  br i1 %.not236, label %.thread290, label %bb.ca

bb.ca:                                            ; preds = %bb.by, %bb.bz
  %i.ft = phi ptr [ %i.fs, %bb.bz ], [ %i.fq, %bb.by ]
  store i8 0, ptr %i.ft, align 1, !tbaa !30
  %1 = load i32, ptr %0, align 8, !tbaa !9
  %i.fu = icmp eq i32 %1, 4
  br i1 %i.fu, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %i.fv = call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.12) #10
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store ptr %.0195, ptr %i.o, align 8, !tbaa !39
  %i.fx = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.fy = call i64 @BIO_ctrl(ptr noundef %i.fx, i32 noundef 1, i64 noundef 0, ptr noundef null) #10 ; 0 uses
  br label %.loopexit

bb.cd:                                            ; preds = %bb.cb, %bb.ca
  %i.fz = call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.13) #10
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %bb.ce, label %.thread294

bb.ce:                                            ; preds = %bb.cd
  %i.gb = call i32 @OPENSSL_strncasecmp(ptr noundef nonnull %.0195, ptr noundef nonnull @.str.14, i64 noundef 5) #10 ; 0 uses
  %i.gc = load i32, ptr %0, align 8, !tbaa !9
  %i.gd = icmp eq i32 %i.gc, 2
  br i1 %i.gd, label %bb.cf, label %.thread294

bb.cf:                                            ; preds = %bb.ce
  %i.ge = load ptr, ptr %i.v, align 8, !tbaa !27  ; 2 uses
  %.not237 = icmp eq ptr %i.ge, null
  br i1 %.not237, label %.thread294, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.gf = call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %i.ge, ptr noundef nonnull %.0195) #10
  %.not238 = icmp eq i32 %i.gf, 0
  br i1 %.not238, label %.thread294, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.gg = load ptr, ptr %i.v, align 8, !tbaa !27  ; 3 uses
  %i.gh = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.gg, i32 noundef 59) #11
  %.not239 = icmp eq ptr %i.gh, null
  br i1 %.not239, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  %i.gi = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.0195, i32 noundef 59) #11 ; 2 uses
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = ptrtoint ptr %.0195 to i64
  %i.gm = sub i64 %i.gk, %i.gl                    ; 2 uses
  %i.gn = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gg) #11
  %.not240 = icmp eq i64 %i.gm, %i.gn
  br i1 %.not240, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.go = call i32 @OPENSSL_strncasecmp(ptr noundef nonnull %i.gg, ptr noundef nonnull %.0195, i64 noundef %i.gm) #10
  %.not241 = icmp eq i32 %i.go, 0
  br i1 %.not241, label %.thread294, label %bb.cl

bb.cl:                                            ; preds = %bb.ch, %bb.ci, %bb.cj, %bb.ck
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 812, ptr noundef nonnull @__func__.OSSL_HTTP_REQ_CTX_nbio) #10
  %i.gp = load ptr, ptr %i.v, align 8, !tbaa !27
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 61, i32 noundef 118, ptr noundef nonnull @.str.15, ptr noundef %i.gp, ptr noundef nonnull %.0195) #10
  br label %.loopexit

.thread294:                                       ; preds = %bb.cg, %bb.ck, %bb.ce, %bb.cf, %bb.cd
  %.3200 = phi i32 [ %.1198.ph.ph, %bb.cd ], [ %.1198.ph.ph, %bb.cf ], [ %.1198.ph.ph, %bb.ce ], [ 1, %bb.ck ], [ 1, %bb.cg ] ; 4 uses
  %i.gq = call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.16) #10
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %.thread294
  %i.gs = call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.0195, ptr noundef nonnull @.str.17) #10
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %.thread290, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.gu = call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.0195, ptr noundef nonnull @.str.18) #10
  %i.gv = icmp eq i32 %i.gu, 0
  %spec.select301 = select i1 %i.gv, i32 0, i32 %.1269.ph
  br label %.thread290

bb.co:                                            ; preds = %.thread294
  %i.gw = call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.19) #10
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %bb.cp, label %.thread290

bb.cp:                                            ; preds = %bb.co
  %i.gy = call i64 @strtoul(ptr noundef nonnull %.0195, ptr noundef nonnull %i.c, i32 noundef 10) #10
  %i.gz = load ptr, ptr %i.c, align 8, !tbaa !38  ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %.0195
  br i1 %i.ha, label %.thread298, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.hb = load i8, ptr %i.gz, align 1, !tbaa !30
  %.not242 = icmp eq i8 %i.hb, 0
  br i1 %.not242, label %bb.cr, label %.thread298

.thread298:                                       ; preds = %bb.cp, %bb.cq
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 832, ptr noundef nonnull @__func__.OSSL_HTTP_REQ_CTX_nbio) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 61, i32 noundef 119, ptr noundef nonnull @.str.20, ptr noundef nonnull %.0195) #10
  br label %.loopexit

bb.cr:                                            ; preds = %bb.cq
  %i.hc = call fastcc i32 @check_set_resp_len(ptr noundef nonnull @.str.21, ptr noundef %0, i64 noundef %i.gy)
  %.not243.not = icmp eq i32 %i.hc, 0
  br i1 %.not243.not, label %.loopexit, label %.thread290

.thread290:                                       ; preds = %bb.bz, %bb.cn, %bb.bv, %bb.cm, %bb.cr, %bb.co
  %.2270 = phi i32 [ 1, %bb.cm ], [ %.1269.ph, %bb.bv ], [ %spec.select301, %bb.cn ], [ %.1269.ph, %bb.cr ], [ %.1269.ph, %bb.co ], [ %.1269.ph, %bb.bz ] ; 3 uses
  %.4201 = phi i32 [ %.3200, %bb.cm ], [ %.1198.ph.ph, %bb.bv ], [ %.3200, %bb.cn ], [ %.3200, %bb.cr ], [ %.3200, %bb.co ], [ %.1198.ph.ph, %bb.bz ] ; 3 uses
  %i.hd = load ptr, ptr %i.p, align 8, !tbaa !16
  br label %bb.cs

bb.cs:                                            ; preds = %bb.ct, %.thread290
  %storemerge = phi ptr [ %i.hd, %.thread290 ], [ %i.hf, %bb.ct ] ; 3 uses
  store ptr %storemerge, ptr %i.b, align 8, !tbaa !38
  %i.he = load i8, ptr %storemerge, align 1, !tbaa !30
  switch i8 %i.he, label %check_max_len.exit.outer.outer [
    i8 10, label %bb.ct
    i8 13, label %bb.ct
    i8 0, label %bb.cu
  ]

bb.ct:                                            ; preds = %bb.cs, %bb.cs
  %i.hf = getelementptr inbounds nuw i8, ptr %storemerge, i64 1
  br label %bb.cs, !llvm.loop !51

bb.cu:                                            ; preds = %bb.cs
  %i.hg = load i32, ptr %i.w, align 8, !tbaa !34  ; 2 uses
  %i.hh = icmp eq i32 %i.hg, 0
  %i.hi = icmp ne i32 %.2270, 0
  %or.cond5 = select i1 %i.hh, i1 true, i1 %i.hi
  br i1 %or.cond5, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.hj = icmp eq i32 %i.hg, 2
  store i32 0, ptr %i.w, align 8, !tbaa !34
  br i1 %i.hj, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 858, ptr noundef nonnull @__func__.OSSL_HTTP_REQ_CTX_nbio) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 61, i32 noundef 127, ptr noundef null) #10
  br label %.loopexit

bb.cx:                                            ; preds = %bb.cv, %bb.cu
  %i.hk = load i32, ptr %0, align 8, !tbaa !9     ; 2 uses
  %i.hl = icmp eq i32 %i.hk, 3
  br i1 %i.hl, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  store i32 9, ptr %0, align 8, !tbaa !9
  %i.hm = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.hn = call i64 @BIO_ctrl(ptr noundef %i.hm, i32 noundef 1, i64 noundef 0, ptr noundef null) #10 ; 0 uses
  br label %.loopexit

bb.cz:                                            ; preds = %bb.cx
  %i.ho = load ptr, ptr %i.v, align 8, !tbaa !27
  %i.hp = icmp eq ptr %i.ho, null
  %i.hq = icmp ne i32 %.4201, 0
  %or.cond7 = select i1 %i.hp, i1 true, i1 %i.hq
  br i1 %or.cond7, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 877, ptr noundef nonnull @__func__.OSSL_HTTP_REQ_CTX_nbio) #10
  %i.hr = load ptr, ptr %i.v, align 8, !tbaa !27
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 61, i32 noundef 121, ptr noundef nonnull @.str.22, ptr noundef %i.hr) #10
  br label %.loopexit

bb.db:                                            ; preds = %bb.cz
  %i.hs = icmp eq i32 %i.hk, 4
  br i1 %i.hs, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 883, ptr noundef nonnull @__func__.OSSL_HTTP_REQ_CTX_nbio) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 61, i32 noundef 111, ptr noundef null) #10
  br label %.loopexit

bb.dd:                                            ; preds = %bb.db
  %i.ht = load i32, ptr %i.q, align 8, !tbaa !31
  %.not248 = icmp eq i32 %i.ht, 0
  br i1 %.not248, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  store i32 8, ptr %0, align 8, !tbaa !9
  br label %.loopexit

bb.df:                                            ; preds = %bb.dd
  store i32 5, ptr %0, align 8, !tbaa !9
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.s
  %.3271 = phi i32 [ %.2270, %bb.df ], [ %.0268, %bb.s ] ; 3 uses
  %.2206 = phi i64 [ %.1205, %bb.df ], [ %.0204, %bb.s ] ; 2 uses
  %.5202 = phi i32 [ %.4201, %bb.df ], [ %.0197, %bb.s ] ; 3 uses
  %.2193 = phi i64 [ %i.dl, %bb.df ], [ %.0191, %bb.s ] ; 3 uses
  %i.hu = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.hv = call i64 @BIO_ctrl(ptr noundef %i.hu, i32 noundef 3, i64 noundef 0, ptr noundef nonnull %i.b) #10 ; 2 uses
  %i.hw = icmp slt i64 %i.hv, 2
  br i1 %i.hw, label %.backedge.backedge, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.hx = load ptr, ptr %i.b, align 8, !tbaa !38  ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 1 ; 2 uses
  store ptr %i.hy, ptr %i.b, align 8, !tbaa !38
  %i.hz = load i8, ptr %i.hx, align 1, !tbaa !30
  %.not249 = icmp eq i8 %i.hz, 48
  br i1 %.not249, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 912, ptr noundef nonnull @__func__.OSSL_HTTP_REQ_CTX_nbio) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 61, i32 noundef 110, ptr noundef null) #10
  br label %.loopexit

bb.dj:                                            ; preds = %bb.dh
  %i.ia = load i8, ptr %i.hy, align 1, !tbaa !30  ; 2 uses
  %i.ib = zext i8 %i.ia to i32                    ; 4 uses
  %.not250 = icmp sgt i8 %i.ia, -1
  br i1 %.not250, label %bb.dn, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ic = icmp samesign ult i64 %i.hv, 6
  br i1 %i.ic, label %.backedge.backedge, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.id = and i32 %i.ib, 127                      ; 3 uses
  %i.ie = add nsw i32 %i.id, -5
  %or.cond9 = icmp ult i32 %i.ie, -4
  br i1 %or.cond9, label %bb.dm, label %.lr.ph.preheader

bb.dm:                                            ; preds = %bb.dl
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 927, ptr noundef nonnull @__func__.OSSL_HTTP_REQ_CTX_nbio) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 61, i32 noundef 109, ptr noundef null) #10
  br label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.dl
  %i.if = getelementptr inbounds nuw i8, ptr %i.hx, i64 2 ; 2 uses
  %i.ig = add nsw i32 %i.id, -1
  %xtraiter = and i32 %i.ib, 3                    ; 3 uses
  %i.ih = icmp ult i32 %i.ig, 3
  br i1 %i.ih, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.ib, 124
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.3207404 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.jc, %.lr.ph ]
  %i.ii = phi ptr [ %i.if, %.lr.ph.preheader.new ], [ %i.iz, %.lr.ph ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 1 ; 2 uses
  store ptr %i.ij, ptr %i.b, align 8, !tbaa !38
  %i.ik = load i8, ptr %i.ii, align 1, !tbaa !30
  %i.il = zext i8 %i.ik to i64
  %i.im = shl i64 %.3207404, 16
  %i.in = shl nuw nsw i64 %i.il, 8
  %i.io = or disjoint i64 %i.im, %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ii, i64 2 ; 2 uses
  store ptr %i.ip, ptr %i.b, align 8, !tbaa !38
  %i.iq = load i8, ptr %i.ij, align 1, !tbaa !30
  %i.ir = zext i8 %i.iq to i64
  %i.is = or disjoint i64 %i.io, %i.ir
  %i.it = getelementptr inbounds nuw i8, ptr %i.ii, i64 3 ; 2 uses
  store ptr %i.it, ptr %i.b, align 8, !tbaa !38
  %i.iu = load i8, ptr %i.ip, align 1, !tbaa !30
  %i.iv = zext i8 %i.iu to i64
  %i.iw = shl i64 %i.is, 16
  %i.ix = shl nuw nsw i64 %i.iv, 8
  %i.iy = or disjoint i64 %i.iw, %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ii, i64 4 ; 3 uses
  store ptr %i.iz, ptr %i.b, align 8, !tbaa !38
  %i.ja = load i8, ptr %i.it, align 1, !tbaa !30
  %i.jb = zext i8 %i.ja to i64
  %i.jc = or disjoint i64 %i.iy, %i.jb            ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !52

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.3207404.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.jc, %._crit_edge.unr-lcssa ]
  %.epil.init = phi ptr [ %i.if, %.lr.ph.preheader ], [ %i.iz, %._crit_edge.unr-lcssa ]
  %lcmp.mod769 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod769)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.3207404.epil = phi i64 [ %i.ji, %.lr.ph.epil ], [ %.3207404.epil.init, %.lr.ph.epil.preheader ]
  %i.jd = phi ptr [ %i.jf, %.lr.ph.epil ], [ %.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.je = shl i64 %.3207404.epil, 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 1 ; 2 uses
  store ptr %i.jf, ptr %i.b, align 8, !tbaa !38
  %i.jg = load i8, ptr %i.jd, align 1, !tbaa !30
  %i.jh = zext i8 %i.jg to i64
  %i.ji = or disjoint i64 %i.je, %i.jh            ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !53

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa745 = phi i64 [ %i.jc, %._crit_edge.unr-lcssa ], [ %i.ji, %.lr.ph.epil ]
  %narrow = add nuw nsw i32 %i.id, 2
end_hunk_0
