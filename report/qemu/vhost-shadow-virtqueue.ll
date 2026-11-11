Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vhost-shadow-virtqueue?download=true
inline.NumInlined: 82
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.DMAMap = type <{ i64, i64, i64, i32 }>

@.str = private unnamed_addr constant [38 x i8] c"../hw/virtio/vhost-shadow-virtqueue.c\00", align 1
@__func__.vhost_svq_valid_features = private unnamed_addr constant [25 x i8] c"vhost_svq_valid_features\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"SVQ Invalid device feature flags, offer: 0x%lx, ok: 0x%lx\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Guest provided element with no descriptors\00", align 1
@qemu_loglevel = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Invalid address 0x%lx given by guest\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Guest buffer expands over iova range\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Device %s says index %u is used\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"Device %s says index %u is used, but it was not available\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"More than %u used buffers obtained in a %u size SVQ\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef zeroext i1 @vhost_svq_valid_features(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.1.3 = and i64 %0, -7516192769
  %spec.select20.4 = or disjoint i64 %.1.3, 4294967296
  %i.a = and i64 %0, 8589934592
  %2 = xor i64 %i.a, 8589934592
  %spec.select20.5 = or i64 %2, %spec.select20.4  ; 2 uses
  %i.b = and i64 %0, 17179869184
  %.not19.6.a = icmp eq i64 %i.b, 0
  %i.c = and i64 %spec.select20.5, -20401094657
  %spec.select32.a = select i1 %.not19.6.a, i64 %spec.select20.5, i64 %i.c ; 3 uses
  %i.d = and i64 %spec.select32.a, 68719476736    ; 2 uses
  %.not19.8 = icmp eq i64 %i.d, 0
  %i.e = and i64 %spec.select32.a, -71940702209
  %spec.select30 = select i1 %.not19.8, i64 %spec.select32.a, i64 %i.e ; 3 uses
  %i.f = and i64 %spec.select30, 137438953472     ; 2 uses
  %.not19.9 = icmp eq i64 %i.f, 0
  %i.g = and i64 %spec.select30, -140660178945
  %.1.9 = select i1 %.not19.9, i64 %spec.select30, i64 %i.g ; 3 uses
  %i.h = and i64 %.1.9, 4398046511104
  %.not19.14 = icmp eq i64 %i.h, 0
  br i1 %.not19.14, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.i = or disjoint i64 %i.f, %i.d
  %i.j = icmp eq i64 %i.i, 0
  %i.k = and i64 %0, 33285996544
  %spec.select31 = icmp eq i64 %i.k, 12884901888
  %.118.9 = and i1 %i.j, %spec.select31
  %i.l = and i64 %.1.9, 4123168604160
  %i.m = icmp eq i64 %i.l, 0
  %.118.13 = select i1 %i.m, i1 %.118.9, i1 false
  br i1 %.118.13, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %.1.1428 = and i64 %.1.9, -8521215115265
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef 64, ptr noundef nonnull @__func__.vhost_svq_valid_features, ptr noundef nonnull @.str.1, i64 noundef %0, i64 noundef %.1.1428) #13
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %.118.1427 = phi i1 [ false, %.thread ], [ true, %bb.b ]
  ret i1 %.118.1427
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @error_setg_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local zeroext i16 @vhost_svq_available_slots(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 154
  %i.b = load i16, ptr %i.a, align 2
  ret i16 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -28, 1) i32 @vhost_svq_add(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4, i64 noundef %5, ptr nofree noundef readonly captures(address_is_null) %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %5, %2                           ; 2 uses
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 154 ; 3 uses
  %i.d = load i16, ptr %i.c, align 2
  %i.e = zext i16 %i.d to i32
  %i.f = icmp ugt i32 %i.b, %i.e
  br i1 %i.f, label %vhost_svq_kick.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = tail call i64 @llvm.umax.i64(i64 %2, i64 %5)
  %i.j = tail call noalias ptr @g_malloc_n(i64 noundef %i.i, i64 noundef 8) #14 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 138
  %i.l = load i16, ptr %i.k, align 2              ; 2 uses
  %i.m = or i64 %5, %2
  %spec.select.i = icmp eq i64 %i.m, 0
  br i1 %spec.select.i, label %bb.c, label %bb.e, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr @qemu_loglevel, align 4
  %i.o = and i32 %i.n, 2048
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %vhost_svq_add_split.exit.thread, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.2) #13
  br label %vhost_svq_add_split.exit.thread

bb.e:                                             ; preds = %bb.b
  %i.p = icmp ne i64 %5, 0
  %i.q = tail call fastcc zeroext i1 @vhost_svq_vring_write_descs(ptr noundef nonnull %0, ptr noundef %i.j, ptr noundef readonly %1, i64 noundef %2, ptr noundef readonly %3, i1 noundef zeroext %i.p, i1 noundef zeroext false)
  br i1 %i.q, label %bb.f, label %vhost_svq_add_split.exit.thread, !prof !8

bb.f:                                             ; preds = %bb.e
  %i.r = tail call fastcc zeroext i1 @vhost_svq_vring_write_descs(ptr noundef nonnull %0, ptr noundef %i.j, ptr noundef readonly %4, i64 noundef %5, ptr noundef readonly %6, i1 noundef zeroext false, i1 noundef zeroext true)
  br i1 %i.r, label %bb.g, label %vhost_svq_add_split.exit.thread, !prof !8

vhost_svq_add_split.exit.thread:                  ; preds = %bb.c, %bb.e, %bb.d, %bb.f
  tail call void @g_free(ptr noundef %i.j) #13
  br label %vhost_svq_kick.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.t = load i16, ptr %i.s, align 8
  %i.u = zext i16 %i.t to i32
  %i.v = load i32, ptr %0, align 8
  %i.w = add i32 %i.v, 65535
  %i.x = and i32 %i.w, %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.z
  store i16 %i.l, ptr %i.aa, align 2
  %i.ab = load i16, ptr %i.s, align 8
  %i.ac = add i16 %i.ab, 1
  store i16 %i.ac, ptr %i.s, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !10
  fence release
  %i.ad = load i16, ptr %i.s, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  store i16 %i.ad, ptr %i.ae, align 2
  tail call void @g_free(ptr noundef %i.j) #13
  %i.af = load i16, ptr %i.c, align 2
  %i.ag = trunc i64 %i.a to i16
  %i.ah = sub i16 %i.af, %i.ag
  store i16 %i.ah, ptr %i.c, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = zext i16 %i.l to i64                    ; 3 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.ak
  store ptr %7, ptr %i.al, align 8
  %i.am = load ptr, ptr %i.ai, align 8
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ak
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 %i.b, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr i8, ptr %i.aq, i64 184
  %.val = load i64, ptr %i.ar, align 8
  %i.as = and i64 %.val, 34359738368
  %.not = icmp eq i64 %i.as, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = trunc i64 %5 to i32
  %i.au = tail call i64 @iov_size(ptr noundef %4, i32 noundef %i.at) #13
  %i.av = trunc i64 %i.au to i32
  %i.aw = load ptr, ptr %i.ai, align 8
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.ak
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 %i.av, ptr %i.ay, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !11
  fence seq_cst
  %i.az = load ptr, ptr %i.ap, align 8
  %i.ba = getelementptr i8, ptr %i.az, i64 184
  %.val.i = load i64, ptr %i.ba, align 8
  %i.bb = and i64 %.val.i, 536870912
  %.not8.i = icmp eq i64 %i.bb, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  br i1 %.not8.i, label %bb.j, label %.split.i

.split.i:                                         ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bf = load i32, ptr %0, align 8
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 4
  %i.bj = load i16, ptr %i.s, align 8
  %.neg.i = add i16 %i.bi, 1
  %i.bk = icmp eq i16 %i.bj, %.neg.i
  br i1 %i.bk, label %bb.k, label %vhost_svq_kick.exit

bb.j:                                             ; preds = %bb.i
  %i.bl = load i16, ptr %i.bd, align 4
  %i.bm = and i16 %i.bl, 1
  %.not.i24 = icmp eq i16 %i.bm, 0
  br i1 %.not.i24, label %bb.k, label %vhost_svq_kick.exit

bb.k:                                             ; preds = %bb.j, %.split.i
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bo = tail call i32 @event_notifier_set(ptr noundef nonnull %i.bn) #13 ; 0 uses
  br label %vhost_svq_kick.exit

vhost_svq_kick.exit:                              ; preds = %bb.k, %bb.j, %.split.i, %vhost_svq_add_split.exit.thread, %bb.a
  %.0 = phi i32 [ -22, %vhost_svq_add_split.exit.thread ], [ -28, %bb.a ], [ 0, %.split.i ], [ 0, %bb.j ], [ 0, %bb.k ]
  ret i32 %.0
}

declare i64 @iov_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @vhost_svq_push_elem(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @virtqueue_push(ptr noundef %i.b, ptr noundef %1, i32 noundef %2) #13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @vhost_handle_guest_kick(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @virtqueue_push(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @vhost_handle_guest_kick(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = tail call i32 @event_notifier_test_and_clear(ptr noundef nonnull %i.a) #13 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.b

bb.b:                                             ; preds = %bb.k, %bb.a
  %i.g = load ptr, ptr %i.c, align 8
  tail call void @virtio_queue_set_notification(ptr noundef %i.g, i32 noundef 0) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.j, %bb.b
  %i.h = load ptr, ptr %i.d, align 8              ; 2 uses
end_hunk_0
