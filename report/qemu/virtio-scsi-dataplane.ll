inline.NumInlined: 20
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"../hw/scsi/virtio-scsi-dataplane.c\00", align 1
@__func__.virtio_scsi_dataplane_setup = private unnamed_addr constant [28 x i8] c"virtio_scsi_dataplane_setup\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"iothread and iothread-vq-mapping properties cannot be set at the same time\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"device is incompatible with iothread (transport does not support notifiers)\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"ioeventfd is required for iothread\00", align 1
@.str.4 = private unnamed_addr constant [75 x i8] c"virtio-scsi: Failed to set guest notifiers (%d), ensure -accel kvm is set.\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"virtio-scsi-common\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"/opt-bench/work/qemu/qemu/include/hw/virtio/virtio-scsi.h\00", align 1
@__func__.VIRTIO_SCSI_COMMON = private unnamed_addr constant [19 x i8] c"VIRTIO_SCSI_COMMON\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"virtio-device\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"/opt-bench/work/qemu/qemu/include/hw/virtio/virtio.h\00", align 1
@__func__.VIRTIO_DEVICE = private unnamed_addr constant [14 x i8] c"VIRTIO_DEVICE\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/qdev.h\00", align 1
@__func__.DEVICE = private unnamed_addr constant [7 x i8] c"DEVICE\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"virtio-bus\00", align 1
@.str.12 = private unnamed_addr constant [57 x i8] c"/opt-bench/work/qemu/qemu/include/hw/virtio/virtio-bus.h\00", align 1
@__func__.VIRTIO_BUS_GET_CLASS = private unnamed_addr constant [21 x i8] c"VIRTIO_BUS_GET_CLASS\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"virtio-scsi-device\00", align 1
@__func__.VIRTIO_SCSI = private unnamed_addr constant [12 x i8] c"VIRTIO_SCSI\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [47 x i8] c"virtio-scsi: Failed to set host notifier (%d)\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@__func__.BUS = private unnamed_addr constant [4 x i8] c"BUS\00", align 1
@__func__.VIRTIO_BUS = private unnamed_addr constant [11 x i8] c"VIRTIO_BUS\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @virtio_scsi_dataplane_setup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 29, ptr noundef nonnull @__func__.VIRTIO_SCSI_COMMON) #3 ; 4 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 91, ptr noundef nonnull @__func__.VIRTIO_DEVICE) #3 ; 2 uses
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #3
  %i.d = tail call ptr @qdev_get_parent_bus(ptr noundef %i.c) #3
  %i.e = tail call ptr @object_get_class(ptr noundef %i.d) #3
  %i.f = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.e, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 37, ptr noundef nonnull @__func__.VIRTIO_BUS_GET_CLASS) #3 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 552 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 656 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %.not = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 664
  %i.k = load ptr, ptr %i.j, align 8
  %.not58 = icmp eq ptr %i.k, null                ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not58, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef 35, ptr noundef nonnull @__func__.virtio_scsi_dataplane_setup, ptr noundef nonnull @.str.1) #3
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  br i1 %.not58, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 232
  %i.m = load ptr, ptr %i.l, align 8
  %.not59 = icmp eq ptr %i.m, null
  br i1 %.not59, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 296
  %i.o = load ptr, ptr %i.n, align 8
  %.not60 = icmp eq ptr %i.o, null
  br i1 %.not60, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef 43, ptr noundef nonnull @__func__.virtio_scsi_dataplane_setup, ptr noundef nonnull @.str.2) #3
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.p = tail call zeroext i1 @virtio_device_ioeventfd_enabled(ptr noundef %i.b) #3
  br i1 %i.p, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef 47, ptr noundef nonnull @__func__.virtio_scsi_dataplane_setup, ptr noundef nonnull @.str.3) #3
  br label %.loopexit

bb.j:                                             ; preds = %bb.d, %bb.h
  %i.q = load i32, ptr %i.g, align 8
  %i.r = add i32 %i.q, 2
  %i.s = zext i32 %i.r to i64
  %i.t = tail call noalias ptr @g_malloc_n(i64 noundef %i.s, i64 noundef 8) #4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 8 uses
  store ptr %i.t, ptr %i.u, align 8
  %i.v = tail call ptr @qemu_get_aio_context() #3
  %i.w = load ptr, ptr %i.u, align 8
  store ptr %i.v, ptr %i.w, align 8
  %i.x = tail call ptr @qemu_get_aio_context() #3
  %i.y = load ptr, ptr %i.u, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.x, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 664
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not61 = icmp eq ptr %i.ab, null
  br i1 %.not61, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %i.u, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i32, ptr %i.g, align 8
  %i.af = trunc i32 %i.ae to i16
  %i.ag = tail call zeroext i1 @iothread_vq_mapping_apply(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ad, i16 noundef zeroext %i.af, ptr noundef %1) #3
  br i1 %i.ag, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr %i.u, align 8
  tail call void @g_free(ptr noundef %i.ah) #3
  store ptr null, ptr %i.u, align 8
  br label %.loopexit

bb.m:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %i.h, align 8             ; 2 uses
  %.not62 = icmp eq ptr %i.ai, null
  br i1 %.not62, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = tail call ptr @iothread_get_aio_context(ptr noundef nonnull %i.ai) #3
  %i.ak = load i32, ptr %i.g, align 8
  %.not67 = icmp eq i32 %i.ak, 0
  br i1 %.not67, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.n
  %i.al = load ptr, ptr %i.h, align 8
  %i.am = tail call ptr @object_ref(ptr noundef %i.al) #3 ; 0 uses
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.n, %.lr.ph
  %.05163 = phi i16 [ %i.ar, %.lr.ph ], [ 0, %bb.n ] ; 2 uses
  %i.an = load ptr, ptr %i.u, align 8
  %i.ao = zext i16 %.05163 to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %i.aj, ptr %i.aq, align 8
  %i.ar = add i16 %.05163, 1                      ; 2 uses
  %i.as = zext i16 %i.ar to i32
  %i.at = load i32, ptr %i.g, align 8
  %i.au = icmp ugt i32 %i.at, %i.as
  br i1 %i.au, label %.lr.ph, label %._crit_edge, !llvm.loop !7

bb.o:                                             ; preds = %bb.m
  %i.av = tail call ptr @qemu_get_aio_context() #3
  %i.aw = load i32, ptr %i.g, align 8
  %.not68 = icmp eq i32 %i.aw, 0
  br i1 %.not68, label %.loopexit, label %.lr.ph66

.lr.ph66:                                         ; preds = %bb.o, %.lr.ph66
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph66 ], [ 0, %bb.o ] ; 2 uses
  %i.ax = load ptr, ptr %i.u, align 8
  %2 = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.av, ptr %3, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ay = load i32, ptr %i.g, align 8
  %i.az = zext i32 %i.ay to i64
  %i.ba = icmp samesign ult i64 %indvars.iv.next, %i.az
  br i1 %i.ba, label %.lr.ph66, label %.loopexit, !llvm.loop !9

.loopexit:                                        ; preds = %.lr.ph66, %bb.o, %bb.k, %._crit_edge, %bb.l, %bb.i, %bb.g, %bb.c
  ret void
}

declare ptr @qdev_get_parent_bus(ptr noundef) local_unnamed_addr #1

declare void @error_setg_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare zeroext i1 @virtio_device_ioeventfd_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0,1)
declare noalias ptr @g_malloc_n(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @qemu_get_aio_context() local_unnamed_addr #1

declare zeroext i1 @iothread_vq_mapping_apply(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare void @g_free(ptr noundef) local_unnamed_addr #1

declare ptr @iothread_get_aio_context(ptr noundef) local_unnamed_addr #1

declare ptr @object_ref(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @virtio_scsi_dataplane_cleanup(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 29, ptr noundef nonnull @__func__.VIRTIO_SCSI_COMMON) #3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 664
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @iothread_vq_mapping_cleanup(ptr noundef nonnull %i.c) #3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not8 = icmp eq ptr %i.e, null
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @object_unref(ptr noundef nonnull %i.e) #3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @g_free(ptr noundef %i.g) #3
  store ptr null, ptr %i.f, align 8
  ret void
}

declare void @iothread_vq_mapping_cleanup(ptr noundef) local_unnamed_addr #1

declare void @object_unref(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -38, 1) i32 @virtio_scsi_dataplane_start(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #3
  %i.b = tail call ptr @qdev_get_parent_bus(ptr noundef %i.a) #3 ; 4 uses
  %i.c = tail call ptr @object_get_class(ptr noundef %i.b) #3
  %i.d = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.c, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 37, ptr noundef nonnull @__func__.VIRTIO_BUS_GET_CLASS) #3
  %i.e = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 29, ptr noundef nonnull @__func__.VIRTIO_SCSI_COMMON) #3 ; 4 uses
  %i.f = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.6, i32 noundef 32, ptr noundef nonnull @__func__.VIRTIO_SCSI) #3 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 968 ; 3 uses
  %i.h = load i8, ptr %i.g, align 8, !range !10, !noundef !11
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 969 ; 4 uses
  %i.k = load i8, ptr %i.j, align 1, !range !10, !noundef !11
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 971 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !range !10, !noundef !11
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.j, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 232 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 552 ; 6 uses
  %i.u = load i32, ptr %i.t, align 8
  %i.v = add i32 %i.u, 2
  %i.w = tail call i32 %i.q(ptr noundef %i.s, i32 noundef %i.v, i1 noundef zeroext true) #3 ; 2 uses
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.4, i32 noundef %i.w) #3
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  tail call void @memory_region_transaction_begin() #3
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 680
  %i.y = tail call fastcc i32 @virtio_scsi_set_host_notifier(ptr noundef nonnull %i.f, i32 noundef 0)
  %.not65 = icmp eq i32 %i.y, 0
  br i1 %.not65, label %bb.g, label %._crit_edge78.thread

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 688
  %i.aa = tail call fastcc i32 @virtio_scsi_set_host_notifier(ptr noundef nonnull %i.f, i32 noundef 1)
  %.not66 = icmp eq i32 %i.aa, 0
  br i1 %.not66, label %.preheader, label %.lr.ph77.preheader

.preheader:                                       ; preds = %bb.g
  %i.ab = load i32, ptr %i.t, align 8
  %.not83 = icmp eq i32 %i.ab, 0
  br i1 %.not83, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.h
  %.06171 = phi i32 [ %i.ae, %bb.h ], [ 2, %.preheader ] ; 3 uses
  %.06270 = phi i32 [ %i.af, %bb.h ], [ 0, %.preheader ] ; 2 uses
  %i.ac = add nuw i32 %.06270, 2
  %i.ad = tail call fastcc i32 @virtio_scsi_set_host_notifier(ptr noundef nonnull %i.f, i32 noundef %i.ac)
  %.not67 = icmp eq i32 %i.ad, 0
  br i1 %.not67, label %bb.h, label %.loopexit68

bb.h:                                             ; preds = %.lr.ph
  %i.ae = add nuw i32 %.06171, 1
  %i.af = add nuw i32 %.06270, 1                  ; 2 uses
  %i.ag = load i32, ptr %i.t, align 8
  %i.ah = icmp ult i32 %i.af, %i.ag
  br i1 %i.ah, label %.lr.ph, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %bb.h, %.preheader
  tail call void @memory_region_transaction_commit() #3
  store i8 0, ptr %i.j, align 1
  store i8 1, ptr %i.g, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !13
  fence release
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 840
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %._crit_edge
  %i.al = load ptr, ptr %i.x, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 960 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void @virtio_queue_aio_attach_host_notifier(ptr noundef %i.al, ptr noundef %i.ao) #3
  %i.ap = load ptr, ptr %i.z, align 8
  %i.aq = load ptr, ptr %i.am, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void @virtio_queue_aio_attach_host_notifier_no_poll(ptr noundef %i.ap, ptr noundef %i.as) #3
  %i.at = load i32, ptr %i.t, align 8
  %.not84 = icmp eq i32 %i.at, 0
  br i1 %.not84, label %.loopexit, label %.lr.ph74

.lr.ph74:                                         ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 696
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph74, %bb.j
  %.16372 = phi i32 [ 0, %.lr.ph74 ], [ %i.be, %bb.j ] ; 3 uses
  %i.av = load ptr, ptr %i.am, align 8
  %i.aw = add nuw i32 %.16372, 2
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = load ptr, ptr %i.au, align 8
  %i.bb = sext i32 %.16372 to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void @virtio_queue_aio_attach_host_notifier(ptr noundef %i.bd, ptr noundef %i.az) #3
  %i.be = add nuw i32 %.16372, 1                  ; 2 uses
  %i.bf = load i32, ptr %i.t, align 8
  %i.bg = icmp ult i32 %i.be, %i.bf
  br i1 %i.bg, label %bb.j, label %.loopexit, !llvm.loop !14

.loopexit68:                                      ; preds = %.lr.ph
  %i.bh = icmp sgt i32 %.06171, 0
  br i1 %i.bh, label %.lr.ph77.preheader, label %._crit_edge78.thread

.lr.ph77.preheader:                               ; preds = %bb.g, %.loopexit68
  %.190 = phi i32 [ %.06171, %.loopexit68 ], [ 1, %bb.g ] ; 2 uses
  br label %.lr.ph77

.lr.ph77:                                         ; preds = %.lr.ph77.preheader, %.lr.ph77
  %.275 = phi i32 [ %i.bk, %.lr.ph77 ], [ 0, %.lr.ph77.preheader ] ; 2 uses
  %i.bi = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 37, ptr noundef nonnull @__func__.VIRTIO_BUS) #3
  %i.bj = tail call i32 @virtio_bus_set_host_notifier(ptr noundef %i.bi, i32 noundef %.275, i1 noundef zeroext false) #3 ; 0 uses
  %i.bk = add nuw nsw i32 %.275, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bk, %.190
  br i1 %exitcond.not, label %.lr.ph81.preheader, label %.lr.ph77, !llvm.loop !15

._crit_edge78.thread:                             ; preds = %.loopexit68, %bb.f
  tail call void @memory_region_transaction_commit() #3
  br label %._crit_edge82

.lr.ph81.preheader:                               ; preds = %.lr.ph77
  tail call void @memory_region_transaction_commit() #3
  br label %.lr.ph81

.lr.ph81:                                         ; preds = %.lr.ph81.preheader, %.lr.ph81
  %.379 = phi i32 [ %i.bm, %.lr.ph81 ], [ 0, %.lr.ph81.preheader ] ; 2 uses
  %i.bl = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 37, ptr noundef nonnull @__func__.VIRTIO_BUS) #3
  tail call void @virtio_bus_cleanup_host_notifier(ptr noundef %i.bl, i32 noundef %.379) #3
  %i.bm = add nuw nsw i32 %.379, 1                ; 2 uses
  %exitcond86.not = icmp eq i32 %i.bm, %.190
  br i1 %exitcond86.not, label %._crit_edge82, label %.lr.ph81, !llvm.loop !16

._crit_edge82:                                    ; preds = %.lr.ph81, %._crit_edge78.thread
  %i.bn = load ptr, ptr %i.p, align 8
  %i.bo = load ptr, ptr %i.r, align 8
  %i.bp = load i32, ptr %i.t, align 8
  %i.bq = add i32 %i.bp, 2
  %i.br = tail call i32 %i.bn(ptr noundef %i.bo, i32 noundef %i.bq, i1 noundef zeroext false) #3 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge82, %bb.e
  store i8 1, ptr %i.m, align 1
  store i8 0, ptr %i.j, align 1
  store i8 1, ptr %i.g, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.i, %._crit_edge, %bb.a, %bb.b, %bb.c, %bb.k
  %.0 = phi i32 [ 0, %bb.a ], [ -38, %bb.k ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %._crit_edge ], [ 0, %bb.i ], [ 0, %bb.j ]
  ret i32 %.0
}

declare void @error_report(ptr noundef, ...) local_unnamed_addr #1

declare void @memory_region_transaction_begin() local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @virtio_scsi_set_host_notifier(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #3
  %i.b = tail call ptr @qdev_get_parent_bus(ptr noundef %i.a) #3
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.10, i32 noundef 320, ptr noundef nonnull @__func__.BUS) #3
  %i.d = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.c, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 37, ptr noundef nonnull @__func__.VIRTIO_BUS) #3
  %i.e = tail call i32 @virtio_bus_set_host_notifier(ptr noundef %i.d, i32 noundef %1, i1 noundef zeroext true) #3 ; 3 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @stderr, align 8
  %i.g = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.f, i32 noundef 1, ptr noundef nonnull @.str.14, i32 noundef %i.e) #3 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 971
  store i8 1, ptr %i.h, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 %i.e
}

declare void @memory_region_transaction_commit() local_unnamed_addr #1

declare void @virtio_queue_aio_attach_host_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @virtio_queue_aio_attach_host_notifier_no_poll(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @virtio_bus_set_host_notifier(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @virtio_bus_cleanup_host_notifier(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @virtio_scsi_dataplane_stop(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #3
  %i.b = tail call ptr @qdev_get_parent_bus(ptr noundef %i.a) #3 ; 4 uses
  %i.c = tail call ptr @object_get_class(ptr noundef %i.b) #3
  %i.d = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.c, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 37, ptr noundef nonnull @__func__.VIRTIO_BUS_GET_CLASS) #3
  %i.e = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 29, ptr noundef nonnull @__func__.VIRTIO_SCSI_COMMON) #3 ; 3 uses
  %i.f = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.6, i32 noundef 32, ptr noundef nonnull @__func__.VIRTIO_SCSI) #3 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 968 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !range !10, !noundef !11
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 970 ; 3 uses
  %i.k = load i8, ptr %i.j, align 2, !range !10, !noundef !11
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 971 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !range !10, !noundef !11
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.m, align 1
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  store i8 1, ptr %i.j, align 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 840
  %i.q = load i32, ptr %i.p, align 8
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 552 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8
  %.not = icmp eq i32 %i.t, -2
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 960
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.036 = phi i32 [ 0, %.lr.ph ], [ %i.aa, %bb.f ] ; 3 uses
  %i.v = tail call ptr @virtio_get_queue(ptr noundef nonnull %i.e, i32 noundef %.036) #3
  %i.w = load ptr, ptr %i.u, align 8
  %i.x = sext i32 %.036 to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8
  tail call void @aio_wait_bh_oneshot(ptr noundef %i.z, ptr noundef nonnull @virtio_scsi_dataplane_stop_vq_bh, ptr noundef %i.v) #3
  %i.aa = add nuw i32 %.036, 1                    ; 2 uses
  %i.ab = load i32, ptr %i.s, align 8
  %i.ac = add i32 %i.ab, 2
  %i.ad = icmp ult i32 %i.aa, %i.ac
  br i1 %i.ad, label %bb.f, label %.loopexit, !llvm.loop !17

.loopexit:                                        ; preds = %bb.f, %.preheader, %bb.e
  tail call void @blk_drain_all() #3
  tail call void @memory_region_transaction_begin() #3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 552 ; 4 uses
  %i.af = load i32, ptr %i.ae, align 8
  %.not43 = icmp eq i32 %i.af, -2
  br i1 %.not43, label %._crit_edge, label %.lr.ph38

.lr.ph38:                                         ; preds = %.loopexit, %.lr.ph38
  %.137 = phi i32 [ %i.ai, %.lr.ph38 ], [ 0, %.loopexit ] ; 2 uses
  %i.ag = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 37, ptr noundef nonnull @__func__.VIRTIO_BUS) #3
  %i.ah = tail call i32 @virtio_bus_set_host_notifier(ptr noundef %i.ag, i32 noundef %.137, i1 noundef zeroext false) #3 ; 0 uses
  %i.ai = add nuw i32 %.137, 1                    ; 2 uses
  %i.aj = load i32, ptr %i.ae, align 8
  %i.ak = add i32 %i.aj, 2
  %i.al = icmp ult i32 %i.ai, %i.ak
  br i1 %i.al, label %.lr.ph38, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph38, %.loopexit
  tail call void @memory_region_transaction_commit() #3
  %i.am = load i32, ptr %i.ae, align 8
  %.not44 = icmp eq i32 %i.am, -2
  br i1 %.not44, label %._crit_edge42, label %.lr.ph41

.lr.ph41:                                         ; preds = %._crit_edge, %.lr.ph41
  %.239 = phi i32 [ %i.ao, %.lr.ph41 ], [ 0, %._crit_edge ] ; 2 uses
  %i.an = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 37, ptr noundef nonnull @__func__.VIRTIO_BUS) #3
  tail call void @virtio_bus_cleanup_host_notifier(ptr noundef %i.an, i32 noundef %.239) #3
  %i.ao = add nuw i32 %.239, 1                    ; 2 uses
  %i.ap = load i32, ptr %i.ae, align 8
  %i.aq = add i32 %i.ap, 2                        ; 2 uses
  %i.ar = icmp ult i32 %i.ao, %i.aq
  br i1 %i.ar, label %.lr.ph41, label %._crit_edge42, !llvm.loop !19

._crit_edge42:                                    ; preds = %.lr.ph41, %._crit_edge
  %.lcssa = phi i32 [ 0, %._crit_edge ], [ %i.aq, %.lr.ph41 ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 40
end_hunk_0
