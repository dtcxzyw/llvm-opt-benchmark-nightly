Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/nexthop?download=true
inline.NumInlined: 505
inline.NumDeleted: 231
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@rtm_new_nexthop:bb.a
  store ptr @rtm_to_nh_config.__msg.21, ptr %2, align 8
  br label %nlmsg_parse.exit.thread

bb.an:                                            ; preds = %bb.ak
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 6
  store i8 1, ptr %i.cb, align 2
  br label %rtm_to_nh_config.exit.thread50

bb.ao:                                            ; preds = %bb.aj
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8
  %.not163.i = icmp eq ptr %i.cd, null
  %or.cond70 = select i1 %.not154.i, i1 %.not163.i, i1 false
  br i1 %or.cond70, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config.__msg.22) #16
  %.not164.i = icmp eq ptr %2, null
  br i1 %.not164.i, label %nlmsg_parse.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store ptr @rtm_to_nh_config.__msg.22, ptr %2, align 8
  br label %nlmsg_parse.exit.thread

bb.ar:                                            ; preds = %bb.ao
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.cf = load ptr, ptr %i.ce, align 16           ; 5 uses
  %.not165.i = icmp eq ptr %i.cf, null
  br i1 %.not165.i, label %bb.bd, label %bb.as

bb.as:                                            ; preds = %bb.ar
  switch i8 %i.s, label %bb.bb [
    i8 2, label %bb.at
    i8 10, label %bb.ax
  ]

bb.at:                                            ; preds = %bb.as
  %.val201.i = load i16, ptr %i.cf, align 2
  %.not170.i = icmp eq i16 %.val201.i, 8
  br i1 %.not170.i, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config.__msg.23) #16
  %.not171.i = icmp eq ptr %2, null
  br i1 %.not171.i, label %nlmsg_parse.exit.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  store ptr @rtm_to_nh_config.__msg.23, ptr %2, align 8
  br label %nlmsg_parse.exit.thread

bb.aw:                                            ; preds = %bb.at
  %i.cg = getelementptr i8, ptr %i.cf, i64 4
  %.val202.i = load i32, ptr %i.cg, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %.val202.i, ptr %i.ch, align 8
  br label %bb.bg

bb.ax:                                            ; preds = %bb.as
  %.val200.i = load i16, ptr %i.cf, align 2
  %.not168.i = icmp eq i16 %.val200.i, 20
  br i1 %.not168.i, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config.__msg.24) #16
  %.not169.i = icmp eq ptr %2, null
  br i1 %.not169.i, label %nlmsg_parse.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store ptr @rtm_to_nh_config.__msg.24, ptr %2, align 8
  br label %nlmsg_parse.exit.thread

bb.ba:                                            ; preds = %bb.ax
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !annotation !32
  %i.cj = call i32 @nla_memcpy(ptr noundef nonnull %6, ptr noundef nonnull %i.cf, i32 noundef 16) #16 ; 0 uses
  %.fca.0.load.i.i = load i64, ptr %6, align 8
  %.fca.1.gep.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.fca.1.load.i.i = load i64, ptr %.fca.1.gep.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store i64 %.fca.0.load.i.i, ptr %i.ci, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %.fca.1.load.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8
  br label %bb.bg

bb.bb:                                            ; preds = %bb.as
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config.__msg.25) #16
  %.not172.i = icmp eq ptr %2, null
  br i1 %.not172.i, label %nlmsg_parse.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store ptr @rtm_to_nh_config.__msg.25, ptr %2, align 8
  br label %nlmsg_parse.exit.thread

bb.bd:                                            ; preds = %bb.ar
  %.not166.i = icmp eq i32 %i.q, 0
  br i1 %.not166.i, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config.__msg.26) #16
  %.not167.i = icmp eq ptr %2, null
  br i1 %.not167.i, label %nlmsg_parse.exit.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store ptr @rtm_to_nh_config.__msg.26, ptr %2, align 8
  br label %nlmsg_parse.exit.thread

bb.bg:                                            ; preds = %bb.bd, %bb.ba, %bb.aw
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.cl = load ptr, ptr %i.ck, align 16
  %.not173.i = icmp eq ptr %i.cl, null
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.cn = load ptr, ptr %i.cm, align 8
  %.not174.i = icmp eq ptr %i.cn, null            ; 2 uses
  br i1 %.not173.i, label %bb.bm, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.not179.i = icmp eq ptr %2, null               ; 2 uses
  br i1 %.not174.i, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config.__msg.27) #16
  br i1 %.not179.i, label %nlmsg_parse.exit.thread, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store ptr @rtm_to_nh_config.__msg.27, ptr %2, align 8
  br label %nlmsg_parse.exit.thread

bb.bk:                                            ; preds = %bb.bh
  call void @do_trace_netlink_extack(ptr noundef nonnull @lwtunnel_valid_encap_type.__msg) #16
  br i1 %.not179.i, label %nlmsg_parse.exit.thread, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  store ptr @lwtunnel_valid_encap_type.__msg, ptr %2, align 8
  br label %nlmsg_parse.exit.thread

bb.bm:                                            ; preds = %bb.bg
  br i1 %.not174.i, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config.__msg.28) #16
  %.not177.i = icmp eq ptr %2, null
  br i1 %.not177.i, label %nlmsg_parse.exit.thread, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  store ptr @rtm_to_nh_config.__msg.28, ptr %2, align 8
  br label %nlmsg_parse.exit.thread

bb.bp:                                            ; preds = %bb.bm
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.cp = load ptr, ptr %i.co, align 16
  %.not175.i = icmp eq ptr %i.cp, null
  br i1 %.not175.i, label %rtm_to_nh_config.exit.thread50, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config.__msg.29) #16
  %.not176.i = icmp eq ptr %2, null
  br i1 %.not176.i, label %nlmsg_parse.exit.thread, label %bb.br

bb.br:                                            ; preds = %bb.bq
  store ptr @rtm_to_nh_config.__msg.29, ptr %2, align 8
  br label %nlmsg_parse.exit.thread

rtm_to_nh_config.exit:                            ; preds = %.thread, %bb.ai
  %.not = icmp eq i32 %.0134.i, 0
  br i1 %.not, label %rtm_to_nh_config.exit.rtm_to_nh_config.exit.thread50_crit_edge, label %nlmsg_parse.exit.thread

rtm_to_nh_config.exit.rtm_to_nh_config.exit.thread50_crit_edge: ; preds = %rtm_to_nh_config.exit
  %.pre = load i32, ptr %i.y, align 4
  %.pre155 = load i32, ptr %7, align 8
  br label %rtm_to_nh_config.exit.thread50

rtm_to_nh_config.exit.thread50:                   ; preds = %rtm_to_nh_config.exit.rtm_to_nh_config.exit.thread50_crit_edge, %bb.an, %bb.bp
  %i.cq = phi i32 [ %.pre155, %rtm_to_nh_config.exit.rtm_to_nh_config.exit.thread50_crit_edge ], [ %i.am, %bb.an ], [ %i.am, %bb.bp ]
  %i.cr = phi i32 [ %.pre, %rtm_to_nh_config.exit.rtm_to_nh_config.exit.thread50_crit_edge ], [ %i.x, %bb.an ], [ %i.x, %bb.bp ]
  %i.cs = and i32 %i.cr, 256
  %i.ct = icmp eq i32 %i.cs, 0
  %i.cu = icmp ne i32 %i.cq, 0                    ; 2 uses
  %or.cond = select i1 %i.ct, i1 true, i1 %i.cu
  br i1 %or.cond, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %rtm_to_nh_config.exit.thread50
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_new_nexthop.__msg) #16
  %.not28 = icmp eq ptr %2, null
  br i1 %.not28, label %nlmsg_parse.exit.thread, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  store ptr @rtm_new_nexthop.__msg, ptr %2, align 8
  br label %nlmsg_parse.exit.thread

bb.bu:                                            ; preds = %rtm_to_nh_config.exit.thread50
  call void @rtnl_lock() #16
  %i.cv = load ptr, ptr %i.ay, align 16           ; 3 uses
  %.not.i31 = icmp eq ptr %i.cv, null
  br i1 %.not.i31, label %bb.cq, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %.val.i.i = load i16, ptr %i.cv, align 2
  %.val.fr.i.i = freeze i16 %.val.i.i
  %i.cw = add i16 %.val.fr.i.i, -4                ; 2 uses
  %i.cx = lshr i16 %i.cw, 3                       ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cv, i64 4      ; 4 uses
  %.not.i.i32 = icmp eq i16 %i.cx, 0
  br i1 %.not.i.i32, label %rtm_to_nh_config_rtnl.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bv
  %.val35.i = load ptr, ptr %i.an, align 8
  %.88.val.fr.i.i = freeze ptr %.val35.i
  %.not33.i.i = icmp eq ptr %.88.val.fr.i.i, null
  %i.cz = getelementptr i8, ptr %.val, i64 872    ; 4 uses
  %i.da = icmp ugt i16 %i.cw, 15                  ; 2 uses
  %wide.trip.count84.i.i = zext nneg i16 %i.cx to i64 ; 2 uses
  br i1 %.not33.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i
  br i1 %i.da, label %.lr.ph.split.us.split.i.i, label %.lr.ph.split.us.split.us.i.preheader.i

.lr.ph.split.us.split.us.i.preheader.i:           ; preds = %.lr.ph.split.us.i.i
  %i.db = load i32, ptr %i.cy, align 4            ; 2 uses
  %i.dc = load volatile ptr, ptr %i.cz, align 8   ; 2 uses
  %.not32.i.us.us.i.i = icmp eq ptr %i.dc, null
  br i1 %.not32.i.us.us.i.i, label %.loopexit.i.i, label %.lr.ph.i.us.us.i.i

.lr.ph.i.us.us.i.i:                               ; preds = %.lr.ph.split.us.split.us.i.preheader.i, %bb.bx
  %i.dd = phi ptr [ %i.dj, %bb.bx ], [ %i.dc, %.lr.ph.split.us.split.us.i.preheader.i ] ; 4 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 96
  %i.df = load i32, ptr %i.de, align 8            ; 2 uses
  %i.dg = icmp ult i32 %i.db, %i.df
  br i1 %i.dg, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph.i.us.us.i.i
  %i.dh = icmp ugt i32 %i.db, %i.df
  br i1 %i.dh, label %bb.bx, label %nexthop_find_by_id.exit.us.us.i.i

bb.bx:                                            ; preds = %bb.bw, %.lr.ph.i.us.us.i.i
  %.sink.i.us.us.i.i = phi i64 [ 16, %.lr.ph.i.us.us.i.i ], [ 8, %bb.bw ]
  %i.di = getelementptr i8, ptr %i.dd, i64 %.sink.i.us.us.i.i
  %i.dj = load volatile ptr, ptr %i.di, align 8   ; 2 uses
  %.not.i.us.us.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.us.us.i.i, label %.loopexit.i.i, label %.lr.ph.i.us.us.i.i

nexthop_find_by_id.exit.us.us.i.i:                ; preds = %bb.bw
  %i.dk = getelementptr i8, ptr %i.dd, i64 102
  %i.dl = load i8, ptr %i.dk, align 2, !range !20, !noundef !21
  %i.dm = trunc nuw i8 %i.dl to i1
  %i.dn = getelementptr i8, ptr %i.dd, i64 128
  %i.do = load ptr, ptr %i.dn, align 8            ; 3 uses
  br i1 %i.dm, label %bb.by, label %valid_group_nh.exit.us.us.i.i

bb.by:                                            ; preds = %nexthop_find_by_id.exit.us.us.i.i
  %i.dp = getelementptr i8, ptr %i.do, i64 11
  %i.dq = load i8, ptr %i.dp, align 1, !range !20, !noundef !21
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %.split21.us.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ds = getelementptr i8, ptr %i.do, i64 12
  %i.dt = load i8, ptr %i.ds, align 4, !range !20, !noundef !21
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %.split23.us.i.i, label %valid_group_nh.exit.us.us.i.i

valid_group_nh.exit.us.us.i.i:                    ; preds = %bb.bz, %nexthop_find_by_id.exit.us.us.i.i
  %.sink.i.i = phi i64 [ 26, %nexthop_find_by_id.exit.us.us.i.i ], [ 13, %bb.bz ]
  %i.dv = getelementptr i8, ptr %i.do, i64 %.sink.i.i
  %.0.us.us.i.i = load i8, ptr %i.dv, align 1, !range !20, !noundef !21
  %i.dw = trunc nuw i8 %.0.us.us.i.i to i1
  br i1 %i.dw, label %.split25.us.i.i, label %rtm_to_nh_config_rtnl.exit

.lr.ph.split.us.split.i.i:                        ; preds = %.lr.ph.split.us.i.i, %nh_check_attr_fdb_group.exit.thread12.us.i.i
  %indvars.iv81.i.i = phi i64 [ %indvars.iv.next82.i.i, %nh_check_attr_fdb_group.exit.thread12.us.i.i ], [ 0, %.lr.ph.split.us.i.i ] ; 2 uses
  %i.dx = getelementptr [8 x i8], ptr %i.cy, i64 %indvars.iv81.i.i
  %i.dy = load i32, ptr %i.dx, align 4            ; 2 uses
  %i.dz = load volatile ptr, ptr %i.cz, align 8   ; 2 uses
  %.not32.i.us.i.i = icmp eq ptr %i.dz, null
  br i1 %.not32.i.us.i.i, label %.loopexit.i.i, label %.lr.ph.i.us.i.i

.lr.ph.i.us.i.i:                                  ; preds = %.lr.ph.split.us.split.i.i, %bb.cb
  %i.ea = phi ptr [ %i.eg, %bb.cb ], [ %i.dz, %.lr.ph.split.us.split.i.i ] ; 4 uses
  %i.eb = getelementptr i8, ptr %i.ea, i64 96
  %i.ec = load i32, ptr %i.eb, align 8            ; 2 uses
  %i.ed = icmp ult i32 %i.dy, %i.ec
  br i1 %i.ed, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph.i.us.i.i
  %i.ee = icmp ugt i32 %i.dy, %i.ec
  br i1 %i.ee, label %bb.cb, label %nexthop_find_by_id.exit.us.i.i

bb.cb:                                            ; preds = %bb.ca, %.lr.ph.i.us.i.i
  %.sink.i.us.i.i = phi i64 [ 16, %.lr.ph.i.us.i.i ], [ 8, %bb.ca ]
  %i.ef = getelementptr i8, ptr %i.ea, i64 %.sink.i.us.i.i
  %i.eg = load volatile ptr, ptr %i.ef, align 8   ; 2 uses
  %.not.i.us.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.us.i.i, label %.loopexit.i.i, label %.lr.ph.i.us.i.i

nexthop_find_by_id.exit.us.i.i:                   ; preds = %bb.ca
  %i.eh = getelementptr i8, ptr %i.ea, i64 102
  %i.ei = load i8, ptr %i.eh, align 2, !range !20, !noundef !21
  %i.ej = trunc nuw i8 %i.ei to i1
  %i.ek = getelementptr i8, ptr %i.ea, i64 128
  %i.el = load ptr, ptr %i.ek, align 8            ; 4 uses
  br i1 %i.ej, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %nexthop_find_by_id.exit.us.i.i
  %i.em = getelementptr i8, ptr %i.el, i64 25
  %i.en = load i8, ptr %i.em, align 1, !range !20, !noundef !21
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %.split.us.i.i, label %valid_group_nh.exit.us.i.i

bb.cd:                                            ; preds = %nexthop_find_by_id.exit.us.i.i
  %i.ep = getelementptr i8, ptr %i.el, i64 11
  %i.eq = load i8, ptr %i.ep, align 1, !range !20, !noundef !21
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %.split21.us.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.es = getelementptr i8, ptr %i.el, i64 12
  %i.et = load i8, ptr %i.es, align 4, !range !20, !noundef !21
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %.split23.us.i.i, label %valid_group_nh.exit.us.i.i

valid_group_nh.exit.us.i.i:                       ; preds = %bb.ce, %bb.cc
  %.sink130.i.i = phi i64 [ 26, %bb.cc ], [ 13, %bb.ce ]
  %i.ev = getelementptr i8, ptr %i.el, i64 %.sink130.i.i
  %.0.us.i.i = load i8, ptr %i.ev, align 1, !range !20, !noundef !21
  %i.ew = trunc nuw i8 %.0.us.i.i to i1
  br i1 %i.ew, label %.split25.us.i.i, label %nh_check_attr_fdb_group.exit.thread12.us.i.i

nh_check_attr_fdb_group.exit.thread12.us.i.i:     ; preds = %valid_group_nh.exit.us.i.i
  %indvars.iv.next82.i.i = add nuw nsw i64 %indvars.iv81.i.i, 1 ; 2 uses
  %exitcond85.not.i.i = icmp eq i64 %indvars.iv.next82.i.i, %wide.trip.count84.i.i
  br i1 %exitcond85.not.i.i, label %rtm_to_nh_config_rtnl.exit, label %.lr.ph.split.us.split.i.i, !llvm.loop !131

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  br i1 %i.da, label %.lr.ph.split.split.i.i, label %.lr.ph.split.split.us.i.preheader.i

.lr.ph.split.split.us.i.preheader.i:              ; preds = %.lr.ph.split.i.i
  %i.ex = load i32, ptr %i.cy, align 4            ; 2 uses
  %i.ey = load volatile ptr, ptr %i.cz, align 8   ; 2 uses
  %.not32.i.us28.i.i = icmp eq ptr %i.ey, null
  br i1 %.not32.i.us28.i.i, label %.loopexit.i.i, label %.lr.ph.i.us30.i.i

.lr.ph.i.us30.i.i:                                ; preds = %.lr.ph.split.split.us.i.preheader.i, %bb.cg
  %i.ez = phi ptr [ %i.ff, %bb.cg ], [ %i.ey, %.lr.ph.split.split.us.i.preheader.i ] ; 4 uses
  %i.fa = getelementptr i8, ptr %i.ez, i64 96
  %i.fb = load i32, ptr %i.fa, align 8            ; 2 uses
  %i.fc = icmp ult i32 %i.ex, %i.fb
  br i1 %i.fc, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph.i.us30.i.i
  %i.fd = icmp ugt i32 %i.ex, %i.fb
  br i1 %i.fd, label %bb.cg, label %nexthop_find_by_id.exit.us33.i.i

bb.cg:                                            ; preds = %bb.cf, %.lr.ph.i.us30.i.i
  %.sink.i.us31.i.i = phi i64 [ 16, %.lr.ph.i.us30.i.i ], [ 8, %bb.cf ]
  %i.fe = getelementptr i8, ptr %i.ez, i64 %.sink.i.us31.i.i
  %i.ff = load volatile ptr, ptr %i.fe, align 8   ; 2 uses
  %.not.i.us32.i.i = icmp eq ptr %i.ff, null
  br i1 %.not.i.us32.i.i, label %.loopexit.i.i, label %.lr.ph.i.us30.i.i

nexthop_find_by_id.exit.us33.i.i:                 ; preds = %bb.cf
  %i.fg = getelementptr i8, ptr %i.ez, i64 102
  %i.fh = load i8, ptr %i.fg, align 2, !range !20, !noundef !21
  %i.fi = trunc nuw i8 %i.fh to i1
  %i.fj = getelementptr i8, ptr %i.ez, i64 128
  %i.fk = load ptr, ptr %i.fj, align 8            ; 3 uses
  br i1 %i.fi, label %bb.ch, label %valid_group_nh.exit.us36.i.i

bb.ch:                                            ; preds = %nexthop_find_by_id.exit.us33.i.i
  %i.fl = getelementptr i8, ptr %i.fk, i64 11
  %i.fm = load i8, ptr %i.fl, align 1, !range !20, !noundef !21
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %.split21.us.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.fo = getelementptr i8, ptr %i.fk, i64 12
  %i.fp = load i8, ptr %i.fo, align 4, !range !20, !noundef !21
  %i.fq = trunc nuw i8 %i.fp to i1
  br i1 %i.fq, label %.split23.us.i.i, label %valid_group_nh.exit.us36.i.i

valid_group_nh.exit.us36.i.i:                     ; preds = %bb.ci, %nexthop_find_by_id.exit.us33.i.i
  %i.fr = getelementptr i8, ptr %i.fk, i64 26
  %i.fs = load i8, ptr %i.fr, align 2, !range !20, !noundef !21
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %rtm_to_nh_config_rtnl.exit, label %.split40.us.i.i

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.i.i, %nh_check_attr_fdb_group.exit.thread12.i.i
  %indvars.iv72.i.i = phi i64 [ %indvars.iv.next73.i.i, %nh_check_attr_fdb_group.exit.thread12.i.i ], [ 0, %.lr.ph.split.i.i ] ; 2 uses
  %.0218.i.i = phi i8 [ %.2315.i.i, %nh_check_attr_fdb_group.exit.thread12.i.i ], [ 0, %.lr.ph.split.i.i ] ; 3 uses
  %i.fu = getelementptr [8 x i8], ptr %i.cy, i64 %indvars.iv72.i.i
  %i.fv = load i32, ptr %i.fu, align 4            ; 2 uses
  %i.fw = load volatile ptr, ptr %i.cz, align 8   ; 2 uses
  %.not32.i.i.i = icmp eq ptr %i.fw, null
  br i1 %.not32.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.split.split.i.i, %bb.ck
  %i.fx = phi ptr [ %i.gd, %bb.ck ], [ %i.fw, %.lr.ph.split.split.i.i ] ; 4 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 96
  %i.fz = load i32, ptr %i.fy, align 8            ; 2 uses
  %i.ga = icmp ult i32 %i.fv, %i.fz
  br i1 %i.ga, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph.i.i.i
  %i.gb = icmp ugt i32 %i.fv, %i.fz
  br i1 %i.gb, label %bb.ck, label %nexthop_find_by_id.exit.i.i

bb.ck:                                            ; preds = %bb.cj, %.lr.ph.i.i.i
  %.sink.i.i.i = phi i64 [ 16, %.lr.ph.i.i.i ], [ 8, %bb.cj ]
  %i.gc = getelementptr i8, ptr %i.fx, i64 %.sink.i.i.i
  %i.gd = load volatile ptr, ptr %i.gc, align 8   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i

.loopexit.i.i:                                    ; preds = %bb.cg, %.lr.ph.split.split.i.i, %bb.ck, %bb.bx, %.lr.ph.split.us.split.i.i, %bb.cb, %.lr.ph.split.split.us.i.preheader.i, %.lr.ph.split.us.split.us.i.preheader.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nh_check_attr_group_rtnl.__msg) #16
  %.not31.i.i = icmp eq ptr %2, null
  br i1 %.not31.i.i, label %rtm_to_nh_config_rtnl.exit.thread, label %nh_check_attr_group_rtnl.exit.sink.split.i

nexthop_find_by_id.exit.i.i:                      ; preds = %bb.cj
  %i.ge = getelementptr i8, ptr %i.fx, i64 102
  %i.gf = load i8, ptr %i.ge, align 2, !range !20, !noundef !21
  %i.gg = trunc nuw i8 %i.gf to i1
  %i.gh = getelementptr i8, ptr %i.fx, i64 128
  %i.gi = load ptr, ptr %i.gh, align 8            ; 5 uses
  br i1 %i.gg, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %nexthop_find_by_id.exit.i.i
  %i.gj = getelementptr i8, ptr %i.gi, i64 11
  %i.gk = load i8, ptr %i.gj, align 1, !range !20, !noundef !21
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %.split21.us.i.i, label %bb.cm

.split21.us.i.i:                                  ; preds = %bb.cl, %bb.cd, %bb.ch, %bb.by
  call void @do_trace_netlink_extack(ptr noundef nonnull @valid_group_nh.__msg) #16
  %.not29.i.i.i = icmp eq ptr %2, null
  br i1 %.not29.i.i.i, label %rtm_to_nh_config_rtnl.exit.thread, label %nh_check_attr_group_rtnl.exit.sink.split.i

bb.cm:                                            ; preds = %bb.cl
  %i.gm = getelementptr i8, ptr %i.gi, i64 12
  %i.gn = load i8, ptr %i.gm, align 4, !range !20, !noundef !21
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %.split23.us.i.i, label %valid_group_nh.exit.i.i

.split23.us.i.i:                                  ; preds = %bb.cm, %bb.ce, %bb.ci, %bb.bz
  call void @do_trace_netlink_extack(ptr noundef nonnull @valid_group_nh.__msg.38) #16
  %.not28.i.i.i = icmp eq ptr %2, null
  br i1 %.not28.i.i.i, label %rtm_to_nh_config_rtnl.exit.thread, label %nh_check_attr_group_rtnl.exit.sink.split.i

bb.cn:                                            ; preds = %nexthop_find_by_id.exit.i.i
  %i.gp = getelementptr i8, ptr %i.gi, i64 25
  %i.gq = load i8, ptr %i.gp, align 1, !range !20, !noundef !21
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %.split.us.i.i, label %valid_group_nh.exit.i.i

.split.us.i.i:                                    ; preds = %bb.cn, %bb.cc
  call void @do_trace_netlink_extack(ptr noundef nonnull @valid_group_nh.__msg.39) #16
  %.not.i36.i.i = icmp eq ptr %2, null
  br i1 %.not.i36.i.i, label %rtm_to_nh_config_rtnl.exit.thread, label %nh_check_attr_group_rtnl.exit.sink.split.i

valid_group_nh.exit.i.i:                          ; preds = %bb.cn, %bb.cm
  %i.gs = getelementptr i8, ptr %i.gi, i64 26
  %i.gt = load i8, ptr %i.gs, align 2, !range !20, !noundef !21
  %i.gu = trunc nuw i8 %i.gt to i1
  br i1 %i.gu, label %bb.co, label %.split40.us.i.i

.split40.us.i.i:                                  ; preds = %valid_group_nh.exit.i.i, %valid_group_nh.exit.us36.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nh_check_attr_fdb_group.__msg) #16
  %.not.i37.i.i = icmp eq ptr %2, null
  br i1 %.not.i37.i.i, label %rtm_to_nh_config_rtnl.exit.thread, label %nh_check_attr_group_rtnl.exit.sink.split.i

bb.co:                                            ; preds = %valid_group_nh.exit.i.i
  %i.gv = icmp eq i8 %.0218.i.i, 0
  %i.gw = getelementptr i8, ptr %i.gi, i64 24
  %i.gx = load i8, ptr %i.gw, align 8             ; 2 uses
  br i1 %i.gv, label %nh_check_attr_fdb_group.exit.thread12.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %.not16.i.i.i = icmp eq i8 %.0218.i.i, %i.gx
  br i1 %.not16.i.i.i, label %nh_check_attr_fdb_group.exit.thread12.i.i, label %.split42.us.i.i

.split42.us.i.i:                                  ; preds = %bb.cp
  call void @do_trace_netlink_extack(ptr noundef nonnull @nh_check_attr_fdb_group.__msg.40) #16
  %.not17.i.i.i = icmp eq ptr %2, null
  br i1 %.not17.i.i.i, label %rtm_to_nh_config_rtnl.exit.thread, label %nh_check_attr_group_rtnl.exit.sink.split.i

.split25.us.i.i:                                  ; preds = %valid_group_nh.exit.us.i.i, %valid_group_nh.exit.us.us.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nh_check_attr_group_rtnl.__msg.37) #16
  %.not34.i.i = icmp eq ptr %2, null
  br i1 %.not34.i.i, label %rtm_to_nh_config_rtnl.exit.thread, label %nh_check_attr_group_rtnl.exit.sink.split.i

nh_check_attr_fdb_group.exit.thread12.i.i:        ; preds = %bb.cp, %bb.co
  %.2315.i.i = phi i8 [ %i.gx, %bb.co ], [ %.0218.i.i, %bb.cp ]
  %indvars.iv.next73.i.i = add nuw nsw i64 %indvars.iv72.i.i, 1 ; 2 uses
  %exitcond75.not.i.i = icmp eq i64 %indvars.iv.next73.i.i, %wide.trip.count84.i.i
  br i1 %exitcond75.not.i.i, label %rtm_to_nh_config_rtnl.exit, label %.lr.ph.split.split.i.i, !llvm.loop !131

bb.cq:                                            ; preds = %bb.bu
  %i.gy = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.gz = load ptr, ptr %i.gy, align 8            ; 2 uses
  %.not27.i = icmp eq ptr %i.gz, null
  br i1 %.not27.i, label %rtm_to_nh_config_rtnl.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ha = getelementptr i8, ptr %i.gz, i64 4
  %.val.i33 = load i32, ptr %i.ha, align 4        ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %.val.i33, ptr %i.hb, align 4
  %.not28.i = icmp eq i32 %.val.i33, 0
  br i1 %.not28.i, label %._crit_edge.i, label %bb.cs

._crit_edge.i:                                    ; preds = %bb.cr
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.hc = call ptr @__dev_get_by_index(ptr noundef %.val, i32 noundef %.val.i33) #16 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.hc, ptr %i.hd, align 8
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %._crit_edge.i
  %i.he = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.hc, %bb.cs ] ; 3 uses
  %.not29.i = icmp eq ptr %i.he, null
  br i1 %.not29.i, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config_rtnl.__msg) #16
  %.not30.i = icmp eq ptr %2, null
  br i1 %.not30.i, label %rtm_to_nh_config_rtnl.exit.thread, label %nh_check_attr_group_rtnl.exit.sink.split.i

bb.cv:                                            ; preds = %bb.ct
  %i.hf = getelementptr i8, ptr %i.he, i64 176
  %i.hg = load i32, ptr %i.hf, align 16
  %i.hh = and i32 %i.hg, 1
  %.not31.i = icmp eq i32 %i.hh, 0
  br i1 %.not31.i, label %bb.cw, label %netif_carrier_ok.exit.i

bb.cw:                                            ; preds = %bb.cv
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config_rtnl.__msg.35) #16
  %.not32.i = icmp eq ptr %2, null
  br i1 %.not32.i, label %rtm_to_nh_config_rtnl.exit.thread, label %nh_check_attr_group_rtnl.exit.sink.split.i

netif_carrier_ok.exit.i:                          ; preds = %bb.cv
  %i.hi = getelementptr i8, ptr %i.he, i64 168
  %i.hj = load volatile i64, ptr %i.hi, align 8
  %.in.in.i.i = and i64 %i.hj, 4
  %.in.not.i.i = icmp eq i64 %.in.in.i.i, 0
  br i1 %.in.not.i.i, label %rtm_to_nh_config_rtnl.exit, label %bb.cx

bb.cx:                                            ; preds = %netif_carrier_ok.exit.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_nh_config_rtnl.__msg.36) #16
  %.not33.i = icmp eq ptr %2, null
  br i1 %.not33.i, label %rtm_to_nh_config_rtnl.exit.thread, label %nh_check_attr_group_rtnl.exit.sink.split.i

nh_check_attr_group_rtnl.exit.sink.split.i:       ; preds = %bb.cx, %bb.cw, %bb.cu, %.split25.us.i.i, %.split42.us.i.i, %.split40.us.i.i, %.split.us.i.i, %.split23.us.i.i, %.split21.us.i.i, %.loopexit.i.i
  %nh_check_attr_fdb_group.__msg.40.sink.i.sink.i = phi ptr [ @nh_check_attr_group_rtnl.__msg.37, %.split25.us.i.i ], [ @rtm_to_nh_config_rtnl.__msg.35, %bb.cw ], [ @rtm_to_nh_config_rtnl.__msg, %bb.cu ], [ @nh_check_attr_fdb_group.__msg, %.split40.us.i.i ], [ @valid_group_nh.__msg.39, %.split.us.i.i ], [ @valid_group_nh.__msg.38, %.split23.us.i.i ], [ @valid_group_nh.__msg, %.split21.us.i.i ], [ @nh_check_attr_group_rtnl.__msg, %.loopexit.i.i ], [ @nh_check_attr_fdb_group.__msg.40, %.split42.us.i.i ], [ @rtm_to_nh_config_rtnl.__msg.36, %bb.cx ]
  %.0.ph.i = phi i32 [ -22, %.split25.us.i.i ], [ -100, %bb.cw ], [ -22, %bb.cu ], [ -22, %.split40.us.i.i ], [ -22, %.split.us.i.i ], [ -22, %.split23.us.i.i ], [ -22, %.split21.us.i.i ], [ -22, %.loopexit.i.i ], [ -22, %.split42.us.i.i ], [ -100, %bb.cx ]
  store ptr %nh_check_attr_fdb_group.__msg.40.sink.i.sink.i, ptr %2, align 8
  br label %rtm_to_nh_config_rtnl.exit.thread

rtm_to_nh_config_rtnl.exit:                       ; preds = %nh_check_attr_fdb_group.exit.thread12.i.i, %nh_check_attr_fdb_group.exit.thread12.us.i.i, %netif_carrier_ok.exit.i, %bb.cq, %valid_group_nh.exit.us36.i.i, %valid_group_nh.exit.us.us.i.i, %bb.bv
  br i1 %i.cu, label %bb.de, label %bb.cy

bb.cy:                                            ; preds = %rtm_to_nh_config_rtnl.exit
  %i.hk = getelementptr i8, ptr %.val, i64 892    ; 3 uses
  %i.hl = load i32, ptr %i.hk, align 4            ; 2 uses
  %i.hm = add i32 %i.hl, 1                        ; 2 uses
  store i32 %i.hm, ptr %i.hk, align 4
  %i.hn = getelementptr i8, ptr %.val, i64 872
  br label %bb.cz

nexthop_find_by_id.exit.loopexit.i.i:             ; preds = %bb.da
  %i.ho = add i32 %i.hq, 1                        ; 3 uses
  store i32 %i.ho, ptr %i.hk, align 4
  %i.hp = icmp eq i32 %i.ho, %i.hl
  br i1 %i.hp, label %nh_find_unused_id.exit.thread.i, label %bb.cz

nh_find_unused_id.exit.thread.i:                  ; preds = %nexthop_find_by_id.exit.loopexit.i.i
  store i32 0, ptr %7, align 8
  br label %bb.dc

bb.cz:                                            ; preds = %nexthop_find_by_id.exit.loopexit.i.i, %bb.cy
  %i.hq = phi i32 [ %i.hm, %bb.cy ], [ %i.ho, %nexthop_find_by_id.exit.loopexit.i.i ] ; 5 uses
  %i.hr = load volatile ptr, ptr %i.hn, align 8   ; 2 uses
  %.not32.i.i.i42 = icmp eq ptr %i.hr, null
  br i1 %.not32.i.i.i42, label %nh_find_unused_id.exit.i, label %.lr.ph.i.i.i43

.lr.ph.i.i.i43:                                   ; preds = %bb.cz, %bb.db
  %i.hs = phi ptr [ %i.hy, %bb.db ], [ %i.hr, %bb.cz ] ; 2 uses
  %i.ht = getelementptr i8, ptr %i.hs, i64 96
  %i.hu = load i32, ptr %i.ht, align 8            ; 2 uses
  %i.hv = icmp ult i32 %i.hq, %i.hu
  br i1 %i.hv, label %bb.db, label %bb.da

bb.da:                                            ; preds = %.lr.ph.i.i.i43
  %i.hw = icmp ugt i32 %i.hq, %i.hu
  br i1 %i.hw, label %bb.db, label %nexthop_find_by_id.exit.loopexit.i.i

bb.db:                                            ; preds = %bb.da, %.lr.ph.i.i.i43
  %.sink.i.i.i44 = phi i64 [ 16, %.lr.ph.i.i.i43 ], [ 8, %bb.da ]
  %i.hx = getelementptr i8, ptr %i.hs, i64 %.sink.i.i.i44
  %i.hy = load volatile ptr, ptr %i.hx, align 8   ; 2 uses
  %.not.i.i.i45 = icmp eq ptr %i.hy, null
  br i1 %.not.i.i.i45, label %nh_find_unused_id.exit.i, label %.lr.ph.i.i.i43

nh_find_unused_id.exit.i:                         ; preds = %bb.cz, %bb.db
  store i32 %i.hq, ptr %7, align 8
  %.not38.i = icmp eq i32 %i.hq, 0
  br i1 %.not38.i, label %bb.dc, label %bb.de

bb.dc:                                            ; preds = %nh_find_unused_id.exit.i, %nh_find_unused_id.exit.thread.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nexthop_add.__msg) #16
  %.not39.i = icmp eq ptr %2, null
  br i1 %.not39.i, label %nexthop_add.exit.thread, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  store ptr @nexthop_add.__msg, ptr %2, align 8
  br label %nexthop_add.exit.thread

bb.de:                                            ; preds = %nh_find_unused_id.exit.i, %rtm_to_nh_config_rtnl.exit
  %i.hz = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ia = load ptr, ptr %i.hz, align 8            ; 3 uses
  %.not40.i = icmp eq ptr %i.ia, null
  br i1 %.not40.i, label %bb.ej, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ib = getelementptr i8, ptr %i.ia, i64 4
  %.val.i.i35 = load i16, ptr %i.ia, align 2
  %i.ic = add i16 %.val.i.i35, -4
  %i.id = lshr i16 %i.ic, 3                       ; 3 uses
  %i.ie = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 16), align 16
  %i.if = call noalias align 8 dereferenceable_or_null(136) ptr @__kmalloc_cache_noprof(ptr noundef %i.ie, i32 noundef 3520, i64 noundef 136) #20 ; 17 uses
  %.not.i125.i.i = icmp eq ptr %i.if, null
  br i1 %.not.i125.i.i, label %nexthop_add.exit.thread, label %_kzalloc_noprof.exit.i.i.i

_kzalloc_noprof.exit.i.i.i:                       ; preds = %bb.df
  %i.ig = getelementptr i8, ptr %i.if, i64 24     ; 3 uses
  store volatile ptr %i.ig, ptr %i.ig, align 8
  %i.ih = getelementptr i8, ptr %i.if, i64 32
  store volatile ptr %i.ig, ptr %i.ih, align 8
  %i.ii = getelementptr i8, ptr %i.if, i64 40     ; 3 uses
  store volatile ptr %i.ii, ptr %i.ii, align 8
  %i.ij = getelementptr i8, ptr %i.if, i64 48
  store volatile ptr %i.ii, ptr %i.ij, align 8
  %i.ik = getelementptr i8, ptr %i.if, i64 72     ; 3 uses
  store volatile ptr %i.ik, ptr %i.ik, align 8
  %i.il = getelementptr i8, ptr %i.if, i64 80
  store volatile ptr %i.ik, ptr %i.il, align 8
  %i.im = getelementptr i8, ptr %i.if, i64 56     ; 3 uses
  store volatile ptr %i.im, ptr %i.im, align 8
  %i.in = getelementptr i8, ptr %i.if, i64 64
  store volatile ptr %i.im, ptr %i.in, align 8
  %i.io = getelementptr i8, ptr %i.if, i64 104
  store i32 0, ptr %i.io, align 8
  %i.ip = getelementptr i8, ptr %i.if, i64 102
  store i8 1, ptr %i.ip, align 2
  %i.iq = zext nneg i16 %i.id to i64
  %i.ir = mul nuw nsw i64 %i.iq, 80
  %i.is = add nuw nsw i64 %i.ir, 24               ; 2 uses
  %i.it = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef %i.is, i32 noundef 3520) #19 ; 28 uses
  %.not.i126.i.i = icmp eq ptr %i.it, null
  br i1 %.not.i126.i.i, label %bb.dg, label %_kzalloc_noprof.exit.i127.i.i

bb.dg:                                            ; preds = %_kzalloc_noprof.exit.i.i.i
  call void @kfree(ptr noundef nonnull %i.if) #16
  br label %nexthop_add.exit.thread

_kzalloc_noprof.exit.i127.i.i:                    ; preds = %_kzalloc_noprof.exit.i.i.i
  %i.iu = getelementptr i8, ptr %i.it, i64 8      ; 4 uses
  store i16 %i.id, ptr %i.iu, align 8
  %i.iv = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef %i.is, i32 noundef 3520) #19 ; 4 uses
  %.not.i129.i.i = icmp eq ptr %i.iv, null
  br i1 %.not.i129.i.i, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %_kzalloc_noprof.exit.i127.i.i
  store ptr null, ptr %i.it, align 8
  call void @kfree(ptr noundef nonnull %i.it) #16
  call void @kfree(ptr noundef nonnull %i.if) #16
  br label %nexthop_add.exit.thread

bb.di:                                            ; preds = %_kzalloc_noprof.exit.i127.i.i
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  store i16 %i.id, ptr %i.iw, align 8
  store ptr %i.iv, ptr %i.it, align 8
  store ptr %i.it, ptr %i.iv, align 8
  %i.ix = load i16, ptr %i.iu, align 8
  %.not163.i.i = icmp eq i16 %i.ix, 0
  br i1 %.not163.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i36

.lr.ph.i.i36:                                     ; preds = %bb.di
  %i.iy = getelementptr i8, ptr %.val, i64 872
  %i.iz = getelementptr i8, ptr %i.it, i64 14
  %i.ja = getelementptr i8, ptr %i.it, i64 24
end_hunk_0
