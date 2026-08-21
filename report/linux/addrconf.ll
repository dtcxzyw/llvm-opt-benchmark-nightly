Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/addrconf?download=true
inline.NumInlined: 834
inline.NumDeleted: 275
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@addrconf_add_dev:bb.a
  br label %ipv6_find_idev.exit

ipv6_find_idev.exit:                              ; preds = %bb.f, %bb.g, %bb.h
  %.0.i = phi ptr [ %i.g, %bb.f ], [ %.014.i, %bb.h ], [ %.014.i, %bb.g ] ; 6 uses
  %i.l = icmp ugt ptr %.0.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.l, label %bb.m, label %bb.i

bb.i:                                             ; preds = %ipv6_find_idev.exit
  %i.m = getelementptr i8, ptr %.0.i, i64 672
  %i.n = load i32, ptr %i.m, align 8
  %.not14 = icmp eq i32 %i.n, 0
  br i1 %.not14, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr i8, ptr %0, i64 176
  %i.p = load i32, ptr %i.o, align 16
  %i.q = and i32 %i.p, 8
  %.not15 = icmp eq i32 %i.q, 0
  br i1 %.not15, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %.val = load i64, ptr %0, align 64
  %i.r = and i64 %.val, 262144
  %.not18 = icmp eq i64 %i.r, 0
  br i1 %.not18, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.s = getelementptr i8, ptr %0, i64 224
  %.val16 = load i32, ptr %i.s, align 32
  %i.t = getelementptr i8, ptr %0, i64 264
  %.val17 = load ptr, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.u, i8 0, i64 168, i1 false)
  store i32 254, ptr %1, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 256, ptr %i.v, align 4
  store i32 8, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %.val16, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 1, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 2, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i16 5, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %.val17, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i64 255, ptr %i.ab, align 8
  %i.ac = call i32 @ip6_route_add(ptr noundef nonnull %1, i32 noundef 3264, ptr noundef null) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %ipv6_find_idev.exit
  %.0 = phi ptr [ %.0.i, %ipv6_find_idev.exit ], [ %.0.i, %bb.j ], [ %.0.i, %bb.l ], [ %.0.i, %bb.k ], [ inttoptr (i64 -13 to ptr), %bb.i ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ipv6_mc_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ipv6_sock_mc_join(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ipv6_sock_mc_drop(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @delete_tempaddrs(ptr noundef %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 608        ; 4 uses
  tail call void @_raw_write_lock_bh(ptr noundef %i.a) #18
  %i.b = getelementptr i8, ptr %0, i64 632        ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not25 = icmp eq ptr %i.c, %i.b
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.pn.in26 = phi ptr [ %.pn28, %bb.d ], [ %i.c, %bb.a ] ; 4 uses
  %.027 = getelementptr i8, ptr %.pn.in26, i64 -232
  %.pn28 = load ptr, ptr %.pn.in26, align 8       ; 2 uses
  %i.d = getelementptr i8, ptr %.pn.in26, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %.not21 = icmp eq ptr %i.e, %1
  br i1 %.not21, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr i8, ptr %.pn.in26, i64 -200 ; 3 uses
  %i.g = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.f, i32 1, ptr elementtype(i32) %i.f) #20, !srcloc !23 ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i.i, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.h = add i32 %i.g, 1
  %i.i = or i32 %i.h, %i.g
  %.not10.i.i.i.i = icmp sgt i32 %i.i, -1
  br i1 %.not10.i.i.i.i, label %in6_ifa_hold.exit, label %.sink.split.i.i.i.i, !prof !19

.sink.split.i.i.i.i:                              ; preds = %bb.c, %bb.b
  %.sink.i.i.i.i = phi i32 [ 2, %bb.b ], [ 1, %bb.c ]
  tail call void @refcount_warn_saturate(ptr noundef %i.f, i32 noundef %.sink.i.i.i.i) #18
  br label %in6_ifa_hold.exit

in6_ifa_hold.exit:                                ; preds = %bb.c, %.sink.split.i.i.i.i
  tail call void @_raw_write_unlock_bh(ptr noundef %i.a) #18
  tail call fastcc void @ipv6_del_addr(ptr noundef %.027) #19, !srcloc !159
  tail call void @_raw_write_lock_bh(ptr noundef %i.a) #18
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %in6_ifa_hold.exit
  %.not = icmp eq ptr %.pn28, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !160

._crit_edge:                                      ; preds = %bb.d, %bb.a
  tail call void @_raw_write_unlock_bh(ptr noundef %i.a) #18
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sha1_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sha1_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -12, 1) i32 @if6_proc_net_init(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 464
  %i.b = load ptr, ptr %i.a, align 16
  %i.c = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.29, i16 noundef zeroext 292, ptr noundef %i.b, ptr noundef nonnull @if6_seq_ops, i32 noundef 16, ptr noundef null) #18
  %.not = icmp eq ptr %i.c, null
  %. = select i1 %.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @if6_proc_net_exit(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 464
  %i.b = load ptr, ptr %i.a, align 16
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.29, ptr noundef %i.b) #18
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @if6_seq_start(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  tail call void @__rcu_read_lock() #18
  %i.a = load i64, ptr %1, align 8
  %i.b = getelementptr i8, ptr %0, i64 104
  %.val = load ptr, ptr %i.b, align 8             ; 4 uses
  %.val.val.i = load ptr, ptr %.val, align 8
  %i.c = icmp eq i64 %i.a, 0
  %i.d = getelementptr i8, ptr %.val, i64 8       ; 3 uses
  br i1 %i.c, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  store i32 0, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %.val, i64 12
  store i32 0, ptr %i.e, align 4
  br label %.lr.ph8.i

bb.b:                                             ; preds = %bb.a
  %.promoted.pre.i = load i32, ptr %i.d, align 8  ; 2 uses
  %i.f = icmp slt i32 %.promoted.pre.i, 256
  br i1 %i.f, label %.lr.ph8.i, label %if6_get_first.exit

.lr.ph8.i:                                        ; preds = %bb.b, %.thread.i
  %.promoted17.i = phi i32 [ 0, %.thread.i ], [ %.promoted.pre.i, %bb.b ]
  %i.g = getelementptr i8, ptr %.val.val.i, i64 2496
  %i.h = getelementptr i8, ptr %.val, i64 12      ; 2 uses
  %i.i = sext i32 %.promoted17.i to i64
  br label %bb.c

bb.c:                                             ; preds = %select.unfold._crit_edge.i, %.lr.ph8.i
  %indvars.iv.i = phi i64 [ %i.i, %.lr.ph8.i ], [ %indvars.iv.next.i, %select.unfold._crit_edge.i ] ; 2 uses
  %i.j = load ptr, ptr %i.g, align 64
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.l = load volatile ptr, ptr %i.k, align 8     ; 3 uses
  %.not.i = icmp eq ptr %i.l, null
  %i.m = getelementptr i8, ptr %i.l, i64 -184     ; 2 uses
  %.not3759.i = icmp eq ptr %i.m, null
  %.not375.i = or i1 %.not.i, %.not3759.i
  br i1 %.not375.i, label %select.unfold._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.n = load i32, ptr %i.h, align 4              ; 2 uses
  %exitcond.not.i11 = icmp slt i32 %i.n, 1
  br i1 %exitcond.not.i11, label %if6_get_first.exit, label %select.unfold.i

bb.d:                                             ; preds = %select.unfold.i
  %i.o = add nuw nsw i32 %.16.i13, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.n, %i.o
  br i1 %exitcond.not.i, label %if6_get_first.exit, label %select.unfold.i

select.unfold.i:                                  ; preds = %.lr.ph.i, %bb.d
  %.16.i13 = phi i32 [ %i.o, %bb.d ], [ 0, %.lr.ph.i ]
  %i.p = phi ptr [ %i.q, %bb.d ], [ %i.l, %.lr.ph.i ]
  %i.q = load volatile ptr, ptr %i.p, align 8     ; 3 uses
  %.not38.i = icmp eq ptr %i.q, null
  %i.r = getelementptr i8, ptr %i.q, i64 -184     ; 2 uses
  %.not3720.i = icmp eq ptr %i.r, null
  %.not37.i = or i1 %.not38.i, %.not3720.i
  br i1 %.not37.i, label %select.unfold._crit_edge.i, label %bb.d

select.unfold._crit_edge.i:                       ; preds = %select.unfold.i, %bb.c
  store i32 0, ptr %i.h, align 4
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.s = trunc nsw i64 %indvars.iv.next.i to i32
  store i32 %i.s, ptr %i.d, align 8
  %exitcond13.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond13.not.i, label %if6_get_first.exit, label %bb.c, !llvm.loop !161

if6_get_first.exit:                               ; preds = %select.unfold._crit_edge.i, %.lr.ph.i, %bb.d, %bb.b
  %.0.i = phi ptr [ null, %bb.b ], [ %i.r, %bb.d ], [ %i.m, %.lr.ph.i ], [ null, %select.unfold._crit_edge.i ]
  ret ptr %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @if6_seq_stop(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  tail call void @__rcu_read_unlock() #18
  ret void
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define internal ptr @if6_seq_next(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address) %1, ptr nofree noundef captures(none) %2) #11 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.val.val.i = load ptr, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %1, i64 184
  %i.d = load volatile ptr, ptr %i.c, align 8     ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  %i.e = getelementptr i8, ptr %i.d, i64 -184     ; 2 uses
  %.not3438.i = icmp eq ptr %i.e, null
  %.not34.i = or i1 %.not.i, %.not3438.i
  %i.f = getelementptr i8, ptr %i.b, i64 12       ; 3 uses
  br i1 %.not34.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.f, align 4
  %i.h = add i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 4
  br label %if6_get_next.exit

bb.c:                                             ; preds = %bb.a
  store i32 0, ptr %i.f, align 4
  %i.i = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %.promoted.i = load i32, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %.val.val.i, i64 2496
  %i.k = add i32 %.promoted.i, 1                  ; 3 uses
  store i32 %i.k, ptr %i.i, align 8
  %i.l = icmp slt i32 %i.k, 256
  br i1 %i.l, label %.lr.ph, label %if6_get_next.exit

bb.d:                                             ; preds = %.lr.ph
  %i.m = add i32 %i.o, 1                          ; 3 uses
  store i32 %i.m, ptr %i.i, align 8
  %i.n = icmp slt i32 %i.m, 256
  br i1 %i.n, label %.lr.ph, label %if6_get_next.exit, !llvm.loop !162

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %i.o = phi i32 [ %i.m, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  %i.p = load ptr, ptr %i.j, align 64
  %i.q = sext i32 %i.o to i64
  %i.r = getelementptr [8 x i8], ptr %i.p, i64 %i.q
  %i.s = load volatile ptr, ptr %i.r, align 8     ; 2 uses
  %.not35.i = icmp eq ptr %i.s, null
  %i.t = getelementptr i8, ptr %i.s, i64 -184     ; 2 uses
  %.not3639.i = icmp eq ptr %i.t, null
  %.not36.i = or i1 %.not35.i, %.not3639.i
  br i1 %.not36.i, label %bb.d, label %.if6_get_next.exit.loopexit_crit_edge, !llvm.loop !162

.if6_get_next.exit.loopexit_crit_edge:            ; preds = %.lr.ph
  br label %if6_get_next.exit, !llvm.loop !162

if6_get_next.exit:                                ; preds = %bb.d, %bb.c, %.if6_get_next.exit.loopexit_crit_edge, %bb.b
  %.0.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.c ], [ %i.t, %.if6_get_next.exit.loopexit_crit_edge ], [ null, %bb.d ]
  %i.u = load i64, ptr %2, align 8
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %2, align 8
  ret ptr %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @if6_seq_show(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 168
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 224
  %i.e = load i32, ptr %i.d, align 32
  %i.f = getelementptr i8, ptr %1, i64 16
  %i.g = load i32, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %1, i64 50
  %i.i = load i16, ptr %i.h, align 2
  %i.j = zext i16 %i.i to i32
  %i.k = getelementptr i8, ptr %1, i64 44
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 255
  %i.n = getelementptr i8, ptr %i.c, i64 288
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef %1, i32 noundef %i.e, i32 noundef %i.g, i32 noundef %i.j, i32 noundef %i.m, ptr noundef %i.n) #18
  ret i32 0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @netif_get_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @dev_get_iflink(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -90, 1) i32 @inet6_fill_ifla6_attrs(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %3 = alloca %struct.ifla_cacheinfo, align 4     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.d = getelementptr i8, ptr %1, i64 620
  %i.e = load volatile i32, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 %i.e, ptr %i.c, align 4
  %i.f = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %inet6_fill_ifla6_stats_attrs.exit.thread

bb.b:                                             ; preds = %bb.a
  store i32 65535, ptr %3, align 4
  %i.g = getelementptr i8, ptr %1, i64 984
  %i.h = load volatile i64, ptr %i.g, align 8
  %i.i = mul i64 %i.h, 100
  %i.j = add i64 %i.i, -429466729600
  %i.k = udiv i64 %i.j, 1000
  %i.l = trunc i64 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.l, ptr %i.m, align 4
  %i.n = getelementptr i8, ptr %1, i64 664
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 80
  %i.q = load i32, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.q, ptr %i.r, align 4
  %i.s = getelementptr i8, ptr %i.o, i64 104
  %i.t = load volatile i32, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.t, ptr %i.u, align 4
  %i.v = call i32 @nla_put(ptr noundef %0, i32 noundef 5, i32 noundef 16, ptr noundef nonnull %3) #18
  %.not35 = icmp eq i32 %i.v, 0
  br i1 %.not35, label %bb.c, label %inet6_fill_ifla6_stats_attrs.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.w = call ptr @nla_reserve(ptr noundef %0, i32 noundef 2, i32 noundef 240) #18 ; 53 uses
  %.not36 = icmp eq ptr %i.w, null
  br i1 %.not36, label %inet6_fill_ifla6_stats_attrs.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val42 = load i16, ptr %i.w, align 2
  %i.x = add i16 %.val42, -4                      ; 2 uses
  %i.y = icmp ult i16 %i.x, 240
  br i1 %i.y, label %bb.e, label %ipv6_store_devconf.exit, !prof !11

bb.e:                                             ; preds = %bb.d
  call void asm sideeffect "1449: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1449b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1449) #20, !srcloc !163
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 5665, i32 0, i64 16) #20, !srcloc !164
  unreachable

ipv6_store_devconf.exit:                          ; preds = %bb.d
  %i.z = getelementptr i8, ptr %i.w, i64 4        ; 2 uses
  %i.aa = getelementptr i8, ptr %1, i64 672
  %i.ab = zext i16 %i.x to i64
  call void @llvm.memset.p0.i64(ptr align 4 %i.z, i8 0, i64 %i.ab, i1 false)
  %i.ac = getelementptr i8, ptr %1, i64 684
  %i.ad = load volatile i32, ptr %i.ac, align 4
  store i32 %i.ad, ptr %i.z, align 4
  %i.ae = getelementptr i8, ptr %1, i64 676
end_hunk_0
