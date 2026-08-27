Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/danetest?download=true
inline.NumInlined: 13
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@run_tlsatest:bb.a
  br i1 %.not.i62.i, label %verify_chain.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gn = call ptr @SSL_get_SSL_CTX(ptr noundef %i.ay) #10 ; 2 uses
  %i.go = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 61, ptr noundef nonnull @.str.63, ptr noundef %i.gn) #10
  %.not21.i.i = icmp eq i32 %i.go, 0
  br i1 %.not21.i.i, label %verify_chain.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gp = call ptr @SSL_CTX_get_cert_store(ptr noundef %i.gn) #10 ; 2 uses
  %i.gq = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 62, ptr noundef nonnull @.str.64, ptr noundef %i.gp) #10
  %.not22.i.i = icmp eq i32 %i.gq, 0
  br i1 %.not22.i.i, label %verify_chain.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gr = call i32 @X509_STORE_CTX_init(ptr noundef %i.gl, ptr noundef %i.gp, ptr noundef null, ptr noundef %.015.i.i) #10
  %i.gs = icmp ne i32 %i.gr, 0
  %i.gt = zext i1 %i.gs to i32
  %i.gu = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 63, ptr noundef nonnull @.str.65, i32 noundef %i.gt) #10
  %.not23.i.i = icmp eq i32 %i.gu, 0
  br i1 %.not23.i.i, label %verify_chain.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gv = call i32 @X509_STORE_CTX_set_ex_data(ptr noundef %i.gl, i32 noundef %i.gk, ptr noundef %i.ay) #10
  %i.gw = icmp ne i32 %i.gv, 0
  %i.gx = zext i1 %i.gw to i32
  %i.gy = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 65, ptr noundef nonnull @.str.66, i32 noundef %i.gx) #10
  %.not24.i.i = icmp eq i32 %i.gy, 0
  br i1 %.not24.i.i, label %verify_chain.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gz = call i32 @SSL_is_server(ptr noundef %i.ay) #10
  %.not25.i.i = icmp eq i32 %i.gz, 0
  %i.ha = select i1 %.not25.i.i, ptr @.str.68, ptr @.str.67
  %i.hb = call i32 @X509_STORE_CTX_set_default(ptr noundef %i.gl, ptr noundef nonnull %i.ha) #10 ; 0 uses
  %i.hc = call ptr @X509_STORE_CTX_get0_param(ptr noundef %i.gl) #10
  %i.hd = call ptr @SSL_get0_param(ptr noundef %i.ay) #10
  %i.he = call i32 @X509_VERIFY_PARAM_set1(ptr noundef %i.hc, ptr noundef %i.hd) #10 ; 0 uses
  %i.hf = call ptr @SSL_get0_dane(ptr noundef %i.ay) #10
  call void @X509_STORE_CTX_set0_dane(ptr noundef %i.gl, ptr noundef %i.hf) #10
  %i.hg = call ptr @SSL_get_verify_callback(ptr noundef %i.ay) #10
  %.not26.i.i = icmp eq ptr %i.hg, null
  br i1 %.not26.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hh = call ptr @SSL_get_verify_callback(ptr noundef %i.ay) #10
  call void @X509_STORE_CTX_set_verify_cb(ptr noundef %i.gl, ptr noundef %i.hh) #10
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.hi = call i32 @X509_STORE_CTX_verify(ptr noundef %i.gl) #10 ; 2 uses
  %i.hj = call i32 @test_int_ge(ptr noundef nonnull @.str.14, i32 noundef 77, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.24, i32 noundef %i.hi, i32 noundef 0) #10
  %.not27.i.i = icmp eq i32 %i.hj, 0
  %i.hk = call i32 @X509_STORE_CTX_get_error(ptr noundef %i.gl) #10
  %i.hl = sext i32 %i.hk to i64
  call void @SSL_set_verify_result(ptr noundef %i.ay, i64 noundef %i.hl) #10
  %i.hm = icmp eq i32 %i.hi, 0
  %i.hn = or i1 %i.hm, %.not27.i.i
  br label %verify_chain.exit.i

verify_chain.exit.i:                              ; preds = %bb.az, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as
  %.1.i.i = phi i1 [ %i.hn, %bb.az ], [ true, %bb.aw ], [ true, %bb.av ], [ true, %bb.au ], [ true, %bb.at ], [ true, %bb.as ]
  call void @X509_STORE_CTX_free(ptr noundef %i.gl) #10
  call void @OSSL_STACK_OF_X509_free(ptr noundef %.015.i.i) #10
  %i.ho = call i64 @SSL_get_verify_result(ptr noundef %i.ay) #10 ; 2 uses
  %i.hp = trunc i64 %i.ho to i32                  ; 2 uses
  call void @SSL_set_verify_result(ptr noundef %i.ay, i64 noundef 0) #10
  %i.hq = call i32 @SSL_get0_dane_authority(ptr noundef %i.ay, ptr noundef null, ptr noundef null) #10
  %sext.i = shl i64 %i.ho, 32
  %i.hr = ashr exact i64 %sext.i, 32              ; 2 uses
  call void @SSL_set_verify_result(ptr noundef %i.ay, i64 noundef %i.hr) #10
  call void @SSL_free(ptr noundef %i.ay) #10
  %i.hs = load i32, ptr %i.l, align 4, !tbaa !15
  %i.ht = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 358, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %i.hp, i32 noundef %i.hs) #10
  %.not57.i = icmp eq i32 %i.ht, 0
  %i.hu = load i32, ptr %i.l, align 4, !tbaa !15
  %i.hv = icmp eq i32 %i.hu, 0                    ; 2 uses
  br i1 %.not57.i, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %verify_chain.exit.i
  br i1 %i.hv, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.hw = call ptr @X509_verify_cert_error_string(i64 noundef %i.hr) #10
  call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str.14, i32 noundef 361, ptr noundef nonnull @.str.35, i32 noundef %i.al, i32 noundef %i.hp, ptr noundef %i.hw) #10
  br label %.thread111.i, !llvm.loop !13

bb.bc:                                            ; preds = %bb.ba
  call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str.14, i32 noundef 363, ptr noundef nonnull @.str.36, i32 noundef %i.al) #10
  br label %.thread111.i, !llvm.loop !13

bb.bd:                                            ; preds = %verify_chain.exit.i
  %i.hx = select i1 %i.hv, i1 %.1.i.i, i1 false
  %i.hy = zext i1 %i.hx to i32
  %i.hz = call i32 @test_false(ptr noundef nonnull @.str.14, i32 noundef 367, ptr noundef nonnull @.str.37, i32 noundef %i.hy) #10
  %.not58.i = icmp eq i32 %i.hz, 0
  br i1 %.not58.i, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str.14, i32 noundef 368, ptr noundef nonnull @.str.38, i32 noundef %i.al) #10
  br label %.thread111.i, !llvm.loop !13

bb.bf:                                            ; preds = %bb.bd
  %i.ia = load i32, ptr %i.m, align 4, !tbaa !15
  %i.ib = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 372, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef %i.hq, i32 noundef %i.ia) #10
  %.not59.i = icmp eq i32 %i.ib, 0
  br i1 %.not59.i, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str.14, i32 noundef 373, ptr noundef nonnull @.str.41, i32 noundef %i.al) #10
  br label %.thread111.i

.thread.i:                                        ; preds = %allws.exit.i, %bb.ar, %tlsa_import_rr.exit.thread.i, %bb.m, %allws.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  br label %test_tlsafile.exit

.thread111.i:                                     ; preds = %bb.bg, %bb.be, %bb.bc, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  br label %.critedge.i

bb.bh:                                            ; preds = %bb.bf, %.lr.ph, %.lr.ph
  %.145.i = phi i32 [ %.04458.i65, %.lr.ph ], [ %i.al, %bb.bf ], [ %.04458.i65, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  %i.ic = call fastcc ptr @read_to_eol(ptr noundef %i.p) ; 2 uses
  %.not.i = icmp eq ptr %i.ic, null
  br i1 %.not.i, label %.critedge.i, label %.lr.ph

.critedge.i:                                      ; preds = %bb.bh, %bb.g, %.thread111.i
  %.043.lcssa.i = phi i32 [ 0, %.thread111.i ], [ 1, %bb.g ], [ 1, %bb.bh ]
  call void @ERR_clear_error() #10
  br label %test_tlsafile.exit

test_tlsafile.exit:                               ; preds = %.thread.i, %.critedge.i
  %.248.i = phi i32 [ 0, %.thread.i ], [ %.043.lcssa.i, %.critedge.i ]
  %i.id = call i32 @test_int_gt(ptr noundef nonnull @.str.14, i32 noundef 394, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.24, i32 noundef %.248.i, i32 noundef 0) #10
  %.not14 = icmp ne i32 %i.id, 0
  %spec.select = zext i1 %.not14 to i32
  br label %bb.bi

bb.bi:                                            ; preds = %test_tlsafile.exit, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.08 = phi ptr [ null, %bb.a ], [ %i.s, %test_tlsafile.exit ], [ %i.s, %bb.f ], [ %i.s, %bb.e ], [ %i.s, %bb.d ], [ %i.s, %bb.c ], [ %i.s, %bb.b ]
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %test_tlsafile.exit ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.ie = call i32 @BIO_free(ptr noundef %i.p) #10 ; 0 uses
  call void @SSL_CTX_free(ptr noundef %.08) #10
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare ptr @BIO_new_file(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SSL_CTX_new(ptr noundef) local_unnamed_addr #2

declare ptr @TLS_client_method() local_unnamed_addr #2

declare i32 @test_int_gt(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SSL_CTX_dane_enable(ptr noundef) local_unnamed_addr #2

declare i32 @test_true(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SSL_CTX_load_verify_file(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SSL_CTX_dane_mtype_set(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @EVP_sha512() local_unnamed_addr #2

declare ptr @EVP_sha256() local_unnamed_addr #2

declare i32 @BIO_free(ptr noundef) local_unnamed_addr #2

declare void @SSL_CTX_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @read_to_eol(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @BIO_gets(ptr noundef %0, ptr noundef nonnull @read_to_eol.buf, i32 noundef 4096) #10
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @read_to_eol.buf) #12 ; 3 uses
  %1 = trunc i64 %i.c to i32                      ; 2 uses
  %i.d = shl i64 %i.c, 32
  %sext = add i64 %i.d, -4294967296
  %i.e = ashr exact i64 %sext, 32
  %i.f = getelementptr inbounds i8, ptr @read_to_eol.buf, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !12
  %.not = icmp eq i8 %i.g, 10
  br i1 %.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.h = icmp sgt i32 %1, 0
  br i1 %i.h, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.i = tail call ptr @__ctype_b_loc() #11
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %.mask = and i64 %i.c, 4294967295
  %i.j = icmp eq i64 %.mask, 4095
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.14, i32 noundef 158, ptr noundef nonnull @.str.42) #10
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.14, i32 noundef 160, ptr noundef nonnull @.str.43) #10
  br label %.critedge

bb.f:                                             ; preds = %.lr.ph, %bb.g
  %.09 = phi i32 [ %1, %.lr.ph ], [ %3, %bb.g ]   ; 3 uses
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !16
  %2 = zext nneg i32 %.09 to i64
  %i.l = getelementptr i8, ptr @read_to_eol.buf, i64 %2
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !12
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !18
  %i.r = and i16 %i.q, 8192
  %.not7 = icmp eq i16 %i.r, 0
  br i1 %.not7, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %3 = add nsw i32 %.09, -1                       ; 2 uses
  %4 = zext nneg i32 %3 to i64
  %i.s = getelementptr inbounds nuw i8, ptr @read_to_eol.buf, i64 %4
  store i8 0, ptr %i.s, align 1, !tbaa !12
  %i.t = icmp sgt i32 %.09, 1
  br i1 %i.t, label %bb.f, label %.critedge, !llvm.loop !30

.critedge:                                        ; preds = %bb.g, %bb.f, %.preheader, %bb.d, %bb.e, %bb.a
  %.06 = phi ptr [ null, %bb.d ], [ null, %bb.a ], [ null, %bb.e ], [ @read_to_eol.buf, %.preheader ], [ @read_to_eol.buf, %bb.f ], [ @read_to_eol.buf, %bb.g ]
  ret ptr %.06
}

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare ptr @SSL_new(ptr noundef) local_unnamed_addr #2

declare void @SSL_set_connect_state(ptr noundef) local_unnamed_addr #2

declare i32 @SSL_dane_enable(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @SSL_free(ptr noundef) local_unnamed_addr #2

declare i64 @SSL_dane_set_flags(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @ERR_clear_error() local_unnamed_addr #2

declare void @OSSL_STACK_OF_X509_free(ptr noundef) local_unnamed_addr #2

declare i64 @SSL_get_verify_result(ptr noundef) local_unnamed_addr #2

declare void @SSL_set_verify_result(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @SSL_get0_dane_authority(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @test_int_eq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @test_info(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @X509_verify_cert_error_string(i64 noundef) local_unnamed_addr #2

declare i32 @test_false(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_gets(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define internal noundef i64 @checked_uint8(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = tail call ptr @__errno_location() #11    ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !15
  store i32 %i.c, ptr @saved_errno, align 4, !tbaa !15
  %i.d = call i64 @strtol(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 10) #10 ; 3 uses
  %i.e = load i32, ptr %i.b, align 4, !tbaa !15
  %i.f = load i32, ptr @saved_errno, align 4, !tbaa !15
  store i32 %i.f, ptr %i.b, align 4, !tbaa !15
  %i.g = add i64 %i.d, -9223372036854775807
  %or.cond = icmp ult i64 %i.g, 2
  %i.h = icmp eq i32 %i.e, 34
  %or.cond3 = select i1 %or.cond, i1 %i.h, i1 false
  br i1 %or.cond3, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.j = icmp eq ptr %i.i, %0
  br i1 %i.j, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @__ctype_b_loc() #11       ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.m = load i8, ptr %i.i, align 1, !tbaa !12
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2, !tbaa !18
  %i.q = and i16 %i.p, 8192
  %.not = icmp eq i16 %i.q, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = trunc i64 %i.d to i8
  store i8 %i.r, ptr %1, align 1, !tbaa !12
  %.not20 = icmp ult i64 %i.d, 256
  br i1 %.not20, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.d
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader
  %.0 = phi ptr [ %i.y, %bb.e ], [ %i.i, %.preheader ] ; 3 uses
  %i.t = load i8, ptr %.0, align 1, !tbaa !12
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2, !tbaa !18
  %i.x = and i16 %i.w, 8192
  %.not21 = icmp eq i16 %i.x, 0
  %i.y = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br i1 %.not21, label %bb.f, label %bb.e, !llvm.loop !22

bb.f:                                             ; preds = %bb.e
  %i.z = ptrtoint ptr %.0 to i64
  %i.aa = ptrtoint ptr %0 to i64
  %i.ab = sub i64 %i.z, %i.aa
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a, %bb.f
  %.017 = phi i64 [ %i.ab, %bb.f ], [ -1, %bb.a ], [ -1, %bb.d ], [ -1, %bb.c ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 %.017
}

; Function Attrs: nounwind uwtable
define internal i64 @hexdecode(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #1 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12
  %i.b = lshr i64 %i.a, 1
  %i.c = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.b, ptr noundef nonnull @.str.14, i32 noundef 182) #10 ; 7 uses
  %i.d = tail call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 182, ptr noundef nonnull @.str.51, ptr noundef %i.c) #10
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = load i8, ptr %0, align 1, !tbaa !12      ; 2 uses
  %.not3345 = icmp eq i8 %i.e, 0
  br i1 %.not3345, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = tail call ptr @__ctype_b_loc() #11       ; 2 uses
  br label %.outer

.outer:                                           ; preds = %.loopexit, %.lr.ph
  %.ph = phi i8 [ %i.ae, %.loopexit ], [ %i.e, %.lr.ph ] ; 2 uses
  %.02149.ph = phi i32 [ %.1.ph, %.loopexit ], [ 0, %.lr.ph ] ; 2 uses
  %.02248.ph = phi i8 [ %.2.ph, %.loopexit ], [ 0, %.lr.ph ] ; 2 uses
  %.02447.ph = phi ptr [ %.226.ph, %.loopexit ], [ %i.c, %.lr.ph ] ; 4 uses
  %.03046.ph = phi ptr [ %i.ad, %.loopexit ], [ %0, %.lr.ph ] ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.h = zext i8 %.ph to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2, !tbaa !18
  %i.k = and i16 %i.j, 8192
  %.not35.peel = icmp eq i16 %i.k, 0
  br i1 %.not35.peel, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.outer
  %i.l = tail call i32 @OPENSSL_hexchar2int(i8 noundef zeroext %.ph) #10 ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %.loopexit99, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = trunc i32 %i.l to i8
  %i.o = or i8 %.02248.ph, %i.n                   ; 2 uses
  %i.p = icmp eq i32 %.02149.ph, 1
  br i1 %i.p, label %bb.e, label %.thread.peel

.thread.peel:                                     ; preds = %bb.c
  %i.q = shl i8 %i.o, 4                           ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.03046.ph, i64 1 ; 3 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !12    ; 3 uses
  %.not3359.peel = icmp eq i8 %i.s, 0
  br i1 %.not3359.peel, label %._crit_edge.thread62, label %.outer.peel.newph

.outer.peel.newph:                                ; preds = %.thread.peel
  %i.t = zext i8 %i.s to i64
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.t
  %i.w = load i16, ptr %i.v, align 2, !tbaa !18
  %i.x = and i16 %i.w, 8192
  %.not35 = icmp eq i16 %i.x, 0
  br i1 %.not35, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.outer.peel.newph
  %i.y = tail call i32 @OPENSSL_hexchar2int(i8 noundef zeroext %i.s) #10 ; 2 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %.loopexit99, label %.loopexit100

.loopexit100:                                     ; preds = %bb.d
  %i.aa = trunc i32 %i.y to i8
  %i.ab = or i8 %i.q, %i.aa
  br label %bb.e

bb.e:                                             ; preds = %.loopexit100, %bb.c
  %.lcssa = phi i8 [ %i.o, %bb.c ], [ %i.ab, %.loopexit100 ]
  %.03046.lcssa88 = phi ptr [ %.03046.ph, %bb.c ], [ %i.r, %.loopexit100 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.02447.ph, i64 1
  store i8 %.lcssa, ptr %.02447.ph, align 1, !tbaa !12
  br label %.loopexit

.loopexit99:                                      ; preds = %bb.b, %bb.d
  tail call void @CRYPTO_free(ptr noundef %i.c, ptr noundef nonnull @.str.14, i32 noundef 193) #10
  br label %bb.f

.loopexit:                                        ; preds = %.outer, %.outer.peel.newph, %bb.e
  %.0304690 = phi ptr [ %.03046.lcssa88, %bb.e ], [ %.03046.ph, %.outer ], [ %i.r, %.outer.peel.newph ]
  %.226.ph = phi ptr [ %i.ac, %bb.e ], [ %.02447.ph, %.outer.peel.newph ], [ %.02447.ph, %.outer ] ; 2 uses
  %.2.ph = phi i8 [ 0, %bb.e ], [ %.02248.ph, %.outer ], [ %i.q, %.outer.peel.newph ]
  %.1.ph = phi i32 [ 0, %bb.e ], [ %.02149.ph, %.outer ], [ 1, %.outer.peel.newph ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0304690, i64 1 ; 2 uses
end_hunk_0
