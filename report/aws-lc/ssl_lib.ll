Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/ssl_lib?download=true
inline.NumInlined: 1483
inline.NumDeleted: 647
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZL15ssl_session_cmpPK14ssl_session_stS1_:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.not16.i = icmp eq i8 %i.b, 0
  br i1 %.not16.i, label %_ZL14OPENSSL_memcmpPKvS0_m.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.g = zext i8 %i.b to i64
  br label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.h = trunc nuw i64 %i.z to i32
  br label %_ZL14OPENSSL_memcmpPKvS0_m.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.018.i = phi i64 [ %i.z, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %.01517.i = phi i64 [ %i.i, %.lr.ph.i ], [ %i.g, %.lr.ph.i.preheader ]
  %i.i = add nsw i64 %.01517.i, -1                ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !112
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !112
  %i.n = zext i8 %i.k to i32                      ; 2 uses
  %i.o = zext i8 %i.m to i32                      ; 2 uses
  %i.p = xor i32 %i.o, %i.n
  %i.q = zext nneg i32 %i.p to i64
  %i.r = add nsw i64 %i.q, -1
  %.neg.i.i.i = ashr i64 %i.r, 63                 ; 2 uses
  %i.s = xor i64 %.neg.i.i.i, -1
  %i.t = sub nsw i32 %i.n, %i.o
  %i.u = zext i32 %i.t to i64
  %i.v = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.s) #23, !srcloc !365
  %i.w = and i64 %i.v, %i.u
  %i.x = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i) #23, !srcloc !365
  %i.y = and i64 %i.x, %.018.i
  %i.z = or i64 %i.w, %i.y                        ; 2 uses
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !364

_ZL14OPENSSL_memcmpPKvS0_m.exit:                  ; preds = %._crit_edge.loopexit.i, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %bb.b ], [ %i.h, %._crit_edge.loopexit.i ]
  ret i32 %.0
}

declare i32 @EVP_has_aes_hardware() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @SSL_CTX_set_ciphersuites(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.b = load i16, ptr %i.a, align 8              ; 2 uses
  %i.c = and i16 %i.b, 4096
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i16 %i.b, 13
  %.lobit = and i16 %i.d, 1
  %i.e = zext nneg i16 %.lobit to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i32 @EVP_has_aes_hardware() #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi i32 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  %i.h = icmp ne i32 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.j = tail call noundef zeroext i1 @_ZN4bssl22ssl_create_cipher_listEPSt10unique_ptrINS_23SSLCipherPreferenceListENS_8internal7DeleterEEbPKcbb(ptr noundef nonnull %i.i, i1 noundef zeroext %i.h, ptr noundef %1, i1 noundef zeroext false, i1 noundef zeroext true) #21
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 177, ptr noundef nonnull @.str, i32 noundef 2225) #21
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.l = tail call noundef i32 @_ZN4bssl18update_cipher_listERSt10unique_ptrINS_23SSLCipherPreferenceListENS_8internal7DeleterEES5_S5_(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.i) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i32 [ %i.l, %bb.f ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @SSL_CTX_set_strict_cipher_list(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.b = load i16, ptr %i.a, align 8              ; 2 uses
  %i.c = and i16 %i.b, 4096
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i16 %i.b, 13
  %.lobit = and i16 %i.d, 1
  %i.e = zext nneg i16 %.lobit to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i32 @EVP_has_aes_hardware() #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi i32 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  %i.h = icmp ne i32 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.j = tail call noundef zeroext i1 @_ZN4bssl22ssl_create_cipher_listEPSt10unique_ptrINS_23SSLCipherPreferenceListENS_8internal7DeleterEEbPKcbb(ptr noundef nonnull %i.i, i1 noundef zeroext %i.h, ptr noundef %1, i1 noundef zeroext true, i1 noundef zeroext false) #21
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 177, ptr noundef nonnull @.str, i32 noundef 2192) #21
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = tail call noundef i32 @_ZN4bssl18update_cipher_listERSt10unique_ptrINS_23SSLCipherPreferenceListENS_8internal7DeleterEES5_S5_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.k) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i32 [ %i.l, %bb.f ], [ 0, %bb.e ]
  ret i32 %.0
}

declare i32 @SSL_CTX_set_max_proto_version(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

declare i32 @SSL_CTX_set_min_proto_version(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @SSL_CTX_up_ref(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @CRYPTO_refcount_inc(ptr noundef nonnull align 4 dereferenceable(4) %0) #21
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define void @SSL_CTX_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %_ZN4bssl10RefCountedI10ssl_ctx_stE14DecRefInternalEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @CRYPTO_refcount_dec_and_test_zero(ptr noundef nonnull align 4 dereferenceable(4) %0) #21
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %_ZN4bssl10RefCountedI10ssl_ctx_stE14DecRefInternalEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN10ssl_ctx_stD2Ev(ptr noundef nonnull align 8 dead_on_return(714) dereferenceable(714) %0) #21
  tail call void @OPENSSL_free(ptr noundef nonnull align 4 dereferenceable(4) %0) #21
  br label %_ZN4bssl10RefCountedI10ssl_ctx_stE14DecRefInternalEv.exit

_ZN4bssl10RefCountedI10ssl_ctx_stE14DecRefInternalEv.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6ssl_stC2EP10ssl_ctx_st(ptr noundef nonnull align 8 dereferenceable(221) initializes((0, 20), (24, 108), (112, 138), (144, 168), (176, 196), (200, 220)) %0, ptr noundef %1) unnamed_addr #0 align 2 {
_ZN4bssl5UpRefEP10ssl_ctx_st.exit14:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !235
  store ptr %i.b, ptr %0, align 8, !tbaa !113
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.c, align 8, !tbaa !236
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 0, ptr %i.d, align 8, !tbaa !237
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 434
  %i.g = load i16, ptr %i.f, align 2, !tbaa !209
  store i16 %i.g, ptr %i.e, align 2, !tbaa !238
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.j = load i64, ptr %i.i, align 8, !tbaa !202
  store i64 %i.j, ptr %i.h, align 8, !tbaa !239
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, i8 0, i64 40, i1 false)
  %i.n = load <2 x ptr>, ptr %i.m, align 8, !tbaa !198
  store <2 x ptr> %i.n, ptr %i.l, align 8, !tbaa !198
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.q = load <2 x ptr>, ptr %i.p, align 8, !tbaa !198
  store <2 x ptr> %i.q, ptr %i.o, align 8, !tbaa !198
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 1000, ptr %i.r, align 8, !tbaa !240
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr null, ptr %i.t, align 8, !tbaa !184
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.s, i8 0, i64 26, i1 false)
  tail call void @CRYPTO_refcount_inc(ptr noundef nonnull align 4 dereferenceable(4) %1) #21, !noalias !370
  store ptr %1, ptr %i.u, align 8, !tbaa !116, !alias.scope !370
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  tail call void @CRYPTO_refcount_inc(ptr noundef nonnull align 4 dereferenceable(4) %1) #21, !noalias !371
  store ptr %1, ptr %i.v, align 8, !tbaa !116, !alias.scope !371
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 65, ptr %i.w, align 8, !tbaa !241
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !116  ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 336
  %i.aa = load <2 x i32>, ptr %i.z, align 8, !tbaa !242
  store <2 x i32> %i.aa, ptr %i.x, align 8, !tbaa !242
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 344
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !208
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !243
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ae, i8 0, i64 20, i1 false)
  %i.ag = load i8, ptr %i.af, align 4             ; 2 uses
  %i.ah = and i8 %i.ag, -2
  store i8 %i.ah, ptr %i.af, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 712
  %i.aj = load i16, ptr %i.ai, align 8
  %i.ak = trunc i16 %i.aj to i8
  %i.al = and i8 %i.ak, 2
  %i.am = and i8 %i.ag, -4
  %i.an = or disjoint i8 %i.al, %i.am             ; 2 uses
  store i8 %i.an, ptr %i.af, align 4
  %2 = getelementptr i8, ptr %i.y, i64 713        ; 2 uses
  %tr.sh.diff = load i8, ptr %2, align 1
  %i.ao = and i8 %tr.sh.diff, 4
  %i.ap = and i8 %i.an, -6
  %i.aq = or disjoint i8 %i.ap, %i.ao             ; 2 uses
  store i8 %i.aq, ptr %i.af, align 4
  %tr.sh.diff10 = load i8, ptr %2, align 1
  %i.ar = and i8 %tr.sh.diff10, 8
  %i.as = and i8 %i.aq, -26
  %i.at = or disjoint i8 %i.as, %i.ar
  store i8 %i.at, ptr %i.af, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @CRYPTO_new_ex_data(ptr noundef nonnull %i.au) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6ssl_stD2Ev(ptr noundef nonnull align 8 dead_on_return(221) dereferenceable(221) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @CRYPTO_free_ex_data(ptr noundef nonnull @_ZN4bsslL19g_ex_data_class_sslE, ptr noundef nonnull %0, ptr noundef nonnull %i.a) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !194  ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !194
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4bssl10SSL_CONFIGENS0_8internal7DeleterEE5resetEPS1_.exit, label %_ZN4bssl8internal7DeleterclINS_10SSL_CONFIGEEEvPT_.exit.i.i

_ZN4bssl8internal7DeleterclINS_10SSL_CONFIGEEEvPT_.exit.i.i: ; preds = %bb.a
  tail call void @_ZN4bssl10SSL_CONFIGD2Ev(ptr noundef nonnull align 8 dead_on_return(244) dereferenceable(244) %i.c) #21
  tail call void @OPENSSL_free(ptr noundef nonnull %i.c) #21
  br label %_ZNSt10unique_ptrIN4bssl10SSL_CONFIGENS0_8internal7DeleterEE5resetEPS1_.exit

_ZNSt10unique_ptrIN4bssl10SSL_CONFIGENS0_8internal7DeleterEE5resetEPS1_.exit: ; preds = %bb.a, %_ZN4bssl8internal7DeleterclINS_10SSL_CONFIGEEEvPT_.exit.i.i
  %i.d = load ptr, ptr %0, align 8, !tbaa !113    ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN4bssl10SSL_CONFIGENS0_8internal7DeleterEE5resetEPS1_.exit
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !244
  tail call void %i.f(ptr noundef nonnull %0) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNSt10unique_ptrIN4bssl10SSL_CONFIGENS0_8internal7DeleterEE5resetEPS1_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !12   ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIcN4bssl8internal7DeleterEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @OPENSSL_free(ptr noundef nonnull %i.h) #21
  br label %_ZNSt10unique_ptrIcN4bssl8internal7DeleterEED2Ev.exit

_ZNSt10unique_ptrIcN4bssl8internal7DeleterEED2Ev.exit: ; preds = %bb.c, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !116  ; 4 uses
  %.not.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIcN4bssl8internal7DeleterEED2Ev.exit
  %i.k = tail call i32 @CRYPTO_refcount_dec_and_test_zero(ptr noundef nonnull align 4 dereferenceable(4) %i.j) #21
  %.not.i.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN10ssl_ctx_stD2Ev(ptr noundef nonnull align 8 dead_on_return(714) dereferenceable(714) %i.j) #21
  tail call void @OPENSSL_free(ptr noundef nonnull align 4 dereferenceable(4) %i.j) #21
  br label %_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit

_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIcN4bssl8internal7DeleterEED2Ev.exit, %bb.e, %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !116  ; 4 uses
  %.not.i2 = icmp eq ptr %i.m, null
  br i1 %.not.i2, label %_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit4, label %bb.g

bb.g:                                             ; preds = %_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit
  %i.n = tail call i32 @CRYPTO_refcount_dec_and_test_zero(ptr noundef nonnull align 4 dereferenceable(4) %i.m) #21
  %.not.i.i.i.i.i3 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i.i3, label %_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit4, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN10ssl_ctx_stD2Ev(ptr noundef nonnull align 8 dead_on_return(714) dereferenceable(714) %i.m) #21
  tail call void @OPENSSL_free(ptr noundef nonnull align 4 dereferenceable(4) %i.m) #21
  br label %_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit4

_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit4: ; preds = %_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit, %bb.g, %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !12   ; 2 uses
  %.not.i5 = icmp eq ptr %i.p, null
  br i1 %.not.i5, label %_ZNSt10unique_ptrIcN4bssl8internal7DeleterEED2Ev.exit6, label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit4
  tail call void @OPENSSL_free(ptr noundef nonnull %i.p) #21
  br label %_ZNSt10unique_ptrIcN4bssl8internal7DeleterEED2Ev.exit6

_ZNSt10unique_ptrIcN4bssl8internal7DeleterEED2Ev.exit6: ; preds = %_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit4, %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !245  ; 2 uses
  %.not.i7 = icmp eq ptr %i.r, null
  br i1 %.not.i7, label %_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt10unique_ptrIcN4bssl8internal7DeleterEED2Ev.exit6
  tail call void @OPENSSL_sk_free(ptr noundef nonnull %i.r) #21
  br label %_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEED2Ev.exit

_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIcN4bssl8internal7DeleterEED2Ev.exit6, %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !246  ; 2 uses
  %.not.i8 = icmp eq ptr %i.t, null
  br i1 %.not.i8, label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEED2Ev.exit
  tail call void @SSL_SESSION_free(ptr noundef nonnull %i.t) #21
  br label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit

_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit: ; preds = %_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEED2Ev.exit, %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !247  ; 2 uses
  %.not.i9 = icmp eq ptr %i.v, null
  br i1 %.not.i9, label %_ZNSt10unique_ptrI6bio_stN4bssl8internal7DeleterEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit
  %i.w = tail call i32 @BIO_free(ptr noundef nonnull %i.v) #21 ; 0 uses
  br label %_ZNSt10unique_ptrI6bio_stN4bssl8internal7DeleterEED2Ev.exit

_ZNSt10unique_ptrI6bio_stN4bssl8internal7DeleterEED2Ev.exit: ; preds = %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit, %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !247  ; 2 uses
  %.not.i10 = icmp eq ptr %i.y, null
  br i1 %.not.i10, label %_ZNSt10unique_ptrI6bio_stN4bssl8internal7DeleterEED2Ev.exit11, label %bb.m

bb.m:                                             ; preds = %_ZNSt10unique_ptrI6bio_stN4bssl8internal7DeleterEED2Ev.exit
  %i.z = tail call i32 @BIO_free(ptr noundef nonnull %i.y) #21 ; 0 uses
  br label %_ZNSt10unique_ptrI6bio_stN4bssl8internal7DeleterEED2Ev.exit11

_ZNSt10unique_ptrI6bio_stN4bssl8internal7DeleterEED2Ev.exit11: ; preds = %_ZNSt10unique_ptrI6bio_stN4bssl8internal7DeleterEED2Ev.exit, %bb.m
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !194 ; 3 uses
  %.not.i12 = icmp eq ptr %i.aa, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIN4bssl10SSL_CONFIGENS0_8internal7DeleterEED2Ev.exit, label %_ZN4bssl8internal7DeleterclINS_10SSL_CONFIGEEEvPT_.exit.i

_ZN4bssl8internal7DeleterclINS_10SSL_CONFIGEEEvPT_.exit.i: ; preds = %_ZNSt10unique_ptrI6bio_stN4bssl8internal7DeleterEED2Ev.exit11
  tail call void @_ZN4bssl10SSL_CONFIGD2Ev(ptr noundef nonnull align 8 dead_on_return(244) dereferenceable(244) %i.aa) #21
  tail call void @OPENSSL_free(ptr noundef nonnull %i.aa) #21
  br label %_ZNSt10unique_ptrIN4bssl10SSL_CONFIGENS0_8internal7DeleterEED2Ev.exit

_ZNSt10unique_ptrIN4bssl10SSL_CONFIGENS0_8internal7DeleterEED2Ev.exit: ; preds = %_ZNSt10unique_ptrI6bio_stN4bssl8internal7DeleterEED2Ev.exit11, %_ZN4bssl8internal7DeleterclINS_10SSL_CONFIGEEEvPT_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @SSL_new(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 13 uses
  %1 = alloca %"class.std::unique_ptr.101", align 8 ; 6 uses
  %2 = alloca %"class.std::unique_ptr.95", align 8 ; 5 uses
  %3 = alloca %"class.std::unique_ptr.95", align 8 ; 5 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !116
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 185, ptr noundef nonnull @.str, i32 noundef 555) #21
  br label %_ZNSt10unique_ptrI6ssl_stN4bssl8internal7DeleterEED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.c = call noundef ptr @_ZN4bssl3NewI6ssl_stJRP10ssl_ctx_stEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !384 ; 11 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt10unique_ptrI6ssl_stN4bssl8internal7DeleterEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = call ptr @OPENSSL_malloc(i64 noundef 248) #21, !noalias !385 ; 9 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN4bssl10MakeUniqueINS_10SSL_CONFIGEJP6ssl_stEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.c, ptr %i.d, align 8, !tbaa !253, !noalias !385
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i16 0, ptr %i.f, align 8, !tbaa !254, !noalias !385
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  store i16 0, ptr %i.g, align 2, !tbaa !255, !noalias !385
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 241 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(225) %i.h, i8 0, i64 225, i1 false), !noalias !385
  %i.j = load i16, ptr %i.i, align 1, !noalias !385
  %i.k = and i16 %i.j, 6144
  %i.l = or disjoint i16 %i.k, 24576
  store i16 %i.l, ptr %i.i, align 1, !noalias !385
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 243 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !noalias !385
  %i.o = or i8 %i.n, 1
  store i8 %i.o, ptr %i.m, align 1, !noalias !385
  br label %_ZN4bssl10MakeUniqueINS_10SSL_CONFIGEJP6ssl_stEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_.exit

_ZN4bssl10MakeUniqueINS_10SSL_CONFIGEJP6ssl_stEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_.exit: ; preds = %bb.d, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 22 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !194  ; 3 uses
  store ptr %i.d, ptr %i.p, align 8, !tbaa !194
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4bssl10SSL_CONFIGENS0_8internal7DeleterEED2Ev.exit, label %_ZN4bssl8internal7DeleterclINS_10SSL_CONFIGEEEvPT_.exit.i.i.i.i

_ZN4bssl8internal7DeleterclINS_10SSL_CONFIGEEEvPT_.exit.i.i.i.i: ; preds = %_ZN4bssl10MakeUniqueINS_10SSL_CONFIGEJP6ssl_stEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_.exit
  call void @_ZN4bssl10SSL_CONFIGD2Ev(ptr noundef nonnull align 8 dead_on_return(244) dereferenceable(244) %i.q) #21
  call void @OPENSSL_free(ptr noundef nonnull %i.q) #21
  %.pr = load ptr, ptr %i.p, align 8, !tbaa !194
  br label %_ZNSt10unique_ptrIN4bssl10SSL_CONFIGENS0_8internal7DeleterEED2Ev.exit

_ZNSt10unique_ptrIN4bssl10SSL_CONFIGENS0_8internal7DeleterEED2Ev.exit: ; preds = %_ZN4bssl8internal7DeleterclINS_10SSL_CONFIGEEEvPT_.exit.i.i.i.i, %_ZN4bssl10MakeUniqueINS_10SSL_CONFIGEJP6ssl_stEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_.exit
  %i.r = phi ptr [ %.pr, %_ZN4bssl8internal7DeleterclINS_10SSL_CONFIGEEEvPT_.exit.i.i.i.i ], [ %i.d, %_ZN4bssl10MakeUniqueINS_10SSL_CONFIGEJP6ssl_stEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_.exit ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4bssl19ssl_group_id_to_nidEPti

declare ptr @EVP_PKEY_new() local_unnamed_addr #2

declare i32 @EVP_PKEY_set_type(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @EC_KEY_new_by_curve_name(i32 noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_assign_EC_KEY(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_set1_tls_encodedpoint(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_up_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @SSL_get_server_tmp_key(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @SSL_get_peer_tmp_key(ptr noundef %0, ptr noundef %1)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @SSL_CTX_set_quiet_shutdown(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8
  %i.c = select i1 %.not, i16 0, i16 2
  %i.d = and i16 %i.b, -3
  %i.e = or disjoint i16 %i.d, %i.c
  store i16 %i.e, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @SSL_CTX_get_quiet_shutdown(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.b = load i16, ptr %i.a, align 8
  %i.c = lshr i16 %i.b, 1
  %.lobit = and i16 %i.c, 1
  %i.d = zext nneg i16 %.lobit to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @SSL_set_quiet_shutdown(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = select i1 %.not, i8 0, i8 2
  %i.d = and i8 %i.b, -3
  %i.e = or disjoint i8 %i.d, %i.c
  store i8 %i.e, ptr %i.a, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @SSL_get_quiet_shutdown(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.b = load i8, ptr %i.a, align 4
  %i.c = lshr i8 %i.b, 1
  %.lobit = and i8 %i.c, 1
  %i.d = zext nneg i8 %.lobit to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @SSL_set_shutdown(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = and i32 %1, 2
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 252 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !109
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.d, align 4, !tbaa !109
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = and i32 %1, 1
  %.not5 = icmp eq i32 %i.g, 0
  br i1 %.not5, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 256 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !284
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.j, align 8, !tbaa !284
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 4) i32 @SSL_get_shutdown(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 252
  %i.d = load i32, ptr %i.c, align 4, !tbaa !109
  %.not = icmp eq i32 %i.d, 0
  %spec.select = select i1 %.not, i32 0, i32 2
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.f = load i32, ptr %i.e, align 8, !tbaa !284
  %i.g = icmp eq i32 %i.f, 1
  %i.h = zext i1 %i.g to i32
  %.1 = or disjoint i32 %spec.select, %i.h
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @SSL_get_SSL_CTX(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @SSL_set_SSL_CTX(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.101", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !194
  %.not24 = icmp eq ptr %i.b, null
  br i1 %.not24, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !116 ; 3 uses
  %i.c = icmp eq ptr %.pre, %1
  %or.cond = select i1 %.not, i1 true, i1 %i.c
  br i1 %or.cond, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !211
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !211
  %.not16 = icmp eq ptr %i.e, %i.g
  br i1 %.not16, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !218
  call void @_ZN4bssl12ssl_cert_dupEPNS_4CERTE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.101") align 8 %2, ptr noundef %i.i) #21
  %i.j = load ptr, ptr %2, align 8, !tbaa !218    ; 2 uses
  %.not25 = icmp eq ptr %i.j, null
  br i1 %.not25, label %_ZNSt10unique_ptrIN4bssl4CERTENS0_8internal7DeleterEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !194
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  store ptr null, ptr %2, align 8, !tbaa !218
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !218  ; 3 uses
  store ptr %i.j, ptr %i.l, align 8, !tbaa !218
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZN4bssl5UpRefEP10ssl_ctx_st.exit, label %_ZN4bssl8internal7DeleterclINS_4CERTEEEvPT_.exit.i.i.i.i

_ZN4bssl8internal7DeleterclINS_4CERTEEEvPT_.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZN4bssl4CERTD1Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.m) #21
  call void @OPENSSL_free(ptr noundef nonnull %i.m) #21
  br label %_ZN4bssl5UpRefEP10ssl_ctx_st.exit

_ZN4bssl5UpRefEP10ssl_ctx_st.exit:                ; preds = %bb.e, %_ZN4bssl8internal7DeleterclINS_4CERTEEEvPT_.exit.i.i.i.i
  call void @CRYPTO_refcount_inc(ptr noundef nonnull align 4 dereferenceable(4) %1) #21, !noalias !450
  %i.n = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !116 ; 4 uses
  store ptr %1, ptr %.phi.trans.insert, align 8, !tbaa !116
  %.not.i.i.i.i17 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i17, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZN4bssl5UpRefEP10ssl_ctx_st.exit
  %i.o = call i32 @CRYPTO_refcount_dec_and_test_zero(ptr noundef nonnull align 4 dereferenceable(4) %i.n) #21
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN10ssl_ctx_stD2Ev(ptr noundef nonnull align 8 dead_on_return(714) dereferenceable(714) %i.n) #21
  call void @OPENSSL_free(ptr noundef nonnull align 4 dereferenceable(4) %i.n) #21
  br label %bb.h

bb.h:                                             ; preds = %_ZN4bssl5UpRefEP10ssl_ctx_st.exit, %bb.f, %bb.g
  %i.p = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !116 ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 713
  %tr.sh.diff = load i8, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.s = load i8, ptr %i.r, align 4
  %i.t = and i8 %tr.sh.diff, 4
  %i.u = and i8 %i.s, -5
  %i.v = or disjoint i8 %i.u, %i.t
  store i8 %i.v, ptr %i.r, align 4
  %.pr = load ptr, ptr %2, align 8, !tbaa !218    ; 3 uses
  %.not.i19 = icmp eq ptr %.pr, null
  br i1 %.not.i19, label %_ZNSt10unique_ptrIN4bssl4CERTENS0_8internal7DeleterEED2Ev.exit, label %_ZN4bssl8internal7DeleterclINS_4CERTEEEvPT_.exit.i

_ZN4bssl8internal7DeleterclINS_4CERTEEEvPT_.exit.i: ; preds = %bb.h
  call void @_ZN4bssl4CERTD1Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %.pr) #21
  call void @OPENSSL_free(ptr noundef nonnull %.pr) #21
  br label %_ZNSt10unique_ptrIN4bssl4CERTENS0_8internal7DeleterEED2Ev.exit

_ZNSt10unique_ptrIN4bssl4CERTENS0_8internal7DeleterEED2Ev.exit: ; preds = %bb.d, %bb.h, %_ZN4bssl8internal7DeleterclINS_4CERTEEEvPT_.exit.i
  %.023 = phi ptr [ %i.p, %_ZN4bssl8internal7DeleterclINS_4CERTEEEvPT_.exit.i ], [ %i.p, %bb.h ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.c, %bb.a, %_ZNSt10unique_ptrIN4bssl4CERTENS0_8internal7DeleterEED2Ev.exit
  %.1 = phi ptr [ null, %bb.c ], [ null, %bb.a ], [ %.023, %_ZNSt10unique_ptrIN4bssl4CERTENS0_8internal7DeleterEED2Ev.exit ], [ %.pre, %bb.b ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @SSL_set_info_callback(ptr nofree noundef writeonly captures(none) initializes((144, 152)) %0, ptr noundef %1) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %1, ptr %i.a, align 8, !tbaa !184
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @SSL_get_info_callback(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !184
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 3, 12289) i32 @SSL_state(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !111  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %SSL_in_init.exit.thread, label %SSL_in_init.exit

SSL_in_init.exit:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1592
  %i.f = load i32, ptr %i.e, align 8
  %.fr3 = freeze i32 %i.f
  %i.g = and i32 %.fr3, 16
  %.not.not = icmp eq i32 %i.g, 0
  br i1 %.not.not, label %bb.b, label %SSL_in_init.exit.thread

SSL_in_init.exit.thread:                          ; preds = %bb.a, %SSL_in_init.exit
  br label %bb.b

bb.b:                                             ; preds = %SSL_in_init.exit, %SSL_in_init.exit.thread
  %i.h = phi i32 [ 3, %SSL_in_init.exit.thread ], [ 12288, %SSL_in_init.exit ]
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @SSL_set_state(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef ptr @SSL_get_shared_ciphers(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(ret: address, provenance) %1, i32 noundef %2) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp slt i32 %2, 1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %1, align 1, !tbaa !112
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %1, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @SSL_get_shared_sigalgs(ptr nofree noundef readnone captures(none) %0, i32 noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4, ptr nofree noundef readnone captures(none) %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #12 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @SSL_CTX_set_quic_method(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !235
  %i.c = load i8, ptr %i.b, align 8, !tbaa !274, !range !272, !noundef !273
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %1, ptr %i.e, align 8, !tbaa !264
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @SSL_set_quic_method(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !113
  %i.b = load i8, ptr %i.a, align 8, !tbaa !274, !range !272, !noundef !273
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %1, ptr %i.d, align 8, !tbaa !265
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define i32 @SSL_get_ex_new_index(i64 noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = call i32 @CRYPTO_get_ex_new_index(ptr noundef nonnull @_ZN4bsslL19g_ex_data_class_sslE, ptr noundef nonnull %i.a, i64 noundef %0, ptr noundef %1, ptr noundef %4) #21
  %.not = icmp eq i32 %i.b, 0
  %i.c = load i32, ptr %i.a, align 4
  %.0 = select i1 %.not, i32 -1, i32 %i.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.0
}

declare i32 @CRYPTO_get_ex_new_index(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define i32 @SSL_set_ex_data(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = tail call i32 @CRYPTO_set_ex_data(ptr noundef nonnull %i.a, i32 noundef %1, ptr noundef %2) #21
  ret i32 %i.b
}

declare i32 @CRYPTO_set_ex_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define ptr @SSL_get_ex_data(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = tail call ptr @CRYPTO_get_ex_data(ptr noundef nonnull %i.a, i32 noundef %1) #21
  ret ptr %i.b
}

declare ptr @CRYPTO_get_ex_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define i32 @SSL_CTX_get_ex_new_index(i64 noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = call i32 @CRYPTO_get_ex_new_index(ptr noundef nonnull @_ZN4bsslL23g_ex_data_class_ssl_ctxE, ptr noundef nonnull %i.a, i64 noundef %0, ptr noundef %1, ptr noundef %4) #21
  %.not = icmp eq i32 %i.b, 0
  %i.c = load i32, ptr %i.a, align 4
  %.0 = select i1 %.not, i32 -1, i32 %i.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define i32 @SSL_CTX_set_ex_data(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = tail call i32 @CRYPTO_set_ex_data(ptr noundef nonnull %i.a, i32 noundef %1, ptr noundef %2) #21
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @SSL_CTX_get_ex_data(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = tail call ptr @CRYPTO_get_ex_data(ptr noundef nonnull %i.a, i32 noundef %1) #21
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 7, 6) i32 @SSL_want(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 276
  %i.d = load i32, ptr %i.c, align 4, !tbaa !108  ; 2 uses
  %i.e = icmp eq i32 %i.d, 6
  %spec.select = select i1 %i.e, i32 0, i32 %i.d
  ret i32 %spec.select
end_hunk_1
begin_hunk_2_@SSL_get_write_traffic_secret:bb.a

bb.c:                                             ; preds = %SSL_in_init.exit.thread
  %.not16 = icmp eq ptr %2, null
  br i1 %.not16, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 14, i32 noundef 0, i32 noundef 67, ptr noundef nonnull @.str, i32 noundef 3712) #21
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.j = icmp eq ptr %1, null
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 536
  %i.m = load i8, ptr %i.l, align 8, !tbaa !196   ; 2 uses
  %i.n = zext i8 %i.m to i64                      ; 3 uses
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 %i.n, ptr %2, align 8, !tbaa !14
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.o = load i64, ptr %2, align 8, !tbaa !14
  %i.p = icmp ult i64 %i.o, %i.n
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 69, ptr noundef nonnull @.str, i32 noundef 3720) #21
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.q = icmp eq i8 %i.m, 0
  br i1 %i.q, label %_ZL14OPENSSL_memcpyPvPKvm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 392
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull readonly align 8 %i.r, i64 %i.n, i1 false)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !69
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 536
  %.pre18 = load i8, ptr %.phi.trans.insert, align 8, !tbaa !196
  %i.s = zext i8 %.pre18 to i64
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %bb.i, %bb.j
  %i.t = phi i64 [ 0, %bb.i ], [ %i.s, %bb.j ]
  store i64 %i.t, ptr %2, align 8, !tbaa !14
  br label %bb.k

bb.k:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.f ], [ 0, %bb.h ], [ 1, %_ZL14OPENSSL_memcpyPvPKvm.exit ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @SSL_verify_client_post_handshake(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #12 {
bb.a:
  ret i32 0
}

declare i32 @CBB_add_space(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

declare void @OPENSSL_lh_free(ptr noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_Z38sk_SSL_CUSTOM_EXTENSION_call_free_funcPFvPvES_(ptr noundef %0, ptr noundef %1) #16 comdat {
bb.a:
  tail call void %0(ptr noundef %1) #21
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4bssl4CERTD1Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168)) unnamed_addr #17

declare ptr @OPENSSL_lh_new(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN4bssl19ssl_hash_session_idENS_4SpanIKhEE(ptr, i64) local_unnamed_addr #2

declare ptr @OPENSSL_sk_new_null() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4bssl23SSLCipherPreferenceListD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #17

declare void @EVP_PKEY_free(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl20tls13_post_handshakeEP6ssl_stRKNS_10SSLMessageE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN4bssl22ssl_handle_open_recordEP6ssl_stPbNS_17ssl_open_record_tEmh(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4bssl13SSL_HANDSHAKED1Ev(ptr noundef nonnull align 8 dead_on_return(1643) dereferenceable(1643)) unnamed_addr #17

declare i64 @OPENSSL_lh_num_items(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl19ssl_nid_to_group_idEPti(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @OPENSSL_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4bssl20ssl_name_to_group_idEPtPKcm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_value(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @EVP_PKEY_get0_EC_KEY(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #18

declare i32 @SSL_SESSION_up_ref(ptr noundef) local_unnamed_addr #2

declare void @SSL_SESSION_free(ptr noundef) local_unnamed_addr #2

declare i32 @BIO_free(ptr noundef) local_unnamed_addr #2

declare void @SSL_ECH_KEYS_free(ptr noundef) local_unnamed_addr #2

declare void @ERR_SAVE_STATE_free(ptr noundef) local_unnamed_addr #2

declare void @CBB_zero(ptr noundef) local_unnamed_addr #2

declare void @CBB_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN4bssl8internal11DeleterImplI22stack_st_CRYPTO_BUFFERvE4FreeEPS2_ENUlPFvPvES5_E_8__invokeES7_S5_(ptr noundef %0, ptr noundef %1) #16 comdat align 2 {
bb.a:
  tail call void @CRYPTO_BUFFER_free(ptr noundef %1) #21
  ret void
}

declare void @CRYPTO_BUFFER_free(ptr noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_free(ptr noundef) local_unnamed_addr #2

declare void @_ZN4bssl4CERTC1EPKNS_15SSL_X509_METHODE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef) unnamed_addr #2

declare void @CRYPTO_refcount_inc(ptr noundef) local_unnamed_addr #2

declare i32 @CRYPTO_refcount_dec_and_test_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4bssl3NewI6ssl_stJRP10ssl_ctx_stEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = tail call ptr @OPENSSL_malloc(i64 noundef 224) #21 ; 21 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !116    ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !235
  store ptr %i.e, ptr %i.a, align 8, !tbaa !113
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.f, align 8, !tbaa !236
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i16 0, ptr %i.g, align 8, !tbaa !237
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 434
  %i.j = load i16, ptr %i.i, align 2, !tbaa !209
  store i16 %i.j, ptr %i.h, align 2, !tbaa !238
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.m = load i64, ptr %i.l, align 8, !tbaa !202
  store i64 %i.m, ptr %i.k, align 8, !tbaa !239
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, i8 0, i64 40, i1 false)
  %i.q = load <2 x ptr>, ptr %i.p, align 8, !tbaa !198
  store <2 x ptr> %i.q, ptr %i.o, align 8, !tbaa !198
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 376
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !198
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !198
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i32 1000, ptr %i.u, align 8, !tbaa !240
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr null, ptr %i.w, align 8, !tbaa !184
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !489)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.v, i8 0, i64 26, i1 false)
  tail call void @CRYPTO_refcount_inc(ptr noundef nonnull align 4 dereferenceable(4) %i.c) #21, !noalias !489
  store ptr %i.c, ptr %i.x, align 8, !tbaa !116, !alias.scope !489
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490)
  tail call void @CRYPTO_refcount_inc(ptr noundef nonnull align 4 dereferenceable(4) %i.c) #21, !noalias !490
  store ptr %i.c, ptr %i.y, align 8, !tbaa !116, !alias.scope !490
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i64 65, ptr %i.z, align 8, !tbaa !241
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !116 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 336
  %i.ad = load <2 x i32>, ptr %i.ac, align 8, !tbaa !242
  store <2 x i32> %i.ad, ptr %i.aa, align 8, !tbaa !242
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 344
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !208
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !243
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 220 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ah, i8 0, i64 20, i1 false)
  %i.aj = load i8, ptr %i.ai, align 4             ; 2 uses
  %i.ak = and i8 %i.aj, -2
  store i8 %i.ak, ptr %i.ai, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 712
  %i.am = load i16, ptr %i.al, align 8
  %i.an = trunc i16 %i.am to i8
  %i.ao = and i8 %i.an, 2
  %i.ap = and i8 %i.aj, -4
  %i.aq = or disjoint i8 %i.ao, %i.ap             ; 2 uses
  store i8 %i.aq, ptr %i.ai, align 4
  %1 = getelementptr i8, ptr %i.ab, i64 713       ; 2 uses
  %tr.sh.diff.i = load i8, ptr %1, align 1
  %i.ar = and i8 %tr.sh.diff.i, 4
  %i.as = and i8 %i.aq, -6
  %i.at = or disjoint i8 %i.as, %i.ar             ; 2 uses
  store i8 %i.at, ptr %i.ai, align 4
  %tr.sh.diff10.i = load i8, ptr %1, align 1
  %i.au = and i8 %tr.sh.diff10.i, 8
  %i.av = and i8 %i.at, -26
  %i.aw = or disjoint i8 %i.av, %i.au
  store i8 %i.aw, ptr %i.ai, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  tail call void @CRYPTO_new_ex_data(ptr noundef nonnull %i.ax) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @CRYPTO_MUTEX_lock_read(ptr noundef) local_unnamed_addr #2

declare void @CRYPTO_MUTEX_unlock_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4bssl13GrowableArrayINS_10ALPSConfigEE9MaybeGrowEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.bssl::Array.123", align 8   ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !267  ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN4bssl5ArrayINS_10ALPSConfigEE5ResetEv.exit.i, label %bb.b

_ZN4bssl5ArrayINS_10ALPSConfigEE5ResetEv.exit.i:  ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !268
  tail call void @OPENSSL_free(ptr noundef %i.e) #21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.f = tail call ptr @OPENSSL_malloc(i64 noundef 512) #21 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !268
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZN4bssl5ArrayINS_10ALPSConfigEE4InitEm.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN4bssl5ArrayINS_10ALPSConfigEE5ResetEv.exit.i
  store i64 16, ptr %i.b, align 8, !tbaa !267
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.010.i = phi i64 [ %i.j, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !268
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.010.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  %i.j = add nuw i64 %.010.i, 1                   ; 2 uses
  %i.k = load i64, ptr %i.b, align 8, !tbaa !267
  %i.l = icmp ult i64 %i.j, %i.k
  br i1 %i.l, label %.lr.ph.i, label %_ZN4bssl5ArrayINS_10ALPSConfigEE4InitEm.exit, !llvm.loop !1

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %0, align 8, !tbaa !343
  %i.n = icmp ult i64 %i.m, %i.c
  br i1 %i.n, label %_ZN4bssl5ArrayINS_10ALPSConfigEE4InitEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = icmp slt i64 %i.c, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 69, ptr noundef nonnull @.str.38, i32 noundef 326) #21
  br label %_ZN4bssl5ArrayINS_10ALPSConfigEE4InitEm.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.p = shl nuw i64 %i.c, 1
  %i.q = call noundef zeroext i1 @_ZN4bssl5ArrayINS_10ALPSConfigEE4InitEm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.p) ; 2 uses
  br i1 %i.q, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.e
  %i.r = load i64, ptr %i.b, align 8, !tbaa !267
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %.thread, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.s = icmp eq i64 %i.aw, 0
  br i1 %i.s, label %.thread, label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %._crit_edge, %.lr.ph.i.i.i7
  %.05.i.i.i8 = phi i64 [ %i.y, %.lr.ph.i.i.i7 ], [ 0, %._crit_edge ] ; 2 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !268
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.05.i.i.i8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !16
  call void @OPENSSL_free(ptr noundef %i.w) #21
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !16
  call void @OPENSSL_free(ptr noundef %i.x) #21
  %i.y = add nuw i64 %.05.i.i.i8, 1               ; 2 uses
  %i.z = load i64, ptr %i.b, align 8, !tbaa !267
  %i.aa = icmp ult i64 %i.y, %i.z
  br i1 %i.aa, label %.lr.ph.i.i.i7, label %.thread, !llvm.loop !0

.thread:                                          ; preds = %.lr.ph.i.i.i7, %._crit_edge, %.preheader
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !268
  call void @OPENSSL_free(ptr noundef %i.ab) #21
  %i.ac = load ptr, ptr %1, align 8, !tbaa !268
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !492
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !267
  store i64 %i.ae, ptr %i.b, align 8, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %_ZN4bssl5ArrayINS_10ALPSConfigEED2Ev.exit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.014 = phi i64 [ %i.av, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !268
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %.014 ; 5 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !268
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %.014 ; 6 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !16
  call void @OPENSSL_free(ptr noundef %i.aj) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !16
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !12
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !17
  store i64 %i.an, ptr %i.ak, align 8, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i8 0, i64 16, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !16
  call void @OPENSSL_free(ptr noundef %i.aq) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !16
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !12
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.au = load i64, ptr %i.at, align 8, !tbaa !17
  store i64 %i.au, ptr %i.ar, align 8, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  %i.av = add nuw i64 %.014, 1                    ; 2 uses
  %i.aw = load i64, ptr %i.b, align 8, !tbaa !267 ; 2 uses
  %i.ax = icmp ult i64 %i.av, %i.aw
  br i1 %i.ax, label %.lr.ph, label %._crit_edge, !llvm.loop !491

bb.f:                                             ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !267
  %i.ay = icmp eq i64 %.pre, 0
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  br i1 %i.ay, label %_ZN4bssl5ArrayINS_10ALPSConfigEED2Ev.exit, label %.lr.ph.i.i.i11

.lr.ph.i.i.i11:                                   ; preds = %bb.f, %.lr.ph.i.i.i11
  %.05.i.i.i12 = phi i64 [ %i.bf, %.lr.ph.i.i.i11 ], [ 0, %bb.f ] ; 2 uses
  %i.ba = load ptr, ptr %1, align 8, !tbaa !268
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.ba, i64 %.05.i.i.i12 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !16
  call void @OPENSSL_free(ptr noundef %i.bd) #21
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !16
  call void @OPENSSL_free(ptr noundef %i.be) #21
  %i.bf = add nuw i64 %.05.i.i.i12, 1             ; 2 uses
  %i.bg = load i64, ptr %i.az, align 8, !tbaa !267
  %i.bh = icmp ult i64 %i.bf, %i.bg
  br i1 %i.bh, label %.lr.ph.i.i.i11, label %_ZN4bssl5ArrayINS_10ALPSConfigEED2Ev.exit, !llvm.loop !0

_ZN4bssl5ArrayINS_10ALPSConfigEED2Ev.exit:        ; preds = %.lr.ph.i.i.i11, %.thread, %bb.f
  %i.bi = load ptr, ptr %1, align 8, !tbaa !268
  call void @OPENSSL_free(ptr noundef %i.bi) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %_ZN4bssl5ArrayINS_10ALPSConfigEE4InitEm.exit

_ZN4bssl5ArrayINS_10ALPSConfigEE4InitEm.exit:     ; preds = %.lr.ph.i, %_ZN4bssl5ArrayINS_10ALPSConfigEE5ResetEv.exit.i, %bb.b, %_ZN4bssl5ArrayINS_10ALPSConfigEED2Ev.exit, %bb.d
  %.1 = phi i1 [ true, %bb.b ], [ %i.q, %_ZN4bssl5ArrayINS_10ALPSConfigEED2Ev.exit ], [ false, %bb.d ], [ false, %_ZN4bssl5ArrayINS_10ALPSConfigEE5ResetEv.exit.i ], [ true, %.lr.ph.i ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4bssl5ArrayINS_10ALPSConfigEE4InitEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !267
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %_ZN4bssl5ArrayINS_10ALPSConfigEE5ResetEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.h, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !268
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %.05.i.i ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  tail call void @OPENSSL_free(ptr noundef %i.f) #21
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !16
  tail call void @OPENSSL_free(ptr noundef %i.g) #21
  %i.h = add nuw i64 %.05.i.i, 1                  ; 2 uses
  %i.i = load i64, ptr %i.a, align 8, !tbaa !267
  %i.j = icmp ult i64 %i.h, %i.i
  br i1 %i.j, label %.lr.ph.i.i, label %_ZN4bssl5ArrayINS_10ALPSConfigEE5ResetEv.exit, !llvm.loop !0

_ZN4bssl5ArrayINS_10ALPSConfigEE5ResetEv.exit:    ; preds = %.lr.ph.i.i, %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !268
  tail call void @OPENSSL_free(ptr noundef %i.k) #21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.l = icmp eq i64 %1, 0
  br i1 %i.l, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %_ZN4bssl5ArrayINS_10ALPSConfigEE5ResetEv.exit
end_hunk_2
