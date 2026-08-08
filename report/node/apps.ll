inline.NumInlined: 99
inline.NumDeleted: 34
begin_hunk_0_@load_key_certs_crls:bb.a
  %.3170.ph = phi ptr [ null, %bb.au ], [ %.0167350, %.lr.ph ], [ null, %bb.bq ]
  %.3.ph = phi ptr [ null, %bb.au ], [ %.0164351, %.lr.ph ], [ null, %bb.bq ]
  %i.de = call i32 @OSSL_STORE_close(ptr noundef nonnull %.2202) #25 ; 0 uses
  br label %bb.br

.critedge:                                        ; preds = %bb.bp, %bb.bo
  %i.df = call i32 @OSSL_STORE_close(ptr noundef nonnull %.2202) #25 ; 0 uses
  %i.dg = icmp eq ptr %i.cu, null
  br i1 %i.dg, label %bb.br, label %bb.bz

bb.br:                                            ; preds = %.critedge.thread393, %.critedge
  %.3410 = phi ptr [ %.3.ph, %.critedge.thread393 ], [ %.1165, %.critedge ]
  %.3170409 = phi ptr [ %.3170.ph, %.critedge.thread393 ], [ %.1168, %.critedge ]
  %.3177408 = phi ptr [ %.3177.ph, %.critedge.thread393 ], [ %.1175, %.critedge ]
  %.3189407 = phi i32 [ %.3189.ph, %.critedge.thread393 ], [ %.1187, %.critedge ]
  %.3193406 = phi i32 [ %.3193.ph, %.critedge.thread393 ], [ %.1191, %.critedge ]
  %.4198405 = phi ptr [ %.4198.ph, %.critedge.thread393 ], [ %.2196, %.critedge ]
  %.4209404 = phi ptr [ %.4209.ph, %.critedge.thread393 ], [ %.2207, %.critedge ]
  %i.dh = icmp sgt i32 %.3193406, 0
  %i.di = icmp sgt i32 %.3189407, 0
  %.not250 = icmp eq ptr %.3410, null
  br i1 %.not250, label %bb.bs, label %bb.bx

bb.bs:                                            ; preds = %bb.br
  %.not251 = icmp eq ptr %.3170409, null
  br i1 %.not251, label %bb.bt, label %bb.bx

bb.bt:                                            ; preds = %bb.bs
  %.not252 = icmp eq ptr %.3177408, null
  br i1 %.not252, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %.not253 = icmp eq ptr %.4198405, null
  br i1 %.not253, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %.not254335 = icmp eq ptr %10, null
  %.not254 = or i1 %.not254335, %i.dh
  br i1 %.not254, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %.not255 = icmp eq ptr %.4209404, null
  %.not256336 = icmp eq ptr %12, null
  %.not256 = or i1 %.not256336, %i.di
  %i.dj = select i1 %.not256, ptr null, ptr @.str.35
  %i.dk = select i1 %.not255, ptr %i.dj, ptr @.str.22
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bs, %bb.bu, %bb.bv, %bb.bw, %bb.bt, %bb.br
  %i.dl = phi ptr [ @.str.27, %bb.br ], [ @.str.28, %bb.bs ], [ @.str.29, %bb.bt ], [ @.str.17, %bb.bu ], [ %i.dk, %bb.bw ], [ @.str.32, %bb.bv ] ; 3 uses
  %i.dm = icmp eq ptr %i.dl, null
  %i.dn = icmp ne i32 %5, 0
  %or.cond13 = or i1 %i.dn, %i.dm
  br i1 %or.cond13, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.do = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.dp = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.do, ptr noundef nonnull @.str.45) #25 ; 0 uses
  br label %bb.bz

bb.bz:                                            ; preds = %.critedge.thread381, %.critedge.thread, %bb.bx, %bb.by, %.critedge
  %.2163329 = phi ptr [ %.1162, %bb.bx ], [ %.1162, %bb.by ], [ %.1162, %.critedge ], [ %0, %.critedge.thread ], [ %.2163.ph, %.critedge.thread381 ] ; 2 uses
  %.3181 = phi ptr [ %i.dl, %bb.bx ], [ %i.dl, %bb.by ], [ %i.cu, %.critedge ], [ %i.i, %.critedge.thread ], [ %.2180.ph, %.critedge.thread381 ] ; 4 uses
  %i.dq = icmp eq ptr %.3181, null                ; 2 uses
  %i.dr = icmp ne i32 %5, 0
  %or.cond15 = or i1 %i.dr, %i.dq
  br i1 %or.cond15, label %bb.ci, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ds = call i64 @ERR_peek_last_error() #25     ; 2 uses
  %.not257 = icmp eq ptr %4, null
  br i1 %.not257, label %.critedge269, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.dt = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %.3181) #26
  %.not258 = icmp eq ptr %i.dt, null
  %i.du = load ptr, ptr @bio_err, align 8, !tbaa !12 ; 2 uses
  br i1 %.not258, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.dv = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.du, ptr noundef nonnull @.str.46, ptr noundef nonnull %4) #25 ; 0 uses
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %i.dw = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.du, ptr noundef nonnull @.str.46, ptr noundef nonnull %.3181) #25 ; 0 uses
  %i.dx = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.dy = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.dx, ptr noundef nonnull @.str.47, ptr noundef nonnull %4) #25 ; 0 uses
  br label %bb.ce

.critedge269:                                     ; preds = %bb.ca
  %i.dz = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.ea = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.dz, ptr noundef nonnull @.str.46, ptr noundef nonnull %.3181) #25 ; 0 uses
  br label %bb.ce

bb.ce:                                            ; preds = %.critedge269, %bb.cd, %bb.cc
  %.not259 = icmp eq ptr %.2163329, null
  br i1 %.not259, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.eb = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.ec = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.eb, ptr noundef nonnull @.str.48, ptr noundef nonnull %.2163329) #25 ; 0 uses
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.ed = and i64 %i.ds, 2147483648
  %.not260 = icmp eq i64 %i.ed, 0
  br i1 %.not260, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ee = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.ef = trunc i64 %i.ds to i32
  %.0.i270 = and i32 %i.ef, 2147483647
  %i.eg = call ptr @strerror(i32 noundef %.0.i270) #25
  %i.eh = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ee, ptr noundef nonnull @.str.49, ptr noundef %i.eg) #25 ; 0 uses
  %i.ei = call i32 @ERR_pop_to_mark() #25         ; 0 uses
  %i.ej = call i32 @ERR_set_mark() #25            ; 0 uses
  br label %bb.cj

bb.ci:                                            ; preds = %bb.bz
  %i.ek = call i32 @ERR_pop_to_mark() #25         ; 0 uses
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch, %bb.cg
  %i.el = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.em = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.el, ptr noundef nonnull @.str.50) #25 ; 0 uses
  %i.en = load ptr, ptr @bio_err, align 8, !tbaa !12
  call void @ERR_print_errors(ptr noundef %i.en) #25
  %i.eo = call i32 @ERR_clear_last_mark() #25     ; 0 uses
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.ep = zext i1 %i.dq to i32
  br label %bb.cl

bb.cl:                                            ; preds = %bb.h, %bb.i, %bb.ck
  %.0 = phi i32 [ 0, %bb.h ], [ %i.ep, %bb.ck ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @load_crl(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr null, ptr %i.a, align 8, !tbaa !33
  %i.b = icmp eq ptr %3, null
  %spec.store.select = select i1 %i.b, ptr @.str.22, ptr %3 ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.18, i64 noundef 8) #26
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.f = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.e, ptr noundef nonnull @.str.19, ptr noundef nonnull %spec.store.select) #25 ; 0 uses
  br label %bb.g

.split:                                           ; preds = %bb.a
  %i.g = call i32 @load_key_certs_crls(ptr noundef null, i32 noundef %1, i32 noundef %2, ptr noundef null, ptr noundef nonnull %spec.store.select, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef null) ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.h = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.20, i64 noundef 7) #26
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %.split12

.split12:                                         ; preds = %bb.d
  %i.j = call i32 @load_key_certs_crls(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef null, ptr noundef nonnull %spec.store.select, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef null) ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @X509_CRL_load_http(ptr noundef nonnull %0, ptr noundef null, ptr noundef null, i32 noundef 0) #25 ; 2 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !33
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr @bio_err, align 8, !tbaa !12
  tail call void @ERR_print_errors(ptr noundef %i.m) #25
  %i.n = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.o = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.n, ptr noundef nonnull @.str.21, ptr noundef nonnull %spec.store.select, ptr noundef nonnull %0) #25 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.split, %.split12, %bb.f, %bb.e, %bb.c
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret ptr %i.p
}

declare ptr @X509_CRL_load_http(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @load_csr(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %spec.store.select = select i1 %i.a, i32 32773, i32 %1
  %i.b = tail call fastcc ptr @bio_open_default_(ptr noundef %0, i8 noundef signext 114, i32 noundef %spec.store.select, i32 noundef 0) ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.e [
    i32 4, label %bb.c
    i32 32773, label %bb.d
    i32 0, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @d2i_X509_REQ_bio(ptr noundef nonnull %i.b, ptr noundef null) #25
  br label %bb.f

bb.d:                                             ; preds = %bb.b, %bb.b
  %i.e = tail call ptr @PEM_read_bio_X509_REQ(ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null, ptr noundef null) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @print_format_error(i32 noundef %1, i64 noundef 6) #25
  br label %.thread

bb.f:                                             ; preds = %bb.c, %bb.d
  %.0 = phi ptr [ %i.e, %bb.d ], [ %i.d, %bb.c ]  ; 2 uses
  %i.f = icmp eq ptr %.0, null
  br i1 %i.f, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.e, %bb.a, %bb.f
  %i.g = load ptr, ptr @bio_err, align 8, !tbaa !12
  tail call void @ERR_print_errors(ptr noundef %i.g) #25
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.thread
  %i.h = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.i = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.h, ptr noundef nonnull @.str.23, ptr noundef nonnull %2) #25 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g, %bb.f
  %.016 = phi ptr [ null, %.thread ], [ null, %bb.g ], [ %.0, %bb.f ]
  %i.j = tail call i32 @BIO_free(ptr noundef %i.b) #25 ; 0 uses
  ret ptr %.016
}

; Function Attrs: nounwind uwtable
define dso_local ptr @bio_open_default(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc ptr @bio_open_default_(ptr noundef %0, i8 noundef signext %1, i32 noundef %2, i32 noundef 0)
  ret ptr %i.a
}

declare ptr @d2i_X509_REQ_bio(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PEM_read_bio_X509_REQ(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @print_format_error(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @load_csr_autofmt(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @bio_err, align 8, !tbaa !12 ; 2 uses
  store ptr null, ptr @bio_err, align 8, !tbaa !12
  %4 = tail call fastcc ptr @bio_open_default_(ptr noundef %0, i8 noundef signext 114, i32 noundef 32773, i32 noundef 0) ; 4 uses
  %i.b = icmp eq ptr %4, null
  br i1 %i.b, label %bb.c, label %5

5:                                                ; preds = %bb.b
  %6 = tail call ptr @PEM_read_bio_X509_REQ(ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null) #25 ; 2 uses
  %7 = icmp eq ptr %6, null
  br i1 %7, label %bb.c, label %.thread

.thread:                                          ; preds = %5
  %8 = tail call i32 @BIO_free(ptr noundef nonnull %4) #25 ; 0 uses
  store ptr %i.a, ptr @bio_err, align 8, !tbaa !12
  br label %.thread27

bb.c:                                             ; preds = %bb.b, %5
  %9 = load ptr, ptr @bio_err, align 8, !tbaa !12
  tail call void @ERR_print_errors(ptr noundef %9) #25
  %10 = tail call i32 @BIO_free(ptr noundef %4) #25 ; 0 uses
  store ptr %i.a, ptr @bio_err, align 8, !tbaa !12
  tail call void @ERR_clear_error() #25
  %11 = tail call fastcc ptr @bio_open_default_(ptr noundef %0, i8 noundef signext 114, i32 noundef 4, i32 noundef 0) ; 4 uses
  %i.c = icmp eq ptr %11, null
  br i1 %i.c, label %.thread32, label %12

12:                                               ; preds = %bb.c
  %13 = tail call ptr @d2i_X509_REQ_bio(ptr noundef nonnull %11, ptr noundef null) #25 ; 2 uses
  %14 = icmp eq ptr %13, null
  br i1 %14, label %.thread32, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @BIO_free(ptr noundef nonnull %11) #25 ; 0 uses
  br label %.thread27

.thread32:                                        ; preds = %12, %bb.c
  %17 = load ptr, ptr @bio_err, align 8, !tbaa !12
  tail call void @ERR_print_errors(ptr noundef %17) #25
  %18 = tail call i32 @BIO_free(ptr noundef %11) #25 ; 0 uses
  %i.d = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.e = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.d, ptr noundef nonnull @.str.24, ptr noundef %3, ptr noundef %0) #25 ; 0 uses
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.f = tail call ptr @load_csr(ptr noundef %0, i32 noundef %1, ptr noundef %3) ; 2 uses
  %.not25 = icmp eq ptr %i.f, null
  br i1 %.not25, label %bb.h, label %.thread27

.thread27:                                        ; preds = %.thread, %15, %bb.d
  %.130 = phi ptr [ %i.f, %bb.d ], [ %6, %.thread ], [ %13, %15 ] ; 5 uses
  %i.g = tail call ptr @X509_REQ_get0_pubkey(ptr noundef nonnull %.130) #25 ; 2 uses
  %i.h = tail call i32 @do_X509_REQ_verify(ptr noundef nonnull %.130, ptr noundef %i.g, ptr noundef %2) ; 2 uses
  %i.i = icmp eq ptr %i.g, null
  %i.j = icmp slt i32 %i.h, 0
  %or.cond = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread27
  %i.k = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.l = tail call i32 @BIO_puts(ptr noundef %i.k, ptr noundef nonnull @.str.25) #25 ; 0 uses
  br label %bb.h

bb.f:                                             ; preds = %.thread27
  %i.m = icmp eq i32 %i.h, 0
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.o = tail call i32 @BIO_puts(ptr noundef %i.n, ptr noundef nonnull @.str.26) #25 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.thread32, %bb.d, %bb.e, %bb.g, %bb.f
  %.131 = phi ptr [ null, %bb.d ], [ %.130, %bb.e ], [ %.130, %bb.g ], [ %.130, %bb.f ], [ null, %.thread32 ]
  ret ptr %.131
}

declare void @ERR_clear_error() local_unnamed_addr #2

declare ptr @X509_REQ_get0_pubkey(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @do_X509_REQ_verify(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.b = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %2) #25
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.critedge.i, label %.loopexit

bb.b:                                             ; preds = %.critedge.i
  %i.d = add nuw nsw i32 %.01113.i, 1             ; 2 uses
  %i.e = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %2) #25
  %i.f = icmp slt i32 %i.d, %i.e
  br i1 %i.f, label %.critedge.i, label %.loopexit, !llvm.loop !43

.critedge.i:                                      ; preds = %.preheader.i, %bb.b
  %.01113.i = phi i32 [ %i.d, %bb.b ], [ 0, %.preheader.i ] ; 2 uses
  %i.g = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %2, i32 noundef %.01113.i) #25 ; 2 uses
  %i.h = tail call i32 @x509_req_ctrl_string(ptr noundef %0, ptr noundef %i.g) #25
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %do_x509_req_init.exit

do_x509_req_init.exit:                            ; preds = %.critedge.i
  %i.j = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.k = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.j, ptr noundef nonnull @.str.211, ptr noundef %i.g) #25 ; 0 uses
  %i.l = load ptr, ptr @bio_err, align 8, !tbaa !12
  tail call void @ERR_print_errors(ptr noundef %i.l) #25
  br label %bb.c

.loopexit:                                        ; preds = %bb.b, %bb.a, %.preheader.i
  %i.m = tail call ptr @app_get0_libctx() #25
  %i.n = tail call ptr @app_get0_propq() #25
  %i.o = tail call i32 @X509_REQ_verify_ex(ptr noundef %0, ptr noundef %1, ptr noundef %i.m, ptr noundef %i.n) #25
  br label %bb.c

bb.c:                                             ; preds = %do_x509_req_init.exit, %.loopexit
  %.0 = phi i32 [ %i.o, %.loopexit ], [ -1, %do_x509_req_init.exit ]
  ret i32 %.0
}

declare i32 @BIO_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @cleanse(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %0, i64 noundef %i.a) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @clear_free(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26
  tail call void @CRYPTO_clear_free(ptr noundef nonnull %0, i64 noundef %i.a, ptr noundef nonnull @.str.5, i32 noundef 553) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @CRYPTO_clear_free(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @load_key(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr null, ptr %i.a, align 8, !tbaa !29
  %i.b = icmp eq ptr %5, null
  %spec.store.select = select i1 %i.b, ptr @.str.27, ptr %5 ; 3 uses
  %i.c = icmp eq i32 %1, 8
  br i1 %i.c, label %.split12, label %.split

.split:                                           ; preds = %bb.a
  %i.d = call i32 @load_key_certs_crls(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %spec.store.select, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) ; 0 uses
  br label %bb.b

.split12:                                         ; preds = %bb.a
  %i.e = tail call ptr @make_engine_uri(ptr noundef %4, ptr noundef %0, ptr noundef nonnull %spec.store.select) #25 ; 2 uses
  %i.f = call i32 @load_key_certs_crls(ptr noundef %i.e, i32 noundef 8, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %spec.store.select, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %.split, %.split12
  %.0 = phi ptr [ %i.e, %.split12 ], [ null, %.split ]
  call void @CRYPTO_free(ptr noundef %.0, ptr noundef nonnull @.str.5, i32 noundef 570) #25
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret ptr %i.g
}

declare ptr @make_engine_uri(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @load_pubkey(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr null, ptr %i.a, align 8, !tbaa !29
  %i.b = icmp eq ptr %5, null
  %spec.store.select = select i1 %i.b, ptr @.str.28, ptr %5 ; 4 uses
  %i.c = icmp eq i32 %1, 8
  br i1 %i.c, label %.split17, label %.split

.split:                                           ; preds = %bb.a
  %i.d = call i32 @load_key_certs_crls(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %spec.store.select, i32 noundef 1, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) ; 0 uses
  br label %bb.b

.split17:                                         ; preds = %bb.a
  %i.e = tail call ptr @make_engine_uri(ptr noundef %4, ptr noundef %0, ptr noundef nonnull %spec.store.select) #25 ; 3 uses
  %i.f = call i32 @load_key_certs_crls(ptr noundef %i.e, i32 noundef 8, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %spec.store.select, i32 noundef 1, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %.split, %.split17
  %.015 = phi ptr [ %i.e, %.split17 ], [ %0, %.split ]
  %.0 = phi ptr [ %i.e, %.split17 ], [ null, %.split ]
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @load_key_certs_crls(ptr noundef %.015, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %spec.store.select, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = phi ptr [ %.pre, %bb.c ], [ %i.g, %bb.b ]
  call void @CRYPTO_free(ptr noundef %.0, ptr noundef nonnull @.str.5, i32 noundef 591) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret ptr %i.j
}

; Function Attrs: nounwind uwtable
define dso_local ptr @load_keyparams_suppress(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr null, ptr %i.a, align 8, !tbaa !29
  %i.b = icmp eq ptr %4, null
  %spec.store.select = select i1 %i.b, ptr @.str.29, ptr %4 ; 2 uses
  %i.c = call i32 @load_key_certs_crls(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef null, ptr noundef nonnull %spec.store.select, i32 noundef %5, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) ; 0 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !29   ; 5 uses
  %i.e = icmp ne ptr %i.d, null
  %i.f = icmp ne ptr %3, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = call i32 @EVP_PKEY_is_a(ptr noundef nonnull %i.d, ptr noundef nonnull %3) #25
  %.not = icmp eq i32 %i.g, 0
end_hunk_0
