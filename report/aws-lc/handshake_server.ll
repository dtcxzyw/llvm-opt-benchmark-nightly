Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/handshake_server?download=true
inline.NumInlined: 635
inline.NumDeleted: 334
begin_hunk_0_@_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt:bb.a
bb.d:                                             ; preds = %bb.b, %bb.c
  %.2 = phi i1 [ %.1, %bb.c ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @CBS_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @CBS_len(ptr noundef) local_unnamed_addr #2

declare i32 @CBS_get_u16(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4bssl28ssl_parse_client_cipher_listEP6ssl_stPK22ssl_early_callback_ctxPSt10unique_ptrI19stack_st_SSL_CIPHERNS_8internal7DeleterEE(ptr nofree noundef captures(none) initializes((136, 138)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.cbs_st, align 8             ; 7 uses
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !19     ; 2 uses
  store ptr null, ptr %2, align 8, !tbaa !19
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEE5resetEPS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @OPENSSL_sk_free(ptr noundef nonnull %i.b) #7
  br label %_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEE5resetEPS0_.exit

_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEE5resetEPS0_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  call void @CBS_init(ptr noundef nonnull %3, ptr noundef %i.d, i64 noundef %i.f) #7
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.i = load i64, ptr %i.e, align 8, !tbaa !16
  %i.j = call ptr @OPENSSL_memdup(ptr noundef %i.h, i64 noundef %i.i) #7
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  store ptr %i.j, ptr %i.g, align 8, !tbaa !20
  %.not.i.i19 = icmp eq ptr %i.k, null
  br i1 %.not.i.i19, label %_ZNSt10unique_ptrIcN4bssl8internal7DeleterEE5resetEPc.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEE5resetEPS0_.exit
  call void @OPENSSL_free(ptr noundef nonnull %i.k) #7
  br label %_ZNSt10unique_ptrIcN4bssl8internal7DeleterEE5resetEPc.exit

_ZNSt10unique_ptrIcN4bssl8internal7DeleterEE5resetEPc.exit: ; preds = %_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEE5resetEPS0_.exit, %bb.c
  %i.l = load i64, ptr %i.e, align 8, !tbaa !16
  %i.m = trunc i64 %i.l to i16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i16 %i.m, ptr %i.n, align 8, !tbaa !146
  %i.o = call i64 @CBS_len(ptr noundef nonnull %3) #7
  %i.p = and i64 %i.o, 1
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIcN4bssl8internal7DeleterEE5resetEPc.exit
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 148, ptr noundef nonnull @.str, i32 noundef 148) #7
  br label %_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEED2Ev.exit

bb.e:                                             ; preds = %_ZNSt10unique_ptrIcN4bssl8internal7DeleterEE5resetEPc.exit
  %i.q = call ptr @OPENSSL_sk_new_null() #7       ; 4 uses
  %.not27 = icmp eq ptr %i.q, null
  br i1 %.not27, label %_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEED2Ev.exit, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.r = call i64 @CBS_len(ptr noundef nonnull %3) #7
  %.not1528 = icmp eq i64 %i.r, 0
  br i1 %.not1528, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.s = call i32 @CBS_get_u16(ptr noundef nonnull %3, ptr noundef nonnull %i.a) #7
  %.not16 = icmp eq i32 %i.s, 0
  br i1 %.not16, label %_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEEaSEOS4_.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.t = load i16, ptr %i.a, align 2, !tbaa !70
  %i.u = call ptr @SSL_get_cipher_by_value(i16 noundef zeroext %i.t) #7 ; 2 uses
  %.not17 = icmp eq ptr %i.u, null
  br i1 %.not17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = call i64 @OPENSSL_sk_push(ptr noundef nonnull %i.q, ptr noundef nonnull %i.u) #7
  %.not18 = icmp eq i64 %i.v, 0
  br i1 %.not18, label %_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEEaSEOS4_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.w = call i64 @CBS_len(ptr noundef nonnull %3) #7
  %.not15 = icmp eq i64 %i.w, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph, !llvm.loop !145

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %i.x = load ptr, ptr %2, align 8, !tbaa !19     ; 2 uses
  store ptr %i.q, ptr %2, align 8, !tbaa !19
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  call void @OPENSSL_sk_free(ptr noundef nonnull %i.x) #7
  br label %_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEED2Ev.exit

_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEEaSEOS4_.exit: ; preds = %bb.g, %.lr.ph
  %.sink = phi i32 [ 161, %.lr.ph ], [ 168, %bb.g ]
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 148, ptr noundef nonnull @.str, i32 noundef %.sink) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @OPENSSL_sk_free(ptr noundef nonnull %i.q) #7
  br label %_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEED2Ev.exit

_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEED2Ev.exit: ; preds = %bb.i, %._crit_edge, %bb.e, %_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEEaSEOS4_.exit, %bb.d
  %.4 = phi i1 [ false, %bb.d ], [ false, %_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEEaSEOS4_.exit ], [ false, %bb.e ], [ true, %bb.i ], [ true, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i1 %.4
}

declare ptr @OPENSSL_memdup(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @ERR_put_error(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @SSL_get_cipher_by_value(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN4bssl20ssl_server_handshakeEPNS_13SSL_HANDSHAKEE(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr.14", align 8 ; 4 uses
  %2 = alloca %"class.bssl::internal::StackAllocated.148", align 8 ; 8 uses
  %3 = alloca %struct.cbb_st, align 8             ; 6 uses
  %4 = alloca %struct.cbb_st, align 8             ; 5 uses
  %5 = alloca %"struct.bssl::SSLMessage", align 8 ; 6 uses
  %6 = alloca %"struct.bssl::SSLMessage", align 8 ; 6 uses
  %7 = alloca %struct.cbs_st, align 8             ; 6 uses
  %8 = alloca %struct.cbs_st, align 8             ; 5 uses
  %9 = alloca %struct.cbs_st, align 8             ; 3 uses
  %10 = alloca %"struct.bssl::SSLMessage", align 8 ; 6 uses
  %11 = alloca %struct.cbs_st, align 8            ; 4 uses
  %12 = alloca %struct.cbs_st, align 8            ; 6 uses
  %13 = alloca %struct.cbs_st, align 8            ; 5 uses
  %i.a = alloca i16, align 2                      ; 8 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %14 = alloca %"class.bssl::Span", align 8       ; 5 uses
  %15 = alloca %"struct.bssl::SSLMessage", align 8 ; 6 uses
  %16 = alloca %struct.cbs_st, align 8            ; 9 uses
  %17 = alloca %struct.cbs_st, align 8            ; 8 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %18 = alloca %"class.bssl::Array", align 8      ; 14 uses
  %19 = alloca %struct.cbs_st, align 8            ; 8 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %20 = alloca %struct.cbs_st, align 8            ; 8 uses
  %i.e = alloca i8, align 1                       ; 6 uses
  %i.f = alloca [256 x i8], align 16              ; 6 uses
  %21 = alloca %"class.bssl::internal::StackAllocated.148", align 8 ; 10 uses
  %22 = alloca %struct.cbb_st, align 8            ; 7 uses
  %23 = alloca %"struct.bssl::SSLMessage", align 8 ; 6 uses
  %24 = alloca %struct.cbs_st, align 8            ; 5 uses
  %i.g = alloca i8, align 1                       ; 5 uses
  %25 = alloca %"class.bssl::internal::StackAllocated.148", align 8 ; 8 uses
  %26 = alloca %struct.cbb_st, align 8            ; 7 uses
  %27 = alloca %struct.cbb_st, align 8            ; 6 uses
  %28 = alloca %struct.cbb_st, align 8            ; 5 uses
  %29 = alloca %"class.bssl::internal::StackAllocated.148", align 8 ; 6 uses
  %30 = alloca %struct.cbb_st, align 8            ; 6 uses
  %31 = alloca %struct.cbb_st, align 8            ; 5 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %32 = alloca %"class.bssl::Span", align 8       ; 5 uses
  %33 = alloca %"class.bssl::internal::StackAllocated.148", align 8 ; 14 uses
  %34 = alloca %struct.cbb_st, align 8            ; 6 uses
  %35 = alloca %struct.cbb_st, align 8            ; 5 uses
  %36 = alloca %struct.cbb_st, align 8            ; 10 uses
  %i.j = alloca i16, align 2                      ; 8 uses
  %37 = alloca %"class.std::unique_ptr.39", align 8 ; 6 uses
  %38 = alloca %struct.cbs_st, align 8            ; 5 uses
  %39 = alloca %"class.bssl::internal::StackAllocated.148", align 8 ; 9 uses
  %40 = alloca %"struct.bssl::OPENSSL_timeval", align 8 ; 5 uses
  %41 = alloca %"class.bssl::internal::StackAllocated.148", align 8 ; 6 uses
  %42 = alloca %struct.cbb_st, align 8            ; 9 uses
  %43 = alloca %struct.cbb_st, align 8            ; 4 uses
  %44 = alloca %"struct.bssl::SSLMessage", align 8 ; 6 uses
  %45 = alloca %struct.ssl_early_callback_ctx, align 8 ; 8 uses
  %46 = alloca %"class.std::unique_ptr.14", align 8 ; 11 uses
  %i.k = alloca i8, align 1                       ; 5 uses
  %i.l = alloca i8, align 1                       ; 5 uses
  %i.m = alloca i8, align 1                       ; 5 uses
  %i.n = alloca i16, align 2                      ; 3 uses
  %i.o = alloca i64, align 8                      ; 10 uses
  %47 = alloca %"struct.bssl::SSLMessage", align 8 ; 3 uses
  %48 = alloca %struct.ssl_early_callback_ctx, align 8 ; 4 uses
  %49 = alloca %struct.cbs_st, align 8            ; 6 uses
  %i.p = alloca i16, align 2                      ; 4 uses
  %50 = alloca %struct.cbs_st, align 8            ; 6 uses
  %51 = alloca %struct.cbs_st, align 8            ; 7 uses
  %52 = alloca %struct.cbs_st, align 8            ; 6 uses
  %i.q = alloca i16, align 2                      ; 4 uses
  %53 = alloca %struct.cbs_st, align 8            ; 9 uses
  %54 = alloca %struct.cbs_st, align 8            ; 7 uses
  %55 = alloca %struct.cbs_st, align 8            ; 6 uses
  %i.r = alloca i16, align 2                      ; 6 uses
  %56 = alloca %struct.cbs_st, align 8            ; 8 uses
  %i.s = alloca i16, align 2                      ; 4 uses
  %57 = alloca %"struct.bssl::SSLMessage", align 8 ; 3 uses
  %58 = alloca %struct.ssl_early_callback_ctx, align 8 ; 15 uses
  %i.t = alloca i32, align 4                      ; 6 uses
  %i.u = alloca i8, align 1                       ; 7 uses
  %59 = alloca %struct.cbs_st, align 8            ; 13 uses
  %i.v = alloca i8, align 1                       ; 7 uses
  %i.w = alloca i8, align 1                       ; 7 uses
  %i.x = alloca i16, align 2                      ; 6 uses
  %i.y = alloca i16, align 2                      ; 6 uses
  %60 = alloca %struct.cbs_st, align 8            ; 7 uses
  %61 = alloca %struct.cbs_st, align 8            ; 7 uses
  %i.z = alloca i8, align 1                       ; 6 uses
  %62 = alloca %"class.bssl::Span", align 8       ; 8 uses
  %63 = alloca %"struct.bssl::SSLMessage", align 8 ; 7 uses
  %64 = alloca %struct.ssl_early_callback_ctx, align 8 ; 7 uses
  %i.aa = alloca i8, align 1                      ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 32 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1592 ; 43 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1528 ; 23 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 18 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1520 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1560 ; 11 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1512 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1596 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 9 uses
  %i.at = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1464 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1472 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1584 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.bc = load i64, ptr @_ZN4bssl21kTLS12DowngradeRandomE, align 1
  %i.bd = load i64, ptr @_ZN4bssl21kJDK11DowngradeRandomE, align 1
  %i.be = load i64, ptr @_ZN4bssl21kTLS13DowngradeRandomE, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1603 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1635 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %45, i64 56
  %i.bk = getelementptr inbounds nuw i8, ptr %45, i64 48
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %58, i64 64 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %58, i64 72 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %58, i64 96
  %i.bq = getelementptr inbounds nuw i8, ptr %58, i64 104
  %i.br = getelementptr inbounds nuw i8, ptr %56, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %58, i64 24 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %58, i64 40
  %i.bu = getelementptr inbounds nuw i8, ptr %58, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %58, i64 88 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %58, i64 80
  %i.bx = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %63, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1544 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.cd = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1602
  br label %bb.b

bb.b:                                             ; preds = %bb.qc, %bb.a
  %i.cg = load i32, ptr %i.ab, align 4, !tbaa !139 ; 2 uses
  switch i32 %i.cg, label %_ZN4bsslL21do_select_certificateEPNS_13SSL_HANDSHAKEE.exit [
    i32 21, label %bb.qd
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.ai
    i32 3, label %bb.cm
    i32 4, label %bb.ed
    i32 5, label %bb.ef
    i32 6, label %bb.fo
    i32 7, label %bb.gv
    i32 8, label %bb.in
    i32 9, label %bb.jf
    i32 10, label %bb.jw
    i32 11, label %bb.kr
    i32 12, label %bb.kv
    i32 13, label %bb.mz
    i32 14, label %bb.nv
    i32 15, label %bb.ny
    i32 16, label %bb.oa
    i32 17, label %bb.on
    i32 18, label %bb.ov
    i32 19, label %bb.pb
    i32 20, label %bb.ps
  ]

bb.c:                                             ; preds = %bb.b
  %i.ch = load ptr, ptr %0, align 8, !tbaa !140
  call void @_ZN4bssl20ssl_do_info_callbackEPK6ssl_stii(ptr noundef %i.ch, i32 noundef 16, i32 noundef 1) #7
  store i32 1, ptr %i.ab, align 4, !tbaa !139
  %i.ci = load ptr, ptr %0, align 8, !tbaa !140
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 160
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !179 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 212
  call void @_ZN4bssl18ssl_update_counterEP10ssl_ctx_stRSt6atomicIiEb(ptr noundef %i.ck, ptr noundef nonnull align 4 dereferenceable(4) %i.cl, i1 noundef zeroext true) #7
  br label %_ZN4bsslL21do_select_certificateEPNS_13SSL_HANDSHAKEE.exit

bb.d:                                             ; preds = %bb.b
  %i.cm = load ptr, ptr %0, align 8, !tbaa !140   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #7
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !180
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !182
  %i.cq = call noundef zeroext i1 %i.cp(ptr noundef nonnull %i.cm, ptr noundef nonnull %63) #7, !inline_history !147
  br i1 %i.cq, label %bb.e, label %_ZN4bsslL20do_read_client_helloEPNS_13SSL_HANDSHAKEE.exit

bb.e:                                             ; preds = %bb.d
  %i.cr = call noundef zeroext i1 @_ZN4bssl22ssl_check_message_typeEP6ssl_stRKNS_10SSLMessageEi(ptr noundef nonnull %i.cm, ptr noundef nonnull align 8 dereferenceable(40) %63, i32 noundef 1) #7
  br i1 %i.cr, label %bb.f, label %_ZN4bsslL20do_read_client_helloEPNS_13SSL_HANDSHAKEE.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #7
  %i.cs = load ptr, ptr %i.bx, align 8, !tbaa !184
  %i.ct = load i64, ptr %i.by, align 8, !tbaa !185
  %i.cu = call noundef zeroext i1 @_ZN4bssl21ssl_client_hello_initEPK6ssl_stP22ssl_early_callback_ctxNS_4SpanIKhEE(ptr noundef nonnull %i.cm, ptr noundef nonnull %64, ptr %i.cs, i64 %i.ct) #7
  br i1 %i.cu, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 137, ptr noundef nonnull @.str, i32 noundef 536) #7
  call void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef nonnull %i.cm, i32 noundef 2, i32 noundef 50) #7
  br label %bb.ah

bb.h:                                             ; preds = %bb.f
  %i.cv = load ptr, ptr %i.cm, align 8, !tbaa !180
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !186
  %i.cy = call noundef zeroext i1 %i.cx(ptr noundef nonnull %i.cm) #7, !inline_history !147
  br i1 %i.cy, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef nonnull %i.cm, i32 noundef 2, i32 noundef 10) #7
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 255, ptr noundef nonnull @.str, i32 noundef 545) #7
  br label %bb.ah

bb.j:                                             ; preds = %bb.h
  %i.cz = load ptr, ptr %i.ae, align 8, !tbaa !187
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 241
  %i.db = load i16, ptr %i.da, align 1
  %i.dc = and i16 %i.db, 64
  %.not.i = icmp eq i16 %i.dc, 0
  br i1 %.not.i, label %bb.k, label %bb.ah

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #7
  store i8 50, ptr %i.aa, align 1, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %62)
  %i.dd = load ptr, ptr %0, align 8, !tbaa !140   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #7
  %i.de = call noundef zeroext i1 @_ZN4bssl30ssl_client_hello_get_extensionEPK22ssl_early_callback_ctxP6cbs_stt(ptr noundef nonnull %64, ptr noundef nonnull %59, i16 noundef zeroext -499) #7
  br i1 %i.de, label %bb.l, label %_ZN4bsslL11decrypt_echEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctx.exit.thread.i

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #7
  %i.df = call i32 @CBS_get_u8(ptr noundef nonnull %59, ptr noundef nonnull %i.v) #7
  %.not.i.i = icmp eq i32 %i.df, 0
  br i1 %.not.i.i, label %_ZN4bsslL11decrypt_echEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctx.exit.thread19.i, label %bb.m

_ZN4bsslL11decrypt_echEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctx.exit.thread19.i: ; preds = %bb.l
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 137, ptr noundef nonnull @.str, i32 noundef 406) #7
  store i8 50, ptr %i.aa, align 1, !tbaa !141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %62)
  br label %bb.ab

bb.m:                                             ; preds = %bb.l
  %i.dg = load i8, ptr %i.v, align 1, !tbaa !141
  %.not35.i.i = icmp eq i8 %i.dg, 0
  br i1 %.not35.i.i, label %bb.n, label %_ZN4bsslL11decrypt_echEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctx.exit.thread.sink.split.i

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #7
  %i.dh = call i32 @CBS_get_u16(ptr noundef nonnull %59, ptr noundef nonnull %i.x) #7
  %.not36.i.i = icmp eq i32 %i.dh, 0
  br i1 %.not36.i.i, label %_ZN4bsslL11decrypt_echEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctx.exit.thread23.i, label %bb.o

end_hunk_0
begin_hunk_1_@_ZN4bssl20ssl_server_handshakeEPNS_13SSL_HANDSHAKEE:bb.a
  %.not32.i = icmp eq ptr %i.fh, null
  br i1 %.not32.i, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #7
  store i32 80, ptr %i.t, align 4, !tbaa !273
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 448
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !274
  %i.fk = call noundef i32 %i.fh(ptr noundef nonnull %i.fc, ptr noundef nonnull %i.t, ptr noundef %i.fj) #7, !inline_history !152
  %cond3.i = icmp eq i32 %i.fk, 1
  br i1 %cond3.i, label %.critedge.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 133, ptr noundef nonnull @.str, i32 noundef 598) #7
  %i.fl = load i32, ptr %i.t, align 4, !tbaa !273
  call void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef nonnull %i.fc, i32 noundef 2, i32 noundef %i.fl) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #7
  br label %_ZN4bsslL30do_read_client_hello_after_echEPNS_13SSL_HANDSHAKEE.exit

.critedge.i:                                      ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #7
  %.pre.i38 = load ptr, ptr %i.fe, align 8, !tbaa !179
  br label %bb.am

bb.am:                                            ; preds = %.critedge.i, %bb.aj
  %i.fm = phi ptr [ %.pre.i38, %.critedge.i ], [ %i.ff, %bb.aj ]
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 416
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !275 ; 2 uses
  %.not33.i = icmp eq ptr %i.fo, null
  br i1 %.not33.i, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fp = call noundef i32 %i.fo(ptr noundef nonnull %58) #7, !inline_history !152
  switch i32 %i.fp, label %bb.aq [
    i32 0, label %bb.ao
    i32 -1, label %bb.ap
  ]

bb.ao:                                            ; preds = %bb.an
  call void @ERR_clear_error() #7
  br label %_ZN4bsslL30do_read_client_hello_after_echEPNS_13SSL_HANDSHAKEE.exit

bb.ap:                                            ; preds = %bb.an
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 133, ptr noundef nonnull @.str, i32 noundef 613) #7
  call void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef nonnull %i.fc, i32 noundef 2, i32 noundef 40) #7
  br label %_ZN4bsslL30do_read_client_hello_after_echEPNS_13SSL_HANDSHAKEE.exit

bb.aq:                                            ; preds = %bb.an
  call void @ERR_clear_error() #7
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.am
  %i.fq = call noundef zeroext i1 @_ZN4bssl21ssl_get_version_rangeEPKNS_13SSL_HANDSHAKEEPtS3_(ptr noundef nonnull %0, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bm) #7
  br i1 %i.fq, label %bb.as, label %_ZN4bsslL30do_read_client_hello_after_echEPNS_13SSL_HANDSHAKEE.exit

bb.as:                                            ; preds = %bb.ar
  %i.fr = load ptr, ptr %i.ae, align 8, !tbaa !187
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 241
  %i.ft = load i16, ptr %i.fs, align 1
  %i.fu = and i16 %i.ft, 256
  %.not34.i = icmp eq i16 %i.fu, 0
  br i1 %.not34.i, label %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #7
  %i.fv = load ptr, ptr %i.bn, align 8, !tbaa !15
  %i.fw = load i64, ptr %i.bo, align 8, !tbaa !16
  call void @CBS_init(ptr noundef nonnull %52, ptr noundef %i.fv, i64 noundef %i.fw) #7
  br label %bb.au

bb.au:                                            ; preds = %bb.av, %bb.at
  %.04.i.i.i = phi i1 [ undef, %bb.at ], [ %.1.i.i.i, %bb.av ]
  %i.fx = call i64 @CBS_len(ptr noundef nonnull %52) #7
  %.not.i.i.i = icmp eq i64 %i.fx, 0
  br i1 %.not.i.i.i, label %_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.thread.i.i, label %bb.av

_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.thread.i.i: ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #7
  br label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #7
  %i.fy = call i32 @CBS_get_u16(ptr noundef nonnull %52, ptr noundef nonnull %i.q) #7
  %.not5.i.i.i = icmp ne i32 %i.fy, 0             ; 2 uses
  %i.fz = load i16, ptr %i.q, align 2
  %i.ga = icmp eq i16 %i.fz, 4867                 ; 2 uses
  %..04.i.i.i = select i1 %i.ga, i1 true, i1 %.04.i.i.i
  %.1.i.i.i = select i1 %.not5.i.i.i, i1 %..04.i.i.i, i1 false ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #7
  %not..not5.i.i.i = xor i1 %.not5.i.i.i, true
  %i.gb = select i1 %not..not5.i.i.i, i1 true, i1 %i.ga
  br i1 %i.gb, label %_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.i.i, label %bb.au, !llvm.loop !0

_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.i.i: ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #7
  br i1 %.1.i.i.i, label %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread.i, label %bb.aw

bb.aw:                                            ; preds = %_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.i.i, %_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #7
  %i.gc = load ptr, ptr %i.bp, align 8, !tbaa !276
  %i.gd = load i64, ptr %i.bq, align 8, !tbaa !277
  call void @CBS_init(ptr noundef nonnull %53, ptr noundef %i.gc, i64 noundef %i.gd) #7
  br label %bb.ax

bb.ax:                                            ; preds = %bb.bi, %bb.aw
  %.027109.i.i = phi i8 [ 0, %bb.aw ], [ %.431.ph.i.i, %bb.bi ] ; 6 uses
  %.033108.i.i = phi i8 [ 0, %bb.aw ], [ %.437.ph.i.i, %bb.bi ] ; 6 uses
  %.039.idx107.i.i = phi i64 [ 0, %bb.aw ], [ %.039.add.i.i, %bb.bi ] ; 2 uses
  %.sroa.5.0106.i.i = phi i64 [ 0, %bb.aw ], [ %.sroa.5.3.ph.i.i, %bb.bi ] ; 6 uses
  %.sroa.0.0105.i.i = phi ptr [ null, %bb.aw ], [ %.sroa.0.3.ph.i.i, %bb.bi ] ; 6 uses
  %.sroa.554.0104.i.i = phi i64 [ 0, %bb.aw ], [ %.sroa.554.3.ph.i.i, %bb.bi ] ; 6 uses
  %.sroa.053.0103.i.i = phi ptr [ null, %bb.aw ], [ %.sroa.053.3.ph.i.i, %bb.bi ] ; 6 uses
  %.039.ptr110.i.i = getelementptr inbounds nuw i8, ptr @_ZZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctxE15kJavaExtensions, i64 %.039.idx107.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %55, ptr noundef nonnull align 8 dereferenceable(16) %53, i64 16, i1 false), !tbaa.struct !279
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #7
  %i.ge = call i32 @CBS_get_u16(ptr noundef nonnull %55, ptr noundef nonnull %i.r) #7
  %.not44.i.i = icmp eq i32 %i.ge, 0
  br i1 %.not44.i.i, label %bb.bh, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gf = load i16, ptr %i.r, align 2, !tbaa !70
  %i.gg = load i16, ptr %.039.ptr110.i.i, align 4, !tbaa !281
  %i.gh = icmp eq i16 %i.gf, %i.gg
  br i1 %i.gh, label %bb.az, label %bb.bh

bb.az:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %53, ptr noundef nonnull align 8 dereferenceable(16) %55, i64 16, i1 false), !tbaa.struct !279
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #7
  %i.gi = call i32 @CBS_get_u16_length_prefixed(ptr noundef nonnull %53, ptr noundef nonnull %56) #7
  %.not45.not.i.i = icmp eq i32 %i.gi, 0
  br i1 %.not45.not.i.i, label %bb.bg, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gj = load i16, ptr %i.r, align 2, !tbaa !70
  switch i16 %i.gj, label %.thread.i.i42 [
    i16 5, label %bb.bb
    i16 17, label %bb.bc
    i16 13, label %bb.bd
    i16 50, label %bb.be
    i16 10, label %bb.bf
  ]

bb.bb:                                            ; preds = %bb.ba
  br label %.thread.i.i42

bb.bc:                                            ; preds = %bb.ba
  br label %.thread.i.i42

bb.bd:                                            ; preds = %bb.ba
  %i.gk = load ptr, ptr %56, align 8, !tbaa !184
  %i.gl = load i64, ptr %i.br, align 8, !tbaa !185
  br label %.thread.i.i42

bb.be:                                            ; preds = %bb.ba
  %i.gm = load ptr, ptr %56, align 8, !tbaa !184
  %i.gn = load i64, ptr %i.br, align 8, !tbaa !185
  br label %.thread.i.i42

bb.bf:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %54, ptr noundef nonnull align 8 dereferenceable(16) %56, i64 16, i1 false), !tbaa.struct !279
  br label %.thread.i.i42

.thread.i.i42:                                    ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba
  %.sroa.053.1.ph.i.i = phi ptr [ %.sroa.053.0103.i.i, %bb.bf ], [ %.sroa.053.0103.i.i, %bb.be ], [ %i.gk, %bb.bd ], [ %.sroa.053.0103.i.i, %bb.bc ], [ %.sroa.053.0103.i.i, %bb.bb ], [ %.sroa.053.0103.i.i, %bb.ba ]
  %.sroa.554.1.ph.i.i = phi i64 [ %.sroa.554.0104.i.i, %bb.bf ], [ %.sroa.554.0104.i.i, %bb.be ], [ %i.gl, %bb.bd ], [ %.sroa.554.0104.i.i, %bb.bc ], [ %.sroa.554.0104.i.i, %bb.bb ], [ %.sroa.554.0104.i.i, %bb.ba ]
  %.sroa.0.1.ph.i.i = phi ptr [ %.sroa.0.0105.i.i, %bb.bf ], [ %i.gm, %bb.be ], [ %.sroa.0.0105.i.i, %bb.bd ], [ %.sroa.0.0105.i.i, %bb.bc ], [ %.sroa.0.0105.i.i, %bb.bb ], [ %.sroa.0.0105.i.i, %bb.ba ]
  %.sroa.5.1.ph.i.i = phi i64 [ %.sroa.5.0106.i.i, %bb.bf ], [ %i.gn, %bb.be ], [ %.sroa.5.0106.i.i, %bb.bd ], [ %.sroa.5.0106.i.i, %bb.bc ], [ %.sroa.5.0106.i.i, %bb.bb ], [ %.sroa.5.0106.i.i, %bb.ba ]
  %.235.ph.i.i = phi i8 [ %.033108.i.i, %bb.bf ], [ %.033108.i.i, %bb.be ], [ %.033108.i.i, %bb.bd ], [ 1, %bb.bc ], [ %.033108.i.i, %bb.bb ], [ %.033108.i.i, %bb.ba ]
  %.229.ph.i.i = phi i8 [ %.027109.i.i, %bb.bf ], [ %.027109.i.i, %bb.be ], [ %.027109.i.i, %bb.bd ], [ %.027109.i.i, %bb.bc ], [ 1, %bb.bb ], [ %.027109.i.i, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #7
  br label %bb.bi

bb.bg:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #7
  br label %.loopexit.i.i

bb.bh:                                            ; preds = %bb.ay, %bb.ax
  %i.go = getelementptr inbounds nuw i8, ptr %.039.ptr110.i.i, i64 2
  %i.gp = load i8, ptr %i.go, align 2, !tbaa !282, !range !202, !noundef !203
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %.loopexit.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.thread.i.i42
  %.sroa.053.3.ph.i.i = phi ptr [ %.sroa.053.1.ph.i.i, %.thread.i.i42 ], [ %.sroa.053.0103.i.i, %bb.bh ] ; 3 uses
  %.sroa.554.3.ph.i.i = phi i64 [ %.sroa.554.1.ph.i.i, %.thread.i.i42 ], [ %.sroa.554.0104.i.i, %bb.bh ] ; 5 uses
  %.sroa.0.3.ph.i.i = phi ptr [ %.sroa.0.1.ph.i.i, %.thread.i.i42 ], [ %.sroa.0.0105.i.i, %bb.bh ] ; 3 uses
  %.sroa.5.3.ph.i.i = phi i64 [ %.sroa.5.1.ph.i.i, %.thread.i.i42 ], [ %.sroa.5.0106.i.i, %bb.bh ] ; 2 uses
  %.437.ph.i.i = phi i8 [ %.235.ph.i.i, %.thread.i.i42 ], [ %.033108.i.i, %bb.bh ] ; 2 uses
  %.431.ph.i.i = phi i8 [ %.229.ph.i.i, %.thread.i.i42 ], [ %.027109.i.i, %bb.bh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #7
  %.039.add.i.i = add nuw nsw i64 %.039.idx107.i.i, 4 ; 2 uses
  %.not.i.i39 = icmp eq i64 %.039.add.i.i, 64
  br i1 %.not.i.i39, label %bb.bj, label %bb.ax

.loopexit.i.i:                                    ; preds = %bb.bh, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #7
  br label %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread47.i

bb.bj:                                            ; preds = %bb.bi
  %i.gr = call i64 @CBS_len(ptr noundef nonnull %53) #7
  %.not46.i.i = icmp eq i64 %i.gr, 0
  br i1 %.not46.i.i, label %.preheader.i.i, label %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread47.i

.preheader.i.i:                                   ; preds = %bb.bj, %bb.bk
  %i.gs = call i64 @CBS_len(ptr noundef nonnull %54) #7
  %.not47.i.i = icmp eq i64 %i.gs, 0
  br i1 %.not47.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.preheader.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #7
  %i.gt = call i32 @CBS_get_u16(ptr noundef nonnull %54, ptr noundef nonnull %i.s) #7
  %i.gu = icmp ne i32 %i.gt, 0
  %i.gv = load i16, ptr %i.s, align 2
  %i.gw = icmp ne i16 %i.gv, 29
  %or.cond.not.i.i = select i1 %i.gu, i1 %i.gw, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #7
  br i1 %or.cond.not.i.i, label %.preheader.i.i, label %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread47.i, !llvm.loop !153

bb.bl:                                            ; preds = %.preheader.i.i
  %.not.i.i.i.i41 = icmp eq i64 %.sroa.554.3.ph.i.i, %.sroa.5.3.ph.i.i
  br i1 %.not.i.i.i.i41, label %.preheader.i.i.i.i, label %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread47.i.a

.preheader.i.i.i.i:                               ; preds = %bb.bl
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.053.3.ph.i.i, i64 %.sroa.554.3.ph.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0.3.ph.i.i, i64 %.sroa.554.3.ph.i.i
  %.not1019.i.i.i.i = icmp samesign eq i64 %.sroa.554.3.ph.i.i, 0
  br i1 %.not1019.i.i.i.i, label %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.bm
  %.0723.i.i.i.i = phi ptr [ %i.hc, %bb.bm ], [ %.sroa.0.3.ph.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %.0822.i.i.i.i = phi ptr [ %i.hb, %bb.bm ], [ %.sroa.053.3.ph.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %i.gz = load i8, ptr %.0822.i.i.i.i, align 1, !tbaa !141
  %i.ha = load i8, ptr %.0723.i.i.i.i, align 1, !tbaa !141
  %.not12.i.not.i.i.i = icmp eq i8 %i.gz, %i.ha
  br i1 %.not12.i.not.i.i.i, label %bb.bm, label %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread47.i.a

bb.bm:                                            ; preds = %.lr.ph.i.i.i.i
  %i.hb = getelementptr inbounds nuw i8, ptr %.0822.i.i.i.i, i64 1 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.0723.i.i.i.i, i64 1 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.hb, %i.gx
  %.not11.i.i.i.i = icmp eq ptr %i.hc, %i.gy
  %or.cond.i.i.i.i = select i1 %.not10.i.i.i.i, i1 true, i1 %.not11.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !154

_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread47.i: ; preds = %bb.bk, %bb.bj, %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #7
  br label %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread.i

_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread47.i.a: ; preds = %.lr.ph.i.i.i.i, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #7
  br label %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread.i

_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.i: ; preds = %bb.bm, %.preheader.i.i.i.i
  %.not48.i.i = icmp eq i8 %.431.ph.i.i, %.437.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #7
  br i1 %.not48.i.i, label %bb.bn, label %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread.i

bb.bn:                                            ; preds = %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.i
  %i.hd = load i32, ptr %i.ac, align 8
  %i.he = or i32 %i.hd, 4194304
  store i32 %i.he, ptr %i.ac, align 8
  br label %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread.i

_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread.i: ; preds = %bb.bn, %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.i, %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread47.i.a, %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread47.i, %_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.i.i, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #7
  store i8 50, ptr %i.u, align 1, !tbaa !141
  %i.hf = load ptr, ptr %0, align 8, !tbaa !140   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #7
  %i.hg = call noundef zeroext i1 @_ZN4bssl30ssl_client_hello_get_extensionEPK22ssl_early_callback_ctxP6cbs_stt(ptr noundef nonnull %58, ptr noundef nonnull %50, i16 noundef zeroext 43) #7
  br i1 %i.hg, label %bb.bo, label %bb.bs

bb.bo:                                            ; preds = %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread.i
  %i.hh = call i32 @CBS_get_u8_length_prefixed(ptr noundef nonnull %50, ptr noundef nonnull %51) #7
  %.not26.i.i = icmp eq i32 %i.hh, 0
  br i1 %.not26.i.i, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hi = call i64 @CBS_len(ptr noundef nonnull %50) #7
  %.not27.i.i = icmp eq i64 %i.hi, 0
  br i1 %.not27.i.i, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.hj = call i64 @CBS_len(ptr noundef nonnull %51) #7
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %bb.br, label %bb.bx

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 137, ptr noundef nonnull @.str, i32 noundef 72) #7
  store i8 50, ptr %i.u, align 1, !tbaa !141
  br label %bb.cd

bb.bs:                                            ; preds = %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread.i
  %i.hl = call i32 @SSL_is_dtls(ptr noundef %i.hf) #7
  %.not.i36.i = icmp eq i32 %i.hl, 0
  %i.hm = load i16, ptr %i.bs, align 8, !tbaa !283 ; 5 uses
  br i1 %.not.i36.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hn = icmp ult i16 %i.hm, -258
  %i.ho = icmp ult i16 %i.hm, -256
  %spec.select.i.i = select i1 %i.ho, i64 2, i64 0
  %.0.i.i = select i1 %i.hn, i64 4, i64 %spec.select.i.i
  br label %.sink.split.i.i

bb.bu:                                            ; preds = %bb.bs
  %i.hp = icmp ugt i16 %i.hm, 770
  br i1 %i.hp, label %.sink.split.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hq = icmp eq i16 %i.hm, 770
  br i1 %i.hq, label %.sink.split.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hr = icmp samesign ugt i16 %i.hm, 768
  %spec.select28.i.i = select i1 %i.hr, i64 2, i64 0
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.bw, %bb.bv, %bb.bu, %bb.bt
  %.0.sink33.i.i = phi i64 [ %.0.i.i, %bb.bt ], [ %spec.select28.i.i, %bb.bw ], [ 6, %bb.bu ], [ 4, %bb.bv ] ; 2 uses
  %.sink31.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZN4bsslL17negotiate_versionEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctxE13kDTLSVersions, i64 4), %bb.bt ], [ getelementptr inbounds nuw (i8, ptr @_ZZN4bsslL17negotiate_versionEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctxE12kTLSVersions, i64 6), %bb.bw ], [ getelementptr inbounds nuw (i8, ptr @_ZZN4bsslL17negotiate_versionEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctxE12kTLSVersions, i64 6), %bb.bu ], [ getelementptr inbounds nuw (i8, ptr @_ZZN4bsslL17negotiate_versionEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctxE12kTLSVersions, i64 6), %bb.bv ]
  %i.hs = sub nsw i64 0, %.0.sink33.i.i
  %i.ht = getelementptr inbounds i8, ptr %.sink31.i.i, i64 %i.hs
  call void @CBS_init(ptr noundef nonnull %51, ptr noundef nonnull %i.ht, i64 noundef %.0.sink33.i.i) #7
  br label %bb.bx

bb.bx:                                            ; preds = %.sink.split.i.i, %bb.bq
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hf, i64 16 ; 2 uses
  %i.hv = call noundef zeroext i1 @_ZN4bssl21ssl_negotiate_versionEPNS_13SSL_HANDSHAKEEPhPtPK6cbs_st(ptr noundef nonnull %0, ptr noundef nonnull %i.u, ptr noundef nonnull %i.hu, ptr noundef nonnull %51) #7
  br i1 %i.hv, label %bb.by, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.bx
  %.pre53.i = load i8, ptr %i.u, align 1, !tbaa !141
  %i.hw = zext i8 %.pre53.i to i32
  br label %bb.cd

bb.by:                                            ; preds = %bb.bx
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hf, i64 56 ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !142
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 300 ; 2 uses
  %i.ia = load i16, ptr %i.hz, align 4
  %i.ib = or i16 %i.ia, 2
  store i16 %i.ib, ptr %i.hz, align 4
  %i.ic = load ptr, ptr %i.hx, align 8, !tbaa !142
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 352
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !284
  %i.if = load i16, ptr %i.hu, align 8, !tbaa !285
  call void @_ZN4bssl14SSLAEADContext22SetVersionIfNullCipherEt(ptr noundef nonnull align 8 dereferenceable(610) %i.ie, i16 noundef zeroext %i.if) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #7
  %i.ig = load ptr, ptr %i.bn, align 8, !tbaa !15
  %i.ih = load i64, ptr %i.bo, align 8, !tbaa !16
  call void @CBS_init(ptr noundef nonnull %49, ptr noundef %i.ig, i64 noundef %i.ih) #7
  br label %bb.bz

bb.bz:                                            ; preds = %bb.ca, %bb.by
  %.04.i.i37.i = phi i1 [ undef, %bb.by ], [ %.1.i.i41.i, %bb.ca ]
  %i.ii = call i64 @CBS_len(ptr noundef nonnull %49) #7
  %.not.i.i38.i = icmp eq i64 %i.ii, 0
  br i1 %.not.i.i38.i, label %_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.thread.i44.i, label %bb.ca

_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.thread.i44.i: ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #7
  br label %bb.ce

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #7
  %i.ij = call i32 @CBS_get_u16(ptr noundef nonnull %49, ptr noundef nonnull %i.p) #7
  %.not5.i.i39.i = icmp ne i32 %i.ij, 0           ; 2 uses
  %i.ik = load i16, ptr %i.p, align 2
  %i.il = icmp eq i16 %i.ik, 22016                ; 2 uses
  %..04.i.i40.i = select i1 %i.il, i1 true, i1 %.04.i.i37.i
  %.1.i.i41.i = select i1 %.not5.i.i39.i, i1 %..04.i.i40.i, i1 false ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #7
  %not..not5.i.i42.i = xor i1 %.not5.i.i39.i, true
  %i.im = select i1 %not..not5.i.i42.i, i1 true, i1 %i.il
  br i1 %i.im, label %_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.i43.i, label %bb.bz, !llvm.loop !0

_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.i43.i: ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #7
  br i1 %.1.i.i41.i, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.i43.i
  %i.in = call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef %i.hf) #7
  %i.io = load i16, ptr %i.bm, align 8, !tbaa !286
  %i.ip = icmp ult i16 %i.in, %i.io
  br i1 %i.ip, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 157, ptr noundef nonnull @.str, i32 noundef 125) #7
  store i8 86, ptr %i.u, align 1, !tbaa !141
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %._crit_edge.i, %bb.br
  %i.iq = phi i32 [ %i.hw, %._crit_edge.i ], [ 86, %bb.cc ], [ 50, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #7
  call void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef %i.fc, i32 noundef 2, i32 noundef %i.iq) #7
  br label %bb.cl

bb.ce:                                            ; preds = %bb.cb, %_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.i43.i, %_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.thread.i44.i
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #7
  %i.ir = load i16, ptr %i.bs, align 8, !tbaa !283
  store i16 %i.ir, ptr %i.ar, align 4, !tbaa !287
  %i.is = load i64, ptr %i.bt, align 8, !tbaa !288
  %.not35.i = icmp eq i64 %i.is, 32
  br i1 %.not35.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str, i32 noundef 644) #7
  br label %bb.cl

bb.cg:                                            ; preds = %bb.ce
  %i.it = getelementptr inbounds nuw i8, ptr %i.fc, i64 56
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !142
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 48
  %i.iw = load ptr, ptr %i.bu, align 8, !tbaa !289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.iv, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.iw, i64 32, i1 false)
  %i.ix = load i64, ptr %i.bv, align 8, !tbaa !290 ; 2 uses
  %i.iy = icmp eq i64 %i.ix, 0
  br i1 %i.iy, label %_ZL14OPENSSL_memchrPKvim.exit.thread.i, label %_ZL14OPENSSL_memchrPKvim.exit.i

_ZL14OPENSSL_memchrPKvim.exit.i:                  ; preds = %bb.cg
  %i.iz = load ptr, ptr %i.bw, align 8, !tbaa !291
  %i.ja = call noundef ptr @memchr(ptr noundef readonly %i.iz, i32 noundef 0, i64 noundef %i.ix) #8
  %i.jb = icmp eq ptr %i.ja, null
  br i1 %i.jb, label %_ZL14OPENSSL_memchrPKvim.exit.thread.i, label %bb.ch

bb.ch:                                            ; preds = %_ZL14OPENSSL_memchrPKvim.exit.i
  %i.jc = call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef nonnull %i.fc) #7
  %i.jd = icmp ugt i16 %i.jc, 771
  %i.je = load i64, ptr %i.bv, align 8
  %i.jf = icmp ne i64 %i.je, 1
  %or.cond.i = select i1 %i.jd, i1 %i.jf, i1 false
  br i1 %or.cond.i, label %_ZL14OPENSSL_memchrPKvim.exit.thread.i, label %bb.ci

_ZL14OPENSSL_memchrPKvim.exit.thread.i:           ; preds = %bb.ch, %_ZL14OPENSSL_memchrPKvim.exit.i, %bb.cg
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str, i32 noundef 656) #7
  call void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef nonnull %i.fc, i32 noundef 2, i32 noundef 47) #7
  br label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  %i.jg = call noundef zeroext i1 @_ZN4bssl28ssl_parse_clienthello_tlsextEPNS_13SSL_HANDSHAKEEPK22ssl_early_callback_ctx(ptr noundef nonnull %0, ptr noundef nonnull %58) #7
  br i1 %i.jg, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 190, ptr noundef nonnull @.str, i32 noundef 663) #7
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ci
  store i32 3, ptr %i.ab, align 4, !tbaa !139
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %_ZL14OPENSSL_memchrPKvim.exit.thread.i, %bb.cf, %bb.cd
  %.1.i40 = phi i32 [ 0, %bb.cf ], [ 0, %_ZL14OPENSSL_memchrPKvim.exit.thread.i ], [ 1, %bb.ck ], [ 0, %bb.cj ], [ 0, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #7
  br label %_ZN4bsslL30do_read_client_hello_after_echEPNS_13SSL_HANDSHAKEE.exit

_ZN4bsslL30do_read_client_hello_after_echEPNS_13SSL_HANDSHAKEE.exit: ; preds = %bb.ai, %bb.al, %bb.ao, %bb.ap, %bb.ar, %bb.cl
  %.3.i = phi i32 [ 0, %bb.ai ], [ %.1.i40, %bb.cl ], [ 0, %bb.al ], [ 5, %bb.ao ], [ 0, %bb.ap ], [ 0, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #7
  br label %_ZN4bsslL21do_select_certificateEPNS_13SSL_HANDSHAKEE.exit

end_hunk_1
