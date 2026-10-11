Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/multifd-zstd?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MultiFDMethods = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.TargetPageBits = type { i8, i32, i64 }

@multifd_zstd_ops = internal constant %struct.MultiFDMethods { ptr @multifd_zstd_send_setup, ptr @multifd_zstd_send_cleanup, ptr @multifd_zstd_send_prepare, ptr @multifd_zstd_recv_setup, ptr @multifd_zstd_recv_cleanup, ptr @multifd_zstd_recv }, align 8
@.str = private unnamed_addr constant [28 x i8] c"../migration/multifd-zstd.c\00", align 1
@__func__.multifd_zstd_send_setup = private unnamed_addr constant [24 x i8] c"multifd_zstd_send_setup\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"multifd %u: zstd createCStream failed\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"multifd %u: initCStream failed with error %s\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"multifd %u: out of memory for zbuff\00", align 1
@__func__.multifd_zstd_send_prepare = private unnamed_addr constant [26 x i8] c"multifd_zstd_send_prepare\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"multifd %u: compressStream buffer too small\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"multifd %u: compressStream error %s\00", align 1
@target_page = external local_unnamed_addr constant %struct.TargetPageBits, align 8
@__func__.multifd_zstd_recv_setup = private unnamed_addr constant [24 x i8] c"multifd_zstd_recv_setup\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"multifd %u: zstd createDStream failed\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"multifd %u: initDStream failed with error %s\00", align 1
@__func__.multifd_zstd_recv = private unnamed_addr constant [18 x i8] c"multifd_zstd_recv\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"multifd %u: flags received %x flags expected %x\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"in_size == 0\00", align 1
@__PRETTY_FUNCTION__.multifd_zstd_recv = private unnamed_addr constant [53 x i8] c"int multifd_zstd_recv(MultiFDRecvParams *, Error **)\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"multifd %u: decompressStream buffer too small\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"multifd %u: decompressStream returned %s\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"multifd %u: packet size received %u size expected %u\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @do_qemu_init_multifd_zstd_register, ptr null }]
@.str.13 = private unnamed_addr constant [19 x i8] c"coroutine_mixed_fn\00", section "llvm.metadata"
@.str.14 = private unnamed_addr constant [47 x i8] c"/opt-bench/work/qemu/qemu/include/io/channel.h\00", section "llvm.metadata"
@llvm.global.annotations = appending global [1 x { ptr, ptr, ptr, i32, ptr }] [{ ptr, ptr, ptr, i32, ptr } { ptr @qio_channel_read_all, ptr @.str.13, ptr @.str.14, i32 497, ptr null }], section "llvm.metadata"

; Function Attrs: nounwind sspstrong uwtable
define internal void @do_qemu_init_multifd_zstd_register() #0 {
bb.a:
  tail call void @register_module_init(ptr noundef nonnull @multifd_zstd_register, i32 noundef 0) #4
  ret void
}

declare void @register_module_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @multifd_zstd_register() #0 {
bb.a:
  tail call void @multifd_register_ops(i32 noundef 2, ptr noundef nonnull @multifd_zstd_ops) #4
  ret void
}

declare void @multifd_register_ops(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -1, 1) i32 @multifd_zstd_send_setup(ptr nofree noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(80) ptr @g_malloc0(i64 noundef 80) #5 ; 9 uses
  %i.b = tail call ptr @ZSTD_createCStream() #4   ; 3 uses
  store ptr %i.b, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @g_free(ptr noundef nonnull %i.a) #4
  %i.c = load i8, ptr %0, align 8
  %i.d = zext i8 %i.c to i32
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef 48, ptr noundef nonnull @__func__.multifd_zstd_send_setup, ptr noundef nonnull @.str.1, i32 noundef %i.d) #4
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i32 @migrate_multifd_zstd_level() #4
  %i.f = tail call i64 @ZSTD_initCStream(ptr noundef nonnull %i.b, i32 noundef %i.e) #4
  %i.g = shl i64 %i.f, 32
  %i.h = ashr exact i64 %i.g, 32                  ; 2 uses
  %i.i = tail call i32 @ZSTD_isError(i64 noundef %i.h) #4
  %.not50 = icmp eq i32 %i.i, 0
  br i1 %.not50, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = tail call i64 @ZSTD_freeCStream(ptr noundef %i.j) #4 ; 0 uses
  tail call void @g_free(ptr noundef nonnull %i.a) #4
  %i.l = load i8, ptr %0, align 8
  %i.m = zext i8 %i.l to i32
  %i.n = tail call ptr @ZSTD_getErrorName(i64 noundef %i.h) #4
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef 57, ptr noundef nonnull @__func__.multifd_zstd_send_setup, ptr noundef nonnull @.str.2, i32 noundef %i.m, ptr noundef %i.n) #4
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.o = tail call i64 @ZSTD_compressBound(i64 noundef 524288) #4 ; 2 uses
  %i.p = trunc i64 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 %i.p, ptr %i.q, align 8
  %i.r = and i64 %i.o, 4294967295
  %i.s = tail call noalias ptr @g_try_malloc(i64 noundef %i.r) #5 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.s, ptr %i.t, align 8
  %.not51 = icmp eq ptr %i.s, null
  br i1 %.not51, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = tail call i64 @ZSTD_freeCStream(ptr noundef %i.u) #4 ; 0 uses
  tail call void @g_free(ptr noundef nonnull %i.a) #4
  %i.w = load i8, ptr %0, align 8
  %i.x = zext i8 %i.w to i32
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef 66, ptr noundef nonnull @__func__.multifd_zstd_send_setup, ptr noundef nonnull @.str.3, i32 noundef %i.x) #4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr %i.a, ptr %i.y, align 8
  %i.z = tail call noalias dereferenceable_or_null(32) ptr @g_malloc0(i64 noundef 32) #5
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %i.z, ptr %i.aa, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.d ], [ 0, %bb.g ], [ -1, %bb.f ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @multifd_zstd_send_cleanup(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i64 @ZSTD_freeCStream(ptr noundef %i.c) #4 ; 0 uses
  store ptr null, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @g_free(ptr noundef %i.f) #4
  store ptr null, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.a, align 8
  tail call void @g_free(ptr noundef %i.g) #4
  store ptr null, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  tail call void @g_free(ptr noundef %i.i) #4
  store ptr null, ptr %i.h, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -1, 1) i32 @multifd_zstd_send_prepare(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.d = load ptr, ptr %i.c, align 8              ; 9 uses
  %i.e = tail call zeroext i1 @multifd_send_prepare_common(ptr noundef %0) #4
  br i1 %i.e, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.j = load i32, ptr %i.i, align 8
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  store i64 %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 4 uses
  store i64 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %.not58 = icmp eq i32 %i.o, 0
  br i1 %.not58, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.t = sub i64 0, %i.s
  %2 = and i64 %i.t, 4294967295
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %.critedge52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = load i32, ptr %i.n, align 4              ; 2 uses
  %i.x = zext i32 %i.w to i64
  %i.y = icmp samesign ult i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !8

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.z = phi i32 [ %i.o, %.lr.ph ], [ %i.w, %bb.c ]
  %i.aa = add i32 %i.z, -1
  %i.ab = zext i32 %i.aa to i64
  %i.ac = icmp eq i64 %indvars.iv, %i.ab
  %spec.store.select = zext i1 %i.ac to i32
  %i.ad = load ptr, ptr %i.p, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = load ptr, ptr %i.q, align 8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ai
  store ptr %i.aj, ptr %i.r, align 8
  store i64 %2, ptr %i.u, align 8
  store i64 0, ptr %i.v, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %i.ak = load ptr, ptr %i.d, align 8
  %i.al = tail call i64 @ZSTD_compressStream2(ptr noundef %i.ak, ptr noundef nonnull %i.h, ptr noundef nonnull %i.r, i32 noundef %spec.store.select) #4 ; 2 uses
  %i.am = trunc i64 %i.al to i32
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %bb.f, label %.critedge52

bb.f:                                             ; preds = %bb.e
  %i.ao = load i64, ptr %i.u, align 8
  %i.ap = load i64, ptr %i.v, align 8
  %i.aq = icmp ugt i64 %i.ao, %i.ap
  br i1 %i.aq, label %bb.g, label %.critedge52

bb.g:                                             ; preds = %bb.f
  %i.ar = load i64, ptr %i.l, align 8
  %i.as = load i64, ptr %i.m, align 8
  %i.at = icmp ugt i64 %i.ar, %i.as
  br i1 %i.at, label %bb.e, label %bb.h, !llvm.loop !9

bb.h:                                             ; preds = %bb.g
  %i.au = load i8, ptr %0, align 8
  %i.av = zext i8 %i.au to i32
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef 130, ptr noundef nonnull @__func__.multifd_zstd_send_prepare, ptr noundef nonnull @.str.4, i32 noundef %i.av) #4
  br label %.critedge54

.critedge52:                                      ; preds = %bb.f, %bb.e
  %sext = shl i64 %i.al, 32
  %i.aw = ashr exact i64 %sext, 32                ; 2 uses
  %i.ax = tail call i32 @ZSTD_isError(i64 noundef %i.aw) #4
  %.not = icmp eq i32 %i.ax, 0
  br i1 %.not, label %bb.c, label %bb.i

bb.i:                                             ; preds = %.critedge52
  %i.ay = load i8, ptr %0, align 8
  %i.az = zext i8 %i.ay to i32
  %i.ba = tail call ptr @ZSTD_getErrorName(i64 noundef %i.aw) #4
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef 135, ptr noundef nonnull @__func__.multifd_zstd_send_prepare, ptr noundef nonnull @.str.5, i32 noundef %i.az, ptr noundef %i.ba) #4
  br label %.critedge54

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load ptr, ptr %i.f, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.bb = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.g, %bb.b ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.bg
  store ptr %i.bb, ptr %i.bh, align 8
  %i.bi = load i64, ptr %i.m, align 8
  %i.bj = load ptr, ptr %i.bc, align 8
  %i.bk = load i32, ptr %i.be, align 8
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i64 %i.bi, ptr %i.bn, align 8
  %i.bo = load i32, ptr %i.be, align 8
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.be, align 8
  %i.bq = load i64, ptr %i.m, align 8
  %i.br = trunc i64 %i.bq to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i32 %i.br, ptr %i.bs, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %._crit_edge
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = or i32 %i.bu, 4
  store i32 %i.bv, ptr %i.bt, align 8
  tail call void @multifd_send_fill_packet(ptr noundef nonnull %0) #4
  br label %.critedge54

.critedge54:                                      ; preds = %bb.h, %bb.i, %bb.j
  %.2 = phi i32 [ 0, %bb.j ], [ -1, %bb.i ], [ -1, %bb.h ]
  ret i32 %.2
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -1, 1) i32 @multifd_zstd_recv_setup(ptr nofree noundef captures(none) initializes((440, 448)) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(80) ptr @g_malloc0(i64 noundef 80) #5 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 440
  store ptr %i.a, ptr %i.b, align 8
  %i.c = tail call ptr @ZSTD_createDStream() #4   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.c, ptr %i.d, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @g_free(ptr noundef nonnull %i.a) #4
  %i.e = load i8, ptr %0, align 8
  %i.f = zext i8 %i.e to i32
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef 159, ptr noundef nonnull @__func__.multifd_zstd_recv_setup, ptr noundef nonnull @.str.6, i32 noundef %i.f) #4
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = tail call i64 @ZSTD_initDStream(ptr noundef nonnull %i.c) #4
  %i.h = shl i64 %i.g, 32
  %i.i = ashr exact i64 %i.h, 32                  ; 2 uses
  %i.j = tail call i32 @ZSTD_isError(i64 noundef %i.i) #4
  %.not36 = icmp eq i32 %i.j, 0
  br i1 %.not36, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.d, align 8
  %i.l = tail call i64 @ZSTD_freeDStream(ptr noundef %i.k) #4 ; 0 uses
  tail call void @g_free(ptr noundef nonnull %i.a) #4
  %i.m = load i8, ptr %0, align 8
  %i.n = zext i8 %i.m to i32
  %i.o = tail call ptr @ZSTD_getErrorName(i64 noundef %i.i) #4
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef 168, ptr noundef nonnull @__func__.multifd_zstd_recv_setup, ptr noundef nonnull @.str.7, i32 noundef %i.n, ptr noundef %i.o) #4
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 1048576, ptr %i.p, align 8
  %i.q = tail call noalias dereferenceable_or_null(1048576) ptr @g_try_malloc(i64 noundef 1048576) #5 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.q, ptr %i.r, align 8
  %.not37 = icmp eq ptr %i.q, null
  br i1 %.not37, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.d, align 8
  %i.t = tail call i64 @ZSTD_freeDStream(ptr noundef %i.s) #4 ; 0 uses
  tail call void @g_free(ptr noundef nonnull %i.a) #4
  %i.u = load i8, ptr %0, align 8
  %i.v = zext i8 %i.u to i32
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef 178, ptr noundef nonnull @__func__.multifd_zstd_recv_setup, ptr noundef nonnull @.str.3, i32 noundef %i.v) #4
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.d ], [ -1, %bb.b ], [ -1, %bb.f ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @multifd_zstd_recv_cleanup(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i64 @ZSTD_freeDStream(ptr noundef %i.d) #4 ; 0 uses
  store ptr null, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @g_free(ptr noundef %i.g) #4
  store ptr null, ptr %i.f, align 8
  %i.h = load ptr, ptr %i.a, align 8
  tail call void @g_free(ptr noundef %i.h) #4
  store ptr null, ptr %i.a, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @multifd_zstd_recv(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8 ; 2 uses
  %i.d = trunc i64 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = mul i32 %i.f, %i.d
  %i.h = sub i32 0, %i.g                          ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.j = load i32, ptr %i.i, align 4
  %i.k = and i32 %i.j, 62                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.m = load ptr, ptr %i.l, align 8              ; 8 uses
  %.not = icmp eq i32 %i.k, 4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i8, ptr %0, align 8
  %i.o = zext i8 %i.n to i32
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef 209, ptr noundef nonnull @__func__.multifd_zstd_recv, ptr noundef nonnull @.str.8, i32 noundef %i.o, i32 noundef %i.k, i32 noundef 4) #4
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  tail call void @multifd_recv_zero_page_process(ptr noundef nonnull %0) #4
  %i.p = load i32, ptr %i.e, align 8
  %.not67 = icmp eq i32 %i.p, 0
  br i1 %.not67, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = icmp eq i32 %i.b, 0
  br i1 %i.q, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str, i32 noundef 216, ptr noundef nonnull @__PRETTY_FUNCTION__.multifd_zstd_recv) #6
  unreachable
end_hunk_0
