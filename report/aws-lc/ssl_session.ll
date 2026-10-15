Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/ssl_session?download=true
inline.NumInlined: 626
inline.NumDeleted: 287
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CRYPTO_EX_DATA_CLASS = type { %struct.CRYPTO_STATIC_MUTEX, ptr, i8 }
%struct.CRYPTO_STATIC_MUTEX = type { %union.pthread_rwlock_t }
%union.pthread_rwlock_t = type { %struct.__pthread_rwlock_arch_t }
%struct.__pthread_rwlock_arch_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, [7 x i8], i64, i32 }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"struct.bssl::OPENSSL_timeval" = type { i64, i32 }
%"class.bssl::internal::StackAllocated.143" = type { %struct.evp_cipher_ctx_st }
%struct.evp_cipher_ctx_st = type { ptr, ptr, ptr, i32, i32, i32, [16 x i8], [16 x i8], [32 x i8], i32, i32, i32, [32 x i8], i32 }
%"class.bssl::internal::StackAllocated.144" = type { %struct.hmac_ctx_st }
%struct.hmac_ctx_st = type { ptr, ptr, %union.md_ctx_union, %union.md_ctx_union, %union.md_ctx_union, i8 }
%union.md_ctx_union = type { %struct.sha512_state_st, [184 x i8] }
%struct.sha512_state_st = type { [8 x i64], i64, i64, [128 x i8], i32, i32 }
%struct.LHASH_CMP_KEY_SSL_SESSION = type { ptr, ptr }
%"class.bssl::Span" = type { ptr, i64 }
%struct.cbs_st = type { ptr, i64 }
%struct.LHASH_DOALL_SSL_SESSION = type { ptr, ptr }
%struct.timeout_param_st = type { ptr, i64, ptr }

$_ZN4bssl5ArrayIhE8CopyFromENS_4SpanIKhEE = comdat any

$sk_CRYPTO_BUFFER_call_copy_func = comdat any

$sk_CRYPTO_BUFFER_call_free_func = comdat any

$_Z27lh_SSL_SESSION_call_cmp_keyPKvS0_ = comdat any

$_Z29lh_SSL_SESSION_call_hash_funcPFjPKvES0_ = comdat any

$_Z28lh_SSL_SESSION_call_cmp_funcPFiPKvS0_ES0_S0_ = comdat any

$_Z29lh_SSL_SESSION_call_doall_argPvS_ = comdat any

$_ZZN4bssl8internal11DeleterImplI22stack_st_CRYPTO_BUFFERvE4FreeEPS2_ENUlPFvPvES5_E_8__invokeES7_S5_ = comdat any

@.str = private unnamed_addr constant [49 x i8] c"/opt-bench/work/aws-lc/aws-lc/ssl/ssl_session.cc\00", align 1
@_ZN4bsslL15g_ex_data_classE = internal global %struct.CRYPTO_EX_DATA_CLASS { %struct.CRYPTO_STATIC_MUTEX zeroinitializer, ptr null, i8 1 }, align 8
@_ZN4bsslL23g_pending_session_magicE = internal constant i8 0, align 1
@_ZZN4bsslL34ssl_encrypt_ticket_with_cipher_ctxEPNS_13SSL_HANDSHAKEEP6cbb_stPKhmE18kTicketPlaceholder = internal constant [17 x i8] c"TICKET TOO LARGE\00", align 16

@_ZN14ssl_session_stC1EPKN4bssl15SSL_X509_METHODE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN14ssl_session_stC2EPKN4bssl15SSL_X509_METHODE
@_ZN14ssl_session_stD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN14ssl_session_stD2Ev

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4bssl15ssl_session_newEPKNS_15SSL_X509_METHODE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  %i.a = tail call ptr @OPENSSL_malloc(i64 noundef 456) #16, !noalias !263 ; 16 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN4bssl10MakeUniqueI14ssl_session_stJRPKNS_15SSL_X509_METHODEEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 4, !tbaa !10, !noalias !263
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(121) %i.c, i8 0, i64 121, i1 false), !noalias !263
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !noalias !263
  store ptr %1, ptr %i.e, align 8, !tbaa !45, !noalias !263
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false), !noalias !263
  store i64 65, ptr %i.g, align 8, !tbaa !46, !noalias !263
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store i32 7200, ptr %i.h, align 8, !tbaa !47, !noalias !263
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 196
  store i32 7200, ptr %i.i, align 4, !tbaa !48, !noalias !263
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 200 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 372
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 432 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false), !noalias !263
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(145) %i.k, i8 0, i64 145, i1 false), !noalias !263
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.l, i8 0, i64 60, i1 false), !noalias !263
  %i.n = load i8, ptr %i.m, align 8, !noalias !263
  %i.o = and i8 %i.n, -128
  store i8 %i.o, ptr %i.m, align 8, !noalias !263
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false), !noalias !263
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  tail call void @CRYPTO_new_ex_data(ptr noundef nonnull %i.q) #16, !noalias !263
  %i.r = tail call i64 @time(ptr noundef null) #16, !noalias !263
  store i64 %i.r, ptr %i.j, align 8, !tbaa !49, !noalias !263
  br label %_ZN4bssl10MakeUniqueI14ssl_session_stJRPKNS_15SSL_X509_METHODEEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_.exit

_ZN4bssl10MakeUniqueI14ssl_session_stJRPKNS_15SSL_X509_METHODEEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_.exit: ; preds = %bb.a, %bb.b
  store ptr %i.a, ptr %0, align 8, !tbaa !50, !alias.scope !263
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZN4bssl19ssl_hash_session_idENS_4SpanIKhEE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #1 {
bb.a:
  %.sroa.0 = alloca i32, align 4                  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.a = icmp ult i64 %1, 4
  %.sroa.0.1.gep.sroa_idx30 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1 ; 2 uses
  %.sroa.07.0.sroa.gep17 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.0.2.gep19.sroa_idx31 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2 ; 2 uses
  %.sroa.07.0.sroa.gep20 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.0.3.gep22.sroa_idx32 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 3 ; 2 uses
  %.sroa.0.3.gep55.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  br i1 %i.a, label %bb.b, label %_ZNK4bssl4SpanIKhEixEm.exit

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %.sroa.0, align 4
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %_ZNK4bssl4SpanIKhEixEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0, ptr readonly align 1 %0, i64 %1, i1 false)
  br label %_ZNK4bssl4SpanIKhEixEm.exit

_ZNK4bssl4SpanIKhEixEm.exit:                      ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.07.0.sroa.phi = phi ptr [ %.sroa.07.0.sroa.gep17, %bb.a ], [ %.sroa.0.1.gep.sroa_idx30, %bb.b ], [ %.sroa.0.1.gep.sroa_idx30, %bb.c ]
  %.sroa.07.0.sroa.phi18 = phi ptr [ %.sroa.07.0.sroa.gep20, %bb.a ], [ %.sroa.0.2.gep19.sroa_idx31, %bb.b ], [ %.sroa.0.2.gep19.sroa_idx31, %bb.c ]
  %.sroa.07.0.sroa.phi21 = phi ptr [ %.sroa.0.3.gep55.sroa_idx, %bb.a ], [ %.sroa.0.3.gep22.sroa_idx32, %bb.b ], [ %.sroa.0.3.gep22.sroa_idx32, %bb.c ]
  %.sroa.07.0 = phi ptr [ %0, %bb.a ], [ %.sroa.0, %bb.b ], [ %.sroa.0, %bb.c ]
  %2 = load i8, ptr %.sroa.07.0, align 1, !tbaa !51
  %3 = zext i8 %2 to i32
  %4 = load i8, ptr %.sroa.07.0.sroa.phi, align 1, !tbaa !51
  %5 = zext i8 %4 to i32
  %6 = shl nuw nsw i32 %5, 8
  %7 = or disjoint i32 %6, %3
  %8 = load i8, ptr %.sroa.07.0.sroa.phi18, align 1, !tbaa !51
  %i.c = zext i8 %8 to i32
  %9 = shl nuw nsw i32 %i.c, 16
  %10 = or disjoint i32 %7, %9
  %i.d = load i8, ptr %.sroa.07.0.sroa.phi21, align 1, !tbaa !51
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw i32 %i.e, 24
  %i.g = or disjoint i32 %10, %i.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret i32 %i.g
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4bssl15SSL_SESSION_dupEP14ssl_session_sti(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.c = tail call ptr @OPENSSL_malloc(i64 noundef 456) #16, !noalias !276 ; 43 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN4bssl15ssl_session_newEPKNS_15SSL_X509_METHODE.exit, label %bb.b

_ZN4bssl15ssl_session_newEPKNS_15SSL_X509_METHODE.exit: ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !53
  br label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.c, align 4, !tbaa !10, !noalias !276
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(121) %i.e, i8 0, i64 121, i1 false), !noalias !276
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !276
  store ptr %i.b, ptr %i.g, align 8, !tbaa !45, !noalias !276
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 184 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false), !noalias !276
  store i64 65, ptr %i.i, align 8, !tbaa !46, !noalias !276
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 2 uses
  store i32 7200, ptr %i.j, align 8, !tbaa !47, !noalias !276
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 196
  store i32 7200, ptr %i.k, align 4, !tbaa !48, !noalias !276
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 200 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 372 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 432 ; 12 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !noalias !276
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(145) %i.m, i8 0, i64 145, i1 false), !noalias !276
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.n, i8 0, i64 60, i1 false), !noalias !276
  %i.p = load i8, ptr %i.o, align 8, !noalias !276
  %i.q = and i8 %i.p, -128
  store i8 %i.q, ptr %i.o, align 8, !noalias !276
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 440 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false), !noalias !276
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  tail call void @CRYPTO_new_ex_data(ptr noundef nonnull %i.s) #16, !noalias !276
  %i.t = tail call i64 @time(ptr noundef null) #16, !noalias !276
  store i64 %i.t, ptr %i.l, align 8, !tbaa !49, !noalias !276
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 5 uses
  %i.v = load i8, ptr %i.u, align 8
  %.lobit = and i8 %i.v, 16
  %i.w = load i8, ptr %i.o, align 8
  %i.x = and i8 %i.w, -17
  %i.y = or disjoint i8 %i.x, %.lobit             ; 2 uses
  store i8 %i.y, ptr %i.o, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !54
  store i16 %i.aa, ptr %i.e, align 4, !tbaa !54
  %i.ab = load i8, ptr %i.u, align 8
  %.lobit46 = and i8 %i.ab, 32
  %i.ac = and i8 %i.y, -33
  %i.ad = or disjoint i8 %.lobit46, %i.ac
  store i8 %i.ad, ptr %i.o, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !55  ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  store i8 %i.af, ptr %i.ag, align 4, !tbaa !55
  %i.ah = icmp eq i8 %i.af, 0
  br i1 %i.ah, label %_ZL14OPENSSL_memcpyPvPKvm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = zext i8 %i.af to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 93
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 93
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull readonly align 1 %i.aj, i64 %i.ai, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %bb.b, %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.am = load i8, ptr %i.al, align 2, !tbaa !56  ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  store i8 %i.am, ptr %i.an, align 2, !tbaa !56
  %i.ao = icmp eq i8 %i.am, 0
  br i1 %i.ao, label %_ZL14OPENSSL_memcpyPvPKvm.exit50, label %bb.d

bb.d:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit
  %i.ap = zext i8 %i.am to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr nonnull readonly align 1 %i.aq, i64 %i.ap, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit50

_ZL14OPENSSL_memcpyPvPKvm.exit50:                 ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !57
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  store ptr %i.at, ptr %i.au, align 8, !tbaa !57
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !58 ; 2 uses
  %.not128 = icmp eq ptr %i.aw, null
  br i1 %.not128, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit50
  %i.ax = tail call ptr @OPENSSL_strdup(ptr noundef nonnull %i.aw) #16 ; 2 uses
  %i.ay = load ptr, ptr %i.f, align 8, !tbaa !58  ; 2 uses
  store ptr %i.ax, ptr %i.f, align 8, !tbaa !58
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIcN4bssl8internal7DeleterEE5resetEPc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @OPENSSL_free(ptr noundef nonnull %i.ay) #16
  %.pr = load ptr, ptr %i.f, align 8, !tbaa !58
  br label %_ZNSt10unique_ptrIcN4bssl8internal7DeleterEE5resetEPc.exit

_ZNSt10unique_ptrIcN4bssl8internal7DeleterEE5resetEPc.exit: ; preds = %bb.e, %bb.f
  %i.az = phi ptr [ %i.ax, %bb.e ], [ %.pr, %bb.f ]
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZNSt10unique_ptrIcN4bssl8internal7DeleterEE5resetEPc.exit, %_ZL14OPENSSL_memcpyPvPKvm.exit50
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !59 ; 2 uses
  %.not129 = icmp eq ptr %i.bb, null
  br i1 %.not129, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 3 uses
  %i.bd = tail call ptr @OPENSSL_sk_deep_copy(ptr noundef nonnull %i.bb, ptr noundef nonnull @sk_CRYPTO_BUFFER_call_copy_func, ptr noundef nonnull @_ZN4bssl13buffer_up_refEPK16crypto_buffer_st, ptr noundef nonnull @sk_CRYPTO_BUFFER_call_free_func, ptr noundef nonnull @CRYPTO_BUFFER_free) #16 ; 2 uses
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !59 ; 2 uses
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !59
  %.not.i.i51 = icmp eq ptr %i.be, null
  br i1 %.not.i.i51, label %_ZNSt10unique_ptrI22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterEE5resetEPS0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @OPENSSL_sk_pop_free_ex(ptr noundef nonnull %i.be, ptr noundef nonnull @_ZZN4bssl8internal11DeleterImplI22stack_st_CRYPTO_BUFFERvE4FreeEPS2_ENUlPFvPvES5_E_8__invokeES7_S5_, ptr noundef null) #16
  %.pr121 = load ptr, ptr %i.bc, align 8, !tbaa !59
  br label %_ZNSt10unique_ptrI22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterEE5resetEPS0_.exit

_ZNSt10unique_ptrI22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterEE5resetEPS0_.exit: ; preds = %bb.h, %bb.i
  %i.bf = phi ptr [ %i.bd, %bb.h ], [ %.pr121, %bb.i ]
  %.not.i52 = icmp eq ptr %i.bf, null
  br i1 %.not.i52, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZNSt10unique_ptrI22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterEE5resetEPS0_.exit, %bb.g
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !277
  %i.bj = tail call noundef zeroext i1 %i.bi(ptr noundef nonnull %i.c, ptr noundef nonnull %1) #16
  br i1 %i.bj, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !46
  store i64 %i.bl, ptr %i.i, align 8, !tbaa !46
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !61, !noalias !278 ; 3 uses
  %.not.i.i53 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i53, label %_ZN4bssl5UpRefERKSt10unique_ptrI16crypto_buffer_stNS_8internal7DeleterEE.exit, label %.split4.i.i

.split4.i.i:                                      ; preds = %bb.k
  %i.bo = tail call i32 @CRYPTO_BUFFER_up_ref(ptr noundef nonnull %i.bn) #16, !noalias !279 ; 0 uses
  br label %_ZN4bssl5UpRefERKSt10unique_ptrI16crypto_buffer_stNS_8internal7DeleterEE.exit

_ZN4bssl5UpRefERKSt10unique_ptrI16crypto_buffer_stNS_8internal7DeleterEE.exit: ; preds = %bb.k, %.split4.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 264 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !61 ; 2 uses
  store ptr %i.bn, ptr %i.bp, align 8, !tbaa !61
  %.not.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrI16crypto_buffer_stN4bssl8internal7DeleterEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4bssl5UpRefERKSt10unique_ptrI16crypto_buffer_stNS_8internal7DeleterEE.exit
  tail call void @CRYPTO_BUFFER_free(ptr noundef nonnull %i.bq) #16
  br label %_ZNSt10unique_ptrI16crypto_buffer_stN4bssl8internal7DeleterEED2Ev.exit

_ZNSt10unique_ptrI16crypto_buffer_stN4bssl8internal7DeleterEED2Ev.exit: ; preds = %bb.l, %_ZN4bssl5UpRefERKSt10unique_ptrI16crypto_buffer_stNS_8internal7DeleterEE.exit
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !61, !noalias !280 ; 3 uses
  %.not.i.i55 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i55, label %_ZN4bssl5UpRefERKSt10unique_ptrI16crypto_buffer_stNS_8internal7DeleterEE.exit57, label %.split4.i.i56

.split4.i.i56:                                    ; preds = %_ZNSt10unique_ptrI16crypto_buffer_stN4bssl8internal7DeleterEED2Ev.exit
  %i.bt = tail call i32 @CRYPTO_BUFFER_up_ref(ptr noundef nonnull %i.bs) #16, !noalias !281 ; 0 uses
  br label %_ZN4bssl5UpRefERKSt10unique_ptrI16crypto_buffer_stNS_8internal7DeleterEE.exit57

_ZN4bssl5UpRefERKSt10unique_ptrI16crypto_buffer_stNS_8internal7DeleterEE.exit57: ; preds = %_ZNSt10unique_ptrI16crypto_buffer_stN4bssl8internal7DeleterEED2Ev.exit, %.split4.i.i56
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 256 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !61 ; 2 uses
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !61
  %.not.i.i.i.i58 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i58, label %_ZNSt10unique_ptrI16crypto_buffer_stN4bssl8internal7DeleterEED2Ev.exit61, label %bb.m

bb.m:                                             ; preds = %_ZN4bssl5UpRefERKSt10unique_ptrI16crypto_buffer_stNS_8internal7DeleterEE.exit57
end_hunk_0
begin_hunk_1_@_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st:bb.a
  %i.z = sub nsw i32 %i.t, %i.u
  %i.aa = zext i32 %i.z to i64
  %i.ab = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.y) #17, !srcloc !236
  %i.ac = and i64 %i.ab, %i.aa
  %i.ad = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i) #17, !srcloc !236
  %i.ae = and i64 %i.ad, %.018.i
  %i.af = or i64 %i.ac, %i.ae                     ; 2 uses
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !0

_ZL14OPENSSL_memcmpPKvS0_m.exit:                  ; preds = %._crit_edge.loopexit.i, %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ %i.n, %._crit_edge.loopexit.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4bssl25ssl_session_is_time_validEPK6ssl_stPK14ssl_session_st(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"struct.bssl::OPENSSL_timeval", align 8 ; 4 uses
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_ZN4bssl20ssl_get_current_timeEPK6ssl_stPNS_15OPENSSL_timevalE(ptr noundef %0, ptr noundef nonnull %2) #16
  %i.b = load i64, ptr %2, align 8, !tbaa !69     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.d = load i64, ptr %i.c, align 8, !tbaa !49   ; 2 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.g = load i32, ptr %i.f, align 8, !tbaa !47
  %i.h = zext i32 %i.g to i64
  %i.i = sub nuw i64 %i.b, %i.d
  %i.j = icmp ult i64 %i.i, %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i1 [ %i.j, %bb.c ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.1 = phi i1 [ %.0, %bb.d ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4bssl24ssl_session_is_resumableEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"struct.bssl::OPENSSL_timeval", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !136    ; 3 uses
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.d = load i8, ptr %i.c, align 4, !tbaa !55    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !219
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !220  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.j = load i8, ptr %i.i, align 8, !tbaa !232
  %i.k = icmp eq i8 %i.d, %i.j
  br i1 %i.k, label %bb.c, label %_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 93
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 105
  %.not16.i.i = icmp eq i8 %i.d, 0
  br i1 %.not16.i.i, label %_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit.thread21, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.c
  %i.n = zext i8 %i.d to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.018.i.i = phi i64 [ %i.af, %.lr.ph.i.i ], [ 0, %.lr.ph.i.preheader.i ]
  %.01517.i.i = phi i64 [ %i.o, %.lr.ph.i.i ], [ %i.n, %.lr.ph.i.preheader.i ]
  %i.o = add nsw i64 %.01517.i.i, -1              ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.s = load i8, ptr %i.r, align 1, !tbaa !51
  %i.t = zext i8 %i.q to i32                      ; 2 uses
  %i.u = zext i8 %i.s to i32                      ; 2 uses
  %i.v = xor i32 %i.u, %i.t
  %i.w = zext nneg i32 %i.v to i64
  %i.x = add nsw i64 %i.w, -1
  %.neg.i.i.i.i = ashr i64 %i.x, 63               ; 2 uses
  %i.y = xor i64 %.neg.i.i.i.i, -1
  %i.z = sub nsw i32 %i.t, %i.u
  %i.aa = zext i32 %i.z to i64
  %i.ab = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.y) #17, !srcloc !236
  %i.ac = and i64 %i.ab, %i.aa
  %i.ad = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i) #17, !srcloc !236
  %i.ae = and i64 %i.ad, %.018.i.i
  %i.af = or i64 %i.ac, %i.ae                     ; 2 uses
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit: ; preds = %.lr.ph.i.i
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit.thread21, label %_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit.thread

_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit.thread21: ; preds = %bb.c, %_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 220
  %i.ai = load i8, ptr %i.ah, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8
  %i.al = lshr i8 %i.ak, 4
  %i.am = xor i8 %i.al, %i.ai
  %i.an = and i8 %i.am, 1
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.d, label %_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit.thread

bb.d:                                             ; preds = %_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit.thread21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_ZN4bssl20ssl_get_current_timeEPK6ssl_stPNS_15OPENSSL_timevalE(ptr noundef nonnull %i.a, ptr noundef nonnull %2) #16
  %i.ap = load i64, ptr %2, align 8, !tbaa !69    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !49 ; 2 uses
  %i.as = icmp ult i64 %i.ap, %i.ar
  br i1 %i.as, label %_ZN4bssl25ssl_session_is_time_validEPK6ssl_stPK14ssl_session_st.exit.thread, label %_ZN4bssl25ssl_session_is_time_validEPK6ssl_stPK14ssl_session_st.exit

_ZN4bssl25ssl_session_is_time_validEPK6ssl_stPK14ssl_session_st.exit.thread: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit.thread

_ZN4bssl25ssl_session_is_time_validEPK6ssl_stPK14ssl_session_st.exit: ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.au = load i32, ptr %i.at, align 8, !tbaa !47
  %i.av = zext i32 %i.au to i64
  %i.aw = sub nuw i64 %i.ap, %i.ar
  %i.ax = icmp ult i64 %i.aw, %i.av
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br i1 %i.ax, label %bb.e, label %_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit.thread

bb.e:                                             ; preds = %_ZN4bssl25ssl_session_is_time_validEPK6ssl_stPK14ssl_session_st.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.az = load i16, ptr %i.ay, align 8, !tbaa !215
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bb = load i16, ptr %i.ba, align 4, !tbaa !54
  %i.bc = icmp eq i16 %i.az, %i.bb
  br i1 %i.bc, label %bb.f, label %_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1560
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !306
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !57
  %i.bh = icmp eq ptr %i.be, %i.bg
  br i1 %i.bh, label %bb.g, label %_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !59
  %i.bk = call i64 @OPENSSL_sk_num(ptr noundef %i.bj) #16
  %i.bl = icmp eq i64 %i.bk, 0
  %.pre = load i8, ptr %i.aj, align 8             ; 3 uses
  %i.bm = and i8 %.pre, 2
  %.not = icmp eq i8 %i.bm, 0
  %or.cond = select i1 %i.bl, i1 %.not, i1 false
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = lshr i8 %.pre, 1
  %.lobit = and i8 %i.bn, 1
  %i.bo = load ptr, ptr %i.e, align 8, !tbaa !219
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 241
  %i.bq = load i16, ptr %i.bp, align 1
  %i.br = lshr i16 %i.bq, 5
  %.lobit17 = and i16 %i.br, 1
  %i.bs = zext nneg i8 %.lobit to i16
  %i.bt = icmp eq i16 %.lobit17, %i.bs
  br i1 %i.bt, label %bb.i, label %_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit.thread

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bu = load ptr, ptr %0, align 8, !tbaa !136
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 208
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !216
  %i.bx = icmp ne ptr %i.bw, null
  %i.by = and i8 %.pre, 32
  %i.bz = icmp eq i8 %i.by, 0
  %i.ca = xor i1 %i.bx, %i.bz
  br label %_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit.thread

_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit.thread: ; preds = %bb.b, %bb.a, %_ZN4bssl25ssl_session_is_time_validEPK6ssl_stPK14ssl_session_st.exit.thread, %bb.i, %bb.h, %bb.f, %bb.e, %_ZN4bssl25ssl_session_is_time_validEPK6ssl_stPK14ssl_session_st.exit, %_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit.thread21, %_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit
  %i.cb = phi i1 [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.e ], [ false, %_ZN4bssl25ssl_session_is_time_validEPK6ssl_stPK14ssl_session_st.exit ], [ false, %_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit.thread21 ], [ false, %_ZN4bssl28ssl_session_is_context_validEPKNS_13SSL_HANDSHAKEEPK14ssl_session_st.exit ], [ %i.ca, %bb.i ], [ false, %_ZN4bssl25ssl_session_is_time_validEPK6ssl_stPK14ssl_session_st.exit.thread ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %i.cb
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 12) i32 @_ZN4bssl20ssl_get_prev_sessionEPNS_13SSL_HANDSHAKEEPSt10unique_ptrI14ssl_session_stNS_8internal7DeleterEEPbS8_PK22ssl_early_callback_ctx(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"struct.bssl::OPENSSL_timeval", align 8 ; 5 uses
  %6 = alloca %struct.LHASH_CMP_KEY_SSL_SESSION, align 8 ; 5 uses
  %.sroa.0.i.i = alloca i32, align 4              ; 8 uses
  %7 = alloca %"class.bssl::Span", align 8        ; 8 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %8 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %9 = alloca %struct.cbs_st, align 8             ; 6 uses
  %10 = alloca %"class.bssl::Span", align 8       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  store ptr null, ptr %8, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i8 0, ptr %i.b, align 1, !tbaa !310
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.c = load ptr, ptr %0, align 8, !tbaa !136
  %i.d = tail call i32 @SSL_get_options(ptr noundef %i.c) #16
  %i.e = and i32 %i.d, 16384
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = call noundef zeroext i1 @_ZN4bssl30ssl_client_hello_get_extensionEPK22ssl_early_callback_ctxP6cbs_stt(ptr noundef %4, ptr noundef nonnull %9, i16 noundef zeroext 35) #16
  br i1 %i.f, label %bb.c, label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = call i64 @CBS_len(ptr noundef nonnull %9) #16
  %.not19 = icmp eq i64 %i.g, 0
  br i1 %.not19, label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %9, align 8, !tbaa !312
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !313
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !315
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.n = load i64, ptr %i.m, align 8, !tbaa !316
  store ptr %i.l, ptr %10, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = call noundef i32 @_ZN4bssl18ssl_process_ticketEPNS_13SSL_HANDSHAKEEPSt10unique_ptrI14ssl_session_stNS_8internal7DeleterEEPbNS_4SpanIKhEESB_(ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef nonnull %i.b, ptr %i.h, i64 %i.j, ptr noundef nonnull byval(%"class.bssl::Span") align 8 %10) #16
  switch i32 %i.p, label %._crit_edge [
    i32 1, label %bb.e
    i32 3, label %bb.w
  ]

._crit_edge:                                      ; preds = %bb.d
  %.pre = load ptr, ptr %8, align 8, !tbaa !50
  br label %bb.t

bb.e:                                             ; preds = %bb.d
  br label %bb.w

_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit.i: ; preds = %bb.b, %bb.c, %bb.a
  %i.q = phi i8 [ 0, %bb.b ], [ 1, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !315  ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.u = load i64, ptr %i.t, align 8, !tbaa !316  ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !136   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.s, ptr %7, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.u, ptr %i.v, align 8
  store ptr null, ptr %8, align 8, !tbaa !50
  %i.w = add i64 %i.u, -33
  %or.cond.i = icmp ult i64 %i.w, -32
  br i1 %or.cond.i, label %_ZN4bsslL18ssl_lookup_sessionEPNS_13SSL_HANDSHAKEEPSt10unique_ptrI14ssl_session_stNS_8internal7DeleterEENS_4SpanIKhEE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 160 ; 11 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !170  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 164
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !238
  %i.ab = and i32 %i.aa, 256
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.ac = icmp samesign ult i64 %i.u, 4
  %.sroa.07.0.sroa.gep17.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %.sroa.07.0.sroa.gep20.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %.sroa.07.0.sroa.gep23.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  br i1 %i.ac, label %bb.h, label %_ZN4bssl19ssl_hash_session_idENS_4SpanIKhEE.exit.i

bb.h:                                             ; preds = %bb.g
  %.sroa.0.i.i.3.i.i.3.i.i.3.i.3.i.3.i.3.gep22.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 3
  %.sroa.0.i.i.2.i.i.2.i.i.2.i.2.i.2.i.2.gep19.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 2
  %.sroa.0.2.gep19.sroa_idx.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 1
  store i32 0, ptr %.sroa.0.i.i, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i, ptr readonly align 1 %i.s, i64 %i.u, i1 false)
  br label %_ZN4bssl19ssl_hash_session_idENS_4SpanIKhEE.exit.i

_ZN4bssl19ssl_hash_session_idENS_4SpanIKhEE.exit.i: ; preds = %bb.h, %bb.g
  %.sroa.07.0.sroa.phi.i.i = phi ptr [ %.sroa.07.0.sroa.gep17.i.i, %bb.g ], [ %.sroa.0.2.gep19.sroa_idx.phi.trans.insert.i.i, %bb.h ]
  %.sroa.07.0.sroa.phi18.i.i = phi ptr [ %.sroa.07.0.sroa.gep20.i.i, %bb.g ], [ %.sroa.0.i.i.2.i.i.2.i.i.2.i.2.i.2.i.2.gep19.sroa_idx, %bb.h ]
  %.sroa.07.0.sroa.phi21.i.i = phi ptr [ %.sroa.07.0.sroa.gep23.i.i, %bb.g ], [ %.sroa.0.i.i.3.i.i.3.i.i.3.i.3.i.3.i.3.gep22.sroa_idx, %bb.h ]
  %.sink52.in.in.i = phi ptr [ %i.s, %bb.g ], [ %.sroa.0.i.i, %bb.h ]
  %11 = load i8, ptr %.sink52.in.in.i, align 1, !tbaa !51
  %.sink52.i = zext i8 %11 to i32
  %12 = load i8, ptr %.sroa.07.0.sroa.phi.i.i, align 1, !tbaa !51
  %i.ad = zext i8 %12 to i32
  %i.ae = shl nuw nsw i32 %i.ad, 8
  %i.af = or disjoint i32 %i.ae, %.sink52.i
  %13 = load i8, ptr %.sroa.07.0.sroa.phi18.i.i, align 1, !tbaa !51
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 16
  %16 = or disjoint i32 %i.af, %15
  %i.ag = load i8, ptr %.sroa.07.0.sroa.phi21.i.i, align 1, !tbaa !51
  %i.ah = zext i8 %i.ag to i32
  %i.ai = shl nuw i32 %i.ah, 24
  %i.aj = or disjoint i32 %16, %i.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  call void @CRYPTO_MUTEX_lock_read(ptr noundef nonnull %i.ak) #16
  %i.al = load ptr, ptr %i.x, align 8, !tbaa !170
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store ptr @"_ZZN4bsslL18ssl_lookup_sessionEPNS_13SSL_HANDSHAKEEPSt10unique_ptrI14ssl_session_stNS_8internal7DeleterEENS_4SpanIKhEEEN3$_08__invokeEPKvPKS3_", ptr %6, align 8, !tbaa !241
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %7, ptr %i.ao, align 8, !tbaa !242
  %i.ap = call noundef ptr @OPENSSL_lh_retrieve_key(ptr noundef %i.an, ptr noundef nonnull %6, i32 noundef %i.aj, ptr noundef nonnull @_Z27lh_SSL_SESSION_call_cmp_keyPKvS0_) #16 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %bb.i, label %.thread29.i

bb.i:                                             ; preds = %_ZN4bssl19ssl_hash_session_idENS_4SpanIKhEE.exit.i
  %i.aq = load ptr, ptr %i.x, align 8, !tbaa !170
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  call void @CRYPTO_MUTEX_unlock_read(ptr noundef nonnull %i.ar) #16
  %i.as = load ptr, ptr %i.x, align 8, !tbaa !170 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 220
  call void @_ZN4bssl18ssl_update_counterEP10ssl_ctx_stRSt6atomicIiEb(ptr noundef %i.as, ptr noundef nonnull align 4 dereferenceable(4) %i.at, i1 noundef zeroext true) #16
  %.pre.i = load ptr, ptr %i.x, align 8, !tbaa !170
  br label %bb.j

.thread29.i:                                      ; preds = %_ZN4bssl19ssl_hash_session_idENS_4SpanIKhEE.exit.i
  call void @CRYPTO_refcount_inc(ptr noundef nonnull align 4 dereferenceable(4) %i.ap) #16, !noalias !317
  %i.au = load ptr, ptr %i.x, align 8, !tbaa !170
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  call void @CRYPTO_MUTEX_unlock_read(ptr noundef nonnull %i.av) #16
  br label %bb.q

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.aw = phi ptr [ %i.y, %bb.f ], [ %.pre.i, %bb.i ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 192
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !243 ; 2 uses
  %.not25.i = icmp eq ptr %i.ay, null
  br i1 %.not25.i, label %.thread26.i, label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit32.i

_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit32.i: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 1, ptr %i.a, align 4, !tbaa !62
  %i.az = load ptr, ptr %7, align 8, !tbaa !319
  %i.ba = load i64, ptr %i.v, align 8, !tbaa !320
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = call noundef ptr %i.ay(ptr noundef nonnull %.val, ptr noundef %i.az, i32 noundef %i.bb, ptr noundef nonnull %i.a) #16, !inline_history !309 ; 5 uses
  %.not43.i = icmp eq ptr %i.bc, null
  br i1 %.not43.i, label %_ZN4bsslL18ssl_lookup_sessionEPNS_13SSL_HANDSHAKEEPSt10unique_ptrI14ssl_session_stNS_8internal7DeleterEENS_4SpanIKhEE.exit.thread26, label %bb.k

_ZN4bsslL18ssl_lookup_sessionEPNS_13SSL_HANDSHAKEEPSt10unique_ptrI14ssl_session_stNS_8internal7DeleterEENS_4SpanIKhEE.exit.thread26: ; preds = %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit32.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.t

bb.k:                                             ; preds = %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit32.i
  %i.bd = icmp eq ptr %i.bc, @_ZN4bsslL23g_pending_session_magicE
  br i1 %i.bd, label %_ZN4bsslL18ssl_lookup_sessionEPNS_13SSL_HANDSHAKEEPSt10unique_ptrI14ssl_session_stNS_8internal7DeleterEENS_4SpanIKhEE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = load ptr, ptr %i.x, align 8, !tbaa !170 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 236
  call void @_ZN4bssl18ssl_update_counterEP10ssl_ctx_stRSt6atomicIiEb(ptr noundef %i.be, ptr noundef nonnull align 4 dereferenceable(4) %i.bf, i1 noundef zeroext true) #16
  %i.bg = load i32, ptr %i.a, align 4, !tbaa !62
  %.not26.i = icmp eq i32 %i.bg, 0
  br i1 %.not26.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @CRYPTO_refcount_inc(ptr noundef nonnull align 4 dereferenceable(4) %i.bc) #16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bh = load ptr, ptr %i.x, align 8, !tbaa !170 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 164
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !238
  %i.bk = and i32 %i.bj, 512
  %.not27.i = icmp eq i32 %i.bk, 0
  br i1 %.not27.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bl = call i32 @SSL_CTX_add_session(ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bc) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.thread29.i
  %.sroa.03.231.i = phi ptr [ %i.ap, %.thread29.i ], [ %i.bc, %bb.p ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @_ZN4bssl20ssl_get_current_timeEPK6ssl_stPNS_15OPENSSL_timevalE(ptr noundef nonnull %.val, ptr noundef nonnull %5) #16
  %i.bm = load i64, ptr %5, align 8, !tbaa !69    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.03.231.i, i64 200
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !49 ; 2 uses
  %i.bp = icmp ult i64 %i.bm, %i.bo
  br i1 %i.bp, label %_ZN4bssl25ssl_session_is_time_validEPK6ssl_stPK14ssl_session_st.exit.thread35.i, label %_ZN4bssl25ssl_session_is_time_validEPK6ssl_stPK14ssl_session_st.exit.i

_ZN4bssl25ssl_session_is_time_validEPK6ssl_stPK14ssl_session_st.exit.thread35.i: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.r

_ZN4bssl25ssl_session_is_time_validEPK6ssl_stPK14ssl_session_st.exit.i: ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.03.231.i, i64 192
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !47
  %i.bs = zext i32 %i.br to i64
  %i.bt = sub nuw i64 %i.bm, %i.bo
  %i.bu = icmp ult i64 %i.bt, %i.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br i1 %i.bu, label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit35.i, label %bb.r

.thread26.i:                                      ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aw, i64 224
  call void @_ZN4bssl18ssl_update_counterEP10ssl_ctx_stRSt6atomicIiEb(ptr noundef nonnull %i.aw, ptr noundef nonnull align 4 dereferenceable(4) %i.bv, i1 noundef zeroext true) #16
  br label %_ZN4bsslL18ssl_lookup_sessionEPNS_13SSL_HANDSHAKEEPSt10unique_ptrI14ssl_session_stNS_8internal7DeleterEENS_4SpanIKhEE.exit.thread

bb.r:                                             ; preds = %_ZN4bssl25ssl_session_is_time_validEPK6ssl_stPK14ssl_session_st.exit.i, %_ZN4bssl25ssl_session_is_time_validEPK6ssl_stPK14ssl_session_st.exit.thread35.i
  %i.bw = load ptr, ptr %i.x, align 8, !tbaa !170 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 224
  call void @_ZN4bssl18ssl_update_counterEP10ssl_ctx_stRSt6atomicIiEb(ptr noundef %i.bw, ptr noundef nonnull align 4 dereferenceable(4) %i.bx, i1 noundef zeroext true) #16
  %i.by = load ptr, ptr %i.x, align 8, !tbaa !170
  %i.bz = call fastcc noundef zeroext i1 @_ZN4bsslL14remove_sessionEP10ssl_ctx_stP14ssl_session_stb(ptr noundef %i.by, ptr noundef nonnull %.sroa.03.231.i, i1 noundef zeroext true) ; 0 uses
  %i.ca = call i32 @CRYPTO_refcount_dec_and_test_zero(ptr noundef nonnull align 4 dereferenceable(4) %.sroa.03.231.i) #16
  %.not.i.i.i.i.i.i34.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i.i.i.i.i34.i, label %_ZN4bsslL18ssl_lookup_sessionEPNS_13SSL_HANDSHAKEEPSt10unique_ptrI14ssl_session_stNS_8internal7DeleterEENS_4SpanIKhEE.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN14ssl_session_stD2Ev(ptr noundef nonnull align 8 dead_on_return(456) dereferenceable(456) %.sroa.03.231.i) #16
  call void @OPENSSL_free(ptr noundef nonnull align 4 dereferenceable(4) %.sroa.03.231.i) #16
  br label %_ZN4bsslL18ssl_lookup_sessionEPNS_13SSL_HANDSHAKEEPSt10unique_ptrI14ssl_session_stNS_8internal7DeleterEENS_4SpanIKhEE.exit.thread

_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit35.i: ; preds = %_ZN4bssl25ssl_session_is_time_validEPK6ssl_stPK14ssl_session_st.exit.i
  %i.cb = load ptr, ptr %i.x, align 8, !tbaa !170 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 232
  call void @_ZN4bssl18ssl_update_counterEP10ssl_ctx_stRSt6atomicIiEb(ptr noundef %i.cb, ptr noundef nonnull align 4 dereferenceable(4) %i.cc, i1 noundef zeroext true) #16
  br label %_ZN4bsslL18ssl_lookup_sessionEPNS_13SSL_HANDSHAKEEPSt10unique_ptrI14ssl_session_stNS_8internal7DeleterEENS_4SpanIKhEE.exit.thread

_ZN4bsslL18ssl_lookup_sessionEPNS_13SSL_HANDSHAKEEPSt10unique_ptrI14ssl_session_stNS_8internal7DeleterEENS_4SpanIKhEE.exit.thread: ; preds = %.thread26.i, %bb.r, %bb.s, %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit35.i, %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit.i
  %i.cd = phi ptr [ null, %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit.i ], [ %.sroa.03.231.i, %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit35.i ], [ null, %bb.s ], [ null, %bb.r ], [ null, %.thread26.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.t

_ZN4bsslL18ssl_lookup_sessionEPNS_13SSL_HANDSHAKEEPSt10unique_ptrI14ssl_session_stNS_8internal7DeleterEENS_4SpanIKhEE.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.w

bb.t:                                             ; preds = %._crit_edge, %_ZN4bsslL18ssl_lookup_sessionEPNS_13SSL_HANDSHAKEEPSt10unique_ptrI14ssl_session_stNS_8internal7DeleterEENS_4SpanIKhEE.exit.thread26, %_ZN4bsslL18ssl_lookup_sessionEPNS_13SSL_HANDSHAKEEPSt10unique_ptrI14ssl_session_stNS_8internal7DeleterEENS_4SpanIKhEE.exit.thread
  %i.ce = phi ptr [ null, %_ZN4bsslL18ssl_lookup_sessionEPNS_13SSL_HANDSHAKEEPSt10unique_ptrI14ssl_session_stNS_8internal7DeleterEENS_4SpanIKhEE.exit.thread26 ], [ %.pre, %._crit_edge ], [ %i.cd, %_ZN4bsslL18ssl_lookup_sessionEPNS_13SSL_HANDSHAKEEPSt10unique_ptrI14ssl_session_stNS_8internal7DeleterEENS_4SpanIKhEE.exit.thread ]
  %i.cf = phi i8 [ %i.q, %_ZN4bsslL18ssl_lookup_sessionEPNS_13SSL_HANDSHAKEEPSt10unique_ptrI14ssl_session_stNS_8internal7DeleterEENS_4SpanIKhEE.exit.thread26 ], [ 1, %._crit_edge ], [ %i.q, %_ZN4bsslL18ssl_lookup_sessionEPNS_13SSL_HANDSHAKEEPSt10unique_ptrI14ssl_session_stNS_8internal7DeleterEENS_4SpanIKhEE.exit.thread ]
  store ptr null, ptr %8, align 8, !tbaa !50
  %i.cg = load ptr, ptr %1, align 8, !tbaa !50    ; 4 uses
  store ptr %i.ce, ptr %1, align 8, !tbaa !50
  %.not.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEEaSEOS4_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ch = call i32 @CRYPTO_refcount_dec_and_test_zero(ptr noundef nonnull align 4 dereferenceable(4) %i.cg) #16
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.ch, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEEaSEOS4_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZN14ssl_session_stD2Ev(ptr noundef nonnull align 8 dead_on_return(456) dereferenceable(456) %i.cg) #16
  call void @OPENSSL_free(ptr noundef nonnull align 4 dereferenceable(4) %i.cg) #16
  br label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEEaSEOS4_.exit

_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEEaSEOS4_.exit: ; preds = %bb.t, %bb.u, %bb.v
  store i8 %i.cf, ptr %2, align 1, !tbaa !310
  %i.ci = load i8, ptr %i.b, align 1, !tbaa !310, !range !321, !noundef !322
  store i8 %i.ci, ptr %3, align 1, !tbaa !310
  br label %bb.w

bb.w:                                             ; preds = %_ZN4bsslL18ssl_lookup_sessionEPNS_13SSL_HANDSHAKEEPSt10unique_ptrI14ssl_session_stNS_8internal7DeleterEENS_4SpanIKhEE.exit, %bb.d, %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEEaSEOS4_.exit, %bb.e
  %.1 = phi i32 [ 1, %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEEaSEOS4_.exit ], [ 11, %bb.e ], [ 10, %_ZN4bsslL18ssl_lookup_sessionEPNS_13SSL_HANDSHAKEEPSt10unique_ptrI14ssl_session_stNS_8internal7DeleterEENS_4SpanIKhEE.exit ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.cj = load ptr, ptr %8, align 8, !tbaa !50    ; 4 uses
  %.not.i23 = icmp eq ptr %i.cj, null
  br i1 %.not.i23, label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ck = call i32 @CRYPTO_refcount_dec_and_test_zero(ptr noundef nonnull align 4 dereferenceable(4) %i.cj) #16
  %.not.i.i.i.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZN14ssl_session_stD2Ev(ptr noundef nonnull align 8 dead_on_return(456) dereferenceable(456) %i.cj) #16
  call void @OPENSSL_free(ptr noundef nonnull align 4 dereferenceable(4) %i.cj) #16
  br label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit

_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit: ; preds = %bb.w, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  ret i32 %.1
}

declare i32 @SSL_get_options(ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN4bssl30ssl_client_hello_get_extensionEPK22ssl_early_callback_ctxP6cbs_stt(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

declare i64 @CBS_len(ptr noundef) local_unnamed_addr #3

declare noundef i32 @_ZN4bssl18ssl_process_ticketEPNS_13SSL_HANDSHAKEEPSt10unique_ptrI14ssl_session_stNS_8internal7DeleterEEPbNS_4SpanIKhEESB_(ptr noundef, ptr noundef, ptr noundef, ptr, i64, ptr noundef byval(%"class.bssl::Span") align 8) local_unnamed_addr #3
end_hunk_1
