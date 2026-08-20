inline.NumInlined: 228
inline.NumDeleted: 96
begin_hunk_0_@inet_rtm_delroute:bb.a

.lr.ph.i:                                         ; preds = %bb.f, %bb.g
  %.02633.i = phi ptr [ %i.u, %bb.g ], [ %i.q, %bb.f ] ; 3 uses
  %i.r = getelementptr i8, ptr %.02633.i, i64 16
  %i.s = load i32, ptr %i.r, align 8
  %i.t = icmp eq i32 %i.s, %spec.store.select.i
  br i1 %i.t, label %fib_get_table.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.u = load volatile ptr, ptr %.02633.i, align 8 ; 2 uses
  %.not29.i = icmp eq ptr %i.u, null
  br i1 %.not29.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !10

.loopexit:                                        ; preds = %bb.g, %bb.f
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @inet_rtm_delroute.__msg.22) #13
  %.not28 = icmp eq ptr %2, null
  br i1 %.not28, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit
  store ptr @inet_rtm_delroute.__msg.22, ptr %2, align 8
  br label %bb.i

fib_get_table.exit:                               ; preds = %.lr.ph.i
  %i.v = call i32 @fib_table_delete(ptr noundef %.val, ptr noundef nonnull %.02633.i, ptr noundef nonnull %3, ptr noundef %2) #13
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.h, %bb.d, %bb.e, %fib_get_table.exit
  %.0 = phi i32 [ %i.v, %fib_get_table.exit ], [ -22, %bb.d ], [ -22, %bb.e ], [ -3, %bb.h ], [ -3, %.loopexit ]
  call void @rtnl_unlock() #13
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.1 = phi i32 [ %i.d, %bb.a ], [ %.0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @inet_dump_fib(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.fib_dump_filter, align 8    ; 9 uses
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 48
  %.val85 = load ptr, ptr %i.e, align 8           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.inet_dump_fib.filter, i64 24, i1 false)
  tail call void @__rcu_read_lock() #13
  %i.f = getelementptr i8, ptr %1, i64 76
  %i.g = load i8, ptr %i.f, align 4, !range !12, !noundef !13
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = call i32 @ip_valid_fib_dump_req(ptr noundef %.val85, ptr noundef %i.b, ptr noundef nonnull %2, ptr noundef %1) #12 ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %rtnl_msg_family.exit.thread, label %._crit_edge123

._crit_edge123:                                   ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.val = load i32, ptr %i.b, align 4
  %i.k = add i32 %.val, -28
  %i.l = icmp ult i32 %i.k, -12
  br i1 %i.l, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.b, i64 24
  %i.n = load i32, ptr %i.m, align 4
  %i.o = and i32 %i.n, 2560                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.o, ptr %i.p, align 4
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge123, %bb.d
  %i.q = phi i32 [ %.pre, %._crit_edge123 ], [ %i.o, %bb.d ]
  %i.r = and i32 %i.q, 2048
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %.thread, label %rtnl_msg_family.exit.thread

.thread:                                          ; preds = %bb.c, %bb.e
  %i.s = load i32, ptr %2, align 8                ; 3 uses
  %.not76 = icmp eq i32 %i.s, 0
  br i1 %.not76, label %bb.j, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.t = and i32 %i.s, 255
  %i.u = getelementptr i8, ptr %.val85, i64 1344
  %i.v = load ptr, ptr %i.u, align 64
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load volatile ptr, ptr %i.x, align 8     ; 2 uses
  %.not2932.i = icmp eq ptr %i.y, null
  br i1 %.not2932.i, label %.loopexit91, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.g
  %.02633.i = phi ptr [ %i.ac, %bb.g ], [ %i.y, %bb.f ] ; 3 uses
  %i.z = getelementptr i8, ptr %.02633.i, i64 16
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = icmp eq i32 %i.aa, %i.s
  br i1 %i.ab, label %fib_get_table.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.ac = load volatile ptr, ptr %.02633.i, align 8 ; 2 uses
  %.not29.i = icmp eq ptr %i.ac, null
  br i1 %.not29.i, label %.loopexit91, label %.lr.ph.i, !llvm.loop !10

.loopexit91:                                      ; preds = %bb.g, %bb.f
  %i.ad = load ptr, ptr %i.a, align 8             ; 2 uses
  %.val.i = load i32, ptr %i.ad, align 4
  %.not.i = icmp eq i32 %.val.i, 16
  br i1 %.not.i, label %rtnl_msg_family.exit.thread, label %rtnl_msg_family.exit

rtnl_msg_family.exit:                             ; preds = %.loopexit91
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = load i8, ptr %i.ae, align 4
  %.not82 = icmp eq i8 %i.af, 2
  br i1 %.not82, label %bb.h, label %rtnl_msg_family.exit.thread

bb.h:                                             ; preds = %rtnl_msg_family.exit
  %i.ag = getelementptr i8, ptr %1, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @inet_dump_fib.__msg) #13
  %.not83 = icmp eq ptr %i.ah, null
  br i1 %.not83, label %rtnl_msg_family.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr @inet_dump_fib.__msg, ptr %i.ah, align 8
  br label %rtnl_msg_family.exit.thread

fib_get_table.exit:                               ; preds = %.lr.ph.i
  %i.ai = call i32 @fib_table_dump(ptr noundef nonnull %.02633.i, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #13
  br label %rtnl_msg_family.exit.thread

bb.j:                                             ; preds = %.thread
  %i.aj = getelementptr i8, ptr %1, i64 80        ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8            ; 3 uses
  %i.al = getelementptr i8, ptr %1, i64 88        ; 2 uses
  %i.am = and i64 %i.ak, 4294967040
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %.lr.ph112, label %.loopexit

.lr.ph112:                                        ; preds = %bb.j
  %i.ao = load i64, ptr %i.al, align 8
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = getelementptr i8, ptr %.val85, i64 1344
  %i.ar = getelementptr i8, ptr %1, i64 96
  %i.as = and i64 %i.ak, 255
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph112, %._crit_edge
  %indvars.iv = phi i64 [ %i.as, %.lr.ph112 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %.058110 = phi i32 [ %i.ap, %.lr.ph112 ], [ 0, %._crit_edge ]
  %.060108 = phi i32 [ 0, %.lr.ph112 ], [ %.161.lcssa, %._crit_edge ] ; 2 uses
  %.164107 = phi i32 [ 0, %.lr.ph112 ], [ %.265.lcssa, %._crit_edge ] ; 2 uses
  %i.at = load ptr, ptr %i.aq, align 64
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %indvars.iv
  %i.av = load volatile ptr, ptr %i.au, align 8   ; 2 uses
  %.not78100 = icmp eq ptr %i.av, null
  br i1 %.not78100, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %bb.o
  %.1104 = phi i32 [ %i.az, %bb.o ], [ 0, %bb.k ] ; 3 uses
  %.161103 = phi i32 [ %.262, %bb.o ], [ %.060108, %bb.k ] ; 2 uses
  %.265102 = phi i32 [ %.3, %bb.o ], [ %.164107, %bb.k ]
  %.066101 = phi ptr [ %i.ba, %bb.o ], [ %i.av, %bb.k ] ; 2 uses
  %i.aw = icmp ult i32 %.1104, %.058110
  br i1 %i.aw, label %bb.o, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %.not79 = icmp eq i32 %.161103, 0
  br i1 %.not79, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(32) %i.ar, i8 0, i64 32, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ax = call i32 @fib_table_dump(ptr noundef nonnull %.066101, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #13 ; 3 uses
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph
  %.3 = phi i32 [ %.265102, %.lr.ph ], [ %i.ax, %bb.n ] ; 2 uses
  %.262 = phi i32 [ %.161103, %.lr.ph ], [ 1, %bb.n ] ; 2 uses
  %i.az = add i32 %.1104, 1                       ; 2 uses
  %i.ba = load volatile ptr, ptr %.066101, align 8 ; 2 uses
  %.not78 = icmp eq ptr %i.ba, null
  br i1 %.not78, label %._crit_edge, label %.lr.ph, !llvm.loop !46

._crit_edge:                                      ; preds = %bb.o, %bb.k
  %.265.lcssa = phi i32 [ %.164107, %bb.k ], [ %.3, %bb.o ] ; 2 uses
  %.161.lcssa = phi i32 [ %.060108, %bb.k ], [ %.262, %bb.o ]
  %.1.lcssa = phi i32 [ 0, %bb.k ], [ %i.az, %bb.o ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %.loopexit, label %bb.k, !llvm.loop !47

.loopexit:                                        ; preds = %._crit_edge, %bb.n, %bb.j
  %.05997 = phi i64 [ %indvars.iv, %bb.n ], [ %i.ak, %bb.j ], [ 256, %._crit_edge ]
  %.4 = phi i32 [ %i.ax, %bb.n ], [ 0, %bb.j ], [ %.265.lcssa, %._crit_edge ]
  %.2 = phi i32 [ %.1104, %bb.n ], [ 0, %bb.j ], [ %.1.lcssa, %._crit_edge ]
  %i.bb = zext i32 %.2 to i64
  store i64 %i.bb, ptr %i.al, align 8
  %i.bc = and i64 %.05997, 4294967295
  store i64 %i.bc, ptr %i.aj, align 8
  br label %rtnl_msg_family.exit.thread

rtnl_msg_family.exit.thread:                      ; preds = %.loopexit91, %bb.h, %bb.i, %rtnl_msg_family.exit, %bb.e, %bb.b, %.loopexit, %fib_get_table.exit
  %.5 = phi i32 [ %i.i, %bb.b ], [ 0, %bb.e ], [ %i.ai, %fib_get_table.exit ], [ 0, %rtnl_msg_family.exit ], [ %.4, %.loopexit ], [ -2, %bb.i ], [ -2, %bb.h ], [ 0, %.loopexit91 ]
  call void @__rcu_read_unlock() #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret i32 %.5
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -2147483648, 1) i32 @rtm_to_fib_config(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) %3, ptr noundef %4) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr %2, align 4                ; 2 uses
  %i.b = icmp ult i32 %i.a, 28
  br i1 %i.b, label %lwtunnel_valid_encap_type.exit, label %nlmsg_validate_deprecated.exit

nlmsg_validate_deprecated.exit:                   ; preds = %bb.a
  %i.c = getelementptr i8, ptr %2, i64 28         ; 2 uses
  %i.d = add i32 %i.a, -28
  %i.e = tail call i32 @__nla_validate(ptr noundef %i.c, i32 noundef %i.d, i32 noundef 31, ptr noundef nonnull @rtm_ipv4_policy, i32 noundef 0, ptr noundef %4) #13 ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %lwtunnel_valid_encap_type.exit, label %bb.b

bb.b:                                             ; preds = %nlmsg_validate_deprecated.exit
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(128) %3, i8 0, i64 128, i1 false)
  %i.g = getelementptr i8, ptr %2, i64 19
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %i.i = and i8 %i.h, 3
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_fib_config.__msg) #13
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %lwtunnel_valid_encap_type.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr @rtm_to_fib_config.__msg, ptr %4, align 8
  br label %lwtunnel_valid_encap_type.exit

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %3, i64 1
  store i8 %i.h, ptr %i.j, align 1
  %i.k = getelementptr i8, ptr %2, i64 17
  %i.l = load i8, ptr %i.k, align 1               ; 2 uses
  store i8 %i.l, ptr %3, align 8
  %i.m = getelementptr i8, ptr %2, i64 20
  %i.n = load i8, ptr %i.m, align 4
  %i.o = zext i8 %i.n to i32
  %i.p = getelementptr i8, ptr %3, i64 8          ; 4 uses
  store i32 %i.o, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %2, i64 21
  %i.r = load i8, ptr %i.q, align 1
  %i.s = getelementptr i8, ptr %3, i64 2
  store i8 %i.r, ptr %i.s, align 2
  %i.t = getelementptr i8, ptr %2, i64 22
  %i.u = load i8, ptr %i.t, align 2
  %i.v = getelementptr i8, ptr %3, i64 3
  store i8 %i.u, ptr %i.v, align 1
  %i.w = getelementptr i8, ptr %2, i64 23
  %i.x = load i8, ptr %i.w, align 1               ; 2 uses
  %i.y = getelementptr i8, ptr %3, i64 4
  store i8 %i.x, ptr %i.y, align 4
  %i.z = getelementptr i8, ptr %2, i64 24
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = getelementptr i8, ptr %3, i64 36
  store i32 %i.aa, ptr %i.ab, align 4
  %i.ac = getelementptr i8, ptr %2, i64 6
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = zext i16 %i.ad to i32
  %i.af = getelementptr i8, ptr %3, i64 84
  store i32 %i.ae, ptr %i.af, align 4
  %i.ag = getelementptr i8, ptr %1, i64 52
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = getelementptr i8, ptr %3, i64 88
  %i.aj = getelementptr i8, ptr %3, i64 104
  store i32 %i.ah, ptr %i.aj, align 8
  store ptr %2, ptr %i.ai, align 8
  %i.ak = getelementptr i8, ptr %3, i64 96
  store ptr %0, ptr %i.ak, align 8
  %i.al = icmp ugt i8 %i.x, 11
  br i1 %i.al, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_fib_config.__msg.17) #13
  %.not135 = icmp eq ptr %4, null
  br i1 %.not135, label %lwtunnel_valid_encap_type.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr @rtm_to_fib_config.__msg.17, ptr %4, align 8
  br label %lwtunnel_valid_encap_type.exit

bb.h:                                             ; preds = %bb.e
  %.val = load i32, ptr %2, align 4
  %i.am = add i32 %.val, -28                      ; 2 uses
  %i.an = icmp sgt i32 %i.am, 3
  br i1 %i.an, label %.lr.ph, label %nla_ok.exit.thread

.lr.ph:                                           ; preds = %bb.h
  %i.ao = getelementptr i8, ptr %3, i64 48
  %i.ap = getelementptr i8, ptr %3, i64 112
  %i.aq = getelementptr i8, ptr %3, i64 80
  %i.ar = getelementptr i8, ptr %3, i64 64
  %i.as = getelementptr i8, ptr %3, i64 76
  %i.at = getelementptr i8, ptr %3, i64 56
  %i.au = getelementptr i8, ptr %3, i64 72
  %i.av = getelementptr i8, ptr %3, i64 44
  %i.aw = getelementptr i8, ptr %3, i64 40
  %i.ax = getelementptr i8, ptr %3, i64 16
  %i.ay = getelementptr i8, ptr %3, i64 5
  %i.az = getelementptr i8, ptr %3, i64 32
  %i.ba = getelementptr i8, ptr %3, i64 12
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.z
  %.0108163 = phi ptr [ %i.c, %.lr.ph ], [ %i.cd, %bb.z ] ; 19 uses
  %.0109162 = phi i1 [ false, %.lr.ph ], [ %.1, %bb.z ] ; 14 uses
  %.0110161 = phi i1 [ false, %.lr.ph ], [ %.1111, %bb.z ] ; 13 uses
  %.0160 = phi i32 [ %i.am, %.lr.ph ], [ %i.cb, %bb.z ] ; 2 uses
  %i.bb = load i16, ptr %.0108163, align 2        ; 2 uses
  %i.bc = icmp ult i16 %i.bb, 4
  %i.bd = zext i16 %i.bb to i32
  %.not152 = icmp samesign ult i32 %.0160, %i.bd
  %or.cond153 = select i1 %i.bc, i1 true, i1 %.not152
  br i1 %or.cond153, label %nla_ok.exit.thread.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr i8, ptr %.0108163, i64 2
  %.0108.val143 = load i16, ptr %i.be, align 2
  %i.bf = and i16 %.0108.val143, 16383
  switch i16 %i.bf, label %bb.z [
    i16 1, label %bb.k
    i16 4, label %bb.l
    i16 5, label %bb.m
    i16 18, label %bb.o
    i16 6, label %bb.p
    i16 7, label %bb.q
    i16 8, label %bb.r
    i16 9, label %bb.s
    i16 11, label %bb.t
    i16 15, label %bb.u
    i16 22, label %bb.v
    i16 21, label %bb.w
    i16 30, label %bb.y
  ]

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr i8, ptr %.0108163, i64 4
  %.0108.val146 = load i32, ptr %i.bg, align 4
  store i32 %.0108.val146, ptr %i.ba, align 4
  br label %bb.z

bb.l:                                             ; preds = %bb.j
  %i.bh = getelementptr i8, ptr %.0108163, i64 4
  %.0108.val142 = load i32, ptr %i.bh, align 4
  store i32 %.0108.val142, ptr %i.az, align 8
  br label %bb.z

bb.m:                                             ; preds = %bb.j
  %i.bi = getelementptr i8, ptr %.0108163, i64 4
  %.0108.val145 = load i32, ptr %i.bi, align 4    ; 2 uses
  store i32 %.0108.val145, ptr %i.ax, align 8
  %.not134 = icmp eq i32 %.0108.val145, 0
  br i1 %.not134, label %bb.z, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 2, ptr %i.ay, align 1
  br label %bb.z

bb.o:                                             ; preds = %bb.j
  %i.bj = tail call i32 @fib_gw_from_via(ptr noundef %3, ptr noundef %.0108163, ptr noundef %4) #12 ; 2 uses
  %.not133 = icmp eq i32 %i.bj, 0
  br i1 %.not133, label %bb.z, label %lwtunnel_valid_encap_type.exit

bb.p:                                             ; preds = %bb.j
  %i.bk = getelementptr i8, ptr %.0108163, i64 4
  %.0108.val141 = load i32, ptr %i.bk, align 4
  store i32 %.0108.val141, ptr %i.aw, align 8
  br label %bb.z

bb.q:                                             ; preds = %bb.j
  %i.bl = getelementptr i8, ptr %.0108163, i64 4
  %.0108.val144 = load i32, ptr %i.bl, align 4
  store i32 %.0108.val144, ptr %i.av, align 4
  br label %bb.z

bb.r:                                             ; preds = %bb.j
  %i.bm = getelementptr i8, ptr %.0108163, i64 4
  store ptr %i.bm, ptr %i.at, align 8
  %.0108.val137 = load i16, ptr %.0108163, align 2
end_hunk_0
