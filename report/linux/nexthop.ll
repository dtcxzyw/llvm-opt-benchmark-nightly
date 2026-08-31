Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/nexthop?download=true
inline.NumInlined: 505
inline.NumDeleted: 231
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@rtm_new_nexthop:bb.a
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config.__msg.22) #16
  %.not164.i = icmp eq ptr %2, null
  br i1 %.not164.i, label %nlmsg_parse.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store ptr @rtm_to_nh_config.__msg.22, ptr %2, align 8
  br label %nlmsg_parse.exit.thread

bb.as:                                            ; preds = %bb.ap
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.cg = load ptr, ptr %i.cf, align 16           ; 5 uses
  %.not165.i = icmp eq ptr %i.cg, null
  br i1 %.not165.i, label %bb.be, label %bb.at

bb.at:                                            ; preds = %bb.as
  switch i8 %i.s, label %bb.bc [
    i8 2, label %bb.au
    i8 10, label %bb.ay
  ]

bb.au:                                            ; preds = %bb.at
  %.val201.i = load i16, ptr %i.cg, align 2
  %.not170.i = icmp eq i16 %.val201.i, 8
  br i1 %.not170.i, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config.__msg.23) #16
  %.not171.i = icmp eq ptr %2, null
  br i1 %.not171.i, label %nlmsg_parse.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store ptr @rtm_to_nh_config.__msg.23, ptr %2, align 8
  br label %nlmsg_parse.exit.thread

bb.ax:                                            ; preds = %bb.au
  %i.ch = getelementptr i8, ptr %i.cg, i64 4
  %.val202.i = load i32, ptr %i.ch, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %.val202.i, ptr %i.ci, align 8
  br label %bb.bh

bb.ay:                                            ; preds = %bb.at
  %.val200.i = load i16, ptr %i.cg, align 2
  %.not168.i = icmp eq i16 %.val200.i, 20
  br i1 %.not168.i, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config.__msg.24) #16
  %.not169.i = icmp eq ptr %2, null
  br i1 %.not169.i, label %nlmsg_parse.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store ptr @rtm_to_nh_config.__msg.24, ptr %2, align 8
  br label %nlmsg_parse.exit.thread

bb.bb:                                            ; preds = %bb.ay
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !annotation !78
  %i.ck = call i32 @nla_memcpy(ptr noundef nonnull %6, ptr noundef nonnull %i.cg, i32 noundef 16) #16 ; 0 uses
  %.fca.0.load.i.i = load i64, ptr %6, align 8
  %.fca.1.gep.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.fca.1.load.i.i = load i64, ptr %.fca.1.gep.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store i64 %.fca.0.load.i.i, ptr %i.cj, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %.fca.1.load.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8
  br label %bb.bh

bb.bc:                                            ; preds = %bb.at
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config.__msg.25) #16
  %.not172.i = icmp eq ptr %2, null
  br i1 %.not172.i, label %nlmsg_parse.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store ptr @rtm_to_nh_config.__msg.25, ptr %2, align 8
  br label %nlmsg_parse.exit.thread

bb.be:                                            ; preds = %bb.as
  %.not166.i = icmp eq i32 %i.q, 0
  br i1 %.not166.i, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config.__msg.26) #16
  %.not167.i = icmp eq ptr %2, null
  br i1 %.not167.i, label %nlmsg_parse.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store ptr @rtm_to_nh_config.__msg.26, ptr %2, align 8
  br label %nlmsg_parse.exit.thread

bb.bh:                                            ; preds = %bb.be, %bb.bb, %bb.ax
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.cm = load ptr, ptr %i.cl, align 16           ; 2 uses
  %.not173.i = icmp eq ptr %i.cm, null
  br i1 %.not173.i, label %bb.bn, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 80
  store ptr %i.cm, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %.not178.i = icmp eq ptr %i.cp, null
  br i1 %.not178.i, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config.__msg.27) #16
  %.not179.i = icmp eq ptr %2, null
  br i1 %.not179.i, label %nlmsg_parse.exit.thread, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  store ptr @rtm_to_nh_config.__msg.27, ptr %2, align 8
  br label %nlmsg_parse.exit.thread

bb.bl:                                            ; preds = %bb.bi
  %i.cq = getelementptr i8, ptr %i.cp, i64 4
  %.val198.i = load i16, ptr %i.cq, align 2
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 88
  store i16 %.val198.i, ptr %i.cr, align 8
  call void @do_trace_netlink_extack(ptr noundef nonnull @lwtunnel_valid_encap_type.__msg) #16
  %.not.i.i30 = icmp eq ptr %2, null
  br i1 %.not.i.i30, label %nlmsg_parse.exit.thread, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  store ptr @lwtunnel_valid_encap_type.__msg, ptr %2, align 8
  br label %nlmsg_parse.exit.thread

bb.bn:                                            ; preds = %bb.bh
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ct = load ptr, ptr %i.cs, align 8
  %.not174.i = icmp eq ptr %i.ct, null
  br i1 %.not174.i, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config.__msg.28) #16
  %.not177.i = icmp eq ptr %2, null
  br i1 %.not177.i, label %nlmsg_parse.exit.thread, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  store ptr @rtm_to_nh_config.__msg.28, ptr %2, align 8
  br label %nlmsg_parse.exit.thread

bb.bq:                                            ; preds = %bb.bn
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.cv = load ptr, ptr %i.cu, align 16
  %.not175.i = icmp eq ptr %i.cv, null
  br i1 %.not175.i, label %rtm_to_nh_config.exit.thread52, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config.__msg.29) #16
  %.not176.i = icmp eq ptr %2, null
  br i1 %.not176.i, label %nlmsg_parse.exit.thread, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  store ptr @rtm_to_nh_config.__msg.29, ptr %2, align 8
  br label %nlmsg_parse.exit.thread

rtm_to_nh_config.exit:                            ; preds = %bb.ai, %bb.aj
  %.not = icmp eq i32 %.0134.i, 0
  br i1 %.not, label %rtm_to_nh_config.exit.thread52, label %nlmsg_parse.exit.thread

rtm_to_nh_config.exit.thread52:                   ; preds = %bb.ao, %bb.bq, %rtm_to_nh_config.exit
  %i.cw = load i32, ptr %i.y, align 4
  %i.cx = and i32 %i.cw, 256
  %i.cy = icmp eq i32 %i.cx, 0
  %i.cz = load i32, ptr %7, align 8
  %i.da = icmp ne i32 %i.cz, 0
  %or.cond = select i1 %i.cy, i1 true, i1 %i.da
  br i1 %or.cond, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %rtm_to_nh_config.exit.thread52
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_new_nexthop.__msg) #16
  %.not28 = icmp eq ptr %2, null
  br i1 %.not28, label %nlmsg_parse.exit.thread, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  store ptr @rtm_new_nexthop.__msg, ptr %2, align 8
  br label %nlmsg_parse.exit.thread

bb.bv:                                            ; preds = %rtm_to_nh_config.exit.thread52
  call void @rtnl_lock() #16
  %i.db = load ptr, ptr %i.ax, align 16           ; 3 uses
  %.not.i31 = icmp eq ptr %i.db, null
  br i1 %.not.i31, label %bb.cr, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %.val.i.i = load i16, ptr %i.db, align 2
  %.val.fr.i.i = freeze i16 %.val.i.i
  %i.dc = add i16 %.val.fr.i.i, -4                ; 2 uses
  %i.dd = lshr i16 %i.dc, 3                       ; 2 uses
  %i.de = getelementptr i8, ptr %i.db, i64 4      ; 4 uses
  %.not.i.i32 = icmp eq i16 %i.dd, 0
  br i1 %.not.i.i32, label %rtm_to_nh_config_rtnl.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bw
  %.val35.i = load ptr, ptr %i.am, align 8
  %.88.val.fr.i.i = freeze ptr %.val35.i
  %.not33.i.i = icmp eq ptr %.88.val.fr.i.i, null
  %i.df = getelementptr i8, ptr %.val, i64 872    ; 4 uses
  %i.dg = icmp ugt i16 %i.dc, 15                  ; 2 uses
  %wide.trip.count84.i.i = zext nneg i16 %i.dd to i64 ; 2 uses
  br i1 %.not33.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i
  br i1 %i.dg, label %.lr.ph.split.us.split.i.i, label %.lr.ph.split.us.split.us.i.i

.lr.ph.split.us.split.us.i.i:                     ; preds = %.lr.ph.split.us.i.i
  %i.dh = load i32, ptr %i.de, align 4            ; 2 uses
  %i.di = load volatile ptr, ptr %i.df, align 8   ; 2 uses
  %.not32.i.us.us.i.i = icmp eq ptr %i.di, null
  br i1 %.not32.i.us.us.i.i, label %.loopexit.i.i, label %.lr.ph.i.us.us.i.i

.lr.ph.i.us.us.i.i:                               ; preds = %.lr.ph.split.us.split.us.i.i, %bb.by
  %i.dj = phi ptr [ %i.dp, %bb.by ], [ %i.di, %.lr.ph.split.us.split.us.i.i ] ; 4 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 96
  %i.dl = load i32, ptr %i.dk, align 8            ; 2 uses
  %i.dm = icmp ult i32 %i.dh, %i.dl
  br i1 %i.dm, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph.i.us.us.i.i
  %i.dn = icmp ugt i32 %i.dh, %i.dl
  br i1 %i.dn, label %bb.by, label %nexthop_find_by_id.exit.us.us.i.i

bb.by:                                            ; preds = %bb.bx, %.lr.ph.i.us.us.i.i
  %.sink.i.us.us.i.i = phi i64 [ 16, %.lr.ph.i.us.us.i.i ], [ 8, %bb.bx ]
  %i.do = getelementptr i8, ptr %i.dj, i64 %.sink.i.us.us.i.i
  %i.dp = load volatile ptr, ptr %i.do, align 8   ; 2 uses
  %.not.i.us.us.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.us.us.i.i, label %.loopexit.i.i, label %.lr.ph.i.us.us.i.i

nexthop_find_by_id.exit.us.us.i.i:                ; preds = %bb.bx
  %i.dq = getelementptr i8, ptr %i.dj, i64 102
  %i.dr = load i8, ptr %i.dq, align 2, !range !11, !noundef !12
  %i.ds = trunc nuw i8 %i.dr to i1
  %i.dt = getelementptr i8, ptr %i.dj, i64 128
  %i.du = load ptr, ptr %i.dt, align 8            ; 3 uses
  br i1 %i.ds, label %bb.bz, label %valid_group_nh.exit.us.us.i.i

bb.bz:                                            ; preds = %nexthop_find_by_id.exit.us.us.i.i
  %i.dv = getelementptr i8, ptr %i.du, i64 11
  %i.dw = load i8, ptr %i.dv, align 1, !range !11, !noundef !12
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %.split21.us.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.dy = getelementptr i8, ptr %i.du, i64 12
  %i.dz = load i8, ptr %i.dy, align 4, !range !11, !noundef !12
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %.split23.us.i.i, label %valid_group_nh.exit.us.us.i.i

valid_group_nh.exit.us.us.i.i:                    ; preds = %bb.ca, %nexthop_find_by_id.exit.us.us.i.i
  %.sink.i.i = phi i64 [ 26, %nexthop_find_by_id.exit.us.us.i.i ], [ 13, %bb.ca ]
  %i.eb = getelementptr i8, ptr %i.du, i64 %.sink.i.i
  %.0.us.us.i.i = load i8, ptr %i.eb, align 1, !range !11, !noundef !12
  %i.ec = trunc nuw i8 %.0.us.us.i.i to i1
  br i1 %i.ec, label %.split25.us.i.i, label %rtm_to_nh_config_rtnl.exit

.lr.ph.split.us.split.i.i:                        ; preds = %.lr.ph.split.us.i.i, %nh_check_attr_fdb_group.exit.thread12.us.i.i
  %indvars.iv81.i.i = phi i64 [ %indvars.iv.next82.i.i, %nh_check_attr_fdb_group.exit.thread12.us.i.i ], [ 0, %.lr.ph.split.us.i.i ] ; 2 uses
  %i.ed = getelementptr [8 x i8], ptr %i.de, i64 %indvars.iv81.i.i
  %i.ee = load i32, ptr %i.ed, align 4            ; 2 uses
  %i.ef = load volatile ptr, ptr %i.df, align 8   ; 2 uses
  %.not32.i.us.i.i = icmp eq ptr %i.ef, null
  br i1 %.not32.i.us.i.i, label %.loopexit.i.i, label %.lr.ph.i.us.i.i

.lr.ph.i.us.i.i:                                  ; preds = %.lr.ph.split.us.split.i.i, %bb.cc
  %i.eg = phi ptr [ %i.em, %bb.cc ], [ %i.ef, %.lr.ph.split.us.split.i.i ] ; 4 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 96
  %i.ei = load i32, ptr %i.eh, align 8            ; 2 uses
  %i.ej = icmp ult i32 %i.ee, %i.ei
  br i1 %i.ej, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i.us.i.i
  %i.ek = icmp ugt i32 %i.ee, %i.ei
  br i1 %i.ek, label %bb.cc, label %nexthop_find_by_id.exit.us.i.i

bb.cc:                                            ; preds = %bb.cb, %.lr.ph.i.us.i.i
  %.sink.i.us.i.i = phi i64 [ 16, %.lr.ph.i.us.i.i ], [ 8, %bb.cb ]
  %i.el = getelementptr i8, ptr %i.eg, i64 %.sink.i.us.i.i
  %i.em = load volatile ptr, ptr %i.el, align 8   ; 2 uses
  %.not.i.us.i.i = icmp eq ptr %i.em, null
  br i1 %.not.i.us.i.i, label %.loopexit.i.i, label %.lr.ph.i.us.i.i

nexthop_find_by_id.exit.us.i.i:                   ; preds = %bb.cb
  %i.en = getelementptr i8, ptr %i.eg, i64 102
  %i.eo = load i8, ptr %i.en, align 2, !range !11, !noundef !12
  %i.ep = trunc nuw i8 %i.eo to i1
  %i.eq = getelementptr i8, ptr %i.eg, i64 128
  %i.er = load ptr, ptr %i.eq, align 8            ; 4 uses
  br i1 %i.ep, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %nexthop_find_by_id.exit.us.i.i
  %i.es = getelementptr i8, ptr %i.er, i64 25
  %i.et = load i8, ptr %i.es, align 1, !range !11, !noundef !12
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %.split.us.i.i, label %valid_group_nh.exit.us.i.i

bb.ce:                                            ; preds = %nexthop_find_by_id.exit.us.i.i
  %i.ev = getelementptr i8, ptr %i.er, i64 11
  %i.ew = load i8, ptr %i.ev, align 1, !range !11, !noundef !12
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %.split21.us.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ey = getelementptr i8, ptr %i.er, i64 12
  %i.ez = load i8, ptr %i.ey, align 4, !range !11, !noundef !12
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %.split23.us.i.i, label %valid_group_nh.exit.us.i.i

valid_group_nh.exit.us.i.i:                       ; preds = %bb.cf, %bb.cd
  %.sink130.i.i = phi i64 [ 26, %bb.cd ], [ 13, %bb.cf ]
  %i.fb = getelementptr i8, ptr %i.er, i64 %.sink130.i.i
  %.0.us.i.i = load i8, ptr %i.fb, align 1, !range !11, !noundef !12
  %i.fc = trunc nuw i8 %.0.us.i.i to i1
  br i1 %i.fc, label %.split25.us.i.i, label %nh_check_attr_fdb_group.exit.thread12.us.i.i

nh_check_attr_fdb_group.exit.thread12.us.i.i:     ; preds = %valid_group_nh.exit.us.i.i
  %indvars.iv.next82.i.i = add nuw nsw i64 %indvars.iv81.i.i, 1 ; 2 uses
  %exitcond85.not.i.i = icmp eq i64 %indvars.iv.next82.i.i, %wide.trip.count84.i.i
  br i1 %exitcond85.not.i.i, label %rtm_to_nh_config_rtnl.exit, label %.lr.ph.split.us.split.i.i, !llvm.loop !130

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  br i1 %i.dg, label %.lr.ph.split.split.i.i, label %.lr.ph.split.split.us.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.i.i
  %i.fd = load i32, ptr %i.de, align 4            ; 2 uses
  %i.fe = load volatile ptr, ptr %i.df, align 8   ; 2 uses
  %.not32.i.us28.i.i = icmp eq ptr %i.fe, null
  br i1 %.not32.i.us28.i.i, label %.loopexit.i.i, label %.lr.ph.i.us29.i.i

.lr.ph.i.us29.i.i:                                ; preds = %.lr.ph.split.split.us.i.i, %bb.ch
  %i.ff = phi ptr [ %i.fl, %bb.ch ], [ %i.fe, %.lr.ph.split.split.us.i.i ] ; 4 uses
  %i.fg = getelementptr i8, ptr %i.ff, i64 96
  %i.fh = load i32, ptr %i.fg, align 8            ; 2 uses
  %i.fi = icmp ult i32 %i.fd, %i.fh
  br i1 %i.fi, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph.i.us29.i.i
  %i.fj = icmp ugt i32 %i.fd, %i.fh
  br i1 %i.fj, label %bb.ch, label %nexthop_find_by_id.exit.us32.i.i

bb.ch:                                            ; preds = %bb.cg, %.lr.ph.i.us29.i.i
  %.sink.i.us30.i.i = phi i64 [ 16, %.lr.ph.i.us29.i.i ], [ 8, %bb.cg ]
  %i.fk = getelementptr i8, ptr %i.ff, i64 %.sink.i.us30.i.i
  %i.fl = load volatile ptr, ptr %i.fk, align 8   ; 2 uses
  %.not.i.us31.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i.us31.i.i, label %.loopexit.i.i, label %.lr.ph.i.us29.i.i

nexthop_find_by_id.exit.us32.i.i:                 ; preds = %bb.cg
  %i.fm = getelementptr i8, ptr %i.ff, i64 102
  %i.fn = load i8, ptr %i.fm, align 2, !range !11, !noundef !12
  %i.fo = trunc nuw i8 %i.fn to i1
  %i.fp = getelementptr i8, ptr %i.ff, i64 128
  %i.fq = load ptr, ptr %i.fp, align 8            ; 3 uses
  br i1 %i.fo, label %bb.ci, label %valid_group_nh.exit.us35.i.i

bb.ci:                                            ; preds = %nexthop_find_by_id.exit.us32.i.i
  %i.fr = getelementptr i8, ptr %i.fq, i64 11
  %i.fs = load i8, ptr %i.fr, align 1, !range !11, !noundef !12
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %.split21.us.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.fu = getelementptr i8, ptr %i.fq, i64 12
  %i.fv = load i8, ptr %i.fu, align 4, !range !11, !noundef !12
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %.split23.us.i.i, label %valid_group_nh.exit.us35.i.i

valid_group_nh.exit.us35.i.i:                     ; preds = %bb.cj, %nexthop_find_by_id.exit.us32.i.i
  %i.fx = getelementptr i8, ptr %i.fq, i64 26
  %i.fy = load i8, ptr %i.fx, align 2, !range !11, !noundef !12
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %rtm_to_nh_config_rtnl.exit, label %.split40.us.i.i

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.i.i, %nh_check_attr_fdb_group.exit.thread12.i.i
  %indvars.iv72.i.i = phi i64 [ %indvars.iv.next73.i.i, %nh_check_attr_fdb_group.exit.thread12.i.i ], [ 0, %.lr.ph.split.i.i ] ; 2 uses
  %.0218.i.i = phi i8 [ %.2315.i.i, %nh_check_attr_fdb_group.exit.thread12.i.i ], [ 0, %.lr.ph.split.i.i ] ; 3 uses
  %i.ga = getelementptr [8 x i8], ptr %i.de, i64 %indvars.iv72.i.i
  %i.gb = load i32, ptr %i.ga, align 4            ; 2 uses
  %i.gc = load volatile ptr, ptr %i.df, align 8   ; 2 uses
  %.not32.i.i.i = icmp eq ptr %i.gc, null
  br i1 %.not32.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.split.split.i.i, %bb.cl
  %i.gd = phi ptr [ %i.gj, %bb.cl ], [ %i.gc, %.lr.ph.split.split.i.i ] ; 4 uses
  %i.ge = getelementptr i8, ptr %i.gd, i64 96
  %i.gf = load i32, ptr %i.ge, align 8            ; 2 uses
  %i.gg = icmp ult i32 %i.gb, %i.gf
  br i1 %i.gg, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph.i.i.i
  %i.gh = icmp ugt i32 %i.gb, %i.gf
  br i1 %i.gh, label %bb.cl, label %nexthop_find_by_id.exit.i.i

bb.cl:                                            ; preds = %bb.ck, %.lr.ph.i.i.i
  %.sink.i.i.i = phi i64 [ 16, %.lr.ph.i.i.i ], [ 8, %bb.ck ]
  %i.gi = getelementptr i8, ptr %i.gd, i64 %.sink.i.i.i
  %i.gj = load volatile ptr, ptr %i.gi, align 8   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gj, null
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i

.loopexit.i.i:                                    ; preds = %bb.ch, %.lr.ph.split.split.i.i, %bb.cl, %bb.by, %.lr.ph.split.us.split.i.i, %bb.cc, %.lr.ph.split.split.us.i.i, %.lr.ph.split.us.split.us.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nh_check_attr_group_rtnl.__msg) #16
  %.not31.i.i = icmp eq ptr %2, null
  br i1 %.not31.i.i, label %rtm_to_nh_config_rtnl.exit.thread, label %nh_check_attr_group_rtnl.exit.sink.split.i

nexthop_find_by_id.exit.i.i:                      ; preds = %bb.ck
  %i.gk = getelementptr i8, ptr %i.gd, i64 102
  %i.gl = load i8, ptr %i.gk, align 2, !range !11, !noundef !12
  %i.gm = trunc nuw i8 %i.gl to i1
  %i.gn = getelementptr i8, ptr %i.gd, i64 128
  %i.go = load ptr, ptr %i.gn, align 8            ; 5 uses
  br i1 %i.gm, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %nexthop_find_by_id.exit.i.i
  %i.gp = getelementptr i8, ptr %i.go, i64 11
  %i.gq = load i8, ptr %i.gp, align 1, !range !11, !noundef !12
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %.split21.us.i.i, label %bb.cn

.split21.us.i.i:                                  ; preds = %bb.cm, %bb.ce, %bb.ci, %bb.bz
  call void @do_trace_netlink_extack(ptr noundef nonnull @valid_group_nh.__msg) #16
  %.not29.i.i.i = icmp eq ptr %2, null
  br i1 %.not29.i.i.i, label %rtm_to_nh_config_rtnl.exit.thread, label %nh_check_attr_group_rtnl.exit.sink.split.i

bb.cn:                                            ; preds = %bb.cm
  %i.gs = getelementptr i8, ptr %i.go, i64 12
  %i.gt = load i8, ptr %i.gs, align 4, !range !11, !noundef !12
  %i.gu = trunc nuw i8 %i.gt to i1
  br i1 %i.gu, label %.split23.us.i.i, label %valid_group_nh.exit.i.i

.split23.us.i.i:                                  ; preds = %bb.cn, %bb.cf, %bb.cj, %bb.ca
  call void @do_trace_netlink_extack(ptr noundef nonnull @valid_group_nh.__msg.38) #16
  %.not28.i.i.i = icmp eq ptr %2, null
  br i1 %.not28.i.i.i, label %rtm_to_nh_config_rtnl.exit.thread, label %nh_check_attr_group_rtnl.exit.sink.split.i

bb.co:                                            ; preds = %nexthop_find_by_id.exit.i.i
  %i.gv = getelementptr i8, ptr %i.go, i64 25
  %i.gw = load i8, ptr %i.gv, align 1, !range !11, !noundef !12
  %i.gx = trunc nuw i8 %i.gw to i1
  br i1 %i.gx, label %.split.us.i.i, label %valid_group_nh.exit.i.i

.split.us.i.i:                                    ; preds = %bb.co, %bb.cd
  call void @do_trace_netlink_extack(ptr noundef nonnull @valid_group_nh.__msg.39) #16
  %.not.i36.i.i = icmp eq ptr %2, null
  br i1 %.not.i36.i.i, label %rtm_to_nh_config_rtnl.exit.thread, label %nh_check_attr_group_rtnl.exit.sink.split.i

valid_group_nh.exit.i.i:                          ; preds = %bb.co, %bb.cn
  %i.gy = getelementptr i8, ptr %i.go, i64 26
  %i.gz = load i8, ptr %i.gy, align 2, !range !11, !noundef !12
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %bb.cp, label %.split40.us.i.i

.split40.us.i.i:                                  ; preds = %valid_group_nh.exit.i.i, %valid_group_nh.exit.us35.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nh_check_attr_fdb_group.__msg) #16
  %.not.i37.i.i = icmp eq ptr %2, null
  br i1 %.not.i37.i.i, label %rtm_to_nh_config_rtnl.exit.thread, label %nh_check_attr_group_rtnl.exit.sink.split.i

bb.cp:                                            ; preds = %valid_group_nh.exit.i.i
  %i.hb = icmp eq i8 %.0218.i.i, 0
  %i.hc = getelementptr i8, ptr %i.go, i64 24
  %i.hd = load i8, ptr %i.hc, align 8             ; 2 uses
  br i1 %i.hb, label %nh_check_attr_fdb_group.exit.thread12.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %.not16.i.i.i = icmp eq i8 %.0218.i.i, %i.hd
  br i1 %.not16.i.i.i, label %nh_check_attr_fdb_group.exit.thread12.i.i, label %.split42.us.i.i

.split42.us.i.i:                                  ; preds = %bb.cq
  call void @do_trace_netlink_extack(ptr noundef nonnull @nh_check_attr_fdb_group.__msg.40) #16
  %.not17.i.i.i = icmp eq ptr %2, null
  br i1 %.not17.i.i.i, label %rtm_to_nh_config_rtnl.exit.thread, label %nh_check_attr_group_rtnl.exit.sink.split.i

.split25.us.i.i:                                  ; preds = %valid_group_nh.exit.us.i.i, %valid_group_nh.exit.us.us.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nh_check_attr_group_rtnl.__msg.37) #16
  %.not34.i.i = icmp eq ptr %2, null
  br i1 %.not34.i.i, label %rtm_to_nh_config_rtnl.exit.thread, label %nh_check_attr_group_rtnl.exit.sink.split.i

nh_check_attr_fdb_group.exit.thread12.i.i:        ; preds = %bb.cq, %bb.cp
  %.2315.i.i = phi i8 [ %i.hd, %bb.cp ], [ %.0218.i.i, %bb.cq ]
  %indvars.iv.next73.i.i = add nuw nsw i64 %indvars.iv72.i.i, 1 ; 2 uses
  %exitcond75.not.i.i = icmp eq i64 %indvars.iv.next73.i.i, %wide.trip.count84.i.i
  br i1 %exitcond75.not.i.i, label %rtm_to_nh_config_rtnl.exit, label %.lr.ph.split.split.i.i, !llvm.loop !130

bb.cr:                                            ; preds = %bb.bv
  %i.he = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.hf = load ptr, ptr %i.he, align 8            ; 2 uses
  %.not27.i = icmp eq ptr %i.hf, null
  br i1 %.not27.i, label %rtm_to_nh_config_rtnl.exit, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.hg = getelementptr i8, ptr %i.hf, i64 4
  %.val.i33 = load i32, ptr %i.hg, align 4        ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %.val.i33, ptr %i.hh, align 4
  %.not28.i = icmp eq i32 %.val.i33, 0
  br i1 %.not28.i, label %._crit_edge.i, label %bb.ct

._crit_edge.i:                                    ; preds = %bb.cs
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.hi = call ptr @__dev_get_by_index(ptr noundef %.val, i32 noundef %.val.i33) #16 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.hi, ptr %i.hj, align 8
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %._crit_edge.i
  %i.hk = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.hi, %bb.ct ] ; 3 uses
  %.not29.i = icmp eq ptr %i.hk, null
  br i1 %.not29.i, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config_rtnl.__msg) #16
  %.not30.i = icmp eq ptr %2, null
  br i1 %.not30.i, label %rtm_to_nh_config_rtnl.exit.thread, label %nh_check_attr_group_rtnl.exit.sink.split.i

bb.cw:                                            ; preds = %bb.cu
  %i.hl = getelementptr i8, ptr %i.hk, i64 176
  %i.hm = load i32, ptr %i.hl, align 16
  %i.hn = and i32 %i.hm, 1
  %.not31.i = icmp eq i32 %i.hn, 0
  br i1 %.not31.i, label %bb.cx, label %netif_carrier_ok.exit.i

bb.cx:                                            ; preds = %bb.cw
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config_rtnl.__msg.35) #16
  %.not32.i = icmp eq ptr %2, null
  br i1 %.not32.i, label %rtm_to_nh_config_rtnl.exit.thread, label %nh_check_attr_group_rtnl.exit.sink.split.i

netif_carrier_ok.exit.i:                          ; preds = %bb.cw
  %i.ho = getelementptr i8, ptr %i.hk, i64 168
  %i.hp = load volatile i64, ptr %i.ho, align 8
  %.in.in.i.i = and i64 %i.hp, 4
  %.in.not.i.i = icmp eq i64 %.in.in.i.i, 0
  br i1 %.in.not.i.i, label %rtm_to_nh_config_rtnl.exit, label %bb.cy

bb.cy:                                            ; preds = %netif_carrier_ok.exit.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config_rtnl.__msg.36) #16
  %.not33.i = icmp eq ptr %2, null
  br i1 %.not33.i, label %rtm_to_nh_config_rtnl.exit.thread, label %nh_check_attr_group_rtnl.exit.sink.split.i

nh_check_attr_group_rtnl.exit.sink.split.i:       ; preds = %bb.cy, %bb.cx, %bb.cv, %.split25.us.i.i, %.split42.us.i.i, %.split40.us.i.i, %.split.us.i.i, %.split23.us.i.i, %.split21.us.i.i, %.loopexit.i.i
  %nh_check_attr_fdb_group.__msg.40.sink.i.sink.i = phi ptr [ @nh_check_attr_group_rtnl.__msg.37, %.split25.us.i.i ], [ @rtm_to_nh_config_rtnl.__msg.35, %bb.cx ], [ @rtm_to_nh_config_rtnl.__msg, %bb.cv ], [ @nh_check_attr_fdb_group.__msg, %.split40.us.i.i ], [ @valid_group_nh.__msg.39, %.split.us.i.i ], [ @valid_group_nh.__msg.38, %.split23.us.i.i ], [ @valid_group_nh.__msg, %.split21.us.i.i ], [ @nh_check_attr_group_rtnl.__msg, %.loopexit.i.i ], [ @nh_check_attr_fdb_group.__msg.40, %.split42.us.i.i ], [ @rtm_to_nh_config_rtnl.__msg.36, %bb.cy ]
  %.0.ph.i = phi i32 [ -22, %.split25.us.i.i ], [ -100, %bb.cx ], [ -22, %bb.cv ], [ -22, %.split40.us.i.i ], [ -22, %.split.us.i.i ], [ -22, %.split23.us.i.i ], [ -22, %.split21.us.i.i ], [ -22, %.loopexit.i.i ], [ -22, %.split42.us.i.i ], [ -100, %bb.cy ]
  store ptr %nh_check_attr_fdb_group.__msg.40.sink.i.sink.i, ptr %2, align 8
  br label %rtm_to_nh_config_rtnl.exit.thread

rtm_to_nh_config_rtnl.exit:                       ; preds = %nh_check_attr_fdb_group.exit.thread12.i.i, %nh_check_attr_fdb_group.exit.thread12.us.i.i, %netif_carrier_ok.exit.i, %bb.cr, %valid_group_nh.exit.us35.i.i, %valid_group_nh.exit.us.us.i.i, %bb.bw
  %i.hq = load i32, ptr %7, align 8
  %.not.i34 = icmp eq i32 %i.hq, 0
  br i1 %.not.i34, label %bb.cz, label %bb.df

bb.cz:                                            ; preds = %rtm_to_nh_config_rtnl.exit
  %i.hr = getelementptr i8, ptr %.val, i64 892    ; 3 uses
  %i.hs = load i32, ptr %i.hr, align 4            ; 2 uses
  %i.ht = add i32 %i.hs, 1                        ; 2 uses
  store i32 %i.ht, ptr %i.hr, align 4
  %i.hu = getelementptr i8, ptr %.val, i64 872
  br label %bb.da

nexthop_find_by_id.exit.loopexit.i.i:             ; preds = %bb.db
  %i.hv = add i32 %i.hx, 1                        ; 3 uses
  store i32 %i.hv, ptr %i.hr, align 4
  %i.hw = icmp eq i32 %i.hv, %i.hs
  br i1 %i.hw, label %nh_find_unused_id.exit.thread.i, label %bb.da

nh_find_unused_id.exit.thread.i:                  ; preds = %nexthop_find_by_id.exit.loopexit.i.i
  store i32 0, ptr %7, align 8
  br label %bb.dd

bb.da:                                            ; preds = %nexthop_find_by_id.exit.loopexit.i.i, %bb.cz
  %i.hx = phi i32 [ %i.ht, %bb.cz ], [ %i.hv, %nexthop_find_by_id.exit.loopexit.i.i ] ; 5 uses
  %i.hy = load volatile ptr, ptr %i.hu, align 8   ; 2 uses
  %.not32.i.i.i44 = icmp eq ptr %i.hy, null
  br i1 %.not32.i.i.i44, label %nh_find_unused_id.exit.i, label %.lr.ph.i.i.i45

.lr.ph.i.i.i45:                                   ; preds = %bb.da, %bb.dc
  %i.hz = phi ptr [ %i.if, %bb.dc ], [ %i.hy, %bb.da ] ; 2 uses
  %i.ia = getelementptr i8, ptr %i.hz, i64 96
  %i.ib = load i32, ptr %i.ia, align 8            ; 2 uses
  %i.ic = icmp ult i32 %i.hx, %i.ib
  br i1 %i.ic, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %.lr.ph.i.i.i45
  %i.id = icmp ugt i32 %i.hx, %i.ib
  br i1 %i.id, label %bb.dc, label %nexthop_find_by_id.exit.loopexit.i.i

bb.dc:                                            ; preds = %bb.db, %.lr.ph.i.i.i45
  %.sink.i.i.i46 = phi i64 [ 16, %.lr.ph.i.i.i45 ], [ 8, %bb.db ]
  %i.ie = getelementptr i8, ptr %i.hz, i64 %.sink.i.i.i46
  %i.if = load volatile ptr, ptr %i.ie, align 8   ; 2 uses
  %.not.i.i.i47 = icmp eq ptr %i.if, null
  br i1 %.not.i.i.i47, label %nh_find_unused_id.exit.i, label %.lr.ph.i.i.i45

nh_find_unused_id.exit.i:                         ; preds = %bb.da, %bb.dc
  store i32 %i.hx, ptr %7, align 8
  %.not38.i = icmp eq i32 %i.hx, 0
  br i1 %.not38.i, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %nh_find_unused_id.exit.i, %nh_find_unused_id.exit.thread.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nexthop_add.__msg) #16
  %.not39.i = icmp eq ptr %2, null
  br i1 %.not39.i, label %nexthop_add.exit.thread, label %bb.de

bb.de:                                            ; preds = %bb.dd
  store ptr @nexthop_add.__msg, ptr %2, align 8
  br label %nexthop_add.exit.thread

bb.df:                                            ; preds = %nh_find_unused_id.exit.i, %rtm_to_nh_config_rtnl.exit
  %i.ig = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ih = load ptr, ptr %i.ig, align 8            ; 3 uses
  %.not40.i = icmp eq ptr %i.ih, null
  br i1 %.not40.i, label %bb.ek, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ii = getelementptr i8, ptr %i.ih, i64 4
  %.val.i.i35 = load i16, ptr %i.ih, align 2
  %i.ij = add i16 %.val.i.i35, -4
  %i.ik = lshr i16 %i.ij, 3                       ; 3 uses
  %i.il = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 16), align 16
  %i.im = call noalias align 8 dereferenceable_or_null(136) ptr @__kmalloc_cache_noprof(ptr noundef %i.il, i32 noundef 3520, i64 noundef 136) #20 ; 17 uses
  %.not.i125.i.i = icmp eq ptr %i.im, null
  br i1 %.not.i125.i.i, label %nexthop_add.exit.thread, label %_kzalloc_noprof.exit.i.i.i

_kzalloc_noprof.exit.i.i.i:                       ; preds = %bb.dg
  %i.in = getelementptr i8, ptr %i.im, i64 24     ; 3 uses
  store volatile ptr %i.in, ptr %i.in, align 8
  %i.io = getelementptr i8, ptr %i.im, i64 32
  store volatile ptr %i.in, ptr %i.io, align 8
  %i.ip = getelementptr i8, ptr %i.im, i64 40     ; 3 uses
  store volatile ptr %i.ip, ptr %i.ip, align 8
  %i.iq = getelementptr i8, ptr %i.im, i64 48
  store volatile ptr %i.ip, ptr %i.iq, align 8
  %i.ir = getelementptr i8, ptr %i.im, i64 72     ; 3 uses
  store volatile ptr %i.ir, ptr %i.ir, align 8
  %i.is = getelementptr i8, ptr %i.im, i64 80
  store volatile ptr %i.ir, ptr %i.is, align 8
  %i.it = getelementptr i8, ptr %i.im, i64 56     ; 3 uses
  store volatile ptr %i.it, ptr %i.it, align 8
  %i.iu = getelementptr i8, ptr %i.im, i64 64
  store volatile ptr %i.it, ptr %i.iu, align 8
  %i.iv = getelementptr i8, ptr %i.im, i64 104
  store i32 0, ptr %i.iv, align 8
  %i.iw = getelementptr i8, ptr %i.im, i64 102
  store i8 1, ptr %i.iw, align 2
  %i.ix = zext nneg i16 %i.ik to i64
  %i.iy = mul nuw nsw i64 %i.ix, 80
  %i.iz = add nuw nsw i64 %i.iy, 24               ; 2 uses
  %i.ja = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef %i.iz, i32 noundef 3520) #19 ; 28 uses
  %.not.i126.i.i = icmp eq ptr %i.ja, null
  br i1 %.not.i126.i.i, label %bb.dh, label %_kzalloc_noprof.exit.i127.i.i

bb.dh:                                            ; preds = %_kzalloc_noprof.exit.i.i.i
  call void @kfree(ptr noundef nonnull %i.im) #16
  br label %nexthop_add.exit.thread

_kzalloc_noprof.exit.i127.i.i:                    ; preds = %_kzalloc_noprof.exit.i.i.i
  %i.jb = getelementptr i8, ptr %i.ja, i64 8      ; 4 uses
  store i16 %i.ik, ptr %i.jb, align 8
  %i.jc = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef %i.iz, i32 noundef 3520) #19 ; 4 uses
  %.not.i129.i.i = icmp eq ptr %i.jc, null
  br i1 %.not.i129.i.i, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %_kzalloc_noprof.exit.i127.i.i
  store ptr null, ptr %i.ja, align 8
  call void @kfree(ptr noundef nonnull %i.ja) #16
  call void @kfree(ptr noundef nonnull %i.im) #16
  br label %nexthop_add.exit.thread

bb.dj:                                            ; preds = %_kzalloc_noprof.exit.i127.i.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  store i16 %i.ik, ptr %i.jd, align 8
  store ptr %i.jc, ptr %i.ja, align 8
  store ptr %i.ja, ptr %i.jc, align 8
  %i.je = load i16, ptr %i.jb, align 8
  %.not163.i.i = icmp eq i16 %i.je, 0
  br i1 %.not163.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i36

.lr.ph.i.i36:                                     ; preds = %bb.dj
  %i.jf = getelementptr i8, ptr %.val, i64 872
  %i.jg = getelementptr i8, ptr %i.ja, i64 14
  %i.jh = getelementptr i8, ptr %i.ja, i64 24
  br label %bb.dk

bb.dk:                                            ; preds = %find_next_bit.exit.thread.i.i, %.lr.ph.i.i36
  %indvars.iv.i.i37 = phi i64 [ 0, %.lr.ph.i.i36 ], [ %indvars.iv.next.i.i41, %find_next_bit.exit.thread.i.i ] ; 6 uses
  %i.ji = getelementptr [8 x i8], ptr %i.ii, i64 %indvars.iv.i.i37 ; 3 uses
  %i.jj = load i32, ptr %i.ji, align 4            ; 2 uses
  %i.jk = load volatile ptr, ptr %i.jf, align 8   ; 2 uses
  %.not32.i.i42.i = icmp eq ptr %i.jk, null
  br i1 %.not32.i.i42.i, label %nexthop_find_by_id.exit.i.i38, label %.lr.ph.i.i43.i

.lr.ph.i.i43.i:                                   ; preds = %bb.dk, %bb.dm
  %i.jl = phi ptr [ %i.jr, %bb.dm ], [ %i.jk, %bb.dk ] ; 3 uses
  %i.jm = getelementptr i8, ptr %i.jl, i64 96
  %i.jn = load i32, ptr %i.jm, align 8            ; 2 uses
  %i.jo = icmp ult i32 %i.jj, %i.jn
  br i1 %i.jo, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %.lr.ph.i.i43.i
  %i.jp = icmp ugt i32 %i.jj, %i.jn
  br i1 %i.jp, label %bb.dm, label %nexthop_find_by_id.exit.i.i38

bb.dm:                                            ; preds = %bb.dl, %.lr.ph.i.i43.i
  %.sink.i.i46.i = phi i64 [ 16, %.lr.ph.i.i43.i ], [ 8, %bb.dl ]
  %i.jq = getelementptr i8, ptr %i.jl, i64 %.sink.i.i46.i
  %i.jr = load volatile ptr, ptr %i.jq, align 8   ; 2 uses
  %.not.i136.i.i = icmp eq ptr %i.jr, null
  br i1 %.not.i136.i.i, label %nexthop_find_by_id.exit.i.i38, label %.lr.ph.i.i43.i

nexthop_find_by_id.exit.i.i38:                    ; preds = %bb.dm, %bb.dl, %bb.dk
  %.lcssa.i.i.i = phi ptr [ null, %bb.dk ], [ null, %bb.dm ], [ %i.jl, %bb.dl ] ; 5 uses
  %i.js = getelementptr i8, ptr %.lcssa.i.i.i, i64 108 ; 7 uses
  %i.jt = load volatile i32, ptr %i.js, align 4   ; 2 uses
  %.old1.not.i.i.i.i.i.i = icmp eq i32 %i.jt, 0
  br i1 %.old1.not.i.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %nexthop_find_by_id.exit.i.i38, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.jz, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i ], [ %i.jt, %nexthop_find_by_id.exit.i.i38 ] ; 3 uses
  %i.ju = add i32 %.0.i.i.i.i.i.i, 1
  %i.jv = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.js, i32 %i.ju, ptr elementtype(i32) %i.js, i32 %.0.i.i.i.i.i.i) #15, !srcloc !131 ; 2 uses
  %i.jw = extractvalue { i8, i32 } %i.jv, 0       ; 2 uses
  %i.jx = icmp ult i8 %i.jw, 2
  call void @llvm.assume(i1 %i.jx)
  %i.jy = trunc nuw i8 %i.jw to i1
  br i1 %i.jy, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i, !prof !13

arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i:         ; preds = %.preheader.i.i.i.i.i.i
  %i.jz = extractvalue { i8, i32 } %i.jv, 1       ; 2 uses
  %i.ka = icmp eq i32 %i.jz, 0
  br i1 %i.ka, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, !llvm.loop !132

arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i:  ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i, %nexthop_find_by_id.exit.i.i38
  %.2.i.i.i.i.i.i = phi i32 [ 0, %nexthop_find_by_id.exit.i.i38 ], [ %.0.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i ] ; 3 uses
  %i.kb = add i32 %.2.i.i.i.i.i.i, 1
  %i.kc = or i32 %i.kb, %.2.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp sgt i32 %i.kc, -1
  br i1 %.not.i.i.i.i.i.i, label %nexthop_get.exit.i.i, label %bb.dn, !prof !13

bb.dn:                                            ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i
  call void @refcount_warn_saturate(ptr noundef %i.js, i32 noundef 0) #16
  br label %nexthop_get.exit.i.i

nexthop_get.exit.i.i:                             ; preds = %bb.dn, %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i
  %.not.i.i39 = icmp eq i32 %.2.i.i.i.i.i.i, 0
  br i1 %.not.i.i39, label %nexthop_put.exit.thread.loopexit.i.i, label %bb.do

bb.do:                                            ; preds = %nexthop_get.exit.i.i
end_hunk_0
