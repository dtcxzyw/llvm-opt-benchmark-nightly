Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/xfrm_user?download=true
inline.NumInlined: 579
inline.NumDeleted: 172
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@validate_tmpl:bb.a
  %i.dq = phi i16 [ %i.df, %bb.bz ], [ %i.dk, %bb.bx ]
  switch i16 %i.dq, label %.split62.us [
    i16 2, label %bb.ca
    i16 10, label %bb.ca
  ]

bb.ca:                                            ; preds = %.thread.5, %.thread.5
  %i.dr = getelementptr i8, ptr %1, i64 340
  %i.ds = load i8, ptr %i.dr, align 4
  switch i8 %i.ds, label %xfrm_id_proto_valid.exit [
    i8 51, label %.loopexit
    i8 50, label %.loopexit
    i8 108, label %.loopexit
    i8 43, label %.loopexit
    i8 60, label %.loopexit
  ]

.loopexit.sink.split:                             ; preds = %xfrm_id_proto_valid.exit, %.split62.us, %.split60.us, %.split.us, %bb.ao, %bb.ak
  %validate_tmpl.__msg.13.sink = phi ptr [ @validate_tmpl.__msg.12, %.split62.us ], [ @validate_tmpl.__msg.11, %.split60.us ], [ @validate_tmpl.__msg.10, %.split.us ], [ @validate_tmpl.__msg.9, %bb.ao ], [ @validate_tmpl.__msg, %bb.ak ], [ @validate_tmpl.__msg.13, %xfrm_id_proto_valid.exit ]
  store ptr %validate_tmpl.__msg.13.sink, ptr %4, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.m, %bb.s, %bb.y, %bb.ae, %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.as, %bb.az, %bb.bg, %bb.bn, %bb.bu, %bb.ca, %bb.ca, %bb.ca, %bb.ca, %bb.ca, %.loopexit.sink.split, %.preheader, %xfrm_id_proto_valid.exit, %.split62.us, %.split60.us, %.split.us, %bb.ao, %bb.ak
  %.046 = phi i32 [ -22, %xfrm_id_proto_valid.exit ], [ -22, %bb.ao ], [ -22, %.split.us ], [ -22, %.split60.us ], [ -22, %.split62.us ], [ -22, %bb.ak ], [ -22, %.loopexit.sink.split ], [ 0, %.preheader ], [ 0, %bb.as ], [ 0, %bb.ca ], [ 0, %bb.ca ], [ 0, %bb.ca ], [ 0, %bb.ca ], [ 0, %bb.ca ], [ 0, %bb.bu ], [ 0, %bb.bn ], [ 0, %bb.bg ], [ 0, %bb.az ], [ 0, %bb.aj ], [ 0, %bb.aj ], [ 0, %bb.aj ], [ 0, %bb.aj ], [ 0, %bb.aj ], [ 0, %bb.ae ], [ 0, %bb.y ], [ 0, %bb.s ], [ 0, %bb.m ], [ 0, %bb.g ]
  ret i32 %.046
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @xfrm_policy_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite)
define internal fastcc void @copy_templates(ptr nofree noundef nonnull writeonly captures(none) initializes((380, 381)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #7 align 16 prefalign(16) {
bb.a:
  %i.a = trunc i32 %2 to i8
  %i.b = getelementptr i8, ptr %0, i64 380
  store i8 %i.a, ptr %i.b, align 4
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 392
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.033 = phi ptr [ %1, %.lr.ph ], [ %i.aj, %bb.b ] ; 11 uses
  %i.e = getelementptr [64 x i8], ptr %i.d, i64 %indvars.iv ; 11 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(24) %i.e, ptr noundef align 4 dereferenceable(24) %.033, i64 24, i1 false)
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %i.g = getelementptr i8, ptr %.033, i64 28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(16) %i.f, ptr noundef align 4 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.h = getelementptr i8, ptr %.033, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = getelementptr i8, ptr %i.e, i64 44
  store i32 %i.i, ptr %i.j, align 4
  %i.k = getelementptr i8, ptr %.033, i64 48
  %i.l = load i8, ptr %i.k, align 4
  %i.m = getelementptr i8, ptr %i.e, i64 48
  store i8 %i.l, ptr %i.m, align 4
  %i.n = getelementptr i8, ptr %.033, i64 49
  %i.o = load i8, ptr %i.n, align 1
  %i.p = getelementptr i8, ptr %i.e, i64 49
  store i8 %i.o, ptr %i.p, align 1
  %i.q = getelementptr i8, ptr %.033, i64 50
  %i.r = load i8, ptr %i.q, align 2
  %i.s = getelementptr i8, ptr %i.e, i64 50
  store i8 %i.r, ptr %i.s, align 2
  %i.t = getelementptr i8, ptr %.033, i64 52
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = getelementptr i8, ptr %i.e, i64 52
  store i32 %i.u, ptr %i.v, align 4
  %i.w = getelementptr i8, ptr %.033, i64 56
  %i.x = load i32, ptr %i.w, align 4              ; 2 uses
  %i.y = getelementptr i8, ptr %i.e, i64 56
  store i32 %i.x, ptr %i.y, align 4
  %i.z = getelementptr i8, ptr %.033, i64 60
  %i.aa = load i32, ptr %i.z, align 4             ; 2 uses
  %i.ab = getelementptr i8, ptr %i.e, i64 60
  store i32 %i.aa, ptr %i.ab, align 4
  %i.ac = and i32 %i.x, %i.u
  %i.ad = and i32 %i.ac, %i.aa
  %.not = icmp eq i32 %i.ad, -1
  %i.ae = zext i1 %.not to i8
  %i.af = getelementptr i8, ptr %i.e, i64 51
  store i8 %i.ae, ptr %i.af, align 1
  %i.ag = getelementptr i8, ptr %.033, i64 24
  %i.ah = load i16, ptr %i.ag, align 4
  %i.ai = getelementptr i8, ptr %i.e, i64 40
  store i16 %i.ah, ptr %i.ai, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = getelementptr i8, ptr %.033, i64 64
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @netlink_has_listeners(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_lock() local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_unlock() local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -12, 1) i32 @xfrm_user_net_init(ptr noundef %0) #2 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.netlink_kernel_cfg, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef align 8 dereferenceable(40) @__const.xfrm_user_net_init.cfg, i64 40, i1 false)
  %i.a = call ptr @__netlink_kernel_create(ptr noundef %0, i32 noundef 6, ptr noundef null, ptr noundef nonnull %1) #14 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 3376
  store ptr %i.a, ptr %i.c, align 16
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !42
  %i.d = getelementptr i8, ptr %0, i64 3368
  store volatile ptr %i.a, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -12, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @xfrm_user_net_pre_exit(ptr nofree noundef captures(address) %0) #8 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 3368
  store volatile ptr null, ptr %i.a, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @xfrm_user_net_exit(ptr nofree noundef readonly captures(address) %0) #2 align 16 prefalign(16) {
bb.a:
  %.pn9 = load ptr, ptr %0, align 8               ; 2 uses
  %.not10 = icmp eq ptr %.pn9, %0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.pn11 = phi ptr [ %.pn, %.lr.ph ], [ %.pn9, %bb.a ] ; 2 uses
  %i.a = getelementptr i8, ptr %.pn11, i64 3336
  %i.b = load ptr, ptr %i.a, align 16
  tail call void @netlink_kernel_release(ptr noundef %i.b) #14
  %.pn = load ptr, ptr %.pn11, align 8            ; 2 uses
  %.not = icmp eq ptr %.pn, %0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !43

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @xfrm_netlink_rcv(ptr noundef %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 48
  %.val = load ptr, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %.val, i64 3856    ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.d) #14
  %i.e = tail call i32 @netlink_rcv_skb(ptr noundef %0, ptr noundef @xfrm_user_rcv_msg) #14 ; 0 uses
  tail call void @mutex_unlock(ptr noundef %i.d) #14
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @netlink_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @xfrm_user_rcv_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [42 x ptr], align 16              ; 41 uses
  %3 = alloca %struct.netlink_dump_control, align 8 ; 7 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 48
  %.val = load ptr, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.e = getelementptr i8, ptr %1, i64 4
  %i.f = load i16, ptr %i.e, align 4              ; 5 uses
  %i.g = icmp ugt i16 %i.f, 41
  br i1 %i.g, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = zext nneg i16 %i.f to i32
  %i.i = add nsw i32 %i.h, -16                    ; 2 uses
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = getelementptr [48 x i8], ptr @xfrm_dispatch, i64 %i.j ; 6 uses
  %i.l = tail call zeroext i1 @netlink_net_capable(ptr noundef %0, i32 noundef 12) #14
  br i1 %i.l, label %bb.c, label %bb.z

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.a, i8 0, i64 336, i1 false), !annotation !13
  %i.m = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #18, !srcloc !44
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr i8, ptr %i.n, i64 16
  %i.p = load i32, ptr %i.o, align 8
  %i.q = and i32 %i.p, 2
  %.not.i.i.not = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.not, label %bb.d, label %bb.z

bb.d:                                             ; preds = %bb.c
  switch i32 %i.i, label %bb.i [
    i32 5, label %bb.e
    i32 2, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.r = getelementptr i8, ptr %1, i64 6
  %i.s = load i16, ptr %i.r, align 2
  %i.t = and i16 %i.s, 768
  %.not = icmp eq i16 %i.t, 0
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.u = getelementptr i8, ptr %i.k, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  store ptr %i.v, ptr %3, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = getelementptr i8, ptr %i.k, i64 16
  %i.y = load ptr, ptr %i.x, align 16             ; 2 uses
  store ptr %i.y, ptr %i.w, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aa = getelementptr i8, ptr %i.k, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  store ptr %i.ab, ptr %i.z, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24
  %4 = icmp eq ptr %i.y, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i8 0, i64 32, i1 false)
  br i1 %4, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr i8, ptr %.val, i64 3368
  %.val73.a = load ptr, ptr %i.ad, align 8
  %i.ae = call i32 @__netlink_dump_start(ptr noundef %.val73.a, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.053 = phi i32 [ %i.ae, %bb.g ], [ -22, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %nlmsg_parse_deprecated.exit.thread

bb.i:                                             ; preds = %bb.d, %bb.e
  %i.af = getelementptr [4 x i8], ptr @xfrm_msg_min, i64 %i.j
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  %5 = getelementptr i8, ptr %i.k, i64 32
  %6 = load ptr, ptr %5, align 16                 ; 3 uses
  %.not69.not = icmp eq ptr %6, null              ; 2 uses
  %i.ah = load i32, ptr %1, align 4               ; 2 uses
  %i.ai = add i32 %i.ag, 16
  %i.aj = icmp ult i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.j, label %nlmsg_parse_deprecated.exit

bb.j:                                             ; preds = %bb.i
  tail call void @do_trace_netlink_extack(ptr noundef @__nlmsg_parse.__msg) #14
  %.not.i.i80 = icmp eq ptr %2, null
  br i1 %.not.i.i80, label %nlmsg_parse_deprecated.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr @__nlmsg_parse.__msg, ptr %2, align 8
  br label %nlmsg_parse_deprecated.exit.thread

nlmsg_parse_deprecated.exit:                      ; preds = %bb.i
  %i.ak = select i1 %.not69.not, ptr @xfrma_policy, ptr %6
  %i.al = getelementptr i8, ptr %i.k, i64 40
  %i.am = load i32, ptr %i.al, align 8            ; 2 uses
  %.not69 = icmp eq i32 %i.am, 0
  %. = select i1 %.not69, i32 41, i32 %i.am
  %i.an = getelementptr i8, ptr %1, i64 16
  %i.ao = add i32 %i.ag, 3
  %i.ap = and i32 %i.ao, -4                       ; 2 uses
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr i8, ptr %i.an, i64 %i.aq
  %reass.sub = sub i32 %i.ah, %i.ap
  %7 = add i32 %reass.sub, -16
  %i.as = call i32 @__nla_parse(ptr noundef nonnull %i.a, i32 noundef %., ptr noundef %i.ar, i32 noundef %7, ptr noundef nonnull %i.ak, i32 noundef 0, ptr noundef %2) #14 ; 2 uses
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %nlmsg_parse_deprecated.exit.thread, label %bb.l

bb.l:                                             ; preds = %nlmsg_parse_deprecated.exit
  %8 = icmp eq ptr %6, @xfrma_policy
  %or.cond = or i1 %.not69.not, %8
  br i1 %or.cond, label %bb.m, label %xfrm_reject_unused_attr.exit

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.av = load ptr, ptr %i.au, align 8
  %.not.i = icmp ne ptr %i.av, null               ; 2 uses
  br i1 %.not.i, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  switch i16 %i.f, label %bb.o [
    i16 16, label %bb.q
    i16 26, label %bb.q
    i16 22, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  call void @do_trace_netlink_extack(ptr noundef @xfrm_reject_unused_attr.__msg) #14
  %.not32.i = icmp eq ptr %2, null
  br i1 %.not32.i, label %nlmsg_parse_deprecated.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr @xfrm_reject_unused_attr.__msg, ptr %2, align 8
  br label %nlmsg_parse_deprecated.exit.thread

bb.q:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %i.ax = load ptr, ptr %i.aw, align 8
  %.not28.i = icmp eq ptr %i.ax, null
  br i1 %.not28.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  switch i16 %i.f, label %bb.s [
    i16 16, label %xfrm_reject_unused_attr.exit
    i16 22, label %xfrm_reject_unused_attr.exit
    i16 23, label %xfrm_reject_unused_attr.exit
    i16 26, label %xfrm_reject_unused_attr.exit
  ]

bb.s:                                             ; preds = %bb.r
  call void @do_trace_netlink_extack(ptr noundef @xfrm_reject_unused_attr.__msg.77) #14
  %.not31.i = icmp eq ptr %2, null
  br i1 %.not31.i, label %nlmsg_parse_deprecated.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr @xfrm_reject_unused_attr.__msg.77, ptr %2, align 8
  br label %nlmsg_parse_deprecated.exit.thread

bb.u:                                             ; preds = %bb.q
  %i.ay = icmp eq i16 %i.f, 41
  br i1 %i.ay, label %.preheader.preheader.i, label %xfrm_reject_unused_attr.exit

.preheader.preheader.i:                           ; preds = %bb.u
  %i.az = load ptr, ptr %i.a, align 16
  %.not29.i = icmp eq ptr %i.az, null
  br i1 %.not29.i, label %.preheader.1.i, label %bb.v

bb.v:                                             ; preds = %.preheader.41.i, %.preheader.40.i, %.preheader.39.i, %.preheader.38.i, %.preheader.37.i, %.preheader.36.i, %.preheader.31.i, %.preheader.27.i, %.preheader.26.i, %.preheader.25.i, %.preheader.24.i, %.preheader.23.i, %.preheader.22.i, %.preheader.20.i, %.preheader.19.i, %.preheader.18.i, %.preheader.17.i, %.preheader.16.i, %.preheader.15.i, %.preheader.14.i, %.preheader.13.i, %.preheader.12.i, %.preheader.11.i, %.preheader.10.i, %.preheader.9.i, %.preheader.8.i, %.preheader.7.i, %.preheader.6.i, %.preheader.5.i, %.preheader.3.i, %.preheader.2.i, %.preheader.1.i, %.preheader.preheader.i
  %.lcssa.i = phi i64 [ %.mux.i, %.preheader.31.i ], [ 0, %.preheader.preheader.i ], [ 1, %.preheader.1.i ], [ 2, %.preheader.2.i ], [ 39, %.preheader.39.i ], [ 3, %.preheader.3.i ], [ 5, %.preheader.5.i ], [ 6, %.preheader.6.i ], [ 7, %.preheader.7.i ], [ 8, %.preheader.8.i ], [ 9, %.preheader.9.i ], [ 10, %.preheader.10.i ], [ 11, %.preheader.11.i ], [ 12, %.preheader.12.i ], [ 13, %.preheader.13.i ], [ 14, %.preheader.14.i ], [ 15, %.preheader.15.i ], [ 16, %.preheader.16.i ], [ 17, %.preheader.17.i ], [ 18, %.preheader.18.i ], [ 19, %.preheader.19.i ], [ 38, %.preheader.38.i ], [ 20, %.preheader.20.i ], [ 22, %.preheader.22.i ], [ 23, %.preheader.23.i ], [ 24, %.preheader.24.i ], [ 25, %.preheader.25.i ], [ 26, %.preheader.26.i ], [ 37, %.preheader.37.i ], [ 36, %.preheader.36.i ], [ 41, %.preheader.41.i ], [ 27, %.preheader.27.i ], [ 40, %.preheader.40.i ]
  call void @do_trace_netlink_extack(ptr noundef @xfrm_reject_unused_attr.__msg.78) #14
  %.not30.i = icmp eq ptr %2, null
  br i1 %.not30.i, label %nlmsg_parse_deprecated.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ba = getelementptr [8 x i8], ptr %i.a, i64 %.lcssa.i
  store ptr @xfrm_reject_unused_attr.__msg.78, ptr %2, align 8
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr i8, ptr %2, i64 8
  store ptr %i.bb, ptr %i.bc, align 8
  %i.bd = getelementptr i8, ptr %2, i64 16
  store ptr null, ptr %i.bd, align 8
  br label %nlmsg_parse_deprecated.exit.thread

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  %.not29.1.i = icmp eq ptr %i.bf, null
  br i1 %.not29.1.i, label %.preheader.2.i, label %bb.v

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bh = load ptr, ptr %i.bg, align 16
  %.not29.2.i = icmp eq ptr %i.bh, null
  br i1 %.not29.2.i, label %.preheader.3.i, label %bb.v

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  %.not29.3.i = icmp eq ptr %i.bj, null
  br i1 %.not29.3.i, label %.preheader.5.i, label %bb.v

.preheader.5.i:                                   ; preds = %.preheader.3.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8
  %.not29.5.i = icmp eq ptr %i.bl, null
  br i1 %.not29.5.i, label %.preheader.6.i, label %bb.v

.preheader.6.i:                                   ; preds = %.preheader.5.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.bn = load ptr, ptr %i.bm, align 16
  %.not29.6.i = icmp eq ptr %i.bn, null
  br i1 %.not29.6.i, label %.preheader.7.i, label %bb.v

.preheader.7.i:                                   ; preds = %.preheader.6.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.bp = load ptr, ptr %i.bo, align 8
  %.not29.7.i = icmp eq ptr %i.bp, null
  br i1 %.not29.7.i, label %.preheader.8.i, label %bb.v

.preheader.8.i:                                   ; preds = %.preheader.7.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.br = load ptr, ptr %i.bq, align 16
  %.not29.8.i = icmp eq ptr %i.br, null
  br i1 %.not29.8.i, label %.preheader.9.i, label %bb.v

.preheader.9.i:                                   ; preds = %.preheader.8.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.bt = load ptr, ptr %i.bs, align 8
  %.not29.9.i = icmp eq ptr %i.bt, null
  br i1 %.not29.9.i, label %.preheader.10.i, label %bb.v

.preheader.10.i:                                  ; preds = %.preheader.9.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.bv = load ptr, ptr %i.bu, align 16
  %.not29.10.i = icmp eq ptr %i.bv, null
  br i1 %.not29.10.i, label %.preheader.11.i, label %bb.v

.preheader.11.i:                                  ; preds = %.preheader.10.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.bx = load ptr, ptr %i.bw, align 8
  %.not29.11.i = icmp eq ptr %i.bx, null
  br i1 %.not29.11.i, label %.preheader.12.i, label %bb.v

.preheader.12.i:                                  ; preds = %.preheader.11.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.bz = load ptr, ptr %i.by, align 16
  %.not29.12.i = icmp eq ptr %i.bz, null
  br i1 %.not29.12.i, label %.preheader.13.i, label %bb.v

.preheader.13.i:                                  ; preds = %.preheader.12.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.cb = load ptr, ptr %i.ca, align 8
  %.not29.13.i = icmp eq ptr %i.cb, null
  br i1 %.not29.13.i, label %.preheader.14.i, label %bb.v

.preheader.14.i:                                  ; preds = %.preheader.13.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.cd = load ptr, ptr %i.cc, align 16
  %.not29.14.i = icmp eq ptr %i.cd, null
  br i1 %.not29.14.i, label %.preheader.15.i, label %bb.v

.preheader.15.i:                                  ; preds = %.preheader.14.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.cf = load ptr, ptr %i.ce, align 8
  %.not29.15.i = icmp eq ptr %i.cf, null
  br i1 %.not29.15.i, label %.preheader.16.i, label %bb.v

.preheader.16.i:                                  ; preds = %.preheader.15.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.ch = load ptr, ptr %i.cg, align 16
  %.not29.16.i = icmp eq ptr %i.ch, null
  br i1 %.not29.16.i, label %.preheader.17.i, label %bb.v

.preheader.17.i:                                  ; preds = %.preheader.16.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.cj = load ptr, ptr %i.ci, align 8
  %.not29.17.i = icmp eq ptr %i.cj, null
  br i1 %.not29.17.i, label %.preheader.18.i, label %bb.v

.preheader.18.i:                                  ; preds = %.preheader.17.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.cl = load ptr, ptr %i.ck, align 16
  %.not29.18.i = icmp eq ptr %i.cl, null
  br i1 %.not29.18.i, label %.preheader.19.i, label %bb.v

.preheader.19.i:                                  ; preds = %.preheader.18.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.cn = load ptr, ptr %i.cm, align 8
  %.not29.19.i = icmp eq ptr %i.cn, null
  br i1 %.not29.19.i, label %.preheader.20.i, label %bb.v

.preheader.20.i:                                  ; preds = %.preheader.19.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.cp = load ptr, ptr %i.co, align 16
  %.not29.20.i = icmp eq ptr %i.cp, null
  br i1 %.not29.20.i, label %.preheader.22.i, label %bb.v

.preheader.22.i:                                  ; preds = %.preheader.20.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.cr = load ptr, ptr %i.cq, align 16
  %.not29.22.i = icmp eq ptr %i.cr, null
  br i1 %.not29.22.i, label %.preheader.23.i, label %bb.v

.preheader.23.i:                                  ; preds = %.preheader.22.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.ct = load ptr, ptr %i.cs, align 8
  %.not29.23.i = icmp eq ptr %i.ct, null
  br i1 %.not29.23.i, label %.preheader.24.i, label %bb.v

.preheader.24.i:                                  ; preds = %.preheader.23.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.cv = load ptr, ptr %i.cu, align 16
  %.not29.24.i = icmp eq ptr %i.cv, null
  br i1 %.not29.24.i, label %.preheader.25.i, label %bb.v

.preheader.25.i:                                  ; preds = %.preheader.24.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.cx = load ptr, ptr %i.cw, align 8
  %.not29.25.i = icmp eq ptr %i.cx, null
  br i1 %.not29.25.i, label %.preheader.26.i, label %bb.v

.preheader.26.i:                                  ; preds = %.preheader.25.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.cz = load ptr, ptr %i.cy, align 16
  %.not29.26.i = icmp eq ptr %i.cz, null
  br i1 %.not29.26.i, label %.preheader.27.i, label %bb.v

.preheader.27.i:                                  ; preds = %.preheader.26.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.db = load ptr, ptr %i.da, align 8
  %.not29.27.i = icmp eq ptr %i.db, null
  br i1 %.not29.27.i, label %.preheader.31.i, label %bb.v

.preheader.31.i:                                  ; preds = %.preheader.27.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.dd = load ptr, ptr %i.dc, align 8
  %.not29.31.i = icmp ne ptr %i.dd, null          ; 2 uses
  %brmerge.i = or i1 %.not.i, %.not29.31.i
  %.mux.i = select i1 %.not29.31.i, i64 31, i64 33
  br i1 %brmerge.i, label %bb.v, label %.preheader.36.i

.preheader.36.i:                                  ; preds = %.preheader.31.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.df = load ptr, ptr %i.de, align 16
  %.not29.36.i = icmp eq ptr %i.df, null
  br i1 %.not29.36.i, label %.preheader.37.i, label %bb.v

.preheader.37.i:                                  ; preds = %.preheader.36.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.dh = load ptr, ptr %i.dg, align 8
  %.not29.37.i = icmp eq ptr %i.dh, null
  br i1 %.not29.37.i, label %.preheader.38.i, label %bb.v

.preheader.38.i:                                  ; preds = %.preheader.37.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.dj = load ptr, ptr %i.di, align 16
  %.not29.38.i = icmp eq ptr %i.dj, null
  br i1 %.not29.38.i, label %.preheader.39.i, label %bb.v

.preheader.39.i:                                  ; preds = %.preheader.38.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.dl = load ptr, ptr %i.dk, align 8
  %.not29.39.i = icmp eq ptr %i.dl, null
  br i1 %.not29.39.i, label %.preheader.40.i, label %bb.v

.preheader.40.i:                                  ; preds = %.preheader.39.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.dn = load ptr, ptr %i.dm, align 16
  %.not29.40.i = icmp eq ptr %i.dn, null
  br i1 %.not29.40.i, label %.preheader.41.i, label %bb.v

.preheader.41.i:                                  ; preds = %.preheader.40.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  %i.dp = load ptr, ptr %i.do, align 8
  %.not29.41.i = icmp eq ptr %i.dp, null
  br i1 %.not29.41.i, label %xfrm_reject_unused_attr.exit, label %bb.v

xfrm_reject_unused_attr.exit:                     ; preds = %.preheader.41.i, %bb.u, %bb.r, %bb.r, %bb.r, %bb.r, %bb.l
  %9 = load ptr, ptr %i.k, align 16               ; 2 uses
  %.not72 = icmp eq ptr %9, null
  br i1 %.not72, label %nlmsg_parse_deprecated.exit.thread, label %bb.x

bb.x:                                             ; preds = %xfrm_reject_unused_attr.exit
  %i.dq = call i32 %9(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef %2) #14 ; 2 uses
  %i.dr = getelementptr i8, ptr %0, i64 192       ; 2 uses
  %.val78.a = load i32, ptr %i.dr, align 8
  %i.ds = getelementptr i8, ptr %0, i64 200       ; 2 uses
  %.val79 = load ptr, ptr %i.ds, align 8
  %i.dt = zext i32 %.val78.a to i64
  %i.du = getelementptr i8, ptr %.val79, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8            ; 2 uses
  %.not83 = icmp eq ptr %i.dw, null
  br i1 %.not83, label %nlmsg_parse_deprecated.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @sk_skb_reason_drop(ptr noundef null, ptr noundef nonnull %i.dw, i32 noundef 2) #14
  %.val74.a = load i32, ptr %i.dr, align 8
  %.val75 = load ptr, ptr %i.ds, align 8
  %i.dx = zext i32 %.val74.a to i64
  %i.dy = getelementptr i8, ptr %.val75, i64 %i.dx
  %i.dz = getelementptr i8, ptr %i.dy, i64 8
  store ptr null, ptr %i.dz, align 8
  br label %nlmsg_parse_deprecated.exit.thread

nlmsg_parse_deprecated.exit.thread:               ; preds = %bb.v, %bb.w, %bb.t, %bb.p, %bb.s, %bb.o, %bb.j, %bb.k, %xfrm_reject_unused_attr.exit, %bb.h, %bb.x, %bb.y, %nlmsg_parse_deprecated.exit
  %.154 = phi i32 [ %.053, %bb.h ], [ %i.as, %nlmsg_parse_deprecated.exit ], [ -22, %bb.j ], [ %i.dq, %bb.x ], [ %i.dq, %bb.y ], [ -22, %xfrm_reject_unused_attr.exit ], [ -22, %bb.k ], [ -22, %bb.o ], [ -22, %bb.s ], [ -22, %bb.p ], [ -22, %bb.t ], [ -22, %bb.w ], [ -22, %bb.v ]
  call void @kvfree(ptr noundef null) #14
  br label %bb.z

bb.z:                                             ; preds = %bb.c, %bb.b, %bb.a, %nlmsg_parse_deprecated.exit.thread
  %.2 = phi i32 [ -1, %bb.b ], [ %.154, %nlmsg_parse_deprecated.exit.thread ], [ -22, %bb.a ], [ -95, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.2
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @netlink_net_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @xfrm_add_sa(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) #2 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.km_event, align 8           ; 7 uses
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 48
  %.val = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.d = getelementptr i8, ptr %1, i64 16         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !annotation !13
  %i.e = getelementptr i8, ptr %2, i64 264        ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %nla_get_u8_default.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %.val.i.i = load i8, ptr %i.g, align 1
  br label %nla_get_u8_default.exit.i

nla_get_u8_default.exit.i:                        ; preds = %bb.b, %bb.a
  %.0.i.i = phi i8 [ %.val.i.i, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.h = getelementptr i8, ptr %1, i64 228        ; 3 uses
  %i.i = load i16, ptr %i.h, align 4              ; 2 uses
  switch i16 %i.i, label %bb.c [
    i16 2, label %verify_xfrm_family.exit.i
    i16 10, label %verify_xfrm_family.exit.i
  ]

bb.c:                                             ; preds = %nla_get_u8_default.exit.i
  tail call void @do_trace_netlink_extack(ptr noundef @verify_xfrm_family.__msg) #14
  %.not.i330.i = icmp eq ptr %3, null
  br i1 %.not.i330.i, label %xfrm_state_put.exit, label %verify_selector_prefixlen.exit.sink.split.i

verify_xfrm_family.exit.i:                        ; preds = %nla_get_u8_default.exit.i, %nla_get_u8_default.exit.i
  %i.j = getelementptr i8, ptr %1, i64 56
  %i.k = load i16, ptr %i.j, align 8              ; 2 uses
  %.not222.i = icmp eq i16 %i.k, 0
  br i1 %.not222.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %verify_xfrm_family.exit.i
  %i.l = getelementptr i8, ptr %1, i64 232
  %i.m = load i8, ptr %i.l, align 8
  %i.n = and i8 %i.m, 32
  %.not223.i = icmp eq i8 %i.n, 0
  br i1 %.not223.i, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d, %verify_xfrm_family.exit.i
  %.0196.i = phi i16 [ %i.k, %verify_xfrm_family.exit.i ], [ %i.i, %bb.d ]
  switch i16 %.0196.i, label %bb.l [
    i16 10, label %bb.i
    i16 2, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %1, i64 58
  %i.p = load i8, ptr %i.o, align 2
  %i.q = icmp ugt i8 %i.p, 32
  br i1 %i.q, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %1, i64 59
  %i.s = load i8, ptr %i.r, align 1
  %i.t = icmp ugt i8 %i.s, 32
  br i1 %i.t, label %bb.h, label %.thread.i

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @do_trace_netlink_extack(ptr noundef @verify_selector_prefixlen.__msg) #14
  %.not15.i.i = icmp eq ptr %3, null
  br i1 %.not15.i.i, label %xfrm_state_put.exit, label %verify_selector_prefixlen.exit.sink.split.i

bb.i:                                             ; preds = %bb.e
  %i.u = getelementptr i8, ptr %1, i64 58
  %i.v = load i8, ptr %i.u, align 2
  %i.w = icmp ugt i8 %i.v, -128
  br i1 %i.w, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr i8, ptr %1, i64 59
  %i.y = load i8, ptr %i.x, align 1
  %i.z = icmp ugt i8 %i.y, -128
  br i1 %i.z, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void @do_trace_netlink_extack(ptr noundef @verify_selector_prefixlen.__msg.46) #14
  %.not.i332.i = icmp eq ptr %3, null
  br i1 %.not.i332.i, label %xfrm_state_put.exit, label %verify_selector_prefixlen.exit.sink.split.i

bb.l:                                             ; preds = %bb.e
  tail call void @do_trace_netlink_extack(ptr noundef @verify_selector_prefixlen.__msg.47) #14
  %.not16.i.i = icmp eq ptr %3, null
  br i1 %.not16.i.i, label %xfrm_state_put.exit, label %verify_selector_prefixlen.exit.sink.split.i

.thread.i:                                        ; preds = %bb.j, %bb.g, %bb.d
  %i.aa = getelementptr i8, ptr %1, i64 92        ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 4
  switch i8 %i.ab, label %bb.bi [
    i8 51, label %bb.m
    i8 50, label %bb.u
    i8 108, label %bb.an
    i8 60, label %bb.ax
    i8 43, label %bb.ax
  ]

bb.m:                                             ; preds = %.thread.i
  %i.ac = getelementptr i8, ptr %2, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %.not268.i = icmp eq ptr %i.ad, null
  br i1 %.not268.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr i8, ptr %2, i64 160
  %i.af = load ptr, ptr %i.ae, align 8
  %.not269.i = icmp eq ptr %i.af, null
  br i1 %.not269.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @do_trace_netlink_extack(ptr noundef @verify_newsa_info.__msg) #14
  %.not270.i = icmp eq ptr %3, null
  br i1 %.not270.i, label %xfrm_state_put.exit, label %verify_selector_prefixlen.exit.sink.split.i

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.ag = getelementptr i8, ptr %2, i64 144
  %i.ah = load ptr, ptr %i.ag, align 8
  %.not271.i = icmp eq ptr %i.ah, null
  br i1 %.not271.i, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ai = getelementptr i8, ptr %2, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %.not272.i = icmp eq ptr %i.aj, null
  br i1 %.not272.i, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ak = getelementptr i8, ptr %2, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  %.not273.i = icmp eq ptr %i.al, null
  br i1 %.not273.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.am = getelementptr i8, ptr %2, i64 176
  %i.an = load ptr, ptr %i.am, align 8
  %.not274.i = icmp eq ptr %i.an, null
  br i1 %.not274.i, label %bb.bj, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  tail call void @do_trace_netlink_extack(ptr noundef @verify_newsa_info.__msg.16) #14
  %.not322.i = icmp eq ptr %3, null
  br i1 %.not322.i, label %xfrm_state_put.exit, label %verify_selector_prefixlen.exit.sink.split.i

bb.u:                                             ; preds = %.thread.i
  %i.ao = getelementptr i8, ptr %2, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  %.not245.i = icmp eq ptr %i.ap, null
  br i1 %.not245.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @do_trace_netlink_extack(ptr noundef @verify_newsa_info.__msg.17) #14
end_hunk_0
