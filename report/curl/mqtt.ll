Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/mqtt?download=true
inline.NumInlined: 26
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@mqtt_doing:bb.a
  %or.cond = select i1 %i.l, i1 %i.m, i1 false
  br i1 %or.cond, label %bb.b, label %mqtt_ping.exit.thread155

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %1, align 1, !tbaa !11
  %i.n = tail call i64 @curlx_dyn_len(ptr noundef nonnull %i.h) #6
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = tail call ptr @curlx_dyn_ptr(ptr noundef nonnull %i.h) #6
  %i.p = tail call i64 @curlx_dyn_len(ptr noundef nonnull %i.h) #6
  %i.q = tail call fastcc i32 @mqtt_send(ptr noundef nonnull %0, ptr noundef %i.o, i64 noundef %i.p) ; 2 uses
  %.not121 = icmp eq i32 %i.q, 0
  br i1 %.not121, label %bb.d, label %mqtt_ping.exit.thread155

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = tail call ptr @Curl_meta_get(ptr noundef nonnull %0, ptr noundef nonnull @.str.1) #6 ; 3 uses
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !81
  %i.t = tail call ptr @Curl_conn_meta_get(ptr noundef %i.s, ptr noundef nonnull @.str) #6 ; 2 uses
  %i.u = icmp ne ptr %i.t, null
  %i.v = icmp ne ptr %i.r, null
  %or.cond.i = select i1 %i.u, i1 %i.v, i1 false
  br i1 %or.cond.i, label %bb.e, label %mqtt_ping.exit.thread155

bb.e:                                             ; preds = %bb.d
  %i.w = load i32, ptr %i.t, align 4, !tbaa !83
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.f, label %mqtt_ping.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 105 ; 3 uses
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = and i8 %i.z, 1
  %.not.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i, label %bb.g, label %mqtt_ping.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2120 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !96
  %i.ad = icmp sgt i64 %i.ac, 0
  br i1 %i.ad, label %bb.h, label %mqtt_ping.exit.thread

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.ae = tail call ptr @Curl_pgrs_now(ptr noundef nonnull %0) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false), !tbaa.struct !15
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.ag = call i64 @curlx_ptimediff_ms(ptr noundef nonnull %2, ptr noundef nonnull %i.af) #6
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !96
  %i.ai = icmp sgt i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.i, label %mqtt_ping.exit.thread158

mqtt_ping.exit.thread158:                         ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  br label %mqtt_ping.exit.thread

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  store i16 192, ptr %i.e, align 2
  %i.aj = call fastcc i32 @mqtt_send(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i64 noundef 2) ; 2 uses
  %.not28.i = icmp eq i32 %i.aj, 0                ; 2 uses
  br i1 %.not28.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = load i8, ptr %i.y, align 1
  %i.al = or i8 %i.ak, 1
  store i8 %i.al, ptr %i.y, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.an = load i64, ptr %i.am, align 1
  %i.ao = and i64 %i.an, 536870912
  %.not30.i = icmp eq i64 %i.ao, 0
  br i1 %.not30.i, label %mqtt_ping.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !78 ; 2 uses
  %.not31.i = icmp eq ptr %i.aq, null
  br i1 %.not31.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !80
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %bb.n, label %mqtt_ping.exit

bb.n:                                             ; preds = %bb.m, %bb.l
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.15) #6
  br label %mqtt_ping.exit

mqtt_ping.exit:                                   ; preds = %bb.k, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  br i1 %.not28.i, label %mqtt_ping.exit.thread, label %mqtt_ping.exit.thread155

mqtt_ping.exit.thread:                            ; preds = %bb.e, %bb.g, %bb.f, %mqtt_ping.exit, %mqtt_ping.exit.thread158
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2187 ; 7 uses
  %i.av = load i64, ptr %i.au, align 1
  %i.aw = and i64 %i.av, 536870912
  %.not124 = icmp eq i64 %i.aw, 0
  br i1 %.not124, label %bb.r, label %bb.o

bb.o:                                             ; preds = %mqtt_ping.exit.thread
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !78 ; 2 uses
  %.not125 = icmp eq ptr %i.ay, null
  br i1 %.not125, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !80
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bc = load i32, ptr %i.k, align 4, !tbaa !83
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, i32 noundef %i.bc) #6
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %mqtt_ping.exit.thread
  %i.bd = load i32, ptr %i.k, align 4, !tbaa !83
  switch i32 %i.bd, label %bb.cw [
    i32 0, label %bb.s
    i32 1, label %mqstate.exit
    i32 2, label %bb.au
    i32 3, label %bb.bc
    i32 5, label %bb.bc
    i32 6, label %bb.bc
  ]

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 2 uses
  %i.bf = call i32 @Curl_xfer_recv(ptr noundef nonnull %0, ptr noundef nonnull %i.be, i64 noundef 1, ptr noundef nonnull %i.f) #6 ; 2 uses
  %.not129 = icmp eq i32 %i.bf, 0
  br i1 %.not129, label %bb.t, label %mqstate.exit145

bb.t:                                             ; preds = %bb.s
  %i.bg = load i64, ptr %i.f, align 8, !tbaa !13
  %.not130 = icmp eq i64 %i.bg, 0
  br i1 %.not130, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.8) #6
  store i8 1, ptr %1, align 1, !tbaa !11
  br label %mqtt_ping.exit.thread155

bb.v:                                             ; preds = %bb.t
  call void @Curl_debug(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.be, i64 noundef 1) #6
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.bi = call ptr @Curl_pgrs_now(ptr noundef nonnull %0) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i64 16, i1 false), !tbaa.struct !15
  %i.bj = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i64 0, ptr %i.bj, align 8, !tbaa !97
  %.val142 = load ptr, ptr %i.i, align 8, !tbaa !81
  %i.bk = call ptr @Curl_conn_meta_get(ptr noundef %.val142, ptr noundef nonnull @.str) #6 ; 2 uses
  %.not.i143 = icmp eq ptr %i.bk, null
  br i1 %.not.i143, label %mqstate.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 1, ptr %i.bk, align 4, !tbaa !83
  br label %mqstate.exit

mqstate.exit:                                     ; preds = %bb.w, %bb.v, %bb.r
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 4 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %mqstate.exit
  %i.bn = call i32 @Curl_xfer_recv(ptr noundef %0, ptr noundef nonnull %i.g, i64 noundef 1, ptr noundef nonnull %i.f) #6 ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 0                    ; 2 uses
  %i.bp = load i64, ptr %i.f, align 8             ; 2 uses
  %i.bq = icmp ne i64 %i.bp, 0
  %or.cond3 = select i1 %i.bo, i1 %i.bq, i1 false
  br i1 %or.cond3, label %bb.y, label %.critedgesplit

bb.y:                                             ; preds = %bb.x
  call void @Curl_debug(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.g, i64 noundef 1) #6
  %i.br = load i8, ptr %i.g, align 1, !tbaa !77   ; 3 uses
  %i.bs = load i64, ptr %i.bm, align 8, !tbaa !97 ; 2 uses
  %i.bt = add i64 %i.bs, 1                        ; 2 uses
  store i64 %i.bt, ptr %i.bm, align 8, !tbaa !97
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bs
  store i8 %i.br, ptr %i.bu, align 1, !tbaa !77
  %.not131 = icmp slt i8 %i.br, 0
  %i.bv = icmp ult i64 %i.bt, 4
  %or.cond169 = and i1 %i.bv, %.not131
  br i1 %or.cond169, label %bb.x, label %..critedge_crit_edge, !llvm.loop !95

..critedge_crit_edge:                             ; preds = %bb.y
  %.pre = load i64, ptr %i.f, align 8
  br label %.critedge, !llvm.loop !95

.critedgesplit:                                   ; preds = %bb.x
  %.pre173 = load i8, ptr %i.g, align 1
  br label %.critedge

.critedge:                                        ; preds = %.critedgesplit, %..critedge_crit_edge
  %i.bw = phi i8 [ %i.br, %..critedge_crit_edge ], [ %.pre173, %.critedgesplit ]
  %i.bx = phi i64 [ %.pre, %..critedge_crit_edge ], [ %i.bp, %.critedgesplit ]
  %.lcssa = phi i1 [ true, %..critedge_crit_edge ], [ %i.bo, %.critedgesplit ]
  %i.by = icmp ne i64 %i.bx, 0
  %or.cond5 = select i1 %.lcssa, i1 %i.by, i1 false
  %.not132 = icmp sgt i8 %i.bw, -1
  %spec.select = select i1 %.not132, i32 0, i32 8
  %.0102 = select i1 %or.cond5, i32 %spec.select, i32 %i.bn ; 2 uses
  %.not133 = icmp eq i32 %.0102, 0
  br i1 %.not133, label %bb.z, label %mqstate.exit145

bb.z:                                             ; preds = %.critedge
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 3 uses
  %i.ca = load i64, ptr %i.bm, align 8, !tbaa !97
  %i.cb = call fastcc zeroext i1 @mqtt_decode_len(ptr noundef %i.bz, ptr noundef %i.bl, i64 noundef %i.ca)
  br i1 %i.cb, label %mqtt_ping.exit.thread155, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i64 0, ptr %i.bm, align 8, !tbaa !97
  %i.cc = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 3 uses
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !99  ; 3 uses
  %i.ce = zext i8 %i.cd to i32
  %i.cf = and i8 %i.cd, -16                       ; 2 uses
  %i.cg = icmp eq i8 %i.cf, -32
  switch i8 %i.cf, label %bb.ad [
    i8 -32, label %bb.ab
    i8 -48, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  %i.ch = and i8 %i.cd, 15
  %i.ci = load i64, ptr %i.bz, align 8, !tbaa !86 ; 2 uses
  %i.cj = icmp ne i64 %i.ci, 0
  %i.ck = icmp ne i8 %i.ch, 0
  %or.cond11 = or i1 %i.ck, %i.cj
  br i1 %or.cond11, label %bb.ac, label %.thread164

bb.ac:                                            ; preds = %bb.ab
  %i.cl = select i1 %i.cg, ptr @.str.10, ptr @.str.11
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.cl, i64 noundef %i.ci, i32 noundef %i.ce) #6
  br label %mqtt_ping.exit.thread155

bb.ad:                                            ; preds = %bb.aa
  %.pr = load i64, ptr %i.bz, align 8, !tbaa !86
  %.not134 = icmp eq i64 %.pr, 0
  br i1 %.not134, label %.thread164, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cm = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !84 ; 2 uses
  %.val141 = load ptr, ptr %i.i, align 8, !tbaa !81
  %i.co = call ptr @Curl_conn_meta_get(ptr noundef %.val141, ptr noundef nonnull @.str) #6 ; 3 uses
  %.not.i144 = icmp eq ptr %i.co, null
  br i1 %.not.i144, label %mqtt_ping.exit.thread155, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !83
  %i.cp = icmp eq i32 %i.cn, 0
  br i1 %i.cp, label %bb.ag, label %mqtt_ping.exit.thread155

bb.ag:                                            ; preds = %bb.af
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  store i32 7, ptr %i.cq, align 4, !tbaa !84
  br label %mqtt_ping.exit.thread155

.thread164:                                       ; preds = %bb.ab, %bb.ad
  %.val140 = load ptr, ptr %i.i, align 8, !tbaa !81
  %i.cr = call ptr @Curl_conn_meta_get(ptr noundef %.val140, ptr noundef nonnull @.str) #6 ; 3 uses
  %.not.i146 = icmp eq ptr %i.cr, null
  br i1 %.not.i146, label %mqstate.exit147, label %bb.ah

bb.ah:                                            ; preds = %.thread164
  store i32 0, ptr %i.cr, align 4, !tbaa !83
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  store i32 0, ptr %i.cs, align 4, !tbaa !84
  br label %mqstate.exit147

mqstate.exit147:                                  ; preds = %.thread164, %bb.ah
  %i.ct = load i8, ptr %i.cc, align 8, !tbaa !99  ; 2 uses
  %i.cu = icmp eq i8 %i.ct, -32
  br i1 %i.cu, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %mqstate.exit147
  %i.cv = load i64, ptr %i.au, align 1
  %i.cw = and i64 %i.cv, 536870912
  %.not135 = icmp eq i64 %i.cw, 0
  br i1 %.not135, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !78 ; 2 uses
  %.not136 = icmp eq ptr %i.cy, null
  br i1 %.not136, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !80
  %i.db = icmp sgt i32 %i.da, 0
  br i1 %i.db, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak, %bb.aj
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.12) #6
  %.pr166.pre = load i8, ptr %i.cc, align 8, !tbaa !99
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.ai
  %.pr166 = phi i8 [ %.pr166.pre, %bb.al ], [ -32, %bb.ak ], [ -32, %bb.ai ]
  store i8 1, ptr %1, align 1, !tbaa !11
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %mqstate.exit147
  %i.dc = phi i8 [ %.pr166, %bb.am ], [ %i.ct, %mqstate.exit147 ]
  %i.dd = icmp eq i8 %i.dc, -48
  br i1 %i.dd, label %bb.ao, label %mqtt_ping.exit.thread155

bb.ao:                                            ; preds = %bb.an
  %i.de = load i64, ptr %i.au, align 1
  %i.df = and i64 %i.de, 536870912
  %.not137 = icmp eq i64 %i.df, 0
  br i1 %.not137, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !78 ; 2 uses
  %.not138 = icmp eq ptr %i.dh, null
  br i1 %.not138, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !80
  %i.dk = icmp sgt i32 %i.dj, 0
  br i1 %i.dk, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #6
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ao
  %i.dl = getelementptr inbounds nuw i8, ptr %i.h, i64 105 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = and i8 %i.dm, -2
  store i8 %i.dn, ptr %i.dl, align 1
  %.val139 = load ptr, ptr %i.i, align 8, !tbaa !81
  %i.do = call ptr @Curl_conn_meta_get(ptr noundef %.val139, ptr noundef nonnull @.str) #6 ; 3 uses
  %.not.i148 = icmp eq ptr %i.do, null
  br i1 %.not.i148, label %mqtt_ping.exit.thread155, label %bb.at

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.do, align 4, !tbaa !83
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  store i32 5, ptr %i.dp, align 4, !tbaa !84
  br label %mqtt_ping.exit.thread155

bb.au:                                            ; preds = %bb.r
  %i.dq = call fastcc i32 @mqtt_verify_connack(ptr noundef nonnull %0) ; 2 uses
  %.not126 = icmp eq i32 %i.dq, 0
  br i1 %.not126, label %bb.av, label %mqstate.exit145

bb.av:                                            ; preds = %bb.au
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 4627
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !100
  %i.dt = icmp eq i8 %i.ds, 1
  br i1 %i.dt, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.du = call fastcc i32 @mqtt_publish(ptr noundef nonnull %0) ; 2 uses
  %.not128 = icmp eq i32 %i.du, 0
  br i1 %.not128, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.dv = call fastcc i32 @mqtt_send(ptr noundef nonnull %0, ptr noundef nonnull @.str.20, i64 noundef 2)
  store i8 1, ptr %1, align 1, !tbaa !11
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.2 = phi i32 [ %i.du, %bb.aw ], [ %i.dv, %bb.ax ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 0, ptr %i.dw, align 4, !tbaa !84
  br label %mqstate.exit145

bb.az:                                            ; preds = %bb.av
  %i.dx = call fastcc i32 @mqtt_subscribe(ptr noundef nonnull %0) ; 2 uses
  %.not127 = icmp eq i32 %i.dx, 0
  br i1 %.not127, label %bb.ba, label %mqstate.exit145

bb.ba:                                            ; preds = %bb.az
  %.val = load ptr, ptr %i.i, align 8, !tbaa !81
  %i.dy = call ptr @Curl_conn_meta_get(ptr noundef %.val, ptr noundef nonnull @.str) #6 ; 3 uses
  %.not.i150 = icmp eq ptr %i.dy, null
  br i1 %.not.i150, label %mqtt_ping.exit.thread155, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.dy, align 4, !tbaa !83
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  store i32 3, ptr %i.dz, align 4, !tbaa !84
  br label %mqtt_ping.exit.thread155

bb.bc:                                            ; preds = %bb.r, %bb.r, %bb.r
  %i.ea = load ptr, ptr %i.i, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.eb = call ptr @Curl_conn_meta_get(ptr noundef %i.ea, ptr noundef nonnull @.str) #6 ; 2 uses
  %i.ec = call ptr @Curl_meta_get(ptr noundef nonnull %0, ptr noundef nonnull @.str.1) #6 ; 7 uses
  %i.ed = icmp ne ptr %i.eb, null
  %i.ee = icmp ne ptr %i.ec, null
  %or.cond.i152 = select i1 %i.ed, i1 %i.ee, i1 false
  br i1 %or.cond.i152, label %bb.bd, label %mqtt_read_publish.exit

bb.bd:                                            ; preds = %bb.bc
end_hunk_0
begin_hunk_1_@mqtt_publish:bb.a
bb.e:                                             ; preds = %bb.d, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4232
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !89   ; 2 uses
  %i.m = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #7
  %i.n = icmp ugt i64 %i.m, 1
  br i1 %i.n, label %bb.f, label %.sink.split.i

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.p = call i32 @Curl_urldecode(ptr noundef nonnull %i.o, i64 noundef 0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 2) #6 ; 2 uses
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.g, label %mqtt_get_topic.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.q = load i64, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.r = icmp ugt i64 %i.q, 65535
  br i1 %i.r, label %.sink.split.i, label %mqtt_get_topic.exit

.sink.split.i:                                    ; preds = %bb.g, %bb.e
  %.str.18.sink.i = phi ptr [ @.str.18, %bb.g ], [ @.str.19, %bb.e ]
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull %.str.18.sink.i) #6
  br label %mqtt_get_topic.exit.thread

mqtt_get_topic.exit:                              ; preds = %bb.g
  %i.s = load i64, ptr %i.a, align 8, !tbaa !13
  %i.t = add i64 %i.s, 2
  %i.u = add i64 %i.t, %i.q                       ; 8 uses
  %.not14.i = icmp eq i64 %i.u, 0
  br i1 %.not14.i, label %mqtt_encode_len.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %mqtt_get_topic.exit
  %i.v = trunc i64 %i.u to i8
  %i.w = and i8 %i.v, 127
  %i.x = lshr i64 %i.u, 7                         ; 2 uses
  %.not.i45.not = icmp eq i64 %i.x, 0             ; 2 uses
  %masksel.i = select i1 %.not.i45.not, i8 0, i8 -128
  %.0.i46 = or disjoint i8 %masksel.i, %i.w
  store i8 %.0.i46, ptr %.sroa.0, align 4, !tbaa !77
  br i1 %.not.i45.not, label %mqtt_encode_len.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.y = trunc i64 %i.x to i8
  %i.z = and i8 %i.y, 127
  %i.aa = lshr i64 %i.u, 14                       ; 2 uses
  %.not.i45.1.not = icmp eq i64 %i.aa, 0          ; 2 uses
  %masksel.i.1 = select i1 %.not.i45.1.not, i8 0, i8 -128
  %.0.i46.1 = or disjoint i8 %masksel.i.1, %i.z
  %.sroa.0.1..sroa_idx54 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  store i8 %.0.i46.1, ptr %.sroa.0.1..sroa_idx54, align 1, !tbaa !77
  br i1 %.not.i45.1.not, label %mqtt_encode_len.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.ab = trunc i64 %i.aa to i8
  %i.ac = and i8 %i.ab, 127
  %i.ad = lshr i64 %i.u, 21                       ; 2 uses
  %.not.i45.2.not = icmp eq i64 %i.ad, 0          ; 2 uses
  %masksel.i.2 = select i1 %.not.i45.2.not, i8 0, i8 -128
  %.0.i46.2 = or disjoint i8 %masksel.i.2, %i.ac
  %.sroa.0.2..sroa_idx55 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  store i8 %.0.i46.2, ptr %.sroa.0.2..sroa_idx55, align 2, !tbaa !77
  br i1 %.not.i45.2.not, label %mqtt_encode_len.exit, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.ae = trunc i64 %i.ad to i8
  %i.af = and i8 %i.ae, 127
  %.not.i45.3.not = icmp ult i64 %i.u, 268435456
  %masksel.i.3 = select i1 %.not.i45.3.not, i8 0, i8 -128
  %.0.i46.3 = or disjoint i8 %masksel.i.3, %i.af
  %.sroa.0.3..sroa_idx56 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 3
  store i8 %.0.i46.3, ptr %.sroa.0.3..sroa_idx56, align 1, !tbaa !77
  br label %mqtt_encode_len.exit

mqtt_encode_len.exit:                             ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %mqtt_get_topic.exit
  %.010.lcssa.i = phi i64 [ 0, %mqtt_get_topic.exit ], [ 1, %.lr.ph.i ], [ 2, %.lr.ph.i.1 ], [ 3, %.lr.ph.i.2 ], [ 4, %.lr.ph.i.3 ] ; 5 uses
  %i.ag = sub nuw nsw i64 268435454, %.010.lcssa.i
  %i.ah = icmp ugt i64 %i.u, %i.ag
  br i1 %i.ah, label %mqtt_get_topic.exit.thread, label %bb.h

bb.h:                                             ; preds = %mqtt_encode_len.exit
  %i.ai = load ptr, ptr @Curl_cmalloc, align 8, !tbaa !9
  %i.aj = add nuw nsw i64 %i.u, 1
  %i.ak = add nuw nsw i64 %i.aj, %.010.lcssa.i
  %i.al = call ptr %i.ai(i64 noundef %i.ak) #6    ; 8 uses
  %.not44 = icmp eq ptr %i.al, null
  br i1 %.not44, label %mqtt_get_topic.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 48, ptr %i.al, align 1, !tbaa !77
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull align 4 %.sroa.0, i64 %.010.lcssa.i, i1 false)
  %i.an = load i64, ptr %i.c, align 8, !tbaa !13
  %i.ao = lshr i64 %i.an, 8
  %i.ap = trunc i64 %i.ao to i8
  %i.aq = getelementptr i8, ptr %i.al, i64 %.010.lcssa.i ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 1
  store i8 %i.ap, ptr %i.ar, align 1, !tbaa !77
  %i.as = load i64, ptr %i.c, align 8, !tbaa !13
  %i.at = trunc i64 %i.as to i8
  %i.au = add nuw nsw i64 %.010.lcssa.i, 3        ; 2 uses
  %i.av = getelementptr i8, ptr %i.aq, i64 2
  store i8 %i.at, ptr %i.av, align 1, !tbaa !77
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.au
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !88
  %i.ay = load i64, ptr %i.c, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aw, ptr align 1 %i.ax, i64 %i.ay, i1 false)
  %i.az = load i64, ptr %i.c, align 8, !tbaa !13
  %i.ba = add i64 %i.az, %i.au                    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ba
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bb, ptr nonnull align 1 %i.e, i64 %i.bc, i1 false)
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !13
  %i.be = add i64 %i.bd, %i.ba
  %i.bf = call fastcc i32 @mqtt_send(ptr noundef nonnull %0, ptr noundef nonnull %i.al, i64 noundef %i.be)
  br label %mqtt_get_topic.exit.thread

mqtt_get_topic.exit.thread:                       ; preds = %.sink.split.i, %bb.f, %bb.h, %mqtt_encode_len.exit, %bb.i
  %.037 = phi i32 [ 27, %bb.h ], [ 100, %mqtt_encode_len.exit ], [ %i.bf, %bb.i ], [ 3, %.sink.split.i ], [ %i.p, %bb.f ]
  %.0 = phi ptr [ null, %bb.h ], [ null, %mqtt_encode_len.exit ], [ %i.al, %bb.i ], [ null, %.sink.split.i ], [ null, %bb.f ]
  %i.bg = load ptr, ptr @Curl_cfree, align 8, !tbaa !9
  call void %i.bg(ptr noundef %.0) #6
  %i.bh = load ptr, ptr @Curl_cfree, align 8, !tbaa !9
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !88
  call void %i.bh(ptr noundef %i.bi) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.a, %mqtt_get_topic.exit.thread
  %.038 = phi i32 [ %.037, %mqtt_get_topic.exit.thread ], [ 43, %bb.a ], [ 43, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.038
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mqtt_subscribe(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %.sroa.0 = alloca i32, align 4                  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr null, ptr %i.a, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.e = tail call ptr @Curl_conn_meta_get(ptr noundef %i.d, ptr noundef nonnull @.str) #6 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4232
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !89   ; 2 uses
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #7
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %bb.c, label %.sink.split.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.k = call i32 @Curl_urldecode(ptr noundef nonnull %i.j, i64 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 2) #6 ; 2 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.d, label %mqtt_get_topic.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %i.m = icmp ugt i64 %i.l, 65535
  br i1 %i.m, label %.sink.split.i, label %.lr.ph.i.preheader

.sink.split.i:                                    ; preds = %bb.d, %bb.b
  %.str.18.sink.i = phi ptr [ @.str.18, %bb.d ], [ @.str.19, %bb.b ]
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull %.str.18.sink.i) #6
  br label %mqtt_get_topic.exit.thread

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !87
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !87
  %i.q = add nuw nsw i64 %i.l, 5                  ; 4 uses
  %i.r = trunc i64 %i.q to i8
  %i.s = and i8 %i.r, 127
  %i.t = lshr i64 %i.q, 7                         ; 2 uses
  %.not.i40.not = icmp eq i64 %i.t, 0             ; 2 uses
  %masksel.i = select i1 %.not.i40.not, i8 0, i8 -128
  %.0.i41 = or disjoint i8 %masksel.i, %i.s
  store i8 %.0.i41, ptr %.sroa.0, align 4, !tbaa !77
  br i1 %.not.i40.not, label %mqtt_encode_len.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.preheader
  %i.u = trunc i64 %i.t to i8
  %i.v = and i8 %i.u, 127
  %i.w = lshr i64 %i.q, 14                        ; 2 uses
  %.not.i40.1.not = icmp eq i64 %i.w, 0           ; 2 uses
  %masksel.i.1 = select i1 %.not.i40.1.not, i8 0, i8 -128
  %.0.i41.1 = or disjoint i8 %masksel.i.1, %i.v
  %.sroa.0.1..sroa_idx49 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  store i8 %.0.i41.1, ptr %.sroa.0.1..sroa_idx49, align 1, !tbaa !77
  br i1 %.not.i40.1.not, label %mqtt_encode_len.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.x = trunc nuw i64 %i.w to i8
  %.sroa.0.2..sroa_idx50 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  store i8 %i.x, ptr %.sroa.0.2..sroa_idx50, align 2, !tbaa !77
  br label %mqtt_encode_len.exit

mqtt_encode_len.exit:                             ; preds = %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.i.preheader
  %indvars.iv.i.lcssa = phi i64 [ 2, %.lr.ph.i.preheader ], [ 3, %.lr.ph.i.1 ], [ 4, %.lr.ph.i.2 ] ; 2 uses
  %indvars.iv.next.i.lcssa = phi i64 [ 1, %.lr.ph.i.preheader ], [ 2, %.lr.ph.i.1 ], [ 3, %.lr.ph.i.2 ] ; 2 uses
  %i.y = add nuw nsw i64 %indvars.iv.i.lcssa, %i.q ; 2 uses
  %i.z = load ptr, ptr @Curl_cmalloc, align 8, !tbaa !9
  %i.aa = call ptr %i.z(i64 noundef %i.y) #6      ; 7 uses
  %.not39 = icmp eq ptr %i.aa, null
  br i1 %.not39, label %mqtt_get_topic.exit.thread, label %bb.e

bb.e:                                             ; preds = %mqtt_encode_len.exit
  store i8 -126, ptr %i.aa, align 1, !tbaa !77
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ab, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0, i64 %indvars.iv.next.i.lcssa, i1 false)
  %i.ac = load i32, ptr %i.n, align 4, !tbaa !87
  %i.ad = lshr i32 %i.ac, 8
  %i.ae = trunc i32 %i.ad to i8
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv.i.lcssa
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !77
  %i.ag = load i32, ptr %i.n, align 4, !tbaa !87
  %i.ah = trunc i32 %i.ag to i8
  %i.ai = getelementptr i8, ptr %i.aa, i64 %indvars.iv.next.i.lcssa ; 4 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 2
  store i8 %i.ah, ptr %i.aj, align 1, !tbaa !77
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !13
  %i.al = lshr i64 %i.ak, 8
  %i.am = trunc i64 %i.al to i8
  %i.an = getelementptr i8, ptr %i.ai, i64 3
  store i8 %i.am, ptr %i.an, align 1, !tbaa !77
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !13
  %i.ap = trunc i64 %i.ao to i8
  %i.aq = getelementptr i8, ptr %i.ai, i64 4
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !77
  %i.ar = getelementptr i8, ptr %i.ai, i64 5      ; 2 uses
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !88
  %i.at = load i64, ptr %i.b, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr align 1 %i.as, i64 %i.at, i1 false)
  %i.au = load i64, ptr %i.b, align 8, !tbaa !13
  %i.av = getelementptr i8, ptr %i.ar, i64 %i.au
  store i8 0, ptr %i.av, align 1, !tbaa !77
  %i.aw = call fastcc i32 @mqtt_send(ptr noundef nonnull %0, ptr noundef nonnull %i.aa, i64 noundef %i.y)
  br label %mqtt_get_topic.exit.thread

mqtt_get_topic.exit.thread:                       ; preds = %.sink.split.i, %bb.c, %mqtt_encode_len.exit, %bb.e
  %.033 = phi i32 [ 27, %mqtt_encode_len.exit ], [ %i.aw, %bb.e ], [ 3, %.sink.split.i ], [ %i.k, %bb.c ]
  %.0 = phi ptr [ null, %mqtt_encode_len.exit ], [ %i.aa, %bb.e ], [ null, %.sink.split.i ], [ null, %bb.c ]
  %i.ax = load ptr, ptr @Curl_cfree, align 8, !tbaa !9
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !88
  call void %i.ax(ptr noundef %i.ay) #6
  %i.az = load ptr, ptr @Curl_cfree, align 8, !tbaa !9
  call void %i.az(ptr noundef %.0) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %mqtt_get_topic.exit.thread
  %.034 = phi i32 [ %.033, %mqtt_get_topic.exit.thread ], [ 2, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.034
}

declare i64 @curlx_ptimediff_ms(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @mqtt_recv_consume(ptr noundef %0, i64 noundef range(i64 2, 4) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @Curl_meta_get(ptr noundef %0, ptr noundef nonnull @.str.1) #6 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = tail call i64 @curlx_dyn_len(ptr noundef nonnull %i.b) #6 ; 2 uses
  %.not10 = icmp ugt i64 %i.c, %1
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @curlx_dyn_reset(ptr noundef nonnull %i.b) #6
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = sub nuw i64 %i.c, %1
  %i.e = tail call i32 @curlx_dyn_tail(ptr noundef nonnull %i.b, i64 noundef %i.d) #6 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  ret void
}

declare zeroext i1 @curlx_sotouz_fits(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Curl_urldecode(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Curl_pgrsSetDownloadSize(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @Curl_client_write(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @Curl_pollset_change(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"_Bool", !4, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"long", !4, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!5, !5, i64 0}
!15 = !{i64 0, i64 8, !13, i64 8, i64 4, !14}
!16 = !{!"p1 _ZTS11connectdata", !8, i64 0}
!17 = !{!"p1 _ZTS10Curl_llist", !8, i64 0}
!18 = !{!"p1 _ZTS15Curl_llist_node", !8, i64 0}
!19 = !{!"Curl_llist_node", !17, i64 0, !8, i64 8, !18, i64 16, !18, i64 24}
!20 = !{!"CURLMsg", !5, i64 0, !8, i64 8, !4, i64 16}
!21 = !{!"Curl_message", !19, i64 0, !20, i64 32}
!22 = !{!"p1 _ZTS10Curl_multi", !8, i64 0}
!23 = !{!"p1 _ZTS10Curl_share", !8, i64 0}
!24 = !{!"any p2 pointer", !8, i64 0}
!25 = !{!"p2 _ZTS17Curl_hash_element", !24, i64 0}
!26 = !{!"Curl_hash", !25, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !12, i64 32, !12, i64 40}
!27 = !{!"p1 _ZTS8PslCache", !8, i64 0}
!28 = !{!"curltime", !12, i64 0, !5, i64 8}
!29 = !{!"p1 _ZTS12Curl_cwriter", !8, i64 0}
!30 = !{!"p1 _ZTS12Curl_creader", !8, i64 0}
!31 = !{!"p1 _ZTS9buf_chunk", !8, i64 0}
!32 = !{!"p1 _ZTS9bufc_pool", !8, i64 0}
!33 = !{!"bufq", !31, i64 0, !31, i64 8, !31, i64 16, !32, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !5, i64 56}
!34 = !{!"p1 omnipotent char", !8, i64 0}
!35 = !{!"SingleRequest", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !28, i64 40, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !4, i64 76, !4, i64 77, !5, i64 80, !29, i64 88, !30, i64 96, !33, i64 104, !12, i64 168, !12, i64 176, !34, i64 184, !34, i64 192, !4, i64 200, !34, i64 208, !34, i64 216, !34, i64 224, !4, i64 232, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 235, !5, i64 235, !5, i64 235, !5, i64 235, !5, i64 235, !5, i64 235}
!36 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!37 = !{!"p1 _ZTS10curl_slist", !8, i64 0}
!38 = !{!"p1 _ZTS13curl_httppost", !8, i64 0}
!39 = !{!"p1 _ZTS13curl_mimepart", !8, i64 0}
!40 = !{!"p1 _ZTS9curl_blob", !8, i64 0}
!41 = !{!"ssl_primary_config", !34, i64 0, !34, i64 8, !34, i64 16, !34, i64 24, !34, i64 32, !34, i64 40, !34, i64 48, !34, i64 56, !34, i64 64, !34, i64 72, !34, i64 80, !34, i64 88, !34, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !40, i64 128, !34, i64 136, !34, i64 144, !34, i64 152, !5, i64 160, !4, i64 164, !4, i64 165, !5, i64 166, !5, i64 166, !5, i64 166, !5, i64 166, !5, i64 166}
!42 = !{!"ssl_config_data", !41, i64 0, !12, i64 168, !8, i64 176, !8, i64 184, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 193, !5, i64 193, !5, i64 193}
!43 = !{!"short", !4, i64 0}
!44 = !{!"ssl_general_config", !5, i64 0}
!45 = !{!"p1 _ZTS8Curl_URL", !8, i64 0}
!46 = !{!"UserDefined", !36, i64 0, !8, i64 8, !34, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !5, i64 48, !5, i64 52, !8, i64 56, !8, i64 64, !12, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288, !12, i64 296, !12, i64 304, !12, i64 312, !37, i64 320, !38, i64 328, !39, i64 336, !37, i64 344, !37, i64 352, !37, i64 360, !12, i64 368, !42, i64 376, !42, i64 576, !37, i64 776, !43, i64 784, !4, i64 786, !4, i64 787, !44, i64 788, !12, i64 792, !5, i64 800, !5, i64 804, !8, i64 808, !37, i64 816, !12, i64 824, !12, i64 832, !4, i64 840, !4, i64 841, !4, i64 842, !37, i64 848, !37, i64 856, !37, i64 864, !5, i64 872, !4, i64 880, !4, i64 1480, !5, i64 1544, !12, i64 1552, !12, i64 1560, !8, i64 1568, !5, i64 1576, !8, i64 1584, !8, i64 1592, !8, i64 1600, !8, i64 1608, !8, i64 1616, !12, i64 1624, !12, i64 1632, !12, i64 1640, !12, i64 1648, !12, i64 1656, !5, i64 1664, !5, i64 1668, !5, i64 1672, !8, i64 1680, !8, i64 1688, !12, i64 1696, !45, i64 1704, !8, i64 1712, !8, i64 1720, !37, i64 1728, !5, i64 1736, !43, i64 1740, !43, i64 1742, !43, i64 1744, !43, i64 1746, !43, i64 1748, !43, i64 1750, !43, i64 1752, !4, i64 1754, !4, i64 1755, !4, i64 1756, !4, i64 1757, !4, i64 1758, !4, i64 1759, !4, i64 1760, !4, i64 1761, !4, i64 1762, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1770, !5, i64 1770, !5, i64 1770}
!47 = !{!"p1 _ZTS10CookieInfo", !8, i64 0}
!48 = !{!"p1 _ZTS4hsts", !8, i64 0}
!49 = !{!"p1 _ZTS10altsvcinfo", !8, i64 0}
!50 = !{!"Curl_rlimit", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !28, i64 56, !5, i64 72}
!51 = !{!"pgrs_dir", !12, i64 0, !12, i64 8, !12, i64 16, !50, i64 24}
!52 = !{!"Progress", !28, i64 0, !12, i64 16, !51, i64 24, !51, i64 128, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288, !12, i64 296, !12, i64 304, !12, i64 312, !12, i64 320, !28, i64 328, !28, i64 344, !28, i64 360, !28, i64 376, !28, i64 392, !4, i64 408, !4, i64 456, !5, i64 552, !5, i64 556, !5, i64 556, !5, i64 556, !5, i64 556, !5, i64 556, !5, i64 556}
!53 = !{!"dynbuf", !34, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!54 = !{!"p1 _ZTS9Curl_peer", !8, i64 0}
!55 = !{!"p1 _ZTS10Curl_creds", !8, i64 0}
!56 = !{!"digestdata", !55, i64 0, !54, i64 8, !34, i64 16, !34, i64 24, !34, i64 32, !34, i64 40, !34, i64 48, !34, i64 56, !5, i64 64, !4, i64 68, !5, i64 69, !5, i64 69}
!57 = !{!"auth", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 12}
!58 = !{!"p1 _ZTS17Curl_resolv_async", !8, i64 0}
!59 = !{!"p1 _ZTS9Curl_tree", !8, i64 0}
!60 = !{!"Curl_tree", !59, i64 0, !59, i64 8, !59, i64 16, !59, i64 24, !28, i64 32, !8, i64 48}
!61 = !{!"Curl_llist", !18, i64 0, !18, i64 8, !8, i64 16, !12, i64 24}
!62 = !{!"urlpieces", !34, i64 0, !34, i64 8, !34, i64 16, !34, i64 24, !34, i64 32, !34, i64 40, !34, i64 48, !34, i64 56}
!63 = !{!"bufref", !8, i64 0, !34, i64 8, !12, i64 16}
!64 = !{!"p1 _ZTS17Curl_header_store", !8, i64 0}
!65 = !{!"p1 _ZTS13curl_trc_feat", !8, i64 0}
!66 = !{!"store_netrc", !53, i64 0, !34, i64 32, !5, i64 40}
!67 = !{!"dynamically_allocated_data", !34, i64 0, !34, i64 8, !34, i64 16, !34, i64 24, !34, i64 32, !34, i64 40}
!68 = !{!"http_negotiation", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3, !5, i64 4, !5, i64 4, !5, i64 4, !5, i64 4}
!69 = !{!"UrlState", !28, i64 0, !12, i64 16, !12, i64 24, !53, i64 32, !37, i64 64, !12, i64 72, !54, i64 80, !54, i64 88, !5, i64 96, !5, i64 100, !8, i64 104, !34, i64 112, !56, i64 120, !56, i64 192, !57, i64 264, !57, i64 280, !58, i64 296, !8, i64 304, !8, i64 312, !8, i64 320, !8, i64 328, !34, i64 336, !5, i64 344, !28, i64 352, !60, i64 368, !61, i64 424, !4, i64 456, !34, i64 1296, !34, i64 1304, !12, i64 1312, !5, i64 1320, !5, i64 1324, !5, i64 1328, !4, i64 1332, !12, i64 1368, !8, i64 1376, !8, i64 1384, !45, i64 1392, !62, i64 1400, !63, i64 1464, !63, i64 1488, !37, i64 1512, !39, i64 1520, !39, i64 1528, !12, i64 1536, !53, i64 1544, !61, i64 1576, !4, i64 1608, !64, i64 1704, !37, i64 1712, !65, i64 1720, !66, i64 1728, !55, i64 1776, !67, i64 1784, !68, i64 1832, !43, i64 1840, !4, i64 1842, !4, i64 1843, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1846, !5, i64 1846, !5, i64 1846, !5, i64 1846, !5, i64 1846, !5, i64 1846, !5, i64 1846}
!70 = !{!"p1 _ZTS12WildcardData", !8, i64 0}
!71 = !{!"ip_quadruple", !4, i64 0, !4, i64 46, !43, i64 92, !43, i64 94, !4, i64 96}
!72 = !{!"p2 _ZTS10curl_slist", !24, i64 0}
!73 = !{!"curl_certinfo", !5, i64 0, !72, i64 8}
!74 = !{!"PureInfo", !5, i64 0, !5, i64 4, !5, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !34, i64 56, !34, i64 64, !12, i64 72, !5, i64 80, !71, i64 84, !34, i64 184, !5, i64 192, !73, i64 200, !5, i64 216, !5, i64 220, !5, i64 220}
!75 = !{!"curl_tlssessioninfo", !5, i64 0, !8, i64 8}
!76 = !{!"Curl_easy", !5, i64 0, !12, i64 8, !5, i64 16, !5, i64 20, !8, i64 24, !16, i64 32, !5, i64 40, !5, i64 44, !21, i64 48, !22, i64 104, !22, i64 112, !23, i64 120, !26, i64 128, !27, i64 176, !35, i64 184, !46, i64 424, !47, i64 2200, !48, i64 2208, !49, i64 2216, !52, i64 2224, !69, i64 2784, !70, i64 4632, !74, i64 4640, !75, i64 4864}
!77 = !{!4, !4, i64 0}
!78 = !{!76, !65, i64 4504}
!79 = !{!"curl_trc_feat", !34, i64 0, !5, i64 8}
!80 = !{!79, !5, i64 8}
!81 = !{!76, !16, i64 32}
end_hunk_1
