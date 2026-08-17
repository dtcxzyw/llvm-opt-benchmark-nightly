inline.NumInlined: 77
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@output_auth_headers:bb.a
bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @Curl_output_aws_sigv4(ptr noundef %0) #9 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %thread-pre-split, label %bb.ag

bb.c:                                             ; preds = %bb.a
  switch i32 %i.d, label %bb.q [
    i32 2, label %bb.d
    i32 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @Curl_output_digest(ptr noundef %0, i1 noundef zeroext %5, ptr noundef %3, ptr noundef %4) #9 ; 2 uses
  %.not83 = icmp eq i32 %i.g, 0
  br i1 %.not83, label %thread-pre-split, label %bb.ag

bb.e:                                             ; preds = %bb.c
  br i1 %5, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 728
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = and i64 %i.i, 8
  %.not78 = icmp eq i64 %i.j, 0
  br i1 %.not78, label %Curl_checkProxyheaders.exit.thread100, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = and i64 %i.i, 32
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2049
  %i.m = load i32, ptr %i.l, align 1
  %i.n = and i32 %i.m, 16
  %.not16.i = icmp eq i32 %i.n, 0
  br i1 %.not16.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink.i = phi i64 [ 736, %bb.i ], [ 1152, %bb.h ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i
  %.019.i = load ptr, ptr %i.o, align 8, !tbaa !82 ; 2 uses
  %.not1720.i = icmp eq ptr %.019.i, null
  br i1 %.not1720.i, label %Curl_checkProxyheaders.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.021.i = phi ptr [ %.0.i, %bb.l ], [ %.019.i, %bb.j ] ; 3 uses
  %i.p = load ptr, ptr %.021.i, align 8, !tbaa !83
  %i.q = tail call i32 @curl_strnequal(ptr noundef %i.p, ptr noundef nonnull @.str.47, i64 noundef 19) #9
  %.not18.i = icmp eq i32 %i.q, 0
  br i1 %.not18.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.r = load ptr, ptr %.021.i, align 8, !tbaa !83
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 19
  %i.t = load i8, ptr %i.s, align 1, !tbaa !85
  %i.u = and i8 %i.t, -2
  %switch.i = icmp eq i8 %i.u, 58
  br i1 %switch.i, label %Curl_checkProxyheaders.exit.thread100, label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i
  %i.v = getelementptr inbounds nuw i8, ptr %.021.i, i64 8
  %.0.i = load ptr, ptr %i.v, align 8, !tbaa !82  ; 2 uses
  %.not17.i = icmp eq ptr %.0.i, null
  br i1 %.not17.i, label %Curl_checkProxyheaders.exit.thread, label %.lr.ph.i, !llvm.loop !86

.critedge:                                        ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4392
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !94
  %.not80 = icmp eq ptr %i.x, null
  br i1 %.not80, label %Curl_checkProxyheaders.exit.thread100, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.y = tail call ptr @Curl_checkheaders(ptr noundef nonnull %0, ptr noundef nonnull @.str.15, i64 noundef 13) #9
  %.not81 = icmp eq ptr %i.y, null
  br i1 %.not81, label %Curl_checkProxyheaders.exit.thread, label %Curl_checkProxyheaders.exit.thread100

Curl_checkProxyheaders.exit.thread:               ; preds = %bb.l, %bb.j, %bb.m
  %.022.in.v.i = phi i64 [ 4400, %bb.m ], [ 4416, %bb.j ], [ 4416, %bb.l ]
  %.023.in.v.i = phi i64 [ 4392, %bb.m ], [ 4408, %bb.j ], [ 4408, %bb.l ]
  %.024.v.i = phi i64 [ 384, %bb.m ], [ 392, %bb.j ], [ 392, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i64 0, ptr %i.a, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store ptr null, ptr %i.b, align 8, !tbaa !88
  %.024.i = getelementptr inbounds nuw i8, ptr %0, i64 %.024.v.i ; 3 uses
  %.023.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.023.in.v.i
  %.022.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.022.in.v.i
  %.022.i = load ptr, ptr %.022.in.i, align 8, !tbaa !88 ; 2 uses
  %.023.i = load ptr, ptr %.023.in.i, align 8, !tbaa !88 ; 2 uses
  %.not.i95 = icmp eq ptr %.023.i, null
  %i.z = select i1 %.not.i95, ptr @.str.43, ptr %.023.i
  %.not27.i = icmp eq ptr %.022.i, null
  %i.aa = select i1 %.not27.i, ptr @.str.43, ptr %.022.i
  %i.ab = tail call ptr (ptr, ...) @curl_maprintf(ptr noundef nonnull @.str.51, ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa) #9 ; 5 uses
  %.not28.i = icmp eq ptr %i.ab, null
  br i1 %.not28.i, label %http_output_basic.exit.thread, label %bb.n

http_output_basic.exit.thread:                    ; preds = %Curl_checkProxyheaders.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.ag

bb.n:                                             ; preds = %Curl_checkProxyheaders.exit.thread
  %i.ac = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #10
  %i.ad = call i32 @curlx_base64_encode(ptr noundef nonnull %i.ab, i64 noundef %i.ac, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not29.i = icmp eq i32 %i.ad, 0
  br i1 %.not29.i, label %bb.o, label %http_output_basic.exit.thread103

bb.o:                                             ; preds = %bb.n
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !88
  %.not30.i = icmp eq ptr %i.ae, null
  br i1 %.not30.i, label %http_output_basic.exit.thread103, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = load ptr, ptr @Curl_cfree, align 8, !tbaa !105
  %i.ag = load ptr, ptr %.024.i, align 8, !tbaa !88
  call void %i.af(ptr noundef %i.ag) #9, !inline_history !112
  %i.ah = select i1 %5, ptr @.str.53, ptr @.str.43
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !88
  %i.aj = call ptr (ptr, ...) @curl_maprintf(ptr noundef nonnull @.str.52, ptr noundef nonnull %i.ah, ptr noundef %i.ai) #9
  store ptr %i.aj, ptr %.024.i, align 8, !tbaa !88
  %i.ak = load ptr, ptr @Curl_cfree, align 8, !tbaa !105
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !88
  call void %i.ak(ptr noundef %i.al) #9, !inline_history !112
  %i.am = load ptr, ptr %.024.i, align 8, !tbaa !88
  %.not31.i = icmp eq ptr %i.am, null
  br i1 %.not31.i, label %http_output_basic.exit.thread103, label %http_output_basic.exit

http_output_basic.exit.thread103:                 ; preds = %bb.n, %bb.o, %bb.p
  %.021.i96.ph = phi i32 [ %i.ad, %bb.n ], [ 9, %bb.o ], [ 27, %bb.p ]
  %i.an = load ptr, ptr @Curl_cfree, align 8, !tbaa !105
  call void %i.an(ptr noundef nonnull %i.ab) #9, !inline_history !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.ag

http_output_basic.exit:                           ; preds = %bb.p
  %i.ao = load ptr, ptr @Curl_cfree, align 8, !tbaa !105
  call void %i.ao(ptr noundef nonnull %i.ab) #9, !inline_history !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %Curl_checkProxyheaders.exit.thread100

Curl_checkProxyheaders.exit.thread100:            ; preds = %bb.k, %bb.f, %http_output_basic.exit, %bb.m, %.critedge
  %.060 = phi ptr [ null, %bb.f ], [ null, %bb.m ], [ @.str.3, %http_output_basic.exit ], [ null, %.critedge ], [ null, %bb.k ]
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 4
  %i.ar = or i8 %i.aq, 1
  store i8 %i.ar, ptr %i.ap, align 4
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.b, %Curl_checkProxyheaders.exit.thread100, %bb.d
  %.161.ph = phi ptr [ @.str.46, %bb.b ], [ %.060, %Curl_checkProxyheaders.exit.thread100 ], [ @.str.2, %bb.d ]
  %.pr = load i32, ptr %i.c, align 4, !tbaa !97
  br label %bb.q

bb.q:                                             ; preds = %thread-pre-split, %bb.c
  %i.as = phi i32 [ %.pr, %thread-pre-split ], [ %i.d, %bb.c ]
  %.161 = phi ptr [ %.161.ph, %thread-pre-split ], [ null, %bb.c ] ; 5 uses
  %i.at = icmp eq i32 %i.as, 64
  br i1 %i.at, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  br i1 %5, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !88
  %.not84 = icmp eq ptr %i.av, null
  br i1 %.not84, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aw = call zeroext i1 @Curl_auth_allowed_to_host(ptr noundef nonnull %0) #9
  br i1 %i.aw, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.ax = call ptr @Curl_checkheaders(ptr noundef nonnull %0, ptr noundef nonnull @.str.15, i64 noundef 13) #9
  %.not85 = icmp eq ptr %i.ax, null
  br i1 %.not85, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ay = call fastcc i32 @http_output_bearer(ptr noundef nonnull %0) ; 2 uses
  %.not86 = icmp eq i32 %i.ay, 0
  br i1 %.not86, label %bb.w, label %bb.ag

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %.262 = phi ptr [ %.161, %bb.r ], [ %.161, %bb.u ], [ @.str.4, %bb.v ], [ %.161, %bb.t ], [ %.161, %bb.s ]
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 4
  %i.bb = or i8 %i.ba, 1
  store i8 %i.bb, ptr %i.az, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.q
  %.363 = phi ptr [ %.262, %bb.w ], [ %.161, %bb.q ] ; 2 uses
  %.not87 = icmp eq ptr %.363, null
  br i1 %.not87, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  %6 = load i32, ptr %i.c, align 4, !tbaa !97
  %. = select i1 %5, i64 4496, i64 4500
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %.
  store i32 %6, ptr %7, align 4, !tbaa !113
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 2049
  %i.bd = load i32, ptr %i.bc, align 1
  %i.be = and i32 %i.bd, 134217728
  %.not89 = icmp eq i32 %i.be, 0
  br i1 %.not89, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4296
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !100 ; 2 uses
  %.not90 = icmp eq ptr %i.bg, null
  br i1 %.not90, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !101
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bk = select i1 %5, ptr @.str.49, ptr @.str.50
  %..a = select i1 %5, i64 4408, i64 4392
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 %..a
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !88 ; 2 uses
  %.not91 = icmp eq ptr %i.bm, null
  %spec.select94 = select i1 %.not91, ptr @.str.43, ptr %i.bm
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.48, ptr noundef nonnull %i.bk, ptr noundef nonnull %.363, ptr noundef nonnull %spec.select94) #9
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.y
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 4             ; 2 uses
  %i.bp = shl i8 %i.bo, 1
  %i.bq = and i8 %i.bp, 2
  %i.br = and i8 %i.bo, -3
  %i.bs = or disjoint i8 %i.bq, %i.br
  %i.bt = xor i8 %i.bs, 2
  store i8 %i.bt, ptr %i.bn, align 4
  br label %bb.ag

bb.ad:                                            ; preds = %bb.x
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 4
  %i.bw = and i8 %i.bv, -3
  store i8 %i.bw, ptr %i.bu, align 4
  br i1 %5, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 4496
  store i32 0, ptr %i.bx, align 8, !tbaa !104
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 4500
  store i32 0, ptr %i.by, align 4, !tbaa !98
  br label %bb.ag

bb.ag:                                            ; preds = %http_output_basic.exit.thread103, %http_output_basic.exit.thread, %bb.ac, %bb.af, %bb.ae, %bb.v, %bb.d, %bb.b
  %.064 = phi i32 [ %i.f, %bb.b ], [ %i.ay, %bb.v ], [ %.021.i96.ph, %http_output_basic.exit.thread103 ], [ %i.g, %bb.d ], [ 0, %bb.ae ], [ 0, %bb.af ], [ 0, %bb.ac ], [ 27, %http_output_basic.exit.thread ]
  ret i32 %.064
}

declare zeroext i1 @Curl_auth_allowed_to_host(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 28) i32 @Curl_http_input_auth(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !88
  %.019.v = select i1 %1, i64 4488, i64 4492
  %.019 = getelementptr inbounds nuw i8, ptr %0, i64 %.019.v ; 8 uses
  %i.b = load i8, ptr %2, align 1, !tbaa !85
  %.not50 = icmp eq i8 %i.b, 0
  br i1 %.not50, label %auth_bearer.exit.thread._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.018.v = select i1 %1, i64 2880, i64 2864
  %.018 = getelementptr inbounds nuw i8, ptr %0, i64 %.018.v ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.018, i64 8 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2049 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4296 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4436 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.018, i64 4 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ad
  %i.h = phi ptr [ %2, %.lr.ph ], [ %i.cj, %bb.ad ] ; 2 uses
  %i.i = call i32 @curl_strnequal(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.h, i64 noundef 6) #9
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %authcmp.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 6
  %i.k = load i8, ptr %i.j, align 1, !tbaa !85    ; 2 uses
  %i.l = add i8 %i.k, -58
  %or.cond.i = icmp ult i8 %i.l, -10
  %i.m = and i8 %i.k, -33
  %i.n = add i8 %i.m, -91
  %i.o = icmp ult i8 %i.n, -26
  %or.cond = and i1 %or.cond.i, %i.o
  br i1 %or.cond, label %bb.d, label %authcmp.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !88
  %i.q = load i32, ptr %i.c, align 4, !tbaa !95
  %i.r = and i32 %i.q, 2
  %.not.i24 = icmp eq i32 %i.r, 0
  br i1 %.not.i24, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %.019, align 4, !tbaa !113
  %i.t = or i32 %i.s, 2
  store i32 %i.t, ptr %.019, align 4, !tbaa !113
  %i.u = load i32, ptr %i.d, align 1
  %i.v = and i32 %i.u, 134217728
  %.not33.i = icmp eq i32 %i.v, 0
  br i1 %.not33.i, label %authcmp.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !100  ; 2 uses
  %.not34.i = icmp eq ptr %i.w, null
  br i1 %.not34.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !101
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.h, label %authcmp.exit.thread

bb.h:                                             ; preds = %bb.g, %bb.f
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.55) #9
  br label %authcmp.exit.thread

bb.i:                                             ; preds = %bb.d
  %i.aa = call zeroext i1 @Curl_auth_is_digest_supported() #9
  br i1 %i.aa, label %bb.j, label %authcmp.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ab = load i32, ptr %.019, align 4, !tbaa !113
  %i.ac = or i32 %i.ab, 2
  store i32 %i.ac, ptr %.019, align 4, !tbaa !113
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !95
  %i.ae = or i32 %i.ad, 2
  store i32 %i.ae, ptr %i.c, align 4, !tbaa !95
  %i.af = call i32 @Curl_input_digest(ptr noundef nonnull %0, i1 noundef zeroext %1, ptr noundef %i.p) #9 ; 2 uses
  switch i32 %i.af, label %bb.k [
    i32 0, label %authcmp.exit.thread
    i32 27, label %auth_digest.exit
  ]

bb.k:                                             ; preds = %bb.j
  %i.ag = load i32, ptr %i.d, align 1
  %i.ah = and i32 %i.ag, 134217728
  %.not30.i = icmp eq i32 %i.ah, 0
  br i1 %.not30.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !100 ; 2 uses
  %.not31.i = icmp eq ptr %i.ai, null
  br i1 %.not31.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !101
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.56) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k
  %i.am = load i32, ptr %i.f, align 4
  %i.an = or i32 %i.am, 128
  store i32 %i.an, ptr %i.f, align 4
  br label %authcmp.exit.thread

authcmp.exit.thread:                              ; preds = %bb.j, %bb.o, %bb.c, %bb.b, %bb.i, %bb.h, %bb.g, %bb.e
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !88  ; 2 uses
  %i.ap = call i32 @curl_strnequal(ptr noundef nonnull @.str.3, ptr noundef %i.ao, i64 noundef 5) #9
  %.not.i25 = icmp eq i32 %i.ap, 0
  br i1 %.not.i25, label %auth_digest.exit, label %bb.p

bb.p:                                             ; preds = %authcmp.exit.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 5
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !85  ; 2 uses
  %i.as = add i8 %i.ar, -58
  %or.cond.i26 = icmp ult i8 %i.as, -10
  %i.at = and i8 %i.ar, -33
  %i.au = add i8 %i.at, -91
  %i.av = icmp ult i8 %i.au, -26
  %or.cond45 = and i1 %or.cond.i26, %i.av
  br i1 %or.cond45, label %bb.q, label %auth_digest.exit

bb.q:                                             ; preds = %bb.p
  %i.aw = load i32, ptr %.019, align 4, !tbaa !113
  %i.ax = or i32 %i.aw, 1
  store i32 %i.ax, ptr %.019, align 4, !tbaa !113
  %i.ay = load i32, ptr %i.c, align 4, !tbaa !95
  %i.az = or i32 %i.ay, 1
  store i32 %i.az, ptr %i.c, align 4, !tbaa !95
end_hunk_0
