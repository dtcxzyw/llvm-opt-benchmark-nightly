Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vhost_net?download=true
inline.NumInlined: 51
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@vhost_net_init:bb.a
  %i.by = call zeroext i1 @qemu_has_vnet_hdr(ptr noundef %i.bx) #11
  br i1 %i.by, label %vhost_net_ack_features_ex.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.t, %bb.s
  %.sink.i = phi i64 [ %i.bw, %bb.s ], [ 134217728, %bb.t ]
  store i64 %.sink.i, ptr %i.br, align 8
  br label %vhost_net_ack_features_ex.exit

vhost_net_ack_features_ex.exit:                   ; preds = %bb.t, %.sink.split.i
  %i.bz = load ptr, ptr %i.p, align 8
  call void @vhost_ack_features_ex(ptr noundef nonnull %i.e, ptr noundef %i.bz, ptr noundef nonnull %i.a) #11
  br label %bb.v

bb.u:                                             ; preds = %vhost_net_get_fd.exit.thread, %vhost_net_get_fd.exit, %bb.q, %bb.n, %bb.h, %bb.b
  call void @vhost_dev_cleanup(ptr noundef %i.e) #11
  call void @g_free(ptr noundef %i.e) #11
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %vhost_net_ack_features_ex.exit
  %.0 = phi ptr [ null, %bb.u ], [ %i.e, %vhost_net_ack_features_ex.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.0
}

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @vhost_dev_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @error_report_err(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @qemu_has_vnet_hdr_len(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @vhost_dev_cleanup(ptr noundef) local_unnamed_addr #1

declare void @g_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -2147483648, 1) i32 @vhost_net_start(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.vhost_vring_file, align 8   ; 15 uses
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #11
  %i.b = tail call ptr @qdev_get_parent_bus(ptr noundef %i.a) #11
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 320, ptr noundef nonnull @__func__.BUS) #11 ; 2 uses
  %i.d = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.c, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 37, ptr noundef nonnull @__func__.VIRTIO_BUS) #11
  %i.e = tail call ptr @object_get_class(ptr noundef %i.d) #11
  %i.f = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.e, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 37, ptr noundef nonnull @__func__.VIRTIO_BUS_GET_CLASS) #11
  %i.g = shl i32 %2, 1                            ; 2 uses
  %i.h = add i32 %i.g, %3                         ; 2 uses
  %i.i = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 27, ptr noundef nonnull @__func__.VIRTIO_NET) #11 ; 2 uses
  %i.j = add i32 %3, %2                           ; 8 uses
  %.not = icmp ne i32 %3, 0
  %i.k = zext i1 %.not to i32
  %spec.select = or disjoint i32 %i.g, %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 232 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8
  %.not87 = icmp eq ptr %i.m, null
  br i1 %.not87, label %bb.b, label %.preheader115

.preheader115:                                    ; preds = %bb.a
  %i.n = icmp sgt i32 %i.j, 0                     ; 2 uses
  br i1 %i.n, label %.lr.ph, label %._crit_edge.thread.i.critedge

.lr.ph:                                           ; preds = %.preheader115
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8988
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 481
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.3) #11
  br label %.loopexit111

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.073128 = phi i32 [ 0, %.lr.ph ], [ %i.ae, %bb.f ] ; 4 uses
  %i.q = icmp slt i32 %.073128, %2
  br i1 %i.q, label %get_vhost_net.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load i16, ptr %i.o, align 4
  %i.s = zext i16 %i.r to i32
  br label %get_vhost_net.exit

get_vhost_net.exit:                               ; preds = %bb.c, %bb.d
  %.sink = phi i32 [ %i.s, %bb.d ], [ %.073128, %bb.c ]
  %i.t = tail call ptr @qemu_get_peer(ptr noundef %1, i32 noundef %.sink) #11 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 200
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !9, !noundef !9
  %i.x = tail call ptr %i.w(ptr noundef nonnull %i.t) #11, !inline_history !7 ; 3 uses
  %i.y = shl nuw i32 %.073128, 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 444
  store i32 %i.y, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 448
  store i32 %spec.select, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 952
  %i.ac = load i8, ptr %i.ab, align 8, !range !8, !noundef !9
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %get_vhost_net.exit
  store i8 0, ptr %i.p, align 1
  br label %bb.f

bb.f:                                             ; preds = %get_vhost_net.exit, %bb.e
  %i.ae = add nuw nsw i32 %.073128, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ae, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.f
  %i.af = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 27, ptr noundef nonnull @__func__.VIRTIO_NET) #11
  %i.ag = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #11
  %i.ah = tail call ptr @qdev_get_parent_bus(ptr noundef %i.ag) #11
  %i.ai = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.ah, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 320, ptr noundef nonnull @__func__.BUS) #11
  br label %.lr.ph.i

._crit_edge.thread.i.critedge:                    ; preds = %.preheader115
  %i.aj = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 27, ptr noundef nonnull @__func__.VIRTIO_NET) #11 ; 0 uses
  %i.ak = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #11
  %i.al = tail call ptr @qdev_get_parent_bus(ptr noundef %i.ak) #11
  %i.am = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.al, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 320, ptr noundef nonnull @__func__.BUS) #11 ; 0 uses
  tail call void @memory_region_transaction_begin() #11
  br label %.loopexit114

.lr.ph.i:                                         ; preds = %._crit_edge, %bb.h
  %.05162.i = phi i32 [ %i.aq, %bb.h ], [ 0, %._crit_edge ] ; 4 uses
  %i.an = tail call i32 @virtio_device_grab_ioeventfd(ptr noundef %0) #11 ; 3 uses
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.24, i32 noundef %.05162.i) #11
  %.not77.i = icmp eq i32 %.05162.i, 0
  br i1 %.not77.i, label %.loopexit, label %.lr.ph76.i

.lr.ph76.i:                                       ; preds = %bb.g, %.lr.ph76.i
  %.04974.i = phi i32 [ %i.ap, %.lr.ph76.i ], [ 0, %bb.g ]
  tail call void @virtio_device_release_ioeventfd(ptr noundef %0) #11
  %i.ap = add nuw nsw i32 %.04974.i, 1            ; 2 uses
  %exitcond91.not.i = icmp eq i32 %i.ap, %.05162.i
  br i1 %exitcond91.not.i, label %.loopexit, label %.lr.ph76.i, !llvm.loop !12

bb.h:                                             ; preds = %.lr.ph.i
  %i.aq = add nuw nsw i32 %.05162.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.aq, %i.j
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !13

._crit_edge.i:                                    ; preds = %bb.h
  tail call void @memory_region_transaction_begin() #11
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 8988
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge65.i, %._crit_edge.i
  %.15266.i = phi i32 [ 0, %._crit_edge.i ], [ %i.bn, %._crit_edge65.i ] ; 6 uses
  %i.as = icmp slt i32 %.15266.i, %2
  br i1 %i.as, label %get_vhost_net.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = load i16, ptr %i.ar, align 4
  %i.au = zext i16 %i.at to i32
  br label %get_vhost_net.exit.i

get_vhost_net.exit.i:                             ; preds = %bb.j, %bb.i
  %.sink.i = phi i32 [ %i.au, %bb.j ], [ %.15266.i, %bb.i ]
  %i.av = tail call ptr @qemu_get_peer(ptr noundef %1, i32 noundef %.sink.i) #11 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 200
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !9, !noundef !9
  %i.az = tail call ptr %i.ay(ptr noundef nonnull %i.av) #11, !inline_history !14 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 440 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8
  %.not.i89 = icmp eq i32 %i.bb, 0
  br i1 %.not.i89, label %._crit_edge65.i, label %.lr.ph64.i

.lr.ph64.i:                                       ; preds = %get_vhost_net.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 444
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %.lr.ph64.i
  %.05063.i = phi i32 [ 0, %.lr.ph64.i ], [ %i.bk, %bb.m ] ; 4 uses
  %i.bd = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.ai, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 37, ptr noundef nonnull @__func__.VIRTIO_BUS) #11
  %i.be = load i32, ptr %i.bc, align 4
  %i.bf = add i32 %i.be, %.05063.i
  %i.bg = tail call i32 @virtio_bus_set_host_notifier(ptr noundef %i.bd, i32 noundef %i.bf, i1 noundef zeroext true) #11 ; 4 uses
  %i.bh = icmp slt i32 %i.bg, 0
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bi = sub i32 0, %i.bg
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.25, i32 noundef %.15266.i, i32 noundef %.05063.i, i32 noundef %i.bi) #11
  tail call void @memory_region_transaction_commit() #11
  tail call void @vhost_dev_disable_notifiers_nvqs(ptr noundef nonnull %i.az, ptr noundef %0, i32 noundef %.05063.i) #11
  tail call fastcc void @vhost_net_disable_notifiers_nvhosts(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %.15266.i)
  %.170.i = add nuw nsw i32 %.15266.i, 1          ; 2 uses
  %i.bj = icmp slt i32 %.170.i, %i.j
  br i1 %i.bj, label %.lr.ph73.i, label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.bk = add nuw i32 %.05063.i, 1                ; 2 uses
  %i.bl = load i32, ptr %i.ba, align 8
  %i.bm = icmp ult i32 %i.bk, %i.bl
  br i1 %i.bm, label %bb.k, label %._crit_edge65.i, !llvm.loop !15

._crit_edge65.i:                                  ; preds = %bb.m, %get_vhost_net.exit.i
  %i.bn = add nuw nsw i32 %.15266.i, 1            ; 2 uses
  %exitcond87.not.i = icmp eq i32 %i.bn, %i.j
  br i1 %exitcond87.not.i, label %.loopexit114, label %bb.i, !llvm.loop !16

.lr.ph73.i:                                       ; preds = %bb.l, %.lr.ph73.i
  %.171.i = phi i32 [ %.1.i, %.lr.ph73.i ], [ %.170.i, %bb.l ]
  tail call void @virtio_device_release_ioeventfd(ptr noundef %0) #11
  %.1.i = add nuw nsw i32 %.171.i, 1              ; 2 uses
  %exitcond88.not.i = icmp eq i32 %.1.i, %i.j
  br i1 %exitcond88.not.i, label %.loopexit, label %.lr.ph73.i, !llvm.loop !17

.loopexit:                                        ; preds = %.lr.ph73.i, %.lr.ph76.i, %bb.g, %bb.l
  %.053.i.ph = phi i32 [ %i.an, %.lr.ph76.i ], [ %i.an, %bb.g ], [ %i.bg, %bb.l ], [ %i.bg, %.lr.ph73.i ] ; 2 uses
  %i.bo = sub i32 0, %.053.i.ph
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.4, i32 noundef %i.bo) #11
  br label %.loopexit111

.loopexit114:                                     ; preds = %._crit_edge65.i, %._crit_edge.thread.i.critedge
  tail call void @memory_region_transaction_commit() #11
  %i.bp = load ptr, ptr %i.l, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call i32 %i.bp(ptr noundef %i.br, i32 noundef %i.h, i1 noundef zeroext true) #11 ; 3 uses
  %i.bt = icmp slt i32 %i.bs, 0
  br i1 %i.bt, label %bb.n, label %.preheader

.preheader:                                       ; preds = %.loopexit114
  br i1 %i.n, label %.lr.ph131, label %.loopexit111

.lr.ph131:                                        ; preds = %.preheader
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 8988 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  br label %bb.o

bb.n:                                             ; preds = %.loopexit114
  %i.bw = sub i32 0, %i.bs
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.5, i32 noundef %i.bw) #11
  br label %bb.aq

bb.o:                                             ; preds = %.lr.ph131, %bb.ak
  %.174129 = phi i32 [ 0, %.lr.ph131 ], [ %i.fc, %bb.ak ] ; 5 uses
  %i.bx = icmp slt i32 %.174129, %2
  br i1 %i.bx, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = load i16, ptr %i.bu, align 4
  %i.bz = zext i16 %i.by to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.sink192 = phi i32 [ %i.bz, %bb.p ], [ %.174129, %bb.o ]
  %i.ca = call ptr @qemu_get_peer(ptr noundef %1, i32 noundef %.sink192) #11 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 344 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8            ; 3 uses
  %.not88 = icmp eq i32 %i.cc, 0
  %.pre149 = load ptr, ptr %i.ca, align 8         ; 3 uses
  br i1 %.not88, label %vhost_net_set_vring_enable.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %.pre149, i64 200
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %.not7.i.i = icmp eq ptr %i.ce, null
  br i1 %.not7.i.i, label %get_vhost_net.exit.i90, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = call ptr %i.ce(ptr noundef nonnull %i.ca) #11, !inline_history !24
  %.pre.i = load ptr, ptr %i.ca, align 8
  br label %get_vhost_net.exit.i90

get_vhost_net.exit.i90:                           ; preds = %bb.s, %bb.r
  %i.cg = phi ptr [ %.pre.i, %bb.s ], [ %.pre149, %bb.r ] ; 3 uses
  %.0.i.i = phi ptr [ %i.cf, %bb.s ], [ null, %bb.r ] ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8
  %i.ci = icmp eq i32 %i.ch, 13
  br i1 %i.ci, label %vhost_net_set_vring_enable.exit.thread, label %bb.t

bb.t:                                             ; preds = %get_vhost_net.exit.i90
  store i32 %i.cc, ptr %i.cb, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 528
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 264
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %.not.i6.i = icmp eq ptr %i.cm, null
  br i1 %.not.i6.i, label %vhost_net_set_vring_enable.exit.thread, label %vhost_net_set_vring_enable.exit

vhost_net_set_vring_enable.exit:                  ; preds = %bb.t
  %i.cn = call i32 %i.cm(ptr noundef nonnull %.0.i.i, i32 noundef %i.cc) #11, !inline_history !18 ; 2 uses
  %i.co = icmp slt i32 %i.cn, 0
  br i1 %i.co, label %.loopexit112, label %vhost_net_set_vring_enable.exit.vhost_net_set_vring_enable.exit.thread_crit_edge

vhost_net_set_vring_enable.exit.vhost_net_set_vring_enable.exit.thread_crit_edge: ; preds = %vhost_net_set_vring_enable.exit
  %.pre = load ptr, ptr %i.ca, align 8
  br label %vhost_net_set_vring_enable.exit.thread

vhost_net_set_vring_enable.exit.thread:           ; preds = %vhost_net_set_vring_enable.exit.vhost_net_set_vring_enable.exit.thread_crit_edge, %bb.t, %get_vhost_net.exit.i90, %bb.q
  %i.cp = phi ptr [ %.pre, %vhost_net_set_vring_enable.exit.vhost_net_set_vring_enable.exit.thread_crit_edge ], [ %i.cg, %bb.t ], [ %i.cg, %get_vhost_net.exit.i90 ], [ %.pre149, %bb.q ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 200
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !9, !noundef !9
  %i.cs = call ptr %i.cr(ptr noundef nonnull %i.ca) #11, !inline_history !7 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store i64 0, ptr %4, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 960 ; 6 uses
  %i.cu = load ptr, ptr %i.ct, align 8            ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.cx = load ptr, ptr %i.cw, align 8            ; 2 uses
  %.not.i96 = icmp eq ptr %i.cx, null
  br i1 %.not.i96, label %bb.v, label %bb.u

bb.u:                                             ; preds = %vhost_net_set_vring_enable.exit.thread
  %i.cy = call i32 %i.cx(ptr noundef nonnull %i.cu) #11, !inline_history !19 ; 2 uses
  %i.cz = icmp slt i32 %i.cy, 0
  br i1 %i.cz, label %vhost_net_start_one.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u, %vhost_net_set_vring_enable.exit.thread
  %i.da = call i32 @vhost_dev_start(ptr noundef nonnull %i.cs, ptr noundef %0, i1 noundef zeroext false) #11 ; 2 uses
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %vhost_net_start_one.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dc = load ptr, ptr %i.ct, align 8            ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8            ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 88
  %i.df = load ptr, ptr %i.de, align 8            ; 2 uses
  %.not43.i = icmp eq ptr %i.df, null
  br i1 %.not43.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void %i.df(ptr noundef nonnull %i.dc, i1 noundef zeroext false) #11, !inline_history !19
  %.pre.i97 = load ptr, ptr %i.ct, align 8
  %.pre52.i = load ptr, ptr %.pre.i97, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dg = phi ptr [ %.pre52.i, %bb.x ], [ %i.dd, %bb.w ]
  %i.dh = load i32, ptr %i.dg, align 8
  %i.di = icmp eq i32 %i.dh, 3
  br i1 %i.di, label %bb.z, label %.loopexit47.i

bb.z:                                             ; preds = %bb.y
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cs, i64 920 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8
  call void @qemu_set_fd_handler(i32 noundef %i.dk, ptr noundef null, ptr noundef null, ptr noundef null) #11
  %i.dl = load i32, ptr %i.dj, align 8
  store i32 %i.dl, ptr %i.bv, align 4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cs, i64 440 ; 2 uses
  store i32 0, ptr %4, align 8
  %i.dn = load i32, ptr %i.dm, align 8
  %.not51.i = icmp eq i32 %i.dn, 0
  br i1 %.not51.i, label %.loopexit47.i, label %.lr.ph.i99

.lr.ph.i99:                                       ; preds = %bb.z
  %i.do = getelementptr inbounds nuw i8, ptr %i.cs, i64 444
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ad, %.lr.ph.i99
  %storemerge48.i = phi i32 [ 0, %.lr.ph.i99 ], [ %i.dy, %bb.ad ]
  %i.dp = load i32, ptr %i.do, align 4
  %i.dq = add i32 %i.dp, %storemerge48.i
  %i.dr = call zeroext i1 @virtio_queue_enabled(ptr noundef %0, i32 noundef %i.dq) #11
  br i1 %i.dr, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.ds = call i32 @vhost_net_set_backend(ptr noundef nonnull %i.cs, ptr noundef nonnull %4) #11
  %i.dt = icmp slt i32 %i.ds, 0
  br i1 %i.dt, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.du = tail call ptr @__errno_location() #13
  %i.dv = load i32, ptr %i.du, align 4
  %i.dw = sub i32 0, %i.dv
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.dx = load i32, ptr %4, align 8
  %i.dy = add i32 %i.dx, 1                        ; 3 uses
  store i32 %i.dy, ptr %4, align 8
  %i.dz = load i32, ptr %i.dm, align 8
  %i.ea = icmp ult i32 %i.dy, %i.dz
  br i1 %i.ea, label %bb.aa, label %.loopexit47.i, !llvm.loop !20

.loopexit47.i:                                    ; preds = %bb.ad, %bb.z, %bb.y
  %i.eb = load ptr, ptr %i.ct, align 8            ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  %i.ee = load ptr, ptr %i.ed, align 8            ; 2 uses
  %.not44.i = icmp eq ptr %i.ee, null
  br i1 %.not44.i, label %vhost_net_start_one.exit.thread109, label %bb.ae

bb.ae:                                            ; preds = %.loopexit47.i
  %i.ef = call i32 %i.ee(ptr noundef nonnull %i.eb) #11, !inline_history !19 ; 2 uses
  %i.eg = icmp slt i32 %i.ef, 0
  br i1 %i.eg, label %bb.af, label %vhost_net_start_one.exit.thread109

bb.af:                                            ; preds = %bb.ae, %bb.ac
  %.0.i98 = phi i32 [ %i.dw, %bb.ac ], [ %i.ef, %bb.ae ] ; 2 uses
  store i32 -1, ptr %i.bv, align 4
  %i.eh = load ptr, ptr %i.ct, align 8            ; 3 uses
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = load i32, ptr %i.ei, align 8
  %i.ek = icmp eq i32 %i.ej, 3
  br i1 %i.ek, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %bb.af
  %i.el = load i32, ptr %4, align 8               ; 2 uses
  %i.em = add i32 %i.el, -1                       ; 2 uses
  store i32 %i.em, ptr %4, align 8
  %.not4549.i = icmp eq i32 %i.el, 0
  br i1 %.not4549.i, label %.loopexit.i, label %.lr.ph50.i

.lr.ph50.i:                                       ; preds = %.preheader.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.cs, i64 444
  br label %bb.ag

bb.ag:                                            ; preds = %.backedge.i, %.lr.ph50.i
  %i.eo = phi i32 [ %i.em, %.lr.ph50.i ], [ %i.et, %.backedge.i ]
  %i.ep = load i32, ptr %i.en, align 4
  %i.eq = add i32 %i.ep, %i.eo
  %i.er = call zeroext i1 @virtio_queue_enabled(ptr noundef %0, i32 noundef %i.eq) #11
  br i1 %i.er, label %bb.ah, label %.backedge.i

.backedge.i:                                      ; preds = %bb.ah, %bb.ag
  %i.es = load i32, ptr %4, align 8               ; 2 uses
  %i.et = add i32 %i.es, -1                       ; 2 uses
  store i32 %i.et, ptr %4, align 8
  %.not45.i = icmp eq i32 %i.es, 0
  br i1 %.not45.i, label %.loopexit.loopexit.i, label %bb.ag, !llvm.loop !21

bb.ah:                                            ; preds = %bb.ag
  %i.eu = call i32 @vhost_net_set_backend(ptr noundef nonnull %i.cs, ptr noundef nonnull %4) #11
  %i.ev = icmp sgt i32 %i.eu, -1
  br i1 %i.ev, label %.backedge.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.8, i32 noundef 381, ptr noundef nonnull @__PRETTY_FUNCTION__.vhost_net_start_one) #14
  unreachable

.loopexit.loopexit.i:                             ; preds = %.backedge.i
  %.pre53.i = load ptr, ptr %i.ct, align 8
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.preheader.i, %bb.af
  %i.ew = phi ptr [ %.pre53.i, %.loopexit.loopexit.i ], [ %i.eh, %.preheader.i ], [ %i.eh, %bb.af ] ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 88
  %i.ez = load ptr, ptr %i.ey, align 8            ; 2 uses
  %.not46.i = icmp eq ptr %i.ez, null
  br i1 %.not46.i, label %vhost_net_start_one.exit, label %bb.aj

bb.aj:                                            ; preds = %.loopexit.i
  call void %i.ez(ptr noundef nonnull %i.ew, i1 noundef zeroext true) #11, !inline_history !19
  br label %vhost_net_start_one.exit

vhost_net_start_one.exit.thread:                  ; preds = %bb.u, %bb.v
  %.034.i.ph = phi i32 [ %i.da, %bb.v ], [ %i.cy, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %.loopexit112

vhost_net_start_one.exit.thread109:               ; preds = %.loopexit47.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.ak

vhost_net_start_one.exit:                         ; preds = %.loopexit.i, %bb.aj
  %i.fa = call i32 @vhost_dev_stop(ptr noundef nonnull %i.cs, ptr noundef %0, i1 noundef zeroext false) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.fb = icmp slt i32 %.0.i98, 0
  br i1 %i.fb, label %.loopexit112, label %bb.ak

bb.ak:                                            ; preds = %vhost_net_start_one.exit.thread109, %vhost_net_start_one.exit
  %i.fc = add nuw nsw i32 %.174129, 1             ; 2 uses
  %exitcond148.not = icmp eq i32 %i.fc, %i.j
  br i1 %exitcond148.not, label %.loopexit111, label %bb.o, !llvm.loop !22

.loopexit112:                                     ; preds = %vhost_net_start_one.exit, %vhost_net_set_vring_enable.exit, %vhost_net_start_one.exit.thread
  %.075 = phi i32 [ %.034.i.ph, %vhost_net_start_one.exit.thread ], [ %.0.i98, %vhost_net_start_one.exit ], [ %i.cn, %vhost_net_set_vring_enable.exit ] ; 2 uses
  %.not177 = icmp eq i32 %.174129, 0
  br i1 %.not177, label %._crit_edge134, label %.lr.ph133

.lr.ph133:                                        ; preds = %.loopexit112
  %5 = add nsw i32 %.174129, -1
  br label %.lr.ph133.a

.lr.ph133.a:                                      ; preds = %.lr.ph133, %get_vhost_net.exit103
  %.in = phi i32 [ %5, %.lr.ph133 ], [ %7, %get_vhost_net.exit103 ] ; 3 uses
  %6 = icmp slt i32 %.in, %2
  br i1 %6, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph133.a
  %i.fd = load i16, ptr %i.bu, align 4
  %i.fe = zext i16 %i.fd to i32
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph133.a, %bb.al
  %i.ff = phi i32 [ %i.fe, %bb.al ], [ %.in, %.lr.ph133.a ]
  %i.fg = call ptr @qemu_get_peer(ptr noundef %1, i32 noundef %i.ff) #11 ; 3 uses
  %.not.i100 = icmp eq ptr %i.fg, null
  br i1 %.not.i100, label %get_vhost_net.exit103, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 200
  %i.fj = load ptr, ptr %i.fi, align 8            ; 2 uses
  %.not7.i101 = icmp eq ptr %i.fj, null
  br i1 %.not7.i101, label %get_vhost_net.exit103, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fk = call ptr %i.fj(ptr noundef nonnull %i.fg) #11, !inline_history !7
  br label %get_vhost_net.exit103

get_vhost_net.exit103:                            ; preds = %bb.am, %bb.an, %bb.ao
  %.0.i102 = phi ptr [ %i.fk, %bb.ao ], [ null, %bb.am ], [ null, %bb.an ]
  call fastcc void @vhost_net_stop_one(ptr noundef %.0.i102, ptr noundef %0)
  %7 = add i32 %.in, -1                           ; 2 uses
  %i.fl = icmp sgt i32 %7, -1
  br i1 %i.fl, label %.lr.ph133.a, label %._crit_edge134, !llvm.loop !23

._crit_edge134:                                   ; preds = %get_vhost_net.exit103, %.loopexit112
  %i.fm = load ptr, ptr %i.l, align 8
  %i.fn = load ptr, ptr %i.bq, align 8
  %i.fo = call i32 %i.fm(ptr noundef %i.fn, i32 noundef %i.h, i1 noundef zeroext false) #11 ; 2 uses
  %i.fp = icmp slt i32 %i.fo, 0
  br i1 %i.fp, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %._crit_edge134
  %i.fq = load ptr, ptr @stderr, align 8
  %i.fr = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.fq, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef %i.fo) #11 ; 0 uses
  %i.fs = load ptr, ptr @stderr, align 8
  %i.ft = call i32 @fflush(ptr noundef %i.fs)     ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge134, %bb.ap, %bb.n
  %.176 = phi i32 [ %i.bs, %bb.n ], [ %.075, %bb.ap ], [ %.075, %._crit_edge134 ]
  call fastcc void @vhost_net_disable_notifiers_nvhosts(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %i.j)
  br label %.loopexit111

.loopexit111:                                     ; preds = %bb.ak, %.preheader, %.loopexit, %bb.aq, %bb.b
  %.078 = phi i32 [ %.176, %bb.aq ], [ -38, %bb.b ], [ %.053.i.ph, %.loopexit ], [ 0, %.preheader ], [ 0, %bb.ak ]
  ret i32 %.078
}

declare ptr @qdev_get_parent_bus(ptr noundef) local_unnamed_addr #1

declare void @error_report(ptr noundef, ...) local_unnamed_addr #1

declare ptr @qemu_get_peer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @vhost_net_set_vring_enable(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.pre8 = load ptr, ptr %0, align 8              ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.pre8, i64 200
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not7.i = icmp eq ptr %i.b, null
  br i1 %.not7.i, label %get_vhost_net.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr %i.b(ptr noundef nonnull %0) #11, !inline_history !7
  %.pre = load ptr, ptr %0, align 8
  br label %get_vhost_net.exit

get_vhost_net.exit:                               ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %.pre, %bb.b ], [ %.pre8, %bb.a ]
  %.0.i = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, 13
  br i1 %i.f, label %vhost_dev_set_vring_enable.exit, label %bb.c

bb.c:                                             ; preds = %get_vhost_net.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i32 %1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i, i64 528
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 264
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not.i6 = icmp eq ptr %i.k, null
  br i1 %.not.i6, label %vhost_dev_set_vring_enable.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i32 %i.k(ptr noundef nonnull %.0.i, i32 noundef %1) #11, !inline_history !25
  br label %vhost_dev_set_vring_enable.exit

vhost_dev_set_vring_enable.exit:                  ; preds = %bb.d, %bb.c, %get_vhost_net.exit
  %.0 = phi i32 [ 0, %get_vhost_net.exit ], [ %i.l, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @vhost_net_stop_one(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.vhost_vring_file, align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store i64 -4294967296, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 3
  br i1 %i.e, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  store i32 0, ptr %2, align 8
  %i.g = load i32, ptr %i.f, align 8
  %.not13 = icmp eq i32 %i.g, 0
  br i1 %.not13, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %i.h = call i32 @vhost_net_set_backend(ptr noundef nonnull %0, ptr noundef nonnull %2) #11
  %i.i = icmp sgt i32 %i.h, -1
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 400, ptr noundef nonnull @__PRETTY_FUNCTION__.vhost_net_stop_one) #14
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.j = load i32, ptr %2, align 8
  %i.k = add i32 %i.j, 1                          ; 2 uses
  store i32 %i.k, ptr %2, align 8
  %i.l = load i32, ptr %i.f, align 8
  %i.m = icmp ult i32 %i.k, %i.l
  br i1 %i.m, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !26

.loopexit.loopexit:                               ; preds = %bb.c
  %.pre = load ptr, ptr %i.a, align 8             ; 2 uses
  %.pre14 = load ptr, ptr %.pre, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %bb.a
  %i.n = phi ptr [ %.pre14, %.loopexit.loopexit ], [ %i.c, %.preheader ], [ %i.c, %bb.a ]
  %i.o = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.b, %.preheader ], [ %i.b, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit
  call void %i.q(ptr noundef nonnull %i.o, i1 noundef zeroext true) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit
  %i.r = call i32 @vhost_dev_stop(ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext false) #11 ; 0 uses
  %i.s = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not12 = icmp eq ptr %i.v, null
  br i1 %.not12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void %i.v(ptr noundef nonnull %i.s) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @vhost_net_stop(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #11
  %i.b = tail call ptr @qdev_get_parent_bus(ptr noundef %i.a) #11
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 320, ptr noundef nonnull @__func__.BUS) #11 ; 2 uses
  %i.d = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.c, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 37, ptr noundef nonnull @__func__.VIRTIO_BUS) #11
  %i.e = tail call ptr @object_get_class(ptr noundef %i.d) #11
  %i.f = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.e, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 37, ptr noundef nonnull @__func__.VIRTIO_BUS_GET_CLASS) #11
  %i.g = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 27, ptr noundef nonnull @__func__.VIRTIO_NET) #11
  %i.h = shl i32 %2, 1
  %i.i = add i32 %i.h, %3
  %i.j = add i32 %3, %2                           ; 3 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8988
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %get_vhost_net.exit
  %.030 = phi i32 [ 0, %.lr.ph ], [ %i.u, %get_vhost_net.exit ] ; 3 uses
  %i.m = icmp slt i32 %.030, %2
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i16, ptr %i.l, align 4
  %i.o = zext i16 %i.n to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink = phi i32 [ %i.o, %bb.c ], [ %.030, %bb.b ]
  %i.p = tail call ptr @qemu_get_peer(ptr noundef %1, i32 noundef %.sink) #11 ; 3 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %get_vhost_net.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 200
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not7.i = icmp eq ptr %i.s, null
  br i1 %.not7.i, label %get_vhost_net.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = tail call ptr %i.s(ptr noundef nonnull %i.p) #11, !inline_history !7
  br label %get_vhost_net.exit

get_vhost_net.exit:                               ; preds = %bb.d, %bb.e, %bb.f
  %.0.i = phi ptr [ %i.t, %bb.f ], [ null, %bb.d ], [ null, %bb.e ]
  tail call fastcc void @vhost_net_stop_one(ptr noundef %.0.i, ptr noundef %0)
  %i.u = add nuw nsw i32 %.030, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.u, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !27
end_hunk_0
