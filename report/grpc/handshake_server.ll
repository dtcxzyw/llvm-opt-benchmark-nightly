Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/handshake_server?download=true
inline.NumInlined: 789
inline.NumDeleted: 419
begin_hunk_0

$_ZNSt10unique_ptrI15ssl_ech_keys_stN4bssl8internal7DeleterEEaSEOS4_ = comdat any

$_ZNSt10unique_ptrI15ssl_ech_keys_stN4bssl8internal7DeleterEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt10unique_ptrIcN4bssl8internal7DeleterEE5resetEPc = comdat any

$_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_ = comdat any

$_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEEaSEOS4_ = comdat any

$_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev = comdat any

$_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEED2Ev = comdat any

$sk_SSL_CIPHER_call_cmp_func = comdat any

$_ZN4bssl5ArrayIhE8CopyFromENS_4SpanIKhEE = comdat any

$_ZN4bssl5ArrayIhE16InitForOverwriteEm = comdat any

$_ZNSt10unique_ptrIN4bssl11SSLKeyShareENS0_8internal7DeleterEE5resetEPS1_ = comdat any

$_ZN4bssl5ArrayIhE4InitEm = comdat any

$_ZZN4bssl8internal11DeleterImplI22stack_st_CRYPTO_BUFFERvE4FreeEPS2_ENUlPFvPvES5_E_8__invokeES7_S5_ = comdat any

@.str = private unnamed_addr constant [24 x i8] c"TLS server start_accept\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"TLS server read_client_hello\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"TLS server read_client_hello_after_ech\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"TLS server cert_callback\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"TLS server select_parameters\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"TLS server send_server_hello\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"TLS server send_server_certificate\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"TLS server send_server_key_exchange\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"TLS server send_server_hello_done\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"TLS server read_client_certificate\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"TLS server verify_client_certificate\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"TLS server read_client_key_exchange\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"TLS server read_client_certificate_verify\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"TLS server read_change_cipher_spec\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"TLS server process_change_cipher_spec\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"TLS server read_next_proto\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"TLS server read_channel_id\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"TLS server read_client_finished\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"TLS server send_server_finished\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"TLS server finish_server_handshake\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"TLS server done\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"TLS server unknown\00", align 1
@.str.22 = private unnamed_addr constant [83 x i8] c"/opt-bench/work/grpc/grpc/third_party/boringssl-with-bazel/ssl/handshake_server.cc\00", align 1
@_ZZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctxE15kJavaExtensions = internal unnamed_addr constant [16 x %struct.anon] [%struct.anon zeroinitializer, %struct.anon { i16 1, i8 0 }, %struct.anon { i16 5, i8 0 }, %struct.anon { i16 10, i8 1 }, %struct.anon { i16 11, i8 0 }, %struct.anon { i16 13, i8 1 }, %struct.anon { i16 50, i8 1 }, %struct.anon { i16 16, i8 0 }, %struct.anon { i16 17, i8 0 }, %struct.anon { i16 23, i8 0 }, %struct.anon { i16 43, i8 1 }, %struct.anon { i16 44, i8 0 }, %struct.anon { i16 45, i8 1 }, %struct.anon { i16 51, i8 1 }, %struct.anon { i16 -255, i8 0 }, %struct.anon { i16 41, i8 0 }], align 16
@_ZZN4bsslL17negotiate_versionEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctxE12kTLSVersions = internal constant [6 x i8] c"\03\03\03\02\03\01", align 1
@_ZZN4bsslL17negotiate_versionEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctxE13kDTLSVersions = internal constant [4 x i8] c"\FE\FD\FE\FF", align 1
@_ZN4bssl21kJDK11DowngradeRandomE = external local_unnamed_addr constant [8 x i8], align 1
@_ZN4bssl21kTLS13DowngradeRandomE = external local_unnamed_addr constant [8 x i8], align 1
@_ZN4bssl21kTLS12DowngradeRandomE = external local_unnamed_addr constant [8 x i8], align 1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.cbs_st, align 8             ; 5 uses
  %i.a = alloca i16, align 2                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20   ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.e, ptr %i.f, align 8, !tbaa !23
  %.not6 = icmp eq i64 %i.e, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph

thread-pre-split:                                 ; preds = %.lr.ph
  %.pr = load i64, ptr %i.f, align 8, !tbaa !23
  %.not = icmp eq i64 %.pr, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %thread-pre-split
  %.047 = phi i1 [ %.1, %thread-pre-split ], [ undef, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.g = call i32 @CBS_get_u16(ptr noundef nonnull %2, ptr noundef nonnull %i.a)
  %.not5 = icmp ne i32 %i.g, 0                    ; 2 uses
  %i.h = load i16, ptr %i.a, align 2
  %i.i = icmp eq i16 %i.h, %1                     ; 2 uses
  %..04 = select i1 %i.i, i1 true, i1 %.047
  %.1 = select i1 %.not5, i1 %..04, i1 false      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %not..not5 = xor i1 %.not5, true
  %i.j = select i1 %not..not5, i1 true, i1 %i.i
  br i1 %i.j, label %._crit_edge8, label %thread-pre-split, !llvm.loop !0

._crit_edge8:                                     ; preds = %.lr.ph
  br label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %thread-pre-split, %._crit_edge8, %bb.a
  %.2 = phi i1 [ %.1, %._crit_edge8 ], [ false, %bb.a ], [ false, %thread-pre-split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @CBS_get_u16(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4bssl20ssl_server_handshakeEPNS_13SSL_HANDSHAKEE(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.cbs_st, align 8             ; 14 uses
  %i.a = alloca i8, align 1                       ; 8 uses
  %i.b = alloca i8, align 1                       ; 8 uses
  %i.c = alloca i16, align 2                      ; 7 uses
  %i.d = alloca i16, align 2                      ; 7 uses
  %2 = alloca %struct.cbs_st, align 8             ; 8 uses
  %3 = alloca %struct.cbs_st, align 8             ; 8 uses
  %4 = alloca %"class.std::unique_ptr.47", align 8 ; 6 uses
  %i.e = alloca i8, align 1                       ; 6 uses
  %5 = alloca %"class.bssl::Span.120", align 8    ; 8 uses
  %6 = alloca %struct.cbs_st, align 8             ; 7 uses
  %7 = alloca %struct.cbs_st, align 8             ; 8 uses
  %8 = alloca %struct.cbs_st, align 8             ; 8 uses
  %i.f = alloca i8, align 1                       ; 6 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %9 = alloca %"class.std::unique_ptr.41", align 8 ; 8 uses
  %10 = alloca %"class.std::unique_ptr.41", align 8 ; 5 uses
  %11 = alloca %"class.bssl::internal::StackAllocated.166", align 8 ; 10 uses
  %12 = alloca %struct.cbb_st, align 8            ; 7 uses
  %13 = alloca %struct.cbb_st, align 8            ; 6 uses
  %14 = alloca %"struct.bssl::SSLMessage", align 8 ; 6 uses
  %15 = alloca %"struct.bssl::SSLMessage", align 8 ; 6 uses
  %16 = alloca %struct.cbs_st, align 8            ; 6 uses
  %17 = alloca %struct.cbs_st, align 8            ; 5 uses
  %18 = alloca %struct.cbs_st, align 8            ; 3 uses
  %19 = alloca %"struct.bssl::SSLMessage", align 8 ; 6 uses
  %20 = alloca %struct.cbs_st, align 8            ; 4 uses
  %21 = alloca %struct.cbs_st, align 8            ; 6 uses
  %22 = alloca %struct.cbs_st, align 8            ; 5 uses
  %i.h = alloca i16, align 2                      ; 8 uses
  %i.i = alloca i8, align 1                       ; 6 uses
  %23 = alloca %"class.bssl::Span.120", align 8   ; 5 uses
  %24 = alloca %"struct.bssl::SSLMessage", align 8 ; 7 uses
  %25 = alloca %struct.cbs_st, align 8            ; 8 uses
  %26 = alloca %struct.cbs_st, align 8            ; 8 uses
  %i.j = alloca ptr, align 8                      ; 6 uses
  %27 = alloca %"class.bssl::Array", align 8      ; 15 uses
  %28 = alloca %struct.cbs_st, align 8            ; 7 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %29 = alloca %struct.cbs_st, align 8            ; 8 uses
  %i.l = alloca i8, align 1                       ; 7 uses
  %i.m = alloca [256 x i8], align 16              ; 6 uses
  %30 = alloca %"class.bssl::internal::StackAllocated.166", align 8 ; 10 uses
  %31 = alloca %struct.cbb_st, align 8            ; 7 uses
  %32 = alloca %"struct.bssl::SSLMessage", align 8 ; 6 uses
  %33 = alloca %struct.cbs_st, align 8            ; 5 uses
  %i.n = alloca i8, align 1                       ; 5 uses
  %34 = alloca %"class.bssl::internal::StackAllocated.166", align 8 ; 10 uses
  %35 = alloca %struct.cbb_st, align 8            ; 8 uses
  %36 = alloca %struct.cbb_st, align 8            ; 7 uses
  %37 = alloca %struct.cbb_st, align 8            ; 6 uses
  %38 = alloca %"class.bssl::internal::StackAllocated.166", align 8 ; 8 uses
  %39 = alloca %struct.cbb_st, align 8            ; 7 uses
  %40 = alloca %struct.cbb_st, align 8            ; 6 uses
  %i.o = alloca i16, align 2                      ; 9 uses
  %i.p = alloca ptr, align 8                      ; 7 uses
  %i.q = alloca i64, align 8                      ; 6 uses
  %41 = alloca %"class.bssl::Span.120", align 8   ; 5 uses
  %42 = alloca %"class.bssl::internal::StackAllocated.166", align 8 ; 16 uses
  %43 = alloca %struct.cbb_st, align 8            ; 7 uses
  %44 = alloca %struct.cbb_st, align 8            ; 6 uses
  %45 = alloca %struct.cbb_st, align 8            ; 11 uses
  %46 = alloca %"class.std::unique_ptr.2", align 8 ; 7 uses
  %47 = alloca %struct.cbs_st, align 8            ; 6 uses
  %48 = alloca %"class.bssl::internal::StackAllocated.166", align 8 ; 11 uses
  %49 = alloca %"class.bssl::internal::StackAllocated.166", align 8 ; 8 uses
  %50 = alloca %struct.cbb_st, align 8            ; 10 uses
  %51 = alloca %struct.cbb_st, align 8            ; 5 uses
  %52 = alloca %struct.cbs_st, align 8            ; 7 uses
  %53 = alloca %"class.std::unique_ptr.151", align 8 ; 6 uses
  %i.r = alloca i16, align 2                      ; 6 uses
  %54 = alloca %"struct.bssl::SSLMessage", align 8 ; 5 uses
  %55 = alloca %struct.ssl_early_callback_ctx, align 8 ; 11 uses
  %i.s = alloca i16, align 2                      ; 6 uses
  %56 = alloca %"class.std::unique_ptr.151", align 8 ; 5 uses
  %57 = alloca %"class.bssl::Array.157", align 8  ; 9 uses
  %58 = alloca %"class.std::unique_ptr.41", align 8 ; 12 uses
  %i.t = alloca i8, align 1                       ; 6 uses
  %i.u = alloca i8, align 1                       ; 6 uses
  %i.v = alloca i8, align 1                       ; 6 uses
  %59 = alloca %struct.cbs_st, align 8            ; 6 uses
  %i.w = alloca i16, align 2                      ; 4 uses
  %60 = alloca %struct.cbs_st, align 8            ; 6 uses
  %61 = alloca %struct.cbs_st, align 8            ; 7 uses
  %62 = alloca %struct.cbs_st, align 8            ; 6 uses
  %i.x = alloca i16, align 2                      ; 4 uses
  %63 = alloca %struct.cbs_st, align 8            ; 9 uses
  %64 = alloca %struct.cbs_st, align 8            ; 7 uses
  %65 = alloca %struct.cbs_st, align 8            ; 6 uses
  %i.y = alloca i16, align 2                      ; 6 uses
  %66 = alloca %struct.cbs_st, align 8            ; 8 uses
  %i.z = alloca i16, align 2                      ; 4 uses
  %67 = alloca %"struct.bssl::SSLMessage", align 8 ; 3 uses
  %68 = alloca %struct.ssl_early_callback_ctx, align 8 ; 15 uses
  %i.aa = alloca i8, align 1                      ; 7 uses
  %69 = alloca %"struct.bssl::SSLMessage", align 8 ; 7 uses
  %70 = alloca %struct.ssl_early_callback_ctx, align 8 ; 7 uses
  %i.ab = alloca i8, align 1                      ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 32 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 45 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1552 ; 26 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1544 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1584 ; 10 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1536 ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1620 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 8 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ba = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1440 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 3 uses
  %i.bi = load i64, ptr @_ZN4bssl21kTLS12DowngradeRandomE, align 1
  %i.bj = load i64, ptr @_ZN4bssl21kJDK11DowngradeRandomE, align 1
  %i.bk = load i64, ptr @_ZN4bssl21kTLS13DowngradeRandomE, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1629 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1661 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %55, i64 80
  %i.bo = getelementptr inbounds nuw i8, ptr %55, i64 88
  %i.bp = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1626
  %i.bs = getelementptr inbounds nuw i8, ptr %55, i64 48
  %i.bt = getelementptr inbounds nuw i8, ptr %55, i64 56
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1568 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bx = getelementptr inbounds nuw i8, ptr %68, i64 80 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %68, i64 88 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %62, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %68, i64 112
  %i.cb = getelementptr inbounds nuw i8, ptr %68, i64 120
  %i.cc = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %66, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %64, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %68, i64 24 ; 2 uses
  %.sroa.434.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %68, i64 40
  %i.cj = getelementptr inbounds nuw i8, ptr %68, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %68, i64 104 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %68, i64 96
  %i.cm = getelementptr inbounds nuw i8, ptr %69, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %69, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.xe, %bb.a
  %i.cx = load i32, ptr %i.ac, align 4, !tbaa !144 ; 2 uses
  switch i32 %i.cx, label %_ZN4bsslL16do_cert_callbackEPNS_13SSL_HANDSHAKEE.exit [
    i32 21, label %bb.xf
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.av
    i32 3, label %bb.cq
    i32 4, label %bb.db
    i32 5, label %bb.dd
    i32 6, label %bb.gf
    i32 7, label %bb.hw
    i32 8, label %bb.lj
    i32 9, label %bb.mz
    i32 10, label %bb.oh
    i32 11, label %bb.pc
    i32 12, label %bb.pg
    i32 13, label %bb.tg
    i32 14, label %bb.ub
    i32 15, label %bb.ue
    i32 16, label %bb.ug
    i32 17, label %bb.uw
    i32 18, label %bb.ve
    i32 19, label %bb.vk
    i32 20, label %bb.wr
  ]

bb.c:                                             ; preds = %bb.b
  %i.cy = load ptr, ptr %0, align 8, !tbaa !145
  call void @_ZN4bssl20ssl_do_info_callbackEPK6ssl_stii(ptr noundef %i.cy, i32 noundef 16, i32 noundef 1)
  store i32 1, ptr %i.ac, align 4, !tbaa !144
  br label %_ZN4bsslL16do_cert_callbackEPNS_13SSL_HANDSHAKEE.exit

bb.d:                                             ; preds = %bb.b
  %i.cz = load ptr, ptr %0, align 8, !tbaa !145   ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #13
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !272
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !274
  %i.dd = call noundef zeroext i1 %i.dc(ptr noundef nonnull %i.cz, ptr noundef nonnull %69), !inline_history !237
  br i1 %i.dd, label %bb.e, label %_ZN4bsslL20do_read_client_helloEPNS_13SSL_HANDSHAKEE.exit

bb.e:                                             ; preds = %bb.d
  %i.de = call noundef zeroext i1 @_ZN4bssl22ssl_check_message_typeEP6ssl_stRKNS_10SSLMessageEi(ptr noundef nonnull %i.cz, ptr noundef nonnull align 8 dereferenceable(40) %69, i32 noundef 1)
  br i1 %i.de, label %bb.f, label %_ZN4bsslL20do_read_client_helloEPNS_13SSL_HANDSHAKEE.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #13
  %i.df = load ptr, ptr %i.cm, align 8, !tbaa !22
  %i.dg = load i64, ptr %i.cn, align 8, !tbaa !23
  %i.dh = call i32 @SSL_parse_client_hello(ptr noundef nonnull %i.cz, ptr noundef nonnull %70, ptr noundef %i.df, i64 noundef %i.dg)
  %.not.i = icmp eq i32 %i.dh, 0
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef nonnull %i.cz, i32 noundef 2, i32 noundef 50)
  br label %bb.au

bb.h:                                             ; preds = %bb.f
  %i.di = load ptr, ptr %i.cz, align 8, !tbaa !272
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !275
  %i.dl = call noundef zeroext i1 %i.dk(ptr noundef nonnull %i.cz), !inline_history !237
  br i1 %i.dl, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef nonnull %i.cz, i32 noundef 2, i32 noundef 10)
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 255, ptr noundef nonnull @.str.22, i32 noundef 545)
  br label %bb.au

bb.j:                                             ; preds = %bb.h
  %i.dm = load ptr, ptr %i.af, align 8, !tbaa !174
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 269
  %i.do = load i16, ptr %i.dn, align 1
  %i.dp = and i16 %i.do, 64
  %.not17.i = icmp eq i16 %i.dp, 0
  br i1 %.not17.i, label %bb.k, label %bb.au

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #13
  store i8 50, ptr %i.ab, align 1, !tbaa !175
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !276
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 216
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !301
  %.not18.i = icmp eq i32 %i.dt, 2
  br i1 %.not18.i, label %bb.af, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.du = load ptr, ptr %0, align 8, !tbaa !145   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.dv = call noundef zeroext i1 @_ZN4bssl30ssl_client_hello_get_extensionEPK22ssl_early_callback_ctxP6cbs_stt(ptr noundef nonnull %70, ptr noundef nonnull %1, i16 noundef zeroext -499)
  br i1 %i.dv, label %bb.m, label %.sink.split

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.dw = call i32 @CBS_get_u8(ptr noundef nonnull %1, ptr noundef nonnull %i.a)
  %.not.i164 = icmp eq i32 %i.dw, 0
  br i1 %.not.i164, label %_ZN4bsslL11decrypt_echEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctx.exit.thread189, label %bb.n

_ZN4bsslL11decrypt_echEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctx.exit.thread189: ; preds = %bb.m
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 137, ptr noundef nonnull @.str.22, i32 noundef 405)
  store i8 50, ptr %i.ab, align 1, !tbaa !175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.ae

bb.n:                                             ; preds = %bb.m
  %i.dx = load i8, ptr %i.a, align 1, !tbaa !175
  %.not37.i165 = icmp eq i8 %i.dx, 0
  br i1 %.not37.i165, label %bb.o, label %.sink.split.sink.split

end_hunk_0
begin_hunk_1_@_ZN4bssl20ssl_server_handshakeEPNS_13SSL_HANDSHAKEE:bb.a
bb.az:                                            ; preds = %bb.ay
  invoke void @SSL_ECH_KEYS_free(ptr noundef nonnull %i.ha)
          to label %_ZNSt10unique_ptrI15ssl_ech_keys_stN4bssl8internal7DeleterEEaSEDn.exit.i unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hb = landingpad { ptr, i32 }
          catch ptr null
  %i.hc = extractvalue { ptr, i32 } %i.hb, 0
  call void @__clang_call_terminate(ptr %i.hc) #14
  unreachable

_ZNSt10unique_ptrI15ssl_ech_keys_stN4bssl8internal7DeleterEEaSEDn.exit.i: ; preds = %bb.az, %bb.ay
  store i32 1, ptr %i.ac, align 4, !tbaa !144
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gs, i64 48
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !276
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 216
  store i32 2, ptr %i.hf, align 8, !tbaa !301
  br label %_ZN4bsslL30do_read_client_hello_after_echEPNS_13SSL_HANDSHAKEE.exit

bb.bb:                                            ; preds = %bb.ax
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 133, ptr noundef nonnull @.str.22, i32 noundef 602)
  call void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef nonnull %i.gs, i32 noundef 2, i32 noundef 40)
  br label %_ZN4bsslL30do_read_client_hello_after_echEPNS_13SSL_HANDSHAKEE.exit

bb.bc:                                            ; preds = %bb.ax, %bb.aw
  %i.hg = call noundef zeroext i1 @_ZN4bssl21ssl_get_version_rangeEPKNS_13SSL_HANDSHAKEEPtS3_(ptr noundef nonnull %0, ptr noundef nonnull %i.bw, ptr noundef nonnull %i.bh)
  br i1 %i.hg, label %bb.bd, label %_ZN4bsslL30do_read_client_hello_after_echEPNS_13SSL_HANDSHAKEE.exit

bb.bd:                                            ; preds = %bb.bc
  %i.hh = load ptr, ptr %i.af, align 8, !tbaa !174
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 269
  %i.hj = load i16, ptr %i.hi, align 1
  %i.hk = and i16 %i.hj, 256
  %.not25.i = icmp eq i16 %i.hk, 0
  br i1 %.not25.i, label %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #13
  %i.hl = load ptr, ptr %i.bx, align 8, !tbaa !19
  %i.hm = load i64, ptr %i.by, align 8, !tbaa !20 ; 2 uses
  store ptr %i.hl, ptr %62, align 8, !tbaa !22
  store i64 %i.hm, ptr %i.bz, align 8, !tbaa !23
  %.not6.i.i.i = icmp eq i64 %i.hm, 0
  br i1 %.not6.i.i.i, label %_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.thread.i.i, label %.lr.ph.i.i.i

thread-pre-split.i.i.i:                           ; preds = %.lr.ph.i.i.i
  %.pr.i.i.i = load i64, ptr %i.bz, align 8, !tbaa !23
  %.not.i.i.i = icmp eq i64 %.pr.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.be, %thread-pre-split.i.i.i
  %.047.i.i.i = phi i1 [ %.1.i.i.i, %thread-pre-split.i.i.i ], [ undef, %bb.be ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #13
  %i.hn = call i32 @CBS_get_u16(ptr noundef nonnull %62, ptr noundef nonnull %i.x)
  %.not5.i.i.i = icmp ne i32 %i.hn, 0             ; 2 uses
  %i.ho = load i16, ptr %i.x, align 2
  %i.hp = icmp eq i16 %i.ho, 4867                 ; 2 uses
  %..04.i.i.i = select i1 %i.hp, i1 true, i1 %.047.i.i.i
  %.1.i.i.i = select i1 %.not5.i.i.i, i1 %..04.i.i.i, i1 false ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #13
  %not..not5.i.i.i = xor i1 %.not5.i.i.i, true
  %i.hq = select i1 %not..not5.i.i.i, i1 true, i1 %i.hp
  br i1 %i.hq, label %_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.i.i, label %thread-pre-split.i.i.i, !llvm.loop !0

_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.thread.i.i: ; preds = %thread-pre-split.i.i.i, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #13
  br label %bb.bf

_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.i.i: ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #13
  br i1 %.1.i.i.i, label %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread.i, label %bb.bf

bb.bf:                                            ; preds = %_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.i.i, %_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #13
  %i.hr = load ptr, ptr %i.ca, align 8, !tbaa !330
  %i.hs = load i64, ptr %i.cb, align 8, !tbaa !331
  store ptr %i.hr, ptr %63, align 8, !tbaa !22
  store i64 %i.hs, ptr %i.cc, align 8, !tbaa !23
  br label %bb.bg

bb.bg:                                            ; preds = %bb.br, %bb.bf
  %.027112.i.i = phi i8 [ 0, %bb.bf ], [ %.431.ph.i.i, %bb.br ] ; 6 uses
  %.033111.i.i = phi i8 [ 0, %bb.bf ], [ %.437.ph.i.i, %bb.br ] ; 6 uses
  %.039.idx110.i.i = phi i64 [ 0, %bb.bf ], [ %.039.add.i.i, %bb.br ] ; 2 uses
  %.sroa.5.0109.i.i = phi i64 [ 0, %bb.bf ], [ %.sroa.5.3.ph.i.i, %bb.br ] ; 6 uses
  %.sroa.0.0108.i.i = phi ptr [ null, %bb.bf ], [ %.sroa.0.3.ph.i.i, %bb.br ] ; 6 uses
  %.sroa.554.0107.i.i = phi i64 [ 0, %bb.bf ], [ %.sroa.554.3.ph.i.i, %bb.br ] ; 6 uses
  %.sroa.053.0106.i.i = phi ptr [ null, %bb.bf ], [ %.sroa.053.3.ph.i.i, %bb.br ] ; 6 uses
  %.039.ptr113.i.i = getelementptr inbounds nuw i8, ptr @_ZZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctxE15kJavaExtensions, i64 %.039.idx110.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %65, ptr noundef nonnull align 8 dereferenceable(16) %63, i64 16, i1 false), !tbaa.struct !333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #13
  %i.ht = call i32 @CBS_get_u16(ptr noundef nonnull %65, ptr noundef nonnull %i.y)
  %.not44.i.i = icmp eq i32 %i.ht, 0
  br i1 %.not44.i.i, label %bb.bq, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hu = load i16, ptr %i.y, align 2, !tbaa !178
  %i.hv = load i16, ptr %.039.ptr113.i.i, align 4, !tbaa !335
  %i.hw = icmp eq i16 %i.hu, %i.hv
  br i1 %i.hw, label %bb.bi, label %bb.bq

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %63, ptr noundef nonnull align 8 dereferenceable(16) %65, i64 16, i1 false), !tbaa.struct !333
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #13
  %i.hx = call i32 @CBS_get_u16_length_prefixed(ptr noundef nonnull %63, ptr noundef nonnull %66)
  %.not45.not.i.i = icmp eq i32 %i.hx, 0
  br i1 %.not45.not.i.i, label %bb.bp, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hy = load i16, ptr %i.y, align 2, !tbaa !178
  switch i16 %i.hy, label %.thread.i.i [
    i16 5, label %bb.bk
    i16 17, label %bb.bl
    i16 13, label %bb.bm
    i16 50, label %bb.bn
    i16 10, label %bb.bo
  ]

bb.bk:                                            ; preds = %bb.bj
  br label %.thread.i.i

bb.bl:                                            ; preds = %bb.bj
  br label %.thread.i.i

bb.bm:                                            ; preds = %bb.bj
  %i.hz = load ptr, ptr %66, align 8, !tbaa !22
  %i.ia = load i64, ptr %i.cd, align 8, !tbaa !23
  br label %.thread.i.i

bb.bn:                                            ; preds = %bb.bj
  %i.ib = load ptr, ptr %66, align 8, !tbaa !22
  %i.ic = load i64, ptr %i.cd, align 8, !tbaa !23
  br label %.thread.i.i

bb.bo:                                            ; preds = %bb.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %64, ptr noundef nonnull align 8 dereferenceable(16) %66, i64 16, i1 false), !tbaa.struct !333
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj
  %.sroa.053.1.ph.i.i = phi ptr [ %.sroa.053.0106.i.i, %bb.bo ], [ %.sroa.053.0106.i.i, %bb.bn ], [ %i.hz, %bb.bm ], [ %.sroa.053.0106.i.i, %bb.bl ], [ %.sroa.053.0106.i.i, %bb.bk ], [ %.sroa.053.0106.i.i, %bb.bj ]
  %.sroa.554.1.ph.i.i = phi i64 [ %.sroa.554.0107.i.i, %bb.bo ], [ %.sroa.554.0107.i.i, %bb.bn ], [ %i.ia, %bb.bm ], [ %.sroa.554.0107.i.i, %bb.bl ], [ %.sroa.554.0107.i.i, %bb.bk ], [ %.sroa.554.0107.i.i, %bb.bj ]
  %.sroa.0.1.ph.i.i = phi ptr [ %.sroa.0.0108.i.i, %bb.bo ], [ %i.ib, %bb.bn ], [ %.sroa.0.0108.i.i, %bb.bm ], [ %.sroa.0.0108.i.i, %bb.bl ], [ %.sroa.0.0108.i.i, %bb.bk ], [ %.sroa.0.0108.i.i, %bb.bj ]
  %.sroa.5.1.ph.i.i = phi i64 [ %.sroa.5.0109.i.i, %bb.bo ], [ %i.ic, %bb.bn ], [ %.sroa.5.0109.i.i, %bb.bm ], [ %.sroa.5.0109.i.i, %bb.bl ], [ %.sroa.5.0109.i.i, %bb.bk ], [ %.sroa.5.0109.i.i, %bb.bj ]
  %.235.ph.i.i = phi i8 [ %.033111.i.i, %bb.bo ], [ %.033111.i.i, %bb.bn ], [ %.033111.i.i, %bb.bm ], [ 1, %bb.bl ], [ %.033111.i.i, %bb.bk ], [ %.033111.i.i, %bb.bj ]
  %.229.ph.i.i = phi i8 [ %.027112.i.i, %bb.bo ], [ %.027112.i.i, %bb.bn ], [ %.027112.i.i, %bb.bm ], [ %.027112.i.i, %bb.bl ], [ 1, %bb.bk ], [ %.027112.i.i, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #13
  br label %bb.br

bb.bp:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #13
  br label %.loopexit.i.i.a

bb.bq:                                            ; preds = %bb.bh, %bb.bg
  %i.id = getelementptr inbounds nuw i8, ptr %.039.ptr113.i.i, i64 2
  %i.ie = load i8, ptr %i.id, align 2, !tbaa !336, !range !180, !noundef !181
  %i.if = trunc nuw i8 %i.ie to i1
  br i1 %i.if, label %.loopexit.i.i.a, label %bb.br

bb.br:                                            ; preds = %bb.bq, %.thread.i.i
  %.sroa.053.3.ph.i.i = phi ptr [ %.sroa.053.1.ph.i.i, %.thread.i.i ], [ %.sroa.053.0106.i.i, %bb.bq ] ; 2 uses
  %.sroa.554.3.ph.i.i = phi i64 [ %.sroa.554.1.ph.i.i, %.thread.i.i ], [ %.sroa.554.0107.i.i, %bb.bq ] ; 4 uses
  %.sroa.0.3.ph.i.i = phi ptr [ %.sroa.0.1.ph.i.i, %.thread.i.i ], [ %.sroa.0.0108.i.i, %bb.bq ] ; 2 uses
  %.sroa.5.3.ph.i.i = phi i64 [ %.sroa.5.1.ph.i.i, %.thread.i.i ], [ %.sroa.5.0109.i.i, %bb.bq ] ; 2 uses
  %.437.ph.i.i = phi i8 [ %.235.ph.i.i, %.thread.i.i ], [ %.033111.i.i, %bb.bq ] ; 2 uses
  %.431.ph.i.i = phi i8 [ %.229.ph.i.i, %.thread.i.i ], [ %.027112.i.i, %bb.bq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #13
  %.039.add.i.i = add nuw nsw i64 %.039.idx110.i.i, 4 ; 2 uses
  %.not.i.i = icmp eq i64 %.039.add.i.i, 64
  br i1 %.not.i.i, label %bb.bs, label %bb.bg

.loopexit.i.i.a:                                  ; preds = %bb.bq, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #13
  br label %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread42.i

bb.bs:                                            ; preds = %bb.br
  %i.ig = load i64, ptr %i.cc, align 8, !tbaa !23
  %.not46.i.i = icmp eq i64 %i.ig, 0
  br i1 %.not46.i.i, label %.preheader.i.i, label %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread42.i

.preheader.i.i:                                   ; preds = %bb.bs, %bb.bt
  %i.ih = load i64, ptr %i.ce, align 8, !tbaa !23
  %.not47.i.i = icmp eq i64 %i.ih, 0
  br i1 %.not47.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %.preheader.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #13
  %i.ii = call i32 @CBS_get_u16(ptr noundef nonnull %64, ptr noundef nonnull %i.z)
  %i.ij = icmp ne i32 %i.ii, 0
  %i.ik = load i16, ptr %i.z, align 2
  %i.il = icmp ne i16 %i.ik, 29
  %or.cond.not.i.i = select i1 %i.ij, i1 %i.il, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #13
  br i1 %or.cond.not.i.i, label %.preheader.i.i, label %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread42.i, !llvm.loop !243

bb.bu:                                            ; preds = %.preheader.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.554.3.ph.i.i, %.sroa.5.3.ph.i.i
  br i1 %.not.i.i.i.i.i.i, label %bb.bv, label %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread44.i

_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread44.i: ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #13
  br label %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread.i

bb.bv:                                            ; preds = %bb.bu
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp samesign eq i64 %.sroa.554.3.ph.i.i, 0
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.i, label %_ZN4bssl8internalneENS_4SpanIKhEES3_.exit.i.i

_ZN4bssl8internalneENS_4SpanIKhEES3_.exit.i.i:    ; preds = %bb.bv
  %bcmp.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr %.sroa.053.3.ph.i.i, ptr %.sroa.0.3.ph.i.i, i64 %.sroa.554.3.ph.i.i)
  %.not9.i.i.i.i.i.i.i.i.not.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i, 0
  br label %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.i

_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread42.i: ; preds = %bb.bt, %bb.bs, %.loopexit.i.i.a
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #13
  br label %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread.i

_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.i: ; preds = %_ZN4bssl8internalneENS_4SpanIKhEES3_.exit.i.i, %bb.bv
  %.0.i.i.i.i.i.i = phi i1 [ true, %bb.bv ], [ %.not9.i.i.i.i.i.i.i.i.not.i.i, %_ZN4bssl8internalneENS_4SpanIKhEES3_.exit.i.i ]
  %.not48.i.i = icmp eq i8 %.431.ph.i.i, %.437.ph.i.i
  %or.cond.i.i = select i1 %.0.i.i.i.i.i.i, i1 %.not48.i.i, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #13
  br i1 %or.cond.i.i, label %bb.bw, label %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread.i

bb.bw:                                            ; preds = %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.i
  %i.im = load i32, ptr %i.ad, align 8
  %i.in = or i32 %i.im, 4194304
  store i32 %i.in, ptr %i.ad, align 8
  br label %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread.i

_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread.i: ; preds = %bb.bw, %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.i, %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread42.i, %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread44.i, %_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.i.i, %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #13
  store i8 50, ptr %i.aa, align 1, !tbaa !175
  %i.io = load ptr, ptr %0, align 8, !tbaa !145   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #13
  %i.ip = call noundef zeroext i1 @_ZN4bssl30ssl_client_hello_get_extensionEPK22ssl_early_callback_ctxP6cbs_stt(ptr noundef nonnull %68, ptr noundef nonnull %60, i16 noundef zeroext 43)
  br i1 %i.ip, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread.i
  %i.iq = call i32 @CBS_get_u8_length_prefixed(ptr noundef nonnull %60, ptr noundef nonnull %61)
  %.not23.i.i = icmp eq i32 %i.iq, 0
  %i.ir = load i64, ptr %i.cg, align 8
  %.not24.i.i = icmp ne i64 %i.ir, 0
  %or.cond.not40.i.i = select i1 %.not23.i.i, i1 true, i1 %.not24.i.i
  %i.is = load i64, ptr %.sroa.434.0..sroa_idx.i.i, align 8
  %i.it = icmp eq i64 %i.is, 0
  %or.cond39.i.i = select i1 %or.cond.not40.i.i, i1 true, i1 %i.it
  br i1 %or.cond39.i.i, label %bb.by, label %bb.cd

bb.by:                                            ; preds = %bb.bx
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 137, ptr noundef nonnull @.str.22, i32 noundef 74)
  store i8 50, ptr %i.aa, align 1, !tbaa !175
  br label %bb.ch

bb.bz:                                            ; preds = %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread.i
  %i.iu = call i32 @SSL_is_dtls(ptr noundef %i.io)
  %.not.i27.i = icmp eq i32 %i.iu, 0
  %i.iv = load i16, ptr %i.cf, align 8, !tbaa !337 ; 5 uses
  br i1 %.not.i27.i, label %bb.ca, label %_ZNK4bssl4SpanIKhE4lastEm.exit.i.i

_ZNK4bssl4SpanIKhE4lastEm.exit.i.i:               ; preds = %bb.bz
  %i.iw = icmp ult i16 %i.iv, -258
  %i.ix = icmp ult i16 %i.iv, -256
  %spec.select.i.i = select i1 %i.ix, i64 2, i64 0
  %.020.i.i = select i1 %i.iw, i64 4, i64 %spec.select.i.i
  br label %.sink.split.i.i

bb.ca:                                            ; preds = %bb.bz
  %i.iy = icmp ugt i16 %i.iv, 770
  br i1 %i.iy, label %.sink.split.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.iz = icmp eq i16 %i.iv, 770
  br i1 %i.iz, label %.sink.split.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ja = icmp samesign ugt i16 %i.iv, 768
  %spec.select25.i.i = select i1 %i.ja, i64 2, i64 0
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.cc, %bb.cb, %bb.ca, %_ZNK4bssl4SpanIKhE4lastEm.exit.i.i
  %.020.sink47.i.i = phi i64 [ %.020.i.i, %_ZNK4bssl4SpanIKhE4lastEm.exit.i.i ], [ %spec.select25.i.i, %bb.cc ], [ 6, %bb.ca ], [ 4, %bb.cb ] ; 2 uses
  %.sink45.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZN4bsslL17negotiate_versionEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctxE13kDTLSVersions, i64 4), %_ZNK4bssl4SpanIKhE4lastEm.exit.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN4bsslL17negotiate_versionEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctxE12kTLSVersions, i64 6), %bb.cc ], [ getelementptr inbounds nuw (i8, ptr @_ZZN4bsslL17negotiate_versionEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctxE12kTLSVersions, i64 6), %bb.ca ], [ getelementptr inbounds nuw (i8, ptr @_ZZN4bsslL17negotiate_versionEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctxE12kTLSVersions, i64 6), %bb.cb ]
  %i.jb = sub nsw i64 0, %.020.sink47.i.i
  %i.jc = getelementptr inbounds i8, ptr %.sink45.i.i, i64 %i.jb
  store ptr %i.jc, ptr %61, align 8, !tbaa !182
  store i64 %.020.sink47.i.i, ptr %.sroa.434.0..sroa_idx.i.i, align 8, !tbaa !332
  br label %bb.cd

bb.cd:                                            ; preds = %.sink.split.i.i, %bb.bx
  %i.jd = getelementptr inbounds nuw i8, ptr %i.io, i64 48
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !276
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 208
  %i.jg = call noundef zeroext i1 @_ZN4bssl21ssl_negotiate_versionEPNS_13SSL_HANDSHAKEEPhPtPK6cbs_st(ptr noundef nonnull %0, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.jf, ptr noundef nonnull %61)
  br i1 %i.jg, label %bb.ce, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.cd
  %.pre.i = load i8, ptr %i.aa, align 1, !tbaa !175
  %i.jh = zext i8 %.pre.i to i32
  br label %bb.ch

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #13
  %i.ji = load ptr, ptr %i.bx, align 8, !tbaa !19
  %i.jj = load i64, ptr %i.by, align 8, !tbaa !20 ; 2 uses
  store ptr %i.ji, ptr %59, align 8, !tbaa !22
  store i64 %i.jj, ptr %i.ch, align 8, !tbaa !23
  %.not6.i.i28.i = icmp eq i64 %i.jj, 0
  br i1 %.not6.i.i28.i, label %_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.thread.i38.i, label %.lr.ph.i.i29.i

thread-pre-split.i.i35.i:                         ; preds = %.lr.ph.i.i29.i
  %.pr.i.i36.i = load i64, ptr %i.ch, align 8, !tbaa !23
  %.not.i.i37.i = icmp eq i64 %.pr.i.i36.i, 0
  br i1 %.not.i.i37.i, label %_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.thread.i38.i, label %.lr.ph.i.i29.i

.lr.ph.i.i29.i:                                   ; preds = %bb.ce, %thread-pre-split.i.i35.i
  %.047.i.i30.i = phi i1 [ %.1.i.i33.i, %thread-pre-split.i.i35.i ], [ undef, %bb.ce ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #13
  %i.jk = call i32 @CBS_get_u16(ptr noundef nonnull %59, ptr noundef nonnull %i.w)
  %.not5.i.i31.i = icmp ne i32 %i.jk, 0           ; 2 uses
  %i.jl = load i16, ptr %i.w, align 2
  %i.jm = icmp eq i16 %i.jl, 22016                ; 2 uses
  %..04.i.i32.i = select i1 %i.jm, i1 true, i1 %.047.i.i30.i
  %.1.i.i33.i = select i1 %.not5.i.i31.i, i1 %..04.i.i32.i, i1 false ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #13
  %not..not5.i.i34.i = xor i1 %.not5.i.i31.i, true
  %i.jn = select i1 %not..not5.i.i34.i, i1 true, i1 %i.jm
  br i1 %i.jn, label %_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.i39.i, label %thread-pre-split.i.i35.i, !llvm.loop !0

_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.thread.i38.i: ; preds = %thread-pre-split.i.i35.i, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #13
  br label %bb.ci

_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.i39.i: ; preds = %.lr.ph.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #13
  br i1 %.1.i.i33.i, label %bb.cf, label %bb.ci

bb.cf:                                            ; preds = %_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.i39.i
  %i.jo = call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef %i.io)
  %i.jp = load i16, ptr %i.bh, align 2, !tbaa !338
  %i.jq = icmp ult i16 %i.jo, %i.jp
  br i1 %i.jq, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 157, ptr noundef nonnull @.str.22, i32 noundef 120)
  store i8 86, ptr %i.aa, align 1, !tbaa !175
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %._crit_edge.i, %bb.by
  %i.jr = phi i32 [ %i.jh, %._crit_edge.i ], [ 86, %bb.cg ], [ 50, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #13
  call void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef %i.gs, i32 noundef 2, i32 noundef %i.jr)
  br label %bb.cp

bb.ci:                                            ; preds = %bb.cf, %_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.i39.i, %_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.thread.i38.i
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #13
  %i.js = load i16, ptr %i.cf, align 8, !tbaa !337
  store i16 %i.js, ptr %i.aw, align 4, !tbaa !339
  %i.jt = load i64, ptr %i.ci, align 8, !tbaa !340
  %.not26.i = icmp eq i64 %i.jt, 32
  br i1 %.not26.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str.22, i32 noundef 629)
  br label %bb.cp

bb.ck:                                            ; preds = %bb.ci
  %i.ju = getelementptr inbounds nuw i8, ptr %i.gs, i64 48
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !276
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 48
  %i.jx = load ptr, ptr %i.cj, align 8, !tbaa !341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.jw, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.jx, i64 32, i1 false)
  %i.jy = load i64, ptr %i.ck, align 8, !tbaa !342 ; 2 uses
  %i.jz = icmp eq i64 %i.jy, 0
  br i1 %i.jz, label %_ZL14OPENSSL_memchrPKvim.exit.thread.i, label %_ZL14OPENSSL_memchrPKvim.exit.i

_ZL14OPENSSL_memchrPKvim.exit.i:                  ; preds = %bb.ck
  %i.ka = load ptr, ptr %i.cl, align 8, !tbaa !343
  %i.kb = call noundef ptr @memchr(ptr noundef readonly %i.ka, i32 noundef 0, i64 noundef %i.jy) #15
  %i.kc = icmp eq ptr %i.kb, null
  br i1 %i.kc, label %_ZL14OPENSSL_memchrPKvim.exit.thread.i, label %bb.cl

bb.cl:                                            ; preds = %_ZL14OPENSSL_memchrPKvim.exit.i
  %i.kd = call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef nonnull %i.gs)
  %i.ke = icmp ugt i16 %i.kd, 771
  %i.kf = load i64, ptr %i.ck, align 8
  %i.kg = icmp ne i64 %i.kf, 1
  %or.cond.i = select i1 %i.ke, i1 %i.kg, i1 false
  br i1 %or.cond.i, label %_ZL14OPENSSL_memchrPKvim.exit.thread.i, label %bb.cm

_ZL14OPENSSL_memchrPKvim.exit.thread.i:           ; preds = %bb.cl, %_ZL14OPENSSL_memchrPKvim.exit.i, %bb.ck
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.22, i32 noundef 641)
  call void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef nonnull %i.gs, i32 noundef 2, i32 noundef 47)
  br label %bb.cp

bb.cm:                                            ; preds = %bb.cl
  %i.kh = call noundef zeroext i1 @_ZN4bssl28ssl_parse_clienthello_tlsextEPNS_13SSL_HANDSHAKEEPK22ssl_early_callback_ctx(ptr noundef nonnull %0, ptr noundef nonnull %68)
  br i1 %i.kh, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 190, ptr noundef nonnull @.str.22, i32 noundef 648)
  br label %bb.cp

bb.co:                                            ; preds = %bb.cm
  store i32 3, ptr %i.ac, align 4, !tbaa !144
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %_ZL14OPENSSL_memchrPKvim.exit.thread.i, %bb.cj, %bb.ch
  %.0.i38 = phi i32 [ 0, %bb.cj ], [ 0, %_ZL14OPENSSL_memchrPKvim.exit.thread.i ], [ 1, %bb.co ], [ 0, %bb.cn ], [ 0, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #13
  br label %_ZN4bsslL30do_read_client_hello_after_echEPNS_13SSL_HANDSHAKEE.exit

_ZN4bsslL30do_read_client_hello_after_echEPNS_13SSL_HANDSHAKEE.exit: ; preds = %bb.av, %bb.ax, %_ZNSt10unique_ptrI15ssl_ech_keys_stN4bssl8internal7DeleterEEaSEDn.exit.i, %bb.bb, %bb.bc, %bb.cp
  %.1.i36 = phi i32 [ %.0.i38, %bb.cp ], [ 5, %bb.ax ], [ 0, %bb.av ], [ 1, %_ZNSt10unique_ptrI15ssl_ech_keys_stN4bssl8internal7DeleterEEaSEDn.exit.i ], [ 0, %bb.bb ], [ 0, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #13
  br label %_ZN4bsslL16do_cert_callbackEPNS_13SSL_HANDSHAKEE.exit

bb.cq:                                            ; preds = %bb.b
  %i.ki = load ptr, ptr %0, align 8, !tbaa !145   ; 7 uses
  %i.kj = load ptr, ptr %i.af, align 8, !tbaa !174
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 32
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !344 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 64
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !350 ; 2 uses
  %.not.i39 = icmp eq ptr %i.kn, null
  br i1 %.not.i39, label %bb.ct, label %bb.cr

end_hunk_1
