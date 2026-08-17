inline.NumInlined: 51
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.vhost_vring_file = type { i32, i32 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [44 x i8] c"vhost-net requires net backend to be setup\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"vhost lacks VHOST_NET_F_VIRTIO_NET_HDR feature for backend\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"vhost lacks feature mask 0x%016lx%016lx for backend\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"binding does not support guest notifiers\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Error enabling host notifiers: %d\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Error binding guest notifier: %d\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"vhost guest notifier cleanup failed: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"r >= 0\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"../hw/net/vhost_net.c\00", align 1
@__PRETTY_FUNCTION__.vhost_net_stop = private unnamed_addr constant [64 x i8] c"void vhost_net_stop(VirtIODevice *, NetClientState *, int, int)\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"vhost_ops->backend_type == VHOST_BACKEND_TYPE_USER\00", align 1
@__PRETTY_FUNCTION__.vhost_net_notify_migration_done = private unnamed_addr constant [64 x i8] c"int vhost_net_notify_migration_done(struct vhost_net *, char *)\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"vhost_ops->vhost_migration_done\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"vhost_ops\00", align 1
@__PRETTY_FUNCTION__.vhost_net_virtqueue_reset = private unnamed_addr constant [70 x i8] c"void vhost_net_virtqueue_reset(VirtIODevice *, NetClientState *, int)\00", align 1
@__PRETTY_FUNCTION__.vhost_net_virtqueue_restart = private unnamed_addr constant [71 x i8] c"int vhost_net_virtqueue_restart(VirtIODevice *, NetClientState *, int)\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"Error when restarting the queue.\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"ret >= 0\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"vhost-net requires tap backend\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/qdev.h\00", align 1
@__func__.BUS = private unnamed_addr constant [4 x i8] c"BUS\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@__func__.DEVICE = private unnamed_addr constant [7 x i8] c"DEVICE\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"virtio-bus\00", align 1
@.str.21 = private unnamed_addr constant [57 x i8] c"/opt-bench/work/qemu/qemu/include/hw/virtio/virtio-bus.h\00", align 1
@__func__.VIRTIO_BUS = private unnamed_addr constant [11 x i8] c"VIRTIO_BUS\00", align 1
@__func__.VIRTIO_BUS_GET_CLASS = private unnamed_addr constant [21 x i8] c"VIRTIO_BUS_GET_CLASS\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"virtio-net-device\00", align 1
@.str.23 = private unnamed_addr constant [57 x i8] c"/opt-bench/work/qemu/qemu/include/hw/virtio/virtio-net.h\00", align 1
@__func__.VIRTIO_NET = private unnamed_addr constant [11 x i8] c"VIRTIO_NET\00", align 1
@.str.24 = private unnamed_addr constant [49 x i8] c"vhost %d binding does not support host notifiers\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"vhost %d VQ %d notifier binding failed: %d\00", align 1
@.str.26 = private unnamed_addr constant [43 x i8] c"vhost %d VQ %d notifier cleanup failed: %d\00", align 1
@__PRETTY_FUNCTION__.vhost_net_disable_notifiers_nvhosts = private unnamed_addr constant [85 x i8] c"void vhost_net_disable_notifiers_nvhosts(VirtIODevice *, NetClientState *, int, int)\00", align 1
@__PRETTY_FUNCTION__.vhost_net_start_one = private unnamed_addr constant [60 x i8] c"int vhost_net_start_one(struct vhost_net *, VirtIODevice *)\00", align 1
@__PRETTY_FUNCTION__.vhost_net_stop_one = private unnamed_addr constant [60 x i8] c"void vhost_net_stop_one(struct vhost_net *, VirtIODevice *)\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @vhost_net_get_features_ex(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @vhost_get_features_ex(ptr noundef %0, ptr noundef %i.b, ptr noundef %1) #11
  ret void
}

declare void @vhost_get_features_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @vhost_net_get_config(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @vhost_dev_get_config(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef null) #11
  ret i32 %i.a
}

declare i32 @vhost_dev_get_config(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @vhost_net_set_config(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @vhost_dev_set_config(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #11
  ret i32 %i.a
}

declare i32 @vhost_dev_set_config(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @vhost_net_ack_features_ex(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, i8 noundef 0, i64 noundef 16, i1 noundef false) #11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 456
  %.val = load i64, ptr %i.e, align 8
  %i.f = and i64 %.val, 1073741824
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call zeroext i1 @qemu_has_vnet_hdr(ptr noundef %i.h) #11
  br i1 %i.i, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ %i.f, %bb.b ], [ 134217728, %bb.c ]
  store i64 %.sink, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @vhost_ack_features_ex(ptr noundef nonnull %0, ptr noundef %i.k, ptr noundef %1) #11
  ret void
}

declare zeroext i1 @qemu_has_vnet_hdr(ptr noundef) local_unnamed_addr #1

declare void @vhost_ack_features_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local i64 @vhost_net_get_max_queues(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @vhost_net_get_acked_features_ex(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 472
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %1, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.a, i64 noundef 16, i1 noundef false) #11
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @vhost_net_save_acked_features(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %get_vhost_net.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not7.i = icmp eq ptr %i.c, null
  br i1 %.not7.i, label %get_vhost_net.exit.thread, label %get_vhost_net.exit

get_vhost_net.exit:                               ; preds = %bb.b
  %i.d = tail call ptr %i.c(ptr noundef nonnull %0) #11, !inline_history !7 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %get_vhost_net.exit.thread, label %bb.c

bb.c:                                             ; preds = %get_vhost_net.exit
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 944
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not6 = icmp eq ptr %i.f, null
  br i1 %.not6, label %get_vhost_net.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.f(ptr noundef nonnull %0) #11
  br label %get_vhost_net.exit.thread

get_vhost_net.exit.thread:                        ; preds = %bb.b, %bb.a, %bb.d, %bb.c, %get_vhost_net.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @get_vhost_net(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not7 = icmp eq ptr %i.c, null
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr %i.c(ptr noundef nonnull %0) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.d, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef ptr @vhost_net_init(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = load i32, ptr %0, align 8
  %i.d = icmp eq i32 %i.c, 1                      ; 2 uses
  %i.e = tail call noalias dereferenceable_or_null(968) ptr @g_malloc0(i64 noundef 968) #12 ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store ptr null, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 5 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8
  %i.i = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.h, i32 noundef 1, ptr noundef nonnull @.str) #11 ; 0 uses
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 960 ; 3 uses
  store ptr %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 440
  store i32 %i.l, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 928 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 944
  store ptr %i.r, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i32, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 936
  store i32 %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.x = load i8, ptr %i.w, align 4, !range !8, !noundef !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 952
  store i8 %i.x, ptr %i.y, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 noundef 0, i64 noundef 16, i1 noundef false) #11
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 488
  store i64 1, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 664
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 432
  store ptr %i.aa, ptr %i.ab, align 8
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.g, align 8
  %i.ad = load i32, ptr %i.ac, align 8
  %cond.i = icmp eq i32 %i.ad, 3
  br i1 %cond.i, label %vhost_net_get_fd.exit, label %vhost_net_get_fd.exit.thread

vhost_net_get_fd.exit.thread:                     ; preds = %bb.d
  %i.ae = load ptr, ptr @stderr, align 8
  %i.af = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ae, i32 noundef 1, ptr noundef nonnull @.str.14) #11 ; 0 uses
  br label %bb.t

vhost_net_get_fd.exit:                            ; preds = %bb.d
  %i.ag = tail call i32 @tap_get_fd(ptr noundef nonnull %i.g) #11 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.t, label %1

1:                                                ; preds = %vhost_net_get_fd.exit
  %2 = getelementptr inbounds nuw i8, ptr %i.e, i64 920
  store i32 %i.ag, ptr %2, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 920
  store i32 -1, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = mul i32 %i.ak, %i.l
  %3 = getelementptr inbounds nuw i8, ptr %i.e, i64 444
  store i32 %i.al, ptr %3, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = load i32, ptr %0, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = call i32 @vhost_dev_init(ptr noundef nonnull %i.e, ptr noundef %i.an, i32 noundef %i.ao, i32 noundef %i.aq, ptr noundef nonnull %i.b) #11
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.at = load ptr, ptr %i.b, align 8
  call void @error_report_err(ptr noundef %i.at) #11
  br label %bb.t

bb.h:                                             ; preds = %bb.f
  br i1 %i.d, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %i.f, align 8
  %i.av = call zeroext i1 @qemu_has_vnet_hdr_len(ptr noundef %i.au, i32 noundef 12) #11
  br i1 %i.av, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 456 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = and i64 %i.ax, -32769
  store i64 %i.ay, ptr %i.aw, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.az = load ptr, ptr %i.f, align 8
  %i.ba = call zeroext i1 @qemu_has_vnet_hdr(ptr noundef %i.az) #11
  br i1 %i.ba, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr i8, ptr %i.e, i64 456
  %.val = load i64, ptr %i.bb, align 8
  %i.bc = and i64 %.val, 134217728
  %.not62 = icmp eq i64 %i.bc, 0
  br i1 %.not62, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bd = load ptr, ptr @stderr, align 8
  %i.be = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bd, i32 noundef 1, ptr noundef nonnull @.str.1) #11 ; 0 uses
  br label %bb.t

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.not60 = icmp eq ptr %i.bg, null
  br i1 %.not60, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = load ptr, ptr %i.j, align 8
  %i.bi = call i64 %i.bg(ptr noundef %i.bh) #11   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 noundef 0, i64 noundef 16, i1 noundef false) #11
  store i64 %i.bi, ptr %i.a, align 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 456
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = xor i64 %i.bk, -1
  %i.bm = and i64 %i.bi, %i.bl                    ; 2 uses
  %.not63 = icmp eq i64 %i.bm, 0
  br i1 %.not63, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = load ptr, ptr @stderr, align 8
  %i.bo = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bn, i32 noundef 1, ptr noundef nonnull @.str.2, i64 noundef 0, i64 noundef %i.bm) #11 ; 0 uses
  br label %bb.t

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 472 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bp, i8 noundef 0, i64 noundef 16, i1 noundef false) #11
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 920
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = icmp eq i32 %i.br, -1
  br i1 %i.bs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bt = getelementptr i8, ptr %i.e, i64 456
  %.val.i = load i64, ptr %i.bt, align 8
  %i.bu = and i64 %.val.i, 1073741824
  br label %.sink.split.i

bb.s:                                             ; preds = %bb.q
  %i.bv = load ptr, ptr %i.j, align 8
  %i.bw = call zeroext i1 @qemu_has_vnet_hdr(ptr noundef %i.bv) #11
  br i1 %i.bw, label %vhost_net_ack_features_ex.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.s, %bb.r
  %.sink.i = phi i64 [ %i.bu, %bb.r ], [ 134217728, %bb.s ]
  store i64 %.sink.i, ptr %i.bp, align 8
  br label %vhost_net_ack_features_ex.exit

vhost_net_ack_features_ex.exit:                   ; preds = %bb.s, %.sink.split.i
  %i.bx = load ptr, ptr %i.p, align 8
  call void @vhost_ack_features_ex(ptr noundef nonnull %i.e, ptr noundef %i.bx, ptr noundef nonnull %i.a) #11
  br label %bb.u

bb.t:                                             ; preds = %vhost_net_get_fd.exit.thread, %vhost_net_get_fd.exit, %bb.p, %bb.m, %bb.g, %bb.b
  call void @vhost_dev_cleanup(ptr noundef %i.e) #11
  call void @g_free(ptr noundef %i.e) #11
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %vhost_net_ack_features_ex.exit
  %.0 = phi ptr [ null, %bb.t ], [ %i.e, %vhost_net_ack_features_ex.exit ]
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
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !10

end_hunk_0
