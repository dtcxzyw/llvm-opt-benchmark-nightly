Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/d1_both?download=true
inline.NumInlined: 628
inline.NumDeleted: 363
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4bssl18dtls1_init_messageEPK6ssl_stP6cbb_stS4_h:bb.a
bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !155
  %i.h = tail call i32 @CBB_add_u16(ptr noundef %1, i16 noundef zeroext %i.g)
  %.not11 = icmp eq i32 %i.h, 0
  br i1 %.not11, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @CBB_add_u24(ptr noundef %1, i32 noundef 0)
  %.not12 = icmp eq i32 %i.i, 0
  br i1 %.not12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call i32 @CBB_add_u24_length_prefixed(ptr noundef %1, ptr noundef %2)
  %.not13 = icmp ne i32 %i.j, 0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.0 = phi i1 [ false, %bb.a ], [ %.not13, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  ret i1 %.0
}

declare i32 @CBB_init(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @CBB_add_u8(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare i32 @CBB_add_u24(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @CBB_add_u16(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

declare i32 @CBB_add_u24_length_prefixed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4bssl20dtls1_finish_messageEPK6ssl_stP6cbb_stPNS_5ArrayIhEE(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4bssl14CBBFinishArrayEP6cbb_stPNS_5ArrayIhEE(ptr noundef %1, ptr noundef %2)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !20
  %i.d = icmp ult i64 %i.c, 12
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str, i32 noundef 564)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %2, align 8, !tbaa !19     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.f, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.g, i64 3, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.c ], [ true, %bb.d ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN4bssl14CBBFinishArrayEP6cbb_stPNS_5ArrayIhEE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4bssl17dtls1_add_messageEP6ssl_stNS_5ArrayIhEE(ptr noundef %0, ptr nofree noundef align 8 captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.bssl::Array", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @OPENSSL_free(ptr noundef null)
  %i.b = load ptr, ptr %1, align 8, !tbaa !19
  store ptr %i.b, ptr %2, align 8, !tbaa !145
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20
  store i64 %i.d, ptr %i.a, align 8, !tbaa !135
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.e = invoke fastcc noundef zeroext i1 @_ZN4bsslL12add_outgoingEP6ssl_stbNS_5ArrayIhEE(ptr noundef %0, i1 noundef zeroext false, ptr noundef align 8 %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !tbaa !19
  invoke void @OPENSSL_free(ptr noundef %i.f)
          to label %_ZN4bssl5ArrayIhED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #15
  unreachable

_ZN4bssl5ArrayIhED2Ev.exit:                       ; preds = %bb.b
  ret i1 %i.e

bb.d:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %2, align 8, !tbaa !19
  invoke void @OPENSSL_free(ptr noundef %i.j)
          to label %_ZN4bssl5ArrayIhED2Ev.exit2 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #15
  unreachable

_ZN4bssl5ArrayIhED2Ev.exit2:                      ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4bsslL12add_outgoingEP6ssl_stbNS_5ArrayIhEE(ptr noundef %0, i1 noundef zeroext %1, ptr nofree noundef nonnull align 8 captures(none) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.bssl::DTLSOutgoingMessage", align 8 ; 15 uses
  %4 = alloca %"struct.bssl::DTLSOutgoingMessage", align 8 ; 9 uses
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.d = load i16, ptr %i.c, align 8
  %i.e = and i16 %i.d, 2
  %.not = icmp eq i16 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4bssl16dtls1_stop_timerEP6ssl_st(ptr noundef nonnull %0)
  tail call void @_ZN4bssl28dtls_clear_outgoing_messagesEP6ssl_st(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br i1 %1, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !76   ; 2 uses
  %i.g = load i16, ptr %i.f, align 8
  %i.h = and i16 %i.g, 8
  %.not20 = icmp eq i16 %i.h, 0
  br i1 %.not20, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 69, ptr noundef nonnull @.str, i32 noundef 587)
  br label %bb.af

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !146
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 280
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !193  ; 2 uses
  %.not38 = icmp eq ptr %i.l, null
  br i1 %.not38, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 408
  %i.n = load ptr, ptr %2, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !20
  %i.q = tail call noundef zeroext i1 @_ZN4bssl13SSLTranscript6UpdateENS_4SpanIKhEE(ptr noundef nonnull align 8 dereferenceable(44) %i.m, ptr %i.n, i64 %i.p)
  br i1 %i.q, label %._crit_edge, label %bb.h

._crit_edge:                                      ; preds = %bb.g
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !76
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str, i32 noundef 593)
  br label %bb.af

bb.i:                                             ; preds = %._crit_edge, %bb.f
  %i.r = phi ptr [ %.pre, %._crit_edge ], [ %i.f, %bb.f ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2 ; 2 uses
  %i.t = load i16, ptr %i.s, align 2, !tbaa !155
  %i.u = add i16 %i.t, 1                          ; 2 uses
  store i16 %i.u, ptr %i.s, align 2, !tbaa !155
  %i.v = icmp eq i16 %i.u, 0
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = load i16, ptr %i.r, align 8
  %i.x = or i16 %i.w, 8
  store i16 %i.x, ptr %i.r, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 19, i1 false)
  invoke void @OPENSSL_free(ptr noundef null)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %2, align 8, !tbaa !19    ; 3 uses
  store ptr %i.aa, ptr %3, align 8, !tbaa !145
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !20 ; 2 uses
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !135
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !76  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %5 = load i64, ptr %i.ae, align 8, !tbaa !143
  %6 = lshr i64 %5, 48
  %7 = trunc nuw i64 %6 to i16
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i16 %7, ptr %i.af, align 8, !tbaa !148
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 18
  store i8 %i.a, ptr %i.ag, align 2, !tbaa !149
  br i1 %1, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = add i64 %i.ac, -12                      ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 1) ; 2 uses
  %i.ai = icmp ugt i64 %i.ah, -8
  br i1 %i.ai, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 69, ptr noundef nonnull @.str, i32 noundef 71)
          to label %_ZN4bssl17DTLSMessageBitmap4InitEm.exit.thread unwind label %bb.t

bb.o:                                             ; preds = %bb.m
  %i.aj = add nuw i64 %.sroa.speculated, 7        ; 2 uses
  %i.ak = lshr i64 %i.aj, 3                       ; 3 uses
  invoke void @OPENSSL_free(ptr noundef null)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 16, i1 false)
  %i.al = invoke ptr @OPENSSL_malloc(i64 noundef %i.ak)
          to label %.noexc26 unwind label %bb.t   ; 4 uses

.noexc26:                                         ; preds = %bb.p
  store ptr %i.al, ptr %i.y, align 8, !tbaa !19
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZN4bssl17DTLSMessageBitmap4InitEm.exit.thread, label %bb.q

bb.q:                                             ; preds = %.noexc26
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.ak, ptr %i.an, align 8, !tbaa !20
  store i8 0, ptr %i.al, align 1, !tbaa !21
  %i.ao = add nsw i64 %i.ak, -1                   ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aq, i8 0, i64 %i.ao, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ar = and i64 %i.aj, -8
  invoke void @_ZN4bssl17DTLSMessageBitmap9MarkRangeEmm(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 noundef %.sroa.speculated, i64 noundef %i.ar)
          to label %_ZN4bssl17DTLSMessageBitmap4InitEm.exit unwind label %bb.t

_ZN4bssl17DTLSMessageBitmap4InitEm.exit:          ; preds = %bb.s
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.as, align 8, !tbaa !23
  %.pre39 = load ptr, ptr %i.b, align 8, !tbaa !76
  br label %.critedge

bb.t:                                             ; preds = %bb.ab, %bb.k, %.critedge, %bb.s, %bb.p, %bb.o, %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body

.critedge:                                        ; preds = %bb.l, %_ZN4bssl17DTLSMessageBitmap4InitEm.exit
  %i.au = phi ptr [ %i.ad, %bb.l ], [ %.pre39, %_ZN4bssl17DTLSMessageBitmap4InitEm.exit ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 16, i1 false)
  invoke void @OPENSSL_free(ptr noundef null)
          to label %.noexc28 unwind label %bb.t

.noexc28:                                         ; preds = %.critedge
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aw = load ptr, ptr %3, align 8, !tbaa !19    ; 4 uses
  store ptr %i.aw, ptr %4, align 8, !tbaa !145
  %i.ax = load i64, ptr %i.z, align 8, !tbaa !20  ; 2 uses
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !135
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 16, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ay, ptr noundef nonnull align 8 dereferenceable(3) %i.af, i64 3, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 16, i1 false)
  invoke void @OPENSSL_free(ptr noundef null)
          to label %bb.w unwind label %bb.u

bb.u:                                             ; preds = %.noexc28
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @OPENSSL_free(ptr noundef %i.aw)
          to label %.body unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  tail call void @__clang_call_terminate(ptr %i.bc) #15
  unreachable

bb.w:                                             ; preds = %.noexc28
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.be = load ptr, ptr %i.y, align 8, !tbaa !19  ; 3 uses
  store ptr %i.be, ptr %i.az, align 8, !tbaa !145
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !20 ; 2 uses
  store i64 %i.bg, ptr %i.bd, align 8, !tbaa !135
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 16, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.bh, align 8, !tbaa !23
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 640 ; 3 uses
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !139 ; 2 uses
  %.not.i = icmp ugt i8 %i.bj, 6                  ; 2 uses
  br i1 %.not.i, label %_ZN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EE11TryPushBackES1_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %i.au, i64 304
  %i.bl = zext nneg i8 %i.bj to i64
  %i.bm = getelementptr inbounds nuw [48 x i8], ptr %i.bk, i64 %i.bl ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bm, i8 0, i64 16, i1 false)
  invoke void @OPENSSL_free(ptr noundef null)
          to label %.noexc29 unwind label %bb.ac

.noexc29:                                         ; preds = %bb.x
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.aw, ptr %i.bm, align 8, !tbaa !145
  store i64 %i.ax, ptr %i.bn, align 8, !tbaa !135
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 16, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.bo, ptr noundef nonnull align 8 dereferenceable(3) %i.af, i64 3, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i8 0, i64 16, i1 false)
  invoke void @OPENSSL_free(ptr noundef null)
          to label %_ZN4bssl19DTLSOutgoingMessageC2EOS0_.exit.i unwind label %bb.y

bb.y:                                             ; preds = %.noexc29
  %i.bq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4bssl5ArrayIhED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(48) %i.bm) #16
  br label %.body30

_ZN4bssl19DTLSOutgoingMessageC2EOS0_.exit.i:      ; preds = %.noexc29
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store ptr %i.be, ptr %i.bp, align 8, !tbaa !145
  store i64 %i.bg, ptr %i.br, align 8, !tbaa !135
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 16, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store i64 0, ptr %i.bs, align 8, !tbaa !23
  %i.bt = load i8, ptr %i.bi, align 8, !tbaa !139
  %i.bu = add i8 %i.bt, 1
  store i8 %i.bu, ptr %i.bi, align 8, !tbaa !139
  br label %_ZN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EE11TryPushBackES1_.exit

_ZN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EE11TryPushBackES1_.exit: ; preds = %_ZN4bssl19DTLSOutgoingMessageC2EOS0_.exit.i, %bb.w
  %i.bv = phi ptr [ null, %_ZN4bssl19DTLSOutgoingMessageC2EOS0_.exit.i ], [ %i.aw, %bb.w ]
  %i.bw = phi ptr [ null, %_ZN4bssl19DTLSOutgoingMessageC2EOS0_.exit.i ], [ %i.be, %bb.w ]
  invoke void @OPENSSL_free(ptr noundef %i.bw)
          to label %_ZN4bssl17DTLSMessageBitmapD2Ev.exit.i unwind label %bb.z

bb.z:                                             ; preds = %_ZN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EE11TryPushBackES1_.exit
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  tail call void @__clang_call_terminate(ptr %i.by) #15
  unreachable

_ZN4bssl17DTLSMessageBitmapD2Ev.exit.i:           ; preds = %_ZN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EE11TryPushBackES1_.exit
  invoke void @OPENSSL_free(ptr noundef %i.bv)
          to label %_ZN4bssl19DTLSOutgoingMessageD2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %_ZN4bssl17DTLSMessageBitmapD2Ev.exit.i
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  tail call void @__clang_call_terminate(ptr %i.ca) #15
  unreachable

_ZN4bssl19DTLSOutgoingMessageD2Ev.exit:           ; preds = %_ZN4bssl17DTLSMessageBitmapD2Ev.exit.i
  br i1 %.not.i, label %bb.ab, label %_ZN4bssl17DTLSMessageBitmap4InitEm.exit.thread

bb.ab:                                            ; preds = %_ZN4bssl19DTLSOutgoingMessageD2Ev.exit
  invoke void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str, i32 noundef 621)
          to label %_ZN4bssl17DTLSMessageBitmap4InitEm.exit.thread unwind label %bb.t

bb.ac:                                            ; preds = %bb.x
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body30

.body30:                                          ; preds = %bb.y, %bb.ac
  %eh.lpad-body31 = phi { ptr, i32 } [ %i.cb, %bb.ac ], [ %i.bq, %bb.y ]
  call void @_ZN4bssl19DTLSOutgoingMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #16
  br label %.body

_ZN4bssl17DTLSMessageBitmap4InitEm.exit.thread:   ; preds = %bb.n, %.noexc26, %_ZN4bssl19DTLSOutgoingMessageD2Ev.exit, %bb.ab
  %i.cc = phi ptr [ null, %_ZN4bssl19DTLSOutgoingMessageD2Ev.exit ], [ null, %bb.ab ], [ %i.aa, %.noexc26 ], [ %i.aa, %bb.n ]
  %.018 = phi i1 [ true, %_ZN4bssl19DTLSOutgoingMessageD2Ev.exit ], [ false, %bb.ab ], [ false, %.noexc26 ], [ false, %bb.n ]
  invoke void @OPENSSL_free(ptr noundef null)
          to label %_ZN4bssl17DTLSMessageBitmapD2Ev.exit.i32 unwind label %bb.ad

bb.ad:                                            ; preds = %_ZN4bssl17DTLSMessageBitmap4InitEm.exit.thread
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  tail call void @__clang_call_terminate(ptr %i.ce) #15
  unreachable

_ZN4bssl17DTLSMessageBitmapD2Ev.exit.i32:         ; preds = %_ZN4bssl17DTLSMessageBitmap4InitEm.exit.thread
end_hunk_0
begin_hunk_1_@_ZN4bssl5ArrayIhED2Ev:bb.a
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  invoke void @OPENSSL_free(ptr noundef %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #15
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4bssl28dtls1_add_change_cipher_specEP6ssl_st(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.bssl::Array", align 8       ; 4 uses
  %i.a = tail call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef %0)
  %i.b = icmp ugt i16 %i.a, 771
  br i1 %i.b, label %_ZN4bssl5ArrayIhED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.c = invoke fastcc noundef zeroext i1 @_ZN4bsslL12add_outgoingEP6ssl_stbNS_5ArrayIhEE(ptr noundef %0, i1 noundef zeroext true, ptr noundef align 8 %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !19
  invoke void @OPENSSL_free(ptr noundef %i.d)
          to label %_ZN4bssl5ArrayIhED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #15
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %1, align 8, !tbaa !19
  invoke void @OPENSSL_free(ptr noundef %i.h)
          to label %_ZN4bssl5ArrayIhED2Ev.exit4 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #15
  unreachable

_ZN4bssl5ArrayIhED2Ev.exit4:                      ; preds = %bb.e
  resume { ptr, i32 } %i.g

_ZN4bssl5ArrayIhED2Ev.exit:                       ; preds = %bb.c, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ %i.c, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4bssl19dtls1_finish_flightEP6ssl_st(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  %i.d = load i8, ptr %i.c, align 8, !tbaa !139
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i16, ptr %i.b, align 8              ; 2 uses
  %i.g = and i16 %i.f, 2
  %.not = icmp eq i16 %i.g, 0
  br i1 %.not, label %_ZN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EEixEm.exit, label %bb.e

_ZN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EEixEm.exit: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.i = load i16, ptr %i.h, align 8, !tbaa !148
  %i.j = icmp ult i16 %i.i, 3
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EEixEm.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 912
  store i8 0, ptr %i.k, align 8, !tbaa !134
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 920
  store i8 0, ptr %i.l, align 8, !tbaa !136
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 960
  tail call void @_ZN4bssl9DTLSTimer4StopEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m)
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.o = load i16, ptr %i.n, align 8
  %i.p = and i16 %i.o, -65
  store i16 %i.p, ptr %i.n, align 8
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !76  ; 2 uses
  %.pre9 = load i16, ptr %.pre, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EEixEm.exit
  %i.q = phi i16 [ %.pre9, %bb.c ], [ %i.f, %_ZN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EEixEm.exit ]
  %i.r = phi ptr [ %.pre, %bb.c ], [ %i.b, %_ZN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EEixEm.exit ]
  %i.s = or i16 %i.q, 2
  store i16 %i.s, ptr %i.r, align 8
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.u = load i16, ptr %i.t, align 8
  %i.v = or i16 %i.u, 32
  store i16 %i.v, ptr %i.t, align 8
  tail call void @_ZN4bssl16dtls1_stop_timerEP6ssl_st(ptr noundef nonnull %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.d
  ret void
}

declare void @_ZN4bssl9DTLSTimer4StopEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4bssl18dtls1_schedule_ackEP6ssl_st(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 960
  tail call void @_ZN4bssl9DTLSTimer4StopEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !76   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 912
  %i.f = load i8, ptr %i.e, align 8, !tbaa !134
  %i.g = icmp eq i8 %i.f, 0
  %i.h = load i16, ptr %i.d, align 8
  %i.i = select i1 %i.g, i16 0, i16 64
  %i.j = and i16 %i.h, -65
  %i.k = or disjoint i16 %i.j, %i.i
  store i16 %i.k, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -2147483648, 2) i32 @_ZN4bssl11dtls1_flushEP6ssl_st(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.bssl::DTLSRecordNumber", align 8 ; 4 uses
  %2 = alloca %struct.cbb_st, align 8             ; 15 uses
  %3 = alloca %"struct.bssl::DTLSSentRecord", align 8 ; 10 uses
  %4 = alloca %struct.cbs_st, align 8             ; 8 uses
  %5 = alloca %struct.cbs_st, align 8             ; 8 uses
  %6 = alloca %"struct.bssl::hm_header_st", align 4 ; 11 uses
  %7 = alloca %struct.cbb_st, align 8             ; 5 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  %8 = alloca %"class.bssl::InplaceVector.65", align 16 ; 27 uses
  %i.b = ptrtoaddr ptr %8 to i64
  %i.c = alloca [514 x i8], align 16              ; 4 uses
  %9 = alloca %struct.cbb_st, align 8             ; 10 uses
  %10 = alloca %struct.cbb_st, align 8            ; 6 uses
  %i.d = alloca [584 x i8], align 16              ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.bssl::DTLSRecordNumber", align 8 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 26 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !76   ; 3 uses
  %i.h = load i16, ptr %i.g, align 8              ; 2 uses
  %i.i = and i16 %i.h, 64
  %.not = icmp eq i16 %i.i, 0
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 936
  %i.k = load i32, ptr %i.j, align 8, !tbaa !199
  %i.l = icmp ult i32 %i.k, 228
  br i1 %i.l, label %bb.c, label %_ZN4bsslL16dtls1_update_mtuEP6ssl_st.exit.i

bb.c:                                             ; preds = %bb.b
  %i.m = tail call i32 @SSL_get_options(ptr noundef nonnull %0)
  %i.n = and i32 %i.m, 4096
  %.not.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN4bsslL16dtls1_update_mtuEP6ssl_st.exit.i

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !200
  %i.q = tail call i64 @BIO_ctrl(ptr noundef %i.p, i32 noundef 40, i64 noundef 0, ptr noundef null) ; 2 uses
  %i.r = add i64 %i.q, -228
  %or.cond12.i.i = icmp ult i64 %i.r, 1073741597
  br i1 %or.cond12.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = trunc nuw nsw i64 %i.q to i32
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !76
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 936
  store i32 %i.s, ptr %i.u, align 8, !tbaa !199
  br label %_ZN4bsslL16dtls1_update_mtuEP6ssl_st.exit.i

bb.f:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !76
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 936
  store i32 1472, ptr %i.w, align 8, !tbaa !199
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !200
  %i.y = tail call i64 @BIO_ctrl(ptr noundef %i.x, i32 noundef 42, i64 noundef 1472, ptr noundef null) ; 0 uses
  br label %_ZN4bsslL16dtls1_update_mtuEP6ssl_st.exit.i

_ZN4bsslL16dtls1_update_mtuEP6ssl_st.exit.i:      ; preds = %bb.f, %bb.e, %bb.c, %bb.b
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !76   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 144
  %12 = load i64, ptr %i.aa, align 8, !tbaa !143
  %13 = lshr i64 %12, 48
  %14 = trunc nuw i64 %13 to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 936
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !199
  %i.ad = zext i32 %i.ac to i64
  %i.ae = tail call noundef i64 @_ZN4bssl23dtls_seal_max_input_lenEPK6ssl_sttm(ptr noundef nonnull %0, i16 noundef zeroext %14, i64 noundef %i.ad) ; 2 uses
  %i.af = icmp ult i64 %i.ae, 18
  br i1 %i.af, label %.thread43, label %bb.g

.thread43:                                        ; preds = %_ZN4bsslL16dtls1_update_mtuEP6ssl_st.exit.i
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 169, ptr noundef nonnull @.str, i32 noundef 970)
  br label %_ZN4bsslL11send_flightEP6ssl_st.exit.thread

bb.g:                                             ; preds = %_ZN4bsslL16dtls1_update_mtuEP6ssl_st.exit.i
  %i.ag = add i64 %i.ae, -2
  %i.ah = lshr i64 %i.ag, 4                       ; 2 uses
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !76  ; 4 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 656 ; 9 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 912
  %i.am = load i8, ptr %i.al, align 8, !tbaa !134 ; 3 uses
  %i.an = zext i8 %i.am to i64                    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 256 ; 11 uses
  store i8 0, ptr %i.ao, align 16, !tbaa !134
  %i.ap = tail call i64 @llvm.usub.sat.i64(i64 %i.an, i64 %i.ah) ; 13 uses
  %i.aq = icmp samesign ult i64 %i.ap, %i.an
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt4sortIPN4bssl16DTLSRecordNumberEEvT_S3_.exit.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 920
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !136 ; 3 uses
  %i.at = zext i8 %i.as to i64                    ; 9 uses
  %umin = call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.an) ; 7 uses
  %i.au = zext i8 %i.as to i64
  %i.av = zext i8 %i.am to i64
  %i.aw = add nuw nsw i64 %i.au, %i.av
  %i.ax = sub nsw i64 %i.aw, %umin
  %i.ay = and i64 %i.ax, 31                       ; 2 uses
  %i.az = call i64 @llvm.usub.sat.i64(i64 %i.an, i64 %i.ay)
  %i.ba = add nsw i64 %umin, -1
  %i.bb = call i64 @llvm.umin.i64(i64 %i.az, i64 %i.ba) ; 2 uses
  %i.bc = call i64 @llvm.umin.i64(i64 %i.bb, i64 32)
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bb, 22
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

scalar.ph.preheader:                              ; preds = %vector.ph, %vector.body.1, %vector.body.2, %vector.body.3, %vector.body.4, %vector.body.5, %vector.body.6, %vector.body.7, %vector.memcheck, %vector.scevcheck, %.lr.ph.i
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %vector.body.7 ], [ %n.vec, %vector.body.6 ], [ %n.vec, %vector.body.5 ], [ %n.vec, %vector.body.4 ], [ %n.vec, %vector.body.3 ], [ %n.vec, %vector.body.2 ], [ %n.vec, %vector.body.1 ], [ %n.vec, %vector.ph ]
  %.04057.i.ph = phi i64 [ %i.ap, %vector.memcheck ], [ %i.ap, %vector.scevcheck ], [ %i.ap, %.lr.ph.i ], [ %i.by, %vector.body.7 ], [ %i.by, %vector.body.6 ], [ %i.by, %vector.body.5 ], [ %i.by, %vector.body.4 ], [ %i.by, %vector.body.3 ], [ %i.by, %vector.body.2 ], [ %i.by, %vector.body.1 ], [ %i.by, %vector.ph ]
  br label %scalar.ph

vector.scevcheck:                                 ; preds = %.lr.ph.i
  %i.be = trunc i8 %i.as to i5
  %i.bf = trunc i8 %i.am to i5
  %i.bg = add i5 %i.be, %i.bf
  %i.bh = trunc i64 %umin to i5
  %i.bi = sub i5 %i.bg, %i.bh                     ; 2 uses
  %i.bj = zext i5 %i.bi to i64
  %i.bk = call i64 @llvm.usub.sat.i64(i64 %i.an, i64 %i.bj)
  %i.bl = add nsw i64 %umin, -1
  %umin251 = call i64 @llvm.umin.i64(i64 %i.bk, i64 %i.bl) ; 2 uses
  %umin252 = call i64 @llvm.umin.i64(i64 %umin251, i64 32)
  %i.bm = trunc i64 %umin252 to i5
  %i.bn = xor i5 %i.bi, -1
  %i.bo = icmp ult i5 %i.bn, %i.bm
  %i.bp = icmp samesign ugt i64 %umin251, 31
  %i.bq = or i1 %i.bo, %i.bp
  br i1 %i.bq, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.br = shl nuw nsw i64 %i.ay, 3
  %i.bs = add i64 %i.br, %i.aj
  %i.bt = sub i64 %i.b, %i.bs
  %i.bu = add i64 %i.bt, -657
  %diff.check = icmp ult i64 %i.bu, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bv = and i64 %i.bd, 3                        ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0
  %i.bx = select i1 %i.bw, i64 4, i64 %i.bv
  %n.vec = sub nsw i64 %i.bd, %i.bx               ; 16 uses
  %i.by = add nsw i64 %i.ap, %n.vec               ; 8 uses
  %i.bz = add nuw nsw i64 %i.ap, %i.at
  %i.ca = and i64 %i.bz, 31
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %wide.load = load <2 x i64>, ptr %i.cb, align 8, !tbaa !135
  %wide.load253 = load <2 x i64>, ptr %i.cc, align 8, !tbaa !135
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 16
  store <2 x i64> %wide.load, ptr %8, align 16, !tbaa !135
  store <2 x i64> %wide.load253, ptr %i.cd, align 16, !tbaa !135
  store i8 4, ptr %i.ao, align 16, !tbaa !134
  %i.ce = icmp eq i64 %n.vec, 4
  br i1 %i.ce, label %scalar.ph.preheader, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.cf = add nuw nsw i64 %i.ap, 4
  %i.cg = add nuw nsw i64 %i.cf, %i.at
  %i.ch = and i64 %i.cg, 31
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %wide.load.1 = load <2 x i64>, ptr %i.ci, align 8, !tbaa !135
  %wide.load253.1 = load <2 x i64>, ptr %i.cj, align 8, !tbaa !135
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 48
  store <2 x i64> %wide.load.1, ptr %i.ck, align 16, !tbaa !135
  store <2 x i64> %wide.load253.1, ptr %i.cl, align 16, !tbaa !135
  store i8 8, ptr %i.ao, align 16, !tbaa !134
  %i.cm = icmp eq i64 %n.vec, 8
  br i1 %i.cm, label %scalar.ph.preheader, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.cn = add nuw nsw i64 %i.ap, 8
  %i.co = add nuw nsw i64 %i.cn, %i.at
  %i.cp = and i64 %i.co, 31
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.cp ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %wide.load.2 = load <2 x i64>, ptr %i.cq, align 8, !tbaa !135
  %wide.load253.2 = load <2 x i64>, ptr %i.cr, align 8, !tbaa !135
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 80
  store <2 x i64> %wide.load.2, ptr %i.cs, align 16, !tbaa !135
  store <2 x i64> %wide.load253.2, ptr %i.ct, align 16, !tbaa !135
  store i8 12, ptr %i.ao, align 16, !tbaa !134
  %i.cu = icmp eq i64 %n.vec, 12
  br i1 %i.cu, label %scalar.ph.preheader, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.cv = add nuw nsw i64 %i.ap, 12
  %i.cw = add nuw nsw i64 %i.cv, %i.at
  %i.cx = and i64 %i.cw, 31
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.cx ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %wide.load.3 = load <2 x i64>, ptr %i.cy, align 8, !tbaa !135
  %wide.load253.3 = load <2 x i64>, ptr %i.cz, align 8, !tbaa !135
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 112
  store <2 x i64> %wide.load.3, ptr %i.da, align 16, !tbaa !135
  store <2 x i64> %wide.load253.3, ptr %i.db, align 16, !tbaa !135
  store i8 16, ptr %i.ao, align 16, !tbaa !134
  %i.dc = icmp eq i64 %n.vec, 16
  br i1 %i.dc, label %scalar.ph.preheader, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.dd = xor i64 %i.ap, 16
  %i.de = add nuw nsw i64 %i.dd, %i.at
  %i.df = and i64 %i.de, 31
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.df ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %wide.load.4 = load <2 x i64>, ptr %i.dg, align 8, !tbaa !135
  %wide.load253.4 = load <2 x i64>, ptr %i.dh, align 8, !tbaa !135
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 144
  store <2 x i64> %wide.load.4, ptr %i.di, align 16, !tbaa !135
  store <2 x i64> %wide.load253.4, ptr %i.dj, align 16, !tbaa !135
  store i8 20, ptr %i.ao, align 16, !tbaa !134
  %i.dk = icmp eq i64 %n.vec, 20
  br i1 %i.dk, label %scalar.ph.preheader, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.dl = add nuw nsw i64 %i.ap, 20
  %i.dm = add nuw nsw i64 %i.dl, %i.at
  %i.dn = and i64 %i.dm, 31
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.dn ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %wide.load.5 = load <2 x i64>, ptr %i.do, align 8, !tbaa !135
  %wide.load253.5 = load <2 x i64>, ptr %i.dp, align 8, !tbaa !135
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 160
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 176
  store <2 x i64> %wide.load.5, ptr %i.dq, align 16, !tbaa !135
  store <2 x i64> %wide.load253.5, ptr %i.dr, align 16, !tbaa !135
  store i8 24, ptr %i.ao, align 16, !tbaa !134
  %i.ds = icmp eq i64 %n.vec, 24
  br i1 %i.ds, label %scalar.ph.preheader, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.dt = add nuw nsw i64 %i.ap, 24
  %i.du = add nuw nsw i64 %i.dt, %i.at
  %i.dv = and i64 %i.du, 31
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.dv ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %wide.load.6 = load <2 x i64>, ptr %i.dw, align 8, !tbaa !135
  %wide.load253.6 = load <2 x i64>, ptr %i.dx, align 8, !tbaa !135
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 192
  %i.dz = getelementptr inbounds nuw i8, ptr %8, i64 208
  store <2 x i64> %wide.load.6, ptr %i.dy, align 16, !tbaa !135
  store <2 x i64> %wide.load253.6, ptr %i.dz, align 16, !tbaa !135
  store i8 28, ptr %i.ao, align 16, !tbaa !134
  %i.ea = icmp eq i64 %n.vec, 28
  br i1 %i.ea, label %scalar.ph.preheader, label %vector.body.7

vector.body.7:                                    ; preds = %vector.body.6
  %i.eb = add nuw nsw i64 %i.ap, 28
  %i.ec = add nuw nsw i64 %i.eb, %i.at
  %i.ed = and i64 %i.ec, 31
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ed ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %wide.load.7 = load <2 x i64>, ptr %i.ee, align 8, !tbaa !135
  %wide.load253.7 = load <2 x i64>, ptr %i.ef, align 8, !tbaa !135
  %i.eg = getelementptr inbounds nuw i8, ptr %8, i64 224
  %i.eh = getelementptr inbounds nuw i8, ptr %8, i64 240
  store <2 x i64> %wide.load.7, ptr %i.eg, align 16, !tbaa !135
  store <2 x i64> %wide.load253.7, ptr %i.eh, align 16, !tbaa !135
  store i8 32, ptr %i.ao, align 16, !tbaa !134
  br label %scalar.ph.preheader

.noexc.i:                                         ; preds = %bb.k
  %.idx.i = shl nuw nsw i64 %umin, 3
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 %.idx.i ; 2 uses
  %i.ej = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %umin, i1 true)
  %i.ek = shl nuw nsw i64 %i.ej, 1
  %i.el = xor i64 %i.ek, 126
  call void @_ZSt16__introsort_loopIPN4bssl16DTLSRecordNumberElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_(ptr noundef nonnull %8, ptr noundef nonnull %i.ei, i64 noundef %i.el)
  call void @_ZSt22__final_insertion_sortIPN4bssl16DTLSRecordNumberEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_(ptr noundef nonnull %8, ptr noundef nonnull %i.ei)
  br label %_ZSt4sortIPN4bssl16DTLSRecordNumberEEvT_S3_.exit.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.k
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.k ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %.04057.i = phi i64 [ %i.es, %bb.k ], [ %.04057.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.em = add nuw nsw i64 %.04057.i, %i.at
  %i.en = and i64 %i.em, 31                       ; 2 uses
  %i.eo = icmp samesign ult i64 %i.en, %i.an
  br i1 %i.eo, label %bb.i, label %bb.h

bb.h:                                             ; preds = %scalar.ph
  tail call void @abort() #15
  unreachable

bb.i:                                             ; preds = %scalar.ph
  %exitcond.not = icmp eq i64 %indvars.iv, 32
  br i1 %exitcond.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @abort() #15
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.en
  %.sroa.0.0.copyload.i = load i64, ptr %i.ep, align 8, !tbaa !135
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv
  store i64 %.sroa.0.0.copyload.i, ptr %i.eq, align 8, !tbaa !135
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.er = trunc nuw nsw i64 %indvars.iv.next to i8
  store i8 %i.er, ptr %i.ao, align 16, !tbaa !134
  %i.es = add nuw nsw i64 %.04057.i, 1
  %exitcond136.not = icmp eq i64 %indvars.iv.next, %umin
  br i1 %exitcond136.not, label %.noexc.i, label %scalar.ph, !llvm.loop !194

_ZSt4sortIPN4bssl16DTLSRecordNumberEEvT_S3_.exit.i: ; preds = %.noexc.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.et = call i32 @CBB_init_fixed(ptr noundef nonnull %9, ptr noundef nonnull %i.c, i64 noundef 514) ; 0 uses
  %i.eu = call i32 @CBB_add_u16_length_prefixed(ptr noundef nonnull %9, ptr noundef nonnull %10)
  %.not.i = icmp eq i32 %i.eu, 0
  br i1 %.not.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZSt4sortIPN4bssl16DTLSRecordNumberEEvT_S3_.exit.i
  call void @abort() #15
  unreachable

bb.m:                                             ; preds = %_ZSt4sortIPN4bssl16DTLSRecordNumberEEvT_S3_.exit.i
  %i.ev = load i8, ptr %i.ao, align 16, !tbaa !134 ; 2 uses
  %i.ew = zext i8 %i.ev to i64
  %.idx63.i = shl nuw nsw i64 %i.ew, 3
  %i.ex = getelementptr inbounds nuw i8, ptr %8, i64 %.idx63.i
  %.not4358.i = icmp eq i8 %i.ev, 0
  br i1 %.not4358.i, label %._crit_edge62.i, label %.lr.ph61.i

bb.n:                                             ; preds = %bb.p
  %i.ey = getelementptr inbounds nuw i8, ptr %.059.i, i64 8 ; 2 uses
  %.not43.i = icmp eq ptr %i.ey, %i.ex
  br i1 %.not43.i, label %._crit_edge62.i, label %.lr.ph61.i

._crit_edge62.i:                                  ; preds = %bb.n, %bb.m
  %i.ez = call i32 @CBB_flush(ptr noundef nonnull %9)
  %.not44.i = icmp eq i32 %i.ez, 0
  br i1 %.not44.i, label %bb.r, label %bb.s

.lr.ph61.i:                                       ; preds = %bb.m, %bb.n
  %.059.i = phi ptr [ %i.ey, %bb.n ], [ %8, %bb.m ] ; 3 uses
  %i.fa = load i64, ptr %.059.i, align 8, !tbaa !143
  %i.fb = lshr i64 %i.fa, 48
  %i.fc = call i32 @CBB_add_u64(ptr noundef nonnull %10, i64 noundef %i.fb)
  %.not46.i = icmp eq i32 %i.fc, 0
  br i1 %.not46.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph61.i
  call void @abort() #15
  unreachable

bb.p:                                             ; preds = %.lr.ph61.i
  %i.fd = load i64, ptr %.059.i, align 8, !tbaa !143
  %i.fe = and i64 %i.fd, 281474976710655
  %i.ff = call i32 @CBB_add_u64(ptr noundef nonnull %10, i64 noundef %i.fe)
  %.not49.i = icmp eq i32 %i.ff, 0
  br i1 %.not49.i, label %bb.q, label %bb.n

bb.q:                                             ; preds = %bb.p
  call void @abort() #15
  unreachable

bb.r:                                             ; preds = %._crit_edge62.i
  call void @abort() #15
  unreachable

bb.s:                                             ; preds = %._crit_edge62.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  store i64 0, ptr %11, align 8, !tbaa !143
  %i.fg = call ptr @CBB_data(ptr noundef nonnull %9)
  %i.fh = call i64 @CBB_len(ptr noundef nonnull %9)
  %i.fi = load ptr, ptr %i.f, align 8, !tbaa !76
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 144
  %15 = load i64, ptr %i.fj, align 8, !tbaa !143
  %16 = lshr i64 %15, 48
  %17 = trunc nuw i64 %16 to i16
  %i.fk = call noundef zeroext i1 @_ZN4bssl16dtls_seal_recordEP6ssl_stPNS_16DTLSRecordNumberEPhPmmhPKhmt(ptr noundef nonnull %0, ptr noundef nonnull %11, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i64 noundef 584, i8 noundef zeroext 26, ptr noundef %i.fg, i64 noundef %i.fh, i16 noundef zeroext %17)
  br i1 %i.fk, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.fl = call ptr @CBB_data(ptr noundef nonnull %9)
  %i.fm = call i64 @CBB_len(ptr noundef nonnull %9)
  call void @_ZN4bssl19ssl_do_msg_callbackEPK6ssl_stiiNS_4SpanIKhEE(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 26, ptr %i.fl, i64 %i.fm)
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !200
  %i.fp = load i64, ptr %i.e, align 8, !tbaa !135
  %i.fq = trunc i64 %i.fp to i32
  %i.fr = call i32 @BIO_write(ptr noundef %i.fo, ptr noundef nonnull %i.d, i32 noundef %i.fq) ; 2 uses
  %i.fs = icmp slt i32 %i.fr, 1
  br i1 %i.fs, label %.sink.split.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ft = load ptr, ptr %i.fn, align 8, !tbaa !200
  %i.fu = call i32 @BIO_flush(ptr noundef %i.ft)
  %i.fv = icmp slt i32 %i.fu, 1
  br i1 %i.fv, label %.sink.split.i, label %.thread

.sink.split.i:                                    ; preds = %bb.u, %bb.t
  %.1.ph.i = phi i32 [ %i.fr, %bb.t ], [ -1, %bb.u ]
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !146
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 196
  store i32 3, ptr %i.fy, align 4, !tbaa !231
  br label %bb.v

.thread:                                          ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.fz = load ptr, ptr %i.f, align 8, !tbaa !76  ; 2 uses
  %i.ga = load i16, ptr %i.fz, align 8
  %i.gb = and i16 %i.ga, -65
  store i16 %i.gb, ptr %i.fz, align 8
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !76  ; 2 uses
  %.pre137 = load i16, ptr %.pre, align 8
  br label %bb.w

bb.v:                                             ; preds = %bb.s, %.sink.split.i
  %.1.i.ph = phi i32 [ %.1.ph.i, %.sink.split.i ], [ -1, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %_ZN4bsslL11send_flightEP6ssl_st.exit.thread

bb.w:                                             ; preds = %.thread, %bb.a
  %i.gc = phi i16 [ %.pre137, %.thread ], [ %i.h, %bb.a ]
  %i.gd = phi ptr [ %.pre, %.thread ], [ %i.g, %bb.a ] ; 2 uses
  %i.ge = and i16 %i.gc, 32
  %.not27 = icmp eq i16 %i.ge, 0
  br i1 %.not27, label %_ZN4bsslL11send_flightEP6ssl_st.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !146
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 176
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !232
  %.not.i29 = icmp eq i32 %i.gi, 0
  br i1 %.not.i29, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 194, ptr noundef nonnull @.str, i32 noundef 873)
  br label %_ZN4bsslL11send_flightEP6ssl_st.exit.thread

bb.z:                                             ; preds = %bb.x
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !200
  %.not.i.i30 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 119, ptr noundef nonnull @.str, i32 noundef 878)
  br label %_ZN4bsslL11send_flightEP6ssl_st.exit.thread

bb.ab:                                            ; preds = %bb.z
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gd, i64 940
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !233
  %i.gn = icmp ugt i32 %i.gm, 12
  br i1 %i.gn, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 198, ptr noundef nonnull @.str, i32 noundef 883)
  br label %_ZN4bsslL11send_flightEP6ssl_st.exit.thread

bb.ad:                                            ; preds = %bb.ab
  %i.go = getelementptr inbounds nuw i8, ptr %i.gd, i64 936
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !199
  %i.gq = icmp ult i32 %i.gp, 228
  br i1 %i.gq, label %bb.ae, label %_ZN4bsslL16dtls1_update_mtuEP6ssl_st.exit.i31

bb.ae:                                            ; preds = %bb.ad
  %i.gr = call i32 @SSL_get_options(ptr noundef nonnull %0)
  %i.gs = and i32 %i.gr, 4096
  %.not.i37.i = icmp eq i32 %i.gs, 0
  br i1 %.not.i37.i, label %bb.af, label %_ZN4bsslL16dtls1_update_mtuEP6ssl_st.exit.i31

bb.af:                                            ; preds = %bb.ae
  %i.gt = load ptr, ptr %i.gj, align 8, !tbaa !200
  %i.gu = call i64 @BIO_ctrl(ptr noundef %i.gt, i32 noundef 40, i64 noundef 0, ptr noundef null) ; 2 uses
  %i.gv = add i64 %i.gu, -228
  %or.cond12.i.i34 = icmp ult i64 %i.gv, 1073741597
  br i1 %or.cond12.i.i34, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gw = trunc nuw nsw i64 %i.gu to i32
  %i.gx = load ptr, ptr %i.f, align 8, !tbaa !76
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 936
  store i32 %i.gw, ptr %i.gy, align 8, !tbaa !199
  br label %_ZN4bsslL16dtls1_update_mtuEP6ssl_st.exit.i31

bb.ah:                                            ; preds = %bb.af
  %i.gz = load ptr, ptr %i.f, align 8, !tbaa !76
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 936
  store i32 1472, ptr %i.ha, align 8, !tbaa !199
  %i.hb = load ptr, ptr %i.gj, align 8, !tbaa !200
  %i.hc = call i64 @BIO_ctrl(ptr noundef %i.hb, i32 noundef 42, i64 noundef 1472, ptr noundef null) ; 0 uses
  br label %_ZN4bsslL16dtls1_update_mtuEP6ssl_st.exit.i31

_ZN4bsslL16dtls1_update_mtuEP6ssl_st.exit.i31:    ; preds = %bb.ah, %bb.ag, %bb.ae, %bb.ad
  %i.hd = load ptr, ptr %i.f, align 8, !tbaa !76
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 936
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !199 ; 2 uses
  %i.hg = zext i32 %i.hf to i64                   ; 2 uses
  invoke void @OPENSSL_free(ptr noundef null)
          to label %.noexc.i32 unwind label %bb.aj

.noexc.i32:                                       ; preds = %_ZN4bsslL16dtls1_update_mtuEP6ssl_st.exit.i31
  %i.hh = icmp eq i32 %i.hf, 0
  br i1 %i.hh, label %_ZN4bssl5ArrayIhE16InitForOverwriteEm.exit.i, label %bb.ai

bb.ai:                                            ; preds = %.noexc.i32
  %i.hi = invoke ptr @OPENSSL_malloc(i64 noundef %i.hg)
          to label %.noexc38.i unwind label %bb.aj ; 2 uses

.noexc38.i:                                       ; preds = %bb.ai
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %_ZN4bssl5ArrayIhE16InitForOverwriteEm.exit.thread.i, label %_ZN4bssl5ArrayIhE16InitForOverwriteEm.exit.i

_ZN4bssl5ArrayIhE16InitForOverwriteEm.exit.i:     ; preds = %.noexc38.i, %.noexc.i32
  %.sroa.067.2.i = phi ptr [ null, %.noexc.i32 ], [ %i.hi, %.noexc38.i ] ; 9 uses
  %i.hk = load ptr, ptr %i.f, align 8, !tbaa !76  ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 928
  %i.hm = load i8, ptr %i.hl, align 8, !tbaa !141 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 640
  %i.ho = load i8, ptr %i.hn, align 8, !tbaa !139 ; 2 uses
  %i.hp = icmp ugt i8 %i.ho, %i.hm
  br i1 %i.hp, label %.lr.ph.i33, label %._crit_edge.i

.lr.ph.i33:                                       ; preds = %_ZN4bssl5ArrayIhE16InitForOverwriteEm.exit.i
  %i.hq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hr = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ht = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.hw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.hx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.hy = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.i, %bb.ai, %_ZN4bsslL16dtls1_update_mtuEP6ssl_st.exit.i31
  %.sroa.067.0.i = phi ptr [ %.sroa.067.2.i, %._crit_edge.i ], [ null, %bb.ai ], [ null, %_ZN4bsslL16dtls1_update_mtuEP6ssl_st.exit.i31 ]
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.ak:                                            ; preds = %.thread82.i, %.lr.ph.i33
  %i.ib = phi i8 [ %i.ho, %.lr.ph.i33 ], [ %i.pl, %.thread82.i ] ; 2 uses
  %i.ic = phi ptr [ %i.hk, %.lr.ph.i33 ], [ %i.pn, %.thread82.i ] ; 3 uses
  %i.id = phi i8 [ %i.hm, %.lr.ph.i33 ], [ %i.pm, %.thread82.i ] ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 932
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !142
  %i.ig = icmp ugt i8 %i.ib, %i.id
  br i1 %i.ig, label %.split.i.i, label %.thread.i

.split.i.i:                                       ; preds = %bb.ak, %.thread30.i.i
  %i.ih = phi ptr [ %.pre.i.i, %.thread30.i.i ], [ %i.ic, %bb.ak ] ; 4 uses
  %.sroa.4.0.i.i = phi i64 [ %i.ow, %.thread30.i.i ], [ %i.hg, %bb.ak ] ; 7 uses
  %.sroa.0.0.i.i = phi ptr [ %i.ox, %.thread30.i.i ], [ %.sroa.067.2.i, %bb.ak ] ; 4 uses
  %.08.i.i = phi i64 [ %i.ou, %.thread30.i.i ], [ 0, %bb.ak ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 0, ptr %i.a, align 8, !tbaa !135
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 928 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 304
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 640
  %i.il = load i8, ptr %i.ik, align 8, !tbaa !139 ; 2 uses
  %.promoted.i.i.i = load i8, ptr %i.ii, align 8, !tbaa !141 ; 2 uses
  %i.im = icmp ugt i8 %i.il, %.promoted.i.i.i
  br i1 %i.im, label %_ZN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EEixEm.exit.lr.ph.i.i.i, label %_ZN4bsslL16seal_next_recordEP6ssl_stNS_4SpanIhEEPm.exit.thread.i.i
end_hunk_1
