Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/tdx-quote-generator?download=true
inline.NumInlined: 13
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.2 = private unnamed_addr constant [12 x i8] c"qio-channel\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"/opt-bench/work/qemu/qemu/include/io/channel.h\00", align 1
@__func__.QIO_CHANNEL = private unnamed_addr constant [12 x i8] c"QIO_CHANNEL\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"End of file before reply received\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Message len %u must be non-zero & less than %zu\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Invalid QGS message header version %d.%d\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Invalid QGS message type %d\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"QGS message size %d exceeds payload capacity %zu\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"QGS message error code %d\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"QGS message selected ID was %d not 0\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"QGS quote size %d should be %zu\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tdx_generate_quote(ptr noundef initializes((96, 104)) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = add i32 %i.c, 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = add i64 %i.b, 28
  %i.h = tail call ptr @g_realloc(ptr noundef %i.f, i64 noundef %i.g) #4 ; 3 uses
  store ptr %i.h, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.j = load i64, ptr %i.a, align 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.i, ptr noundef nonnull align 1 %i.h, i64 noundef %i.j, i1 noundef false) #4
  %i.k = load ptr, ptr %i.e, align 8              ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i16 1, ptr %i.l, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  store i16 1, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 %i.d, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  store i32 %i.c, ptr %.sroa.8.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i32 0, ptr %.sroa.9.0..sroa_idx, align 1
  %i.m = load ptr, ptr %i.e, align 8
  %i.n = load i64, ptr %i.a, align 8
  %i.o = trunc i64 %i.n to i32
  %i.p = add i32 %i.o, 24
  %2 = tail call i32 @llvm.bswap.i32(i32 %i.p)
  store i32 %2, ptr %i.m, align 1
  %i.q = load i64, ptr %i.a, align 8
  %i.r = add i64 %i.q, 28
  store i64 %i.r, ptr %i.a, align 8
  %i.s = tail call ptr @qio_channel_socket_new() #4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.s, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  tail call void @timer_init_full(ptr noundef nonnull %i.u, ptr noundef null, i32 noundef 1, i32 noundef 1000000, i32 noundef 0, ptr noundef nonnull @getquote_expired, ptr noundef %0) #4
  %i.v = tail call i64 @qemu_clock_get_ns(i32 noundef 1) #4
  %i.w = sdiv i64 %i.v, 1000000
  %i.x = add nsw i64 %i.w, 30000
  tail call void @timer_mod(ptr noundef nonnull %i.u, i64 noundef %i.x) #4
  tail call void @qio_channel_socket_connect_async(ptr noundef %i.s, ptr noundef %1, ptr noundef nonnull @tdx_quote_generator_connected, ptr noundef %0, ptr noundef null, ptr noundef null) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @g_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @qio_channel_socket_new() local_unnamed_addr #2

declare void @qio_channel_socket_connect_async(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @tdx_quote_generator_connected(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store ptr null, ptr %i.a, align 8
  %i.b = call zeroext i1 @qio_task_propagate_error(ptr noundef %0, ptr noundef nonnull %i.a) #4
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8
  call void @error_report_err(ptr noundef %i.c) #4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 -9223372036854775807, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @timer_del(ptr noundef nonnull %i.e) #4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %tdx_generate_quote_cleanup.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8
  %i.h = call i32 @g_source_remove(i32 noundef %i.g) #4 ; 0 uses
  br label %tdx_generate_quote_cleanup.exit

tdx_generate_quote_cleanup.exit:                  ; preds = %bb.b, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call ptr @object_dynamic_cast_assert(ptr noundef %i.j, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 30, ptr noundef nonnull @__func__.QIO_CHANNEL) #4
  %i.l = call i32 @qio_channel_close(ptr noundef %i.k, ptr noundef null) #4 ; 0 uses
  %i.m = load ptr, ptr %i.i, align 8
  call void @object_unref(ptr noundef %i.m) #4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull %1) #4, !inline_history !0
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = call ptr @object_dynamic_cast_assert(ptr noundef %i.q, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 30, ptr noundef nonnull @__func__.QIO_CHANNEL) #4
  %i.s = call i32 @qio_channel_add_watch(ptr noundef %i.r, i32 noundef 4, ptr noundef nonnull @tdx_send_report, ptr noundef %1, ptr noundef null) #4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i32 %i.s, ptr %i.t, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %tdx_generate_quote_cleanup.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @getquote_expired(ptr noundef initializes((64, 72)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 -9223372036854775808, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @timer_del(ptr noundef nonnull %i.b) #4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %tdx_generate_quote_cleanup.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.c, align 8
  %i.e = tail call i32 @g_source_remove(i32 noundef %i.d) #4 ; 0 uses
  br label %tdx_generate_quote_cleanup.exit

tdx_generate_quote_cleanup.exit:                  ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.g, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 30, ptr noundef nonnull @__func__.QIO_CHANNEL) #4
  %i.i = tail call i32 @qio_channel_close(ptr noundef %i.h, ptr noundef null) #4 ; 0 uses
  %i.j = load ptr, ptr %i.f, align 8
  tail call void @object_unref(ptr noundef %i.j) #4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull %0) #4, !inline_history !0
  ret void
}

declare void @timer_mod(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @timer_init_full(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @timer_del(ptr noundef) local_unnamed_addr #2

declare i32 @g_source_remove(i32 noundef) local_unnamed_addr #2

declare i32 @qio_channel_close(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @object_unref(ptr noundef) local_unnamed_addr #2

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @qemu_clock_get_ns(i32 noundef) local_unnamed_addr #2

declare zeroext i1 @qio_task_propagate_error(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @error_report_err(ptr noundef) local_unnamed_addr #2

declare i32 @qio_channel_add_watch(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 2) i32 @tdx_send_report(ptr noundef %0, i32 %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = sub i64 %i.h, %i.e
  %i.j = call i64 @qio_channel_write(ptr noundef %0, ptr noundef %i.f, i64 noundef %i.i, ptr noundef nonnull %i.a) #4 ; 2 uses
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.m = icmp eq i32 %i.k, -2
  br i1 %i.m, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.a, align 8
  call void @error_report_err(ptr noundef %i.n) #4
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 -9223372036854775808, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @timer_del(ptr noundef nonnull %i.p) #4
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %tdx_generate_quote_cleanup.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.q, align 8
  %i.s = call i32 @g_source_remove(i32 noundef %i.r) #4 ; 0 uses
  br label %tdx_generate_quote_cleanup.exit

tdx_generate_quote_cleanup.exit:                  ; preds = %bb.c, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call ptr @object_dynamic_cast_assert(ptr noundef %i.u, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 30, ptr noundef nonnull @__func__.QIO_CHANNEL) #4
  %i.w = call i32 @qio_channel_close(ptr noundef %i.v, ptr noundef null) #4 ; 0 uses
  %i.x = load ptr, ptr %i.t, align 8
  call void @object_unref(ptr noundef %i.x) #4
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull %2) #4, !inline_history !0
  br label %bb.g

bb.e:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.j, %bb.a ], [ 0, %bb.b ]
  %i.aa = and i64 %.0, 4294967295
  %i.ab = load i64, ptr %i.d, align 8
  %i.ac = add i64 %i.ab, %i.aa                    ; 2 uses
  store i64 %i.ac, ptr %i.d, align 8
  %i.ad = load i64, ptr %i.g, align 8
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call ptr @object_dynamic_cast_assert(ptr noundef %i.ag, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 30, ptr noundef nonnull @__func__.QIO_CHANNEL) #4
  %i.ai = call i32 @qio_channel_add_watch(ptr noundef %i.ah, i32 noundef 1, ptr noundef nonnull @tdx_get_quote_read, ptr noundef nonnull %2, ptr noundef null) #4
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i32 %i.ai, ptr %i.aj, align 8
  br label %bb.g

bb.g:                                             ; preds = %tdx_generate_quote_cleanup.exit, %bb.f, %bb.e
  %.017 = phi i32 [ 1, %bb.e ], [ 0, %bb.f ], [ 0, %tdx_generate_quote_cleanup.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.017
}

declare i64 @qio_channel_write(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 2) i32 @tdx_get_quote_read(ptr noundef %0, i32 %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 6 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = sub i64 %i.h, %i.e
  %i.j = call i64 @qio_channel_read(ptr noundef %0, ptr noundef %i.f, i64 noundef %i.i, ptr noundef nonnull %i.a) #4 ; 2 uses
  %i.k = trunc i64 %i.j to i32                    ; 3 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = icmp eq i32 %i.k, -2
  br i1 %i.m, label %bb.y, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.a, align 8
  call void @error_report_err(ptr noundef %i.n) #4
  br label %.thread104

bb.d:                                             ; preds = %bb.a
  %i.o = icmp eq i32 %i.k, 0
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.4) #4
  br label %.thread104

bb.f:                                             ; preds = %bb.d
  %i.p = and i64 %i.j, 2147483647
  %i.q = load i64, ptr %i.d, align 8
  %i.r = add i64 %i.q, %i.p                       ; 3 uses
  store i64 %i.r, ptr %i.d, align 8
  %i.s = icmp ugt i64 %i.r, 3
  %.pre114 = load i64, ptr %i.g, align 8          ; 3 uses
  br i1 %i.s, label %bb.g, label %.thread108

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.v, 16
  %i.aa = shl nuw nsw i32 %i.y, 8
  %i.ab = or disjoint i32 %i.aa, %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ab, %i.ae
  %i.ag = shl nuw i32 %i.af, 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.ag, %i.aj            ; 4 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %._crit_edge115, label %bb.h

._crit_edge115:                                   ; preds = %bb.g
  %.pre116 = add i64 %.pre114, -4
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = zext i32 %i.ak to i64
  %i.an = add i64 %.pre114, -4                    ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.am
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge115, %bb.h
  %.pre-phi = phi i64 [ %.pre116, %._crit_edge115 ], [ %i.an, %bb.h ]
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.5, i32 noundef %i.ak, i64 noundef %.pre-phi) #4
  br label %.thread104

bb.j:                                             ; preds = %bb.h
  %i.ap = add i32 %i.ak, 4
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  store i64 %i.aq, ptr %i.g, align 8
  %i.ar = call ptr @g_realloc(ptr noundef nonnull %i.t, i64 noundef %i.aq) #4 ; 8 uses
  store ptr %i.ar, ptr %i.b, align 8
  %.pr = load i64, ptr %i.d, align 8              ; 5 uses
  %i.as = icmp ugt i64 %.pr, 19
  br i1 %i.as, label %bb.k, label %..thread108_crit_edge

..thread108_crit_edge:                            ; preds = %bb.j
  %.pre113 = load i64, ptr %i.g, align 8
  br label %.thread108

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.au = load i16, ptr %i.at, align 4            ; 2 uses
  %.not = icmp eq i16 %i.au, 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 6
  %i.aw = load i16, ptr %i.av, align 2            ; 2 uses
  %.not95 = icmp eq i16 %i.aw, 1
  %or.cond = select i1 %.not, i1 %.not95, i1 false
  br i1 %or.cond, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k
  %i.ax = zext i16 %i.au to i32
  %i.ay = zext i16 %i.aw to i32
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.6, i32 noundef %i.ax, i32 noundef %i.ay) #4
  br label %.thread104

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ba = load i32, ptr %i.az, align 4            ; 2 uses
  %.not96 = icmp eq i32 %i.ba, 1
  br i1 %.not96, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.7, i32 noundef %i.ba) #4
  br label %.thread104

bb.n:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.bc = load i32, ptr %i.bb, align 4            ; 2 uses
  %i.bd = zext i32 %i.bc to i64
  %i.be = load i64, ptr %i.g, align 8             ; 6 uses
  %i.bf = add i64 %i.be, -4
  %i.bg = icmp ult i64 %i.bf, %i.bd
  br i1 %i.bg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.8, i32 noundef %i.bc, i64 noundef %i.be) #4
  br label %.thread104

bb.p:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bi = load i32, ptr %i.bh, align 4            ; 2 uses
  %.not97 = icmp eq i32 %i.bi, 0
  br i1 %.not97, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.9, i32 noundef %i.bi) #4
  br label %.thread104

bb.r:                                             ; preds = %bb.p
  %i.bj = icmp ugt i64 %.pr, 27
  br i1 %i.bj, label %bb.s, label %.thread108

bb.s:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  %i.bl = load i32, ptr %i.bk, align 4            ; 2 uses
  %.not98 = icmp eq i32 %i.bl, 0
  br i1 %.not98, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.10, i32 noundef %i.bl) #4
  br label %.thread104

bb.u:                                             ; preds = %bb.s
  %i.bm = add i64 %i.be, -28
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.bo = load i32, ptr %i.bn, align 4            ; 2 uses
  %i.bp = zext i32 %i.bo to i64
  %.not99 = icmp eq i64 %i.bm, %i.bp
  br i1 %.not99, label %.thread108, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add i64 %i.be, -24
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.11, i32 noundef %i.bo, i64 noundef %i.bq) #4
  br label %.thread104

.thread108:                                       ; preds = %..thread108_crit_edge, %bb.f, %bb.u, %bb.r
  %i.br = phi i64 [ %.pre114, %bb.f ], [ %.pre113, %..thread108_crit_edge ], [ %i.be, %bb.u ], [ %i.be, %bb.r ] ; 2 uses
  %i.bs = phi i64 [ %i.r, %bb.f ], [ %.pr, %..thread108_crit_edge ], [ %.pr, %bb.u ], [ %.pr, %bb.r ]
  %i.bt = icmp eq i64 %i.bs, %i.br
  br i1 %i.bt, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.thread108
  %i.bu = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 28
  %i.bw = add i64 %i.br, -28
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.bu, ptr noundef nonnull align 1 %i.bv, i64 noundef %i.bw, i1 noundef false) #4
  %i.bx = load i64, ptr %i.d, align 8
  %i.by = add i64 %i.bx, -28
  store i64 %i.by, ptr %i.d, align 8
  br label %.thread104

.thread104:                                       ; preds = %bb.v, %bb.t, %bb.q, %bb.o, %bb.m, %._crit_edge, %bb.i, %bb.w, %bb.e, %bb.c
  %.sink = phi i64 [ -9223372036854775808, %bb.v ], [ -9223372036854775808, %bb.t ], [ -9223372036854775808, %bb.q ], [ -9223372036854775808, %bb.o ], [ -9223372036854775808, %bb.m ], [ -9223372036854775808, %._crit_edge ], [ -9223372036854775808, %bb.i ], [ 0, %bb.w ], [ -9223372036854775808, %bb.e ], [ -9223372036854775808, %bb.c ]
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %.sink, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @timer_del(ptr noundef nonnull %i.ca) #4
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8            ; 2 uses
  %.not.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i, label %tdx_generate_quote_cleanup.exit, label %bb.x

bb.x:                                             ; preds = %.thread104
  store i32 0, ptr %i.cb, align 8
  %i.cd = call i32 @g_source_remove(i32 noundef %i.cc) #4 ; 0 uses
  br label %tdx_generate_quote_cleanup.exit

tdx_generate_quote_cleanup.exit:                  ; preds = %.thread104, %bb.x
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = call ptr @object_dynamic_cast_assert(ptr noundef %i.cf, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 30, ptr noundef nonnull @__func__.QIO_CHANNEL) #4
  %i.ch = call i32 @qio_channel_close(ptr noundef %i.cg, ptr noundef null) #4 ; 0 uses
  %i.ci = load ptr, ptr %i.ce, align 8
  call void @object_unref(ptr noundef %i.ci) #4
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull %2) #4, !inline_history !0
  br label %bb.y

bb.y:                                             ; preds = %.thread108, %bb.b, %tdx_generate_quote_cleanup.exit
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %tdx_generate_quote_cleanup.exit ], [ 1, %.thread108 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.0
}

declare i64 @qio_channel_read(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @error_report(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #3

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !{null}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
end_hunk_0
