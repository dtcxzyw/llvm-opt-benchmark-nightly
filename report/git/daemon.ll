inline.NumInlined: 82
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 29
begin_hunk_0_@cmd_main:bb.a
  br i1 %i.xz, label %bb.at, label %.critedge

bb.at:                                            ; preds = %bb.as
  %i.yb = icmp ne i32 %.091373, 0
  %i.yc = icmp ne ptr %.094380, null
  %or.cond3 = select i1 %i.yb, i1 true, i1 %i.yc
  %or.cond5 = select i1 %or.cond3, i1 true, i1 %i.ya
  br i1 %or.cond5, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void (ptr, ...) @die(ptr noundef nonnull @.str.39) #23
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.yd = icmp ne i32 %.0361, 0
  %i.ye = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.yf = load i64, ptr %i.ye, align 8
  %i.yg = icmp ne i64 %i.yf, 0
  %or.cond8 = select i1 %i.yd, i1 true, i1 %i.yg
  br i1 %or.cond8, label %bb.aw, label %.critedge.thread

bb.aw:                                            ; preds = %bb.av
  call void (ptr, ...) @die(ptr noundef nonnull @.str.40) #23
  unreachable

.critedge:                                        ; preds = %bb.as
  %i.yh = icmp eq i32 %.0361, 0
  %spec.store.select = select i1 %i.yh, i32 9418, i32 %.0361 ; 2 uses
  %i.yi = icmp eq ptr %.094380, null              ; 2 uses
  %or.cond10 = select i1 %i.yi, i1 true, i1 %i.ya
  br i1 %or.cond10, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.critedge
  call void (ptr, ...) @die(ptr noundef nonnull @.str.41) #23
  unreachable

bb.ay:                                            ; preds = %.critedge
  br i1 %i.ya, label %bb.az, label %.critedge.thread

bb.az:                                            ; preds = %bb.ay
  %i.yj = call ptr @getpwnam(ptr noundef nonnull %.097386) ; 3 uses
  store ptr %i.yj, ptr @prepare_credentials.c, align 8, !tbaa !24
  %.not.i211 = icmp eq ptr %i.yj, null
  br i1 %.not.i211, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void (ptr, ...) @die(ptr noundef nonnull @.str.68, ptr noundef nonnull %.097386) #23
  unreachable

bb.bb:                                            ; preds = %bb.az
  br i1 %i.yi, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 20
  br label %prepare_credentials.exit

bb.bd:                                            ; preds = %bb.bb
  %i.yl = call ptr @getgrnam(ptr noundef nonnull %.094380) #21 ; 2 uses
  %.not10.i213 = icmp eq ptr %i.yl, null
  br i1 %.not10.i213, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void (ptr, ...) @die(ptr noundef nonnull @.str.69, ptr noundef nonnull %.094380) #23
  unreachable

bb.bf:                                            ; preds = %bb.bd
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 16
  br label %prepare_credentials.exit

prepare_credentials.exit:                         ; preds = %bb.bc, %bb.bf
  %storemerge.in.i = phi ptr [ %i.yk, %bb.bc ], [ %i.ym, %bb.bf ]
  %storemerge.i = load i32, ptr %storemerge.in.i, align 4, !tbaa !16
  store i32 %storemerge.i, ptr getelementptr inbounds nuw (i8, ptr @prepare_credentials.c, i64 8), align 8, !tbaa !27
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.av, %prepare_credentials.exit, %bb.ay
  %spec.store.select319321 = phi i32 [ %spec.store.select, %prepare_credentials.exit ], [ %spec.store.select, %bb.ay ], [ 9418, %bb.av ] ; 4 uses
  %.not.i4.i = phi i1 [ false, %prepare_credentials.exit ], [ true, %bb.ay ], [ true, %bb.av ]
  %.090 = phi ptr [ @prepare_credentials.c, %prepare_credentials.exit ], [ null, %bb.ay ], [ null, %bb.av ] ; 3 uses
  %.b = load i1, ptr @strict_paths, align 4
  br i1 %.b, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %.critedge.thread
  %i.yn = load ptr, ptr @ok_paths, align 8, !tbaa !19 ; 2 uses
  %.not129 = icmp eq ptr %i.yn, null
  br i1 %.not129, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.yo = load ptr, ptr %i.yn, align 8, !tbaa !12
  %.not130 = icmp eq ptr %i.yo, null
  br i1 %.not130, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  call void (ptr, ...) @die(ptr noundef nonnull @.str.42) #23
  unreachable

bb.bj:                                            ; preds = %bb.bh, %.critedge.thread
  %i.yp = load ptr, ptr @base_path, align 8, !tbaa !12 ; 2 uses
  %.not131 = icmp eq ptr %i.yp, null
  br i1 %.not131, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.yq = call i32 @is_directory(ptr noundef nonnull %i.yp) #21
  %.not132 = icmp eq i32 %i.yq, 0
  br i1 %.not132, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.yr = load ptr, ptr @base_path, align 8, !tbaa !12
  call void (ptr, ...) @die(ptr noundef nonnull @.str.43, ptr noundef %i.yr) #23
  unreachable

bb.bm:                                            ; preds = %bb.bk, %bb.bj
  %i.ys = load i32, ptr @log_destination, align 4, !tbaa !16
  %.not133 = icmp eq i32 %i.ys, 1
  br i1 %.not133, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.yt = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.yu = call ptr @freopen64(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, ptr noundef %i.yt) #21
  %.not134 = icmp eq ptr %i.yu, null
  br i1 %.not134, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  call void (ptr, ...) @die_errno(ptr noundef nonnull @.str.46) #23
  unreachable

bb.bp:                                            ; preds = %bb.bn, %bb.bm
  %i.yv = icmp ne i32 %.084367, 0
  %or.cond12 = select i1 %i.xz, i1 true, i1 %i.yv
  br i1 %or.cond12, label %bb.bq, label %bb.fu

bb.bq:                                            ; preds = %bb.bp
  %i.yw = call ptr @getenv(ptr noundef nonnull @.str.70) #21 ; 2 uses
  %i.yx = call ptr @getenv(ptr noundef nonnull @.str.71) #21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %11, ptr noundef nonnull align 8 dereferenceable(104) @__const.execute.hi, i64 104, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) @__const.execute.env, i64 24, i1 false)
  %.not.i214 = icmp eq ptr %i.yw, null
  br i1 %.not.i214, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.not34.i = icmp eq ptr %i.yx, null
  %i.yy = select i1 %.not34.i, ptr @.str.73, ptr %i.yx
  call void (ptr, ...) @loginfo(ptr noundef nonnull @.str.72, ptr noundef nonnull %i.yw, ptr noundef nonnull %i.yy)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #21
  store i32 1, ptr %i.h, align 4, !tbaa !16
  %i.yz = call i32 @setsockopt(i32 noundef 0, i32 noundef 1, i32 noundef 9, ptr noundef nonnull %i.h, i32 noundef 4) #21
  %i.za = icmp slt i32 %i.yz, 0
  br i1 %i.za, label %bb.bt, label %set_keep_alive.exit.i

bb.bt:                                            ; preds = %bb.bs
  %i.zb = tail call ptr @__errno_location() #24
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !16 ; 2 uses
  %.not.i.i = icmp eq i32 %i.zc, 88
  br i1 %.not.i.i, label %set_keep_alive.exit.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.zd = call ptr @strerror(i32 noundef %i.zc) #21
  call void (ptr, ...) @logerror(ptr noundef nonnull @.str.76, ptr noundef %i.zd)
  br label %set_keep_alive.exit.i

set_keep_alive.exit.i:                            ; preds = %bb.bu, %bb.bt, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  %i.ze = load i32, ptr @init_timeout, align 4, !tbaa !16 ; 2 uses
  %.not35.i = icmp eq i32 %i.ze, 0
  %i.zf = load i32, ptr @timeout, align 4
  %i.zg = select i1 %.not35.i, i32 %i.zf, i32 %i.ze
  %i.zh = call i32 @alarm(i32 noundef %i.zg) #21  ; 0 uses
  %i.zi = call i32 @packet_read(i32 noundef 0, ptr noundef nonnull @packet_buffer, i32 noundef 65520, i32 noundef 0) #21 ; 2 uses
  %i.zj = call i32 @alarm(i32 noundef 0) #21      ; 0 uses
  %i.zk = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @packet_buffer) #22 ; 3 uses
  %i.zl = trunc i64 %i.zk to i32                  ; 3 uses
  %.not36.i = icmp eq i32 %i.zl, 0
  br i1 %.not36.i, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %set_keep_alive.exit.i
  %i.zm = shl i64 %i.zk, 32
  %sext.i = add i64 %i.zm, -4294967296
  %i.zn = ashr exact i64 %sext.i, 32
  %i.zo = getelementptr inbounds i8, ptr @packet_buffer, i64 %i.zn ; 2 uses
  %i.zp = load i8, ptr %i.zo, align 1, !tbaa !15
  %i.zq = icmp eq i8 %i.zp, 10
  br i1 %i.zq, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i8 0, ptr %i.zo, align 1, !tbaa !15
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %set_keep_alive.exit.i
  %.not37.i = icmp eq i32 %i.zi, %i.zl
  br i1 %.not37.i, label %bb.ct, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %sext38.i = shl i64 %i.zk, 32
  %i.zr = ashr exact i64 %sext38.i, 32
  %i.zs = getelementptr inbounds i8, ptr @packet_buffer, i64 %i.zr ; 3 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 1 ; 7 uses
  %i.zu = xor i32 %i.zl, -1
  %i.zv = add i32 %i.zi, %i.zu                    ; 3 uses
  %i.zw = sext i32 %i.zv to i64
  %i.zx = getelementptr inbounds i8, ptr %i.zt, i64 %i.zw ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) @__const.run_access_hook.buf, i64 24, i1 false)
  %14 = zext nneg i32 %i.zv to i64
  %15 = getelementptr inbounds nuw i8, ptr %i.zt, i64 %14
  %i.zy = icmp sgt i32 %i.zv, 0
  br i1 %i.zy, label %bb.bz, label %parse_host_arg.exit.i.i

bb.bz:                                            ; preds = %bb.by
  %i.zz = load i8, ptr %i.zt, align 1, !tbaa !15
  %.not.i.i.i = icmp eq i8 %i.zz, 0
  br i1 %.not.i.i.i, label %parse_host_arg.exit.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.aaa = getelementptr inbounds nuw i8, ptr %11, i64 96 ; 4 uses
  %i.aab = load i8, ptr %i.aaa, align 8
  %i.aac = or i8 %i.aab, 2
  store i8 %i.aac, ptr %i.aaa, align 8
  %i.aad = call i32 @strncasecmp(ptr noundef nonnull @.str.79, ptr noundef nonnull %i.zt, i64 noundef 5) #22
  %i.aae = icmp eq i32 %i.aad, 0
  br i1 %i.aae, label %bb.cb, label %bb.ck

bb.cb:                                            ; preds = %bb.ca
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zs, i64 6 ; 8 uses
  %i.aag = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aaf) #22
  call void (ptr, ...) @loginfo(ptr noundef nonnull @.str.80, ptr noundef nonnull %i.aaf)
  %i.aah = load i8, ptr %i.aaf, align 1, !tbaa !15
  switch i8 %i.aah, label %bb.ch [
    i8 0, label %bb.cj
    i8 91, label %bb.cc
  ]

bb.cc:                                            ; preds = %bb.cb
  %i.aai = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.aaf, i32 noundef 93) #22 ; 4 uses
  %.not20.i.i.i.i = icmp eq ptr %i.aai, null
  br i1 %.not20.i.i.i.i, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  call void (ptr, ...) @die(ptr noundef nonnull @.str.82) #23
  unreachable

bb.ce:                                            ; preds = %bb.cc
  store i8 0, ptr %i.aai, align 1, !tbaa !15
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.zs, i64 7 ; 2 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aai, i64 1
  %i.aal = load i8, ptr %i.aak, align 1, !tbaa !15
  switch i8 %i.aal, label %bb.cg [
    i8 0, label %parse_host_and_port.exit.thread.i.i.i
    i8 58, label %bb.cf
  ]

bb.cf:                                            ; preds = %bb.ce
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aai, i64 2
  br label %parse_host_and_port.exit.i.i.i

bb.cg:                                            ; preds = %bb.ce
  call void (ptr, ...) @die(ptr noundef nonnull @.str.83) #23
  unreachable

bb.ch:                                            ; preds = %bb.cb
  %i.aan = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.aaf, i32 noundef 58) #22 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.aan, null
  br i1 %.not.i.i.i.i, label %parse_host_and_port.exit.thread.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  store i8 0, ptr %i.aan, align 1, !tbaa !15
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 1
  br label %parse_host_and_port.exit.i.i.i

parse_host_and_port.exit.i.i.i:                   ; preds = %bb.ci, %bb.cf
  %.131.i.i.i = phi ptr [ %i.aaj, %bb.cf ], [ %i.aaf, %bb.ci ]
  %.029.i.i.i = phi ptr [ %i.aam, %bb.cf ], [ %i.aao, %bb.ci ]
  %i.aap = getelementptr inbounds nuw i8, ptr %11, i64 72
  call fastcc void @sanitize_client(ptr noundef %i.aap, ptr noundef nonnull %.029.i.i.i)
  br label %parse_host_and_port.exit.thread.i.i.i

parse_host_and_port.exit.thread.i.i.i:            ; preds = %parse_host_and_port.exit.i.i.i, %bb.ch, %bb.ce
  %.13135.i.i.i = phi ptr [ %.131.i.i.i, %parse_host_and_port.exit.i.i.i ], [ %i.aaj, %bb.ce ], [ %i.aaf, %bb.ch ]
  call fastcc void @sanitize_client(ptr noundef nonnull %11, ptr noundef nonnull readonly %.13135.i.i.i)
  call void @strbuf_tolower(ptr noundef nonnull %11) #21
  %i.aaq = load i8, ptr %i.aaa, align 8
  %i.aar = and i8 %i.aaq, -2
  store i8 %i.aar, ptr %i.aaa, align 8
  br label %bb.cj

bb.cj:                                            ; preds = %parse_host_and_port.exit.thread.i.i.i, %bb.cb
  %i.aas = shl i64 %i.aag, 32
  %sext.i.i.i = add i64 %i.aas, 4294967296
  %i.aat = ashr exact i64 %sext.i.i.i, 32
  %i.aau = getelementptr inbounds i8, ptr %i.aaf, i64 %i.aat
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ca
  %.0.i.i.i = phi ptr [ %i.aau, %bb.cj ], [ %i.zt, %bb.ca ] ; 4 uses
  %i.aav = icmp ult ptr %.0.i.i.i, %15
  br i1 %i.aav, label %bb.cl, label %parse_host_arg.exit.i.i

bb.cl:                                            ; preds = %bb.ck
  %i.aaw = load i8, ptr %.0.i.i.i, align 1, !tbaa !15
  %.not26.i.i.i = icmp eq i8 %i.aaw, 0
  br i1 %.not26.i.i.i, label %parse_host_arg.exit.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void (ptr, ...) @die(ptr noundef nonnull @.str.81) #23
  unreachable

parse_host_arg.exit.i.i:                          ; preds = %bb.cl, %bb.ck, %bb.bz, %bb.by
  %.1.i.i.i = phi ptr [ %.0.i.i.i, %bb.cl ], [ %.0.i.i.i, %bb.ck ], [ %i.zt, %bb.bz ], [ %i.zt, %bb.by ] ; 2 uses
  %i.aax = icmp ult ptr %.1.i.i.i, %i.zx
  br i1 %i.aax, label %.lr.ph.i.i, label %parse_extra_args.exit.i

.lr.ph.i.i:                                       ; preds = %parse_host_arg.exit.i.i
  %i.aay = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cr, %.lr.ph.i.i
  %.016.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i ], [ %i.abm, %bb.cr ] ; 5 uses
  %i.aba = load i8, ptr %.016.i.i, align 1, !tbaa !15
  %.not12.i.i = icmp eq i8 %i.aba, 0
  br i1 %.not12.i.i, label %bb.cr, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.abb = load i64, ptr %i.aay, align 8, !tbaa !28 ; 3 uses
  %.not13.i.i = icmp eq i64 %i.abb, 0
  br i1 %.not13.i.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.abc = load i64, ptr %10, align 8, !tbaa !31  ; 2 uses
  %.not.i.i14.i.i = icmp eq i64 %i.abc, 0
  %.neg.i.i.i = add i64 %i.abb, 1                 ; 2 uses
  %.not.i15.i.i = icmp eq i64 %i.abc, %.neg.i.i.i
  %or.cond.i.i = or i1 %.not.i.i14.i.i, %.not.i15.i.i
  br i1 %or.cond.i.i, label %strbuf_avail.exit.thread.i.i.i, label %strbuf_addch.exit.i.i

strbuf_avail.exit.thread.i.i.i:                   ; preds = %bb.cp
  call void @strbuf_grow(ptr noundef nonnull %10, i64 noundef 1) #21
  %.pre.i.i.i = load i64, ptr %i.aay, align 8, !tbaa !28 ; 2 uses
  %.pre7.i.i.i = add i64 %.pre.i.i.i, 1
  br label %strbuf_addch.exit.i.i

strbuf_addch.exit.i.i:                            ; preds = %strbuf_avail.exit.thread.i.i.i, %bb.cp
  %.pre-phi.i.i.i = phi i64 [ %.pre7.i.i.i, %strbuf_avail.exit.thread.i.i.i ], [ %.neg.i.i.i, %bb.cp ]
  %i.abd = phi i64 [ %.pre.i.i.i, %strbuf_avail.exit.thread.i.i.i ], [ %i.abb, %bb.cp ]
  %i.abe = load ptr, ptr %i.aaz, align 8, !tbaa !32
  store i64 %.pre-phi.i.i.i, ptr %i.aay, align 8, !tbaa !28
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 %i.abd
  store i8 58, ptr %i.abf, align 1, !tbaa !15
  %i.abg = load ptr, ptr %i.aaz, align 8, !tbaa !32
  %i.abh = load i64, ptr %i.aay, align 8, !tbaa !28
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abg, i64 %i.abh
  store i8 0, ptr %i.abi, align 1, !tbaa !15
  br label %bb.cq

bb.cq:                                            ; preds = %strbuf_addch.exit.i.i, %bb.co
  %i.abj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.016.i.i) #22
  call void @strbuf_add(ptr noundef nonnull %10, ptr noundef nonnull %.016.i.i, i64 noundef %i.abj) #21
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cn
  %i.abk = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.016.i.i) #22
  %i.abl = getelementptr i8, ptr %.016.i.i, i64 %i.abk
  %i.abm = getelementptr i8, ptr %i.abl, i64 1    ; 2 uses
  %i.abn = icmp ult ptr %i.abm, %i.zx
  br i1 %i.abn, label %bb.cn, label %._crit_edge.i.i, !llvm.loop !33

._crit_edge.i.i:                                  ; preds = %bb.cr
  %.pre.i.i = load i64, ptr %i.aay, align 8, !tbaa !28
  %i.abo = icmp eq i64 %.pre.i.i, 0
  br i1 %i.abo, label %parse_extra_args.exit.i, label %bb.cs

bb.cs:                                            ; preds = %._crit_edge.i.i
  %i.abp = load ptr, ptr %i.aaz, align 8, !tbaa !32
  call void (ptr, ...) @loginfo(ptr noundef nonnull @.str.77, ptr noundef %i.abp)
  %i.abq = load ptr, ptr %i.aaz, align 8, !tbaa !32
  %i.abr = call ptr (ptr, ptr, ...) @strvec_pushf(ptr noundef nonnull %12, ptr noundef nonnull @.str.78, ptr noundef %i.abq) #21 ; 0 uses
  br label %parse_extra_args.exit.i

parse_extra_args.exit.i:                          ; preds = %bb.cs, %._crit_edge.i.i, %parse_host_arg.exit.i.i
  call void @strbuf_release(ptr noundef nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.ct

bb.ct:                                            ; preds = %parse_extra_args.exit.i, %bb.bx
  %i.abs = load <4 x i8>, ptr @packet_buffer, align 16
  %.fr = freeze <4 x i8> %i.abs
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %i.abt = icmp eq i32 %.fr.scalar, 762603879
  br i1 %i.abt, label %bb.cu, label %.loopexit.2.i

bb.cu:                                            ; preds = %bb.ct
  %i.abu = load ptr, ptr @daemon_service, align 16, !tbaa !34 ; 2 uses
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cw, %bb.cu
  %.07.i40.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @packet_buffer, i64 4), %bb.cu ], [ %i.abw, %bb.cw ] ; 4 uses
  %.06.i41.i = phi ptr [ %i.abu, %bb.cu ], [ %i.aby, %bb.cw ] ; 2 uses
  %i.abv = load i8, ptr %.06.i41.i, align 1, !tbaa !15 ; 2 uses
  %.not.i42.i = icmp eq i8 %i.abv, 0
  br i1 %.not.i42.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.abw = getelementptr inbounds nuw i8, ptr %.07.i40.i, i64 1
  %i.abx = load i8, ptr %.07.i40.i, align 1, !tbaa !15
  %i.aby = getelementptr inbounds nuw i8, ptr %.06.i41.i, i64 1
  %i.abz = icmp eq i8 %i.abx, %i.abv
  br i1 %i.abz, label %bb.cv, label %.loopexit.i, !llvm.loop !36

bb.cx:                                            ; preds = %bb.cv
  %i.aca = load i8, ptr %.07.i40.i, align 1, !tbaa !15
  %i.acb = icmp eq i8 %i.aca, 32
  br i1 %i.acb, label %bb.cy, label %.loopexit.i

bb.cy:                                            ; preds = %bb.fs, %bb.fp, %bb.cx
  %.lcssa86.i = phi ptr [ @daemon_service, %bb.cx ], [ getelementptr inbounds nuw (i8, ptr @daemon_service, i64 32), %bb.fp ], [ getelementptr inbounds nuw (i8, ptr @daemon_service, i64 64), %bb.fs ] ; 8 uses
  %.lcssa.i = phi ptr [ %i.abu, %bb.cx ], [ %i.aie, %bb.fp ], [ %i.aim, %bb.fs ]
  %.07.i40.lcssa.lcssa.i = phi ptr [ %.07.i40.i, %bb.cx ], [ %.07.i40.1.i, %bb.fp ], [ %.07.i40.2.i, %bb.fs ]
  %i.acc = getelementptr inbounds nuw i8, ptr %.07.i40.lcssa.lcssa.i, i64 1 ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #21
  %i.acd = getelementptr inbounds nuw i8, ptr %.lcssa86.i, i64 24
  %i.ace = load i32, ptr %i.acd, align 8, !tbaa !37 ; 3 uses
  store i32 %i.ace, ptr %i.g, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) @__const.run_access_hook.buf, i64 24, i1 false)
  call void (ptr, ...) @loginfo(ptr noundef nonnull @.str.84, ptr noundef %.lcssa.i, ptr noundef nonnull %i.acc)
  %.not.i44.i = icmp eq i32 %i.ace, 0
  br i1 %.not.i44.i, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %bb.cy
  %i.acf = getelementptr inbounds nuw i8, ptr %.lcssa86.i, i64 28
  %i.acg = load i32, ptr %i.acf, align 4, !tbaa !38
  %.not23.i.i = icmp eq i32 %i.acg, 0
  br i1 %.not23.i.i, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.ach = load ptr, ptr %.lcssa86.i, align 8, !tbaa !34
  call void (ptr, ...) @logerror(ptr noundef nonnull @.str.85, ptr noundef %i.ach)
  %i.aci = tail call ptr @__errno_location() #24
  store i32 13, ptr %i.aci, align 4, !tbaa !16
  %.b.i.i.i = load i1, ptr @informative_errors, align 4
  %spec.store.select.i.i.i = select i1 %.b.i.i.i, ptr @.str.86, ptr @.str.93
  call void (i32, ptr, ...) @packet_write_fmt(i32 noundef 1, ptr noundef nonnull @.str.94, ptr noundef nonnull %spec.store.select.i.i.i, ptr noundef nonnull %i.acc) #21
  br label %bb.ft

bb.db:                                            ; preds = %bb.cz, %bb.cy
  %i.acj = call i32 @daemon_avoid_alias(ptr noundef nonnull %i.acc) #21
  %.not.i.i45.i = icmp eq i32 %i.acj, 0
  br i1 %.not.i.i45.i, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void (ptr, ...) @logerror(ptr noundef nonnull @.str.95, ptr noundef nonnull %i.acc)
  br label %bb.er

bb.dd:                                            ; preds = %bb.db
  %i.ack = load i8, ptr %i.acc, align 1, !tbaa !15 ; 3 uses
  %i.acl = icmp eq i8 %i.ack, 126
  br i1 %i.acl, label %bb.de, label %bb.dj

bb.de:                                            ; preds = %bb.dd
  %i.acm = load ptr, ptr @user_path, align 8, !tbaa !12 ; 3 uses
  %.not96.i.i.i = icmp eq ptr %i.acm, null
  br i1 %.not96.i.i.i, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  call void (ptr, ...) @logerror(ptr noundef nonnull @.str.96, ptr noundef nonnull %i.acc)
  br label %bb.er

bb.dg:                                            ; preds = %bb.de
  %i.acn = load i8, ptr %i.acm, align 1, !tbaa !15
  %.not97.i.i.i = icmp eq i8 %i.acn, 0
  br i1 %.not97.i.i.i, label %.thread.i.i.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.aco = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.acc) #22 ; 2 uses
  %i.acp = trunc i64 %i.aco to i32
  %i.acq = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.acc, i32 noundef 47) #22 ; 2 uses
  %.not98.i.i.i = icmp eq ptr %i.acq, null
  %sext.i.i56.i = shl i64 %i.aco, 32
  %i.acr = ashr exact i64 %sext.i.i56.i, 32
  %i.acs = getelementptr inbounds i8, ptr %i.acc, i64 %i.acr
  %.071.i.i.i = select i1 %.not98.i.i.i, ptr %i.acs, ptr %i.acq ; 3 uses
  %i.act = ptrtoint ptr %.071.i.i.i to i64
  %i.acu = ptrtoint ptr %i.acc to i64
  %i.acv = sub i64 %i.act, %i.acu
  %i.acw = trunc i64 %i.acv to i32                ; 3 uses
  %i.acx = sub nsw i32 %i.acp, %i.acw             ; 2 uses
  call void (ptr, ...) @loginfo(ptr noundef nonnull @.str.97, ptr noundef nonnull %i.acm, ptr noundef nonnull %i.acc, i32 noundef %i.acw, i32 noundef %i.acx, ptr noundef nonnull %.071.i.i.i)
  %i.acy = load ptr, ptr @user_path, align 8, !tbaa !12
  %i.acz = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @path_ok.rpath, i64 noundef 4096, ptr noundef nonnull @.str.98, i32 noundef %i.acw, ptr noundef nonnull %i.acc, ptr noundef %i.acy, i32 noundef %i.acx, ptr noundef nonnull %.071.i.i.i) #21
  %i.ada = icmp ult i32 %i.acz, 4096
  br i1 %i.ada, label %.thread.i.i.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void (ptr, ...) @logerror(ptr noundef nonnull @.str.99, ptr noundef nonnull @path_ok.rpath)
  br label %bb.er
end_hunk_0
