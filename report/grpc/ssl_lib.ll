Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/ssl_lib?download=true
inline.NumInlined: 1559
inline.NumDeleted: 734
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@SSL_CTX_new:bb.a
  br i1 %.not5, label %bb.y, label %_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit

bb.y:                                             ; preds = %bb.x, %bb.v, %bb.t
  invoke void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str, i32 noundef 451)
          to label %thread-pre-split unwind label %bb.r

thread-pre-split:                                 ; preds = %_ZNSt10unique_ptrI22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterEE5resetEPS0_.exit13, %bb.q, %bb.o, %bb.n, %bb.m, %bb.l, %bb.y
  %i.ap = invoke i32 @CRYPTO_refcount_dec_and_test_zero(ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc.i unwind label %bb.aa

.noexc.i:                                         ; preds = %thread-pre-split
  %.not.i.i.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %.noexc.i
  tail call void @_ZN10ssl_ctx_stD2Ev(ptr noundef nonnull align 8 dead_on_return(650) dereferenceable(650) %i.b) #25
  invoke void @OPENSSL_free(ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z, %thread-pre-split
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  tail call void @__clang_call_terminate(ptr %i.ar) #26
  unreachable

_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit: ; preds = %bb.x, %bb.c, %.noexc.i, %bb.z
  %.0324 = phi ptr [ null, %bb.z ], [ null, %bb.c ], [ null, %.noexc.i ], [ %i.b, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ %.0324, %_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL16ssl_session_hashPK14ssl_session_st(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 59
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 91
  %i.c = load i8, ptr %i.b, align 1, !tbaa !217
  %i.d = zext i8 %i.c to i64
  %i.e = tail call noundef i32 @_ZN4bssl19ssl_hash_session_idENS_4SpanIKhEE(ptr nonnull %i.a, i64 %i.d)
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef range(i32 0, 2) i32 @_ZL15ssl_session_cmpPK14ssl_session_stS1_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 59
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 91
  %i.c = load i8, ptr %i.b, align 1, !tbaa !217   ; 3 uses
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 59
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 91
  %i.g = load i8, ptr %i.f, align 1, !tbaa !217
  %.not.i.i.i = icmp eq i8 %i.c, %i.g
  br i1 %.not.i.i.i, label %bb.b, label %_ZN4bssl8internaleqENS_4SpanIKhEES3_.exit

bb.b:                                             ; preds = %bb.a
  %.not.not.i.i.i.i.i.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.not.i.i.i.i.i.i.i, label %_ZN4bssl8internaleqENS_4SpanIKhEES3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.a, ptr nonnull %i.e, i64 %i.d)
  %.not9.i.i.i.i.i.i.i = icmp ne i32 %bcmp.i.i.i.i.i.i.i, 0
  %i.h = zext i1 %.not9.i.i.i.i.i.i.i to i32
  br label %_ZN4bssl8internaleqENS_4SpanIKhEES3_.exit

_ZN4bssl8internaleqENS_4SpanIKhEES3_.exit:        ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i.i = phi i32 [ 1, %bb.a ], [ %i.h, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0.i.i.i
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @SSL_CTX_set_strict_cipher_list(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.b = load i16, ptr %i.a, align 8              ; 2 uses
  %i.c = and i16 %i.b, 2048
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i16 %i.b, 12
  %.lobit = and i16 %i.d, 1
  %i.e = zext nneg i16 %.lobit to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i32 @EVP_has_aes_hardware()
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi i32 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  %i.h = icmp ne i32 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = tail call noundef zeroext i1 @_ZN4bssl22ssl_create_cipher_listEPSt10unique_ptrINS_23SSLCipherPreferenceListENS_8internal7DeleterEEbPKcb(ptr noundef nonnull %i.i, i1 noundef zeroext %i.h, ptr noundef %1, i1 noundef zeroext true)
  %i.k = zext i1 %i.j to i32
  ret i32 %i.k
}

declare i32 @SSL_CTX_set_max_proto_version(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

declare i32 @SSL_CTX_set_min_proto_version(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !112    ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN4bssl8internal7DeleterclI10ssl_ctx_stEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke i32 @CRYPTO_refcount_dec_and_test_zero(ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZN4bssl8internal7DeleterclI10ssl_ctx_stEEvPT_.exit, label %bb.c

bb.c:                                             ; preds = %.noexc
  tail call void @_ZN10ssl_ctx_stD2Ev(ptr noundef nonnull align 8 dead_on_return(650) dereferenceable(650) %i.a) #25
  invoke void @OPENSSL_free(ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN4bssl8internal7DeleterclI10ssl_ctx_stEEvPT_.exit unwind label %bb.d

_ZN4bssl8internal7DeleterclI10ssl_ctx_stEEvPT_.exit: ; preds = %.noexc, %bb.c, %bb.a
  ret void

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef i32 @SSL_CTX_up_ref(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @CRYPTO_refcount_inc(ptr noundef nonnull align 4 dereferenceable(4) %0)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define void @SSL_CTX_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %_ZN4bssl10RefCountedI10ssl_ctx_stE14DecRefInternalEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @CRYPTO_refcount_dec_and_test_zero(ptr noundef nonnull align 4 dereferenceable(4) %0)
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %_ZN4bssl10RefCountedI10ssl_ctx_stE14DecRefInternalEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN10ssl_ctx_stD2Ev(ptr noundef nonnull align 8 dead_on_return(650) dereferenceable(650) %0) #25
  tail call void @OPENSSL_free(ptr noundef nonnull align 4 dereferenceable(4) %0)
  br label %_ZN4bssl10RefCountedI10ssl_ctx_stE14DecRefInternalEv.exit

_ZN4bssl10RefCountedI10ssl_ctx_stE14DecRefInternalEv.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6ssl_stC2EP10ssl_ctx_st(ptr noundef nonnull align 8 dereferenceable(165) initializes((0, 18), (24, 84), (88, 104)) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.split4.i:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !218
  store ptr %i.b, ptr %0, align 8, !tbaa !109
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !414
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 378
  %i.f = load i16, ptr %i.e, align 2, !tbaa !201
  store i16 %i.f, ptr %i.d, align 8, !tbaa !219
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !193
  store <2 x ptr> %i.j, ptr %i.h, align 8, !tbaa !193
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 400, ptr %i.k, align 8, !tbaa !415
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  invoke void @CRYPTO_refcount_inc(ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %.split4.i15 unwind label %bb.c

.split4.i15:                                      ; preds = %.split4.i
  store ptr %1, ptr %i.m, align 8, !tbaa !112, !alias.scope !416
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  invoke void @CRYPTO_refcount_inc(ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %.split4.i15
  store ptr %1, ptr %i.n, align 8, !tbaa !112, !alias.scope !417
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !112  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 296
  %i.r = load <2 x i32>, ptr %i.q, align 8, !tbaa !220
  store <2 x i32> %i.r, ptr %i.o, align 8, !tbaa !220
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 304
  %i.u = load i32, ptr %i.t, align 8, !tbaa !200
  store i32 %i.u, ptr %i.s, align 8, !tbaa !221
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.v, i8 0, i64 20, i1 false)
  %i.x = load i8, ptr %i.w, align 4               ; 2 uses
  %i.y = and i8 %i.x, -2
  store i8 %i.y, ptr %i.w, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 648 ; 3 uses
  %i.aa = load i16, ptr %i.z, align 8
  %i.ab = trunc i16 %i.aa to i8
  %i.ac = and i8 %i.ab, 2
  %i.ad = and i8 %i.x, -4
  %i.ae = or disjoint i8 %i.ac, %i.ad             ; 2 uses
  store i8 %i.ae, ptr %i.w, align 4
  %2 = load i16, ptr %i.z, align 8
  %sh.diff = lshr i16 %2, 8
  %tr.sh.diff = trunc nuw i16 %sh.diff to i8
  %i.af = and i8 %tr.sh.diff, 4
  %i.ag = and i8 %i.ae, -6
  %i.ah = or disjoint i8 %i.af, %i.ag             ; 2 uses
  store i8 %i.ah, ptr %i.w, align 4
  %i.ai = load i16, ptr %i.z, align 8
  %sh.diff10 = lshr i16 %i.ai, 10
  %tr.sh.diff11 = trunc nuw nsw i16 %sh.diff10 to i8
  %i.aj = and i8 %tr.sh.diff11, 8
  %i.ak = and i8 %i.ah, -10
  %i.al = or disjoint i8 %i.ak, %i.aj
  store i8 %i.al, ptr %i.w, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke void @CRYPTO_new_ex_data(ptr noundef nonnull %i.am)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %.split4.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.d:                                             ; preds = %.split4.i15
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt10unique_ptrIcN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #25
  tail call void @_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.e ], [ %i.ao, %bb.d ]
  tail call void @_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.f ], [ %i.an, %bb.c ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.l) #25
  tail call void @_ZNSt10unique_ptrI6bio_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aq) #25
  tail call void @_ZNSt10unique_ptrI6bio_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #25
  tail call void @_ZNSt10unique_ptrIN4bssl10SSL_CONFIGENS0_8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #25
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !222    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN4bssl8internal7DeleterclI14ssl_session_stEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @SSL_SESSION_free(ptr noundef nonnull %i.a)
          to label %_ZN4bssl8internal7DeleterclI14ssl_session_stEEvPT_.exit unwind label %bb.c

_ZN4bssl8internal7DeleterclI14ssl_session_stEEvPT_.exit: ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #26
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrI6bio_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !223    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN4bssl8internal7DeleterclI6bio_stEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke i32 @BIO_free(ptr noundef nonnull %i.a)
          to label %_ZN4bssl8internal7DeleterclI6bio_stEEvPT_.exit unwind label %bb.c ; 0 uses

_ZN4bssl8internal7DeleterclI6bio_stEEvPT_.exit:   ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #26
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN4bssl10SSL_CONFIGENS0_8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !187    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN4bssl8internal7DeleterclINS_10SSL_CONFIGEEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4bssl10SSL_CONFIGD2Ev(ptr noundef nonnull align 8 dead_on_return(271) dereferenceable(271) %i.a) #25
  invoke void @OPENSSL_free(ptr noundef nonnull %i.a)
          to label %_ZN4bssl8internal7DeleterclINS_10SSL_CONFIGEEEvPT_.exit unwind label %bb.c

_ZN4bssl8internal7DeleterclINS_10SSL_CONFIGEEEvPT_.exit: ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #26
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6ssl_stD2Ev(ptr noundef nonnull align 8 dead_on_return(165) dereferenceable(165) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke void @CRYPTO_free_ex_data(ptr noundef nonnull @_ZN4bsslL19g_ex_data_class_sslE, ptr noundef nonnull %0, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !187  ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !187
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4bssl10SSL_CONFIGENS0_8internal7DeleterEE5resetEPS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4bssl10SSL_CONFIGD2Ev(ptr noundef nonnull align 8 dead_on_return(271) dereferenceable(271) %i.c) #25
  invoke void @OPENSSL_free(ptr noundef nonnull %i.c)
          to label %_ZNSt10unique_ptrIN4bssl10SSL_CONFIGENS0_8internal7DeleterEE5resetEPS1_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #26
  unreachable

_ZNSt10unique_ptrIN4bssl10SSL_CONFIGENS0_8internal7DeleterEE5resetEPS1_.exit: ; preds = %bb.b, %bb.c
  %i.f = load ptr, ptr %0, align 8, !tbaa !109    ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN4bssl10SSL_CONFIGENS0_8internal7DeleterEE5resetEPS1_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !224
  invoke void %i.h(ptr noundef nonnull %0)
          to label %bb.f unwind label %bb.w

bb.f:                                             ; preds = %bb.e, %_ZNSt10unique_ptrIN4bssl10SSL_CONFIGENS0_8internal7DeleterEE5resetEPS1_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14   ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIcN4bssl8internal7DeleterEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @OPENSSL_free(ptr noundef nonnull %i.j)
          to label %_ZNSt10unique_ptrIcN4bssl8internal7DeleterEED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #26
  unreachable

_ZNSt10unique_ptrIcN4bssl8internal7DeleterEED2Ev.exit: ; preds = %bb.f, %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !112  ; 4 uses
  %.not.i1 = icmp eq ptr %i.n, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIcN4bssl8internal7DeleterEED2Ev.exit
  %i.o = invoke i32 @CRYPTO_refcount_dec_and_test_zero(ptr noundef nonnull align 4 dereferenceable(4) %i.n)
          to label %.noexc.i unwind label %bb.k

.noexc.i:                                         ; preds = %bb.i
  %.not.i.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.noexc.i
  tail call void @_ZN10ssl_ctx_stD2Ev(ptr noundef nonnull align 8 dead_on_return(650) dereferenceable(650) %i.n) #25
  invoke void @OPENSSL_free(ptr noundef nonnull align 4 dereferenceable(4) %i.n)
          to label %_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #26
  unreachable

_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIcN4bssl8internal7DeleterEED2Ev.exit, %.noexc.i, %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !112  ; 4 uses
  %.not.i2 = icmp eq ptr %i.s, null
  br i1 %.not.i2, label %_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit5, label %bb.l

bb.l:                                             ; preds = %_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit
  %i.t = invoke i32 @CRYPTO_refcount_dec_and_test_zero(ptr noundef nonnull align 4 dereferenceable(4) %i.s)
          to label %.noexc.i3 unwind label %bb.n

.noexc.i3:                                        ; preds = %bb.l
  %.not.i.i.i.i.i4 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i.i.i4, label %_ZNSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEED2Ev.exit5, label %bb.m
end_hunk_0
begin_hunk_1_@SSL_CTX_set_quiet_shutdown:bb.a
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
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.b = load i16, ptr %i.a, align 8
  %i.c = lshr i16 %i.b, 1
  %.lobit = and i16 %i.c, 1
  %i.d = zext nneg i16 %.lobit to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @SSL_set_quiet_shutdown(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
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
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.b = load i8, ptr %i.a, align 4
  %i.c = lshr i8 %i.b, 1
  %.lobit = and i8 %i.c, 1
  %i.d = zext nneg i8 %.lobit to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @SSL_set_shutdown(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = and i32 %1, 2
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 172 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !105
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.d, align 4, !tbaa !105
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = and i32 %1, 1
  %.not5 = icmp eq i32 %i.g, 0
  br i1 %.not5, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 176 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !261
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.j, align 8, !tbaa !261
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 4) i32 @SSL_get_shutdown(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 172
  %i.d = load i32, ptr %i.c, align 4, !tbaa !105
  %.not = icmp eq i32 %i.d, 0
  %spec.select = select i1 %.not, i32 0, i32 2
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.f = load i32, ptr %i.e, align 8, !tbaa !261
  %i.g = icmp eq i32 %i.f, 1
  %i.h = zext i1 %i.g to i32
  %.1 = or disjoint i32 %spec.select, %i.h
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @SSL_get_SSL_CTX(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define ptr @SSL_set_SSL_CTX(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.122", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !187
  %.not23 = icmp eq ptr %i.b, null
  br i1 %.not23, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !112  ; 3 uses
  %i.e = icmp eq ptr %i.d, %1
  br i1 %i.e, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !212
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !212
  %.not = icmp eq ptr %i.g, %i.i
  br i1 %.not, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !208
  call void @_ZN4bssl12ssl_cert_dupEPNS_4CERTE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.122") align 8 %2, ptr noundef %i.k)
  %i.l = load ptr, ptr %2, align 8, !tbaa !208    ; 2 uses
  %.not24 = icmp eq ptr %i.l, null
  br i1 %.not24, label %_ZNSt10unique_ptrIN4bssl4CERTENS0_8internal7DeleterEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !187
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  store ptr null, ptr %2, align 8, !tbaa !208
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !208  ; 3 uses
  store ptr %i.l, ptr %i.n, align 8, !tbaa !208
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %.split4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN4bssl4CERTD1Ev(ptr noundef nonnull align 8 dead_on_return(121) dereferenceable(121) %i.o) #25
  invoke void @OPENSSL_free(ptr noundef nonnull %i.o)
          to label %.split4.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #26
  unreachable

.split4.i:                                        ; preds = %bb.f, %bb.e
  invoke void @CRYPTO_refcount_inc(ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %_ZN4bssl5UpRefEP10ssl_ctx_st.exit unwind label %bb.k

_ZN4bssl5UpRefEP10ssl_ctx_st.exit:                ; preds = %.split4.i
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !112  ; 4 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !112
  %.not.i.i.i.i16 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i16, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZN4bssl5UpRefEP10ssl_ctx_st.exit
  %i.s = invoke i32 @CRYPTO_refcount_dec_and_test_zero(ptr noundef nonnull align 4 dereferenceable(4) %i.r)
          to label %.noexc.i.i.i.i unwind label %bb.j

.noexc.i.i.i.i:                                   ; preds = %bb.h
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.noexc.i.i.i.i
  call void @_ZN10ssl_ctx_stD2Ev(ptr noundef nonnull align 8 dead_on_return(650) dereferenceable(650) %i.r) #25
  invoke void @OPENSSL_free(ptr noundef nonnull align 4 dereferenceable(4) %i.r)
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #26
  unreachable

bb.k:                                             ; preds = %.split4.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN4bssl4CERTENS0_8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %i.v

bb.l:                                             ; preds = %_ZN4bssl5UpRefEP10ssl_ctx_st.exit, %.noexc.i.i.i.i, %bb.i
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !112  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 648
  %3 = load i16, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.z = load i8, ptr %i.y, align 4
  %sh.diff = lshr i16 %3, 8
  %tr.sh.diff = trunc nuw i16 %sh.diff to i8
  %i.aa = and i8 %tr.sh.diff, 4
  %i.ab = and i8 %i.z, -5
  %i.ac = or disjoint i8 %i.aa, %i.ab
  store i8 %i.ac, ptr %i.y, align 4
  %.pr = load ptr, ptr %2, align 8, !tbaa !208    ; 3 uses
  %.not.i18 = icmp eq ptr %.pr, null
  br i1 %.not.i18, label %_ZNSt10unique_ptrIN4bssl4CERTENS0_8internal7DeleterEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN4bssl4CERTD1Ev(ptr noundef nonnull align 8 dead_on_return(121) dereferenceable(121) %.pr) #25
  invoke void @OPENSSL_free(ptr noundef nonnull %.pr)
          to label %_ZNSt10unique_ptrIN4bssl4CERTENS0_8internal7DeleterEED2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #26
  unreachable

_ZNSt10unique_ptrIN4bssl4CERTENS0_8internal7DeleterEED2Ev.exit: ; preds = %bb.d, %bb.l, %bb.m
  %.022 = phi ptr [ %i.w, %bb.m ], [ %i.w, %bb.l ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.o

bb.o:                                             ; preds = %bb.b, %bb.c, %bb.a, %_ZNSt10unique_ptrIN4bssl4CERTENS0_8internal7DeleterEED2Ev.exit
  %.1 = phi ptr [ null, %bb.c ], [ null, %bb.a ], [ %.022, %_ZNSt10unique_ptrIN4bssl4CERTENS0_8internal7DeleterEED2Ev.exit ], [ %i.d, %bb.b ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @SSL_set_info_callback(ptr nofree noundef writeonly captures(none) initializes((96, 104)) %0, ptr noundef %1) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %1, ptr %i.a, align 8, !tbaa !182
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @SSL_get_info_callback(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !182
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 3, 12289) i32 @SSL_state(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %SSL_in_init.exit.thread, label %SSL_in_init.exit

SSL_in_init.exit:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1616
  %i.f = load i32, ptr %i.e, align 8
  %.fr3 = freeze i32 %i.f
  %i.g = and i32 %.fr3, 8
  %.not.not = icmp eq i32 %i.g, 0
  br i1 %.not.not, label %bb.b, label %SSL_in_init.exit.thread

SSL_in_init.exit.thread:                          ; preds = %bb.a, %SSL_in_init.exit
  br label %bb.b

bb.b:                                             ; preds = %SSL_in_init.exit, %SSL_in_init.exit.thread
  %i.h = phi i32 [ 3, %SSL_in_init.exit.thread ], [ 12288, %SSL_in_init.exit ]
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @SSL_set_state(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef ptr @SSL_get_shared_ciphers(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(ret: address, provenance) %1, i32 noundef %2) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp slt i32 %2, 1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %1, align 1, !tbaa !108
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %1, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @SSL_get_shared_sigalgs(ptr nofree noundef readnone captures(none) %0, i32 noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4, ptr nofree noundef readnone captures(none) %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #10 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @SSL_CTX_set_quic_method(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !218
  %i.c = load i8, ptr %i.b, align 8, !tbaa !188, !range !189, !noundef !190
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %1, ptr %i.e, align 8, !tbaa !243
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @SSL_set_quic_method(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !109
  %i.b = load i8, ptr %i.a, align 8, !tbaa !188, !range !189, !noundef !190
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %1, ptr %i.d, align 8, !tbaa !191
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define i32 @SSL_get_ex_new_index(i64 noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @CRYPTO_get_ex_new_index_ex(ptr noundef nonnull @_ZN4bsslL19g_ex_data_class_sslE, i64 noundef %0, ptr noundef %1, ptr noundef %4)
  ret i32 %i.a
}

declare i32 @CRYPTO_get_ex_new_index_ex(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define i32 @SSL_set_ex_data(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = tail call i32 @CRYPTO_set_ex_data(ptr noundef nonnull %i.a, i32 noundef %1, ptr noundef %2)
  ret i32 %i.b
}

declare i32 @CRYPTO_set_ex_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define ptr @SSL_get_ex_data(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = tail call ptr @CRYPTO_get_ex_data(ptr noundef nonnull %i.a, i32 noundef %1)
  ret ptr %i.b
}

declare ptr @CRYPTO_get_ex_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define i32 @SSL_CTX_get_ex_new_index(i64 noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @CRYPTO_get_ex_new_index_ex(ptr noundef nonnull @_ZN4bsslL23g_ex_data_class_ssl_ctxE, i64 noundef %0, ptr noundef %1, ptr noundef %4)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define i32 @SSL_CTX_set_ex_data(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = tail call i32 @CRYPTO_set_ex_data(ptr noundef nonnull %i.a, i32 noundef %1, ptr noundef %2)
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define ptr @SSL_CTX_get_ex_data(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = tail call ptr @CRYPTO_get_ex_data(ptr noundef nonnull %i.a, i32 noundef %1)
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 7, 6) i32 @SSL_want(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  %i.d = load i32, ptr %i.c, align 4, !tbaa !104  ; 2 uses
  %i.e = icmp eq i32 %i.d, 6
  %spec.select = select i1 %i.e, i32 0, i32 %i.d
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @SSL_CTX_set_tmp_rsa_callback(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #10 {
bb.a:
end_hunk_1
begin_hunk_2_@SSL_is_dtls_handshake_idle:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !109
  %i.b = load i8, ptr %i.a, align 8, !tbaa !188, !range !189, !noundef !190
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 280
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !107  ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %SSL_in_init.exit.thread, label %SSL_in_init.exit

SSL_in_init.exit:                                 ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1616
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, 8
  %.not8.not = icmp eq i32 %i.i, 0
  br i1 %.not8.not, label %"_ZSt6all_ofIPSt10unique_ptrIN4bssl19DTLSIncomingMessageENS1_8internal7DeleterEEZ26SSL_is_dtls_handshake_idleE3$_0EbT_S8_T0_.exit.thread", label %SSL_in_init.exit.thread

SSL_in_init.exit.thread:                          ; preds = %bb.c, %SSL_in_init.exit
  %i.j = tail call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef nonnull %0)
  %i.k = icmp ult i16 %i.j, 772
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !324 ; 9 uses
  br i1 %i.k, label %.lr.ph.preheader.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %SSL_in_init.exit.thread
  %i.l = getelementptr inbounds nuw i8, ptr %.pre, i64 640
  %i.m = load i8, ptr %i.l, align 8, !tbaa !501
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %.lr.ph.preheader.i.i.i.i, label %"_ZSt6all_ofIPSt10unique_ptrIN4bssl19DTLSIncomingMessageENS1_8internal7DeleterEEZ26SSL_is_dtls_handshake_idleE3$_0EbT_S8_T0_.exit.thread"

.lr.ph.preheader.i.i.i.i:                         ; preds = %SSL_in_init.exit.thread, %bb.d
  %scevgep.i.i.i.i = getelementptr i8, ptr %.pre, i64 280
  %.02949.i.i.i.i.ptr = getelementptr inbounds nuw i8, ptr %.pre, i64 248
  %.029.val32.i.i.i.i = load ptr, ptr %.02949.i.i.i.i.ptr, align 8, !tbaa !503
  %.not.i.i.i.not.i.i.i.i = icmp eq ptr %.029.val32.i.i.i.i, null
  br i1 %.not.i.i.i.not.i.i.i.i, label %bb.e, label %"_ZSt6all_ofIPSt10unique_ptrIN4bssl19DTLSIncomingMessageENS1_8internal7DeleterEEZ26SSL_is_dtls_handshake_idleE3$_0EbT_S8_T0_.exit.thread"

bb.e:                                             ; preds = %.lr.ph.preheader.i.i.i.i
  %.ptr18 = getelementptr inbounds nuw i8, ptr %.pre, i64 256
  %.val31.i.i.i.i = load ptr, ptr %.ptr18, align 8, !tbaa !503
  %.not.i.i.i33.not.i.i.i.i = icmp eq ptr %.val31.i.i.i.i, null
  br i1 %.not.i.i.i33.not.i.i.i.i, label %bb.f, label %"_ZSt6all_ofIPSt10unique_ptrIN4bssl19DTLSIncomingMessageENS1_8internal7DeleterEEZ26SSL_is_dtls_handshake_idleE3$_0EbT_S8_T0_.exit.thread"

bb.f:                                             ; preds = %bb.e
  %.ptr17 = getelementptr inbounds nuw i8, ptr %.pre, i64 264
  %.val30.i.i.i.i = load ptr, ptr %.ptr17, align 8, !tbaa !503
  %.not.i.i.i34.not.i.i.i.i = icmp eq ptr %.val30.i.i.i.i, null
  br i1 %.not.i.i.i34.not.i.i.i.i, label %bb.g, label %"_ZSt6all_ofIPSt10unique_ptrIN4bssl19DTLSIncomingMessageENS1_8internal7DeleterEEZ26SSL_is_dtls_handshake_idleE3$_0EbT_S8_T0_.exit.thread"

bb.g:                                             ; preds = %bb.f
  %.ptr = getelementptr inbounds nuw i8, ptr %.pre, i64 272
  %.val.i.i.i.i = load ptr, ptr %.ptr, align 8, !tbaa !503
  %.not.i.i.i35.not.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i.i35.not.i.i.i.i, label %bb.h, label %"_ZSt6all_ofIPSt10unique_ptrIN4bssl19DTLSIncomingMessageENS1_8internal7DeleterEEZ26SSL_is_dtls_handshake_idleE3$_0EbT_S8_T0_.exit.thread"

bb.h:                                             ; preds = %bb.g
  %.029.val.i.i.i.i = load ptr, ptr %scevgep.i.i.i.i, align 8, !tbaa !503
  %.not.i.i.i36.not.i.i.i.i = icmp eq ptr %.029.val.i.i.i.i, null
  br i1 %.not.i.i.i36.not.i.i.i.i, label %bb.i, label %"_ZSt6all_ofIPSt10unique_ptrIN4bssl19DTLSIncomingMessageENS1_8internal7DeleterEEZ26SSL_is_dtls_handshake_idleE3$_0EbT_S8_T0_.exit.thread"

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr i8, ptr %.pre, i64 288
  %.1.val.i.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !503
  %.not.i.i.i37.not.i.i.i.i = icmp eq ptr %.1.val.i.i.i.i, null
  br i1 %.not.i.i.i37.not.i.i.i.i, label %bb.j, label %"_ZSt6all_ofIPSt10unique_ptrIN4bssl19DTLSIncomingMessageENS1_8internal7DeleterEEZ26SSL_is_dtls_handshake_idleE3$_0EbT_S8_T0_.exit.thread"

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr i8, ptr %.pre, i64 296
  %.2.val.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !503
  %.not.i.i.i38.not.i.i.i.i = icmp eq ptr %.2.val.i.i.i.i, null
  br i1 %.not.i.i.i38.not.i.i.i.i, label %"_ZSt6all_ofIPSt10unique_ptrIN4bssl19DTLSIncomingMessageENS1_8internal7DeleterEEZ26SSL_is_dtls_handshake_idleE3$_0EbT_S8_T0_.exit.thread12", label %"_ZSt6all_ofIPSt10unique_ptrIN4bssl19DTLSIncomingMessageENS1_8internal7DeleterEEZ26SSL_is_dtls_handshake_idleE3$_0EbT_S8_T0_.exit.thread"

"_ZSt6all_ofIPSt10unique_ptrIN4bssl19DTLSIncomingMessageENS1_8internal7DeleterEEZ26SSL_is_dtls_handshake_idleE3$_0EbT_S8_T0_.exit.thread12": ; preds = %bb.j
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 220
  %i.s = load i16, ptr %i.r, align 4
  %i.t = and i16 %i.s, 256
  %.not9 = icmp eq i16 %i.t, 0
  br i1 %.not9, label %bb.k, label %"_ZSt6all_ofIPSt10unique_ptrIN4bssl19DTLSIncomingMessageENS1_8internal7DeleterEEZ26SSL_is_dtls_handshake_idleE3$_0EbT_S8_T0_.exit.thread"

bb.k:                                             ; preds = %"_ZSt6all_ofIPSt10unique_ptrIN4bssl19DTLSIncomingMessageENS1_8internal7DeleterEEZ26SSL_is_dtls_handshake_idleE3$_0EbT_S8_T0_.exit.thread12"
  %i.u = load i16, ptr %.pre, align 8
  %i.v = and i16 %i.u, 384
  %i.w = icmp eq i16 %i.v, 0
  %i.x = zext i1 %i.w to i32
  br label %"_ZSt6all_ofIPSt10unique_ptrIN4bssl19DTLSIncomingMessageENS1_8internal7DeleterEEZ26SSL_is_dtls_handshake_idleE3$_0EbT_S8_T0_.exit.thread"

"_ZSt6all_ofIPSt10unique_ptrIN4bssl19DTLSIncomingMessageENS1_8internal7DeleterEEZ26SSL_is_dtls_handshake_idleE3$_0EbT_S8_T0_.exit.thread": ; preds = %.lr.ph.preheader.i.i.i.i, %bb.e, %bb.f, %bb.g, %bb.h, %bb.j, %bb.i, %bb.k, %"_ZSt6all_ofIPSt10unique_ptrIN4bssl19DTLSIncomingMessageENS1_8internal7DeleterEEZ26SSL_is_dtls_handshake_idleE3$_0EbT_S8_T0_.exit.thread12", %bb.d, %SSL_in_init.exit
  %i.y = phi i32 [ 0, %"_ZSt6all_ofIPSt10unique_ptrIN4bssl19DTLSIncomingMessageENS1_8internal7DeleterEEZ26SSL_is_dtls_handshake_idleE3$_0EbT_S8_T0_.exit.thread12" ], [ 0, %bb.h ], [ 0, %bb.d ], [ 0, %SSL_in_init.exit ], [ %i.x, %bb.k ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %.lr.ph.preheader.i.i.i.i ]
  ret i32 %i.y
}

; Function Attrs: mustprogress nofree nounwind uwtable
define range(i32 0, 65537) i32 @SSL_get_dtls_handshake_read_seq(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #18 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !109
  %i.b = load i8, ptr %i.a, align 8, !tbaa !188, !range !189, !noundef !190
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !324  ; 2 uses
  %i.e = load i16, ptr %i.d, align 8
  %i.f = and i16 %i.e, 16
  %.not3 = icmp eq i16 %i.f, 0
  br i1 %.not3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.h = load i16, ptr %i.g, align 4, !tbaa !504
  %i.i = zext i16 %i.h to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.j = phi i32 [ %i.i, %bb.d ], [ 65536, %bb.c ]
  ret i32 %i.j
}

; Function Attrs: mustprogress nofree nounwind uwtable
define range(i32 0, 65537) i32 @SSL_get_dtls_handshake_write_seq(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #18 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !109
  %i.b = load i8, ptr %i.a, align 8, !tbaa !188, !range !189, !noundef !190
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !324  ; 2 uses
  %i.e = load i16, ptr %i.d, align 8
  %i.f = and i16 %i.e, 8
  %.not3 = icmp eq i16 %i.f, 0
  br i1 %.not3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.h = load i16, ptr %i.g, align 2, !tbaa !505
  %i.i = zext i16 %i.h to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.j = phi i32 [ %i.i, %bb.d ], [ 65536, %bb.c ]
  ret i32 %i.j
}

; Function Attrs: mustprogress nofree nounwind uwtable
define zeroext i16 @SSL_get_dtls_read_epoch(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #18 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !109
  %i.b = load i8, ptr %i.a, align 8, !tbaa !188, !range !189, !noundef !190
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !324  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !506  ; 2 uses
  %.not4 = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %spec.select = select i1 %.not4, ptr %i.g, ptr %i.f
  %i.h = load i16, ptr %spec.select, align 8, !tbaa !387
  ret i16 %i.h
}

; Function Attrs: mustprogress nofree nounwind uwtable
define zeroext i16 @SSL_get_dtls_write_epoch(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #18 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !109
  %i.b = load i8, ptr %i.a, align 8, !tbaa !188, !range !189, !noundef !190
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !324
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %1 = load i64, ptr %i.e, align 8, !tbaa !388
  %2 = lshr i64 %1, 48
  %3 = trunc nuw i64 %2 to i16
  ret i16 %3
}

; Function Attrs: mustprogress uwtable
define noundef i64 @SSL_get_dtls_read_sequence(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !109
  %i.b = load i8, ptr %i.a, align 8, !tbaa !188, !range !189, !noundef !190
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN4bssl19dtls_get_read_epochEPK6ssl_stt(ptr noundef nonnull %0, i16 noundef zeroext %1) ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.g = load i64, ptr %i.f, align 8, !tbaa !386  ; 2 uses
  %i.h = tail call noundef zeroext i1 @_ZNK4bssl16DTLSReplayBitmap13ShouldDiscardEm(ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 noundef %i.g)
  %i.i = zext i1 %i.h to i64
  %spec.select = add i64 %i.g, %i.i
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.09 = phi i64 [ %spec.select, %bb.d ], [ -1, %bb.c ]
  ret i64 %.09
}

declare noundef ptr @_ZN4bssl19dtls_get_read_epochEPK6ssl_stt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4bssl16DTLSReplayBitmap13ShouldDiscardEm(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define range(i64 -1, 281474976710656) i64 @SSL_get_dtls_write_sequence(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !109
  %i.b = load i8, ptr %i.a, align 8, !tbaa !188, !range !189, !noundef !190
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN4bssl20dtls_get_write_epochEPK6ssl_stt(ptr noundef nonnull %0, i16 noundef zeroext %1) ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i64, ptr %i.c, align 8, !tbaa !388
  %i.f = and i64 %i.e, 281474976710655
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i64 [ %i.f, %bb.d ], [ -1, %bb.c ]
  ret i64 %.0
}

declare noundef ptr @_ZN4bssl20dtls_get_write_epochEPK6ssl_stt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @SSL_get_dtls_read_traffic_secret(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !109
  %i.b = load i8, ptr %i.a, align 8, !tbaa !188, !range !189, !noundef !190
  %.not.i = icmp eq i8 %i.b, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i16 %3, 0
  br i1 %i.c, label %_ZL23get_dtls_traffic_secretIN4bssl13DTLSReadEpochEEiPK6ssl_stPFPT_S4_tEPPKhPmt.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  %i.g = load i16, ptr %i.f, align 8, !tbaa !251
  %i.h = icmp eq i16 %i.g, 0
  br i1 %i.h, label %_ZL23get_dtls_traffic_secretIN4bssl13DTLSReadEpochEEiPK6ssl_stPFPT_S4_tEPPKhPmt.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef nonnull %0)
  %i.j = icmp ult i16 %i.i, 772
  br i1 %i.j, label %_ZL23get_dtls_traffic_secretIN4bssl13DTLSReadEpochEEiPK6ssl_stPFPT_S4_tEPPKhPmt.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call noundef ptr @_ZN4bssl19dtls_get_read_epochEPK6ssl_stt(ptr noundef nonnull %0, i16 noundef zeroext %3) ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZL23get_dtls_traffic_secretIN4bssl13DTLSReadEpochEEiPK6ssl_stPFPT_S4_tEPPKhPmt.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store ptr %i.m, ptr %1, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.o = load i8, ptr %i.n, align 1, !tbaa !192
  %i.p = zext i8 %i.o to i64
  store i64 %i.p, ptr %2, align 8, !tbaa !16
  br label %_ZL23get_dtls_traffic_secretIN4bssl13DTLSReadEpochEEiPK6ssl_stPFPT_S4_tEPPKhPmt.exit

_ZL23get_dtls_traffic_secretIN4bssl13DTLSReadEpochEEiPK6ssl_stPFPT_S4_tEPPKhPmt.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.1.i = phi i32 [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.d ], [ 1, %bb.g ], [ 0, %bb.f ]
  ret i32 %.1.i
}

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @SSL_get_dtls_write_traffic_secret(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !109
  %i.b = load i8, ptr %i.a, align 8, !tbaa !188, !range !189, !noundef !190
  %.not.i = icmp eq i8 %i.b, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i16 %3, 0
  br i1 %i.c, label %_ZL23get_dtls_traffic_secretIN4bssl14DTLSWriteEpochEEiPK6ssl_stPFPT_S4_tEPPKhPmt.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  %i.g = load i16, ptr %i.f, align 8, !tbaa !251
  %i.h = icmp eq i16 %i.g, 0
  br i1 %i.h, label %_ZL23get_dtls_traffic_secretIN4bssl14DTLSWriteEpochEEiPK6ssl_stPFPT_S4_tEPPKhPmt.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef nonnull %0)
  %i.j = icmp ult i16 %i.i, 772
  br i1 %i.j, label %_ZL23get_dtls_traffic_secretIN4bssl14DTLSWriteEpochEEiPK6ssl_stPFPT_S4_tEPPKhPmt.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call noundef ptr @_ZN4bssl20dtls_get_write_epochEPK6ssl_stt(ptr noundef nonnull %0, i16 noundef zeroext %3) ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZL23get_dtls_traffic_secretIN4bssl14DTLSWriteEpochEEiPK6ssl_stPFPT_S4_tEPPKhPmt.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.m, ptr %1, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.o = load i8, ptr %i.n, align 1, !tbaa !192
  %i.p = zext i8 %i.o to i64
  store i64 %i.p, ptr %2, align 8, !tbaa !16
  br label %_ZL23get_dtls_traffic_secretIN4bssl14DTLSWriteEpochEEiPK6ssl_stPFPT_S4_tEPPKhPmt.exit

_ZL23get_dtls_traffic_secretIN4bssl14DTLSWriteEpochEEiPK6ssl_stPFPT_S4_tEPPKhPmt.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.1.i = phi i32 [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.d ], [ 1, %bb.g ], [ 0, %bb.f ]
  ret i32 %.1.i
}

; Function Attrs: mustprogress uwtable
define zeroext i16 @SSL_get_peer_signature_algorithm(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @SSL_get_session(ptr noundef %0) ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i16, ptr %i.c, align 8, !tbaa !507
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i16 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i16 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i64 1, 33) i64 @SSL_get_client_random(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %bb.a
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %2, i64 32) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull readonly align 1 %i.d, i64 %spec.store.select, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZL14OPENSSL_memcpyPvPKvm.exit
  %.0 = phi i64 [ %spec.store.select, %_ZL14OPENSSL_memcpyPvPKvm.exit ], [ 32, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i64 1, 33) i64 @SSL_get_server_random(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #8 {
end_hunk_2
