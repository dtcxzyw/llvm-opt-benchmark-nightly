Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/tcp?download=true
inline.NumInlined: 912
inline.NumDeleted: 363
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@do_tcp_getsockopt:bb.a
  br i1 %.not220, label %bb.dh, label %tcp_can_repair_sock.exit.thread

copy_to_sockptr.exit292.thread:                   ; preds = %bb.an
  store i32 0, ptr %i.f, align 1
  br label %bb.dh

copy_to_sockptr.exit297.thread:                   ; preds = %bb.an
  store i32 %i.ea, ptr %i.f, align 1
  br label %bb.ao

copy_to_sockptr.exit297:                          ; preds = %.thread402
  %i.ej = call i64 @_copy_to_user(ptr noundef %i.f, ptr noundef nonnull %i.b, i64 noundef range(i64 -2147483648, 2147483648) 4) #20
  %i.ek = and i64 %i.ej, 4294967295
  %.not221 = icmp eq i64 %i.ek, 0
  br i1 %.not221, label %copy_to_sockptr.exit297._crit_edge, label %tcp_can_repair_sock.exit.thread

copy_to_sockptr.exit297._crit_edge:               ; preds = %copy_to_sockptr.exit297
  %.pre480 = load i32, ptr %i.b, align 4
  br label %bb.ao

bb.ao:                                            ; preds = %copy_to_sockptr.exit297._crit_edge, %copy_to_sockptr.exit297.thread
  %i.el = phi i32 [ %i.ea, %copy_to_sockptr.exit297.thread ], [ %.pre480, %copy_to_sockptr.exit297._crit_edge ]
  %i.em = phi ptr [ %i.eb, %copy_to_sockptr.exit297.thread ], [ %i.ef, %copy_to_sockptr.exit297._crit_edge ]
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = getelementptr i8, ptr %i.en, i64 64
  %i.ep = sext i32 %i.el to i64
  %i.eq = call fastcc i32 @copy_to_sockptr(ptr %3, i8 %4, ptr noundef %i.eo, i64 noundef %i.ep) #21, !srcloc !145
  %.not222 = icmp eq i32 %i.eq, 0
  %.244 = select i1 %.not222, i32 0, i32 -14
  br label %tcp_can_repair_sock.exit.thread

bb.ap:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false), !annotation !18
  br i1 %i.i, label %copy_from_sockptr.exit302.thread, label %copy_from_sockptr.exit302

copy_from_sockptr.exit302.thread:                 ; preds = %bb.ap
  %i.er = load i32, ptr %i.f, align 1
  store i32 %i.er, ptr %i.b, align 4
  br label %bb.aq

copy_from_sockptr.exit302:                        ; preds = %bb.ap
  %i.es = call i64 @_copy_from_user(ptr noundef nonnull %i.b, ptr noundef %i.f, i64 noundef range(i64 -2147483648, 4294967296) 4) #20
  %i.et = and i64 %i.es, 4294967295
  %.not215 = icmp eq i64 %i.et, 0
  br i1 %.not215, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %copy_from_sockptr.exit302.thread, %copy_from_sockptr.exit302
  %i.eu = call i32 @tcp_fastopen_get_cipher(ptr noundef %.val, ptr noundef %0, ptr noundef nonnull %i.d) #20
  %i.ev = shl i32 %i.eu, 4
  %i.ew = load i32, ptr %i.b, align 4
  %i.ex = call i32 @llvm.umin.i32(i32 %i.ew, i32 %i.ev) ; 3 uses
  store i32 %i.ex, ptr %i.b, align 4
  br i1 %i.i, label %copy_to_sockptr.exit307.thread, label %copy_to_sockptr.exit307

copy_to_sockptr.exit307.thread:                   ; preds = %bb.aq
  store i32 %i.ex, ptr %i.f, align 1
  br label %bb.ar

copy_to_sockptr.exit307:                          ; preds = %bb.aq
  %i.ey = call i64 @_copy_to_user(ptr noundef %i.f, ptr noundef nonnull %i.b, i64 noundef range(i64 -2147483648, 2147483648) 4) #20
  %i.ez = and i64 %i.ey, 4294967295
  %.not216 = icmp eq i64 %i.ez, 0
  br i1 %.not216, label %copy_to_sockptr.exit307._crit_edge, label %bb.as

copy_to_sockptr.exit307._crit_edge:               ; preds = %copy_to_sockptr.exit307
  %.pre479 = load i32, ptr %i.b, align 4
  br label %bb.ar

bb.ar:                                            ; preds = %copy_to_sockptr.exit307._crit_edge, %copy_to_sockptr.exit307.thread
  %i.fa = phi i32 [ %.pre479, %copy_to_sockptr.exit307._crit_edge ], [ %i.ex, %copy_to_sockptr.exit307.thread ]
  %i.fb = sext i32 %i.fa to i64
  %i.fc = call fastcc i32 @copy_to_sockptr(ptr %3, i8 %4, ptr noundef nonnull %i.d, i64 noundef %i.fb) #21, !srcloc !146
  %.not217 = icmp eq i32 %i.fc, 0
  %.245 = select i1 %.not217, i32 0, i32 -14
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %copy_to_sockptr.exit307, %copy_from_sockptr.exit302
  %.2 = phi i32 [ -14, %copy_to_sockptr.exit307 ], [ -14, %copy_from_sockptr.exit302 ], [ %.245, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %tcp_can_repair_sock.exit.thread

bb.at:                                            ; preds = %bb.b
  %i.fd = getelementptr i8, ptr %0, i64 1921
  %i.fe = load i16, ptr %i.fd, align 1
  %i.ff = lshr i16 %i.fe, 7
  %i.fg = and i16 %i.ff, 1
  %i.fh = zext nneg i16 %i.fg to i32
  br label %.sink.split

bb.au:                                            ; preds = %bb.b
  %i.fi = getelementptr i8, ptr %0, i64 1471
  %i.fj = load i8, ptr %i.fi, align 1
  %i.fk = and i8 %i.fj, 1
  %i.fl = zext nneg i8 %i.fk to i32
  br label %.sink.split

bb.av:                                            ; preds = %bb.b
  %i.fm = getelementptr i8, ptr %0, i64 1471
  %i.fn = load i8, ptr %i.fm, align 1
  %i.fo = and i8 %i.fn, 1
  %.not214 = icmp eq i8 %i.fo, 0
  br i1 %.not214, label %tcp_can_repair_sock.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fp = getelementptr i8, ptr %0, i64 1923
  %i.fq = load i8, ptr %i.fp, align 1
  %i.fr = zext i8 %i.fq to i32
  br label %.sink.split

bb.ax:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  br i1 %i.i, label %copy_from_sockptr.exit312.thread, label %copy_from_sockptr.exit312

copy_from_sockptr.exit312.thread:                 ; preds = %bb.ax
  %i.fs = load i32, ptr %i.f, align 1             ; 2 uses
  store i32 %i.fs, ptr %i.b, align 4
  br label %bb.ay

copy_from_sockptr.exit312:                        ; preds = %bb.ax
  %i.ft = call i64 @_copy_from_user(ptr noundef nonnull %i.b, ptr noundef %i.f, i64 noundef range(i64 -2147483648, 4294967296) 4) #20
  %i.fu = and i64 %i.ft, 4294967295
  %.not210 = icmp eq i64 %i.fu, 0
  br i1 %.not210, label %copy_from_sockptr.exit312._crit_edge, label %bb.bb

copy_from_sockptr.exit312._crit_edge:             ; preds = %copy_from_sockptr.exit312
  %.pre478 = load i32, ptr %i.b, align 4
  br label %bb.ay

bb.ay:                                            ; preds = %copy_from_sockptr.exit312._crit_edge, %copy_from_sockptr.exit312.thread
  %i.fv = phi i32 [ %.pre478, %copy_from_sockptr.exit312._crit_edge ], [ %i.fs, %copy_from_sockptr.exit312.thread ]
  %.not211 = icmp eq i32 %i.fv, 20
  br i1 %.not211, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.fw = getelementptr i8, ptr %0, i64 1471
  %i.fx = load i8, ptr %i.fw, align 1
  %i.fy = and i8 %i.fx, 1
  %.not212 = icmp eq i8 %i.fy, 0
  br i1 %.not212, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fz = getelementptr i8, ptr %0, i64 1476
  %i.ga = load i32, ptr %i.fz, align 4
  store i32 %i.ga, ptr %8, align 4
  %i.gb = getelementptr i8, ptr %0, i64 1444
  %i.gc = load i32, ptr %i.gb, align 4
  %i.gd = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.gc, ptr %i.gd, align 4
  %i.ge = getelementptr i8, ptr %0, i64 1408
  %i.gf = load i32, ptr %i.ge, align 64
  %i.gg = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.gf, ptr %i.gg, align 4
  %i.gh = getelementptr i8, ptr %0, i64 1752
  %i.gi = load i32, ptr %i.gh, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %i.gi, ptr %i.gj, align 4
  %i.gk = getelementptr i8, ptr %0, i64 1812
  %i.gl = load i32, ptr %i.gk, align 4
  %i.gm = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %i.gl, ptr %i.gm, align 4
  %i.gn = call fastcc i32 @copy_to_sockptr(ptr %3, i8 %4, ptr noundef nonnull %8, i64 noundef 20) #21, !srcloc !147
  %.not213 = icmp eq i32 %i.gn, 0
  %.246 = select i1 %.not213, i32 0, i32 -14
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay, %copy_from_sockptr.exit312
  %.3 = phi i32 [ -22, %bb.ay ], [ -14, %copy_from_sockptr.exit312 ], [ %.246, %bb.ba ], [ -1, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %tcp_can_repair_sock.exit.thread

bb.bc:                                            ; preds = %bb.b
  %i.go = getelementptr i8, ptr %0, i64 1923
  %i.gp = load i8, ptr %i.go, align 1
  switch i8 %i.gp, label %tcp_can_repair_sock.exit.thread [
    i8 2, label %bb.bd
    i8 1, label %bb.be
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.gq = getelementptr i8, ptr %0, i64 1604
  %i.gr = load i32, ptr %i.gq, align 4
  br label %.sink.split

bb.be:                                            ; preds = %bb.bc
  %i.gs = getelementptr i8, ptr %0, i64 1704
  %i.gt = load i32, ptr %i.gs, align 8
  br label %.sink.split

bb.bf:                                            ; preds = %bb.b
  %i.gu = getelementptr i8, ptr %0, i64 1300
  %i.gv = load volatile i32, ptr %i.gu, align 4
  br label %.sink.split

bb.bg:                                            ; preds = %bb.b
  %i.gw = getelementptr i8, ptr %0, i64 1080
  %i.gx = load volatile i32, ptr %i.gw, align 8
  br label %.sink.split

bb.bh:                                            ; preds = %bb.b
  %i.gy = getelementptr i8, ptr %0, i64 1921
  %11 = load i16, ptr %i.gy, align 1
  %12 = lshr i16 %11, 8
  %13 = and i16 %12, 1
  %i.gz = zext nneg i16 %13 to i32
  br label %.sink.split

bb.bi:                                            ; preds = %bb.b
  %i.ha = getelementptr i8, ptr %0, i64 1921
  %i.hb = load i16, ptr %i.ha, align 1
  %i.hc = lshr i16 %i.hb, 9
  %i.hd = and i16 %i.hc, 1
  %i.he = zext nneg i16 %i.hd to i32
  br label %.sink.split

bb.bj:                                            ; preds = %bb.b
  %i.hf = getelementptr i8, ptr %0, i64 1928
  %i.hg = load volatile i32, ptr %i.hf, align 8
  br label %.sink.split

bb.bk:                                            ; preds = %bb.b
  %i.hh = getelementptr i8, ptr %0, i64 1471      ; 2 uses
  %i.hi = load i8, ptr %i.hh, align 1
  %i.hj = and i8 %i.hi, 2
  %.not471 = icmp eq i8 %i.hj, 0
  %i.hk = call i64 @ktime_get() #20               ; 2 uses
  br i1 %.not471, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hl = udiv i64 %i.hk, 1000
  br label %tcp_clock_ts.exit

bb.bm:                                            ; preds = %bb.bk
  %i.hm = udiv i64 %i.hk, 1000000
  br label %tcp_clock_ts.exit

tcp_clock_ts.exit:                                ; preds = %bb.bl, %bb.bm
  %i.hn = phi i64 [ %i.hl, %bb.bl ], [ %i.hm, %bb.bm ]
  %i.ho = trunc i64 %i.hn to i32
  %i.hp = getelementptr i8, ptr %0, i64 1440
  %i.hq = load volatile i32, ptr %i.hp, align 32
  %i.hr = add i32 %i.hq, %i.ho                    ; 2 uses
  %i.hs = load i8, ptr %i.hh, align 1
  %i.ht = and i8 %i.hs, 2
  %.not209 = icmp eq i8 %i.ht, 0
  br i1 %.not209, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %tcp_clock_ts.exit
  %i.hu = or i32 %i.hr, 1
  br label %.sink.split

bb.bo:                                            ; preds = %tcp_clock_ts.exit
  %i.hv = and i32 %i.hr, -2
  br label %.sink.split

bb.bp:                                            ; preds = %bb.b
  %i.hw = getelementptr i8, ptr %0, i64 1420
  %i.hx = load volatile i32, ptr %i.hw, align 4
  br label %.sink.split

bb.bq:                                            ; preds = %bb.b
  %i.hy = getelementptr i8, ptr %0, i64 1471
  %i.hz = load i8, ptr %i.hy, align 1
  %i.ia = lshr i8 %i.hz, 4
  %i.ib = and i8 %i.ia, 1
  %i.ic = zext nneg i8 %i.ib to i32
  br label %.sink.split

bb.br:                                            ; preds = %bb.b
  %i.id = getelementptr i8, ptr %0, i64 1924
  %i.ie = load i8, ptr %i.id, align 4
  %i.if = and i8 %i.ie, 3
  %i.ig = zext nneg i8 %i.if to i32
  br label %.sink.split

bb.bs:                                            ; preds = %bb.b
  br i1 %i.i, label %copy_from_sockptr.exit317.thread, label %copy_from_sockptr.exit317

copy_from_sockptr.exit317.thread:                 ; preds = %bb.bs
  %i.ih = load i32, ptr %i.f, align 1
  store i32 %i.ih, ptr %i.b, align 4
  br label %bb.bt

copy_from_sockptr.exit317:                        ; preds = %bb.bs
  %i.ii = call i64 @_copy_from_user(ptr noundef nonnull %i.b, ptr noundef %i.f, i64 noundef range(i64 -2147483648, 4294967296) 4) #20
  %i.ij = and i64 %i.ii, 4294967295
  %.not203 = icmp eq i64 %i.ij, 0
  br i1 %.not203, label %bb.bt, label %tcp_can_repair_sock.exit.thread

bb.bt:                                            ; preds = %copy_from_sockptr.exit317.thread, %copy_from_sockptr.exit317
  call void @sockopt_lock_sock(ptr noundef %0) #20
  %i.ik = getelementptr i8, ptr %0, i64 2328      ; 4 uses
  %i.il = load ptr, ptr %i.ik, align 8            ; 4 uses
  %.not204 = icmp eq ptr %i.il, null
  br i1 %.not204, label %bb.cc, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.im = load i32, ptr %i.b, align 4
  %i.in = load i32, ptr %i.il, align 4
  %i.io = getelementptr i8, ptr %i.il, i64 4
  %i.ip = load i32, ptr %i.io, align 4
  %i.iq = add i32 %i.ip, %i.in
  %i.ir = getelementptr i8, ptr %i.il, i64 8
  %i.is = load i32, ptr %i.ir, align 4
  %i.it = add i32 %i.iq, %i.is                    ; 5 uses
  %i.iu = icmp ult i32 %i.im, %i.it
  store i32 %i.it, ptr %i.b, align 4
  br i1 %i.iu, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  br i1 %i.i, label %copy_to_sockptr.exit322.thread, label %copy_to_sockptr.exit322

copy_to_sockptr.exit322.thread:                   ; preds = %bb.bv
  store i32 %i.it, ptr %i.f, align 1
  call void @sockopt_release_sock(ptr noundef %0) #20
  br label %bb.bw

copy_to_sockptr.exit322:                          ; preds = %bb.bv
  %i.iv = call i64 @_copy_to_user(ptr noundef %i.f, ptr noundef nonnull %i.b, i64 noundef range(i64 -2147483648, 2147483648) 4) #20
  %.fr470 = freeze i64 %i.iv
  %i.iw = and i64 %.fr470, 4294967295
  %.not208 = icmp eq i64 %i.iw, 0
  call void @sockopt_release_sock(ptr noundef %0) #20
  br i1 %.not208, label %bb.bw, label %tcp_can_repair_sock.exit.thread

bb.bw:                                            ; preds = %copy_to_sockptr.exit322.thread, %copy_to_sockptr.exit322
  br label %tcp_can_repair_sock.exit.thread

bb.bx:                                            ; preds = %bb.bu
  br i1 %i.i, label %copy_to_sockptr.exit327.thread, label %copy_to_sockptr.exit327

copy_to_sockptr.exit327.thread:                   ; preds = %bb.bx
  store i32 %i.it, ptr %i.f, align 1
  br label %bb.bz

copy_to_sockptr.exit327:                          ; preds = %bb.bx
  %i.ix = call i64 @_copy_to_user(ptr noundef %i.f, ptr noundef nonnull %i.b, i64 noundef range(i64 -2147483648, 2147483648) 4) #20
  %i.iy = and i64 %i.ix, 4294967295
  %.not206 = icmp eq i64 %i.iy, 0
  br i1 %.not206, label %copy_to_sockptr.exit327._crit_edge, label %bb.by

copy_to_sockptr.exit327._crit_edge:               ; preds = %copy_to_sockptr.exit327
  %.pre477 = load i32, ptr %i.b, align 4
  br label %bb.bz

bb.by:                                            ; preds = %copy_to_sockptr.exit327
  call void @sockopt_release_sock(ptr noundef %0) #20
  br label %tcp_can_repair_sock.exit.thread

bb.bz:                                            ; preds = %copy_to_sockptr.exit327._crit_edge, %copy_to_sockptr.exit327.thread
  %i.iz = phi i32 [ %.pre477, %copy_to_sockptr.exit327._crit_edge ], [ %i.it, %copy_to_sockptr.exit327.thread ]
  %i.ja = load ptr, ptr %i.ik, align 8
  %i.jb = getelementptr i8, ptr %i.ja, i64 12
  %i.jc = sext i32 %i.iz to i64
  %i.jd = call fastcc i32 @copy_to_sockptr(ptr %3, i8 %4, ptr noundef %i.jb, i64 noundef %i.jc) #21, !srcloc !148
  %.not207 = icmp eq i32 %i.jd, 0
  br i1 %.not207, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @sockopt_release_sock(ptr noundef %0) #20
  br label %tcp_can_repair_sock.exit.thread

bb.cb:                                            ; preds = %bb.bz
  %i.je = load ptr, ptr %i.ik, align 8
  call void @kfree(ptr noundef %i.je) #20
  store ptr null, ptr %i.ik, align 8
  call void @sockopt_release_sock(ptr noundef %0) #20
  br label %bb.dh

bb.cc:                                            ; preds = %bb.bt
  call void @sockopt_release_sock(ptr noundef %0) #20
  store i32 0, ptr %i.b, align 4
  br i1 %i.i, label %copy_to_sockptr.exit332.thread, label %copy_to_sockptr.exit332

copy_to_sockptr.exit332.thread:                   ; preds = %bb.cc
  store i32 0, ptr %i.f, align 1
  br label %bb.dh

copy_to_sockptr.exit332:                          ; preds = %bb.cc
  %i.jf = call i64 @_copy_to_user(ptr noundef %i.f, ptr noundef nonnull %i.b, i64 noundef range(i64 -2147483648, 2147483648) 4) #20
  %i.jg = and i64 %i.jf, 4294967295
  %.not205 = icmp eq i64 %i.jg, 0
  br i1 %.not205, label %bb.dh, label %tcp_can_repair_sock.exit.thread

bb.cd:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !annotation !18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %10, i8 0, i64 64, i1 false)
  br i1 %i.i, label %copy_from_sockptr.exit337.thread, label %copy_from_sockptr.exit337

copy_from_sockptr.exit337.thread:                 ; preds = %bb.cd
  %i.jh = load i32, ptr %i.f, align 1             ; 2 uses
  store i32 %i.jh, ptr %i.b, align 4
  br label %bb.ce

copy_from_sockptr.exit337:                        ; preds = %bb.cd
  %i.ji = call i64 @_copy_from_user(ptr noundef nonnull %i.b, ptr noundef %i.f, i64 noundef range(i64 -2147483648, 4294967296) 4) #20
  %i.jj = and i64 %i.ji, 4294967295
  %.not194 = icmp eq i64 %i.jj, 0
  br i1 %.not194, label %copy_from_sockptr.exit337._crit_edge, label %bb.cx

copy_from_sockptr.exit337._crit_edge:             ; preds = %copy_from_sockptr.exit337
  %.pre475 = load i32, ptr %i.b, align 4
  br label %bb.ce
end_hunk_0
