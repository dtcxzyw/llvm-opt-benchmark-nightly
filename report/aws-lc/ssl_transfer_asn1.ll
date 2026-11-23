Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/ssl_transfer_asn1?download=true
inline.NumInlined: 292
inline.NumDeleted: 194
begin_hunk_0_@SSL_to_bytes:bb.a
  br i1 %.not17.i, label %_ZL17SSL_to_bytes_fullPK6ssl_stP6cbb_st.exit.thread, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 3 uses
  %i.ia = load i8, ptr %i.hz, align 4
  %i.ib = and i8 %i.ia, 2
  %.not18.i = icmp eq i8 %i.ib, 0
  br i1 %.not18.i, label %bb.dc, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ic = call i32 @CBB_add_asn1(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef -1610612736) #6
  %.not19.i = icmp eq i32 %i.ic, 0
  br i1 %.not19.i, label %_ZL17SSL_to_bytes_fullPK6ssl_stP6cbb_st.exit.thread, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.id = call i32 @CBB_add_asn1_bool(ptr noundef nonnull %6, i32 noundef 1) #6
  %.not20.i = icmp eq i32 %i.id, 0
  br i1 %.not20.i, label %_ZL17SSL_to_bytes_fullPK6ssl_stP6cbb_st.exit.thread, label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.cz
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !124
  %.not30.i = icmp eq ptr %i.if, null
  br i1 %.not30.i, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ig = call i32 @CBB_add_asn1(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef -1610612735) #6
  %.not21.i = icmp eq i32 %i.ig, 0
  br i1 %.not21.i, label %_ZL17SSL_to_bytes_fullPK6ssl_stP6cbb_st.exit.thread, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ih = load ptr, ptr %i.ie, align 8, !tbaa !124
  %i.ii = call fastcc noundef i32 @_ZL19SSL_CONFIG_to_bytesPN4bssl10SSL_CONFIGEP6cbb_st(ptr noundef %i.ih, ptr noundef %6)
  %.not22.i = icmp eq i32 %i.ii, 0
  br i1 %.not22.i, label %_ZL17SSL_to_bytes_fullPK6ssl_stP6cbb_st.exit.thread, label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dc
  %i.ij = call i32 @CBB_add_asn1(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef -1610612734) #6
  %.not23.i = icmp eq i32 %i.ij, 0
  br i1 %.not23.i, label %_ZL17SSL_to_bytes_fullPK6ssl_stP6cbb_st.exit.thread, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !133
  %i.im = call i32 @CBB_add_asn1_int64(ptr noundef nonnull %6, i64 noundef %i.il) #6
  %.not24.i = icmp eq i32 %i.im, 0
  br i1 %.not24.i, label %_ZL17SSL_to_bytes_fullPK6ssl_stP6cbb_st.exit.thread, label %_ZL17SSL_to_bytes_fullPK6ssl_stP6cbb_st.exit

_ZL17SSL_to_bytes_fullPK6ssl_stP6cbb_st.exit.thread: ; preds = %bb.dd, %bb.da, %bb.d, %bb.cy, %bb.cx, %_ZL19SSL3_STATE_to_bytesPN4bssl10SSL3_STATEEtP6cbb_st.exit.i, %bb.g, %bb.f, %bb.e, %bb.db, %bb.de, %bb.dg, %bb.df, %_ZL19SSL3_STATE_to_bytesPN4bssl10SSL3_STATEEtP6cbb_st.exit.thread27.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %bb.di

_ZL17SSL_to_bytes_fullPK6ssl_stP6cbb_st.exit:     ; preds = %bb.dg
  %i.in = call i32 @CBB_flush(ptr noundef nonnull %8) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  %.not6 = icmp eq i32 %i.in, 0
  br i1 %.not6, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %_ZL17SSL_to_bytes_fullPK6ssl_stP6cbb_st.exit
  %i.io = load i8, ptr %i.hz, align 4
  %i.ip = or i8 %i.io, 16
  store i8 %i.ip, ptr %i.hz, align 4
  %i.iq = call i32 @CBB_finish(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %2) #6
  br label %bb.di

bb.di:                                            ; preds = %_ZL17SSL_to_bytes_fullPK6ssl_stP6cbb_st.exit.thread, %bb.b, %bb.c, %_ZL17SSL_to_bytes_fullPK6ssl_stP6cbb_st.exit, %bb.dh
  %.0 = phi i32 [ %i.iq, %bb.dh ], [ 0, %_ZL17SSL_to_bytes_fullPK6ssl_stP6cbb_st.exit ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %_ZL17SSL_to_bytes_fullPK6ssl_stP6cbb_st.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  call void @CBB_cleanup(ptr noundef nonnull align 8 dereferenceable(48) %7) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  br label %bb.dj

bb.dj:                                            ; preds = %bb.a, %bb.di
  %.1 = phi i32 [ %.0, %bb.di ], [ 0, %bb.a ]
  ret i32 %.1
}

declare i32 @CBB_init(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @CBB_add_asn1(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @CBB_finish(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @CBS_get_asn1_uint64(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @SSL_set_accept_state(ptr noundef) local_unnamed_addr #1

declare i32 @CBS_get_optional_asn1_bool(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @CBS_get_optional_asn1(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL21SSL_CONFIG_from_bytesPN4bssl10SSL_CONFIGEP6cbs_st(ptr nofree noundef captures(none) %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.cbs_st, align 8             ; 12 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  %i.h = call i32 @CBS_get_asn1(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 536870928) #6
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = call i32 @CBS_get_asn1_uint64(ptr noundef nonnull %2, ptr noundef nonnull %i.e) #6
  %i.j = icmp eq i32 %i.i, 0
  %i.k = load i64, ptr %i.e, align 8
  %i.l = icmp ugt i64 %i.k, 2
  %or.cond = select i1 %i.j, i1 true, i1 %i.l
  br i1 %or.cond, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = call i32 @CBS_get_asn1_uint64(ptr noundef nonnull %2, ptr noundef nonnull %i.f) #6
  %.not11 = icmp eq i32 %i.m, 0
  br i1 %.not11, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = call i32 @CBS_get_asn1_uint64(ptr noundef nonnull %2, ptr noundef nonnull %i.g) #6
  %.not12 = icmp eq i32 %i.n, 0
  br i1 %.not12, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = call i32 @CBS_get_optional_asn1_bool(ptr noundef nonnull %2, ptr noundef nonnull %i.a, i32 noundef -1610612736, i32 noundef 0) #6
  %.not13 = icmp eq i32 %i.o, 0
  br i1 %.not13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = call i32 @CBS_get_optional_asn1_bool(ptr noundef nonnull %2, ptr noundef nonnull %i.b, i32 noundef -1610612735, i32 noundef 0) #6
  %.not14 = icmp eq i32 %i.p, 0
  br i1 %.not14, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 502, ptr noundef nonnull @.str, i32 noundef 959) #6
  br label %bb.p

bb.h:                                             ; preds = %bb.f
  %i.q = load i64, ptr %i.e, align 8, !tbaa !104
  %i.r = icmp ugt i64 %i.q, 1
  br i1 %i.r, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = call i64 @CBS_len(ptr noundef nonnull %2) #6
  %.not15 = icmp eq i64 %i.s, 0
  br i1 %.not15, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 502, ptr noundef nonnull @.str, i32 noundef 968) #6
  br label %bb.p

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.t = call i32 @CBS_get_optional_asn1_bool(ptr noundef nonnull %2, ptr noundef nonnull %i.c, i32 noundef -1610612734, i32 noundef 1) #6
  %.not16 = icmp eq i32 %i.t, 0
  br i1 %.not16, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = call i32 @CBS_get_optional_asn1_bool(ptr noundef nonnull %2, ptr noundef nonnull %i.d, i32 noundef -1610612733, i32 noundef 1) #6
  %.not17 = icmp eq i32 %i.u, 0
  br i1 %.not17, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = call i64 @CBS_len(ptr noundef nonnull %2) #6
  %.not18 = icmp eq i64 %i.v, 0
  br i1 %.not18, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 502, ptr noundef nonnull @.str, i32 noundef 979) #6
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.w = load i64, ptr %i.f, align 8, !tbaa !104
  %i.x = trunc i64 %i.w to i16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.x, ptr %i.y, align 8, !tbaa !175
  %i.z = load i64, ptr %i.g, align 8, !tbaa !104
  %i.aa = trunc i64 %i.z to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !176
  %i.ac = load i32, ptr %i.c, align 4, !tbaa !105
  %.not19 = icmp eq i32 %i.ac, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 241 ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 1
  %i.af = select i1 %.not19, i16 0, i16 8192
  %i.ag = and i16 %i.ae, -25029
  %i.ah = or disjoint i16 %i.ag, %i.af
  %i.ai = load i32, ptr %i.d, align 4, !tbaa !105
  %.not20 = icmp eq i32 %i.ai, 0
  %i.aj = select i1 %.not20, i16 0, i16 16384
  %i.ak = or disjoint i16 %i.ah, %i.aj
  %i.al = load i32, ptr %i.a, align 4, !tbaa !105
  %.not21 = icmp eq i32 %i.al, 0
  %i.am = select i1 %.not21, i16 0, i16 4
  %i.an = or disjoint i16 %i.ak, %i.am
  %i.ao = load i32, ptr %i.b, align 4, !tbaa !105
  %.not22 = icmp eq i32 %i.ao, 0
  %i.ap = select i1 %.not22, i16 0, i16 256
  %i.aq = or disjoint i16 %i.an, %i.ap
  store i16 %i.aq, ptr %i.ad, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.j, %bb.n, %bb.o, %bb.g
  %.1 = phi i32 [ 0, %bb.g ], [ 0, %bb.n ], [ 1, %bb.o ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN4bssl10SSL_CONFIGENS0_8internal7DeleterEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !124    ; 3 uses
  store ptr %1, ptr %0, align 8, !tbaa !124
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt15__uniq_ptr_implIN4bssl10SSL_CONFIGENS0_8internal7DeleterEE5resetEPS1_.exit, label %_ZN4bssl8internal7DeleterclINS_10SSL_CONFIGEEEvPT_.exit.i

_ZN4bssl8internal7DeleterclINS_10SSL_CONFIGEEEvPT_.exit.i: ; preds = %bb.a
  tail call void @_ZN4bssl10SSL_CONFIGD1Ev(ptr noundef nonnull align 8 dead_on_return(244) dereferenceable(244) %i.a) #6
  tail call void @OPENSSL_free(ptr noundef nonnull %i.a) #6
  br label %_ZNSt15__uniq_ptr_implIN4bssl10SSL_CONFIGENS0_8internal7DeleterEE5resetEPS1_.exit

_ZNSt15__uniq_ptr_implIN4bssl10SSL_CONFIGENS0_8internal7DeleterEE5resetEPS1_.exit: ; preds = %bb.a, %_ZN4bssl8internal7DeleterclINS_10SSL_CONFIGEEEvPT_.exit.i
  ret void
}

declare i32 @CBS_get_optional_asn1_int64(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN4bssl30ssl_protocol_version_from_wireEPtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

declare i32 @CBS_get_asn1_int64(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL24SSL3_STATE_parse_sessionP6cbs_stPSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEEPK10ssl_ctx_st(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.cbs_st, align 8             ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.std::unique_ptr.8", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = call i32 @CBS_get_optional_asn1(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %i.a, i32 noundef -1610612736) #6
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 503, ptr noundef nonnull @.str, i32 noundef 460) #6
  br label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit7

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 4, !tbaa !105
  %.not5 = icmp eq i32 %i.c, 0
  br i1 %.not5, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !237
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 664
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !238
  call void @_ZN4bssl17SSL_SESSION_parseEP6cbs_stPKNS_15SSL_X509_METHODEP21crypto_buffer_pool_st(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.8") align 8 %4, ptr noundef nonnull %3, ptr noundef %i.e, ptr noundef %i.g) #6
  %i.h = load ptr, ptr %4, align 8, !tbaa !63     ; 2 uses
  %.not11 = icmp eq ptr %i.h, null
  br i1 %.not11, label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %4, align 8, !tbaa !63
  %i.i = load ptr, ptr %1, align 8, !tbaa !63     ; 2 uses
  store ptr %i.h, ptr %1, align 8, !tbaa !63
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit, label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit

_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit: ; preds = %bb.e
  call void @SSL_SESSION_free(ptr noundef nonnull %i.i) #6
  %.pr = load ptr, ptr %4, align 8, !tbaa !63     ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit
  call void @SSL_SESSION_free(ptr noundef nonnull %.pr) #6
  br label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit

_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit: ; preds = %bb.d, %bb.e, %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit, %bb.f
  %.010 = phi i32 [ 1, %bb.f ], [ 1, %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit ], [ 1, %bb.e ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit7

bb.g:                                             ; preds = %bb.c
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 503, ptr noundef nonnull @.str, i32 noundef 474) #6
  %i.j = load ptr, ptr %1, align 8, !tbaa !63     ; 2 uses
  store ptr null, ptr %1, align 8, !tbaa !63
  %.not.i.i6 = icmp eq ptr %i.j, null
  br i1 %.not.i.i6, label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit7, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @SSL_SESSION_free(ptr noundef nonnull %i.j) #6
  br label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit7

_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit7: ; preds = %bb.h, %bb.g, %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit, %bb.b
  %.1 = phi i32 [ %.010, %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit ], [ 0, %bb.b ], [ 0, %bb.g ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL21parse_optional_stringP6cbs_stPSt10unique_ptrIcN4bssl8internal7DeleterEEji(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.cbs_st, align 8             ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.c = call i32 @CBS_get_optional_asn1_octet_string(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %i.a, i32 noundef -1610612734) #6
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 503, ptr noundef nonnull @.str, i32 noundef 73) #6
  br label %_ZNSt10unique_ptrIcN4bssl8internal7DeleterEE5resetEPc.exit12

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 4, !tbaa !105
  %.not8 = icmp eq i32 %i.d, 0
  br i1 %.not8, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @CBS_contains_zero_byte(ptr noundef nonnull %2) #6
  %.not9 = icmp eq i32 %i.e, 0
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 503, ptr noundef nonnull @.str, i32 noundef 78) #6
  br label %_ZNSt10unique_ptrIcN4bssl8internal7DeleterEE5resetEPc.exit12

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store ptr null, ptr %i.b, align 8, !tbaa !134
  %i.f = call i32 @CBS_strdup(ptr noundef nonnull %2, ptr noundef nonnull %i.b) #6
  %.not10.not = icmp eq i32 %i.f, 0
  br i1 %.not10.not, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !134
  %i.h = load ptr, ptr %1, align 8, !tbaa !134    ; 2 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !134
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIcN4bssl8internal7DeleterEE5resetEPc.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @OPENSSL_free(ptr noundef nonnull %i.h) #6
  br label %_ZNSt10unique_ptrIcN4bssl8internal7DeleterEE5resetEPc.exit

_ZNSt10unique_ptrIcN4bssl8internal7DeleterEE5resetEPc.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %_ZNSt10unique_ptrIcN4bssl8internal7DeleterEE5resetEPc.exit12

bb.i:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %1, align 8, !tbaa !134    ; 2 uses
  store ptr null, ptr %1, align 8, !tbaa !134
  %.not.i.i11 = icmp eq ptr %i.i, null
  br i1 %.not.i.i11, label %_ZNSt10unique_ptrIcN4bssl8internal7DeleterEE5resetEPc.exit12, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @OPENSSL_free(ptr noundef nonnull %i.i) #6
  br label %_ZNSt10unique_ptrIcN4bssl8internal7DeleterEE5resetEPc.exit12

.critedge:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %_ZNSt10unique_ptrIcN4bssl8internal7DeleterEE5resetEPc.exit12

_ZNSt10unique_ptrIcN4bssl8internal7DeleterEE5resetEPc.exit12: ; preds = %bb.j, %bb.i, %_ZNSt10unique_ptrIcN4bssl8internal7DeleterEE5resetEPc.exit, %.critedge, %bb.e, %bb.b
  %.1 = phi i32 [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %.critedge ], [ 1, %_ZNSt10unique_ptrIcN4bssl8internal7DeleterEE5resetEPc.exit ], [ 1, %bb.i ], [ 1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL29SSL3_STATE_parse_octet_stringP6cbs_stPN4bssl5ArrayIhEEj(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, i32 noundef range(i32 -1610612733, -1610612731) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.cbs_st, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.a = call i32 @CBS_get_optional_asn1_octet_string(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef null, i32 noundef %2) #6
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c
end_hunk_0
