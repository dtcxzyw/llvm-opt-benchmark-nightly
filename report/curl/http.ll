inline.NumInlined: 80
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@output_auth_headers:bb.a
  %i.s = and i64 %i.r, 64
  %.not16.i = icmp eq i64 %i.s, 0
  br i1 %.not16.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink.i = phi i64 [ 744, %bb.k ], [ 1200, %bb.j ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i
  %.019.i = load ptr, ptr %i.t, align 8, !tbaa !82 ; 2 uses
  %.not1720.i = icmp eq ptr %.019.i, null
  br i1 %.not1720.i, label %Curl_checkProxyheaders.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %bb.n
  %.021.i = phi ptr [ %.0.i, %bb.n ], [ %.019.i, %bb.l ] ; 3 uses
  %i.u = load ptr, ptr %.021.i, align 8, !tbaa !83
  %i.v = tail call i32 @curl_strnequal(ptr noundef %i.u, ptr noundef nonnull @.str.48, i64 noundef 19) #9
  %.not18.i = icmp eq i32 %i.v, 0
  br i1 %.not18.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i
  %i.w = load ptr, ptr %.021.i, align 8, !tbaa !83
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 19
  %i.y = load i8, ptr %i.x, align 1, !tbaa !85
  %i.z = and i8 %i.y, -2
  %switch.i = icmp eq i8 %i.z, 58
  br i1 %switch.i, label %Curl_checkProxyheaders.exit.thread117, label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.021.i, i64 8
  %.0.i = load ptr, ptr %i.aa, align 8, !tbaa !82 ; 2 uses
  %.not17.i = icmp eq ptr %.0.i, null
  br i1 %.not17.i, label %Curl_checkProxyheaders.exit.thread, label %.lr.ph.i, !llvm.loop !86

.critedge:                                        ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4560
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !93 ; 3 uses
  %.not92 = icmp eq ptr %i.ac, null
  br i1 %.not92, label %Curl_checkProxyheaders.exit.thread117, label %bb.o

bb.o:                                             ; preds = %.critedge
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !97
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !85
  %.not93 = icmp eq i8 %i.ae, 0
  br i1 %.not93, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !98
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !85
  %.not94 = icmp eq i8 %i.ah, 0
  br i1 %.not94, label %Curl_checkProxyheaders.exit.thread117, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ai = tail call ptr @Curl_checkheaders(ptr noundef nonnull %0, ptr noundef nonnull @.str.16, i64 noundef 13) #9
  %.not95 = icmp eq ptr %i.ai, null
  br i1 %.not95, label %Curl_checkProxyheaders.exit.thread, label %Curl_checkProxyheaders.exit.thread117

Curl_checkProxyheaders.exit.thread:               ; preds = %bb.n, %bb.l, %bb.q
  %.020.v.i = phi i64 [ 392, %bb.q ], [ 400, %bb.l ], [ 400, %bb.n ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i64 0, ptr %i.a, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store ptr null, ptr %i.b, align 8, !tbaa !88
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4560
  %.020.i = getelementptr inbounds nuw i8, ptr %0, i64 %.020.v.i ; 3 uses
  %.018.in.i = select i1 %5, ptr %i.aj, ptr %i.ak
  %.018.i = load ptr, ptr %.018.in.i, align 8, !tbaa !117 ; 3 uses
  %.not.i109 = icmp eq ptr %.018.i, null
  br i1 %.not.i109, label %http_output_basic.exit.thread, label %bb.r

bb.r:                                             ; preds = %Curl_checkProxyheaders.exit.thread
  %i.al = load ptr, ptr %.018.i, align 8, !tbaa !97
  %i.am = getelementptr inbounds nuw i8, ptr %.018.i, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !98
  %i.ao = tail call ptr (ptr, ...) @curl_maprintf(ptr noundef nonnull @.str.52, ptr noundef %i.al, ptr noundef %i.an) #9 ; 5 uses
  %.not23.i = icmp eq ptr %i.ao, null
  br i1 %.not23.i, label %http_output_basic.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ao) #10
  %i.aq = call i32 @curlx_base64_encode(ptr noundef nonnull %i.ao, i64 noundef %i.ap, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not24.i = icmp eq i32 %i.aq, 0
  br i1 %.not24.i, label %bb.t, label %http_output_basic.exit.thread121

bb.t:                                             ; preds = %bb.s
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !88
  %.not25.i = icmp eq ptr %i.ar, null
  br i1 %.not25.i, label %http_output_basic.exit.thread121, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = load ptr, ptr @Curl_cfree, align 8, !tbaa !110
  %i.at = load ptr, ptr %.020.i, align 8, !tbaa !88
  call void %i.as(ptr noundef %i.at) #9, !inline_history !118
  %i.au = select i1 %5, ptr @.str.54, ptr @.str.44
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !88
  %i.aw = call ptr (ptr, ...) @curl_maprintf(ptr noundef nonnull @.str.53, ptr noundef nonnull %i.au, ptr noundef %i.av) #9
  store ptr %i.aw, ptr %.020.i, align 8, !tbaa !88
  %i.ax = load ptr, ptr @Curl_cfree, align 8, !tbaa !110
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !88
  call void %i.ax(ptr noundef %i.ay) #9, !inline_history !118
  %i.az = load ptr, ptr %.020.i, align 8, !tbaa !88
  %.not26.i = icmp eq ptr %i.az, null
  br i1 %.not26.i, label %http_output_basic.exit.thread121, label %http_output_basic.exit

http_output_basic.exit.thread:                    ; preds = %Curl_checkProxyheaders.exit.thread, %bb.r
  %.0.i111.ph = phi i32 [ 27, %bb.r ], [ 2, %Curl_checkProxyheaders.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.ap

http_output_basic.exit.thread121:                 ; preds = %bb.s, %bb.t, %bb.u
  %.019.i110.ph = phi i32 [ %i.aq, %bb.s ], [ 9, %bb.t ], [ 27, %bb.u ]
  %i.ba = load ptr, ptr @Curl_cfree, align 8, !tbaa !110
  call void %i.ba(ptr noundef nonnull %i.ao) #9, !inline_history !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.ap

http_output_basic.exit:                           ; preds = %bb.u
  %i.bb = load ptr, ptr @Curl_cfree, align 8, !tbaa !110
  call void %i.bb(ptr noundef nonnull %i.ao) #9, !inline_history !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %Curl_checkProxyheaders.exit.thread117

Curl_checkProxyheaders.exit.thread117:            ; preds = %bb.m, %bb.f, %bb.h, %http_output_basic.exit, %bb.q, %bb.p, %.critedge
  %.067 = phi ptr [ null, %bb.f ], [ null, %bb.q ], [ @.str.4, %http_output_basic.exit ], [ null, %bb.p ], [ null, %.critedge ], [ null, %bb.h ], [ null, %bb.m ]
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 4
  %i.be = or i8 %i.bd, 1
  store i8 %i.be, ptr %i.bc, align 4
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.b, %Curl_checkProxyheaders.exit.thread117, %bb.d
  %.168.ph = phi ptr [ @.str.47, %bb.b ], [ %.067, %Curl_checkProxyheaders.exit.thread117 ], [ @.str.3, %bb.d ]
  %.pr = load i32, ptr %i.c, align 4, !tbaa !101
  br label %bb.v

bb.v:                                             ; preds = %thread-pre-split, %bb.c
  %i.bf = phi i32 [ %.pr, %thread-pre-split ], [ %i.d, %bb.c ]
  %.168 = phi ptr [ %.168.ph, %thread-pre-split ], [ null, %bb.c ] ; 5 uses
  %i.bg = icmp eq i32 %i.bf, 64
  br i1 %i.bg, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %bb.v
  br i1 %5, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4560 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !93 ; 2 uses
  %.not98 = icmp eq ptr %i.bi, null
  br i1 %.not98, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !94
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !85
  %.not99 = icmp eq i8 %i.bl, 0
  br i1 %.not99, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bm = call ptr @Curl_checkheaders(ptr noundef nonnull %0, ptr noundef nonnull @.str.16, i64 noundef 13) #9
  %.not100 = icmp eq ptr %i.bm, null
  br i1 %.not100, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.bo = load ptr, ptr @Curl_cfree, align 8, !tbaa !110
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !88
  call void %i.bo(ptr noundef %i.bp) #9, !inline_history !119
  %i.bq = load ptr, ptr %i.bh, align 8, !tbaa !93 ; 2 uses
  %.not.i112 = icmp eq ptr %i.bq, null
  br i1 %.not.i112, label %http_output_bearer.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !94
  br label %http_output_bearer.exit

http_output_bearer.exit:                          ; preds = %bb.aa, %bb.ab
  %i.bt = phi ptr [ %i.bs, %bb.ab ], [ @.str.44, %bb.aa ]
  %i.bu = call ptr (ptr, ...) @curl_maprintf(ptr noundef nonnull @.str.55, ptr noundef %i.bt) #9 ; 2 uses
  store ptr %i.bu, ptr %i.bn, align 8, !tbaa !88
  %.not7.i.not = icmp eq ptr %i.bu, null
  br i1 %.not7.i.not, label %bb.ap, label %bb.ac

bb.ac:                                            ; preds = %http_output_bearer.exit, %bb.z, %bb.y, %bb.x, %bb.w
  %.269 = phi ptr [ %.168, %bb.w ], [ %.168, %bb.z ], [ @.str.5, %http_output_bearer.exit ], [ %.168, %bb.y ], [ %.168, %bb.x ]
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 4
  %i.bx = or i8 %i.bw, 1
  store i8 %i.bx, ptr %i.bv, align 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.v
  %.370 = phi ptr [ %.269, %bb.ac ], [ %.168, %bb.v ] ; 2 uses
  %.not102 = icmp eq ptr %.370, null
  br i1 %.not102, label %bb.am, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %6 = load i32, ptr %i.c, align 4, !tbaa !101
  %. = select i1 %5, i64 4688, i64 4692
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %.
  store i32 %6, ptr %7, align 4, !tbaa !120
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.bz = load i64, ptr %i.by, align 1
  %i.ca = and i64 %i.bz, 536870912
  %.not104 = icmp eq i64 %i.ca, 0
  br i1 %.not104, label %bb.al, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !104 ; 2 uses
  %.not105 = icmp eq ptr %i.cc, null
  br i1 %.not105, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !105
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cg = select i1 %5, ptr @.str.50, ptr @.str.51
  br i1 %5, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !108 ; 2 uses
  %.not107 = icmp eq ptr %i.ci, null
  br i1 %.not107, label %bb.ak, label %.sink.split

bb.aj:                                            ; preds = %bb.ah
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 4560
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !93 ; 2 uses
  %.not106 = icmp eq ptr %i.ck, null
  br i1 %.not106, label %bb.ak, label %.sink.split

.sink.split:                                      ; preds = %bb.aj, %bb.ai
  %.sink = phi ptr [ %i.ci, %bb.ai ], [ %i.ck, %bb.aj ]
  %i.cl = load ptr, ptr %.sink, align 8, !tbaa !97
  br label %bb.ak

bb.ak:                                            ; preds = %.sink.split, %bb.aj, %bb.ai
  %i.cm = phi ptr [ @.str.44, %bb.ai ], [ @.str.44, %bb.aj ], [ %i.cl, %.sink.split ]
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.49, ptr noundef nonnull %i.cg, ptr noundef nonnull %.370, ptr noundef %i.cm) #9
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ag, %bb.ae
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 4             ; 2 uses
  %i.cp = shl i8 %i.co, 1
  %i.cq = and i8 %i.cp, 2
  %i.cr = and i8 %i.co, -3
  %i.cs = or disjoint i8 %i.cq, %i.cr
  %i.ct = xor i8 %i.cs, 2
  store i8 %i.ct, ptr %i.cn, align 4
  br label %bb.ap

bb.am:                                            ; preds = %bb.ad
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 4
  %i.cw = and i8 %i.cv, -3
  store i8 %i.cw, ptr %i.cu, align 4
  br i1 %5, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 4688
  store i32 0, ptr %i.cx, align 8, !tbaa !109
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 4692
  store i32 0, ptr %i.cy, align 4, !tbaa !102
  br label %bb.ap

bb.ap:                                            ; preds = %http_output_basic.exit.thread121, %http_output_basic.exit.thread, %bb.al, %bb.ao, %bb.an, %http_output_bearer.exit, %bb.d, %bb.b
  %.071 = phi i32 [ %i.f, %bb.b ], [ 27, %http_output_bearer.exit ], [ %.019.i110.ph, %http_output_basic.exit.thread121 ], [ %i.g, %bb.d ], [ 0, %bb.an ], [ 0, %bb.ao ], [ 0, %bb.al ], [ %.0.i111.ph, %http_output_basic.exit.thread ]
  ret i32 %.071
}

declare zeroext i1 @Curl_auth_allowed_to_host(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 0, 28) i32 @Curl_http_input_auth(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !88
  %.019.v = select i1 %1, i64 4680, i64 4684
  %.019 = getelementptr inbounds nuw i8, ptr %0, i64 %.019.v ; 8 uses
  %i.b = load i8, ptr %2, align 1, !tbaa !85
  %.not50 = icmp eq i8 %i.b, 0
  br i1 %.not50, label %auth_bearer.exit.thread._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.018.v = select i1 %1, i64 3064, i64 3048
  %.018 = getelementptr inbounds nuw i8, ptr %0, i64 %.018.v ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.018, i64 8 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2187 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4504 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4628 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.018, i64 4 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ad
  %i.h = phi ptr [ %2, %.lr.ph ], [ %i.cj, %bb.ad ] ; 2 uses
  %i.i = call i32 @curl_strnequal(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.h, i64 noundef 6) #9
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
  %i.q = load i32, ptr %i.c, align 4, !tbaa !99
  %i.r = and i32 %i.q, 2
  %.not.i24 = icmp eq i32 %i.r, 0
  br i1 %.not.i24, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %.019, align 4, !tbaa !120
  %i.t = or i32 %i.s, 2
  store i32 %i.t, ptr %.019, align 4, !tbaa !120
  %i.u = load i64, ptr %i.d, align 1
  %i.v = and i64 %i.u, 536870912
  %.not33.i = icmp eq i64 %i.v, 0
  br i1 %.not33.i, label %authcmp.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !104  ; 2 uses
  %.not34.i = icmp eq ptr %i.w, null
  br i1 %.not34.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !105
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.h, label %authcmp.exit.thread

bb.h:                                             ; preds = %bb.g, %bb.f
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.56) #9
  br label %authcmp.exit.thread

bb.i:                                             ; preds = %bb.d
  %i.aa = call zeroext i1 @Curl_auth_is_digest_supported() #9
  br i1 %i.aa, label %bb.j, label %authcmp.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ab = load i32, ptr %.019, align 4, !tbaa !120
  %i.ac = or i32 %i.ab, 2
  store i32 %i.ac, ptr %.019, align 4, !tbaa !120
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !99
  %i.ae = or i32 %i.ad, 2
  store i32 %i.ae, ptr %i.c, align 4, !tbaa !99
  %i.af = call i32 @Curl_input_digest(ptr noundef nonnull %0, i1 noundef zeroext %1, ptr noundef %i.p) #9 ; 2 uses
  switch i32 %i.af, label %bb.k [
    i32 0, label %authcmp.exit.thread
    i32 27, label %auth_digest.exit
  ]

bb.k:                                             ; preds = %bb.j
  %i.ag = load i64, ptr %i.d, align 1
  %i.ah = and i64 %i.ag, 536870912
  %.not30.i = icmp eq i64 %i.ah, 0
  br i1 %.not30.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !104 ; 2 uses
  %.not31.i = icmp eq ptr %i.ai, null
  br i1 %.not31.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !105
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.57) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k
  %i.am = load i32, ptr %i.f, align 4
  %i.an = or i32 %i.am, 32
  store i32 %i.an, ptr %i.f, align 4
  br label %authcmp.exit.thread

authcmp.exit.thread:                              ; preds = %bb.j, %bb.o, %bb.c, %bb.b, %bb.i, %bb.h, %bb.g, %bb.e
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !88  ; 2 uses
  %i.ap = call i32 @curl_strnequal(ptr noundef nonnull @.str.4, ptr noundef %i.ao, i64 noundef 5) #9
  %.not.i25 = icmp eq i32 %i.ap, 0
  br i1 %.not.i25, label %auth_digest.exit, label %bb.p

bb.p:                                             ; preds = %authcmp.exit.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 5
end_hunk_0
