inline.NumInlined: 527
inline.NumDeleted: 260
begin_hunk_0_@_ZN4bsslL16tls13_psk_binderEPhPmPK14ssl_session_stRKNS_13SSLTranscriptENS_4SpanIKhEEmb:bb.a
  br i1 %.not30, label %bb.z, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = invoke i32 @EVP_DigestFinal_ex(ptr noundef nonnull %10, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %.not31 = icmp eq i32 %i.z, 0
  br i1 %.not31, label %bb.z, label %bb.x

bb.m:                                             ; preds = %bb.k, %bb.i, %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.n:                                             ; preds = %bb.f
  %i.ab = icmp ult i64 %i.w, 12
  br i1 %i.ab, label %bb.z, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ad = add i64 %i.w, -12
  %i.ae = invoke noundef zeroext i1 @_ZNK4bssl13SSLTranscript17CopyToHashContextEP13env_md_ctx_stPK9env_md_st(ptr noundef nonnull align 8 dereferenceable(44) %3, ptr noundef nonnull %10, ptr noundef %i.h)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  br i1 %i.ae, label %bb.q, label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.af = invoke i32 @EVP_DigestUpdate(ptr noundef nonnull %10, ptr noundef %4, i64 noundef 4)
          to label %bb.r unwind label %bb.w

bb.r:                                             ; preds = %bb.q
  %.not32 = icmp eq i32 %i.af, 0
  br i1 %.not32, label %bb.z, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ag = invoke i32 @EVP_DigestUpdate(ptr noundef nonnull %10, ptr noundef nonnull %i.ac, i64 noundef %i.ad)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %bb.s
  %.not33 = icmp eq i32 %i.ag, 0
  br i1 %.not33, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ah = invoke i32 @EVP_DigestFinal_ex(ptr noundef nonnull %10, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %.not35 = icmp eq i32 %i.ah, 0
  br i1 %.not35, label %bb.z, label %bb.x

bb.w:                                             ; preds = %bb.u, %bb.s, %bb.q, %bb.o
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.x:                                             ; preds = %bb.v, %bb.l
  %i.aj = load i32, ptr %i.g, align 4, !tbaa !158
  %i.ak = zext i32 %i.aj to i64
  %i.al = invoke fastcc noundef zeroext i1 @_ZN4bsslL17tls13_verify_dataEPhPmPK9env_md_sttNS_4SpanIKhEES7_b(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.h, ptr nonnull %i.e, i64 %i.i, ptr nonnull %i.f, i64 %i.ak, i1 noundef zeroext %7)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.z:                                             ; preds = %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.h, %bb.j, %bb.l
  %.127 = phi i1 [ false, %bb.h ], [ false, %bb.v ], [ false, %bb.n ], [ false, %bb.j ], [ false, %bb.l ], [ false, %bb.p ], [ false, %bb.r ], [ false, %bb.t ], [ %i.al, %bb.x ]
  %i.an = invoke noundef i32 @EVP_MD_CTX_cleanup(ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZN4bssl8internal21StackAllocatedMovableI13env_md_ctx_stiXadL_Z15EVP_MD_CTX_initEEXadL_Z18EVP_MD_CTX_cleanupEEXadL_Z15EVP_MD_CTX_moveEEED2Ev.exit unwind label %bb.aa ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #14
  unreachable

_ZN4bssl8internal21StackAllocatedMovableI13env_md_ctx_stiXadL_Z15EVP_MD_CTX_initEEXadL_Z18EVP_MD_CTX_cleanupEEXadL_Z15EVP_MD_CTX_moveEEED2Ev.exit: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  br label %.critedge

bb.ab:                                            ; preds = %bb.w, %bb.y, %bb.m
  %.pn36 = phi { ptr, i32 } [ %i.am, %bb.y ], [ %i.aa, %bb.m ], [ %i.ai, %bb.w ]
  %i.aq = invoke noundef i32 @EVP_MD_CTX_cleanup(ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZN4bssl8internal21StackAllocatedMovableI13env_md_ctx_stiXadL_Z15EVP_MD_CTX_initEEXadL_Z18EVP_MD_CTX_cleanupEEXadL_Z15EVP_MD_CTX_moveEEED2Ev.exit47 unwind label %bb.ac ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #14
  unreachable

_ZN4bssl8internal21StackAllocatedMovableI13env_md_ctx_stiXadL_Z15EVP_MD_CTX_initEEXadL_Z18EVP_MD_CTX_cleanupEEXadL_Z15EVP_MD_CTX_moveEEED2Ev.exit47: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  resume { ptr, i32 } %.pn36

.critedge:                                        ; preds = %bb.b, %bb.a, %bb.c, %_ZN4bssl8internal21StackAllocatedMovableI13env_md_ctx_stiXadL_Z15EVP_MD_CTX_initEEXadL_Z18EVP_MD_CTX_cleanupEEXadL_Z15EVP_MD_CTX_moveEEED2Ev.exit, %bb.e
  %.2 = phi i1 [ %.127, %_ZN4bssl8internal21StackAllocatedMovableI13env_md_ctx_stiXadL_Z15EVP_MD_CTX_initEEXadL_Z18EVP_MD_CTX_cleanupEEXadL_Z15EVP_MD_CTX_moveEEED2Ev.exit ], [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4bssl23tls13_verify_psk_binderEPKNS_13SSL_HANDSHAKEEPK14ssl_session_stRKNS_10SSLMessageEP6cbs_st(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %4 = alloca %struct.cbs_st, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !737
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !739
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !739
  %i.j = add i64 %i.i, 2
  %i.k = load ptr, ptr %0, align 8, !tbaa !11
  %i.l = tail call i32 @SSL_is_dtls(ptr noundef %i.k)
  %i.m = icmp ne i32 %i.l, 0
  %i.n = call fastcc noundef zeroext i1 @_ZN4bsslL16tls13_psk_binderEPhPmPK14ssl_session_stRKNS_13SSLTranscriptENS_4SpanIKhEEmb(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(44) %i.c, ptr %i.e, i64 %i.g, i64 noundef %i.j, i1 noundef zeroext %i.m)
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = call i32 @CBS_get_u8_length_prefixed(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str.2, i32 noundef 620)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !739  ; 2 uses
  %i.r = load i64, ptr %i.b, align 8, !tbaa !162
  %i.s = icmp eq i64 %i.q, %i.r
  br i1 %i.s, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %4, align 8, !tbaa !737
  %i.u = call i32 @CRYPTO_memcmp(ptr noundef %i.t, ptr noundef nonnull %i.a, i64 noundef %i.q)
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.d, %bb.e
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 142, ptr noundef nonnull @.str.2, i32 noundef 631)
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e, %bb.c
  %.1 = phi i1 [ false, %bb.c ], [ true, %bb.e ], [ false, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i1 %.1
}

declare i32 @CBS_get_u8_length_prefixed(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @CRYPTO_memcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef range(i64 30, 39) i64 @_ZN4bssl40ssl_ech_confirmation_signal_hello_offsetEPK6ssl_st(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @SSL_is_dtls(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  %i.b = select i1 %.not, i64 30, i64 38
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4bssl27ssl_ech_accept_confirmationEPKNS_13SSL_HANDSHAKEENS_4SpanIhEENS3_IKhEERKNS_13SSLTranscriptEbS6_m(ptr nofree noundef readonly captures(none) %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(44) %5, i1 noundef zeroext %6, ptr nofree noundef readonly byval(%"class.bssl::Span") align 8 captures(none) %7, i64 noundef %8) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.bssl::internal::StackAllocatedMovable", align 8 ; 12 uses
  %i.c = alloca [64 x i8], align 16               ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %10 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %11 = alloca %"class.bssl::Span", align 8       ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !161  ; 5 uses
  %i.g = add i64 %8, 8                            ; 3 uses
  %i.h = icmp ult i64 %i.f, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str.2, i32 noundef 656)
  br label %bb.ag

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %7, align 8, !tbaa !159    ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 4)
  %i.j = load ptr, ptr %0, align 8, !tbaa !11
  %i.k = tail call i32 @SSL_is_dtls(ptr noundef %i.j)
  %.not = icmp eq i32 %i.k, 0
  %i.l = select i1 %.not, i64 4, i64 12           ; 4 uses
  %i.m = icmp ugt i64 %i.l, %i.f
  br i1 %i.m, label %bb.d, label %_ZNK4bssl4SpanIKhE7subspanEmm.exit39

bb.d:                                             ; preds = %bb.c
  tail call void @abort() #14
  unreachable

_ZNK4bssl4SpanIKhE7subspanEmm.exit39:             ; preds = %bb.c
  %i.n = sub i64 %8, %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  %i.p = sub nuw i64 %i.f, %i.l
  %.sroa.speculated.i33 = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  %i.r = sub nuw i64 %i.f, %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @EVP_MD_CTX_init(ptr noundef nonnull align 8 dereferenceable(32) %9)
  %i.s = invoke noundef ptr @_ZNK4bssl13SSLTranscript6DigestEv(ptr noundef nonnull align 8 dereferenceable(44) %5)
          to label %bb.e unwind label %bb.q

bb.e:                                             ; preds = %_ZNK4bssl4SpanIKhE7subspanEmm.exit39
  %i.t = invoke noundef zeroext i1 @_ZNK4bssl13SSLTranscript17CopyToHashContextEP13env_md_ctx_stPK9env_md_st(ptr noundef nonnull align 8 dereferenceable(44) %5, ptr noundef nonnull %9, ptr noundef %i.s)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %bb.e
  br i1 %i.t, label %bb.g, label %bb.ac

bb.g:                                             ; preds = %bb.f
  %i.u = invoke i32 @EVP_DigestUpdate(ptr noundef nonnull %9, ptr noundef %i.i, i64 noundef %.sroa.speculated.i)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  %.not24 = icmp eq i32 %i.u, 0
  br i1 %.not24, label %bb.ac, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = invoke i32 @EVP_DigestUpdate(ptr noundef nonnull %9, ptr noundef nonnull %i.o, i64 noundef %.sroa.speculated.i33)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  %.not25 = icmp eq i32 %i.v, 0
  br i1 %.not25, label %bb.ac, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = invoke i32 @EVP_DigestUpdate(ptr noundef nonnull %9, ptr noundef nonnull @_ZZN4bssl27ssl_ech_accept_confirmationEPKNS_13SSL_HANDSHAKEENS_4SpanIhEENS3_IKhEERKNS_13SSLTranscriptEbS6_mE6kZeros, i64 noundef 8)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  %.not26 = icmp eq i32 %i.w, 0
  br i1 %.not26, label %bb.ac, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = invoke i32 @EVP_DigestUpdate(ptr noundef nonnull %9, ptr noundef nonnull %i.q, i64 noundef %i.r)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  %.not27 = icmp eq i32 %i.x, 0
  br i1 %.not27, label %bb.ac, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.y = invoke i32 @EVP_DigestFinal_ex(ptr noundef nonnull %9, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  %.not28 = icmp eq i32 %i.y, 0
  br i1 %.not28, label %bb.ac, label %bb.r

bb.q:                                             ; preds = %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %_ZNK4bssl4SpanIKhE7subspanEmm.exit39
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  %i.aa = invoke noundef ptr @_ZNK4bssl13SSLTranscript6DigestEv(ptr noundef nonnull align 8 dereferenceable(44) %5)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.ab = invoke noundef i64 @_ZNK4bssl13SSLTranscript9DigestLenEv(ptr noundef nonnull align 8 dereferenceable(44) %5)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ac = invoke i32 @HKDF_extract(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %i.aa, ptr noundef %3, i64 noundef %4, ptr noundef nonnull @_ZZN4bssl27ssl_ech_accept_confirmationEPKNS_13SSL_HANDSHAKEENS_4SpanIhEENS3_IKhEERKNS_13SSLTranscriptEbS6_mE6kZeros, i64 noundef %i.ab)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %.not29 = icmp eq i32 %i.ac, 0
  br i1 %.not29, label %bb.aa, label %bb.w

bb.v:                                             ; preds = %bb.w, %bb.t, %bb.s, %bb.r
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.w:                                             ; preds = %bb.u
  %i.ae = invoke noundef ptr @_ZNK4bssl13SSLTranscript6DigestEv(ptr noundef nonnull align 8 dereferenceable(44) %5)
          to label %bb.x unwind label %bb.v

bb.x:                                             ; preds = %bb.w
  %i.af = load i64, ptr %i.d, align 8, !tbaa !162
  %i.ag = select i1 %6, ptr @.str.10, ptr @.str.11
  %i.ah = select i1 %6, i64 27, i64 23
  store i64 %i.ah, ptr %10, align 8, !tbaa !155
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !157
  %i.aj = load i32, ptr %i.b, align 4, !tbaa !158
  %i.ak = zext i32 %i.aj to i64
  store ptr %i.a, ptr %11, align 8, !tbaa !159
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !161
  %i.am = load ptr, ptr %0, align 8, !tbaa !11
  %i.an = invoke i32 @SSL_is_dtls(ptr noundef %i.am)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ao = icmp ne i32 %i.an, 0
  %i.ap = invoke fastcc noundef zeroext i1 @_ZN4bsslL17hkdf_expand_labelENS_4SpanIhEEPK9env_md_stNS0_IKhEESt17basic_string_viewIcSt11char_traitsIcEES6_b(ptr %1, i64 %2, ptr noundef %i.ae, ptr nonnull %i.c, i64 %i.af, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %10, ptr noundef nonnull byval(%"class.bssl::Span") align 8 %11, i1 noundef zeroext %i.ao)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y, %bb.u
  %.0 = phi i1 [ false, %bb.u ], [ %i.ap, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z, %bb.v
  %.pn.pn = phi { ptr, i32 } [ %i.ad, %bb.v ], [ %i.aq, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.ae

bb.ac:                                            ; preds = %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.aa
  %.1 = phi i1 [ %.0, %bb.aa ], [ false, %bb.p ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.f ]
  %i.ar = invoke noundef i32 @EVP_MD_CTX_cleanup(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZN4bssl8internal21StackAllocatedMovableI13env_md_ctx_stiXadL_Z15EVP_MD_CTX_initEEXadL_Z18EVP_MD_CTX_cleanupEEXadL_Z15EVP_MD_CTX_moveEEED2Ev.exit unwind label %bb.ad ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #14
  unreachable

_ZN4bssl8internal21StackAllocatedMovableI13env_md_ctx_stiXadL_Z15EVP_MD_CTX_initEEXadL_Z18EVP_MD_CTX_cleanupEEXadL_Z15EVP_MD_CTX_moveEEED2Ev.exit: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ab, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ab ], [ %i.z, %bb.q ]
  %i.au = invoke noundef i32 @EVP_MD_CTX_cleanup(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZN4bssl8internal21StackAllocatedMovableI13env_md_ctx_stiXadL_Z15EVP_MD_CTX_initEEXadL_Z18EVP_MD_CTX_cleanupEEXadL_Z15EVP_MD_CTX_moveEEED2Ev.exit40 unwind label %bb.af ; 0 uses

bb.af:                                            ; preds = %bb.ae
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #14
  unreachable

_ZN4bssl8internal21StackAllocatedMovableI13env_md_ctx_stiXadL_Z15EVP_MD_CTX_initEEXadL_Z18EVP_MD_CTX_cleanupEEXadL_Z15EVP_MD_CTX_moveEEED2Ev.exit40: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  resume { ptr, i32 } %.pn.pn.pn

bb.ag:                                            ; preds = %_ZN4bssl8internal21StackAllocatedMovableI13env_md_ctx_stiXadL_Z15EVP_MD_CTX_initEEXadL_Z18EVP_MD_CTX_cleanupEEXadL_Z15EVP_MD_CTX_moveEEED2Ev.exit, %bb.b
  %.2 = phi i1 [ false, %bb.b ], [ %.1, %_ZN4bssl8internal21StackAllocatedMovableI13env_md_ctx_stiXadL_Z15EVP_MD_CTX_initEEXadL_Z18EVP_MD_CTX_cleanupEEXadL_Z15EVP_MD_CTX_moveEEED2Ev.exit ]
  ret i1 %.2
}

declare noundef zeroext i1 @_ZNK4bssl13SSLTranscript17CopyToHashContextEP13env_md_ctx_stPK9env_md_st(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @EVP_DigestUpdate(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @EVP_DigestFinal_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @HKDF_extract(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef i64 @_ZNK4bssl13SSLTranscript9DigestLenEv(ptr noundef nonnull align 8 dereferenceable(44)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN4bssl13SSLTranscript8InitHashEtPK13ssl_cipher_st(ptr noundef nonnull align 8 dereferenceable(44), i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare i32 @CRYPTO_tls13_hkdf_expand_label(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @CBB_zero(ptr noundef) local_unnamed_addr #1

declare i32 @CBB_init(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @CBB_add_u16(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

declare i32 @CBB_add_u8_length_prefixed(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @CBB_add_bytes(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @CBB_finish(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @CBB_cleanup(ptr noundef) local_unnamed_addr #1

declare i32 @HKDF_expand(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @OPENSSL_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #15 ; 0 uses
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

end_hunk_0
