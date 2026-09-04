Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/ptl_base_fns?download=true
inline.NumInlined: 101
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@pmix_ptl_base_make_connection:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eq, ptr align 1 %i.er, i64 %i.ek, i1 false)
  %i.es = add i64 %i.ep, %i.ek
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0128.i.i = phi i64 [ %i.es, %bb.aa ], [ %i.ep, %bb.z ] ; 6 uses
  call void @PMIx_Byte_object_destruct(ptr noundef nonnull %7) #19
  %i.et = getelementptr i8, ptr %calloc.i.i, i64 %.0128.i.i ; 6 uses
  %i.eu = load i8, ptr %i.i, align 1              ; 2 uses
  store i8 %i.eu, ptr %i.et, align 1
  %i.ev = add i64 %.0128.i.i, 1                   ; 4 uses
  switch i8 %i.eu, label %bb.ag [
    i8 0, label %bb.ac
    i8 3, label %bb.ad
    i8 6, label %bb.ad
    i8 4, label %bb.ae
    i8 7, label %bb.ae
    i8 10, label %bb.ae
    i8 9, label %bb.ae
    i8 5, label %bb.af
    i8 8, label %bb.af
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.ew = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 %i.ev
  %i.ex = call i64 @strlen(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 4)) #20 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ew, ptr nonnull align 4 getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 4), i64 %i.ex, i1 false)
  %i.ey = add i64 %.0128.i.i, 2
  %i.ez = add i64 %i.ey, %i.ex                    ; 2 uses
  %i.fa = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 260), align 4, !tbaa !100
  %i.fb = call noundef i32 @llvm.bswap.i32(i32 %i.fa)
  %i.fc = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 %i.ez
  store i32 %i.fb, ptr %i.fc, align 1
  %i.fd = add i64 %i.ez, 4
  br label %bb.ai

bb.ad:                                            ; preds = %bb.ab, %bb.ab
  %i.fe = call i32 @geteuid() #19
  %i.ff = call noundef i32 @llvm.bswap.i32(i32 %i.fe)
  %i.fg = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 %i.ev
  store i32 %i.ff, ptr %i.fg, align 1
  %i.fh = call i32 @getegid() #19
  %i.fi = call noundef i32 @llvm.bswap.i32(i32 %i.fh)
  %i.fj = getelementptr i8, ptr %i.et, i64 5
  store i32 %i.fi, ptr %i.fj, align 1
  %i.fk = add i64 %.0128.i.i, 9
  br label %bb.ai

bb.ae:                                            ; preds = %bb.ab, %bb.ab, %bb.ab, %bb.ab
  %i.fl = call i32 @geteuid() #19
  %i.fm = call noundef i32 @llvm.bswap.i32(i32 %i.fl)
  %i.fn = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 %i.ev
  store i32 %i.fm, ptr %i.fn, align 1
  %i.fo = call i32 @getegid() #19
  %i.fp = call noundef i32 @llvm.bswap.i32(i32 %i.fo)
  %i.fq = getelementptr i8, ptr %i.et, i64 5
  store i32 %i.fp, ptr %i.fq, align 1
  %i.fr = getelementptr i8, ptr %i.et, i64 9
  %i.fs = call i64 @strlen(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 4)) #20 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fr, ptr nonnull align 4 getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 4), i64 %i.fs, i1 false)
  %i.ft = add i64 %.0128.i.i, 10
  %i.fu = add i64 %i.ft, %i.fs                    ; 2 uses
  %i.fv = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 260), align 4, !tbaa !100
  %i.fw = call noundef i32 @llvm.bswap.i32(i32 %i.fv)
  %i.fx = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 %i.fu
  store i32 %i.fw, ptr %i.fx, align 1
  %i.fy = add i64 %i.fu, 4
  br label %bb.ai

bb.af:                                            ; preds = %bb.ab, %bb.ab
  %i.fz = call i32 @geteuid() #19
  %i.ga = call noundef i32 @llvm.bswap.i32(i32 %i.fz)
  %i.gb = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 %i.ev
  store i32 %i.ga, ptr %i.gb, align 1
  %i.gc = call i32 @getegid() #19
  %i.gd = call noundef i32 @llvm.bswap.i32(i32 %i.gc)
  %i.ge = getelementptr i8, ptr %i.et, i64 5
  store i32 %i.gd, ptr %i.ge, align 1
  %i.gf = getelementptr i8, ptr %i.et, i64 9
  %i.gg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 4)) #20 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gf, ptr nonnull align 4 getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 4), i64 %i.gg, i1 false)
  %i.gh = add i64 %.0128.i.i, 10
  %i.gi = add i64 %i.gh, %i.gg                    ; 2 uses
  %i.gj = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 260), align 4, !tbaa !100
  %i.gk = call noundef i32 @llvm.bswap.i32(i32 %i.gj)
  %i.gl = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 %i.gi
  store i32 %i.gk, ptr %i.gl, align 1
  %i.gm = add i64 %i.gi, 4
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ab
  br i1 %.not139.i.i, label %pmix_obj_run_destructors.exit151.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gn = load ptr, ptr %i.l, align 8, !tbaa !77
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 48
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !89 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !80 ; 2 uses
  %.not6.i147.i.i = icmp eq ptr %i.gq, null
  br i1 %.not6.i147.i.i, label %pmix_obj_run_destructors.exit151.i.i, label %.lr.ph.i148.i.i

.lr.ph.i148.i.i:                                  ; preds = %bb.ah, %.lr.ph.i148.i.i
  %i.gr = phi ptr [ %i.gt, %.lr.ph.i148.i.i ], [ %i.gq, %bb.ah ]
  %.07.i149.i.i = phi ptr [ %i.gs, %.lr.ph.i148.i.i ], [ %i.gp, %bb.ah ]
  call void %i.gr(ptr noundef nonnull %6) #19, !inline_history !150
  %i.gs = getelementptr inbounds nuw i8, ptr %.07.i149.i.i, i64 8 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !80 ; 2 uses
  %.not.i150.i.i = icmp eq ptr %i.gt, null
  br i1 %.not.i150.i.i, label %pmix_obj_run_destructors.exit151.i.i, label %.lr.ph.i148.i.i, !llvm.loop !3

pmix_obj_run_destructors.exit151.i.i:             ; preds = %.lr.ph.i148.i.i, %bb.ah, %bb.ag
  call void @free(ptr noundef nonnull %calloc.i.i) #19
  br label %construct_message.exit.thread.i

bb.ai:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac
  %.1.i.i = phi i64 [ %i.fd, %bb.ac ], [ %i.fk, %bb.ad ], [ %i.fy, %bb.ae ], [ %i.gm, %bb.af ]
  %i.gu = getelementptr i8, ptr %calloc.i.i, i64 %.1.i.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.gu, ptr noundef nonnull align 1 dereferenceable(6) @.str.58, i64 6, i1 false)
  %i.gv = getelementptr i8, ptr %i.gu, i64 7
  %i.gw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ay) #20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gv, ptr nonnull align 1 %i.ay, i64 %i.gw, i1 false)
  %i.gx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ay) #20
  %i.gy = getelementptr i8, ptr %i.gu, i64 8
  %i.gz = getelementptr i8, ptr %i.gy, i64 %i.gx  ; 2 uses
  store i8 %i.ba, ptr %i.gz, align 1
  %i.ha = getelementptr i8, ptr %i.gz, i64 1      ; 2 uses
  %i.hb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.be) #20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ha, ptr nonnull align 1 %i.be, i64 %i.hb, i1 false)
  %i.hc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.be) #20
  br i1 %.not139.i.i, label %construct_message.exit.thread20.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hd = load i64, ptr %i.p, align 8, !tbaa !164 ; 2 uses
  %.not142.i.i = icmp eq i64 %i.hd, 0
  br i1 %.not142.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.he = getelementptr i8, ptr %i.ha, i64 %i.hc
  %i.hf = getelementptr i8, ptr %i.he, i64 1
  %i.hg = load ptr, ptr %i.q, align 8, !tbaa !166
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hf, ptr align 1 %i.hg, i64 %i.hd, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.hh = load ptr, ptr %i.l, align 8, !tbaa !77
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 48
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !89 ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !80 ; 2 uses
  %.not6.i152.i.i = icmp eq ptr %i.hk, null
  br i1 %.not6.i152.i.i, label %construct_message.exit.thread20.i, label %.lr.ph.i153.i.i

.lr.ph.i153.i.i:                                  ; preds = %bb.al, %.lr.ph.i153.i.i
  %i.hl = phi ptr [ %i.hn, %.lr.ph.i153.i.i ], [ %i.hk, %bb.al ]
  %.07.i154.i.i = phi ptr [ %i.hm, %.lr.ph.i153.i.i ], [ %i.hj, %bb.al ]
  call void %i.hl(ptr noundef nonnull %6) #19, !inline_history !150
  %i.hm = getelementptr inbounds nuw i8, ptr %.07.i154.i.i, i64 8 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !80 ; 2 uses
  %.not.i155.i.i = icmp eq ptr %i.hn, null
  br i1 %.not.i155.i.i, label %construct_message.exit.thread20.i, label %.lr.ph.i153.i.i, !llvm.loop !3

construct_message.exit.thread20.i:                ; preds = %.lr.ph.i153.i.i, %bb.al, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ho = load i32, ptr %i.h, align 4, !tbaa !101
  %i.hp = call i32 @pmix_ptl_base_send_blocking(i32 noundef %i.ho, ptr noundef nonnull %calloc.i.i, i64 noundef %i.dx) #19
  %.not12.i = icmp eq i32 %i.hp, 0
  call void @free(ptr noundef nonnull %calloc.i.i) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br i1 %.not12.i, label %send_connect_ack.exit.thread42, label %send_connect_ack.exit.thread

construct_message.exit.thread.i:                  ; preds = %.lr.ph.i144.i.i, %pmix_obj_run_destructors.exit151.i.i, %bb.y, %bb.x
  %.0.i.ph.i = phi i32 [ -47, %pmix_obj_run_destructors.exit151.i.i ], [ -29, %bb.y ], [ -29, %bb.x ], [ -29, %.lr.ph.i144.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %send_connect_ack.exit

construct_message.exit.i:                         ; preds = %bb.f
  call void @PMIx_Byte_object_destruct(ptr noundef nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %cond.i = icmp eq i32 %i.aq, -2
  br i1 %cond.i, label %send_connect_ack.exit.thread44, label %send_connect_ack.exit

send_connect_ack.exit.thread44:                   ; preds = %construct_message.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br label %bb.am

send_connect_ack.exit.thread42:                   ; preds = %construct_message.exit.thread20.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 16, ptr %i.b, align 4, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.hq = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_ptl_base_framework, i64 76), align 4, !tbaa !42 ; 3 uses
  %or.cond.i35 = icmp ult i32 %i.hq, 64
  br i1 %or.cond.i35, label %bb.ao, label %bb.aq

send_connect_ack.exit:                            ; preds = %construct_message.exit.thread.i, %construct_message.exit.i
  %.0.i19.i = phi i32 [ %.0.i.ph.i, %construct_message.exit.thread.i ], [ %i.aq, %construct_message.exit.i ] ; 3 uses
  %i.hr = call ptr @PMIx_Error_string(i32 noundef %.0.i19.i) #19
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.30, ptr noundef %i.hr, ptr noundef nonnull @.str.31, i32 noundef 561) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  %cond = icmp eq i32 %.0.i19.i, -2
  br i1 %cond, label %bb.am, label %send_connect_ack.exit.thread

send_connect_ack.exit.thread:                     ; preds = %construct_message.exit.thread20.i, %send_connect_ack.exit
  %.0.i41 = phi i32 [ %.0.i19.i, %send_connect_ack.exit ], [ -25, %construct_message.exit.thread20.i ] ; 2 uses
  %i.hs = call ptr @PMIx_Error_string(i32 noundef %.0.i41) #19
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.30, ptr noundef %i.hs, ptr noundef nonnull @.str.31, i32 noundef 650) #19
  br label %bb.am

bb.am:                                            ; preds = %send_connect_ack.exit, %send_connect_ack.exit.thread44, %send_connect_ack.exit.thread
  %.0.i40 = phi i32 [ -2, %send_connect_ack.exit ], [ %.0.i41, %send_connect_ack.exit.thread ], [ -2, %send_connect_ack.exit.thread44 ] ; 2 uses
  %i.ht = load i32, ptr %i.h, align 4, !tbaa !101 ; 2 uses
  %i.hu = icmp sgt i32 %i.ht, -1
  br i1 %i.hu, label %bb.an, label %.loopexit

bb.an:                                            ; preds = %bb.am
  %i.hv = call i32 @shutdown(i32 noundef %i.ht, i32 noundef 2) #19 ; 0 uses
  %i.hw = load i32, ptr %i.h, align 4, !tbaa !101
  %i.hx = call i32 @close(i32 noundef %i.hw) #19  ; 0 uses
  store i32 -1, ptr %i.h, align 4, !tbaa !101
  br label %.loopexit

bb.ao:                                            ; preds = %send_connect_ack.exit.thread42
  %i.hy = zext nneg i32 %i.hq to i64
  %i.hz = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.hy
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !44
  %i.ic = icmp sgt i32 %i.ib, 1
  br i1 %i.ic, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.hq, ptr noundef nonnull @.str.59) #19
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %send_connect_ack.exit.thread42
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.id = load i32, ptr %i.h, align 4, !tbaa !101
  %i.ie = call i32 @getsockopt(i32 noundef %i.id, i32 noundef 1, i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %i.b) #19
  %.not.i.i36 = icmp eq i32 %i.ie, 0
  br i1 %.not.i.i36, label %bb.ar, label %pmix_ptl_base_set_timeout.exit.thread.i

bb.ar:                                            ; preds = %bb.aq
  %i.if = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_ptl_base, i64 1064), align 8, !tbaa !102
  %i.ig = sext i32 %i.if to i64
  store i64 %i.ig, ptr %4, align 8, !tbaa !84
  store i64 0, ptr %i.r, align 8, !tbaa !85
  %i.ih = load i32, ptr %i.h, align 4, !tbaa !101
  %i.ii = call i32 @setsockopt(i32 noundef %i.ih, i32 noundef 1, i32 noundef 20, ptr noundef nonnull %4, i32 noundef 16) #19
  %.not6.i.i = icmp eq i32 %i.ii, 0
  br i1 %.not6.i.i, label %pmix_ptl_base_set_timeout.exit.i, label %pmix_ptl_base_set_timeout.exit.thread.i

pmix_ptl_base_set_timeout.exit.i:                 ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.ij = load i32, ptr %i.h, align 4, !tbaa !101
  %i.ik = call i32 @pmix_ptl_base_recv_blocking(i32 noundef %i.ij, ptr noundef nonnull %i.c, i64 noundef 4) #19 ; 5 uses
  %.not.i = icmp eq i32 %i.ik, 0
  br i1 %.not.i, label %bb.av, label %bb.as

pmix_ptl_base_set_timeout.exit.thread.i:          ; preds = %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.il = load i32, ptr %i.h, align 4, !tbaa !101
  %i.im = call i32 @pmix_ptl_base_recv_blocking(i32 noundef %i.il, ptr noundef nonnull %i.c, i64 noundef 4) #19 ; 2 uses
  %.not40.i = icmp eq i32 %i.im, 0
  br i1 %.not40.i, label %bb.av, label %recv_connect_ack.exit.thread

bb.as:                                            ; preds = %pmix_ptl_base_set_timeout.exit.i
  %i.in = load i32, ptr %i.h, align 4, !tbaa !101
  %i.io = load i32, ptr %i.b, align 4, !tbaa !74
  %i.ip = call i32 @setsockopt(i32 noundef %i.in, i32 noundef 1, i32 noundef 20, ptr noundef nonnull %5, i32 noundef %i.io) #19
  %.not28.i = icmp eq i32 %i.ip, 0
  br i1 %.not28.i, label %recv_connect_ack.exit.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.iq = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_ptl_base_framework, i64 76), align 4, !tbaa !42 ; 3 uses
  %or.cond3.i = icmp ult i32 %i.iq, 64
  br i1 %or.cond3.i, label %bb.au, label %recv_connect_ack.exit.thread

bb.au:                                            ; preds = %bb.at
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.ir
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !44
  %i.iv = icmp sgt i32 %i.iu, 1
  br i1 %i.iv, label %.thread.sink.split.i, label %recv_connect_ack.exit.thread

bb.av:                                            ; preds = %pmix_ptl_base_set_timeout.exit.thread.i, %pmix_ptl_base_set_timeout.exit.i
  %.03141.i = phi i1 [ false, %pmix_ptl_base_set_timeout.exit.thread.i ], [ true, %pmix_ptl_base_set_timeout.exit.i ]
  %i.iw = load i32, ptr %i.c, align 4, !tbaa !74
  %i.ix = call noundef i32 @llvm.bswap.i32(i32 %i.iw) ; 3 uses
  %i.iy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 328), align 8, !tbaa !59
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 136
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !36 ; 2 uses
  %i.jb = and i32 %i.ja, 9
  %or.cond29.i = icmp ne i32 %i.jb, 0
  %i.jc = and i32 %i.ja, 4
  %.not26.i = icmp eq i32 %i.jc, 0
  %or.cond32.i = and i1 %or.cond29.i, %.not26.i
  br i1 %or.cond32.i, label %bb.aw, label %bb.be

bb.aw:                                            ; preds = %bb.av
  switch i32 %i.ix, label %pmix_ptl_base_client_handshake.exit.i [
    i32 -14, label %bb.ax
    i32 0, label %bb.ay
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.jd = load ptr, ptr %i.k, align 8, !tbaa !60
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 488
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !97
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 32
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !103
  %i.ji = load i32, ptr %i.h, align 4, !tbaa !101
  %i.jj = call i32 %i.jh(i32 noundef %i.ji) #19, !inline_history !151 ; 2 uses
  %.not16.i.i = icmp eq i32 %i.jj, 0
  br i1 %.not16.i.i, label %bb.ay, label %pmix_ptl_base_client_handshake.exit.i

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.jk = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_ptl_base_framework, i64 76), align 4, !tbaa !42 ; 3 uses
  %or.cond.i.i38 = icmp ult i32 %i.jk, 64
  br i1 %or.cond.i.i38, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 4
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !44
  %i.jp = icmp sgt i32 %i.jo, 1
  br i1 %i.jp, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.jk, ptr noundef nonnull @.str.47) #19
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.jq = load i32, ptr %i.h, align 4, !tbaa !101
  %i.jr = call i32 @pmix_ptl_base_recv_blocking(i32 noundef %i.jq, ptr noundef nonnull %i.a, i64 noundef 4) #19 ; 2 uses
  %.not17.i.i = icmp eq i32 %i.jr, 0
  br i1 %.not17.i.i, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.js = load i32, ptr %i.a, align 4, !tbaa !74
  %i.jt = call noundef i32 @llvm.bswap.i32(i32 %i.js)
  store i32 %i.jt, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 384), align 8, !tbaa !104
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %pmix_ptl_base_client_handshake.exit.i

bb.be:                                            ; preds = %bb.av
  %i.ju = call i32 @pmix_ptl_base_tool_handshake(ptr noundef nonnull %0, i32 noundef %i.ix)
  br label %pmix_ptl_base_client_handshake.exit.i

pmix_ptl_base_client_handshake.exit.i:            ; preds = %bb.be, %bb.bd, %bb.ax, %bb.aw
  %.0.i37 = phi i32 [ %i.ju, %bb.be ], [ %i.jj, %bb.ax ], [ %i.ix, %bb.aw ], [ %i.jr, %bb.bd ] ; 5 uses
  br i1 %.03141.i, label %bb.bf, label %recv_connect_ack.exit

bb.bf:                                            ; preds = %pmix_ptl_base_client_handshake.exit.i
  %i.jv = load i32, ptr %i.h, align 4, !tbaa !101
  %i.jw = load i32, ptr %i.b, align 4, !tbaa !74
  %i.jx = call i32 @setsockopt(i32 noundef %i.jv, i32 noundef 1, i32 noundef 20, ptr noundef nonnull %5, i32 noundef %i.jw) #19
  %.not27.i = icmp eq i32 %i.jx, 0
  br i1 %.not27.i, label %recv_connect_ack.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jy = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_ptl_base_framework, i64 76), align 4, !tbaa !42 ; 3 uses
  %or.cond5.i = icmp ult i32 %i.jy, 64
  br i1 %or.cond5.i, label %bb.bh, label %recv_connect_ack.exit

bb.bh:                                            ; preds = %bb.bg
  %i.jz = zext nneg i32 %i.jy to i64
  %i.ka = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.jz
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 4
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !44
  %i.kd = icmp sgt i32 %i.kc, 1
  br i1 %i.kd, label %.thread.sink.split.i, label %recv_connect_ack.exit

.thread.sink.split.i:                             ; preds = %bb.bh, %bb.au
  %.sink.i = phi i32 [ %i.iq, %bb.au ], [ %i.jy, %bb.bh ]
  %.018.ph.i = phi i32 [ %i.ik, %bb.au ], [ %.0.i37, %bb.bh ]
  call void (i32, ptr, ...) @pmix_output(i32 noundef %.sink.i, ptr noundef nonnull @.str.60) #19
  br label %recv_connect_ack.exit

recv_connect_ack.exit.thread:                     ; preds = %bb.as, %bb.au, %bb.at, %pmix_ptl_base_set_timeout.exit.thread.i
  %.018.i.ph = phi i32 [ %i.im, %pmix_ptl_base_set_timeout.exit.thread.i ], [ %i.ik, %bb.at ], [ %i.ik, %bb.au ], [ %i.ik, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.bi

recv_connect_ack.exit:                            ; preds = %pmix_ptl_base_client_handshake.exit.i, %bb.bf, %bb.bg, %bb.bh, %.thread.sink.split.i
  %.018.i = phi i32 [ %.0.i37, %pmix_ptl_base_client_handshake.exit.i ], [ %.0.i37, %bb.bf ], [ %.0.i37, %bb.bg ], [ %.018.ph.i, %.thread.sink.split.i ], [ %.0.i37, %bb.bh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %.not33 = icmp eq i32 %.018.i, 0
  br i1 %.not33, label %.loopexit, label %bb.bi

bb.bi:                                            ; preds = %recv_connect_ack.exit.thread, %recv_connect_ack.exit
  %.018.i48 = phi i32 [ %.018.i.ph, %recv_connect_ack.exit.thread ], [ %.018.i, %recv_connect_ack.exit ] ; 2 uses
  %i.ke = load i32, ptr %i.h, align 4, !tbaa !101 ; 2 uses
  %i.kf = icmp sgt i32 %i.ke, -1
  br i1 %i.kf, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.kg = call i32 @shutdown(i32 noundef %i.ke, i32 noundef 2) #19 ; 0 uses
  %i.kh = load i32, ptr %i.h, align 4, !tbaa !101
  %i.ki = call i32 @close(i32 noundef %i.kh) #19  ; 0 uses
  store i32 -1, ptr %i.h, align 4, !tbaa !101
  br label %bb.bk
end_hunk_0
