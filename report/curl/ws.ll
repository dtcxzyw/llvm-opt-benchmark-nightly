Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/ws?download=true
inline.NumInlined: 30
inline.NumDeleted: 14
begin_hunk_0_@ws_dec_pass:bb.a
bb.n:                                             ; preds = %bb.m
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.65) #7
  br label %.loopexit87.i

bb.o:                                             ; preds = %bb.f
  %i.ac = and i32 %i.x, 4
  %.not23.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not23.i.i, label %ws_frame_firstbyte2flags.exit.thread80.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.66) #7
  br label %.loopexit87.i

bb.q:                                             ; preds = %bb.f
  %i.ad = and i32 %i.x, 4
  %.not.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i, label %ws_frame_firstbyte2flags.exit.thread80.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.66) #7
  br label %.loopexit87.i

bb.s:                                             ; preds = %bb.f
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.67) #7
  br label %.loopexit87.i

bb.t:                                             ; preds = %bb.f
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.68) #7
  br label %.loopexit87.i

bb.u:                                             ; preds = %bb.f
  br label %ws_frame_firstbyte2flags.exit.thread80.i

bb.v:                                             ; preds = %bb.f
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.69) #7
  br label %.loopexit87.i

bb.w:                                             ; preds = %bb.f
  br label %ws_frame_firstbyte2flags.exit.thread80.i

bb.x:                                             ; preds = %bb.f
  %i.ae = zext i8 %i.w to i32                     ; 3 uses
  %i.af = and i32 %i.ae, 112
  %.not28.i.i = icmp eq i32 %i.af, 0
  br i1 %.not28.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.70, i32 noundef %i.ae) #7
  br label %.loopexit87.i

bb.z:                                             ; preds = %bb.x
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.71, i32 noundef %i.ae) #7
  br label %.loopexit87.i

ws_frame_firstbyte2flags.exit.thread80.i:         ; preds = %bb.w, %bb.u, %bb.q, %bb.o, %bb.m, %bb.k, %bb.g, %bb.f
  %.0.i.ph.i = phi i32 [ 5, %bb.k ], [ 6, %bb.o ], [ %i.x, %bb.g ], [ 2, %bb.q ], [ 1, %bb.m ], [ 16, %bb.u ], [ 64, %bb.w ], [ 8, %bb.f ] ; 2 uses
  store i32 %.0.i.ph.i, ptr %i.p, align 4, !tbaa !140
  br label %bb.aa

ws_frame_firstbyte2flags.exit.i:                  ; preds = %bb.i
  %i.ag = and i32 %i.x, -5                        ; 3 uses
  store i32 %i.ag, ptr %i.p, align 4, !tbaa !140
  %.not75.i = icmp eq i32 %i.ag, 0
  br i1 %.not75.i, label %.loopexit87.i, label %bb.aa

.loopexit87.i:                                    ; preds = %ws_frame_firstbyte2flags.exit.i, %bb.z, %bb.y, %bb.v, %bb.t, %bb.s, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  br label %bb.ax

bb.aa:                                            ; preds = %ws_frame_firstbyte2flags.exit.i, %ws_frame_firstbyte2flags.exit.thread80.i
  %.0.i83.i = phi i32 [ %.0.i.ph.i, %ws_frame_firstbyte2flags.exit.thread80.i ], [ %i.ag, %ws_frame_firstbyte2flags.exit.i ] ; 2 uses
  %i.ah = and i32 %.0.i83.i, 3
  %.not76.i = icmp eq i32 %i.ah, 0
  br i1 %.not76.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 %.0.i83.i, ptr %i.s, align 8, !tbaa !139
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  store i32 1, ptr %i.n, align 4, !tbaa !109
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.ap, %bb.an, %bb.am, %bb.ac
  %i.ai = call zeroext i1 @Curl_bufq_peek(ptr noundef %2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #7
  br i1 %i.ai, label %bb.e, label %ws_dec_read_head.exit.thread46, !llvm.loop !135

bb.ad:                                            ; preds = %bb.e
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !110
  store i8 %i.ak, ptr %i.o, align 1, !tbaa !110
  call void @Curl_bufq_skip(ptr noundef %2, i64 noundef 1) #7
  store i32 2, ptr %i.n, align 4, !tbaa !109
  %i.al = load i8, ptr %i.o, align 1, !tbaa !110  ; 4 uses
  %.not.i = icmp sgt i8 %i.al, -1
  br i1 %.not.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.57) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  br label %bb.ax

bb.af:                                            ; preds = %bb.ad
  %i.am = load i32, ptr %i.p, align 4, !tbaa !140 ; 3 uses
  %i.an = and i32 %i.am, 16
  %.not72.i = icmp ne i32 %i.an, 0
  %i.ao = icmp samesign ugt i8 %i.al, 125         ; 3 uses
  %or.cond.i = and i1 %i.ao, %.not72.i
  br i1 %or.cond.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.58) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  br label %bb.ax

bb.ah:                                            ; preds = %bb.af
  %i.ap = and i32 %i.am, 64
  %.not73.i = icmp eq i32 %i.ap, 0
  br i1 %.not73.i, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.ao, label %bb.aj, label %.thread85.i

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.59) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  br label %bb.ax

bb.ak:                                            ; preds = %bb.ah
  %i.aq = and i32 %i.am, 8
  %.not74.i = icmp ne i32 %i.aq, 0
  %brmerge.not.i = and i1 %i.ao, %.not74.i
  br i1 %brmerge.not.i, label %bb.al, label %.thread85.i

bb.al:                                            ; preds = %bb.ak
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.60) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  br label %bb.ax

.thread85.i:                                      ; preds = %bb.ak, %bb.ai
  switch i8 %i.al, label %.thread131.i [
    i8 126, label %bb.am
    i8 127, label %bb.an
  ]

bb.am:                                            ; preds = %.thread85.i
  store i32 4, ptr %i.q, align 8, !tbaa !108
  br label %.backedge.i

bb.an:                                            ; preds = %.thread85.i
  store i32 10, ptr %i.q, align 8, !tbaa !108
  br label %.backedge.i

.thread131.i:                                     ; preds = %.thread85.i
  store i32 2, ptr %i.q, align 8, !tbaa !108
  br label %bb.ar

bb.ao:                                            ; preds = %bb.e
  %.pre.i = load i32, ptr %i.q, align 8, !tbaa !108 ; 2 uses
  %i.ar = icmp slt i32 %i.t, %.pre.i
  br i1 %i.ar, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.at = load i8, ptr %i.as, align 1, !tbaa !110
  %i.au = sext i32 %i.t to i64
  %i.av = getelementptr inbounds i8, ptr %i.r, i64 %i.au
  store i8 %i.at, ptr %i.av, align 1, !tbaa !110
  call void @Curl_bufq_skip(ptr noundef %2, i64 noundef 1) #7
  %i.aw = load i32, ptr %i.n, align 4, !tbaa !109
  %i.ax = add nsw i32 %i.aw, 1                    ; 2 uses
  store i32 %i.ax, ptr %i.n, align 4, !tbaa !109
  %i.ay = load i32, ptr %i.q, align 8, !tbaa !108 ; 2 uses
  %i.az = icmp slt i32 %i.ax, %i.ay
  br i1 %i.az, label %.backedge.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.ba = phi i32 [ %.pre.i, %bb.ao ], [ %i.ay, %bb.ap ]
  switch i32 %i.ba, label %bb.aw [
    i32 2, label %._crit_edge
    i32 4, label %bb.as
    i32 10, label %bb.at
  ]

._crit_edge:                                      ; preds = %bb.aq
  %.pre = load i8, ptr %i.o, align 1, !tbaa !110
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge, %.thread131.i
  %i.bb = phi i8 [ %.pre, %._crit_edge ], [ %i.al, %.thread131.i ]
  %i.bc = zext i8 %i.bb to i64
  br label %bb.ay

bb.as:                                            ; preds = %bb.aq
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 26
  %5 = load i8, ptr %i.bd, align 2, !tbaa !110
  %6 = zext i8 %5 to i64
  %7 = shl nuw nsw i64 %6, 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 27
  %9 = load i8, ptr %8, align 1, !tbaa !110
  %i.be = zext i8 %9 to i64
  %10 = or disjoint i64 %7, %i.be
  br label %bb.ay

bb.at:                                            ; preds = %bb.aq
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !110 ; 2 uses
  %i.bh = icmp slt i8 %i.bg, 0
  br i1 %i.bh, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.61) #7
  br label %bb.ax

bb.av:                                            ; preds = %bb.at
  %i.bi = zext nneg i8 %i.bg to i64
  %i.bj = shl nuw nsw i64 %i.bi, 56
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 27
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !110
  %i.bm = zext i8 %i.bl to i64
  %i.bn = shl nuw nsw i64 %i.bm, 48
  %i.bo = or disjoint i64 %i.bn, %i.bj
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bq = load i8, ptr %i.bp, align 4, !tbaa !110
  %i.br = zext i8 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 40
  %i.bt = or disjoint i64 %i.bo, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !110
  %i.bw = zext i8 %i.bv to i64
  %i.bx = shl nuw nsw i64 %i.bw, 32
  %i.by = or disjoint i64 %i.bt, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.ca = load i8, ptr %i.bz, align 2, !tbaa !110
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %i.cb, 24
  %i.cd = or disjoint i64 %i.by, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 31
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !110
  %i.cg = zext i8 %i.cf to i64
  %i.ch = shl nuw nsw i64 %i.cg, 16
  %i.ci = or disjoint i64 %i.cd, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !110
  %i.cl = zext i8 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 8
  %i.cn = or i64 %i.ci, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !110
  %i.cq = zext i8 %i.cp to i64
  %i.cr = or i64 %i.cn, %i.cq
  br label %bb.ay

bb.aw:                                            ; preds = %bb.aq
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.62) #7
  br label %bb.ax

ws_dec_read_head.exit.thread46:                   ; preds = %.backedge.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br label %bb.bp

bb.ax:                                            ; preds = %.loopexit87.i, %bb.ae, %bb.ag, %bb.aj, %bb.al, %bb.aw, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.55, i32 noundef 56) #7
  br label %bb.bp

bb.ay:                                            ; preds = %bb.av, %bb.as, %bb.ar
  %.sink.i = phi i64 [ %i.cr, %bb.av ], [ %10, %bb.as ], [ %i.bc, %bb.ar ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 %.sink.i, ptr %i.cs, align 8, !tbaa !107
  store i32 0, ptr %0, align 8, !tbaa !141
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ct, align 8, !tbaa !111
  call fastcc void @ws_dec_info(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @.str.63)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  store i32 2, ptr %i.i, align 4, !tbaa !138
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !107 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  store i8 0, ptr %i.g, align 1, !tbaa !110
  %i.cw = load i32, ptr %0, align 8, !tbaa !141
  %i.cx = load i32, ptr %i.p, align 4, !tbaa !140
  %i.cy = call i32 %3(ptr noundef nonnull %i.g, i64 noundef 0, i32 noundef %i.cw, i32 noundef %i.cx, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull %i.f) #7, !callees !142 ; 2 uses
  %.not38 = icmp eq i32 %i.cy, 0
  br i1 %.not38, label %bb.ba, label %.critedge

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.i, align 4, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  br label %bb.bp

bb.bb:                                            ; preds = %._crit_edge76, %bb.ay
  %i.cz = phi i64 [ %.pre77, %._crit_edge76 ], [ %i.cu, %bb.ay ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !111
  %i.dd = sub nsw i64 %i.cz, %i.dc
  %i.de = call i64 @curlx_sotouz_range(i64 noundef %i.dd, i64 noundef 0, i64 noundef -1) #7 ; 3 uses
  %.not34.i = icmp eq i64 %i.de, 0
  br i1 %.not34.i, label %.loopexit, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %bb.bb
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not31.i = icmp eq ptr %1, null
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 2187
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 4504
  br i1 %.not31.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i40, %bb.bf
  %.035.us.i = phi i64 [ %i.dy, %bb.bf ], [ %i.de, %.lr.ph.i40 ] ; 3 uses
  %i.di = call zeroext i1 @Curl_bufq_peek(ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7
  br i1 %i.di, label %bb.bc, label %ws_dec_pass_payload.exit.thread

bb.bc:                                            ; preds = %.lr.ph.split.us.i
  %i.dj = load i64, ptr %i.b, align 8, !tbaa !11  ; 2 uses
  %i.dk = icmp ugt i64 %i.dj, %.035.us.i
  br i1 %i.dk, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i64 %.035.us.i, ptr %i.b, align 8, !tbaa !11
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.dl = phi i64 [ %.035.us.i, %bb.bd ], [ %i.dj, %bb.bc ]
  %i.dm = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.dn = load i32, ptr %0, align 8, !tbaa !141
  %i.do = load i32, ptr %i.df, align 4, !tbaa !140
  %i.dp = load i64, ptr %i.db, align 8, !tbaa !111
  %i.dq = load i64, ptr %i.da, align 8, !tbaa !107
  %i.dr = call i32 %3(ptr noundef %i.dm, i64 noundef %i.dl, i32 noundef %i.dn, i32 noundef %i.do, i64 noundef %i.dp, i64 noundef %i.dq, ptr noundef nonnull %4, ptr noundef nonnull %i.c) #7, !callees !142, !inline_history !136 ; 2 uses
  %.not30.us.i = icmp eq i32 %i.dr, 0
  br i1 %.not30.us.i, label %bb.bf, label %ws_dec_pass_payload.exit.thread

bb.bf:                                            ; preds = %bb.be
  %i.ds = load i64, ptr %i.c, align 8, !tbaa !11
  call void @Curl_bufq_skip(ptr noundef %2, i64 noundef %i.ds) #7
  %i.dt = load i64, ptr %i.c, align 8, !tbaa !11
  %i.du = load i64, ptr %i.db, align 8, !tbaa !111
  %i.dv = add i64 %i.du, %i.dt                    ; 2 uses
  store i64 %i.dv, ptr %i.db, align 8, !tbaa !111
  %i.dw = load i64, ptr %i.da, align 8, !tbaa !107
  %i.dx = sub nsw i64 %i.dw, %i.dv
  %i.dy = call i64 @curlx_sotouz_range(i64 noundef %i.dx, i64 noundef 0, i64 noundef -1) #7 ; 2 uses
  %.not.us.i = icmp eq i64 %i.dy, 0
  br i1 %.not.us.i, label %.loopexit, label %.lr.ph.split.us.i, !llvm.loop !137

.lr.ph.split.i:                                   ; preds = %.lr.ph.i40, %bb.bo
  %.035.i = phi i64 [ %i.ep, %bb.bo ], [ %i.de, %.lr.ph.i40 ] ; 3 uses
  %i.dz = call zeroext i1 @Curl_bufq_peek(ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7
  br i1 %i.dz, label %bb.bg, label %ws_dec_pass_payload.exit.thread

bb.bg:                                            ; preds = %.lr.ph.split.i
  %i.ea = load i64, ptr %i.b, align 8, !tbaa !11  ; 2 uses
  %i.eb = icmp ugt i64 %i.ea, %.035.i
  br i1 %i.eb, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i64 %.035.i, ptr %i.b, align 8, !tbaa !11
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.ec = phi i64 [ %.035.i, %bb.bh ], [ %i.ea, %bb.bg ]
  %i.ed = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ee = load i32, ptr %0, align 8, !tbaa !141
  %i.ef = load i32, ptr %i.df, align 4, !tbaa !140
  %i.eg = load i64, ptr %i.db, align 8, !tbaa !111
  %i.eh = load i64, ptr %i.da, align 8, !tbaa !107
  %i.ei = call i32 %3(ptr noundef %i.ed, i64 noundef %i.ec, i32 noundef %i.ee, i32 noundef %i.ef, i64 noundef %i.eg, i64 noundef %i.eh, ptr noundef nonnull %4, ptr noundef nonnull %i.c) #7, !callees !142, !inline_history !136 ; 2 uses
  %.not30.i = icmp eq i32 %i.ei, 0
  br i1 %.not30.i, label %bb.bj, label %ws_dec_pass_payload.exit.thread

bb.bj:                                            ; preds = %bb.bi
  %i.ej = load i64, ptr %i.c, align 8, !tbaa !11
  call void @Curl_bufq_skip(ptr noundef %2, i64 noundef %i.ej) #7
  %i.ek = load i64, ptr %i.c, align 8, !tbaa !11
  %i.el = load i64, ptr %i.db, align 8, !tbaa !111
  %i.em = add i64 %i.el, %i.ek                    ; 2 uses
  store i64 %i.em, ptr %i.db, align 8, !tbaa !111
  %i.en = load i64, ptr %i.da, align 8, !tbaa !107
  %i.eo = sub nsw i64 %i.en, %i.em
  %i.ep = call i64 @curlx_sotouz_range(i64 noundef %i.eo, i64 noundef 0, i64 noundef -1) #7 ; 3 uses
  %i.eq = load i64, ptr %i.dg, align 1
  %i.er = and i64 %i.eq, 536870912
  %.not32.i = icmp eq i64 %i.er, 0
  br i1 %.not32.i, label %bb.bo, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.es = load ptr, ptr %i.dh, align 8, !tbaa !77 ; 2 uses
  %.not33.i = icmp eq ptr %i.es, null
  br i1 %.not33.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !79
  %i.ev = icmp sgt i32 %i.eu, 0
  %i.ew = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ws, i64 8), align 8
  %i.ex = icmp sgt i32 %i.ew, 0
  %or.cond.i41 = select i1 %i.ev, i1 %i.ex, i1 false
  br i1 %or.cond.i41, label %bb.bn, label %bb.bo

bb.bm:                                            ; preds = %bb.bk
  %.old.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ws, i64 8), align 8, !tbaa !79
  %.old1.i = icmp sgt i32 %.old.i, 0
  br i1 %.old1.i, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.ey = load i64, ptr %i.c, align 8, !tbaa !11
  call void (ptr, ptr, ...) @Curl_trc_ws(ptr noundef nonnull %1, ptr noundef nonnull @.str.72, i64 noundef %i.ey, i64 noundef %i.ep) #7
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bj
  %.not.i42 = icmp eq i64 %i.ep, 0
  br i1 %.not.i42, label %.loopexit, label %.lr.ph.split.i, !llvm.loop !137

ws_dec_pass_payload.exit.thread:                  ; preds = %.lr.ph.split.i, %bb.bi, %.lr.ph.split.us.i, %bb.be
  %.026.i.ph = phi i32 [ %i.dr, %bb.be ], [ 81, %.lr.ph.split.us.i ], [ 81, %.lr.ph.split.i ], [ %i.ei, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call fastcc void @ws_dec_info(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.56)
  br label %bb.bp

.loopexit:                                        ; preds = %bb.bo, %bb.bf, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call fastcc void @ws_dec_info(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.56)
  store i32 0, ptr %i.i, align 4, !tbaa !138
  br label %bb.bp

.critedge:                                        ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  br label %bb.bp

bb.bp:                                            ; preds = %ws_dec_pass_payload.exit.thread, %ws_dec_read_head.exit.thread46, %bb.ba, %bb.ax, %.loopexit, %bb.b, %.critedge, %bb.a
  %.1 = phi i32 [ %i.cy, %.critedge ], [ %.026.i.ph, %ws_dec_pass_payload.exit.thread ], [ 2, %bb.b ], [ 81, %bb.a ], [ 0, %.loopexit ], [ 56, %bb.ax ], [ 81, %ws_dec_read_head.exit.thread46 ], [ 0, %bb.ba ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 82) i32 @ws_client_collect(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef captures(none) %6, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %7) #0 {
bb.a:
  %i.a = load ptr, ptr %6, align 8, !tbaa !88     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2187 ; 2 uses
  %i.c = load i64, ptr %i.b, align 1
  %i.d = and i64 %i.c, 36028797018963968
  %.not = icmp eq i64 %i.d, 0
  store i64 0, ptr %7, align 8, !tbaa !11
  %i.e = sub nsw i64 %5, %4                       ; 3 uses
  %i.f = or i64 %5, %4
  %or.cond.i = icmp slt i64 %i.f, 0
  %i.g = icmp slt i64 %i.e, 0
  %or.cond3.i = select i1 %or.cond.i, i1 true, i1 %i.g
  br i1 %or.cond3.i, label %ws_enc_add_cntrl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i64 @curlx_uztoso(i64 noundef %1) #7 ; 2 uses
  %i.i = icmp slt i64 %i.e, %i.h
end_hunk_0
begin_hunk_1_@ws_enc_add_frame:bb.a
  br i1 %or.cond5, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.84) #7
  br label %ws_frame_flags2firstbyte.exit

bb.am:                                            ; preds = %bb.ak
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 %.073.ph, ptr %i.au, align 8, !tbaa !122
  store i8 %.073.ph, ptr %i.a, align 1, !tbaa !110
  %i.av = icmp samesign ugt i64 %3, 65535
  br i1 %i.av, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 -1, ptr %i.aw, align 1, !tbaa !110
  %i.ax = lshr i64 %3, 56
  %i.ay = trunc nuw nsw i64 %i.ax to i8
  store i8 %i.ay, ptr %.0.sroa.gep72, align 1, !tbaa !110
  %i.az = lshr i64 %3, 48
  %i.ba = trunc i64 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !110
  %i.bc = lshr i64 %3, 40
  %i.bd = trunc i64 %i.bc to i8
  store i8 %i.bd, ptr %.0.sroa.gep71, align 1, !tbaa !110
  %i.be = lshr i64 %3, 32
  %i.bf = trunc i64 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !110
  %i.bh = lshr i64 %3, 24
  %i.bi = trunc i64 %i.bh to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !110
  %i.bk = lshr i64 %3, 16
  %i.bl = trunc i64 %i.bk to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !110
  %i.bn = lshr i64 %3, 8
  %i.bo = trunc i64 %i.bn to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !110
  %i.bq = trunc i64 %3 to i8
  br label %bb.ar

bb.ao:                                            ; preds = %bb.am
  br i1 %i.ap, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 -2, ptr %i.br, align 1, !tbaa !110
  %i.bs = lshr i64 %3, 8
  %i.bt = trunc nuw i64 %i.bs to i8
  store i8 %i.bt, ptr %.0.sroa.gep72, align 1, !tbaa !110
  %i.bu = trunc i64 %3 to i8
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.bv = trunc nuw nsw i64 %3 to i8
  %i.bw = or disjoint i8 %i.bv, -128
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %bb.an
  %.sink87.sroa.phi = phi ptr [ %.sink87.sroa.gep, %bb.ap ], [ %.sink87.sroa.gep88, %bb.aq ], [ %.sink87.sroa.gep89, %bb.an ]
  %.sink = phi i8 [ %i.bu, %bb.ap ], [ %i.bw, %bb.aq ], [ %i.bq, %bb.an ]
  %.0.sroa.phi = phi ptr [ %.0.sroa.gep71, %bb.ap ], [ %.0.sroa.gep72, %bb.aq ], [ %.0.sroa.gep, %bb.an ]
  %.0 = phi i64 [ 8, %bb.ap ], [ 6, %bb.aq ], [ 14, %bb.an ] ; 2 uses
  store i8 %.sink, ptr %.sink87.sroa.phi, align 1, !tbaa !110
  store i64 %3, ptr %1, align 8, !tbaa !123
  store i64 %3, ptr %i.d, align 8, !tbaa !81
  tail call fastcc void @ws_enc_info(ptr noundef %1, ptr noundef %0, ptr noundef nonnull @.str.85)
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.by = tail call i32 @Curl_rand_bytes(ptr noundef %0, ptr noundef nonnull %i.bx, i64 noundef 4) #7 ; 2 uses
  %.not68 = icmp eq i32 %i.by, 0
  br i1 %.not68, label %bb.as, label %ws_frame_flags2firstbyte.exit

bb.as:                                            ; preds = %bb.ar
  %i.bz = load i32, ptr %i.bx, align 4
  store i32 %i.bz, ptr %.0.sroa.phi, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.ca, align 8, !tbaa !82
  %i.cb = call i32 @Curl_bufq_write(ptr noundef nonnull %4, ptr noundef nonnull %i.a, i64 noundef %.0, ptr noundef nonnull %i.b) #7 ; 2 uses
  %.not69 = icmp eq i32 %i.cb, 0
  br i1 %.not69, label %bb.at, label %ws_frame_flags2firstbyte.exit

bb.at:                                            ; preds = %bb.as
  %i.cc = load i64, ptr %i.b, align 8, !tbaa !11
  %.not70 = icmp eq i64 %i.cc, %.0
  %. = select i1 %.not70, i32 0, i32 55
  br label %ws_frame_flags2firstbyte.exit

ws_frame_flags2firstbyte.exit:                    ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.y, %bb.t, %bb.m, %bb.at, %bb.as, %bb.ar, %bb.al, %bb.aj, %bb.ah, %bb.d, %bb.b
  %.060 = phi i32 [ 55, %bb.b ], [ 55, %bb.d ], [ %i.cb, %bb.as ], [ 100, %bb.ah ], [ 100, %bb.aj ], [ 100, %bb.al ], [ %., %bb.at ], [ %i.by, %bb.ar ], [ 43, %bb.ad ], [ 43, %bb.ac ], [ 43, %bb.m ], [ 43, %bb.y ], [ 43, %bb.t ], [ 43, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.060
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ws_send_raw_blocking(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %.not = icmp eq ptr %0, null
  %.not401 = icmp eq i64 %2, 0
  %or.cond8 = or i1 %.not, %.not401
  br i1 %or.cond8, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4504
  br label %bb.b

bb.b:                                             ; preds = %bb.k, %.lr.ph
  %.0313 = phi i64 [ %2, %.lr.ph ], [ %i.h, %bb.k ] ; 2 uses
  %.0322 = phi ptr [ %1, %.lr.ph ], [ %i.g, %bb.k ] ; 2 uses
  %i.e = call i32 @Curl_xfer_send(ptr noundef nonnull %0, ptr noundef %.0322, i64 noundef %.0313, i1 noundef zeroext false, ptr noundef nonnull %i.a) #7 ; 2 uses
  %.not41 = icmp eq i32 %i.e, 0
  br i1 %.not41, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0322, i64 %i.f
  %i.h = sub i64 %.0313, %i.f                     ; 3 uses
  %cond = icmp eq i64 %i.h, 0
  br i1 %cond, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 280
  %i.k = load i32, ptr %i.j, align 8, !tbaa !98   ; 2 uses
  %i.l = load i64, ptr %i.c, align 1
  %i.m = and i64 %i.l, 536870912
  %.not43 = icmp eq i64 %i.m, 0
  br i1 %.not43, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !77   ; 2 uses
  %.not44 = icmp eq ptr %i.n, null
  br i1 %.not44, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !79
  %i.q = icmp sgt i32 %i.p, 0
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ws, i64 8), align 8
  %i.s = icmp sgt i32 %i.r, 0
  %or.cond = select i1 %i.q, i1 %i.s, i1 false
  br i1 %or.cond, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ws, i64 8), align 8, !tbaa !79
  %.old1 = icmp sgt i32 %.old, 0
  br i1 %.old1, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.g
  call void (ptr, ptr, ...) @Curl_trc_ws(ptr noundef nonnull %0, ptr noundef nonnull @.str.97, i64 noundef %i.h) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  %i.t = call i64 @Curl_timeleft_ms(ptr noundef nonnull %0) #7 ; 3 uses
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %.critedge.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = icmp eq i32 %i.k, -1
  br i1 %i.v, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not45 = icmp eq i64 %i.t, 0
  %i.w = select i1 %.not45, i64 500, i64 %i.t
  %i.x = call i32 @Curl_socket_check(i32 noundef -1, i32 noundef -1, i32 noundef %i.k, i64 noundef %i.w) #7
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %.critedge.sink.split, label %bb.b

.critedge.sink.split:                             ; preds = %bb.k, %bb.i
  %.str.98.sink = phi ptr [ @.str.98, %bb.i ], [ @.str.99, %bb.k ]
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull %.str.98.sink) #7
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.b, %bb.j, %.critedge.sink.split, %bb.a
  %.3 = phi i32 [ 0, %bb.a ], [ 55, %.critedge.sink.split ], [ 55, %bb.j ], [ 0, %bb.c ], [ %i.e, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.3
}

declare i32 @Curl_senddata(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Curl_xfer_send(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare i64 @Curl_timeleft_ms(ptr noundef) local_unnamed_addr #2

declare i32 @Curl_socket_check(i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @Curl_http_setup_conn(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

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
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!9, !9, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"curltime", !10, i64 0, !5, i64 8}
!16 = !{!"p1 _ZTS12Curl_cwriter", !8, i64 0}
!17 = !{!"p1 _ZTS12Curl_creader", !8, i64 0}
!18 = !{!"p1 _ZTS9buf_chunk", !8, i64 0}
!19 = !{!"p1 _ZTS9bufc_pool", !8, i64 0}
!20 = !{!"bufq", !18, i64 0, !18, i64 8, !18, i64 16, !19, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !5, i64 56}
!21 = !{!"SingleRequest", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !15, i64 40, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !4, i64 76, !4, i64 77, !5, i64 80, !16, i64 88, !17, i64 96, !20, i64 104, !10, i64 168, !10, i64 176, !9, i64 184, !9, i64 192, !4, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !4, i64 232, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 235, !5, i64 235, !5, i64 235, !5, i64 235, !5, i64 235, !5, i64 235}
!22 = !{!21, !5, i64 80}
!23 = !{!"p1 _ZTS11connectdata", !8, i64 0}
!24 = !{!"p1 _ZTS10Curl_llist", !8, i64 0}
!25 = !{!"p1 _ZTS15Curl_llist_node", !8, i64 0}
!26 = !{!"Curl_llist_node", !24, i64 0, !8, i64 8, !25, i64 16, !25, i64 24}
!27 = !{!"CURLMsg", !5, i64 0, !8, i64 8, !4, i64 16}
!28 = !{!"Curl_message", !26, i64 0, !27, i64 32}
!29 = !{!"p1 _ZTS10Curl_multi", !8, i64 0}
!30 = !{!"p1 _ZTS10Curl_share", !8, i64 0}
!31 = !{!"any p2 pointer", !8, i64 0}
!32 = !{!"p2 _ZTS17Curl_hash_element", !31, i64 0}
!33 = !{!"Curl_hash", !32, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !10, i64 32, !10, i64 40}
!34 = !{!"p1 _ZTS8PslCache", !8, i64 0}
!35 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!36 = !{!"p1 _ZTS10curl_slist", !8, i64 0}
!37 = !{!"p1 _ZTS13curl_httppost", !8, i64 0}
!38 = !{!"p1 _ZTS13curl_mimepart", !8, i64 0}
!39 = !{!"p1 _ZTS9curl_blob", !8, i64 0}
!40 = !{!"ssl_primary_config", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !39, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !5, i64 160, !4, i64 164, !4, i64 165, !5, i64 166, !5, i64 166, !5, i64 166, !5, i64 166, !5, i64 166}
!41 = !{!"ssl_config_data", !40, i64 0, !10, i64 168, !8, i64 176, !8, i64 184, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 193, !5, i64 193, !5, i64 193}
!42 = !{!"short", !4, i64 0}
!43 = !{!"ssl_general_config", !5, i64 0}
!44 = !{!"p1 _ZTS8Curl_URL", !8, i64 0}
!45 = !{!"UserDefined", !35, i64 0, !8, i64 8, !9, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !5, i64 48, !5, i64 52, !8, i64 56, !8, i64 64, !10, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !10, i64 312, !36, i64 320, !37, i64 328, !38, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !10, i64 368, !41, i64 376, !41, i64 576, !36, i64 776, !42, i64 784, !4, i64 786, !4, i64 787, !43, i64 788, !10, i64 792, !5, i64 800, !5, i64 804, !8, i64 808, !36, i64 816, !10, i64 824, !10, i64 832, !4, i64 840, !4, i64 841, !4, i64 842, !36, i64 848, !36, i64 856, !36, i64 864, !5, i64 872, !4, i64 880, !4, i64 1480, !5, i64 1544, !10, i64 1552, !10, i64 1560, !8, i64 1568, !5, i64 1576, !8, i64 1584, !8, i64 1592, !8, i64 1600, !8, i64 1608, !8, i64 1616, !10, i64 1624, !10, i64 1632, !10, i64 1640, !10, i64 1648, !10, i64 1656, !5, i64 1664, !5, i64 1668, !5, i64 1672, !8, i64 1680, !8, i64 1688, !10, i64 1696, !44, i64 1704, !8, i64 1712, !8, i64 1720, !36, i64 1728, !5, i64 1736, !42, i64 1740, !42, i64 1742, !42, i64 1744, !42, i64 1746, !42, i64 1748, !42, i64 1750, !42, i64 1752, !4, i64 1754, !4, i64 1755, !4, i64 1756, !4, i64 1757, !4, i64 1758, !4, i64 1759, !4, i64 1760, !4, i64 1761, !4, i64 1762, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1770, !5, i64 1770, !5, i64 1770}
!46 = !{!"p1 _ZTS10CookieInfo", !8, i64 0}
!47 = !{!"p1 _ZTS4hsts", !8, i64 0}
!48 = !{!"p1 _ZTS10altsvcinfo", !8, i64 0}
!49 = !{!"Curl_rlimit", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !15, i64 56, !5, i64 72}
!50 = !{!"pgrs_dir", !10, i64 0, !10, i64 8, !10, i64 16, !49, i64 24}
!51 = !{!"Progress", !15, i64 0, !10, i64 16, !50, i64 24, !50, i64 128, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !10, i64 312, !10, i64 320, !15, i64 328, !15, i64 344, !15, i64 360, !15, i64 376, !15, i64 392, !4, i64 408, !4, i64 456, !5, i64 552, !5, i64 556, !5, i64 556, !5, i64 556, !5, i64 556, !5, i64 556, !5, i64 556}
!52 = !{!"dynbuf", !9, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!53 = !{!"p1 _ZTS9Curl_peer", !8, i64 0}
!54 = !{!"p1 _ZTS10Curl_creds", !8, i64 0}
!55 = !{!"digestdata", !54, i64 0, !53, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !5, i64 64, !4, i64 68, !5, i64 69, !5, i64 69}
!56 = !{!"auth", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 12}
!57 = !{!"p1 _ZTS17Curl_resolv_async", !8, i64 0}
!58 = !{!"p1 _ZTS9Curl_tree", !8, i64 0}
!59 = !{!"Curl_tree", !58, i64 0, !58, i64 8, !58, i64 16, !58, i64 24, !15, i64 32, !8, i64 48}
!60 = !{!"Curl_llist", !25, i64 0, !25, i64 8, !8, i64 16, !10, i64 24}
!61 = !{!"urlpieces", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56}
!62 = !{!"bufref", !8, i64 0, !9, i64 8, !10, i64 16}
!63 = !{!"p1 _ZTS17Curl_header_store", !8, i64 0}
!64 = !{!"p1 _ZTS13curl_trc_feat", !8, i64 0}
!65 = !{!"store_netrc", !52, i64 0, !9, i64 32, !5, i64 40}
!66 = !{!"dynamically_allocated_data", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40}
!67 = !{!"http_negotiation", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3, !5, i64 4, !5, i64 4, !5, i64 4, !5, i64 4}
!68 = !{!"UrlState", !15, i64 0, !10, i64 16, !10, i64 24, !52, i64 32, !36, i64 64, !10, i64 72, !53, i64 80, !53, i64 88, !5, i64 96, !5, i64 100, !8, i64 104, !9, i64 112, !55, i64 120, !55, i64 192, !56, i64 264, !56, i64 280, !57, i64 296, !8, i64 304, !8, i64 312, !8, i64 320, !8, i64 328, !9, i64 336, !5, i64 344, !15, i64 352, !59, i64 368, !60, i64 424, !4, i64 456, !9, i64 1296, !9, i64 1304, !10, i64 1312, !5, i64 1320, !5, i64 1324, !5, i64 1328, !4, i64 1332, !10, i64 1368, !8, i64 1376, !8, i64 1384, !44, i64 1392, !61, i64 1400, !62, i64 1464, !62, i64 1488, !36, i64 1512, !38, i64 1520, !38, i64 1528, !10, i64 1536, !52, i64 1544, !60, i64 1576, !4, i64 1608, !63, i64 1704, !36, i64 1712, !64, i64 1720, !65, i64 1728, !54, i64 1776, !66, i64 1784, !67, i64 1832, !42, i64 1840, !4, i64 1842, !4, i64 1843, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1846, !5, i64 1846, !5, i64 1846, !5, i64 1846, !5, i64 1846, !5, i64 1846, !5, i64 1846}
!69 = !{!"p1 _ZTS12WildcardData", !8, i64 0}
!70 = !{!"ip_quadruple", !4, i64 0, !4, i64 46, !42, i64 92, !42, i64 94, !4, i64 96}
!71 = !{!"p2 _ZTS10curl_slist", !31, i64 0}
!72 = !{!"curl_certinfo", !5, i64 0, !71, i64 8}
!73 = !{!"PureInfo", !5, i64 0, !5, i64 4, !5, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !9, i64 56, !9, i64 64, !10, i64 72, !5, i64 80, !70, i64 84, !9, i64 184, !5, i64 192, !72, i64 200, !5, i64 216, !5, i64 220, !5, i64 220}
!74 = !{!"curl_tlssessioninfo", !5, i64 0, !8, i64 8}
!75 = !{!"Curl_easy", !5, i64 0, !10, i64 8, !5, i64 16, !5, i64 20, !8, i64 24, !23, i64 32, !5, i64 40, !5, i64 44, !28, i64 48, !29, i64 104, !29, i64 112, !30, i64 120, !33, i64 128, !34, i64 176, !21, i64 184, !45, i64 424, !46, i64 2200, !47, i64 2208, !48, i64 2216, !51, i64 2224, !68, i64 2784, !69, i64 4632, !73, i64 4640, !74, i64 4864}
!76 = !{!75, !23, i64 32}
!77 = !{!75, !64, i64 4504}
!78 = !{!"curl_trc_feat", !9, i64 0, !5, i64 8}
!79 = !{!78, !5, i64 8}
!80 = !{!"ws_encoder", !10, i64 0, !10, i64 8, !5, i64 16, !4, i64 20, !4, i64 24, !5, i64 25}
!81 = !{!80, !10, i64 8}
!82 = !{!80, !5, i64 16}
!83 = !{!75, !5, i64 0}
!84 = !{!"p1 _ZTS9Curl_easy", !8, i64 0}
!85 = !{!"p1 _ZTS9websocket", !8, i64 0}
!86 = !{!"_Bool", !4, i64 0}
!87 = !{!"ws_collect", !84, i64 0, !85, i64 8, !9, i64 16, !10, i64 24, !10, i64 32, !5, i64 40, !5, i64 44, !10, i64 48, !10, i64 56, !86, i64 64}
!88 = !{!87, !84, i64 0}
!89 = !{!87, !85, i64 8}
!90 = !{!87, !9, i64 16}
!91 = !{!87, !10, i64 24}
!92 = !{!87, !86, i64 64}
!93 = !{i8 0, i8 2}
!94 = !{}
!95 = !{!87, !10, i64 48}
!96 = !{!87, !10, i64 56}
!97 = !{!87, !10, i64 32}
!98 = !{!5, !5, i64 0}
!99 = !{!"ws_decoder", !5, i64 0, !5, i64 4, !10, i64 8, !10, i64 16, !4, i64 24, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48}
!100 = !{!"curl_ws_frame", !5, i64 0, !5, i64 4, !10, i64 8, !10, i64 16, !10, i64 24}
!101 = !{!"ws_cntrl_frame", !5, i64 0, !10, i64 8, !4, i64 16}
!102 = !{!"websocket", !84, i64 0, !99, i64 8, !80, i64 64, !20, i64 96, !20, i64 160, !100, i64 224, !101, i64 256, !10, i64 400}
!103 = !{!102, !10, i64 232}
!104 = !{!102, !10, i64 248}
!105 = !{!102, !10, i64 240}
!106 = !{!102, !5, i64 256}
!107 = !{!99, !10, i64 16}
!108 = !{!99, !5, i64 40}
!109 = !{!99, !5, i64 36}
!110 = !{!4, !4, i64 0}
!111 = !{!99, !10, i64 8}
!112 = !{!102, !10, i64 264}
!113 = !{!102, !10, i64 72}
!114 = !{!"p1 _ZTS11Curl_cwtype", !8, i64 0}
!115 = !{!"Curl_cwriter", !114, i64 0, !16, i64 8, !8, i64 16, !5, i64 24}
!116 = !{!115, !8, i64 16}
!117 = !{!"ws_cw_dec_ctx", !84, i64 0, !85, i64 8, !16, i64 16, !5, i64 24}
!118 = !{!117, !84, i64 0}
!119 = !{!117, !85, i64 8}
!120 = !{!117, !16, i64 16}
!121 = !{!117, !5, i64 24}
!122 = !{!80, !4, i64 24}
!123 = !{!80, !10, i64 0}
!124 = distinct !{!124, !14}
!125 = !{!"wsfield", !9, i64 0, !9, i64 8}
!126 = !{!125, !9, i64 8}
!127 = !{!125, !9, i64 0}
!128 = !{!16, !16, i64 0}
!129 = !{!17, !17, i64 0}
!130 = !{!75, !4, i64 384}
!131 = !{!75, !4, i64 2182}
!132 = !{!"p1 _ZTS13curl_ws_frame", !8, i64 0}
!133 = !{!132, !132, i64 0}
!134 = !{!23, !23, i64 0}
!135 = distinct !{!135, !14}
!136 = distinct !{null}
!137 = distinct !{!137, !14}
!138 = !{!99, !5, i64 44}
!139 = !{!99, !5, i64 48}
!140 = !{!99, !5, i64 4}
!141 = !{!99, !5, i64 0}
!142 = !{ptr @ws_client_collect, ptr @ws_cw_dec_next}
!143 = !{!87, !5, i64 40}
!144 = !{!87, !5, i64 44}
!145 = distinct !{!145, !14}
!146 = !{!102, !10, i64 208}
!147 = distinct !{!147, !14}
!148 = !{!102, !10, i64 400}
!149 = !{!75, !4, i64 4617}
!150 = !{!75, !4, i64 4618}
!151 = !{!115, !16, i64 8}
!152 = !{!102, !5, i64 224}
!153 = !{!102, !5, i64 228}
!154 = !{!"p1 _ZTS11Curl_crtype", !8, i64 0}
!155 = !{!"Curl_creader", !154, i64 0, !17, i64 8, !8, i64 16, !5, i64 24}
!156 = !{!155, !8, i64 16}
!157 = !{!86, !86, i64 0}
!158 = !{!155, !17, i64 8}
!159 = distinct !{!159, !14}
end_hunk_1
