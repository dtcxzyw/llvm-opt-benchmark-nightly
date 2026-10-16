Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/nf_conntrack_proto?download=true
inline.NumInlined: 68
inline.NumDeleted: 40
begin_hunk_0_@nf_confirm:bb.a
  call void asm sideeffect "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.by, ptr elementtype(i32) %i.by) #8, !srcloc !15
  br label %nf_conntrack_confirm.exit

bb.x:                                             ; preds = %bb.v, %.thread
  %.val14.i97 = load i64, ptr %i.c, align 8
  %i.bz = and i64 %.val14.i97, -8                 ; 2 uses
  %.not.i98 = icmp eq i64 %i.bz, 0
  br i1 %.not.i98, label %nf_conntrack_confirm.exit, label %nf_ct_is_confirmed.exit.i100

nf_ct_is_confirmed.exit.i100:                     ; preds = %bb.x
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = getelementptr i8, ptr %i.ca, i64 128
  %i.cc = load volatile i64, ptr %i.cb, align 8
  %i.cd = and i64 %i.cc, 8
  %.not13.i102 = icmp eq i64 %i.cd, 0
  br i1 %.not13.i102, label %bb.y, label %nf_conntrack_confirm.exit

bb.y:                                             ; preds = %nf_ct_is_confirmed.exit.i100
  %i.ce = call i32 @__nf_conntrack_confirm(ptr noundef %1) #9
  br label %nf_conntrack_confirm.exit

nf_conntrack_confirm.exit:                        ; preds = %bb.y, %nf_ct_is_confirmed.exit.i100, %bb.x, %bb.u, %bb.q, %nf_ct_is_confirmed.exit.i92, %bb.p, %nf_ct_is_confirmed.exit.i84, %bb.o, %bb.j, %nf_ct_is_confirmed.exit.i76, %bb.h, %nf_ct_is_confirmed.exit.i, %bb.a, %bb.w
  %.1 = phi i32 [ 1, %bb.a ], [ 1, %nf_ct_is_confirmed.exit.i ], [ 1, %nf_ct_is_confirmed.exit.i84 ], [ %i.bt, %bb.u ], [ 0, %bb.w ], [ 1, %nf_ct_is_confirmed.exit.i92 ], [ 1, %nf_ct_is_confirmed.exit.i76 ], [ 1, %nf_ct_is_confirmed.exit.i100 ], [ %i.aa, %bb.h ], [ 1, %bb.x ], [ %i.ag, %bb.j ], [ 1, %bb.o ], [ %i.bm, %bb.p ], [ %i.ce, %bb.y ], [ %i.bp, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.1
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ipv6_skip_exthdr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @nf_ct_seq_adjust(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @nf_ct_netns_get(ptr noundef %0, i8 noundef zeroext %1) #6 align 16 prefalign(16) {
bb.a:
  switch i8 %1, label %bb.f [
    i8 1, label %bb.b
    i8 7, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc i32 @nf_ct_netns_inet_get(ptr noundef %0) #11, !srcloc !16
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @nf_ct_netns_do_get(ptr noundef %0, i8 noundef zeroext 7) #11, !srcloc !17 ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call fastcc i32 @nf_ct_netns_inet_get(ptr noundef %0) #11, !srcloc !18 ; 3 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  tail call void @nf_ct_netns_put(ptr noundef %0, i8 noundef zeroext 7) #11
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.f = tail call fastcc i32 @nf_ct_netns_do_get(ptr noundef %0, i8 noundef zeroext %1) #11, !srcloc !19
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f, %bb.d, %bb.c, %bb.e
  %.012 = phi i32 [ %i.b, %bb.c ], [ %i.d, %bb.e ], [ %i.f, %bb.f ], [ %i.a, %bb.b ], [ %i.d, %bb.d ]
  ret i32 %.012
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @nf_ct_netns_inet_get(ptr noundef %0) unnamed_addr #6 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc i32 @nf_ct_netns_do_get(ptr noundef %0, i8 noundef zeroext 2) #11, !srcloc !20 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @nf_ct_netns_do_get(ptr noundef %0, i8 noundef zeroext 10) #11, !srcloc !21 ; 3 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr @nf_conntrack_net_id, align 4
  tail call void @__rcu_read_lock() #9
  %i.f = getelementptr i8, ptr %0, i64 2984
  %i.g = load volatile ptr, ptr %i.f, align 8
  %i.h = zext i32 %i.e to i64
  %i.i = getelementptr [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8
  tail call void @__rcu_read_unlock() #9
  tail call void @mutex_lock(ptr noundef nonnull @nf_ct_proto_mutex) #9
  %i.k = getelementptr i8, ptr %i.j, i64 8        ; 2 uses
  %i.l = load i32, ptr %i.k, align 8              ; 2 uses
  %.not16.i = icmp eq i32 %i.l, 0
  br i1 %.not16.i, label %nf_ct_netns_do_put.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.m, ptr %i.k, align 8
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %nf_ct_netns_do_put.exit

bb.e:                                             ; preds = %bb.d
  tail call void @nf_unregister_net_hooks(ptr noundef %0, ptr noundef nonnull @ipv4_conntrack_ops, i32 noundef 4) #9
  tail call void @nf_defrag_ipv4_disable(ptr noundef %0) #9
  br label %nf_ct_netns_do_put.exit

nf_ct_netns_do_put.exit:                          ; preds = %bb.c, %bb.d, %bb.e
  tail call void @mutex_unlock(ptr noundef nonnull @nf_ct_proto_mutex) #9
  br label %bb.f

bb.f:                                             ; preds = %nf_ct_netns_do_put.exit, %bb.a, %bb.b
  %.07 = phi i32 [ %i.c, %bb.b ], [ %i.a, %bb.a ], [ %i.c, %nf_ct_netns_do_put.exit ]
  ret i32 %.07
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @nf_ct_netns_do_get(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #6 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.nf_ct_iter_data, align 8    ; 7 uses
  %i.a = load i32, ptr @nf_conntrack_net_id, align 4
  tail call void @__rcu_read_lock() #9
  %i.b = getelementptr i8, ptr %0, i64 2984
  %i.c = load volatile ptr, ptr %i.b, align 8
  %i.d = zext i32 %i.a to i64
  %i.e = getelementptr [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  tail call void @__rcu_read_unlock() #9
  tail call void @mutex_lock(ptr noundef nonnull @nf_ct_proto_mutex) #9
  switch i8 %1, label %.thread [
    i8 2, label %.split.us
    i8 10, label %.split.us46
    i8 7, label %.split.us50
  ]

.split.us:                                        ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.f, i64 8        ; 4 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = add i32 %i.h, 1                          ; 2 uses
  store i32 %i.i, ptr %i.g, align 8
  %i.j = icmp ugt i32 %i.i, 1
  br i1 %i.j, label %.thread, label %bb.b

.split.us46:                                      ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.f, i64 12       ; 4 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = add i32 %i.l, 1                          ; 2 uses
  store i32 %i.m, ptr %i.k, align 4
  %i.n = icmp ugt i32 %i.m, 1
  br i1 %i.n, label %.thread, label %bb.f

.split.us50:                                      ; preds = %bb.a
  %i.o = load ptr, ptr @nf_ct_bridge_info, align 8 ; 2 uses
  %.not.us54 = icmp eq ptr %i.o, null
  br i1 %.not.us54, label %.lr.ph.preheader, label %.split53.us

.lr.ph.preheader:                                 ; preds = %.split.us50
  tail call void @mutex_unlock(ptr noundef nonnull @nf_ct_proto_mutex) #9
  %i.p = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.4) #9 ; 0 uses
  tail call void @mutex_lock(ptr noundef nonnull @nf_ct_proto_mutex) #9
  %i.q = load ptr, ptr @nf_ct_bridge_info, align 8 ; 2 uses
  %.not.us = icmp eq ptr %i.q, null
  br i1 %.not.us, label %.thread, label %.split53.us

bb.b:                                             ; preds = %.split.us
  %i.r = tail call i32 @nf_defrag_ipv4_enable(ptr noundef %0) #9 ; 2 uses
  %.not39 = icmp eq i32 %i.r, 0
  br i1 %.not39, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.s = tail call i32 @nf_register_net_hooks(ptr noundef %0, ptr noundef nonnull @ipv4_conntrack_ops, i32 noundef 4) #9 ; 2 uses
  %.not40 = icmp eq i32 %i.s, 0
  br i1 %.not40, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.g, align 8
  br label %.thread

bb.f:                                             ; preds = %.split.us46
  %i.t = tail call i32 @nf_defrag_ipv6_enable(ptr noundef %0) #9 ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.k, align 4
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.v = tail call i32 @nf_register_net_hooks(ptr noundef %0, ptr noundef nonnull @ipv6_conntrack_ops, i32 noundef 4) #9 ; 2 uses
  %.not38 = icmp eq i32 %i.v, 0
  br i1 %.not38, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.k, align 4
  br label %.thread

.split53.us:                                      ; preds = %.split.us50, %.lr.ph.preheader
  %.lcssa.us = phi ptr [ %i.o, %.split.us50 ], [ %i.q, %.lr.ph.preheader ]
  %i.w = getelementptr i8, ptr %.lcssa.us, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call zeroext i1 @try_module_get(ptr noundef %i.x) #9
  br i1 %i.y, label %bb.j, label %.thread

bb.j:                                             ; preds = %.split53.us
  %i.z = getelementptr i8, ptr %i.f, i64 16       ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = add i32 %i.aa, 1                        ; 2 uses
  store i32 %i.ab, ptr %i.z, align 8
  %i.ac = icmp ugt i32 %i.ab, 1
  br i1 %i.ac, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr @nf_ct_bridge_info, align 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr i8, ptr %i.ad, i64 8
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = tail call i32 @nf_register_net_hooks(ptr noundef %0, ptr noundef %i.ae, i32 noundef %i.ag) #9 ; 2 uses
  %.not37 = icmp eq i32 %i.ah, 0
  br i1 %.not37, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.z, align 8
  br label %.thread

.thread:                                          ; preds = %bb.a, %.lr.ph.preheader, %.split.us, %bb.c, %bb.e, %.split.us46, %bb.g, %bb.i, %bb.j, %bb.l, %.split53.us
  %.0.ph = phi i32 [ %i.r, %bb.c ], [ 0, %.split.us ], [ -71, %.split53.us ], [ %i.ah, %bb.l ], [ 0, %bb.j ], [ %i.v, %bb.i ], [ %i.t, %bb.g ], [ 0, %.split.us46 ], [ %i.s, %bb.e ], [ -71, %.lr.ph.preheader ], [ -71, %bb.a ]
  tail call void @mutex_unlock(ptr noundef nonnull @nf_ct_proto_mutex) #9
  br label %bb.n

bb.m:                                             ; preds = %bb.d, %bb.h, %bb.k
  tail call void @mutex_unlock(ptr noundef nonnull @nf_ct_proto_mutex) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store ptr %0, ptr %2, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = zext nneg i8 %1 to i64
  %i.ak = inttoptr i64 %i.aj to ptr
  store ptr %i.ak, ptr %i.ai, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 0, ptr %i.am, align 4
  call void @nf_ct_iterate_cleanup_net(ptr noundef nonnull @nf_ct_tcp_fixup, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.n

bb.n:                                             ; preds = %.thread, %bb.m
  %.043 = phi i32 [ %.0.ph, %.thread ], [ 0, %bb.m ]
  ret i32 %.043
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @nf_ct_netns_put(ptr noundef %0, i8 noundef zeroext %1) #6 align 16 prefalign(16) {
bb.a:
  switch i8 %1, label %bb.h [
    i8 7, label %bb.b
    i8 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @nf_ct_netns_do_put(ptr noundef %0, i8 noundef zeroext 7) #11, !srcloc !22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = load i32, ptr @nf_conntrack_net_id, align 4
  tail call void @__rcu_read_lock() #9
  %i.b = getelementptr i8, ptr %0, i64 2984       ; 2 uses
  %i.c = load volatile ptr, ptr %i.b, align 8
  %i.d = zext i32 %i.a to i64
  %i.e = getelementptr [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @__rcu_read_unlock() #9
  tail call void @mutex_lock(ptr noundef nonnull @nf_ct_proto_mutex) #9
  %i.g = getelementptr i8, ptr %i.f, i64 8        ; 2 uses
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %.not16.i = icmp eq i32 %i.h, 0
  br i1 %.not16.i, label %nf_ct_netns_do_put.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = add i32 %i.h, -1                         ; 2 uses
  store i32 %i.i, ptr %i.g, align 8
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %nf_ct_netns_do_put.exit

bb.e:                                             ; preds = %bb.d
  tail call void @nf_unregister_net_hooks(ptr noundef %0, ptr noundef nonnull @ipv4_conntrack_ops, i32 noundef 4) #9
  tail call void @nf_defrag_ipv4_disable(ptr noundef %0) #9
  br label %nf_ct_netns_do_put.exit

nf_ct_netns_do_put.exit:                          ; preds = %bb.c, %bb.d, %bb.e
  tail call void @mutex_unlock(ptr noundef nonnull @nf_ct_proto_mutex) #9
  %i.k = load i32, ptr @nf_conntrack_net_id, align 4
  tail call void @__rcu_read_lock() #9
  %i.l = load volatile ptr, ptr %i.b, align 8
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr [8 x i8], ptr %i.l, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8
  tail call void @__rcu_read_unlock() #9
  tail call void @mutex_lock(ptr noundef nonnull @nf_ct_proto_mutex) #9
  %i.p = getelementptr i8, ptr %i.o, i64 12       ; 2 uses
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %.not15.i = icmp eq i32 %i.q, 0
  br i1 %.not15.i, label %nf_ct_netns_do_put.exit5, label %bb.f

bb.f:                                             ; preds = %nf_ct_netns_do_put.exit
  %i.r = add i32 %i.q, -1                         ; 2 uses
  store i32 %i.r, ptr %i.p, align 4
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %nf_ct_netns_do_put.exit5

bb.g:                                             ; preds = %bb.f
  tail call void @nf_unregister_net_hooks(ptr noundef %0, ptr noundef nonnull @ipv6_conntrack_ops, i32 noundef 4) #9
  tail call void @nf_defrag_ipv6_disable(ptr noundef %0) #9
  br label %nf_ct_netns_do_put.exit5

nf_ct_netns_do_put.exit5:                         ; preds = %nf_ct_netns_do_put.exit, %bb.f, %bb.g
  tail call void @mutex_unlock(ptr noundef nonnull @nf_ct_proto_mutex) #9
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  tail call fastcc void @nf_ct_netns_do_put(ptr noundef %0, i8 noundef zeroext %1) #11, !srcloc !23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %nf_ct_netns_do_put.exit5
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @nf_ct_netns_do_put(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #6 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr @nf_conntrack_net_id, align 4
  tail call void @__rcu_read_lock() #9
  %i.b = getelementptr i8, ptr %0, i64 2984
  %i.c = load volatile ptr, ptr %i.b, align 8
  %i.d = zext i32 %i.a to i64
  %i.e = getelementptr [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  tail call void @__rcu_read_unlock() #9
  tail call void @mutex_lock(ptr noundef nonnull @nf_ct_proto_mutex) #9
  switch i8 %1, label %bb.m [
    i8 2, label %bb.b
    i8 10, label %bb.e
    i8 7, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.f, i64 8        ; 2 uses
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %.not16 = icmp eq i32 %i.h, 0
  br i1 %.not16, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add i32 %i.h, -1                         ; 2 uses
  store i32 %i.i, ptr %i.g, align 8
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  tail call void @nf_unregister_net_hooks(ptr noundef %0, ptr noundef nonnull @ipv4_conntrack_ops, i32 noundef 4) #9
  tail call void @nf_defrag_ipv4_disable(ptr noundef %0) #9
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.f, i64 12       ; 2 uses
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %.not15 = icmp eq i32 %i.l, 0
  br i1 %.not15, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.m, ptr %i.k, align 4
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  tail call void @nf_unregister_net_hooks(ptr noundef %0, ptr noundef nonnull @ipv6_conntrack_ops, i32 noundef 4) #9
  tail call void @nf_defrag_ipv6_disable(ptr noundef %0) #9
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.o = load ptr, ptr @nf_ct_bridge_info, align 8 ; 5 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr i8, ptr %i.f, i64 16       ; 2 uses
  %i.q = load i32, ptr %i.p, align 8              ; 2 uses
  %.not14 = icmp eq i32 %i.q, 0
  br i1 %.not14, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = add i32 %i.q, -1                         ; 2 uses
  store i32 %i.r, ptr %i.p, align 8
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.t = load ptr, ptr %i.o, align 8
end_hunk_0
