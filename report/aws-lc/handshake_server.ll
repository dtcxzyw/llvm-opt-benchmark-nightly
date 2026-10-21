Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/handshake_server?download=true
inline.NumInlined: 635
inline.NumDeleted: 334
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon.132 = type { i16, i8 }
%struct.cbs_st = type { ptr, i64 }
%"class.std::unique_ptr.14" = type { %"struct.std::__uniq_ptr_data.15" }
%"struct.std::__uniq_ptr_data.15" = type { %"class.std::__uniq_ptr_impl.16" }
%"class.std::__uniq_ptr_impl.16" = type { %"class.std::tuple.17" }
%"class.std::tuple.17" = type { %"struct.std::_Tuple_impl.18" }
%"struct.std::_Tuple_impl.18" = type { %"struct.std::_Head_base.19" }
%"struct.std::_Head_base.19" = type { ptr }
%"class.bssl::internal::StackAllocated.148" = type { %struct.cbb_st }
%struct.cbb_st = type { ptr, i8, %union.anon.149 }
%union.anon.149 = type { %struct.cbb_buffer_st }
%struct.cbb_buffer_st = type { ptr, i64, i64, i8 }
%"struct.bssl::SSLMessage" = type { i8, i8, %struct.cbs_st, %struct.cbs_st }
%"class.bssl::Span" = type { ptr, i64 }
%"class.bssl::Array" = type { ptr, i64 }
%"class.std::unique_ptr.39" = type { %"struct.std::__uniq_ptr_data.40" }
%"struct.std::__uniq_ptr_data.40" = type { %"class.std::__uniq_ptr_impl.41" }
%"class.std::__uniq_ptr_impl.41" = type { %"class.std::tuple.42" }
%"class.std::tuple.42" = type { %"struct.std::_Tuple_impl.43" }
%"struct.std::_Tuple_impl.43" = type { %"struct.std::_Head_base.44" }
%"struct.std::_Head_base.44" = type { ptr }
%"struct.bssl::OPENSSL_timeval" = type { i64, i32 }
%struct.ssl_early_callback_ctx = type { ptr, ptr, i64, i16, ptr, i64, ptr, i64, ptr, i64, ptr, i64, ptr, i64 }

$sk_SSL_CIPHER_call_cmp_func = comdat any

$_ZN4bssl5ArrayIhE8CopyFromENS_4SpanIKhEE = comdat any

$_ZN4bssl5ArrayIhE4InitEm = comdat any

$_ZZN4bssl8internal11DeleterImplI22stack_st_CRYPTO_BUFFERvE4FreeEPS2_ENUlPFvPvES5_E_8__invokeES7_S5_ = comdat any

@.str = private unnamed_addr constant [54 x i8] c"/opt-bench/work/aws-lc/aws-lc/ssl/handshake_server.cc\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"TLS server start_accept\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"TLS server read_client_hello\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"TLS server read_client_hello_after_ech\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"TLS server select_certificate\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"TLS server select_parameters\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"TLS server send_server_hello\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"TLS server send_server_certificate\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"TLS server send_server_key_exchange\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"TLS server send_server_hello_done\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"TLS server read_client_certificate\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"TLS server verify_client_certificate\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"TLS server read_client_key_exchange\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"TLS server read_client_certificate_verify\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"TLS server read_change_cipher_spec\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"TLS server process_change_cipher_spec\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"TLS server read_next_proto\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"TLS server read_channel_id\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"TLS server read_client_finished\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"TLS server send_server_finished\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"TLS server finish_server_handshake\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"TLS server done\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"TLS server unknown\00", align 1
@_ZZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctxE15kJavaExtensions = internal unnamed_addr constant [16 x %struct.anon.132] [%struct.anon.132 zeroinitializer, %struct.anon.132 { i16 1, i8 0 }, %struct.anon.132 { i16 5, i8 0 }, %struct.anon.132 { i16 10, i8 1 }, %struct.anon.132 { i16 11, i8 0 }, %struct.anon.132 { i16 13, i8 1 }, %struct.anon.132 { i16 50, i8 1 }, %struct.anon.132 { i16 16, i8 0 }, %struct.anon.132 { i16 17, i8 0 }, %struct.anon.132 { i16 23, i8 0 }, %struct.anon.132 { i16 43, i8 1 }, %struct.anon.132 { i16 44, i8 0 }, %struct.anon.132 { i16 45, i8 1 }, %struct.anon.132 { i16 51, i8 1 }, %struct.anon.132 { i16 -255, i8 0 }, %struct.anon.132 { i16 41, i8 0 }], align 16
@_ZZN4bsslL17negotiate_versionEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctxE12kTLSVersions = internal constant [6 x i8] c"\03\03\03\02\03\01", align 1
@_ZZN4bsslL17negotiate_versionEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctxE13kDTLSVersions = internal constant [4 x i8] c"\FE\FD\FE\FF", align 1
@_ZN4bssl21kJDK11DowngradeRandomE = external local_unnamed_addr constant [8 x i8], align 1
@_ZN4bssl21kTLS13DowngradeRandomE = external local_unnamed_addr constant [8 x i8], align 1
@_ZN4bssl21kTLS12DowngradeRandomE = external local_unnamed_addr constant [8 x i8], align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.cbs_st, align 8             ; 5 uses
  %i.a = alloca i16, align 2                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16
  call void @CBS_init(ptr noundef nonnull %2, ptr noundef %i.c, i64 noundef %i.e) #7
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.f = call i64 @CBS_len(ptr noundef nonnull %2) #7
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.g = call i32 @CBS_get_u16(ptr noundef nonnull %2, ptr noundef nonnull %i.a) #7
  %.not5 = icmp ne i32 %i.g, 0                    ; 2 uses
  %i.h = load i16, ptr %i.a, align 2
  %3 = icmp ne i16 %i.h, %1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.i = select i1 %.not5, i1 %3, i1 false
  br i1 %i.i, label %bb.b, label %bb.d, !llvm.loop !0

bb.d:                                             ; preds = %bb.b, %bb.c
  %.2 = phi i1 [ %.not5, %bb.c ], [ false, %bb.b ]
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
  %53 = alloca %struct.cbs_st, align 8            ; 8 uses
  %54 = alloca %struct.cbs_st, align 8            ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN4bssl20ssl_server_handshakeEPNS_13SSL_HANDSHAKEE:bb.a
.thread.i.i:                                      ; preds = %bb.w, %.lr.ph.i.i
  call void @ERR_clear_error() #7
  br label %bb.aa

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #7
  %i.ej = load ptr, ptr %61, align 8, !tbaa !184
  %i.ek = load i64, ptr %i.cd, align 8, !tbaa !185
  store ptr %i.ej, ptr %62, align 8
  store i64 %i.ek, ptr %i.ce, align 8
  %i.el = call noundef zeroext i1 @_ZN4bssl24ssl_client_hello_decryptEPNS_13SSL_HANDSHAKEEPhPbPNS_5ArrayIhEEPK22ssl_early_callback_ctxNS_4SpanIKhEE(ptr noundef nonnull %0, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.z, ptr noundef nonnull %i.cc, ptr noundef nonnull %64, ptr noundef nonnull byval(%"class.bssl::Span") align 8 %62) #7
  br i1 %i.el, label %_ZN4bsslL11decrypt_echEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctx.exit.thread25.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.em = load i8, ptr %i.z, align 1, !tbaa !201, !range !202, !noundef !203
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.z, label %_ZN4bsslL11decrypt_echEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctx.exit.i

_ZN4bsslL11decrypt_echEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctx.exit.thread25.i: ; preds = %bb.x
  %i.eo = load i8, ptr %i.w, align 1, !tbaa !141
  store i8 %i.eo, ptr %i.cf, align 2, !tbaa !204
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dd, i64 56
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !142
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 296
  store i32 1, ptr %i.er, align 8, !tbaa !228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #7
  br label %_ZN4bsslL11decrypt_echEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctx.exit.thread.sink.split.sink.split.i

bb.z:                                             ; preds = %bb.y
  call void @ERR_clear_error() #7
  store i8 50, ptr %i.aa, align 1, !tbaa !141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #7
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.thread.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %.03158.i.i, i64 8 ; 2 uses
  %.not42.i.i = icmp eq ptr %i.es, %i.dz
  br i1 %.not42.i.i, label %_ZN4bsslL11decrypt_echEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctx.exit.thread21.i, label %.lr.ph.i.i

_ZN4bsslL11decrypt_echEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctx.exit.thread21.i: ; preds = %bb.aa, %bb.v, %_ZNSt10unique_ptrI15ssl_ech_keys_stN4bssl8internal7DeleterEED2Ev.exit.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.dd, i64 56
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !142
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 296
  store i32 2, ptr %i.ev, align 8, !tbaa !228
  br label %_ZN4bsslL11decrypt_echEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctx.exit.thread.sink.split.sink.split.i

_ZN4bsslL11decrypt_echEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctx.exit.i: ; preds = %bb.y
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 138, ptr noundef nonnull @.str, i32 noundef 459) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %62)
  %.pre.i = load i8, ptr %i.aa, align 1, !tbaa !141
  %i.ew = zext i8 %.pre.i to i32
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN4bsslL11decrypt_echEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctx.exit.i, %_ZN4bsslL11decrypt_echEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctx.exit.thread23.i, %_ZN4bsslL11decrypt_echEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctx.exit.thread19.i
  %i.ex = phi i32 [ %i.ew, %_ZN4bsslL11decrypt_echEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctx.exit.i ], [ 50, %_ZN4bsslL11decrypt_echEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctx.exit.thread23.i ], [ 50, %_ZN4bsslL11decrypt_echEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctx.exit.thread19.i ]
  call void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef nonnull %i.cm, i32 noundef 2, i32 noundef %i.ex) #7
  br label %bb.ag

_ZN4bsslL11decrypt_echEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctx.exit.thread.sink.split.sink.split.i: ; preds = %_ZN4bsslL11decrypt_echEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctx.exit.thread21.i, %_ZN4bsslL11decrypt_echEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctx.exit.thread25.i
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #7
  br label %_ZN4bsslL11decrypt_echEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctx.exit.thread.sink.split.i

_ZN4bsslL11decrypt_echEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctx.exit.thread.sink.split.i: ; preds = %_ZN4bsslL11decrypt_echEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctx.exit.thread.sink.split.sink.split.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #7
  br label %_ZN4bsslL11decrypt_echEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctx.exit.thread.i

_ZN4bsslL11decrypt_echEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctx.exit.thread.i: ; preds = %_ZN4bsslL11decrypt_echEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctx.exit.thread.sink.split.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %62)
  %i.ey = call noundef zeroext i1 @_ZN4bssl13SSL_HANDSHAKE14GetClientHelloEPNS_10SSLMessageEP22ssl_early_callback_ctx(ptr noundef nonnull align 8 dereferenceable(1643) %0, ptr noundef nonnull %63, ptr noundef nonnull %64) #7
  br i1 %i.ey, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZN4bsslL11decrypt_echEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctx.exit.thread.i
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str, i32 noundef 562) #7
  br label %bb.ag

bb.ad:                                            ; preds = %_ZN4bsslL11decrypt_echEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctx.exit.thread.i
  %i.ez = call fastcc noundef zeroext i1 @_ZN4bsslL11extract_sniEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctx(ptr noundef nonnull %0, ptr noundef %i.aa, ptr noundef %64)
  br i1 %i.ez, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fa = load i8, ptr %i.aa, align 1, !tbaa !141
  %i.fb = zext i8 %i.fa to i32
  call void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef nonnull %i.cm, i32 noundef 2, i32 noundef %i.fb) #7
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  store i32 2, ptr %i.ab, align 4, !tbaa !139
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ac, %bb.ab
  %.0.i = phi i32 [ 1, %bb.af ], [ 0, %bb.ae ], [ 0, %bb.ac ], [ 0, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #7
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.j, %bb.i, %bb.g
  %.1.i = phi i32 [ 0, %bb.g ], [ 0, %bb.i ], [ %.0.i, %bb.ag ], [ 6, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #7
  br label %_ZN4bsslL20do_read_client_helloEPNS_13SSL_HANDSHAKEE.exit

_ZN4bsslL20do_read_client_helloEPNS_13SSL_HANDSHAKEE.exit: ; preds = %bb.d, %bb.e, %bb.ah
  %.2.i = phi i32 [ %.1.i, %bb.ah ], [ 3, %bb.d ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #7
  br label %_ZN4bsslL21do_select_certificateEPNS_13SSL_HANDSHAKEE.exit

bb.ai:                                            ; preds = %bb.b
  %i.fc = load ptr, ptr %0, align 8, !tbaa !140   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #7
  %i.fd = call noundef zeroext i1 @_ZN4bssl13SSL_HANDSHAKE14GetClientHelloEPNS_10SSLMessageEP22ssl_early_callback_ctx(ptr noundef nonnull align 8 dereferenceable(1643) %0, ptr noundef nonnull %57, ptr noundef nonnull %58) #7
  br i1 %i.fd, label %bb.aj, label %_ZN4bsslL30do_read_client_hello_after_echEPNS_13SSL_HANDSHAKEE.exit

bb.aj:                                            ; preds = %bb.ai
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 152 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !179, !nonnull !203, !noundef !203 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 440
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !272 ; 2 uses
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
  %65 = icmp ne i16 %i.fz, 4867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #7
  %i.ga = select i1 %.not5.i.i.i, i1 %65, i1 false
  br i1 %i.ga, label %bb.au, label %_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.i.i, !llvm.loop !0

_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.i.i: ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #7
  br i1 %.not5.i.i.i, label %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread.i, label %bb.aw

bb.aw:                                            ; preds = %_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.i.i, %_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #7
  %i.gb = load ptr, ptr %i.bp, align 8, !tbaa !276
  %i.gc = load i64, ptr %i.bq, align 8, !tbaa !277
  call void @CBS_init(ptr noundef nonnull %53, ptr noundef %i.gb, i64 noundef %i.gc) #7
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
  %i.gd = call i32 @CBS_get_u16(ptr noundef nonnull %55, ptr noundef nonnull %i.r) #7
  %.not44.i.i = icmp eq i32 %i.gd, 0
  br i1 %.not44.i.i, label %bb.bh, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ge = load i16, ptr %i.r, align 2, !tbaa !70
  %i.gf = load i16, ptr %.039.ptr110.i.i, align 4, !tbaa !281
  %i.gg = icmp eq i16 %i.ge, %i.gf
  br i1 %i.gg, label %bb.az, label %bb.bh

bb.az:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %53, ptr noundef nonnull align 8 dereferenceable(16) %55, i64 16, i1 false), !tbaa.struct !279
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #7
  %i.gh = call i32 @CBS_get_u16_length_prefixed(ptr noundef nonnull %53, ptr noundef nonnull %56) #7
  %.not45.not.i.i = icmp eq i32 %i.gh, 0
  br i1 %.not45.not.i.i, label %bb.bg, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gi = load i16, ptr %i.r, align 2, !tbaa !70
  switch i16 %i.gi, label %.thread.i.i42 [
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
  %i.gj = load ptr, ptr %56, align 8, !tbaa !184
  %i.gk = load i64, ptr %i.br, align 8, !tbaa !185
  br label %.thread.i.i42

bb.be:                                            ; preds = %bb.ba
  %i.gl = load ptr, ptr %56, align 8, !tbaa !184
  %i.gm = load i64, ptr %i.br, align 8, !tbaa !185
  br label %.thread.i.i42

bb.bf:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %54, ptr noundef nonnull align 8 dereferenceable(16) %56, i64 16, i1 false), !tbaa.struct !279
  br label %.thread.i.i42

.thread.i.i42:                                    ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba
  %.sroa.053.1.ph.i.i = phi ptr [ %.sroa.053.0103.i.i, %bb.bf ], [ %.sroa.053.0103.i.i, %bb.be ], [ %i.gj, %bb.bd ], [ %.sroa.053.0103.i.i, %bb.bc ], [ %.sroa.053.0103.i.i, %bb.bb ], [ %.sroa.053.0103.i.i, %bb.ba ]
  %.sroa.554.1.ph.i.i = phi i64 [ %.sroa.554.0104.i.i, %bb.bf ], [ %.sroa.554.0104.i.i, %bb.be ], [ %i.gk, %bb.bd ], [ %.sroa.554.0104.i.i, %bb.bc ], [ %.sroa.554.0104.i.i, %bb.bb ], [ %.sroa.554.0104.i.i, %bb.ba ]
  %.sroa.0.1.ph.i.i = phi ptr [ %.sroa.0.0105.i.i, %bb.bf ], [ %i.gl, %bb.be ], [ %.sroa.0.0105.i.i, %bb.bd ], [ %.sroa.0.0105.i.i, %bb.bc ], [ %.sroa.0.0105.i.i, %bb.bb ], [ %.sroa.0.0105.i.i, %bb.ba ]
  %.sroa.5.1.ph.i.i = phi i64 [ %.sroa.5.0106.i.i, %bb.bf ], [ %i.gm, %bb.be ], [ %.sroa.5.0106.i.i, %bb.bd ], [ %.sroa.5.0106.i.i, %bb.bc ], [ %.sroa.5.0106.i.i, %bb.bb ], [ %.sroa.5.0106.i.i, %bb.ba ]
  %.235.ph.i.i = phi i8 [ %.033108.i.i, %bb.bf ], [ %.033108.i.i, %bb.be ], [ %.033108.i.i, %bb.bd ], [ 1, %bb.bc ], [ %.033108.i.i, %bb.bb ], [ %.033108.i.i, %bb.ba ]
  %.229.ph.i.i = phi i8 [ %.027109.i.i, %bb.bf ], [ %.027109.i.i, %bb.be ], [ %.027109.i.i, %bb.bd ], [ %.027109.i.i, %bb.bc ], [ 1, %bb.bb ], [ %.027109.i.i, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #7
  br label %bb.bi

bb.bg:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #7
  br label %.loopexit.i.i

bb.bh:                                            ; preds = %bb.ay, %bb.ax
  %i.gn = getelementptr inbounds nuw i8, ptr %.039.ptr110.i.i, i64 2
  %i.go = load i8, ptr %i.gn, align 2, !tbaa !282, !range !202, !noundef !203
  %i.gp = trunc nuw i8 %i.go to i1
  br i1 %i.gp, label %.loopexit.i.i, label %bb.bi

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
  %i.gq = call i64 @CBS_len(ptr noundef nonnull %53) #7
  %.not46.i.i = icmp eq i64 %i.gq, 0
  br i1 %.not46.i.i, label %.preheader.i.i, label %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread47.i

.preheader.i.i:                                   ; preds = %bb.bj, %bb.bk
  %i.gr = call i64 @CBS_len(ptr noundef nonnull %54) #7
  %.not47.i.i = icmp eq i64 %i.gr, 0
  br i1 %.not47.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.preheader.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #7
  %i.gs = call i32 @CBS_get_u16(ptr noundef nonnull %54, ptr noundef nonnull %i.s) #7
  %i.gt = icmp ne i32 %i.gs, 0
  %i.gu = load i16, ptr %i.s, align 2
  %i.gv = icmp ne i16 %i.gu, 29
  %or.cond.not.i.i = select i1 %i.gt, i1 %i.gv, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #7
  br i1 %or.cond.not.i.i, label %.preheader.i.i, label %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread47.i, !llvm.loop !153

bb.bl:                                            ; preds = %.preheader.i.i
  %.not.i.i.i.i41 = icmp eq i64 %.sroa.554.3.ph.i.i, %.sroa.5.3.ph.i.i
  br i1 %.not.i.i.i.i41, label %.preheader.i.i.i.i, label %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread47.i

.preheader.i.i.i.i:                               ; preds = %bb.bl
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.053.3.ph.i.i, i64 %.sroa.554.3.ph.i.i
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0.3.ph.i.i, i64 %.sroa.554.3.ph.i.i
  %.not1019.i.i.i.i = icmp samesign eq i64 %.sroa.554.3.ph.i.i, 0
  br i1 %.not1019.i.i.i.i, label %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.bm
  %.0723.i.i.i.i = phi ptr [ %i.hb, %bb.bm ], [ %.sroa.0.3.ph.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %.0822.i.i.i.i = phi ptr [ %i.ha, %bb.bm ], [ %.sroa.053.3.ph.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %i.gy = load i8, ptr %.0822.i.i.i.i, align 1, !tbaa !141
  %i.gz = load i8, ptr %.0723.i.i.i.i, align 1, !tbaa !141
  %.not12.i.not.i.i.i = icmp eq i8 %i.gy, %i.gz
  br i1 %.not12.i.not.i.i.i, label %bb.bm, label %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread47.i

bb.bm:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ha = getelementptr inbounds nuw i8, ptr %.0822.i.i.i.i, i64 1 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.0723.i.i.i.i, i64 1 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ha, %i.gw
  %.not11.i.i.i.i = icmp eq ptr %i.hb, %i.gx
  %or.cond.i.i.i.i = select i1 %.not10.i.i.i.i, i1 true, i1 %.not11.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !154

_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread47.i: ; preds = %bb.bk, %.lr.ph.i.i.i.i, %bb.bl, %bb.bj, %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #7
  br label %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread.i

_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.i: ; preds = %bb.bm, %.preheader.i.i.i.i
  %.not48.i.i = icmp eq i8 %.431.ph.i.i, %.437.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #7
  br i1 %.not48.i.i, label %bb.bn, label %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread.i

bb.bn:                                            ; preds = %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.i
  %i.hc = load i32, ptr %i.ac, align 8
  %i.hd = or i32 %i.hc, 4194304
  store i32 %i.hd, ptr %i.ac, align 8
  br label %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread.i

_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread.i: ; preds = %bb.bn, %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.i, %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread47.i, %_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.i.i, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #7
  store i8 50, ptr %i.u, align 1, !tbaa !141
  %i.he = load ptr, ptr %0, align 8, !tbaa !140   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #7
  %i.hf = call noundef zeroext i1 @_ZN4bssl30ssl_client_hello_get_extensionEPK22ssl_early_callback_ctxP6cbs_stt(ptr noundef nonnull %58, ptr noundef nonnull %50, i16 noundef zeroext 43) #7
  br i1 %i.hf, label %bb.bo, label %bb.bs

bb.bo:                                            ; preds = %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread.i
  %i.hg = call i32 @CBS_get_u8_length_prefixed(ptr noundef nonnull %50, ptr noundef nonnull %51) #7
  %.not26.i.i = icmp eq i32 %i.hg, 0
  br i1 %.not26.i.i, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hh = call i64 @CBS_len(ptr noundef nonnull %50) #7
  %.not27.i.i = icmp eq i64 %i.hh, 0
  br i1 %.not27.i.i, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.hi = call i64 @CBS_len(ptr noundef nonnull %51) #7
  %i.hj = icmp eq i64 %i.hi, 0
  br i1 %i.hj, label %bb.br, label %bb.bx

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 137, ptr noundef nonnull @.str, i32 noundef 72) #7
  store i8 50, ptr %i.u, align 1, !tbaa !141
  br label %bb.cd

bb.bs:                                            ; preds = %_ZN4bsslL28is_probably_jdk11_with_tls13EPK22ssl_early_callback_ctx.exit.thread.i
  %i.hk = call i32 @SSL_is_dtls(ptr noundef %i.he) #7
  %.not.i36.i = icmp eq i32 %i.hk, 0
  %i.hl = load i16, ptr %i.bs, align 8, !tbaa !283 ; 5 uses
  br i1 %.not.i36.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hm = icmp ult i16 %i.hl, -258
  %i.hn = icmp ult i16 %i.hl, -256
  %spec.select.i.i = select i1 %i.hn, i64 2, i64 0
  %.0.i.i = select i1 %i.hm, i64 4, i64 %spec.select.i.i
  br label %.sink.split.i.i

bb.bu:                                            ; preds = %bb.bs
  %i.ho = icmp ugt i16 %i.hl, 770
  br i1 %i.ho, label %.sink.split.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hp = icmp eq i16 %i.hl, 770
  br i1 %i.hp, label %.sink.split.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hq = icmp samesign ugt i16 %i.hl, 768
  %spec.select28.i.i = select i1 %i.hq, i64 2, i64 0
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.bw, %bb.bv, %bb.bu, %bb.bt
  %.0.sink33.i.i = phi i64 [ %.0.i.i, %bb.bt ], [ %spec.select28.i.i, %bb.bw ], [ 6, %bb.bu ], [ 4, %bb.bv ] ; 2 uses
  %.sink31.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZN4bsslL17negotiate_versionEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctxE13kDTLSVersions, i64 4), %bb.bt ], [ getelementptr inbounds nuw (i8, ptr @_ZZN4bsslL17negotiate_versionEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctxE12kTLSVersions, i64 6), %bb.bw ], [ getelementptr inbounds nuw (i8, ptr @_ZZN4bsslL17negotiate_versionEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctxE12kTLSVersions, i64 6), %bb.bu ], [ getelementptr inbounds nuw (i8, ptr @_ZZN4bsslL17negotiate_versionEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctxE12kTLSVersions, i64 6), %bb.bv ]
  %i.hr = sub nsw i64 0, %.0.sink33.i.i
  %i.hs = getelementptr inbounds i8, ptr %.sink31.i.i, i64 %i.hr
  call void @CBS_init(ptr noundef nonnull %51, ptr noundef nonnull %i.hs, i64 noundef %.0.sink33.i.i) #7
  br label %bb.bx

bb.bx:                                            ; preds = %.sink.split.i.i, %bb.bq
  %i.ht = getelementptr inbounds nuw i8, ptr %i.he, i64 16 ; 2 uses
  %i.hu = call noundef zeroext i1 @_ZN4bssl21ssl_negotiate_versionEPNS_13SSL_HANDSHAKEEPhPtPK6cbs_st(ptr noundef nonnull %0, ptr noundef nonnull %i.u, ptr noundef nonnull %i.ht, ptr noundef nonnull %51) #7
  br i1 %i.hu, label %bb.by, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.bx
  %.pre53.i = load i8, ptr %i.u, align 1, !tbaa !141
  %i.hv = zext i8 %.pre53.i to i32
  br label %bb.cd

bb.by:                                            ; preds = %bb.bx
  %i.hw = getelementptr inbounds nuw i8, ptr %i.he, i64 56 ; 2 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !142
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 300 ; 2 uses
  %i.hz = load i16, ptr %i.hy, align 4
  %i.ia = or i16 %i.hz, 2
  store i16 %i.ia, ptr %i.hy, align 4
  %i.ib = load ptr, ptr %i.hw, align 8, !tbaa !142
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 352
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !284
  %i.ie = load i16, ptr %i.ht, align 8, !tbaa !285
  call void @_ZN4bssl14SSLAEADContext22SetVersionIfNullCipherEt(ptr noundef nonnull align 8 dereferenceable(610) %i.id, i16 noundef zeroext %i.ie) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #7
  %i.if = load ptr, ptr %i.bn, align 8, !tbaa !15
  %i.ig = load i64, ptr %i.bo, align 8, !tbaa !16
  call void @CBS_init(ptr noundef nonnull %49, ptr noundef %i.if, i64 noundef %i.ig) #7
  br label %bb.bz

bb.bz:                                            ; preds = %bb.ca, %bb.by
  %i.ih = call i64 @CBS_len(ptr noundef nonnull %49) #7
  %.not.i.i38.i = icmp eq i64 %i.ih, 0
  br i1 %.not.i.i38.i, label %_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.thread.i44.i, label %bb.ca

_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.thread.i44.i: ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #7
  br label %bb.ce

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #7
  %i.ii = call i32 @CBS_get_u16(ptr noundef nonnull %49, ptr noundef nonnull %i.p) #7
  %.not5.i.i39.i = icmp ne i32 %i.ii, 0           ; 2 uses
  %i.ij = load i16, ptr %i.p, align 2
  %66 = icmp ne i16 %i.ij, 22016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #7
  %i.ik = select i1 %.not5.i.i39.i, i1 %66, i1 false
  br i1 %i.ik, label %bb.bz, label %_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.i43.i, !llvm.loop !0

_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.i43.i: ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #7
  br i1 %.not5.i.i39.i, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.i43.i
  %i.il = call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef %i.he) #7
  %i.im = load i16, ptr %i.bm, align 8, !tbaa !286
  %i.in = icmp ult i16 %i.il, %i.im
  br i1 %i.in, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 157, ptr noundef nonnull @.str, i32 noundef 125) #7
  store i8 86, ptr %i.u, align 1, !tbaa !141
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %._crit_edge.i, %bb.br
  %i.io = phi i32 [ %i.hv, %._crit_edge.i ], [ 86, %bb.cc ], [ 50, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #7
  call void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef %i.fc, i32 noundef 2, i32 noundef %i.io) #7
  br label %bb.cl

bb.ce:                                            ; preds = %bb.cb, %_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.i43.i, %_ZN4bssl38ssl_client_cipher_list_contains_cipherEPK22ssl_early_callback_ctxt.exit.thread.i44.i
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #7
  %i.ip = load i16, ptr %i.bs, align 8, !tbaa !283
  store i16 %i.ip, ptr %i.ar, align 4, !tbaa !287
  %i.iq = load i64, ptr %i.bt, align 8, !tbaa !288
  %.not35.i = icmp eq i64 %i.iq, 32
  br i1 %.not35.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str, i32 noundef 644) #7
  br label %bb.cl

bb.cg:                                            ; preds = %bb.ce
  %i.ir = getelementptr inbounds nuw i8, ptr %i.fc, i64 56
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !142
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 48
  %i.iu = load ptr, ptr %i.bu, align 8, !tbaa !289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.it, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.iu, i64 32, i1 false)
  %i.iv = load i64, ptr %i.bv, align 8, !tbaa !290 ; 2 uses
  %i.iw = icmp eq i64 %i.iv, 0
  br i1 %i.iw, label %_ZL14OPENSSL_memchrPKvim.exit.thread.i, label %_ZL14OPENSSL_memchrPKvim.exit.i

_ZL14OPENSSL_memchrPKvim.exit.i:                  ; preds = %bb.cg
  %i.ix = load ptr, ptr %i.bw, align 8, !tbaa !291
  %i.iy = call noundef ptr @memchr(ptr noundef readonly %i.ix, i32 noundef 0, i64 noundef %i.iv) #8
  %i.iz = icmp eq ptr %i.iy, null
  br i1 %i.iz, label %_ZL14OPENSSL_memchrPKvim.exit.thread.i, label %bb.ch

bb.ch:                                            ; preds = %_ZL14OPENSSL_memchrPKvim.exit.i
  %i.ja = call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef nonnull %i.fc) #7
  %i.jb = icmp ugt i16 %i.ja, 771
  %i.jc = load i64, ptr %i.bv, align 8
  %i.jd = icmp ne i64 %i.jc, 1
  %or.cond.i = select i1 %i.jb, i1 %i.jd, i1 false
  br i1 %or.cond.i, label %_ZL14OPENSSL_memchrPKvim.exit.thread.i, label %bb.ci

_ZL14OPENSSL_memchrPKvim.exit.thread.i:           ; preds = %bb.ch, %_ZL14OPENSSL_memchrPKvim.exit.i, %bb.cg
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str, i32 noundef 656) #7
  call void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef nonnull %i.fc, i32 noundef 2, i32 noundef 47) #7
  br label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  %i.je = call noundef zeroext i1 @_ZN4bssl28ssl_parse_clienthello_tlsextEPNS_13SSL_HANDSHAKEEPK22ssl_early_callback_ctx(ptr noundef nonnull %0, ptr noundef nonnull %58) #7
  br i1 %i.je, label %bb.ck, label %bb.cj

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

bb.cm:                                            ; preds = %bb.b
  %i.jf = load ptr, ptr %0, align 8, !tbaa !140   ; 11 uses
  %i.jg = load ptr, ptr %i.ae, align 8, !tbaa !187
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 40
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !292 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 64
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !312 ; 2 uses
  %.not.i43 = icmp eq ptr %i.jk, null
  br i1 %.not.i43, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 72
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !313
  %i.jn = call noundef i32 %i.jk(ptr noundef %i.jf, ptr noundef %i.jm) #7, !inline_history !155 ; 2 uses
  %i.jo = icmp eq i32 %i.jn, 0
  br i1 %i.jo, label %.thread.i, label %bb.co

.thread.i:                                        ; preds = %bb.cn
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 126, ptr noundef nonnull @.str, i32 noundef 678) #7
  call void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef %i.jf, i32 noundef 2, i32 noundef 80) #7
  br label %_ZN4bsslL21do_select_certificateEPNS_13SSL_HANDSHAKEE.exit

bb.co:                                            ; preds = %bb.cn
  %i.jp = icmp sgt i32 %i.jn, -1
  br i1 %i.jp, label %bb.cp, label %_ZN4bsslL21do_select_certificateEPNS_13SSL_HANDSHAKEE.exit

bb.cp:                                            ; preds = %bb.co, %bb.cm
  %i.jq = call noundef zeroext i1 @_ZN4bssl31ssl_handshake_load_local_pubkeyEPNS_13SSL_HANDSHAKEE(ptr noundef nonnull %0) #7
  br i1 %i.jq, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.jr = load ptr, ptr %i.ao, align 8, !tbaa !314
  %.not.i.i45 = icmp eq ptr %i.jr, null
  br i1 %.not.i.i45, label %bb.cr, label %_ZN4bsslL21do_select_certificateEPNS_13SSL_HANDSHAKEE.exit

bb.cr:                                            ; preds = %bb.cq
  %i.js = load ptr, ptr %i.ae, align 8, !tbaa !187
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 80
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !319
  %.not39.i = icmp eq ptr %i.ju, null
  br i1 %.not39.i, label %_ZN4bsslL21do_select_certificateEPNS_13SSL_HANDSHAKEE.exit, label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cp
  %i.jv = call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef %i.jf) #7
  %i.jw = icmp ugt i16 %i.jv, 771
  br i1 %i.jw, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  store i32 4, ptr %i.ab, align 4, !tbaa !139
  br label %_ZN4bsslL21do_select_certificateEPNS_13SSL_HANDSHAKEE.exit

bb.cu:                                            ; preds = %bb.cs
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jf, i64 56
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !142
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 336
  store i32 3, ptr %i.jz, align 8, !tbaa !320
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #7
  %i.ka = call noundef zeroext i1 @_ZN4bssl13SSL_HANDSHAKE14GetClientHelloEPNS_10SSLMessageEP22ssl_early_callback_ctx(ptr noundef nonnull align 8 dereferenceable(1643) %0, ptr noundef nonnull %47, ptr noundef nonnull %48) #7
  br i1 %i.ka, label %bb.cv, label %bb.ec

bb.cv:                                            ; preds = %bb.cu
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jf, i64 120
  %i.kc = call noundef zeroext i1 @_ZN4bssl28ssl_parse_client_cipher_listEP6ssl_stPK22ssl_early_callback_ctxPSt10unique_ptrI19stack_st_SSL_CIPHERNS_8internal7DeleterEE(ptr noundef nonnull %i.jf, ptr noundef nonnull %48, ptr noundef nonnull %i.kb)
  br i1 %i.kc, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 184, ptr noundef nonnull @.str, i32 noundef 717) #7
  call void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef nonnull %i.jf, i32 noundef 2, i32 noundef 40) #7
  br label %bb.ec

bb.cx:                                            ; preds = %bb.cv
  %i.kd = load ptr, ptr %i.ae, align 8, !tbaa !187
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !321 ; 2 uses
  %.not45.i = icmp eq ptr %i.kf, null
  br i1 %.not45.i, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jf, i64 152
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !179
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 104
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !321
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.kk = phi ptr [ %i.kj, %bb.cy ], [ %i.kf, %bb.cx ] ; 3 uses
  %i.kl = load ptr, ptr %0, align 8, !tbaa !140   ; 7 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 184
  %i.kn = load i32, ptr %i.km, align 8, !tbaa !322
  %i.ko = and i32 %i.kn, 4194304
  %.not50.i.i = icmp eq i32 %i.ko, 0
  br i1 %.not50.i.i, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !325
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kl, i64 120
  %i.ks = freeze ptr %i.kq
  br label %bb.dc

bb.db:                                            ; preds = %bb.cz
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kl, i64 120
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.045.in.i.i = phi ptr [ %i.kk, %bb.da ], [ %i.kt, %bb.db ]
  %.044.in.i.i = phi ptr [ %i.kr, %bb.da ], [ %i.kk, %bb.db ]
  %.043.i.i = phi ptr [ %i.ks, %bb.da ], [ null, %bb.db ] ; 3 uses
  %.044.i.i = load ptr, ptr %.044.in.i.i, align 8, !tbaa !19 ; 3 uses
  %.045.i.i = load ptr, ptr %.045.in.i.i, align 8, !tbaa !19 ; 5 uses
  %i.ku = call noundef zeroext i1 @_ZN4bssl19ssl_has_certificateEPKNS_13SSL_HANDSHAKEE(ptr noundef nonnull %0) #7
  br i1 %i.ku, label %bb.dd, label %_ZN4bsslL33ssl_get_compatible_server_ciphersEPNS_13SSL_HANDSHAKEEPjS2_.exit.i.i

bb.dd:                                            ; preds = %bb.dc
  %i.kv = load ptr, ptr %i.ae, align 8, !tbaa !187
end_hunk_1
