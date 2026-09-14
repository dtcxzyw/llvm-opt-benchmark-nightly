Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/handshake_client?download=true
inline.NumInlined: 544
inline.NumDeleted: 287
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cbb_st = type { ptr, i8, %union.anon.58 }
%union.anon.58 = type { %struct.cbb_buffer_st }
%struct.cbb_buffer_st = type { ptr, i64, i64, i8 }
%"class.bssl::internal::StackAllocated.96" = type { %struct.cbb_st }
%"class.bssl::Array" = type { ptr, i64 }
%struct.cbs_st = type { ptr, i64 }
%"class.std::unique_ptr.34" = type { %"struct.std::__uniq_ptr_data.35" }
%"struct.std::__uniq_ptr_data.35" = type { %"class.std::__uniq_ptr_impl.36" }
%"class.std::__uniq_ptr_impl.36" = type { %"class.std::tuple.37" }
%"class.std::tuple.37" = type { %"struct.std::_Tuple_impl.38" }
%"struct.std::_Tuple_impl.38" = type { %"struct.std::_Head_base.39" }
%"struct.std::_Head_base.39" = type { ptr }
%"struct.bssl::SSLMessage" = type { i8, i8, %struct.cbs_st, %struct.cbs_st }
%"class.bssl::Span.83" = type { ptr, i64 }
%"class.std::unique_ptr.3" = type { %"struct.std::__uniq_ptr_data.4" }
%"struct.std::__uniq_ptr_data.4" = type { %"class.std::__uniq_ptr_impl.5" }
%"class.std::__uniq_ptr_impl.5" = type { %"class.std::tuple.6" }
%"class.std::tuple.6" = type { %"struct.std::_Tuple_impl.7" }
%"struct.std::_Tuple_impl.7" = type { %"struct.std::_Head_base.8" }
%"struct.std::_Head_base.8" = type { ptr }
%"class.std::unique_ptr.22" = type { %"struct.std::__uniq_ptr_data.23" }
%"struct.std::__uniq_ptr_data.23" = type { %"class.std::__uniq_ptr_impl.24" }
%"class.std::__uniq_ptr_impl.24" = type { %"class.std::tuple.25" }
%"class.std::tuple.25" = type { %"struct.std::_Tuple_impl.26" }
%"struct.std::_Tuple_impl.26" = type { %"struct.std::_Head_base.27" }
%"struct.std::_Head_base.27" = type { ptr }
%"struct.bssl::SSLExtension" = type { i16, i8, i8, %struct.cbs_st }
%"struct.bssl::ParsedServerHello" = type { %struct.cbs_st, i16, %struct.cbs_st, %struct.cbs_st, i16, i8, %struct.cbs_st }

$_ZN4bssl5ArrayIhE8CopyFromENS_4SpanIKhEE = comdat any

$sk_SSL_CIPHER_call_cmp_func = comdat any

$_ZZN4bssl8internal11DeleterImplI22stack_st_CRYPTO_BUFFERvE4FreeEPS2_ENUlPFvPvES5_E_8__invokeES7_S5_ = comdat any

@.str = private unnamed_addr constant [54 x i8] c"/opt-bench/work/aws-lc/aws-lc/ssl/handshake_client.cc\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"TLS client start_connect\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"TLS client enter_early_data\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"TLS client early_reverify_server_certificate\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"TLS client read_hello_verify_request\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"TLS client read_server_hello\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"TLS client read_server_certificate\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"TLS client read_certificate_status\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"TLS client verify_server_certificate\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"TLS client reverify_server_certificate\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"TLS client read_server_key_exchange\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"TLS client read_certificate_request\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"TLS client read_server_hello_done\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"TLS client send_client_certificate\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"TLS client send_client_key_exchange\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"TLS client send_client_certificate_verify\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"TLS client send_client_finished\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"TLS client finish_flight\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"TLS client read_session_ticket\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"TLS client process_change_cipher_spec\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"TLS client read_server_finished\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"TLS client finish_client_handshake\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"TLS client done\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"TLS client unknown\00", align 1
@_ZN4bssl21kTLS12DowngradeRandomE = external local_unnamed_addr constant [8 x i8], align 1
@_ZN4bssl21kTLS13DowngradeRandomE = external local_unnamed_addr constant [8 x i8], align 1
@_ZN4bssl21kJDK11DowngradeRandomE = external local_unnamed_addr constant [8 x i8], align 1
@_ZZN4bsslL23do_send_client_finishedEPNS_13SSL_HANDSHAKEEE5kZero = internal constant [32 x i8] zeroinitializer, align 16

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4bssl41ssl_write_client_hello_without_extensionsEPKNS_13SSL_HANDSHAKEEP6cbb_stNS_23ssl_client_hello_type_tEb(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.cbb_st, align 8             ; 8 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %5 = alloca %struct.cbb_st, align 8             ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !96     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1596
  %i.e = load i16, ptr %i.d, align 4, !tbaa !97
  %i.f = tail call i32 @CBB_add_u16(ptr noundef %1, i16 noundef zeroext %i.e) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %6 = icmp eq i32 %2, 1
  br i1 %6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !133
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = phi ptr [ %i.g, %bb.c ], [ %i.j, %bb.d ]
  %i.l = tail call i32 @CBB_add_bytes(ptr noundef %1, ptr noundef nonnull %i.k, i64 noundef 32) #6
  %.not22 = icmp eq i32 %i.l, 0
  br i1 %.not22, label %bb.af, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = call i32 @CBB_add_u8_length_prefixed(ptr noundef %1, ptr noundef nonnull %5) #6
  %.not23 = icmp eq i32 %i.m, 0
  br i1 %.not23, label %bb.af, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !133
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 300
  %i.q = load i16, ptr %i.p, align 4
  %i.r = and i16 %i.q, 32
  %i.s = icmp ne i16 %i.r, 0
  %or.cond = or i1 %3, %i.s
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1603
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1635
  %i.v = load i8, ptr %i.u, align 1, !tbaa !134
  %i.w = zext i8 %i.v to i64
  %i.x = call i32 @CBB_add_bytes(ptr noundef nonnull %5, ptr noundef nonnull %i.t, i64 noundef %i.w) #6
  %.not24 = icmp eq i32 %i.x, 0
  br i1 %.not24, label %bb.af, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = call i32 @SSL_is_dtls(ptr noundef nonnull %i.c) #6
  %.not25 = icmp eq i32 %i.y, 0
  br i1 %.not25, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = call i32 @CBB_add_u8_length_prefixed(ptr noundef %1, ptr noundef nonnull %5) #6
  %.not26 = icmp eq i32 %i.z, 0
  br i1 %.not26, label %bb.af, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !135
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !136
  %i.ae = call i32 @CBB_add_bytes(ptr noundef nonnull %5, ptr noundef %i.ab, i64 noundef %i.ad) #6
  %.not27 = icmp eq i32 %i.ae, 0
  br i1 %.not27, label %bb.af, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.af = load ptr, ptr %0, align 8, !tbaa !96    ; 4 uses
  %i.ag = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.ag, align 8, !tbaa !137
  %i.ah = getelementptr i8, ptr %.val.i, i64 72
  %.val.val.i = load ptr, ptr %i.ah, align 8, !tbaa !165
  %i.ai = icmp eq ptr %.val.val.i, null
  %spec.select.i = select i1 %i.ai, i32 4, i32 0  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.aj = call i32 @CBB_add_u16_length_prefixed(ptr noundef %1, ptr noundef nonnull %4) #6
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %_ZN4bsslL28ssl_write_client_cipher_listEPKNS_13SSL_HANDSHAKEEP6cbb_stNS_23ssl_client_hello_type_tE.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 152 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !166
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 712
  %i.an = load i16, ptr %i.am, align 8
  %i.ao = and i16 %i.an, 32
  %.not26.i = icmp eq i16 %i.ao, 0
  br i1 %.not26.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = call noundef zeroext i16 @_ZN4bssl20ssl_get_grease_valueEPKNS_13SSL_HANDSHAKEENS_18ssl_grease_index_tE(ptr noundef nonnull %0, i32 noundef 0) #6
  %i.aq = call i32 @CBB_add_u16(ptr noundef nonnull %4, i16 noundef zeroext %i.ap) #6
  %.not27.i = icmp eq i32 %i.aq, 0
  br i1 %.not27.i, label %_ZN4bsslL28ssl_write_client_cipher_listEPKNS_13SSL_HANDSHAKEEP6cbb_stNS_23ssl_client_hello_type_tE.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.as = load i16, ptr %i.ar, align 4, !tbaa !187 ; 2 uses
  %i.at = icmp ult i16 %i.as, 772
  %7 = icmp ne i32 %2, 1
  %or.cond.i = and i1 %7, %i.at
  br i1 %or.cond.i, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.au = call ptr @SSL_get_ciphers(ptr noundef nonnull %i.af) #6
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = load i16, ptr %i.av, align 8, !tbaa !167
  %i.ax = load i16, ptr %i.ar, align 4, !tbaa !187
  %i.ay = call fastcc noundef zeroext i1 @_ZN4bsslL27collect_cipher_protocol_idsEP19stack_st_SSL_CIPHERP6cbb_stjjttPb(ptr noundef %i.au, ptr noundef %4, i32 noundef %spec.select.i, i32 noundef %spec.select.i, i16 noundef zeroext %i.aw, i16 noundef zeroext %i.ax, ptr noundef %i.a)
  br i1 %i.ay, label %bb.q, label %.critedge.i

bb.q:                                             ; preds = %bb.p
  %i.az = load i8, ptr %i.a, align 1, !tbaa !168, !range !169, !noundef !170
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 175, ptr noundef nonnull @.str, i32 noundef 138) #6
  br label %.critedge.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.ab

bb.t:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bc = load i16, ptr %i.bb, align 8, !tbaa !167 ; 2 uses
  %i.bd = icmp ugt i16 %i.bc, 771
  br i1 %i.bd, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %bb.t
  %i.be = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !188 ; 2 uses
  %.not39.i = icmp eq ptr %i.bf, null
  br i1 %.not39.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !189 ; 2 uses
  %.not40.i = icmp eq ptr %i.bh, null
  br i1 %.not40.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bi = load ptr, ptr %i.ak, align 8, !tbaa !166
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 112
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !189
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.in.i = phi ptr [ %i.bk, %bb.w ], [ %i.bh, %bb.v ]
  %i.bl = load ptr, ptr %.in.i, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.bm = call fastcc noundef zeroext i1 @_ZN4bsslL27collect_cipher_protocol_idsEP19stack_st_SSL_CIPHERP6cbb_stjjttPb(ptr noundef %i.bl, ptr noundef %4, i32 noundef %spec.select.i, i32 noundef %spec.select.i, i16 noundef zeroext %i.bc, i16 noundef zeroext %i.as, ptr noundef %i.b)
  br i1 %i.bm, label %bb.y, label %.critedge31.i

bb.y:                                             ; preds = %bb.x
  %i.bn = load i8, ptr %i.b, align 1, !tbaa !168, !range !169, !noundef !170
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 175, ptr noundef nonnull @.str, i32 noundef 155) #6
  br label %.critedge31.i

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.t, %bb.s
  %i.bp = getelementptr inbounds nuw i8, ptr %i.af, i64 188
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !191
  %i.br = and i32 %i.bq, 1024
  %.not28.i = icmp eq i32 %i.br, 0
  br i1 %.not28.i, label %_ZN4bsslL28ssl_write_client_cipher_listEPKNS_13SSL_HANDSHAKEEP6cbb_stNS_23ssl_client_hello_type_tE.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bs = call i32 @CBB_add_u16(ptr noundef nonnull %4, i16 noundef zeroext 22016) #6
  %.not29.i = icmp eq i32 %i.bs, 0
  br i1 %.not29.i, label %_ZN4bsslL28ssl_write_client_cipher_listEPKNS_13SSL_HANDSHAKEEP6cbb_stNS_23ssl_client_hello_type_tE.exit.thread, label %_ZN4bsslL28ssl_write_client_cipher_listEPKNS_13SSL_HANDSHAKEEP6cbb_stNS_23ssl_client_hello_type_tE.exit

.critedge.i:                                      ; preds = %bb.r, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %_ZN4bsslL28ssl_write_client_cipher_listEPKNS_13SSL_HANDSHAKEEP6cbb_stNS_23ssl_client_hello_type_tE.exit.thread

.critedge31.i:                                    ; preds = %bb.z, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %_ZN4bsslL28ssl_write_client_cipher_listEPKNS_13SSL_HANDSHAKEEP6cbb_stNS_23ssl_client_hello_type_tE.exit.thread

_ZN4bsslL28ssl_write_client_cipher_listEPKNS_13SSL_HANDSHAKEEP6cbb_stNS_23ssl_client_hello_type_tE.exit.thread: ; preds = %bb.n, %.critedge.i, %.critedge31.i, %bb.l, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %bb.af

_ZN4bsslL28ssl_write_client_cipher_listEPKNS_13SSL_HANDSHAKEEP6cbb_stNS_23ssl_client_hello_type_tE.exit: ; preds = %bb.ab, %bb.ac
  %i.bt = call i32 @CBB_flush(ptr noundef %1) #6
  %.not31 = icmp eq i32 %i.bt, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br i1 %.not31, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %_ZN4bsslL28ssl_write_client_cipher_listEPKNS_13SSL_HANDSHAKEEP6cbb_stNS_23ssl_client_hello_type_tE.exit
  %i.bu = call i32 @CBB_add_u8(ptr noundef %1, i8 noundef zeroext 1) #6
  %.not28 = icmp eq i32 %i.bu, 0
  br i1 %.not28, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bv = call i32 @CBB_add_u8(ptr noundef %1, i8 noundef zeroext 0) #6
  %.not29 = icmp ne i32 %i.bv, 0
  br label %bb.af

bb.af:                                            ; preds = %_ZN4bsslL28ssl_write_client_cipher_listEPKNS_13SSL_HANDSHAKEEP6cbb_stNS_23ssl_client_hello_type_tE.exit.thread, %bb.ae, %_ZN4bsslL28ssl_write_client_cipher_listEPKNS_13SSL_HANDSHAKEEP6cbb_stNS_23ssl_client_hello_type_tE.exit, %bb.ad, %bb.j, %bb.k, %bb.h, %bb.a, %bb.e, %bb.f
  %.0 = phi i1 [ false, %_ZN4bsslL28ssl_write_client_cipher_listEPKNS_13SSL_HANDSHAKEEP6cbb_stNS_23ssl_client_hello_type_tE.exit ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.a ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.k ], [ %.not29, %bb.ae ], [ false, %bb.ad ], [ false, %_ZN4bsslL28ssl_write_client_cipher_listEPKNS_13SSL_HANDSHAKEEP6cbb_stNS_23ssl_client_hello_type_tE.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @CBB_add_u16(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

declare i32 @CBB_add_bytes(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @CBB_add_u8_length_prefixed(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SSL_is_dtls(ptr noundef) local_unnamed_addr #2

declare i32 @CBB_add_u8(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4bssl20ssl_add_client_helloEPNS_13SSL_HANDSHAKEE(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.bssl::internal::StackAllocated.96", align 8 ; 6 uses
  %2 = alloca %struct.cbb_st, align 8             ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.bssl::Array", align 8       ; 10 uses
  %4 = alloca %"class.bssl::Array", align 8       ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !96     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  call void @CBB_zero(ptr noundef nonnull align 8 dereferenceable(48) %1) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1552
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !171
  %.not = icmp eq ptr %i.d, null
  %i.e = select i1 %.not, i32 0, i32 2            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !172
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !174
  %i.i = call noundef zeroext i1 %i.h(ptr noundef nonnull %i.b, ptr noundef nonnull %1, ptr noundef nonnull %2, i8 noundef zeroext 1) #6
  br i1 %i.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef zeroext i1 @_ZN4bssl41ssl_write_client_hello_without_extensionsEPKNS_13SSL_HANDSHAKEEP6cbb_stNS_23ssl_client_hello_type_tEb(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef %i.e, i1 noundef zeroext false)
  br i1 %i.j, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.k = call i64 @CBB_len(ptr noundef nonnull %2) #6
  %i.l = call noundef zeroext i1 @_ZN4bssl26ssl_add_clienthello_tlsextEPNS_13SSL_HANDSHAKEEP6cbb_stS3_PbNS_23ssl_client_hello_type_tEm(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef %i.e, i64 noundef %i.k) #6
  br i1 %i.l, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !172
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !192
  %i.p = call noundef zeroext i1 %i.o(ptr noundef nonnull %i.b, ptr noundef nonnull %1, ptr noundef nonnull %3) #6
  br i1 %i.p, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.q = load i8, ptr %i.a, align 1, !tbaa !168, !range !169, !noundef !170
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.t = load ptr, ptr %3, align 8, !tbaa !135
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !136
  %i.w = call noundef zeroext i1 @_ZN4bssl22tls13_write_psk_binderEPKNS_13SSL_HANDSHAKEERKNS_13SSLTranscriptENS_4SpanIhEEPm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr %i.t, i64 %i.v, ptr noundef null) #6
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !172
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !193
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @OPENSSL_free(ptr noundef null) #6
  %i.ab = load ptr, ptr %3, align 8, !tbaa !135
  store ptr %i.ab, ptr %4, align 8, !tbaa !175
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !136
  store i64 %i.ad, ptr %i.aa, align 8, !tbaa !176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.ae = call noundef zeroext i1 %i.z(ptr noundef nonnull %i.b, ptr nofreeobj noundef nonnull align 8 dereferenceable(16) %4) #6
  %i.af = load ptr, ptr %4, align 8, !tbaa !135
  call void @OPENSSL_free(ptr noundef %i.af) #6
  br label %bb.h
end_hunk_0
