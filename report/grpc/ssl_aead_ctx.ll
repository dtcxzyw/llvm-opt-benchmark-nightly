Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/ssl_aead_ctx?download=true
inline.NumInlined: 208
inline.NumDeleted: 93
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4bssl14SSLAEADContext6CreateE20evp_aead_direction_ttPK13ssl_cipher_stNS_4SpanIKhEES7_S7_:bb.a

.thread:                                          ; preds = %bb.o
  %i.an = load i8, ptr %i.s, align 1, !tbaa !21
  %i.ao = sub i8 %i.an, %i.ag
  store i8 %i.ao, ptr %i.s, align 1, !tbaa !21
  %i.ap = load i8, ptr %i.t, align 2
  %i.aq = or i8 %i.ap, 1
  store i8 %i.aq, ptr %i.t, align 2
  br label %bb.w

bb.q:                                             ; preds = %bb.o
  %i.ar = load i8, ptr %i.t, align 2
  %i.as = or i8 %i.ar, 4
  store i8 %i.as, ptr %i.t, align 2
  store i8 8, ptr %i.s, align 1, !tbaa !21
  br label %bb.w

bb.r:                                             ; preds = %bb.n
  %i.at = load i8, ptr %i.t, align 2
  store i8 8, ptr %i.s, align 1, !tbaa !21
  %i.au = or i8 %i.at, 20
  store i8 %i.au, ptr %i.t, align 2
  br label %bb.w

bb.s:                                             ; preds = %bb.h
  %i.av = add i64 %i.i, %5
  %i.aw = add i64 %i.av, %i.l                     ; 2 uses
  %i.ax = icmp ult i64 %i.aw, 81
  br i1 %i.ax, label %_ZL14OPENSSL_memcpyPvPKvm.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @abort() #12
  unreachable

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %bb.s
  %i.ay = load ptr, ptr %6, align 8, !tbaa !44
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.e, ptr readonly align 1 %i.ay, i64 %i.l, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l ; 2 uses
  %i.ba = icmp eq i64 %5, 0
  br i1 %i.ba, label %_ZL14OPENSSL_memcpyPvPKvm.exit8, label %bb.u

bb.u:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.az, ptr readonly align 1 %4, i64 %5, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit8

_ZL14OPENSSL_memcpyPvPKvm.exit8:                  ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit, %bb.u
  %i.bb = icmp eq i64 %i.i, 0
  br i1 %i.bb, label %_ZL14OPENSSL_memcpyPvPKvm.exit9, label %bb.v

bb.v:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit8
  %i.bc = load ptr, ptr %7, align 8, !tbaa !44
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 %5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr readonly align 1 %i.bc, i64 %i.i, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit9

_ZL14OPENSSL_memcpyPvPKvm.exit9:                  ; preds = %bb.v, %_ZL14OPENSSL_memcpyPvPKvm.exit8
  %i.be = load i8, ptr %i.t, align 2
  %i.bf = or i8 %i.be, 11
  store i8 %i.bf, ptr %i.t, align 2
  br label %bb.w

bb.w:                                             ; preds = %bb.q, %.thread, %bb.r, %_ZL14OPENSSL_memcpyPvPKvm.exit9
  %.sroa.014.0 = phi ptr [ %4, %bb.r ], [ %4, %bb.q ], [ %i.e, %_ZL14OPENSSL_memcpyPvPKvm.exit9 ], [ %4, %.thread ]
  %.sroa.4.0 = phi i64 [ %5, %bb.r ], [ %5, %bb.q ], [ %i.aw, %_ZL14OPENSSL_memcpyPvPKvm.exit9 ], [ %5, %.thread ]
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.bh = invoke i32 @EVP_AEAD_CTX_init_with_direction(ptr noundef nonnull %i.q, ptr noundef %i.bg, ptr noundef %.sroa.014.0, i64 noundef %.sroa.4.0, i64 noundef 0, i32 noundef %1)
          to label %bb.x unwind label %bb.p

bb.x:                                             ; preds = %bb.w
  %.not7 = icmp eq i32 %i.bh, 0
  br i1 %.not7, label %bb.y, label %.thread23

.thread23:                                        ; preds = %bb.x
  store i64 %i.x, ptr %0, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  br label %_ZNSt10unique_ptrIN4bssl14SSLAEADContextENS0_8internal7DeleterEED2Ev.exit

bb.y:                                             ; preds = %bb.x
  store ptr null, ptr %0, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  invoke void @EVP_AEAD_CTX_cleanup(ptr noundef nonnull align 8 dereferenceable(576) %i.q)
          to label %_ZN4bssl14SSLAEADContextD2Ev.exit.i.i.i.i unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #12
  unreachable

_ZN4bssl14SSLAEADContextD2Ev.exit.i.i.i.i:        ; preds = %bb.y
  invoke void @OPENSSL_free(ptr noundef nonnull %i.o)
          to label %_ZNSt10unique_ptrIN4bssl14SSLAEADContextENS0_8internal7DeleterEED2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %_ZN4bssl14SSLAEADContextD2Ev.exit.i.i.i.i
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #12
  unreachable

_ZNSt10unique_ptrIN4bssl14SSLAEADContextENS0_8internal7DeleterEED2Ev.exit: ; preds = %.thread23, %.thread21, %_ZN4bssl14SSLAEADContextD2Ev.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt10unique_ptrIN4bssl14SSLAEADContextENS0_8internal7DeleterEED2Ev.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

declare noundef zeroext i1 @_ZN4bssl30ssl_protocol_version_from_wireEPtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN4bssl23ssl_cipher_get_evp_aeadEPPK11evp_aead_stPmS4_PK13ssl_cipher_stt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

declare void @ERR_put_error(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @EVP_AEAD_nonce_length(ptr noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

declare i32 @EVP_AEAD_CTX_init_with_direction(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN4bssl14SSLAEADContextENS0_8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN4bssl8internal7DeleterclINS_14SSLAEADContextEEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @EVP_AEAD_CTX_cleanup(ptr noundef nonnull align 8 dereferenceable(576) %i.b)
          to label %_ZN4bssl14SSLAEADContextD2Ev.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #12
  unreachable

_ZN4bssl14SSLAEADContextD2Ev.exit.i.i.i:          ; preds = %bb.b
  invoke void @OPENSSL_free(ptr noundef nonnull %i.a)
          to label %_ZN4bssl8internal7DeleterclINS_14SSLAEADContextEEEvPT_.exit unwind label %bb.d

_ZN4bssl8internal7DeleterclINS_14SSLAEADContextEEEvPT_.exit: ; preds = %_ZN4bssl14SSLAEADContextD2Ev.exit.i.i.i, %bb.a
  ret void

bb.d:                                             ; preds = %_ZN4bssl14SSLAEADContextD2Ev.exit.i.i.i
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #12
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4bssl14SSLAEADContext24CreatePlaceholderForQUICEPK13ssl_cipher_st(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.a = tail call ptr @OPENSSL_malloc(i64 noundef 600), !noalias !45 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN4bssl10MakeUniqueINS_14SSLAEADContextEJRPK13ssl_cipher_stEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.a, align 8, !tbaa !11, !noalias !45
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @EVP_AEAD_CTX_zero(ptr noundef nonnull align 8 dereferenceable(576) %i.c), !noalias !45
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 596
  store i8 0, ptr %i.d, align 4, !tbaa !20, !noalias !45
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 597
  store i8 0, ptr %i.e, align 1, !tbaa !21, !noalias !45
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 598 ; 2 uses
  %i.g = load i8, ptr %i.f, align 2, !noalias !45
  %i.h = and i8 %i.g, -32
  store i8 %i.h, ptr %i.f, align 2, !noalias !45
  br label %_ZN4bssl10MakeUniqueINS_14SSLAEADContextEJRPK13ssl_cipher_stEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_.exit

_ZN4bssl10MakeUniqueINS_14SSLAEADContextEJRPK13ssl_cipher_stEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_.exit: ; preds = %bb.a, %bb.b
  store ptr %i.a, ptr %0, align 8, !tbaa !25, !alias.scope !45
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 256) i64 @_ZNK4bssl14SSLAEADContext16ExplicitNonceLenEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(599) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 598
  %i.b = load i8, ptr %i.a, align 2
  %i.c = trunc i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 597
  %i.e = load i8, ptr %i.d, align 1
  %narrow = select i1 %i.c, i8 %i.e, i8 0
  %.0 = zext i8 %narrow to i64
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK4bssl14SSLAEADContext9SuffixLenEPmmm(ptr noundef nonnull align 8 dereferenceable(599) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %3, ptr %1, align 8, !tbaa !29
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = tail call i32 @EVP_AEAD_CTX_tag_len(ptr noundef nonnull %i.b, ptr noundef %1, i64 noundef %2, i64 noundef %3)
  %i.d = icmp ne i32 %i.c, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.0
}

declare i32 @EVP_AEAD_CTX_tag_len(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK4bssl14SSLAEADContext13CiphertextLenEPmmm(ptr noundef nonnull align 8 dereferenceable(599) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = load ptr, ptr %0, align 8, !tbaa !11
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNK4bssl14SSLAEADContext9SuffixLenEPmmm.exit.thread, label %_ZNK4bssl14SSLAEADContext9SuffixLenEPmmm.exit

_ZNK4bssl14SSLAEADContext9SuffixLenEPmmm.exit:    ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = call i32 @EVP_AEAD_CTX_tag_len(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, i64 noundef %2, i64 noundef %3)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %_ZNK4bssl14SSLAEADContext9SuffixLenEPmmm.exit._crit_edge

_ZNK4bssl14SSLAEADContext9SuffixLenEPmmm.exit._crit_edge: ; preds = %_ZNK4bssl14SSLAEADContext9SuffixLenEPmmm.exit
  %.pre = load i64, ptr %i.a, align 8, !tbaa !29
  br label %_ZNK4bssl14SSLAEADContext9SuffixLenEPmmm.exit.thread

_ZNK4bssl14SSLAEADContext9SuffixLenEPmmm.exit.thread: ; preds = %bb.a, %_ZNK4bssl14SSLAEADContext9SuffixLenEPmmm.exit._crit_edge
  %i.e = phi i64 [ %.pre, %_ZNK4bssl14SSLAEADContext9SuffixLenEPmmm.exit._crit_edge ], [ %3, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 598
  %i.g = load i8, ptr %i.f, align 2
  %i.h = trunc i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 597
  %i.j = load i8, ptr %i.i, align 1
  %narrow.i = select i1 %i.h, i8 %i.j, i8 0
  %.0.i8 = zext i8 %narrow.i to i64
  %i.k = add i64 %i.e, %2
  %i.l = add i64 %i.k, %.0.i8                     ; 4 uses
  store i64 %i.l, ptr %i.a, align 8, !tbaa !29
  %i.m = icmp ult i64 %i.l, %2
  %i.n = icmp ugt i64 %i.l, 65534
  %or.cond = or i1 %i.m, %i.n
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK4bssl14SSLAEADContext9SuffixLenEPmmm.exit.thread
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 69, ptr noundef nonnull @.str, i32 noundef 156)
  br label %bb.d

bb.c:                                             ; preds = %_ZNK4bssl14SSLAEADContext9SuffixLenEPmmm.exit.thread
  store i64 %i.l, ptr %1, align 8, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %_ZNK4bssl14SSLAEADContext9SuffixLenEPmmm.exit, %bb.c, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.c ], [ false, %_ZNK4bssl14SSLAEADContext9SuffixLenEPmmm.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZNK4bssl14SSLAEADContext11MaxOverheadEv(ptr noundef nonnull align 8 dereferenceable(599) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 598
  %i.b = load i8, ptr %i.a, align 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 597
  %i.d = load i8, ptr %i.c, align 1
  %i.e = load ptr, ptr %0, align 8, !tbaa !11
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = tail call ptr @EVP_AEAD_CTX_aead(ptr noundef nonnull %i.f)
  %i.h = tail call i64 @EVP_AEAD_max_overhead(ptr noundef %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  %i.j = trunc i8 %i.b to i1
  %narrow.i = select i1 %i.j, i8 %i.d, i8 0
  %.0.i = zext i8 %narrow.i to i64
  %i.k = add i64 %i.i, %.0.i
  ret i64 %i.k
}

declare i64 @EVP_AEAD_max_overhead(ptr noundef) local_unnamed_addr #3

declare ptr @EVP_AEAD_CTX_aead(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZNK4bssl14SSLAEADContext15MaxSealInputLenEm(ptr noundef nonnull align 8 dereferenceable(599) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 598
  %i.b = load i8, ptr %i.a, align 2
  %i.c = trunc i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 597
  %i.e = load i8, ptr %i.d, align 1
  %narrow.i = select i1 %i.c, i8 %i.e, i8 0
  %.0.i = zext i8 %narrow.i to i64                ; 2 uses
  %.not = icmp ugt i64 %1, %.0.i
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = sub nuw i64 %1, %.0.i                    ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !11
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = tail call ptr @EVP_AEAD_CTX_aead(ptr noundef nonnull %i.h)
  %i.j = tail call i64 @EVP_AEAD_max_overhead(ptr noundef %i.i) ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !11
  %i.l = tail call i32 @SSL_CIPHER_is_block_cipher(ptr noundef %i.k)
  %.not20 = icmp eq i32 %i.l, 0
  br i1 %.not20, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.o = load i32, ptr %i.n, align 4, !tbaa !42
  switch i32 %i.o, label %bb.f [
    i32 2, label %bb.g
    i32 4, label %bb.g
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @abort() #12
  unreachable

bb.g:                                             ; preds = %bb.d, %bb.d, %bb.e
  %.0 = phi i64 [ 7, %bb.e ], [ 15, %bb.d ], [ 15, %bb.d ] ; 2 uses
  %i.p = xor i64 %.0, -1
  %i.q = and i64 %i.f, %i.p
  %i.r = sub i64 %i.j, %.0
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.015 = phi i64 [ %i.q, %bb.g ], [ %i.f, %bb.c ]
  %.014 = phi i64 [ %i.r, %bb.g ], [ %i.j, %bb.c ]
  %i.s = tail call i64 @llvm.usub.sat.i64(i64 %.015, i64 %.014)
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.a, %bb.h
  %.016 = phi i64 [ %i.s, %bb.h ], [ 0, %bb.a ], [ %i.f, %bb.b ]
  ret i64 %.016
}

declare i32 @SSL_CIPHER_is_block_cipher(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden { ptr, i64 } @_ZN4bssl14SSLAEADContext17GetAdditionalDataEPhhtmmNS_4SpanIKhEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(599) %0, ptr noundef %1, i8 noundef zeroext %2, i16 noundef zeroext %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef readonly byval(%"class.bssl::Span") align 8 captures(none) %6) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 598 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2
  %i.c = and i8 %i.b, 16
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.020.0.copyload = load ptr, ptr %6, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @llvm.bswap.i64(i64 %4)
  store i64 %i.d, ptr %1, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %2, ptr %i.e, align 1, !tbaa !41
  %i.f = lshr i16 %3, 8
  %i.g = trunc nuw i16 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.g, ptr %i.h, align 1, !tbaa !41
  %i.i = trunc i16 %3 to i8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.i, ptr %i.j, align 1, !tbaa !41
  %i.k = load i8, ptr %i.a, align 2
  %i.l = and i8 %i.k, 8
  %.not19 = icmp eq i8 %i.l, 0
  br i1 %.not19, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = lshr i64 %5, 8
  %i.n = trunc i64 %i.m to i8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %i.n, ptr %i.o, align 1, !tbaa !41
  %i.p = trunc i64 %5 to i8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.p, ptr %i.q, align 1, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.sroa.020.0 = phi ptr [ %.sroa.020.0.copyload, %bb.b ], [ %1, %bb.d ], [ %1, %bb.c ]
  %.sroa.3.0 = phi i64 [ %.sroa.3.0.copyload, %bb.b ], [ 13, %bb.d ], [ 11, %bb.c ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.020.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4bssl14SSLAEADContext4OpenEPNS_4SpanIhEEhtmNS1_IKhEES2_(ptr noundef nonnull align 8 dereferenceable(599) %0, ptr nofree noundef writeonly captures(none) %1, i8 noundef zeroext %2, i16 noundef zeroext %3, i64 noundef %4, ptr nofree noundef readonly byval(%"class.bssl::Span") align 8 captures(none) %5, ptr nofree noundef byval(%"class.bssl::Span.2") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [13 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 16               ; 24 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !11
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 598 ; 2 uses
  %i.f = load i8, ptr %i.e, align 2               ; 3 uses
  %i.g = and i8 %i.f, 8
  %.not28 = icmp eq i8 %i.g, 0
  br i1 %.not28, label %_ZNK4bssl14SSLAEADContext11MaxOverheadEv.exit, label %bb.e

_ZNK4bssl14SSLAEADContext11MaxOverheadEv.exit:    ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 597
  %i.i = load i8, ptr %i.h, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = tail call ptr @EVP_AEAD_CTX_aead(ptr noundef nonnull %i.j)
  %i.l = tail call i64 @EVP_AEAD_max_overhead(ptr noundef %i.k)
  %i.m = trunc i8 %i.f to i1
  %narrow.i.i = select i1 %i.m, i8 %i.i, i8 0
  %.0.i.i = zext i8 %narrow.i.i to i64
  %i.n = add i64 %i.l, %.0.i.i                    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !48   ; 2 uses
  %.not29 = icmp ult i64 %i.p, %i.n
  br i1 %.not29, label %.thread, label %bb.d

.thread:                                          ; preds = %_ZNK4bssl14SSLAEADContext11MaxOverheadEv.exit
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 112, ptr noundef nonnull @.str, i32 noundef 242)
  br label %bb.u

bb.d:                                             ; preds = %_ZNK4bssl14SSLAEADContext11MaxOverheadEv.exit
  %i.q = sub nuw i64 %i.p, %i.n
  %.pre = load i8, ptr %i.e, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = phi i8 [ %i.f, %bb.c ], [ %.pre, %bb.d ] ; 4 uses
  %.124 = phi i64 [ 0, %bb.c ], [ %i.q, %bb.d ]   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %.sroa.041.0.copyload = load ptr, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  %i.s = and i8 %i.r, 16
  %.not.i33 = icmp eq i8 %i.s, 0
  br i1 %.not.i33, label %bb.f, label %_ZN4bssl14SSLAEADContext17GetAdditionalDataEPhhtmmNS_4SpanIKhEE.exit

bb.f:                                             ; preds = %bb.e
  %i.t = tail call noundef i64 @llvm.bswap.i64(i64 %4)
  store i64 %i.t, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %2, ptr %i.u, align 8, !tbaa !41
  %i.v = lshr i16 %3, 8
  %i.w = trunc nuw i16 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 %i.w, ptr %i.x, align 1, !tbaa !41
  %i.y = trunc i16 %3 to i8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 %i.y, ptr %i.z, align 2, !tbaa !41
  %i.aa = and i8 %i.r, 8
  %.not19.i = icmp eq i8 %i.aa, 0
  br i1 %.not19.i, label %bb.g, label %_ZN4bssl14SSLAEADContext17GetAdditionalDataEPhhtmmNS_4SpanIKhEE.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = lshr i64 %.124, 8
  %i.ac = trunc i64 %i.ab to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !41
  %i.ae = trunc i64 %.124 to i8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 %i.ae, ptr %i.af, align 4, !tbaa !41
  br label %_ZN4bssl14SSLAEADContext17GetAdditionalDataEPhhtmmNS_4SpanIKhEE.exit

_ZN4bssl14SSLAEADContext17GetAdditionalDataEPhhtmmNS_4SpanIKhEE.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.020.0.i = phi ptr [ %i.a, %bb.f ], [ %i.a, %bb.g ], [ %.sroa.041.0.copyload, %bb.e ]
  %.sroa.3.0.i = phi i64 [ 11, %bb.f ], [ 13, %bb.g ], [ %.sroa.2.0.copyload, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.ag = and i8 %i.r, 4
  %.not30 = icmp eq i8 %i.ag, 0                   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !20  ; 6 uses
  br i1 %.not30, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN4bssl14SSLAEADContext17GetAdditionalDataEPhhtmmNS_4SpanIKhEE.exit
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 597
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !21
  %i.am = zext i8 %i.al to i64
  %i.an = sub nsw i64 %i.aj, %i.am                ; 3 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_ZL14OPENSSL_memsetPvim.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 0, i64 %i.an, i1 false)
  br label %_ZL14OPENSSL_memsetPvim.exit

bb.j:                                             ; preds = %_ZN4bssl14SSLAEADContext17GetAdditionalDataEPhhtmmNS_4SpanIKhEE.exit
  %i.ap = icmp eq i8 %i.ai, 0
  br i1 %i.ap, label %_ZL14OPENSSL_memsetPvim.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = zext i8 %i.ai to i64                    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 584
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull readonly align 8 %i.ar, i64 %i.aq, i1 false)
  br label %_ZL14OPENSSL_memsetPvim.exit

_ZL14OPENSSL_memsetPvim.exit:                     ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.as = phi i8 [ %i.ai, %bb.i ], [ %i.ai, %bb.h ], [ 0, %bb.j ], [ %i.ai, %bb.k ] ; 4 uses
  %.027 = phi i64 [ %i.an, %bb.i ], [ 0, %bb.h ], [ 0, %bb.j ], [ %i.aq, %bb.k ] ; 3 uses
  %i.at = trunc i8 %i.r to i1
  br i1 %i.at, label %bb.l, label %bb.p

bb.l:                                             ; preds = %_ZL14OPENSSL_memsetPvim.exit
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !48 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 597
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !21  ; 2 uses
  %i.ay = zext i8 %i.ax to i64                    ; 5 uses
  %i.az = icmp ult i64 %i.av, %i.ay
  br i1 %i.az, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 112, ptr noundef nonnull @.str, i32 noundef 269)
  br label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.ba = load ptr, ptr %6, align 8, !tbaa !50    ; 2 uses
  %i.bb = icmp eq i8 %i.ax, 0
  br i1 %i.bb, label %_ZNK4bssl4SpanIhE7subspanEmm.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 %.027
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr readonly align 1 %i.ba, i64 %i.ay, i1 false)
  br label %_ZNK4bssl4SpanIhE7subspanEmm.exit

_ZNK4bssl4SpanIhE7subspanEmm.exit:                ; preds = %bb.o, %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ay
  %i.be = sub nuw i64 %i.av, %i.ay
  store ptr %i.bd, ptr %6, align 8
  store i64 %i.be, ptr %i.au, align 8
  br label %bb.q

bb.p:                                             ; preds = %_ZL14OPENSSL_memsetPvim.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 %.027
  %i.bg = tail call noundef i64 @llvm.bswap.i64(i64 %4)
  store i64 %i.bg, ptr %i.bf, align 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 597
  %.pre44 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !21
  %.pre45 = zext i8 %.pre44 to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNK4bssl4SpanIhE7subspanEmm.exit
  %.pre-phi = phi i64 [ %.pre45, %bb.p ], [ %i.ay, %_ZNK4bssl4SpanIhE7subspanEmm.exit ]
  %i.bh = add nsw i64 %.027, %.pre-phi
  br i1 %.not30, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.q
  %i.bi = zext i8 %i.as to i64                    ; 6 uses
  %.not = icmp eq i8 %i.as, 0
  br i1 %.not, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 3 uses
  %min.iters.check = icmp ult i8 %i.as, 4
  br i1 %min.iters.check, label %_ZN4bssl13InplaceVectorIhLm12EEixEm.exit.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check51 = icmp ult i8 %i.as, 32
  br i1 %min.iters.check51, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bk = and i64 %i.bi, 28
  %n.vec = and i64 %i.bi, 224                     ; 9 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 600
  %wide.load = load <16 x i8>, ptr %i.bj, align 8, !tbaa !41
  %wide.load52 = load <16 x i8>, ptr %i.bl, align 8, !tbaa !41
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load53 = load <16 x i8>, ptr %i.b, align 16, !tbaa !41
  %wide.load54 = load <16 x i8>, ptr %i.bm, align 16, !tbaa !41
  %i.bn = xor <16 x i8> %wide.load53, %wide.load
  %i.bo = xor <16 x i8> %wide.load54, %wide.load52
  store <16 x i8> %i.bn, ptr %i.b, align 16, !tbaa !41
  store <16 x i8> %i.bo, ptr %i.bm, align 16, !tbaa !41
  %i.bp = icmp eq i64 %n.vec, 32
  br i1 %i.bp, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 632
  %wide.load.1 = load <16 x i8>, ptr %i.bq, align 8, !tbaa !41
  %wide.load52.1 = load <16 x i8>, ptr %i.br, align 8, !tbaa !41
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %wide.load53.1 = load <16 x i8>, ptr %i.bs, align 16, !tbaa !41
  %wide.load54.1 = load <16 x i8>, ptr %i.bt, align 16, !tbaa !41
  %i.bu = xor <16 x i8> %wide.load53.1, %wide.load.1
  %i.bv = xor <16 x i8> %wide.load54.1, %wide.load52.1
  store <16 x i8> %i.bu, ptr %i.bs, align 16, !tbaa !41
  store <16 x i8> %i.bv, ptr %i.bt, align 16, !tbaa !41
  %i.bw = icmp eq i64 %n.vec, 64
  br i1 %i.bw, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 664
  %wide.load.2 = load <16 x i8>, ptr %i.bx, align 8, !tbaa !41
  %wide.load52.2 = load <16 x i8>, ptr %i.by, align 8, !tbaa !41
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %wide.load53.2 = load <16 x i8>, ptr %i.bz, align 16, !tbaa !41
  %wide.load54.2 = load <16 x i8>, ptr %i.ca, align 16, !tbaa !41
  %i.cb = xor <16 x i8> %wide.load53.2, %wide.load.2
  %i.cc = xor <16 x i8> %wide.load54.2, %wide.load52.2
  store <16 x i8> %i.cb, ptr %i.bz, align 16, !tbaa !41
  store <16 x i8> %i.cc, ptr %i.ca, align 16, !tbaa !41
  %i.cd = icmp eq i64 %n.vec, 96
  br i1 %i.cd, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 696
  %wide.load.3 = load <16 x i8>, ptr %i.ce, align 8, !tbaa !41
  %wide.load52.3 = load <16 x i8>, ptr %i.cf, align 8, !tbaa !41
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %wide.load53.3 = load <16 x i8>, ptr %i.cg, align 16, !tbaa !41
  %wide.load54.3 = load <16 x i8>, ptr %i.ch, align 16, !tbaa !41
  %i.ci = xor <16 x i8> %wide.load53.3, %wide.load.3
  %i.cj = xor <16 x i8> %wide.load54.3, %wide.load52.3
  store <16 x i8> %i.ci, ptr %i.cg, align 16, !tbaa !41
  store <16 x i8> %i.cj, ptr %i.ch, align 16, !tbaa !41
  %i.ck = icmp eq i64 %n.vec, 128
  br i1 %i.ck, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 728
  %wide.load.4 = load <16 x i8>, ptr %i.cl, align 8, !tbaa !41
  %wide.load52.4 = load <16 x i8>, ptr %i.cm, align 8, !tbaa !41
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %wide.load53.4 = load <16 x i8>, ptr %i.cn, align 16, !tbaa !41
  %wide.load54.4 = load <16 x i8>, ptr %i.co, align 16, !tbaa !41
  %i.cp = xor <16 x i8> %wide.load53.4, %wide.load.4
  %i.cq = xor <16 x i8> %wide.load54.4, %wide.load52.4
  store <16 x i8> %i.cp, ptr %i.cn, align 16, !tbaa !41
  store <16 x i8> %i.cq, ptr %i.co, align 16, !tbaa !41
  %i.cr = icmp eq i64 %n.vec, 160
  br i1 %i.cr, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 760
  %wide.load.5 = load <16 x i8>, ptr %i.cs, align 8, !tbaa !41
  %wide.load52.5 = load <16 x i8>, ptr %i.ct, align 8, !tbaa !41
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 2 uses
  %wide.load53.5 = load <16 x i8>, ptr %i.cu, align 16, !tbaa !41
  %wide.load54.5 = load <16 x i8>, ptr %i.cv, align 16, !tbaa !41
  %i.cw = xor <16 x i8> %wide.load53.5, %wide.load.5
  %i.cx = xor <16 x i8> %wide.load54.5, %wide.load52.5
  store <16 x i8> %i.cw, ptr %i.cu, align 16, !tbaa !41
  store <16 x i8> %i.cx, ptr %i.cv, align 16, !tbaa !41
  %i.cy = icmp eq i64 %n.vec, 192
  br i1 %i.cy, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 792
  %wide.load.6 = load <16 x i8>, ptr %i.cz, align 8, !tbaa !41
  %wide.load52.6 = load <16 x i8>, ptr %i.da, align 8, !tbaa !41
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 2 uses
  %wide.load53.6 = load <16 x i8>, ptr %i.db, align 16, !tbaa !41
  %wide.load54.6 = load <16 x i8>, ptr %i.dc, align 16, !tbaa !41
  %i.dd = xor <16 x i8> %wide.load53.6, %wide.load.6
  %i.de = xor <16 x i8> %wide.load54.6, %wide.load52.6
  store <16 x i8> %i.dd, ptr %i.db, align 16, !tbaa !41
  store <16 x i8> %i.de, ptr %i.dc, align 16, !tbaa !41
  br label %middle.block

middle.block:                                     ; preds = %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %i.bi
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bk, 0
  br i1 %min.epilog.iters.check, label %_ZN4bssl13InplaceVectorIhLm12EEixEm.exit.preheader, label %vec.epilog.ph, !prof !51

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec55 = and i64 %i.bi, 252                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index56 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next59, %vec.epilog.vector.body ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.bj, i64 %index56
  %wide.load57 = load <4 x i8>, ptr %i.df, align 4, !tbaa !41
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 %index56 ; 2 uses
  %wide.load58 = load <4 x i8>, ptr %i.dg, align 4, !tbaa !41
  %i.dh = xor <4 x i8> %wide.load58, %wide.load57
  store <4 x i8> %i.dh, ptr %i.dg, align 4, !tbaa !41
  %index.next59 = add nuw i64 %index56, 4         ; 2 uses
  %i.di = icmp eq i64 %index.next59, %n.vec55
  br i1 %i.di, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !52

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n60 = icmp eq i64 %n.vec55, %i.bi
  br i1 %cmp.n60, label %.loopexit, label %_ZN4bssl13InplaceVectorIhLm12EEixEm.exit.preheader

_ZN4bssl13InplaceVectorIhLm12EEixEm.exit.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02543.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec55, %vec.epilog.middle.block ]
  br label %_ZN4bssl13InplaceVectorIhLm12EEixEm.exit

_ZN4bssl13InplaceVectorIhLm12EEixEm.exit:         ; preds = %_ZN4bssl13InplaceVectorIhLm12EEixEm.exit.preheader, %_ZN4bssl13InplaceVectorIhLm12EEixEm.exit
  %.02543 = phi i64 [ %i.do, %_ZN4bssl13InplaceVectorIhLm12EEixEm.exit ], [ %.02543.ph, %_ZN4bssl13InplaceVectorIhLm12EEixEm.exit.preheader ] ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.02543
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !41
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 %.02543 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !41
  %i.dn = xor i8 %i.dm, %i.dk
  store i8 %i.dn, ptr %i.dl, align 1, !tbaa !41
  %i.do = add nuw nsw i64 %.02543, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.do, %i.bi
  br i1 %exitcond.not, label %.loopexit, label %_ZN4bssl13InplaceVectorIhLm12EEixEm.exit, !llvm.loop !56

.loopexit:                                        ; preds = %_ZN4bssl13InplaceVectorIhLm12EEixEm.exit, %middle.block, %vec.epilog.middle.block, %.preheader, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dq = load ptr, ptr %6, align 8, !tbaa !50    ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !48 ; 3 uses
  %i.dt = call i32 @EVP_AEAD_CTX_open(ptr noundef nonnull %i.dp, ptr noundef %i.dq, ptr noundef nonnull %i.c, i64 noundef %i.ds, ptr noundef nonnull %i.b, i64 noundef %i.bh, ptr noundef %i.dq, i64 noundef %i.ds, ptr noundef %.sroa.020.0.i, i64 noundef %.sroa.3.0.i)
  %.not32 = icmp ne i32 %i.dt, 0                  ; 2 uses
  br i1 %.not32, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.loopexit
  %i.du = load i64, ptr %i.c, align 8, !tbaa !29
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.du, i64 %i.ds)
  store ptr %i.dq, ptr %1, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.speculated.i, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.s

bb.s:                                             ; preds = %.loopexit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.m
  %.2 = phi i1 [ false, %bb.m ], [ %.not32, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.u

bb.u:                                             ; preds = %.thread, %bb.t, %bb.b
  %.4 = phi i1 [ true, %bb.b ], [ %.2, %bb.t ], [ false, %.thread ]
  ret i1 %.4
}

declare i32 @EVP_AEAD_CTX_open(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4bssl14SSLAEADContext11SealScatterEPhS1_S1_htmNS_4SpanIKhEEPS3_mS5_m(ptr noundef nonnull align 8 dereferenceable(599) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i16 noundef zeroext %5, i64 noundef %6, ptr nofree noundef readonly byval(%"class.bssl::Span") align 8 captures(none) %7, ptr noundef %8, i64 noundef %9, ptr noundef %10, i64 noundef %11) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [13 x i8], align 8                ; 10 uses
  %i.c = alloca [24 x i8], align 16               ; 24 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 598 ; 4 uses
  %i.f = load i8, ptr %i.e, align 2
  %i.g = trunc i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 597 ; 4 uses
  %i.i = load i8, ptr %i.h, align 1
  %narrow.i = select i1 %i.g, i8 %i.i, i8 0
  %.0.i = zext i8 %narrow.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.j = load ptr, ptr %0, align 8, !tbaa !11
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZNK4bssl14SSLAEADContext9SuffixLenEPmmm.exit.thread, label %_ZNK4bssl14SSLAEADContext9SuffixLenEPmmm.exit

_ZNK4bssl14SSLAEADContext9SuffixLenEPmmm.exit.thread: ; preds = %bb.a
  store i64 %11, ptr %i.a, align 8, !tbaa !29
  br label %bb.c

_ZNK4bssl14SSLAEADContext9SuffixLenEPmmm.exit:    ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = call i32 @EVP_AEAD_CTX_tag_len(ptr noundef nonnull %i.k, ptr noundef nonnull %i.a, i64 noundef %9, i64 noundef %11)
  %.not72 = icmp eq i32 %i.l, 0
  br i1 %.not72, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK4bssl14SSLAEADContext9SuffixLenEPmmm.exit
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 200, ptr noundef nonnull @.str, i32 noundef 308)
  br label %_ZL15OPENSSL_memmovePvPKvm.exit64

bb.c:                                             ; preds = %_ZNK4bssl14SSLAEADContext9SuffixLenEPmmm.exit.thread, %_ZNK4bssl14SSLAEADContext9SuffixLenEPmmm.exit
  %.not = icmp eq ptr %8, %2
  %.pre81 = ptrtoint ptr %8 to i64                ; 6 uses
  br i1 %.not, label %._crit_edge80, label %bb.d

._crit_edge80:                                    ; preds = %bb.c
  %.pre82 = add i64 %9, %.pre81
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.n = add i64 %9, %.pre81                      ; 2 uses
  %i.o = icmp ule i64 %i.n, %i.m
  %i.p = add i64 %9, %i.m
  %i.q = icmp ule i64 %i.p, %.pre81
  %narrow.i.not = or i1 %i.o, %i.q
  br i1 %narrow.i.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge80, %bb.d
  %.pre-phi83 = phi i64 [ %.pre82, %._crit_edge80 ], [ %i.n, %bb.d ] ; 2 uses
  %i.r = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.s = icmp ugt i64 %.pre-phi83, %i.r           ; 2 uses
  %i.t = add i64 %.0.i, %i.r
  %i.u = icmp ugt i64 %i.t, %.pre81
  %narrow.i62 = and i1 %i.s, %i.u
  br i1 %narrow.i62, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i64, ptr %i.a, align 8, !tbaa !29
  %i.w = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.x = icmp ule i64 %.pre-phi83, %i.w
  %i.y = add i64 %i.v, %i.w
  %i.z = icmp ule i64 %i.y, %.pre81
  %narrow.i63.not = or i1 %i.x, %i.z
  br i1 %narrow.i63.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 189, ptr noundef nonnull @.str, i32 noundef 314)
  br label %_ZL15OPENSSL_memmovePvPKvm.exit64

bb.h:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %0, align 8, !tbaa !11
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ab = icmp eq i64 %9, 0
  br i1 %i.ab, label %_ZL15OPENSSL_memmovePvPKvm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %2, ptr readonly align 1 %8, i64 %9, i1 false)
  br label %_ZL15OPENSSL_memmovePvPKvm.exit

_ZL15OPENSSL_memmovePvPKvm.exit:                  ; preds = %bb.i, %bb.j
  %i.ac = icmp eq i64 %11, 0
  br i1 %i.ac, label %_ZL15OPENSSL_memmovePvPKvm.exit64, label %bb.k

bb.k:                                             ; preds = %_ZL15OPENSSL_memmovePvPKvm.exit
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %3, ptr readonly align 1 %10, i64 %11, i1 false)
  br label %_ZL15OPENSSL_memmovePvPKvm.exit64

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %.sroa.070.0.copyload = load ptr, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ad = load i8, ptr %i.e, align 2              ; 5 uses
  %i.ae = and i8 %i.ad, 16
  %.not.i65 = icmp eq i8 %i.ae, 0
  br i1 %.not.i65, label %bb.m, label %_ZN4bssl14SSLAEADContext17GetAdditionalDataEPhhtmmNS_4SpanIKhEE.exit

bb.m:                                             ; preds = %bb.l
  %i.af = call noundef i64 @llvm.bswap.i64(i64 %6)
  store i64 %i.af, ptr %i.b, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %4, ptr %i.ag, align 8, !tbaa !41
  %i.ah = lshr i16 %5, 8
  %i.ai = trunc nuw i16 %i.ah to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !41
  %i.ak = trunc i16 %5 to i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i8 %i.ak, ptr %i.al, align 2, !tbaa !41
  %i.am = and i8 %i.ad, 8
  %.not19.i = icmp eq i8 %i.am, 0
  br i1 %.not19.i, label %bb.n, label %_ZN4bssl14SSLAEADContext17GetAdditionalDataEPhhtmmNS_4SpanIKhEE.exit

bb.n:                                             ; preds = %bb.m
  %i.an = lshr i64 %9, 8
  %i.ao = trunc i64 %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !41
  %i.aq = trunc i64 %9 to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i8 %i.aq, ptr %i.ar, align 4, !tbaa !41
  br label %_ZN4bssl14SSLAEADContext17GetAdditionalDataEPhhtmmNS_4SpanIKhEE.exit

_ZN4bssl14SSLAEADContext17GetAdditionalDataEPhhtmmNS_4SpanIKhEE.exit: ; preds = %bb.l, %bb.m, %bb.n
  %.sroa.020.0.i = phi ptr [ %i.b, %bb.m ], [ %i.b, %bb.n ], [ %.sroa.070.0.copyload, %bb.l ]
  %.sroa.3.0.i = phi i64 [ 11, %bb.m ], [ 13, %bb.n ], [ %.sroa.2.0.copyload, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.as = and i8 %i.ad, 4
  %.not56 = icmp eq i8 %i.as, 0
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.au = load i8, ptr %i.at, align 4, !tbaa !20  ; 3 uses
  br i1 %.not56, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZN4bssl14SSLAEADContext17GetAdditionalDataEPhhtmmNS_4SpanIKhEE.exit
  %i.av = zext i8 %i.au to i64
  %i.aw = load i8, ptr %i.h, align 1, !tbaa !21
  %i.ax = zext i8 %i.aw to i64
  %i.ay = sub nsw i64 %i.av, %i.ax                ; 3 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_ZL14OPENSSL_memsetPvim.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.c, i8 0, i64 %i.ay, i1 false)
  br label %_ZL14OPENSSL_memsetPvim.exit

bb.q:                                             ; preds = %_ZN4bssl14SSLAEADContext17GetAdditionalDataEPhhtmmNS_4SpanIKhEE.exit
  %i.ba = icmp eq i8 %i.au, 0
  br i1 %i.ba, label %_ZL14OPENSSL_memsetPvim.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = zext i8 %i.au to i64                    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 584
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull readonly align 8 %i.bc, i64 %i.bb, i1 false)
  br label %_ZL14OPENSSL_memsetPvim.exit

_ZL14OPENSSL_memsetPvim.exit:                     ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.049 = phi i64 [ %i.ay, %bb.p ], [ 0, %bb.o ], [ 0, %bb.q ], [ %i.bb, %bb.r ] ; 2 uses
  %i.bd = and i8 %i.ad, 2
  %.not57 = icmp eq i8 %i.bd, 0
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 %.049 ; 2 uses
  br i1 %.not57, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZL14OPENSSL_memsetPvim.exit
  %i.bf = load i8, ptr %i.h, align 1, !tbaa !21
  %i.bg = zext i8 %i.bf to i64
  %i.bh = call i32 @RAND_bytes(ptr noundef nonnull %i.be, i64 noundef %i.bg)
  %.not58 = icmp eq i32 %i.bh, 0
  br i1 %.not58, label %bb.z, label %._crit_edge

._crit_edge:                                      ; preds = %bb.s
  %.pre = load i8, ptr %i.e, align 2
  br label %bb.u

bb.t:                                             ; preds = %_ZL14OPENSSL_memsetPvim.exit
  %i.bi = call noundef i64 @llvm.bswap.i64(i64 %6)
  store i64 %i.bi, ptr %i.be, align 1
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %bb.t
  %i.bj = phi i8 [ %.pre, %._crit_edge ], [ %i.ad, %bb.t ] ; 3 uses
  %i.bk = load i8, ptr %i.h, align 1, !tbaa !21   ; 2 uses
  %i.bl = zext i8 %i.bk to i64                    ; 3 uses
  %i.bm = add nsw i64 %.049, %i.bl
  %i.bn = trunc i8 %i.bj to i1
  br i1 %i.bn, label %bb.v, label %_ZL14OPENSSL_memcpyPvPKvm.exit67

bb.v:                                             ; preds = %bb.u
  %i.bo = add i64 %i.bl, %i.r
  %i.bp = icmp ugt i64 %i.bo, %.pre81
  %narrow.i66 = and i1 %i.s, %i.bp
  br i1 %narrow.i66, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 189, ptr noundef nonnull @.str, i32 noundef 360)
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.bq = icmp eq i8 %i.bk, 0
  br i1 %i.bq, label %_ZL14OPENSSL_memcpyPvPKvm.exit67, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !20
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bt
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull readonly align 1 %i.bu, i64 %i.bl, i1 false)
  %.pre79 = load i8, ptr %i.e, align 2
end_hunk_0
begin_hunk_1_@_ZN4bssl14SSLAEADContext11SealScatterEPhS1_S1_htmNS_4SpanIKhEEPS3_mS5_m:bb.a

iter.check:                                       ; preds = %.preheader
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 3 uses
  %min.iters.check = icmp ult i8 %i.by, 4
  br i1 %min.iters.check, label %_ZN4bssl13InplaceVectorIhLm12EEixEm.exit.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check91 = icmp ult i8 %i.by, 32
  br i1 %min.iters.check91, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cb = and i64 %i.bz, 28
  %n.vec = and i64 %i.bz, 224                     ; 9 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 600
  %wide.load = load <16 x i8>, ptr %i.ca, align 8, !tbaa !41
  %wide.load92 = load <16 x i8>, ptr %i.cc, align 8, !tbaa !41
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load93 = load <16 x i8>, ptr %i.c, align 16, !tbaa !41
  %wide.load94 = load <16 x i8>, ptr %i.cd, align 16, !tbaa !41
  %i.ce = xor <16 x i8> %wide.load93, %wide.load
  %i.cf = xor <16 x i8> %wide.load94, %wide.load92
  store <16 x i8> %i.ce, ptr %i.c, align 16, !tbaa !41
  store <16 x i8> %i.cf, ptr %i.cd, align 16, !tbaa !41
  %i.cg = icmp eq i64 %n.vec, 32
  br i1 %i.cg, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 632
  %wide.load.1 = load <16 x i8>, ptr %i.ch, align 8, !tbaa !41
  %wide.load92.1 = load <16 x i8>, ptr %i.ci, align 8, !tbaa !41
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %wide.load93.1 = load <16 x i8>, ptr %i.cj, align 16, !tbaa !41
  %wide.load94.1 = load <16 x i8>, ptr %i.ck, align 16, !tbaa !41
  %i.cl = xor <16 x i8> %wide.load93.1, %wide.load.1
  %i.cm = xor <16 x i8> %wide.load94.1, %wide.load92.1
  store <16 x i8> %i.cl, ptr %i.cj, align 16, !tbaa !41
  store <16 x i8> %i.cm, ptr %i.ck, align 16, !tbaa !41
  %i.cn = icmp eq i64 %n.vec, 64
  br i1 %i.cn, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 664
  %wide.load.2 = load <16 x i8>, ptr %i.co, align 8, !tbaa !41
  %wide.load92.2 = load <16 x i8>, ptr %i.cp, align 8, !tbaa !41
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  %wide.load93.2 = load <16 x i8>, ptr %i.cq, align 16, !tbaa !41
  %wide.load94.2 = load <16 x i8>, ptr %i.cr, align 16, !tbaa !41
  %i.cs = xor <16 x i8> %wide.load93.2, %wide.load.2
  %i.ct = xor <16 x i8> %wide.load94.2, %wide.load92.2
  store <16 x i8> %i.cs, ptr %i.cq, align 16, !tbaa !41
  store <16 x i8> %i.ct, ptr %i.cr, align 16, !tbaa !41
  %i.cu = icmp eq i64 %n.vec, 96
  br i1 %i.cu, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 696
  %wide.load.3 = load <16 x i8>, ptr %i.cv, align 8, !tbaa !41
  %wide.load92.3 = load <16 x i8>, ptr %i.cw, align 8, !tbaa !41
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 2 uses
  %wide.load93.3 = load <16 x i8>, ptr %i.cx, align 16, !tbaa !41
  %wide.load94.3 = load <16 x i8>, ptr %i.cy, align 16, !tbaa !41
  %i.cz = xor <16 x i8> %wide.load93.3, %wide.load.3
  %i.da = xor <16 x i8> %wide.load94.3, %wide.load92.3
  store <16 x i8> %i.cz, ptr %i.cx, align 16, !tbaa !41
  store <16 x i8> %i.da, ptr %i.cy, align 16, !tbaa !41
  %i.db = icmp eq i64 %n.vec, 128
  br i1 %i.db, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 728
  %wide.load.4 = load <16 x i8>, ptr %i.dc, align 8, !tbaa !41
  %wide.load92.4 = load <16 x i8>, ptr %i.dd, align 8, !tbaa !41
  %i.de = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 2 uses
  %wide.load93.4 = load <16 x i8>, ptr %i.de, align 16, !tbaa !41
  %wide.load94.4 = load <16 x i8>, ptr %i.df, align 16, !tbaa !41
  %i.dg = xor <16 x i8> %wide.load93.4, %wide.load.4
  %i.dh = xor <16 x i8> %wide.load94.4, %wide.load92.4
  store <16 x i8> %i.dg, ptr %i.de, align 16, !tbaa !41
  store <16 x i8> %i.dh, ptr %i.df, align 16, !tbaa !41
  %i.di = icmp eq i64 %n.vec, 160
  br i1 %i.di, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 760
  %wide.load.5 = load <16 x i8>, ptr %i.dj, align 8, !tbaa !41
  %wide.load92.5 = load <16 x i8>, ptr %i.dk, align 8, !tbaa !41
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 160 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.c, i64 176 ; 2 uses
  %wide.load93.5 = load <16 x i8>, ptr %i.dl, align 16, !tbaa !41
  %wide.load94.5 = load <16 x i8>, ptr %i.dm, align 16, !tbaa !41
  %i.dn = xor <16 x i8> %wide.load93.5, %wide.load.5
  %i.do = xor <16 x i8> %wide.load94.5, %wide.load92.5
  store <16 x i8> %i.dn, ptr %i.dl, align 16, !tbaa !41
  store <16 x i8> %i.do, ptr %i.dm, align 16, !tbaa !41
  %i.dp = icmp eq i64 %n.vec, 192
  br i1 %i.dp, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 792
  %wide.load.6 = load <16 x i8>, ptr %i.dq, align 8, !tbaa !41
  %wide.load92.6 = load <16 x i8>, ptr %i.dr, align 8, !tbaa !41
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.c, i64 208 ; 2 uses
  %wide.load93.6 = load <16 x i8>, ptr %i.ds, align 16, !tbaa !41
  %wide.load94.6 = load <16 x i8>, ptr %i.dt, align 16, !tbaa !41
  %i.du = xor <16 x i8> %wide.load93.6, %wide.load.6
  %i.dv = xor <16 x i8> %wide.load94.6, %wide.load92.6
  store <16 x i8> %i.du, ptr %i.ds, align 16, !tbaa !41
  store <16 x i8> %i.dv, ptr %i.dt, align 16, !tbaa !41
  br label %middle.block

middle.block:                                     ; preds = %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %i.bz
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cb, 0
  br i1 %min.epilog.iters.check, label %_ZN4bssl13InplaceVectorIhLm12EEixEm.exit.preheader, label %vec.epilog.ph, !prof !51

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec95 = and i64 %i.bz, 252                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index96 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next99, %vec.epilog.vector.body ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ca, i64 %index96
  %wide.load97 = load <4 x i8>, ptr %i.dw, align 4, !tbaa !41
  %i.dx = getelementptr inbounds nuw i8, ptr %i.c, i64 %index96 ; 2 uses
  %wide.load98 = load <4 x i8>, ptr %i.dx, align 4, !tbaa !41
  %i.dy = xor <4 x i8> %wide.load98, %wide.load97
  store <4 x i8> %i.dy, ptr %i.dx, align 4, !tbaa !41
  %index.next99 = add nuw i64 %index96, 4         ; 2 uses
  %i.dz = icmp eq i64 %index.next99, %n.vec95
  br i1 %i.dz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !57

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n100 = icmp eq i64 %n.vec95, %i.bz
  br i1 %cmp.n100, label %.loopexit, label %_ZN4bssl13InplaceVectorIhLm12EEixEm.exit.preheader

_ZN4bssl13InplaceVectorIhLm12EEixEm.exit.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.04877.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec95, %vec.epilog.middle.block ]
  br label %_ZN4bssl13InplaceVectorIhLm12EEixEm.exit

_ZN4bssl13InplaceVectorIhLm12EEixEm.exit:         ; preds = %_ZN4bssl13InplaceVectorIhLm12EEixEm.exit.preheader, %_ZN4bssl13InplaceVectorIhLm12EEixEm.exit
  %.04877 = phi i64 [ %i.ef, %_ZN4bssl13InplaceVectorIhLm12EEixEm.exit ], [ %.04877.ph, %_ZN4bssl13InplaceVectorIhLm12EEixEm.exit.preheader ] ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.04877
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !41
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 %.04877 ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !41
  %i.ee = xor i8 %i.ed, %i.eb
  store i8 %i.ee, ptr %i.ec, align 1, !tbaa !41
  %i.ef = add nuw nsw i64 %.04877, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ef, %i.bz
  br i1 %exitcond.not, label %.loopexit, label %_ZN4bssl13InplaceVectorIhLm12EEixEm.exit, !llvm.loop !58

.loopexit:                                        ; preds = %_ZN4bssl13InplaceVectorIhLm12EEixEm.exit, %middle.block, %vec.epilog.middle.block, %.preheader, %_ZL14OPENSSL_memcpyPvPKvm.exit67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eh = load i64, ptr %i.a, align 8, !tbaa !29
  %i.ei = call i32 @EVP_AEAD_CTX_seal_scatter(ptr noundef nonnull %i.eg, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.d, i64 noundef %i.eh, ptr noundef nonnull %i.c, i64 noundef %i.bm, ptr noundef %8, i64 noundef %9, ptr noundef %10, i64 noundef %11, ptr noundef %.sroa.020.0.i, i64 noundef %.sroa.3.0.i)
  %i.ej = icmp ne i32 %i.ei, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %bb.z

bb.z:                                             ; preds = %bb.s, %.loopexit, %bb.w
  %.0 = phi i1 [ false, %bb.w ], [ %i.ej, %.loopexit ], [ false, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %_ZL15OPENSSL_memmovePvPKvm.exit64

_ZL15OPENSSL_memmovePvPKvm.exit64:                ; preds = %bb.k, %_ZL15OPENSSL_memmovePvPKvm.exit, %bb.z, %bb.g, %bb.b
  %.1 = phi i1 [ false, %bb.g ], [ false, %bb.b ], [ %.0, %bb.z ], [ true, %_ZL15OPENSSL_memmovePvPKvm.exit ], [ true, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i1 %.1
}

declare i32 @RAND_bytes(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @EVP_AEAD_CTX_seal_scatter(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4bssl14SSLAEADContext4SealEPhPmmhtmNS_4SpanIKhEEPS4_m(ptr noundef nonnull align 8 dereferenceable(599) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3, i8 noundef zeroext %4, i16 noundef zeroext %5, i64 noundef %6, ptr nofree noundef readonly byval(%"class.bssl::Span") align 8 captures(none) %7, ptr noundef %8, i64 noundef %9) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 598
  %i.c = load i8, ptr %i.b, align 2
  %i.d = trunc i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 597
  %i.f = load i8, ptr %i.e, align 1
  %narrow.i = select i1 %i.d, i8 %i.f, i8 0
  %.0.i = zext i8 %narrow.i to i64                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.g = load ptr, ptr %0, align 8, !tbaa !11
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNK4bssl14SSLAEADContext9SuffixLenEPmmm.exit.thread, label %_ZNK4bssl14SSLAEADContext9SuffixLenEPmmm.exit

_ZNK4bssl14SSLAEADContext9SuffixLenEPmmm.exit.thread: ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !29
  br label %bb.c

_ZNK4bssl14SSLAEADContext9SuffixLenEPmmm.exit:    ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = call i32 @EVP_AEAD_CTX_tag_len(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, i64 noundef %9, i64 noundef 0)
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK4bssl14SSLAEADContext9SuffixLenEPmmm.exit
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 200, ptr noundef nonnull @.str, i32 noundef 390)
  br label %bb.j

bb.c:                                             ; preds = %_ZNK4bssl14SSLAEADContext9SuffixLenEPmmm.exit.thread, %_ZNK4bssl14SSLAEADContext9SuffixLenEPmmm.exit
  %i.j = add i64 %9, %.0.i                        ; 4 uses
  %i.k = icmp ult i64 %i.j, %9
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !29
  %i.m = add i64 %i.l, %i.j                       ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.j
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 200, ptr noundef nonnull @.str, i32 noundef 395)
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.o = icmp ugt i64 %i.m, %3
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 121, ptr noundef nonnull @.str, i32 noundef 399)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %9
  %i.r = call noundef zeroext i1 @_ZN4bssl14SSLAEADContext11SealScatterEPhS1_S1_htmNS_4SpanIKhEEPS3_mS5_m(ptr noundef nonnull align 8 dereferenceable(599) %0, ptr noundef %1, ptr noundef %i.p, ptr noundef %i.q, i8 noundef zeroext %4, i16 noundef zeroext %5, i64 noundef %6, ptr noundef nonnull byval(%"class.bssl::Span") align 8 %7, ptr noundef %8, i64 noundef %9, ptr noundef null, i64 noundef 0)
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.s = load i64, ptr %i.a, align 8, !tbaa !29
  %i.t = add i64 %i.s, %i.j
  store i64 %i.t, ptr %2, align 8, !tbaa !29
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g, %bb.e, %bb.b
  %.0 = phi i1 [ false, %bb.e ], [ false, %bb.g ], [ true, %bb.i ], [ false, %bb.b ], [ false, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK4bssl14SSLAEADContext5GetIVEPPKhPm(ptr noundef nonnull align 8 dereferenceable(599) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = tail call i32 @EVP_AEAD_CTX_get_iv(ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef %2)
  %i.d = icmp ne i32 %i.c, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i1 [ false, %bb.a ], [ %i.d, %bb.b ]
  ret i1 %i.e
}

declare i32 @EVP_AEAD_CTX_get_iv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #13 ; 0 uses
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare void @EVP_AEAD_CTX_zero(ptr noundef) local_unnamed_addr #3

declare void @EVP_AEAD_CTX_cleanup(ptr noundef) local_unnamed_addr #3

declare ptr @OPENSSL_malloc(i64 noundef) local_unnamed_addr #3

declare void @OPENSSL_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTSN4bssl14SSLAEADContextE", !13, i64 0, !15, i64 8, !18, i64 584, !9, i64 597, !19, i64 598, !19, i64 598, !19, i64 598, !19, i64 598, !19, i64 598}
!13 = !{!"p1 _ZTS13ssl_cipher_st", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"_ZTSN4bssl8internal14StackAllocatedI15evp_aead_ctx_stvXadL_Z17EVP_AEAD_CTX_zeroEEXadL_Z20EVP_AEAD_CTX_cleanupEEEE", !16, i64 0}
!16 = !{!"_ZTS15evp_aead_ctx_st", !17, i64 0, !9, i64 8, !9, i64 568}
!17 = !{!"p1 _ZTS11evp_aead_st", !14, i64 0}
!18 = !{!"_ZTSN4bssl13InplaceVectorIhLm12EEE", !9, i64 0, !9, i64 12}
!19 = !{!"bool", !9, i64 0}
!20 = !{!18, !9, i64 12}
!21 = !{!12, !9, i64 597}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZN4bssl10MakeUniqueINS_14SSLAEADContextEJDnEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_: argument 0"}
!24 = distinct !{!24, !"_ZN4bssl10MakeUniqueINS_14SSLAEADContextEJDnEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_"}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 _ZTSN4bssl14SSLAEADContextE", !14, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"short", !9, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"long", !9, i64 0}
!31 = !{!32, !30, i64 8}
!32 = !{!"_ZTSN4bssl4SpanIKhEE", !33, i64 0, !30, i64 8}
!33 = !{!"p1 omnipotent char", !14, i64 0}
!34 = !{!35, !26, i64 0}
!35 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl14SSLAEADContextELb0EE", !26, i64 0}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZN4bssl10MakeUniqueINS_14SSLAEADContextEJRPK13ssl_cipher_stEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_: argument 0"}
!38 = distinct !{!38, !"_ZN4bssl10MakeUniqueINS_14SSLAEADContextEJRPK13ssl_cipher_stEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_"}
!39 = !{!17, !17, i64 0}
!40 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!41 = !{!9, !9, i64 0}
!42 = !{!43, !8, i64 28}
!43 = !{!"_ZTS13ssl_cipher_st", !33, i64 0, !33, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36}
!44 = !{!32, !33, i64 0}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZN4bssl10MakeUniqueINS_14SSLAEADContextEJRPK13ssl_cipher_stEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_: argument 0"}
!47 = distinct !{!47, !"_ZN4bssl10MakeUniqueINS_14SSLAEADContextEJRPK13ssl_cipher_stEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_"}
!48 = !{!49, !30, i64 8}
!49 = !{!"_ZTSN4bssl4SpanIhEE", !33, i64 0, !30, i64 8}
!50 = !{!49, !33, i64 0}
!51 = !{!"branch_weights", i32 4, i32 28}
!52 = distinct !{!52, !53, !54, !55}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.isvectorized", i32 1}
!55 = !{!"llvm.loop.unroll.runtime.disable"}
!56 = distinct !{!56, !53, !55, !54}
!57 = distinct !{!57, !53, !54, !55}
!58 = distinct !{!58, !53, !55, !54}
end_hunk_1
