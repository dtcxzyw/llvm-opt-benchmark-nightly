inline.NumInlined: 122
inline.NumDeleted: 51
begin_hunk_0_@ssl_tls13_process_client_hello:bb.a
  br i1 %.not303.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1467, ptr noundef nonnull @.str.25) #9
  call void @mbedtls_ssl_pend_fatal_alert(ptr noundef nonnull %0, i8 noundef zeroext 47, i32 noundef -26112) #9
  br label %ssl_tls13_parse_client_hello.exit.thread

bb.ad:                                            ; preds = %bb.ab
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %.0.copyload.i326.i = load i16, ptr %i.bu, align 1 ; 2 uses
  %i.bv = call i16 @llvm.bswap.i16(i16 %.0.copyload.i326.i)
  %i.bw = zext i16 %i.bv to i64                   ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 5 uses
  %i.by = icmp ule ptr %i.bx, %i.h
  %i.bz = ptrtoint ptr %i.bx to i64               ; 2 uses
  %i.ca = sub i64 %i.k, %i.bz
  %i.cb = icmp uge i64 %i.ca, %i.bw
  %narrow.i331.not.i = and i1 %i.by, %i.cb
  br i1 %narrow.i331.not.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1485, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.ssl_tls13_parse_client_hello) #9
  call void @mbedtls_ssl_pend_fatal_alert(ptr noundef nonnull %0, i8 noundef zeroext 50, i32 noundef -29440) #9
  br label %ssl_tls13_parse_client_hello.exit.thread

bb.af:                                            ; preds = %bb.ad
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bw ; 3 uses
  call void @mbedtls_debug_print_buf(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 1488, ptr noundef nonnull @.str.26, ptr noundef nonnull %i.bx, i64 noundef %i.bw) #9
  %i.cd = getelementptr inbounds nuw i8, ptr %i.j, i64 3276 ; 5 uses
  store i32 0, ptr %i.cd, align 4, !tbaa !60
  %.not420.i = icmp eq i16 %.0.copyload.i326.i, 0
  br i1 %.not420.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.af
  %i.ce = ptrtoint ptr %i.cc to i64               ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.be, %.lr.ph.i
  %.0263416.i = phi ptr [ %i.bx, %.lr.ph.i ], [ %i.cx, %bb.be ] ; 4 uses
  %.0266415.i = phi ptr [ null, %.lr.ph.i ], [ %.2268.i, %bb.be ] ; 9 uses
  %.0269414.i = phi ptr [ null, %.lr.ph.i ], [ %.2271.i, %bb.be ] ; 9 uses
  %.0273413.i = phi i32 [ 0, %.lr.ph.i ], [ %.3.i, %bb.be ] ; 9 uses
  %i.cf = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 57
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !61
  %.not315.i = icmp eq i8 %i.ch, 0
  %spec.select.i = select i1 %.not315.i, i32 536346623, i32 536330239
  %i.ci = load i32, ptr %i.cd, align 4, !tbaa !60
  %i.cj = and i32 %i.ci, 8192
  %.not316.i = icmp eq i32 %i.cj, 0
  br i1 %.not316.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 1511, ptr noundef nonnull @.str.27) #9
  call void @mbedtls_ssl_pend_fatal_alert(ptr noundef nonnull %0, i8 noundef zeroext 47, i32 noundef -26112) #9
  br label %ssl_tls13_parse_client_hello.exit.thread

bb.ai:                                            ; preds = %bb.ag
  %i.ck = ptrtoint ptr %.0263416.i to i64
  %i.cl = sub i64 %i.ce, %i.ck
  %i.cm = icmp ugt i64 %i.cl, 3
  br i1 %i.cm, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1518, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.ssl_tls13_parse_client_hello) #9
  call void @mbedtls_ssl_pend_fatal_alert(ptr noundef nonnull %0, i8 noundef zeroext 50, i32 noundef -29440) #9
  br label %ssl_tls13_parse_client_hello.exit.thread

bb.ak:                                            ; preds = %bb.ai
  %.0.copyload.i325.i = load i16, ptr %.0263416.i, align 1
  %i.cn = call i16 @llvm.bswap.i16(i16 %.0.copyload.i325.i) ; 2 uses
  %i.co = zext i16 %i.cn to i32                   ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0263416.i, i64 2
  %.0.copyload.i.i = load i16, ptr %i.cp, align 1
  %i.cq = call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i)
  %i.cr = zext i16 %i.cq to i64                   ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0263416.i, i64 4 ; 10 uses
  %i.ct = icmp ule ptr %i.cs, %i.cc
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ce, %i.cu
  %i.cw = icmp uge i64 %i.cv, %i.cr
  %narrow.i333.not.i = and i1 %i.ct, %i.cw
  br i1 %narrow.i333.not.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1523, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.ssl_tls13_parse_client_hello) #9
  call void @mbedtls_ssl_pend_fatal_alert(ptr noundef nonnull %0, i8 noundef zeroext 50, i32 noundef -29440) #9
  br label %ssl_tls13_parse_client_hello.exit.thread

bb.am:                                            ; preds = %bb.ak
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cr ; 10 uses
  %i.cy = call i32 @mbedtls_ssl_tls13_check_received_extension(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %i.co, i32 noundef %spec.select.i) #9 ; 2 uses
  %.not319.i = icmp eq i32 %i.cy, 0
  br i1 %.not319.i, label %bb.an, label %ssl_tls13_parse_client_hello.exit

bb.an:                                            ; preds = %bb.am
  switch i16 %i.cn, label %bb.bd [
    i16 0, label %bb.ao
    i16 10, label %bb.aq
    i16 51, label %bb.as
    i16 43, label %bb.be
    i16 45, label %bb.av
    i16 41, label %bb.ax
    i16 16, label %bb.az
    i16 13, label %bb.bb
  ]

bb.ao:                                            ; preds = %bb.an
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 1536, ptr noundef nonnull @.str.28) #9
  %i.cz = call i32 @mbedtls_ssl_parse_server_name_ext(ptr noundef nonnull %0, ptr noundef nonnull %i.cs, ptr noundef nonnull %i.cx) #9 ; 3 uses
  %.not324.i = icmp eq i32 %i.cz, 0
  br i1 %.not324.i, label %bb.be, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @mbedtls_debug_print_ret(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1541, ptr noundef nonnull @.str.29, i32 noundef %i.cz) #9
  br label %ssl_tls13_parse_client_hello.exit

bb.aq:                                            ; preds = %bb.an
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 1549, ptr noundef nonnull @.str.30) #9
  %i.da = call fastcc i32 @ssl_tls13_parse_supported_groups_ext(ptr noundef nonnull %0, ptr noundef nonnull %i.cs, ptr noundef nonnull %i.cx) ; 3 uses
  %.not323.i = icmp eq i32 %i.da, 0
  br i1 %.not323.i, label %bb.be, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @mbedtls_debug_print_ret(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1561, ptr noundef nonnull @.str.31, i32 noundef %i.da) #9
  br label %ssl_tls13_parse_client_hello.exit.thread

bb.as:                                            ; preds = %bb.an
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 1570, ptr noundef nonnull @.str.32) #9
  %i.db = call fastcc i32 @ssl_tls13_parse_key_shares_ext(ptr noundef nonnull %0, ptr noundef nonnull %i.cs, ptr noundef nonnull %i.cx) ; 4 uses
  %i.dc = icmp eq i32 %i.db, 1
  br i1 %i.dc, label %.thread.i, label %bb.at

.thread.i:                                        ; preds = %bb.as
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 1582, ptr noundef nonnull @.str.33) #9
  br label %bb.be

bb.at:                                            ; preds = %bb.as
  %i.dd = icmp slt i32 %i.db, 0
  br i1 %i.dd, label %bb.au, label %bb.be

bb.au:                                            ; preds = %bb.at
  call void @mbedtls_debug_print_ret(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1588, ptr noundef nonnull @.str.34, i32 noundef %i.db) #9
  br label %ssl_tls13_parse_client_hello.exit.thread

bb.av:                                            ; preds = %bb.an
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 1602, ptr noundef nonnull @.str.35) #9
  %i.de = call fastcc i32 @ssl_tls13_parse_key_exchange_modes_ext(ptr noundef nonnull %0, ptr noundef nonnull %i.cs, ptr noundef nonnull %i.cx) ; 3 uses
  %.not322.i = icmp eq i32 %i.de, 0
  br i1 %.not322.i, label %bb.be, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @mbedtls_debug_print_ret(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1608, ptr noundef nonnull @.str.36, i32 noundef %i.de) #9
  br label %ssl_tls13_parse_client_hello.exit.thread

bb.ax:                                            ; preds = %bb.an
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 1616, ptr noundef nonnull @.str.37) #9
  %i.df = load i32, ptr %i.cd, align 4, !tbaa !60
  %i.dg = and i32 %i.df, 131072
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.ay, label %bb.be

bb.ay:                                            ; preds = %bb.ax
  call void @mbedtls_ssl_pend_fatal_alert(ptr noundef nonnull %0, i8 noundef zeroext 47, i32 noundef -26112) #9
  br label %ssl_tls13_parse_client_hello.exit.thread

bb.az:                                            ; preds = %bb.an
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 1636, ptr noundef nonnull @.str.38) #9
  %i.di = call i32 @mbedtls_ssl_parse_alpn_ext(ptr noundef nonnull %0, ptr noundef nonnull %i.cs, ptr noundef nonnull %i.cx) #9 ; 3 uses
  %.not321.i = icmp eq i32 %i.di, 0
  br i1 %.not321.i, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @mbedtls_debug_print_ret(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1641, ptr noundef nonnull @.str.39, i32 noundef %i.di) #9
  br label %ssl_tls13_parse_client_hello.exit

bb.bb:                                            ; preds = %bb.an
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 1649, ptr noundef nonnull @.str.40) #9
  %i.dj = call i32 @mbedtls_ssl_parse_sig_alg_ext(ptr noundef nonnull %0, ptr noundef nonnull %i.cs, ptr noundef nonnull %i.cx) #9 ; 3 uses
  %.not320.i = icmp eq i32 %i.dj, 0
  br i1 %.not320.i, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @mbedtls_debug_print_ret(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1655, ptr noundef nonnull @.str.41, i32 noundef %i.dj) #9
  br label %ssl_tls13_parse_client_hello.exit

bb.bd:                                            ; preds = %bb.an
  call void @mbedtls_ssl_print_extension(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 1678, i32 noundef 1, i32 noundef %i.co, ptr noundef nonnull @.str.42, ptr noundef null) #9
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bb, %bb.az, %bb.ax, %bb.av, %bb.at, %.thread.i, %bb.aq, %bb.ao, %bb.an
  %.3.i = phi i32 [ 1, %.thread.i ], [ %.0273413.i, %bb.bd ], [ %.0273413.i, %bb.ao ], [ %.0273413.i, %bb.aq ], [ %.0273413.i, %bb.at ], [ %.0273413.i, %bb.an ], [ %.0273413.i, %bb.av ], [ %.0273413.i, %bb.bb ], [ %.0273413.i, %bb.az ], [ %.0273413.i, %bb.ax ] ; 2 uses
  %.2271.i = phi ptr [ %.0269414.i, %.thread.i ], [ %.0269414.i, %bb.bd ], [ %.0269414.i, %bb.ao ], [ %.0269414.i, %bb.aq ], [ %.0269414.i, %bb.at ], [ %.0269414.i, %bb.an ], [ %.0269414.i, %bb.av ], [ %.0269414.i, %bb.bb ], [ %.0269414.i, %bb.az ], [ %i.cs, %bb.ax ] ; 2 uses
  %.2268.i = phi ptr [ %.0266415.i, %.thread.i ], [ %.0266415.i, %bb.bd ], [ %.0266415.i, %bb.ao ], [ %.0266415.i, %bb.aq ], [ %.0266415.i, %bb.at ], [ %.0266415.i, %bb.an ], [ %.0266415.i, %bb.av ], [ %.0266415.i, %bb.bb ], [ %.0266415.i, %bb.az ], [ %i.cx, %bb.ax ] ; 2 uses
  %i.dk = icmp ult ptr %i.cx, %i.cc
  br i1 %i.dk, label %bb.ag, label %._crit_edge.loopexit.i, !llvm.loop !62

._crit_edge.loopexit.i:                           ; preds = %bb.be
  %.pre.i = load i32, ptr %i.cd, align 4, !tbaa !60
  %.pre445.i = ptrtoint ptr %i.cx to i64
  %2 = icmp ne i32 %.3.i, 0
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.af
  %.pre-phi.i = phi i64 [ %.pre445.i, %._crit_edge.loopexit.i ], [ %i.bz, %bb.af ]
  %i.dl = phi i32 [ %.pre.i, %._crit_edge.loopexit.i ], [ 0, %bb.af ]
  %.0273.lcssa.i = phi i1 [ %2, %._crit_edge.loopexit.i ], [ false, %bb.af ]
  %.0269.lcssa.i = phi ptr [ %.2271.i, %._crit_edge.loopexit.i ], [ null, %bb.af ] ; 2 uses
  %.0266.lcssa.i = phi ptr [ %.2268.i, %._crit_edge.loopexit.i ], [ null, %bb.af ]
  call void @mbedtls_ssl_print_extensions(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 1686, i32 noundef 1, i32 noundef %i.dl, ptr noundef null) #9
  %i.dm = sub i64 %.pre-phi.i, %i.l               ; 2 uses
  %i.dn = call i32 @mbedtls_ssl_add_hs_hdr_to_checksum(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %i.dm) #9 ; 3 uses
  %.not305.i = icmp eq i32 %i.dn, 0
  br i1 %.not305.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %._crit_edge.i
  call void @mbedtls_debug_print_ret(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1692, ptr noundef nonnull @.str.43, i32 noundef %i.dn) #9
  br label %ssl_tls13_parse_client_hello.exit

bb.bg:                                            ; preds = %._crit_edge.i
  %i.do = load i32, ptr %i.cd, align 4, !tbaa !60
  %i.dp = and i32 %i.do, 8192
  %.not306.i = icmp eq i32 %i.dp, 0
  %i.dq = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !64 ; 2 uses
  br i1 %.not306.i, label %bb.bl, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ds = ptrtoint ptr %.0269.lcssa.i to i64
  %i.dt = sub i64 %i.ds, %i.l
  %i.du = call i32 %i.dr(ptr noundef nonnull %0, ptr noundef %i.f, i64 noundef %i.dt) #9, !inline_history !65 ; 3 uses
  %.not308.i = icmp eq i32 %i.du, 0
  br i1 %.not308.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @mbedtls_debug_print_ret(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1708, ptr noundef nonnull @.str.44, i32 noundef %i.du) #9
  br label %ssl_tls13_parse_client_hello.exit

bb.bj:                                            ; preds = %bb.bh
  %i.dv = call fastcc i32 @ssl_tls13_parse_pre_shared_key_ext(ptr noundef nonnull %0, ptr noundef %.0269.lcssa.i, ptr noundef %.0266.lcssa.i, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ae, ptr noundef %1) ; 3 uses
  switch i32 %i.dv, label %bb.bk [
    i32 0, label %bb.bn
    i32 -27776, label %..thread343_crit_edge.i
  ]

..thread343_crit_edge.i:                          ; preds = %bb.bj
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.pre444.i = load i32, ptr %.phi.trans.insert.i, align 4
  br label %.thread343.i

bb.bk:                                            ; preds = %bb.bj
  call void @mbedtls_debug_print_ret(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1721, ptr noundef nonnull @.str.45, i32 noundef %i.dv) #9
  br label %ssl_tls13_parse_client_hello.exit

bb.bl:                                            ; preds = %bb.bg
  %i.dw = call i32 %i.dr(ptr noundef nonnull %0, ptr noundef %i.f, i64 noundef %i.dm) #9, !inline_history !65 ; 3 uses
  %.not307.i = icmp eq i32 %i.dw, 0
  br i1 %.not307.i, label %.thread343.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @mbedtls_debug_print_ret(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1729, ptr noundef nonnull @.str.44, i32 noundef %i.dw) #9
  br label %ssl_tls13_parse_client_hello.exit

bb.bn:                                            ; preds = %bb.bj
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dy = load i32, ptr %i.dx, align 4            ; 2 uses
  %i.dz = icmp eq i32 %i.dy, 4
  br i1 %i.dz, label %bb.bo, label %.thread343.i

bb.bo:                                            ; preds = %bb.bn
  %i.ea = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i8 4, ptr %i.ea, align 8, !tbaa !66
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 1753, ptr noundef nonnull @.str.46) #9
  br label %bb.bs

.thread343.i:                                     ; preds = %bb.bn, %bb.bl, %..thread343_crit_edge.i
  %i.eb = phi i32 [ %i.dy, %bb.bn ], [ %.pre444.i, %..thread343_crit_edge.i ], [ 0, %bb.bl ]
  %i.ec = phi i1 [ true, %bb.bn ], [ false, %..thread343_crit_edge.i ], [ false, %bb.bl ]
  %.val.i.i = load ptr, ptr %0, align 8, !tbaa !42
  %i.ed = getelementptr i8, ptr %.val.i.i, i64 32
  %.val.val.i.i = load i32, ptr %i.ed, align 8, !tbaa !67
  %i.ee = and i32 %.val.val.i.i, 2
  %.not.i.i = icmp eq i32 %i.ee, 0
  br i1 %.not.i.i, label %ssl_tls13_key_exchange_is_ephemeral_available.exit.thread.i, label %ssl_tls13_key_exchange_is_ephemeral_available.exit.i

ssl_tls13_key_exchange_is_ephemeral_available.exit.i: ; preds = %.thread343.i
  %.val2.i.i = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.ef = getelementptr i8, ptr %.val2.i.i, i64 3276
  %.val2.val.i.i = load i32, ptr %i.ef, align 4, !tbaa !60
  %i.eg = and i32 %.val2.val.i.i, 4194352
  %.not.i = icmp eq i32 %i.eg, 4194352
  br i1 %.not.i, label %bb.bp, label %ssl_tls13_key_exchange_is_ephemeral_available.exit.thread.i

bb.bp:                                            ; preds = %ssl_tls13_key_exchange_is_ephemeral_available.exit.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i8 2, ptr %i.eh, align 8, !tbaa !66
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 1760, ptr noundef nonnull @.str.47) #9
  br label %bb.bs

ssl_tls13_key_exchange_is_ephemeral_available.exit.thread.i: ; preds = %ssl_tls13_key_exchange_is_ephemeral_available.exit.i, %.thread343.i
  %i.ei = icmp eq i32 %i.eb, 1
  %or.cond5.i = select i1 %i.ec, i1 %i.ei, i1 false
  br i1 %or.cond5.i, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %ssl_tls13_key_exchange_is_ephemeral_available.exit.thread.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i8 1, ptr %i.ej, align 8, !tbaa !66
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 1767, ptr noundef nonnull @.str.48) #9
  br label %bb.bs

bb.br:                                            ; preds = %ssl_tls13_key_exchange_is_ephemeral_available.exit.thread.i
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1773, ptr noundef nonnull @.str.49) #9
  call void @mbedtls_ssl_pend_fatal_alert(ptr noundef nonnull %0, i8 noundef zeroext 109, i32 noundef -26112) #9
  br label %ssl_tls13_parse_client_hello.exit.thread

bb.bs:                                            ; preds = %bb.bq, %bb.bp, %bb.bo
  %i.ek = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  %i.el = load i8, ptr %i.ek, align 8, !tbaa !66
  %i.em = and i8 %i.el, 5
  %.not311.i = icmp eq i8 %i.em, 0
  br i1 %.not311.i, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !68 ; 3 uses
  store ptr %i.eo, ptr %i.bk, align 8, !tbaa !55
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !56 ; 2 uses
  %i.eq = load ptr, ptr %i.aw, align 8, !tbaa !19
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store i32 %i.ep, ptr %i.er, align 8, !tbaa !58
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !59
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 1787, ptr noundef nonnull @.str.50, i32 noundef %i.ep, ptr noundef %i.et) #9
  %i.eu = load i32, ptr %1, align 8, !tbaa !70
  %i.ev = icmp eq i32 %i.eu, 1
  br i1 %i.ev, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  store i8 1, ptr %i.j, align 8, !tbaa !71
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %bb.bs
  %3 = load i8, ptr %i.ek, align 8, !tbaa !66
  %.not312.i = icmp ne i8 %3, 1
  %narrow.i = select i1 %.not312.i, i1 %.0273.lcssa.i, i1 false
  %.0276.i = zext i1 %narrow.i to i32
  %i.ew = load ptr, ptr %i.bk, align 8, !tbaa !55
  call void @mbedtls_ssl_optimize_checksum(ptr noundef nonnull %0, ptr noundef %i.ew) #9
  br label %ssl_tls13_parse_client_hello.exit.thread32

ssl_tls13_parse_client_hello.exit.thread:         ; preds = %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.m, %bb.o, %bb.s, %bb.x, %bb.z, %bb.ac, %bb.ae, %bb.br, %bb.ay, %bb.aw, %bb.au, %bb.ar, %bb.ah, %bb.al, %bb.aj
  %.2.i.ph = phi i32 [ -29440, %bb.aj ], [ -29440, %bb.al ], [ -26112, %bb.ah ], [ %i.da, %bb.ar ], [ %i.db, %bb.au ], [ %i.de, %bb.aw ], [ -26112, %bb.ay ], [ -26112, %bb.br ], [ -29440, %bb.ae ], [ -26112, %bb.ac ], [ -28160, %bb.z ], [ -29440, %bb.x ], [ %i.as, %bb.s ], [ %i.ao, %bb.o ], [ -29440, %bb.m ], [ -29440, %bb.k ], [ -29440, %bb.i ], [ -29440, %bb.g ], [ -28288, %bb.e ], [ -29440, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %ssl_tls13_postprocess_client_hello.exit.thread

ssl_tls13_parse_client_hello.exit.thread32:       ; preds = %bb.bv, %bb.q, %bb.u
  %.2.i.ph31 = phi i32 [ 2, %bb.u ], [ 2, %bb.q ], [ %.0276.i, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.bw

ssl_tls13_parse_client_hello.exit:                ; preds = %bb.am, %bb.v, %bb.ap, %bb.ba, %bb.bc, %bb.bf, %bb.bi, %bb.bk, %bb.bm
  %.2.i = phi i32 [ %i.di, %bb.ba ], [ %i.dj, %bb.bc ], [ %i.cz, %bb.ap ], [ %i.bd, %bb.v ], [ %i.dn, %bb.bf ], [ %i.du, %bb.bi ], [ %i.dv, %bb.bk ], [ %i.dw, %bb.bm ], [ %i.cy, %bb.am ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.ex = icmp slt i32 %.2.i, 0
  br i1 %i.ex, label %ssl_tls13_postprocess_client_hello.exit.thread, label %bb.bw

bb.bw:                                            ; preds = %ssl_tls13_parse_client_hello.exit.thread32, %ssl_tls13_parse_client_hello.exit
  %.2.i34 = phi i32 [ %.2.i.ph31, %ssl_tls13_parse_client_hello.exit.thread32 ], [ %.2.i, %ssl_tls13_parse_client_hello.exit ] ; 2 uses
  %i.ey = icmp eq i32 %.2.i34, 2
  %i.ez = load ptr, ptr %0, align 8, !tbaa !42    ; 3 uses
  br i1 %i.ey, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !72
  %i.fc = icmp ult i32 %i.fb, 772
  br i1 %i.fc, label %mbedtls_ssl_conf_is_tls12_enabled.exit, label %mbedtls_ssl_conf_is_tls12_enabled.exit.thread

mbedtls_ssl_conf_is_tls12_enabled.exit:           ; preds = %bb.bx
  %i.fd = load i32, ptr %i.ez, align 8, !tbaa !73
  %i.fe = icmp ult i32 %i.fd, 771
  br i1 %i.fe, label %mbedtls_ssl_conf_is_tls12_enabled.exit.thread, label %bb.by

mbedtls_ssl_conf_is_tls12_enabled.exit.thread:    ; preds = %bb.bx, %mbedtls_ssl_conf_is_tls12_enabled.exit
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1982, ptr noundef nonnull @.str.11) #9
  call void @mbedtls_ssl_pend_fatal_alert(ptr noundef nonnull %0, i8 noundef zeroext 70, i32 noundef -28288) #9
  br label %bb.cg

bb.by:                                            ; preds = %mbedtls_ssl_conf_is_tls12_enabled.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 316
  store i32 1, ptr %i.ff, align 4, !tbaa !74
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 771, ptr %i.fg, align 4, !tbaa !50
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1990, ptr noundef nonnull @.str.12) #9
  br label %bb.cg

bb.bz:                                            ; preds = %bb.bw
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 376
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !75 ; 2 uses
  %.not.i28 = icmp eq ptr %i.fi, null
  br i1 %.not.i28, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fj = call i32 %i.fi(ptr noundef nonnull %0) #9, !inline_history !76 ; 3 uses
  %.not16.i = icmp eq i32 %i.fj, 0
  br i1 %.not16.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @mbedtls_debug_print_ret(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1903, ptr noundef nonnull @.str.86, i32 noundef %i.fj) #9
  br label %ssl_tls13_postprocess_client_hello.exit.thread

bb.cc:                                            ; preds = %bb.ca, %bb.bz
  %i.fk = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 3496
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fl, i8 0, i64 16, i1 false)
  %i.fm = call i32 @mbedtls_ssl_tls13_key_schedule_stage_early(ptr noundef nonnull %0) #9 ; 3 uses
  %.not17.i = icmp eq i32 %i.fm, 0
  br i1 %.not17.i, label %ssl_tls13_postprocess_client_hello.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @mbedtls_debug_print_ret(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1914, ptr noundef nonnull @.str.87, i32 noundef %i.fm) #9
  br label %ssl_tls13_postprocess_client_hello.exit.thread

ssl_tls13_postprocess_client_hello.exit:          ; preds = %bb.cc
  %i.fn = icmp eq i32 %.2.i34, 0
  br i1 %i.fn, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %ssl_tls13_postprocess_client_hello.exit
  call fastcc void @mbedtls_ssl_handshake_set_state(ptr noundef nonnull %0, i32 noundef 2)
  br label %ssl_tls13_postprocess_client_hello.exit.thread

bb.cf:                                            ; preds = %ssl_tls13_postprocess_client_hello.exit
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !8  ; 2 uses
  %i.fq = call ptr @mbedtls_ssl_states_str(i32 noundef %i.fp) #9
  %i.fr = call ptr @mbedtls_ssl_states_str(i32 noundef 18) #9
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.8, i32 noundef 1355, ptr noundef nonnull @.str.9, i32 noundef %i.fp, ptr noundef %i.fq, i32 noundef 18, ptr noundef %i.fr) #9
  store i32 18, ptr %i.fo, align 8, !tbaa !8
  br label %ssl_tls13_postprocess_client_hello.exit.thread

ssl_tls13_postprocess_client_hello.exit.thread:   ; preds = %bb.cd, %bb.cb, %ssl_tls13_parse_client_hello.exit.thread, %bb.ce, %bb.cf, %ssl_tls13_parse_client_hello.exit, %bb.a
  %.021 = phi i32 [ %i.e, %bb.a ], [ %.2.i, %ssl_tls13_parse_client_hello.exit ], [ %.2.i.ph, %ssl_tls13_parse_client_hello.exit.thread ], [ 0, %bb.ce ], [ 0, %bb.cf ], [ %i.fm, %bb.cd ], [ %i.fj, %bb.cb ]
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 2006, ptr noundef nonnull @.str.13) #9
  br label %bb.cg

bb.cg:                                            ; preds = %ssl_tls13_postprocess_client_hello.exit.thread, %bb.by, %mbedtls_ssl_conf_is_tls12_enabled.exit.thread
  %.0 = phi i32 [ %.021, %ssl_tls13_postprocess_client_hello.exit.thread ], [ 0, %bb.by ], [ -28288, %mbedtls_ssl_conf_is_tls12_enabled.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  ret i32 %.0
}

declare void @mbedtls_debug_print_ret(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ssl_tls13_write_hello_retry_request(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 2497, ptr noundef nonnull @.str.88) #9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 57
  %i.g = load i8, ptr %i.f, align 1, !tbaa !61
  %.not.i = icmp eq i8 %i.g, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 2470, ptr noundef nonnull @.str.90) #9
  tail call void @mbedtls_ssl_pend_fatal_alert(ptr noundef nonnull %0, i8 noundef zeroext 40, i32 noundef -28160) #9
  br label %ssl_tls13_prepare_hello_retry_request.exit.thread

bb.c:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef 2479, ptr noundef nonnull @.str.91) #9
  %i.h = tail call i32 @mbedtls_ssl_reset_transcript_for_hrr(ptr noundef nonnull %0) #9 ; 3 uses
  %.not11.i = icmp eq i32 %i.h, 0
  br i1 %.not11.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @mbedtls_debug_print_ret(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 2482, ptr noundef nonnull @.str.92, i32 noundef %i.h) #9
  br label %ssl_tls13_prepare_hello_retry_request.exit.thread

bb.e:                                             ; preds = %bb.c
  tail call void @mbedtls_ssl_session_reset_msg_layer(ptr noundef nonnull %0, i32 noundef 0) #9
  %i.i = call i32 @mbedtls_ssl_start_handshake_msg(ptr noundef nonnull %0, i8 noundef zeroext 2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #9 ; 2 uses
  %.not19 = icmp eq i32 %i.i, 0
  br i1 %.not19, label %bb.f, label %ssl_tls13_prepare_hello_retry_request.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.k = load i64, ptr %i.b, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = call fastcc i32 @ssl_tls13_write_server_hello_body(ptr noundef nonnull %0, ptr noundef %i.j, ptr noundef %i.l, ptr noundef %i.c, i32 noundef 1) ; 2 uses
  %.not20 = icmp eq i32 %i.m, 0
  br i1 %.not20, label %bb.g, label %ssl_tls13_prepare_hello_retry_request.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.o = load i64, ptr %i.c, align 8, !tbaa !41   ; 2 uses
  %i.p = call i32 @mbedtls_ssl_add_hs_msg_to_checksum(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %i.n, i64 noundef %i.o) #9 ; 2 uses
  %.not21 = icmp eq i32 %i.p, 0
  br i1 %.not21, label %bb.h, label %ssl_tls13_prepare_hello_retry_request.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.q = load i64, ptr %i.b, align 8, !tbaa !41
  %i.r = call i32 @mbedtls_ssl_finish_handshake_msg(ptr noundef nonnull %0, i64 noundef %i.q, i64 noundef %i.o) #9 ; 2 uses
  %.not22 = icmp eq i32 %i.r, 0
  br i1 %.not22, label %bb.i, label %ssl_tls13_prepare_hello_retry_request.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 57
  store i8 1, ptr %i.t, align 1, !tbaa !61
  call fastcc void @mbedtls_ssl_handshake_set_state(ptr noundef nonnull %0, i32 noundef 26)
  br label %ssl_tls13_prepare_hello_retry_request.exit.thread

ssl_tls13_prepare_hello_retry_request.exit.thread: ; preds = %bb.d, %bb.b, %bb.h, %bb.g, %bb.f, %bb.e, %bb.i
  %.0 = phi i32 [ 0, %bb.i ], [ %i.i, %bb.e ], [ %i.m, %bb.f ], [ %i.p, %bb.g ], [ %i.r, %bb.h ], [ %i.h, %bb.d ], [ -28160, %bb.b ]
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 2530, ptr noundef nonnull @.str.89) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ssl_tls13_write_server_hello(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 2424, ptr noundef nonnull @.str.110) #9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2152 ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !42     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !77
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !78
  %i.l = tail call i32 %i.i(ptr noundef %i.k, ptr noundef nonnull %i.f, i64 noundef 32) #9, !inline_history !79 ; 3 uses
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.b, label %ssl_tls13_prepare_server_hello.exit

ssl_tls13_prepare_server_hello.exit:              ; preds = %bb.a
  tail call void @mbedtls_debug_print_ret(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 2022, ptr noundef nonnull @.str.112, i32 noundef %i.l) #9
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  tail call void @mbedtls_debug_print_buf(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 2027, ptr noundef nonnull @.str.93, ptr noundef nonnull %i.f, i64 noundef 32) #9
  %i.m = tail call i64 @time(ptr noundef null) #9
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !19
end_hunk_0
