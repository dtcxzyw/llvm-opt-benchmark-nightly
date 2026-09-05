Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/s3_both?download=true
begin_hunk_0_@_ZN4bsslL20read_v2_client_helloEP6ssl_stPmNS_4SpanIKhEE:bb.a

bb.ao:                                            ; preds = %bb.am
  store i64 %i.r, ptr %1, align 8, !tbaa !120
  %i.cv = load ptr, ptr %i.t, align 8, !tbaa !64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 300 ; 2 uses
  %i.cx = load i16, ptr %i.cw, align 4
  %i.cy = or i16 %i.cx, 8
  store i16 %i.cy, ptr %i.cw, align 4
  br label %bb.ap

bb.ap:                                            ; preds = %.thread, %_ZNSt10unique_ptrI10buf_mem_stN4bssl8internal7DeleterEE5resetEPS0_.exit, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ao, %bb.an
  %.2 = phi i32 [ 4, %.thread ], [ 0, %bb.ao ], [ 4, %bb.an ], [ 4, %bb.af ], [ 4, %bb.ae ], [ 4, %bb.ad ], [ 4, %bb.ac ], [ 4, %bb.ab ], [ 4, %bb.aa ], [ 4, %bb.z ], [ 4, %bb.y ], [ 4, %_ZNSt10unique_ptrI10buf_mem_stN4bssl8internal7DeleterEE5resetEPS0_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  call void @CBB_cleanup(ptr noundef nonnull align 8 dereferenceable(48) %8) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.t
  %.3 = phi i32 [ 4, %bb.t ], [ %.2, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNK4bssl4SpanIhE7subspanEmm.exit, %bb.aq
  %.4 = phi i32 [ %.3, %bb.aq ], [ 4, %_ZNK4bssl4SpanIhE7subspanEmm.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.h, %bb.f, %bb.d
  %.5 = phi i32 [ 4, %bb.d ], [ 4, %bb.f ], [ 2, %bb.h ], [ %.4, %bb.ar ]
  ret i32 %.5
}

declare noundef i32 @_ZN4bssl15tls_open_recordEP6ssl_stPhPNS_4SpanIhEEPmS2_S4_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef byval(%"class.bssl::Span.32") align 8) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4bssl16tls_next_messageEP6ssl_st(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %1 = alloca %"struct.bssl::SSLMessage", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = call fastcc noundef zeroext i1 @_ZN4bsslL13parse_messageEPK6ssl_stPNS_10SSLMessageEPm(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.a)
  br i1 %i.b, label %bb.b, label %_ZN4bssl15tls_get_messageEPK6ssl_stPNS_10SSLMessageE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 300
  %i.f = load i16, ptr %i.e, align 4              ; 2 uses
  %i.g = and i16 %i.f, 16
  %.not.i = icmp eq i16 %i.g, 0
  br i1 %.not.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %1, align 8, !tbaa !124, !range !125, !noundef !126
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !127
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !128
  call void @_ZN4bssl19ssl_do_msg_callbackEPK6ssl_stiiNS_4SpanIKhEE(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 22, ptr %i.k, i64 %i.m) #7
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !64 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 300
  %.pre8.i = load i16, ptr %.phi.trans.insert.i, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = phi i16 [ %.pre8.i, %bb.d ], [ %i.f, %bb.c ]
  %i.o = phi ptr [ %.pre.i, %bb.d ], [ %i.d, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 300
  %i.q = or i16 %i.n, 16
  store i16 %i.q, ptr %i.p, align 4
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !64
  br label %bb.f

_ZN4bssl15tls_get_messageEPK6ssl_stPNS_10SSLMessageE.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.k

bb.f:                                             ; preds = %bb.b, %bb.e
  %i.r = phi ptr [ %i.d, %bb.b ], [ %.pre, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 304
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !75   ; 2 uses
  %.not12 = icmp eq ptr %i.t, null
  br i1 %.not12, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load i64, ptr %i.t, align 8, !tbaa !77
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.w = call i64 @CBS_len(ptr noundef nonnull %i.v) #7
  %i.x = icmp ult i64 %i.u, %i.w
  br i1 %i.x, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 304
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !75
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !78 ; 2 uses
  %i.ad = call i64 @CBS_len(ptr noundef nonnull %i.v) #7
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 304
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !75
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !77 ; 2 uses
  %i.ai = call i64 @CBS_len(ptr noundef nonnull %i.v) #7 ; 2 uses
  %i.aj = icmp eq i64 %i.ah, %i.ai
  br i1 %i.aj, label %_ZL15OPENSSL_memmovePvPKvm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = sub i64 %i.ah, %i.ai
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ac, ptr readonly align 1 %i.al, i64 %i.ak, i1 false)
  br label %_ZL15OPENSSL_memmovePvPKvm.exit

_ZL15OPENSSL_memmovePvPKvm.exit:                  ; preds = %bb.h, %bb.i
  %i.am = call i64 @CBS_len(ptr noundef nonnull %i.v) #7
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !64  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 304
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !75 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !77
  %i.ar = sub i64 %i.aq, %i.am
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !77
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 300 ; 2 uses
  %i.at = load i16, ptr %i.as, align 4
  %i.au = and i16 %i.at, -9
  store i16 %i.au, ptr %i.as, align 4
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 300 ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 4
  %i.ay = and i16 %i.ax, -17
  store i16 %i.ay, ptr %i.aw, align 4
  %i.az = call i32 @SSL_in_init(ptr noundef nonnull %0) #7
  %.not = icmp eq i32 %i.az, 0
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZL15OPENSSL_memmovePvPKvm.exit
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 304 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !75 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !77
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %_ZNSt10unique_ptrI10buf_mem_stN4bssl8internal7DeleterEE5resetEPS0_.exit, label %bb.k

_ZNSt10unique_ptrI10buf_mem_stN4bssl8internal7DeleterEE5resetEPS0_.exit: ; preds = %bb.j
  store ptr null, ptr %i.bb, align 8, !tbaa !75
  call void @BUF_MEM_free(ptr noundef nonnull %i.bc) #7
  br label %bb.k

bb.k:                                             ; preds = %_ZN4bssl15tls_get_messageEPK6ssl_stPNS_10SSLMessageE.exit, %_ZL15OPENSSL_memmovePvPKvm.exit, %bb.j, %_ZNSt10unique_ptrI10buf_mem_stN4bssl8internal7DeleterEE5resetEPS0_.exit, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret void
}

declare i32 @SSL_in_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN4bssl23ssl_choose_tls13_cipherEPK19stack_st_SSL_CIPHERbtS2_(ptr noundef %0, i1 noundef zeroext %1, i16 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @OPENSSL_sk_num(ptr noundef %0) #7
  %.not63 = icmp eq i64 %i.a, 0
  br i1 %.not63, label %._crit_edge, label %.lr.ph52

.lr.ph52:                                         ; preds = %bb.a
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.thread42.us, label %.lr.ph52.split

.thread42.us:                                     ; preds = %.lr.ph52, %.thread42.us
  %.02651.us = phi i64 [ %i.c, %.thread42.us ], [ 0, %.lr.ph52 ] ; 2 uses
  %i.b = tail call ptr @OPENSSL_sk_value(ptr noundef %0, i64 noundef %.02651.us) #7 ; 0 uses
  %i.c = add nuw i64 %.02651.us, 1                ; 2 uses
  %i.d = tail call i64 @OPENSSL_sk_num(ptr noundef %0) #7
  %i.e = icmp ult i64 %i.c, %i.d
  br i1 %i.e, label %.thread42.us, label %._crit_edge, !llvm.loop !148

.lr.ph52.split:                                   ; preds = %.lr.ph52
  br i1 %1, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %.lr.ph52.split, %.thread42.us57
  %.02651.us53 = phi i64 [ %i.v, %.thread42.us57 ], [ 0, %.lr.ph52.split ] ; 2 uses
  %.02750.us54 = phi ptr [ %.229.us60, %.thread42.us57 ], [ null, %.lr.ph52.split ] ; 5 uses
  %.sroa.036.049.us55 = phi i8 [ %.sroa.036.2.us59, %.thread42.us57 ], [ 0, %.lr.ph52.split ] ; 6 uses
  %.sroa.537.048.us56 = phi i8 [ %.sroa.537.2.us58, %.thread42.us57 ], [ 0, %.lr.ph52.split ] ; 5 uses
  %i.f = tail call ptr @OPENSSL_sk_value(ptr noundef %0, i64 noundef %.02651.us53) #7
  %i.g = tail call i64 @OPENSSL_sk_num(ptr noundef nonnull %3) #7
  %.not65 = icmp eq i64 %i.g, 0
  br i1 %.not65, label %.thread42.us57, label %.lr.ph.us

bb.b:                                             ; preds = %.lr.ph.us, %bb.d
  %.047.us = phi i64 [ 0, %.lr.ph.us ], [ %i.m, %bb.d ] ; 2 uses
  %i.h = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %3, i64 noundef %.047.us) #7 ; 5 uses
  %.not33.us = icmp eq ptr %i.h, null
  br i1 %.not33.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !153
  %i.k = load i32, ptr %4, align 8, !tbaa !153
  %i.l = icmp eq i32 %i.j, %i.k
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = add nuw i64 %.047.us, 1                  ; 2 uses
  %i.n = tail call i64 @OPENSSL_sk_num(ptr noundef nonnull %3) #7
  %i.o = icmp ult i64 %i.m, %i.n
  br i1 %i.o, label %bb.b, label %.thread42.us57, !llvm.loop !149

bb.e:                                             ; preds = %bb.c
  %i.p = tail call zeroext i16 @SSL_CIPHER_get_min_version(ptr noundef nonnull %i.h) #7
  %i.q = icmp ugt i16 %i.p, %2
  br i1 %i.q, label %.thread42.us57, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = tail call zeroext i16 @SSL_CIPHER_get_max_version(ptr noundef nonnull %i.h) #7
  %i.s = icmp ult i16 %i.r, %2
  br i1 %i.s, label %.thread42.us57, label %_ZNK4bssl12CipherScorer8EvaluateEPK13ssl_cipher_st.exit.us

_ZNK4bssl12CipherScorer8EvaluateEPK13ssl_cipher_st.exit.us: ; preds = %bb.f
  %i.t = icmp eq i8 %.sroa.537.048.us56, 0
  %i.u = icmp eq i8 %.sroa.036.049.us55, 0
  %or.cond.us = select i1 %i.t, i1 true, i1 %i.u  ; 2 uses
  %spec.select.us = select i1 %or.cond.us, i8 1, i8 %.sroa.036.049.us55
  %spec.select46.us = select i1 %or.cond.us, ptr %i.h, ptr %.02750.us54
  br label %.thread42.us57

.thread42.us57:                                   ; preds = %bb.d, %.preheader.us, %_ZNK4bssl12CipherScorer8EvaluateEPK13ssl_cipher_st.exit.us, %bb.f, %bb.e
  %.sroa.537.2.us58 = phi i8 [ 1, %_ZNK4bssl12CipherScorer8EvaluateEPK13ssl_cipher_st.exit.us ], [ %.sroa.537.048.us56, %bb.e ], [ %.sroa.537.048.us56, %bb.f ], [ %.sroa.537.048.us56, %.preheader.us ], [ %.sroa.537.048.us56, %bb.d ]
  %.sroa.036.2.us59 = phi i8 [ %spec.select.us, %_ZNK4bssl12CipherScorer8EvaluateEPK13ssl_cipher_st.exit.us ], [ %.sroa.036.049.us55, %bb.e ], [ %.sroa.036.049.us55, %bb.f ], [ %.sroa.036.049.us55, %.preheader.us ], [ %.sroa.036.049.us55, %bb.d ]
  %.229.us60 = phi ptr [ %spec.select46.us, %_ZNK4bssl12CipherScorer8EvaluateEPK13ssl_cipher_st.exit.us ], [ %.02750.us54, %bb.e ], [ %.02750.us54, %bb.f ], [ %.02750.us54, %.preheader.us ], [ %.02750.us54, %bb.d ] ; 2 uses
  %i.v = add nuw i64 %.02651.us53, 1              ; 2 uses
  %i.w = tail call i64 @OPENSSL_sk_num(ptr noundef %0) #7
  %i.x = icmp ult i64 %i.v, %i.w
  br i1 %i.x, label %.preheader.us, label %._crit_edge, !llvm.loop !148

.lr.ph.us:                                        ; preds = %.preheader.us
  %4 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %.thread42, %.thread42.us57, %.thread42.us, %bb.a
  %.027.lcssa = phi ptr [ null, %bb.a ], [ null, %.thread42.us ], [ %.229.us60, %.thread42.us57 ], [ %.229, %.thread42 ]
  ret ptr %.027.lcssa

.preheader:                                       ; preds = %.lr.ph52.split, %.thread42
  %.02651 = phi i64 [ %i.at, %.thread42 ], [ 0, %.lr.ph52.split ] ; 2 uses
  %.02750 = phi ptr [ %.229, %.thread42 ], [ null, %.lr.ph52.split ] ; 5 uses
  %.sroa.036.049 = phi i8 [ %.sroa.036.2, %.thread42 ], [ 0, %.lr.ph52.split ] ; 6 uses
  %.sroa.537.048 = phi i8 [ %.sroa.537.2, %.thread42 ], [ 0, %.lr.ph52.split ] ; 5 uses
  %i.y = tail call ptr @OPENSSL_sk_value(ptr noundef %0, i64 noundef %.02651) #7
  %i.z = tail call i64 @OPENSSL_sk_num(ptr noundef nonnull %3) #7
  %.not64 = icmp eq i64 %i.z, 0
  br i1 %.not64, label %.thread42, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.i
  %.047 = phi i64 [ 0, %.lr.ph ], [ %i.ag, %bb.i ] ; 2 uses
  %i.ab = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %3, i64 noundef %.047) #7 ; 6 uses
  %.not33 = icmp eq ptr %i.ab, null
  br i1 %.not33, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !153
  %i.ae = load i32, ptr %i.aa, align 8, !tbaa !153
  %i.af = icmp eq i32 %i.ad, %i.ae
  br i1 %i.af, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ag = add nuw i64 %.047, 1                    ; 2 uses
  %i.ah = tail call i64 @OPENSSL_sk_num(ptr noundef nonnull %3) #7
  %i.ai = icmp ult i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %.thread42, !llvm.loop !149

bb.j:                                             ; preds = %bb.h
  %i.aj = tail call zeroext i16 @SSL_CIPHER_get_min_version(ptr noundef nonnull %i.ab) #7
  %i.ak = icmp ugt i16 %i.aj, %2
  br i1 %i.ak, label %.thread42, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = tail call zeroext i16 @SSL_CIPHER_get_max_version(ptr noundef nonnull %i.ab) #7
  %i.am = icmp ult i16 %i.al, %2
  br i1 %i.am, label %.thread42, label %_ZNK4bssl12CipherScorer8EvaluateEPK13ssl_cipher_st.exit

_ZNK4bssl12CipherScorer8EvaluateEPK13ssl_cipher_st.exit: ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 28
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !154, !noalias !155
  %i.ap = icmp eq i32 %i.ao, 64
  %i.aq = zext i1 %i.ap to i8                     ; 2 uses
  %i.ar = icmp eq i8 %.sroa.537.048, 0
  %i.as = icmp samesign ult i8 %.sroa.036.049, %i.aq
  %or.cond = select i1 %i.ar, i1 true, i1 %i.as   ; 2 uses
  %spec.select = select i1 %or.cond, i8 %i.aq, i8 %.sroa.036.049
  %spec.select46 = select i1 %or.cond, ptr %i.ab, ptr %.02750
  br label %.thread42

.thread42:                                        ; preds = %bb.i, %.preheader, %_ZNK4bssl12CipherScorer8EvaluateEPK13ssl_cipher_st.exit, %bb.j, %bb.k
  %.sroa.537.2 = phi i8 [ 1, %_ZNK4bssl12CipherScorer8EvaluateEPK13ssl_cipher_st.exit ], [ %.sroa.537.048, %bb.j ], [ %.sroa.537.048, %bb.k ], [ %.sroa.537.048, %.preheader ], [ %.sroa.537.048, %bb.i ]
  %.sroa.036.2 = phi i8 [ %spec.select, %_ZNK4bssl12CipherScorer8EvaluateEPK13ssl_cipher_st.exit ], [ %.sroa.036.049, %bb.j ], [ %.sroa.036.049, %bb.k ], [ %.sroa.036.049, %.preheader ], [ %.sroa.036.049, %bb.i ]
  %.229 = phi ptr [ %spec.select46, %_ZNK4bssl12CipherScorer8EvaluateEPK13ssl_cipher_st.exit ], [ %.02750, %bb.j ], [ %.02750, %bb.k ], [ %.02750, %.preheader ], [ %.02750, %bb.i ] ; 2 uses
  %i.at = add nuw i64 %.02651, 1                  ; 2 uses
  %i.au = tail call i64 @OPENSSL_sk_num(ptr noundef %0) #7
  %i.av = icmp ult i64 %i.at, %i.au
  br i1 %i.av, label %.preheader, label %._crit_edge, !llvm.loop !148
}

declare zeroext i16 @SSL_CIPHER_get_min_version(ptr noundef) local_unnamed_addr #1

declare zeroext i16 @SSL_CIPHER_get_max_version(ptr noundef) local_unnamed_addr #1

declare i64 @SSL_max_seal_overhead(ptr noundef) local_unnamed_addr #1

declare i32 @BUF_MEM_reserve(ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN4bssl15tls_seal_recordEP6ssl_stPhPmmhPKhm(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i8 noundef zeroext, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @CBS_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @CBS_get_u8(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @CBS_get_u24(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @CBS_get_bytes(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @CBS_get_u16(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CBS_data(ptr noundef) local_unnamed_addr #1

declare i32 @CBB_init_fixed(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @CBB_add_u16(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

declare i32 @CBB_add_bytes(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @CBB_add_u16_length_prefixed(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @CBB_finish(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @CBB_zero(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare i64 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #1

declare ptr @OPENSSL_sk_value(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @BUF_MEM_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"_ZTSN4bssl5ArrayIhEE", !9, i64 0, !10, i64 8}
!12 = !{!"p1 _ZTSN4bssl19SSL_PROTOCOL_METHODE", !8, i64 0}
!13 = !{!"p1 _ZTSN4bssl10SSL_CONFIGE", !8, i64 0}
!14 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl10SSL_CONFIGELb0EE", !13, i64 0}
!15 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl10SSL_CONFIGENS0_8internal7DeleterEEE", !14, i64 0}
!16 = !{!"_ZTSSt5tupleIJPN4bssl10SSL_CONFIGENS0_8internal7DeleterEEE", !15, i64 0}
!17 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl10SSL_CONFIGENS0_8internal7DeleterEE", !16, i64 0}
!18 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl10SSL_CONFIGENS0_8internal7DeleterELb1ELb1EE", !17, i64 0}
!19 = !{!"_ZTSSt10unique_ptrIN4bssl10SSL_CONFIGENS0_8internal7DeleterEE", !18, i64 0}
!20 = !{!"short", !4, i64 0}
!21 = !{!"p1 _ZTS6bio_st", !8, i64 0}
!22 = !{!"_ZTSSt10_Head_baseILm0EP6bio_stLb0EE", !21, i64 0}
!23 = !{!"_ZTSSt11_Tuple_implILm0EJP6bio_stN4bssl8internal7DeleterEEE", !22, i64 0}
!24 = !{!"_ZTSSt5tupleIJP6bio_stN4bssl8internal7DeleterEEE", !23, i64 0}
!25 = !{!"_ZTSSt15__uniq_ptr_implI6bio_stN4bssl8internal7DeleterEE", !24, i64 0}
!26 = !{!"_ZTSSt15__uniq_ptr_dataI6bio_stN4bssl8internal7DeleterELb1ELb1EE", !25, i64 0}
!27 = !{!"_ZTSSt10unique_ptrI6bio_stN4bssl8internal7DeleterEE", !26, i64 0}
!28 = !{!"p1 _ZTSN4bssl10SSL3_STATEE", !8, i64 0}
!29 = !{!"p1 _ZTSN4bssl11DTLS1_STATEE", !8, i64 0}
!30 = !{!"p1 _ZTS14ssl_session_st", !8, i64 0}
!31 = !{!"_ZTSSt10_Head_baseILm0EP14ssl_session_stLb0EE", !30, i64 0}
!32 = !{!"_ZTSSt11_Tuple_implILm0EJP14ssl_session_stN4bssl8internal7DeleterEEE", !31, i64 0}
!33 = !{!"_ZTSSt5tupleIJP14ssl_session_stN4bssl8internal7DeleterEEE", !32, i64 0}
!34 = !{!"_ZTSSt15__uniq_ptr_implI14ssl_session_stN4bssl8internal7DeleterEE", !33, i64 0}
!35 = !{!"_ZTSSt15__uniq_ptr_dataI14ssl_session_stN4bssl8internal7DeleterELb1ELb1EE", !34, i64 0}
!36 = !{!"_ZTSSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE", !35, i64 0}
!37 = !{!"p1 _ZTS19stack_st_SSL_CIPHER", !8, i64 0}
!38 = !{!"_ZTSSt10_Head_baseILm0EP19stack_st_SSL_CIPHERLb0EE", !37, i64 0}
!39 = !{!"_ZTSSt11_Tuple_implILm0EJP19stack_st_SSL_CIPHERN4bssl8internal7DeleterEEE", !38, i64 0}
!40 = !{!"_ZTSSt5tupleIJP19stack_st_SSL_CIPHERN4bssl8internal7DeleterEEE", !39, i64 0}
!41 = !{!"_ZTSSt15__uniq_ptr_implI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEE", !40, i64 0}
!42 = !{!"_ZTSSt15__uniq_ptr_dataI19stack_st_SSL_CIPHERN4bssl8internal7DeleterELb1ELb1EE", !41, i64 0}
!43 = !{!"_ZTSSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEE", !42, i64 0}
!44 = !{!"_ZTSSt10_Head_baseILm0EPcLb0EE", !9, i64 0}
!45 = !{!"_ZTSSt11_Tuple_implILm0EJPcN4bssl8internal7DeleterEEE", !44, i64 0}
!46 = !{!"_ZTSSt5tupleIJPcN4bssl8internal7DeleterEEE", !45, i64 0}
!47 = !{!"_ZTSSt15__uniq_ptr_implIcN4bssl8internal7DeleterEE", !46, i64 0}
!48 = !{!"_ZTSSt15__uniq_ptr_dataIcN4bssl8internal7DeleterELb1ELb1EE", !47, i64 0}
!49 = !{!"_ZTSSt10unique_ptrIcN4bssl8internal7DeleterEE", !48, i64 0}
!50 = !{!"p1 _ZTS10ssl_ctx_st", !8, i64 0}
!51 = !{!"_ZTSSt10_Head_baseILm0EP10ssl_ctx_stLb0EE", !50, i64 0}
!52 = !{!"_ZTSSt11_Tuple_implILm0EJP10ssl_ctx_stN4bssl8internal7DeleterEEE", !51, i64 0}
!53 = !{!"_ZTSSt5tupleIJP10ssl_ctx_stN4bssl8internal7DeleterEEE", !52, i64 0}
!54 = !{!"_ZTSSt15__uniq_ptr_implI10ssl_ctx_stN4bssl8internal7DeleterEE", !53, i64 0}
!55 = !{!"_ZTSSt15__uniq_ptr_dataI10ssl_ctx_stN4bssl8internal7DeleterELb1ELb1EE", !54, i64 0}
!56 = !{!"_ZTSSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEE", !55, i64 0}
!57 = !{!"p1 _ZTS13stack_st_void", !8, i64 0}
!58 = !{!"_ZTS17crypto_ex_data_st", !57, i64 0}
!59 = !{!"p1 _ZTS18ssl_quic_method_st", !8, i64 0}
!60 = !{!"_ZTS22ssl_renegotiate_mode_t", !4, i64 0}
!61 = !{!"bool", !4, i64 0}
!62 = !{!"_ZTS6ssl_st", !12, i64 0, !19, i64 8, !20, i64 16, !20, i64 18, !10, i64 24, !27, i64 32, !27, i64 40, !8, i64 48, !28, i64 56, !29, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !5, i64 104, !36, i64 112, !43, i64 120, !49, i64 128, !20, i64 136, !8, i64 144, !56, i64 152, !56, i64 160, !58, i64 168, !10, i64 176, !5, i64 184, !5, i64 188, !5, i64 192, !49, i64 200, !59, i64 208, !60, i64 216, !61, i64 220, !61, i64 220, !61, i64 220, !61, i64 220, !61, i64 220}
!63 = !{!62, !59, i64 208}
end_hunk_0
