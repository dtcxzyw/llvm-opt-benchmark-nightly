Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/virtio_net?download=true
inline.NumInlined: 1094
inline.NumDeleted: 366
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 22
begin_hunk_0_@virtnet_set_hashflow:bb.a
bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.m, %bb.b, %bb.a, %bb.q
  %.040 = phi i32 [ -22, %bb.a ], [ -22, %bb.b ], [ 0, %bb.q ], [ -22, %bb.m ], [ -22, %bb.p ]
  ret i32 %.040
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define internal void @virtnet_get_channels(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((12, 36)) %1) #19 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2670
  %i.b = load i16, ptr %i.a, align 2
  %i.c = zext i16 %i.b to i32
  %i.d = getelementptr i8, ptr %1, i64 32
  store i32 %i.c, ptr %i.d, align 4
  %i.e = getelementptr i8, ptr %0, i64 2668
  %i.f = load i16, ptr %i.e, align 4
  %i.g = zext i16 %i.f to i32
  %i.h = getelementptr i8, ptr %1, i64 16
  store i32 %i.g, ptr %i.h, align 4
  %i.i = getelementptr i8, ptr %1, i64 12
  store i32 0, ptr %i.i, align 4
  %i.j = getelementptr i8, ptr %1, i64 20
  store i32 0, ptr %i.j, align 4
  %i.k = getelementptr i8, ptr %1, i64 24
  store i32 0, ptr %i.k, align 4
  %i.l = getelementptr i8, ptr %1, i64 28
  store i32 0, ptr %i.l, align 4
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -22, 1) i32 @virtnet_set_channels(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2624       ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 32
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = trunc i32 %i.c to i16
  %i.e = getelementptr i8, ptr %1, i64 20
  %i.f = load i32, ptr %i.e, align 4
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %1, i64 24
  %i.h = load i32, ptr %i.g, align 4
  %.not21 = icmp eq i32 %i.h, 0
  br i1 %.not21, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %1, i64 28
  %i.j = load i32, ptr %i.i, align 4
  %.not22 = icmp eq i32 %i.j, 0
  br i1 %.not22, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.k = and i32 %i.c, 65535                      ; 3 uses
  %i.l = getelementptr i8, ptr %0, i64 2668
  %i.m = load i16, ptr %i.l, align 4
  %i.n = zext i16 %i.m to i32
  %i.o = add nsw i32 %i.k, -1
  %or.cond.not = icmp ult i32 %i.o, %i.n
  br i1 %or.cond.not, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %0, i64 2656
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 520
  %i.s = load ptr, ptr %i.r, align 8
  %.not23 = icmp eq ptr %i.s, null
  br i1 %.not23, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  tail call void @cpus_read_lock() #24
  %i.t = tail call fastcc i32 @virtnet_set_queues(ptr noundef %i.a, i16 noundef zeroext %i.d) #25, !srcloc !226 ; 2 uses
  %.not24 = icmp eq i32 %i.t, 0
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @cpus_read_unlock() #24
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call fastcc void @virtnet_set_affinity(ptr noundef %i.a) #25, !srcloc !227
  tail call void @cpus_read_unlock() #24
  %i.u = tail call i32 @netif_set_real_num_tx_queues(ptr noundef %0, i32 noundef %i.k) #24 ; 0 uses
  %i.v = tail call i32 @netif_set_real_num_rx_queues(ptr noundef %0, i32 noundef %i.k) #24 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e, %bb.d, %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ -22, %bb.e ], [ -22, %bb.a ], [ -22, %bb.d ], [ -22, %bb.c ], [ -22, %bb.b ], [ 0, %bb.h ], [ %i.t, %bb.g ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -22, 1) i32 @virtnet_get_per_queue_coalesce(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2668
  %i.b = load i16, ptr %i.a, align 4
  %i.c = zext i16 %i.b to i32
  %.not = icmp ult i32 %1, %i.c
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 2624
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 824
  %i.g = load i64, ptr %i.f, align 8
  %i.h = and i64 %i.g, 4503599627370496
  %.not29 = icmp eq i64 %i.h, 0
  br i1 %.not29, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %0, i64 2656       ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = zext nneg i32 %1 to i64                  ; 7 uses
  %i.l = getelementptr [1728 x i8], ptr %i.j, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 600
  tail call void @mutex_lock(ptr noundef %i.m) #24
  %i.n = load ptr, ptr %i.i, align 8
  %i.o = getelementptr [1728 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr i8, ptr %i.o, i64 752
  %i.q = load i32, ptr %i.p, align 4
  %i.r = getelementptr i8, ptr %2, i64 4
  store i32 %i.q, ptr %i.r, align 4
  %i.s = getelementptr i8, ptr %0, i64 2648       ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr [1240 x i8], ptr %i.t, i64 %i.k
  %i.v = getelementptr i8, ptr %i.u, i64 700
  %i.w = load i32, ptr %i.v, align 4
  %i.x = getelementptr i8, ptr %2, i64 20
  store i32 %i.w, ptr %i.x, align 4
  %i.y = load ptr, ptr %i.s, align 8
  %i.z = getelementptr [1240 x i8], ptr %i.y, i64 %i.k
  %i.aa = getelementptr i8, ptr %i.z, i64 696
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = getelementptr i8, ptr %2, i64 24
  store i32 %i.ab, ptr %i.ac, align 4
  %i.ad = load ptr, ptr %i.i, align 8
  %i.ae = getelementptr [1728 x i8], ptr %i.ad, i64 %i.k
  %i.af = getelementptr i8, ptr %i.ae, i64 748
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = getelementptr i8, ptr %2, i64 8
  store i32 %i.ag, ptr %i.ah, align 4
  %i.ai = load ptr, ptr %i.i, align 8
  %i.aj = getelementptr [1728 x i8], ptr %i.ai, i64 %i.k
  %i.ak = getelementptr i8, ptr %i.aj, i64 594
  %i.al = load i8, ptr %i.ak, align 2, !range !19, !noundef !20
  %i.am = zext nneg i8 %i.al to i32
  %i.an = getelementptr i8, ptr %2, i64 40
  store i32 %i.am, ptr %i.an, align 4
  %i.ao = load ptr, ptr %i.i, align 8
  %i.ap = getelementptr [1728 x i8], ptr %i.ao, i64 %i.k
  %i.aq = getelementptr i8, ptr %i.ap, i64 600
  tail call void @mutex_unlock(ptr noundef %i.aq) #24
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.ar = getelementptr i8, ptr %2, i64 8
  store i32 1, ptr %i.ar, align 4
  %i.as = getelementptr i8, ptr %0, i64 2648
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = zext nneg i32 %1 to i64
  %i.av = getelementptr [1240 x i8], ptr %i.at, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 728
  %i.ax = load i32, ptr %i.aw, align 8
  %.not28 = icmp eq i32 %i.ax, 0
  br i1 %.not28, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = getelementptr i8, ptr %2, i64 24
  store i32 1, ptr %i.ay, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.a
  %.0 = phi i32 [ -22, %bb.a ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -95, 1) i32 @virtnet_set_per_queue_coalesce(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2624       ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 2668
  %i.c = load i16, ptr %i.b, align 4
  %i.d = zext i16 %i.c to i32
  %.not = icmp ult i32 %1, %i.d
  br i1 %.not, label %bb.b, label %virtnet_should_update_vq_weight.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %2, i64 24         ; 2 uses
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %.not23 = icmp eq i32 %i.f, 0
  %i.g = select i1 %.not23, i32 0, i32 64         ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 2648       ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = zext nneg i32 %1 to i64                  ; 5 uses
  %i.k = getelementptr [1240 x i8], ptr %i.i, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 728
  %i.m = load i32, ptr %i.l, align 8
  %.not.i.not = icmp eq i32 %i.g, %i.m            ; 3 uses
  br i1 %.not.i.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %0, i64 176
  %i.o = load i32, ptr %i.n, align 16
  %i.p = and i32 %i.o, 1
  %.not4.i = icmp eq i32 %i.p, 0
  br i1 %.not4.i, label %bb.d, label %virtnet_should_update_vq_weight.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = load ptr, ptr %i.a, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 824
  %i.s = load i64, ptr %i.r, align 8
  %i.t = and i64 %i.s, 4503599627370496
  %.not41 = icmp eq i64 %i.t, 0
  br i1 %.not41, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = trunc nuw i32 %1 to i16                  ; 2 uses
  %i.v = getelementptr i8, ptr %2, i64 40
  %i.w = load i32, ptr %i.v, align 4
  %.not.i.i = icmp eq i32 %i.w, 0
  %i.x = getelementptr i8, ptr %0, i64 2656       ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr [1728 x i8], ptr %i.y, i64 %i.j
  %i.aa = getelementptr i8, ptr %i.z, i64 600
  tail call void @mutex_lock(ptr noundef %i.aa) #24
  %i.ab = load ptr, ptr %i.x, align 8
  %i.ac = getelementptr [1728 x i8], ptr %i.ab, i64 %i.j ; 4 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 594    ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 2, !range !19, !noundef !20
  %i.af = trunc nuw i8 %i.ae to i1                ; 2 uses
  %i.ag = getelementptr i8, ptr %i.ac, i64 748
  %i.ah = load i32, ptr %i.ag, align 4
  br i1 %.not.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr i8, ptr %i.ac, i64 752
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = getelementptr i8, ptr %2, i64 4
  %i.al = load i32, ptr %i.ak, align 4
  %.not37.i.i = icmp eq i32 %i.al, %i.aj
  br i1 %.not37.i.i, label %bb.g, label %virtnet_send_rx_notf_coal_vq_cmds.exit.thread.i

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr i8, ptr %2, i64 8
  %i.an = load i32, ptr %i.am, align 4
  %.not38.i.i = icmp eq i32 %i.an, %i.ah
  br i1 %.not38.i.i, label %bb.h, label %virtnet_send_rx_notf_coal_vq_cmds.exit.thread.i

bb.h:                                             ; preds = %bb.g
  br i1 %i.af, label %.thread40.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.ad, align 2
  br label %virtnet_send_rx_notf_coal_vq_cmds.exit.i

bb.j:                                             ; preds = %bb.e
  br i1 %i.af, label %bb.k, label %.thread40.i.i

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %i.ad, align 2
  br label %.thread40.i.i

.thread40.i.i:                                    ; preds = %bb.k, %bb.j, %bb.h
  %i.ao = getelementptr i8, ptr %2, i64 4
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = getelementptr i8, ptr %2, i64 8
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = tail call fastcc i32 @virtnet_send_rx_ctrl_coal_vq_cmd(ptr noundef %i.a, i16 noundef zeroext range(i16 0, -1) %i.u, i32 noundef %i.ap, i32 noundef %i.ar) #25, !srcloc !228
  br label %virtnet_send_rx_notf_coal_vq_cmds.exit.i

virtnet_send_rx_notf_coal_vq_cmds.exit.thread.i:  ; preds = %bb.g, %bb.f
  %i.at = getelementptr i8, ptr %i.ac, i64 600
  tail call void @mutex_unlock(ptr noundef %i.at) #24
  br label %virtnet_should_update_vq_weight.exit

virtnet_send_rx_notf_coal_vq_cmds.exit.i:         ; preds = %.thread40.i.i, %bb.i
  %.0.ph.i.i = phi i32 [ %i.as, %.thread40.i.i ], [ 0, %bb.i ] ; 2 uses
  %i.au = load ptr, ptr %i.x, align 8
  %i.av = getelementptr [1728 x i8], ptr %i.au, i64 %i.j
  %i.aw = getelementptr i8, ptr %i.av, i64 600
  tail call void @mutex_unlock(ptr noundef %i.aw) #24
  %.not.i27 = icmp eq i32 %.0.ph.i.i, 0
  br i1 %.not.i27, label %virtnet_send_notf_coal_vq_cmds.exit, label %virtnet_should_update_vq_weight.exit

bb.l:                                             ; preds = %bb.d
  %i.ax = getelementptr i8, ptr %2, i64 4
  %i.ay = load i32, ptr %i.ax, align 4
  %.not.i28 = icmp eq i32 %i.ay, 0
  br i1 %.not.i28, label %bb.m, label %virtnet_should_update_vq_weight.exit

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr i8, ptr %2, i64 20
  %i.ba = load i32, ptr %i.az, align 4
  %.not4.i30 = icmp eq i32 %i.ba, 0
  br i1 %.not4.i30, label %bb.n, label %virtnet_should_update_vq_weight.exit

bb.n:                                             ; preds = %bb.m
  %i.bb = icmp ugt i32 %i.f, 1
  br i1 %i.bb, label %virtnet_should_update_vq_weight.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr i8, ptr %2, i64 8
  %i.bd = load i32, ptr %i.bc, align 4
  %.not5.i = icmp ne i32 %i.bd, 1                 ; 2 uses
  %brmerge = or i1 %.not.i.not, %.not5.i
  %.mux = select i1 %.not5.i, i32 -22, i32 0
  br i1 %brmerge, label %virtnet_should_update_vq_weight.exit, label %bb.p

virtnet_send_notf_coal_vq_cmds.exit:              ; preds = %virtnet_send_rx_notf_coal_vq_cmds.exit.i
  %i.be = getelementptr i8, ptr %2, i64 20
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = load i32, ptr %i.e, align 4
  %i.bh = tail call fastcc i32 @virtnet_send_tx_ctrl_coal_vq_cmd(ptr noundef %i.a, i16 noundef zeroext range(i16 0, -1) %i.u, i32 noundef %i.bf, i32 noundef %i.bg) #25, !srcloc !229 ; 2 uses
  %.not25 = icmp ne i32 %i.bh, 0
  %brmerge42 = or i1 %.not.i.not, %.not25
  br i1 %brmerge42, label %virtnet_should_update_vq_weight.exit, label %virtnet_send_notf_coal_vq_cmds.exit._crit_edge

virtnet_send_notf_coal_vq_cmds.exit._crit_edge:   ; preds = %virtnet_send_notf_coal_vq_cmds.exit
  %.pre = load ptr, ptr %i.h, align 8
  br label %bb.p

bb.p:                                             ; preds = %virtnet_send_notf_coal_vq_cmds.exit._crit_edge, %bb.o
  %i.bi = phi ptr [ %.pre, %virtnet_send_notf_coal_vq_cmds.exit._crit_edge ], [ %i.i, %bb.o ]
  %i.bj = getelementptr [1240 x i8], ptr %i.bi, i64 %i.j
  %i.bk = getelementptr i8, ptr %i.bj, i64 728
  store i32 %i.g, ptr %i.bk, align 8
  br label %virtnet_should_update_vq_weight.exit

virtnet_should_update_vq_weight.exit:             ; preds = %virtnet_send_notf_coal_vq_cmds.exit, %bb.o, %bb.m, %bb.l, %bb.n, %virtnet_send_rx_notf_coal_vq_cmds.exit.i, %virtnet_send_rx_notf_coal_vq_cmds.exit.thread.i, %bb.c, %bb.p, %bb.a
  %.020 = phi i32 [ %i.bh, %virtnet_send_notf_coal_vq_cmds.exit ], [ -22, %bb.a ], [ -22, %virtnet_send_rx_notf_coal_vq_cmds.exit.thread.i ], [ 0, %bb.p ], [ -16, %bb.c ], [ %.mux, %bb.o ], [ -95, %bb.m ], [ -95, %bb.l ], [ -22, %bb.n ], [ %.0.ph.i.i, %virtnet_send_rx_notf_coal_vq_cmds.exit.i ]
  ret i32 %.020
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define internal noundef i32 @virtnet_get_link_ksettings(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((4, 10)) %1) #19 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2852
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr i8, ptr %1, i64 4
  store i32 %i.b, ptr %i.c, align 4
  %i.d = getelementptr i8, ptr %0, i64 2848
  %i.e = load i8, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %1, i64 8
  store i8 %i.e, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %1, i64 9
  store i8 -1, ptr %i.g, align 1
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @virtnet_set_link_ksettings(ptr noundef %0, ptr noundef %1) #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2852
  %i.b = getelementptr i8, ptr %0, i64 2848
  %i.c = tail call i32 @ethtool_virtdev_set_link_ksettings(ptr noundef %0, ptr noundef %1, ptr noundef %i.a, ptr noundef %i.b) #24
  ret i32 %i.c
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @sized_strscpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -95, 1) i32 @virtnet_send_tx_ctrl_coal_vq_cmd(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, i32 noundef %3) unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.scatterlist, align 8        ; 6 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 824
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, 4503599627370496
  %.not16 = icmp eq i64 %i.d, 0
  br i1 %.not16, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 32), align 16
  %i.f = tail call noalias align 8 dereferenceable_or_null(12) ptr @__kmalloc_cache_noprof(ptr noundef %i.e, i32 noundef range(i32 2304, 3584) 3520, i64 noundef range(i64 -140735340871680, 140735340806146) 12) #30 ; 7 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %virtnet_send_ctrl_coal_vq_cmd.exit.thread, label %bb.c

virtnet_send_ctrl_coal_vq_cmd.exit.thread:        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = shl i16 %1, 1
  %i.h = or disjoint i16 %i.g, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false), !annotation !24
  store i16 %i.h, ptr %i.f, align 8
  %i.i = getelementptr i8, ptr %i.f, i64 8
  store i32 %2, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %i.f, i64 4
  store i32 %3, ptr %i.j, align 4
  call void @sg_init_one(ptr noundef nonnull %4, ptr noundef nonnull %i.f, i32 noundef 12) #24
  %i.k = call fastcc zeroext i1 @virtnet_send_command_reply(ptr noundef %0, i8 noundef zeroext 6, i8 noundef zeroext 2, ptr noundef nonnull %4, ptr noundef null) #25, !srcloc !26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.l = icmp ugt ptr %i.f, inttoptr (i64 -4096 to ptr)
  br i1 %i.l, label %virtnet_send_ctrl_coal_vq_cmd.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @kfree(ptr noundef nonnull %i.f) #24
  br label %virtnet_send_ctrl_coal_vq_cmd.exit

virtnet_send_ctrl_coal_vq_cmd.exit:               ; preds = %bb.c, %bb.d
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %virtnet_send_ctrl_coal_vq_cmd.exit
  %i.m = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = zext i16 %1 to i64                       ; 2 uses
  %i.p = getelementptr [1240 x i8], ptr %i.n, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 700
  store i32 %2, ptr %i.q, align 4
  %i.r = load ptr, ptr %i.m, align 8
  %i.s = getelementptr [1240 x i8], ptr %i.r, i64 %i.o
  %i.t = getelementptr i8, ptr %i.s, i64 696
  store i32 %3, ptr %i.t, align 8
  br label %bb.f

bb.f:                                             ; preds = %virtnet_send_ctrl_coal_vq_cmd.exit.thread, %virtnet_send_ctrl_coal_vq_cmd.exit, %bb.a, %bb.e
  %.0 = phi i32 [ -95, %bb.a ], [ 0, %bb.e ], [ -22, %virtnet_send_ctrl_coal_vq_cmd.exit ], [ -12, %virtnet_send_ctrl_coal_vq_cmd.exit.thread ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -95, 1) i32 @virtnet_send_rx_ctrl_coal_vq_cmd(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, i32 noundef %3) unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.scatterlist, align 8        ; 6 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 824
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, 4503599627370496
  %.not16 = icmp eq i64 %i.d, 0
  br i1 %.not16, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 32), align 16
  %i.f = tail call noalias align 8 dereferenceable_or_null(12) ptr @__kmalloc_cache_noprof(ptr noundef %i.e, i32 noundef range(i32 2304, 3584) 3520, i64 noundef range(i64 -140735340871680, 140735340806146) 12) #30 ; 7 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %virtnet_send_ctrl_coal_vq_cmd.exit.thread, label %bb.c

virtnet_send_ctrl_coal_vq_cmd.exit.thread:        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = shl i16 %1, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false), !annotation !24
  store i16 %i.g, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.f, i64 8
  store i32 %2, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %i.f, i64 4
  store i32 %3, ptr %i.i, align 4
  call void @sg_init_one(ptr noundef nonnull %4, ptr noundef nonnull %i.f, i32 noundef 12) #24
  %i.j = call fastcc zeroext i1 @virtnet_send_command_reply(ptr noundef %0, i8 noundef zeroext 6, i8 noundef zeroext 2, ptr noundef nonnull %4, ptr noundef null) #25, !srcloc !26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.k = icmp ugt ptr %i.f, inttoptr (i64 -4096 to ptr)
  br i1 %i.k, label %virtnet_send_ctrl_coal_vq_cmd.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @kfree(ptr noundef nonnull %i.f) #24
  br label %virtnet_send_ctrl_coal_vq_cmd.exit

virtnet_send_ctrl_coal_vq_cmd.exit:               ; preds = %bb.c, %bb.d
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %virtnet_send_ctrl_coal_vq_cmd.exit
  %i.l = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = zext i16 %1 to i64                       ; 2 uses
  %i.o = getelementptr [1728 x i8], ptr %i.m, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 752
  store i32 %2, ptr %i.p, align 4
end_hunk_0
