Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/char?download=true
inline.NumInlined: 71
inline.NumDeleted: 18
begin_hunk_0
@error_fatal = external global ptr, align 8
@__func__.qmp_chardev_add = private unnamed_addr constant [16 x i8] c"qmp_chardev_add\00", align 1
@.str.92 = private unnamed_addr constant [36 x i8] c"Chardev with id '%s' already exists\00", align 1
@ChardevBackendKind_lookup = external constant %struct.QEnumLookup, align 8
@.str.93 = private unnamed_addr constant [29 x i8] c"Failed to add chardev '%s': \00", align 1
@.str.94 = private unnamed_addr constant [9 x i8] c"chardev-\00", align 1
@.str.95 = private unnamed_addr constant [39 x i8] c"g_str_has_prefix(typename, \22chardev-\22)\00", align 1
@__PRETTY_FUNCTION__.qemu_chr_get_filename = private unnamed_addr constant [39 x i8] c"char *qemu_chr_get_filename(Chardev *)\00", align 1
@__func__.qmp_chardev_change = private unnamed_addr constant [19 x i8] c"qmp_chardev_change\00", align 1
@.str.96 = private unnamed_addr constant [28 x i8] c"Chardev '%s' does not exist\00", align 1
@.str.97 = private unnamed_addr constant [12 x i8] c"chardev-mux\00", align 1
@.str.98 = private unnamed_addr constant [12 x i8] c"chardev-hub\00", align 1
@.str.99 = private unnamed_addr constant [51 x i8] c"For mux or hub device hotswap is not supported yet\00", align 1
@.str.100 = private unnamed_addr constant [53 x i8] c"Chardev '%s' cannot be changed in record/replay mode\00", align 1
@.str.101 = private unnamed_addr constant [46 x i8] c"Chardev user does not support chardev hotswap\00", align 1
@.str.102 = private unnamed_addr constant [27 x i8] c"Chardev '%s' change failed\00", align 1
@__func__.qmp_chardev_remove = private unnamed_addr constant [19 x i8] c"qmp_chardev_remove\00", align 1
@.str.103 = private unnamed_addr constant [23 x i8] c"Chardev '%s' not found\00", align 1
@.str.104 = private unnamed_addr constant [21 x i8] c"Chardev '%s' is busy\00", align 1
@.str.105 = private unnamed_addr constant [55 x i8] c"Chardev '%s' cannot be unplugged in record/replay mode\00", align 1
@__func__.qmp_chardev_send_break = private unnamed_addr constant [23 x i8] c"qmp_chardev_send_break\00", align 1
@__func__.qmp_add_client_char = private unnamed_addr constant [20 x i8] c"qmp_add_client_char\00", align 1
@.str.106 = private unnamed_addr constant [25 x i8] c"protocol '%s' is invalid\00", align 1
@.str.107 = private unnamed_addr constant [21 x i8] c"failed to add client\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"func\00", align 1
@__PRETTY_FUNCTION__.qemu_chr_timeout_add_ms = private unnamed_addr constant [72 x i8] c"GSource *qemu_chr_timeout_add_ms(Chardev *, guint, GSourceFunc, void *)\00", align 1
@.str.109 = private unnamed_addr constant [49 x i8] c"/opt-bench/work/qemu/qemu/include/chardev/char.h\00", align 1
@__func__.CHARDEV_GET_CLASS = private unnamed_addr constant [18 x i8] c"CHARDEV_GET_CLASS\00", align 1
@qemu_mutex_lock_func = external local_unnamed_addr global ptr, align 8
@.str.110 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.111 = private unnamed_addr constant [11 x i8] c"chardev-%s\00", align 1
@__func__.char_get_class = private unnamed_addr constant [15 x i8] c"char_get_class\00", align 1
@.str.112 = private unnamed_addr constant [37 x i8] c"'%s' is not a valid char driver name\00", align 1
@.str.113 = private unnamed_addr constant [26 x i8] c"Parameter '%s' expects %s\00", align 1
@.str.114 = private unnamed_addr constant [7 x i8] c"driver\00", align 1
@.str.115 = private unnamed_addr constant [27 x i8] c"a non-abstract device type\00", align 1
@__func__.CHARDEV_CLASS = private unnamed_addr constant [14 x i8] c"CHARDEV_CLASS\00", align 1
@.str.116 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.117 = private unnamed_addr constant [37 x i8] c"Available chardev backend types: %s\0A\00", align 1
@__func__.do_qemu_chr_new_from_opts = private unnamed_addr constant [26 x i8] c"do_qemu_chr_new_from_opts\00", align 1
@.str.118 = private unnamed_addr constant [25 x i8] c"chardev: no id specified\00", align 1
@.str.119 = private unnamed_addr constant [8 x i8] c"%s-base\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.122 = private unnamed_addr constant [6 x i8] c"\0A  %s\00", align 1
@__func__.qemu_chardev_set_replay = private unnamed_addr constant [24 x i8] c"qemu_chardev_set_replay\00", align 1
@.str.123 = private unnamed_addr constant [54 x i8] c"Replay: ioctl is not supported for serial devices yet\00", align 1
@.str.124 = private unnamed_addr constant [9 x i8] c"chardev:\00", align 1
@.str.125 = private unnamed_addr constant [15 x i8] c"permit_mux_mon\00", align 1
@__PRETTY_FUNCTION__.qemu_chr_new_from_name = private unnamed_addr constant [90 x i8] c"Chardev *qemu_chr_new_from_name(const char *, const char *, _Bool, GMainContext *, _Bool)\00", align 1
@.str.126 = private unnamed_addr constant [59 x i8] c"g_str_has_prefix(object_class_get_name(klass), \22chardev-\22)\00", align 1
@__PRETTY_FUNCTION__.chardev_class_foreach = private unnamed_addr constant [50 x i8] c"void chardev_class_foreach(ObjectClass *, void *)\00", align 1
@__func__.CHARDEV = private unnamed_addr constant [8 x i8] c"CHARDEV\00", align 1
@__PRETTY_FUNCTION__.chardev_new = private unnamed_addr constant [100 x i8] c"Chardev *chardev_new(const char *, const char *, ChardevBackend *, GMainContext *, _Bool, Error **)\00", align 1
@.str.127 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.128 = private unnamed_addr constant [30 x i8] c"../chardev/chardev-internal.h\00", align 1
@__func__.MUX_CHARDEV = private unnamed_addr constant [12 x i8] c"MUX_CHARDEV\00", align 1
@.str.129 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@char_type_info = internal constant { ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str.4, ptr @.str.129, i64 144, i64 0, ptr @char_init, ptr null, ptr @char_finalize, i8 1, [7 x i8] zeroinitializer, i64 256, ptr @char_class_init, ptr null, ptr null, ptr null }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @do_qemu_init_register_types, ptr null }]
@.str.131 = private unnamed_addr constant [13 x i8] c"coroutine_fn\00", section "llvm.metadata"
@.str.132 = private unnamed_addr constant [51 x i8] c"/opt-bench/work/qemu/qemu/include/qemu/coroutine.h\00", section "llvm.metadata"
@llvm.global.annotations = appending global [2 x { ptr, ptr, ptr, i32, ptr }] [{ ptr, ptr, ptr, i32, ptr } { ptr @qemu_co_sleep_ns, ptr @.str.131, ptr @.str.132, i32 243, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @qemu_co_sleep_ns_wakeable, ptr @.str.131, ptr @.str.132, i32 235, ptr null }], section "llvm.metadata"

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @get_chardevs_root() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_get_container(ptr noundef nonnull @.str) #13
  ret ptr %i.a
}

declare ptr @object_get_container(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @qemu_chr_be_event(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 1, label %.sink.split
    i32 4, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b
  %.sink = phi i32 [ 0, %bb.b ], [ %1, %bb.a ]
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %.sink, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %i.b = tail call ptr @object_get_class(ptr noundef %0) #13
  %i.c = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.109, i32 noundef 232, ptr noundef nonnull @__func__.CHARDEV_GET_CLASS) #13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef %0, i32 noundef %1) #13
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc ptr @CHARDEV_GET_CLASS(ptr noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @object_get_class(ptr noundef %0) #13
  %i.b = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.109, i32 noundef 232, ptr noundef nonnull @__func__.CHARDEV_GET_CLASS) #13
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @qemu_chr_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 0, ptr %i.b, align 4, !annotation !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 4
  %i.f = icmp ne i64 %i.e, 0
  %i.g = load i32, ptr @replay_mode, align 4      ; 2 uses
  %i.h = icmp eq i32 %i.g, 2
  %or.cond = select i1 %i.f, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @replay_char_write_event_load(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #13
  %i.i = load i32, ptr %i.a, align 4              ; 2 uses
  %.not = icmp sgt i32 %i.i, %2
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @__assert_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__.qemu_chr_write) #14
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = call fastcc i32 @qemu_chr_write_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.i, ptr noundef %i.a, i1 noundef zeroext true) ; 0 uses
  %i.k = load i32, ptr %i.b, align 4
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.l = icmp eq i32 %i.g, 1
  %spec.select = or i1 %3, %i.l
  %i.m = call fastcc i32 @qemu_chr_write_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.a, i1 noundef zeroext %spec.select) ; 3 uses
  %i.n = load i64, ptr %i.c, align 8
  %i.o = and i64 %i.n, 4
  %i.p = icmp ne i64 %i.o, 0
  %i.q = load i32, ptr @replay_mode, align 4
  %i.r = icmp eq i32 %i.q, 1
  %or.cond3 = select i1 %i.p, i1 %i.r, i1 false
  %.pre = load i32, ptr %i.a, align 4             ; 2 uses
  br i1 %or.cond3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @replay_char_write_event_save(i32 noundef %i.m, i32 noundef %.pre) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = icmp slt i32 %i.m, 0
  %spec.select15 = select i1 %i.s, i32 %i.m, i32 %.pre
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.012 = phi i32 [ %i.k, %bb.d ], [ %spec.select15, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.012
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local zeroext i1 @qemu_chr_has_feature(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = lshr i64 %i.a, 6
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.a, 63
  %i.g = lshr i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i1
  ret i1 %i.h
}

declare void @replay_char_write_event_load(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @qemu_chr_write_buffer(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef nonnull captures(none) initializes((0, 4)) %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.QemuCoSleep, align 8        ; 4 uses
  %i.a = tail call ptr @object_get_class(ptr noundef %0) #13
  %i.b = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.109, i32 noundef 232, ptr noundef nonnull @__func__.CHARDEV_GET_CLASS) #13
  store i32 0, ptr %3, align 4
  %i.c = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void %i.c(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.2, i32 noundef 152) #13
  %6 = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.e = load i32, ptr %3, align 4                ; 3 uses
  %i.f = icmp slt i32 %i.e, %2
  br i1 %i.f, label %.preheader.us, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.f
  %7 = icmp slt i32 %i.z, %2
  br i1 %7, label %.preheader.us, label %.loopexit, !llvm.loop !12

.preheader.us:                                    ; preds = %bb.a, %.preheader.lr.ph
  %i.g = phi i32 [ %i.z, %.preheader.lr.ph ], [ %i.e, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr %6, align 8
  %i.i = sext i32 %i.g to i64
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i
  %i.k = sub i32 %2, %i.g
  %i.l = call i32 %i.h(ptr noundef %0, ptr noundef %i.j, i32 noundef %i.k) #13 ; 4 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph.us, label %._crit_edge.us

.lr.ph.us:                                        ; preds = %.preheader.us
  %i.n = tail call ptr @__errno_location() #15    ; 2 uses
  br i1 %4, label %bb.b, label %..loopexit_crit_edge43.split

bb.b:                                             ; preds = %.lr.ph.us
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %i.o, 11
  br i1 %i.p, label %bb.c, label %..loopexit_crit_edge43.split

.lr.ph38.us:                                      ; preds = %bb.e
  %8 = load i32, ptr %i.n, align 4
  %9 = icmp eq i32 %8, 11
  br i1 %9, label %bb.c, label %..loopexit_crit_edge43.split

bb.c:                                             ; preds = %bb.b, %.lr.ph38.us
  %10 = call zeroext i1 @qemu_in_coroutine() #13
  br i1 %10, label %bb.d, label %11

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store i64 0, ptr %5, align 8
  call void @qemu_co_sleep_ns_wakeable(ptr noundef nonnull %5, i32 noundef 0, i64 noundef 100000) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.e

11:                                               ; preds = %bb.c
  call void @g_usleep(i64 noundef 100) #13
  br label %bb.e

bb.e:                                             ; preds = %11, %bb.d
  %i.q = load ptr, ptr %6, align 8
  %i.r = load i32, ptr %3, align 4                ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %1, i64 %i.s
  %i.u = sub i32 %2, %i.r
  %i.v = call i32 %i.q(ptr noundef %0, ptr noundef %i.t, i32 noundef %i.u) #13 ; 3 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph38.us, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.e, %.preheader.us
  %.lcssa.us = phi i32 [ %i.l, %.preheader.us ], [ %i.v, %bb.e ] ; 4 uses
  %i.x = icmp eq i32 %.lcssa.us, 0
  br i1 %i.x, label %..loopexit_crit_edge43.split, label %bb.f

bb.f:                                             ; preds = %._crit_edge.us
  %i.y = load i32, ptr %3, align 4
  %i.z = add i32 %i.y, %.lcssa.us                 ; 5 uses
  store i32 %i.z, ptr %3, align 4
  br i1 %4, label %.preheader.lr.ph, label %thread-pre-split, !llvm.loop !12

..loopexit_crit_edge43.split:                     ; preds = %._crit_edge.us, %.lr.ph.us, %bb.b, %.lr.ph38.us
  %12 = phi i32 [ %i.v, %.lr.ph38.us ], [ %i.l, %.lr.ph.us ], [ %i.l, %bb.b ], [ 0, %._crit_edge.us ]
  %.pr = load i32, ptr %3, align 4
  br label %.loopexit

thread-pre-split:                                 ; preds = %bb.f
  br label %.loopexit, !llvm.loop !12

.loopexit:                                        ; preds = %.preheader.lr.ph, %bb.a, %thread-pre-split, %..loopexit_crit_edge43.split
  %13 = phi i32 [ %.pr, %..loopexit_crit_edge43.split ], [ %i.z, %thread-pre-split ], [ %i.e, %bb.a ], [ %i.z, %.preheader.lr.ph ] ; 2 uses
  %.1 = phi i32 [ %12, %..loopexit_crit_edge43.split ], [ %.lcssa.us, %thread-pre-split ], [ 0, %bb.a ], [ %.lcssa.us, %.preheader.lr.ph ] ; 2 uses
  %i.aa = icmp sgt i32 %13, 0
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit
  %i.ab = zext nneg i32 %13 to i64
  br label %.thread.sink.split

bb.h:                                             ; preds = %.loopexit
  %i.ac = icmp slt i32 %.1, 0
  br i1 %i.ac, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ad = sext i32 %2 to i64
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.g, %bb.i
  %.sink = phi i64 [ %i.ad, %bb.i ], [ %i.ab, %bb.g ]
  call fastcc void @qemu_chr_write_log(ptr noundef %0, ptr noundef %1, i64 noundef %.sink)
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.h
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.2, i32 noundef 190) #13
  ret i32 %.1
}

declare void @replay_char_write_event_save(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @qemu_chr_be_can_write(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not7 = icmp eq ptr %i.d, null
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i32 %i.d(ptr noundef %i.f) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.g, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @qemu_chr_be_write_impl(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not7 = icmp eq ptr %i.d, null
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.d(ptr noundef %i.f, ptr noundef %1, i32 noundef %2) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @qemu_chr_be_write(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 4
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @replay_mode, align 4
  %i.e = icmp eq i32 %i.d, 2
  br i1 %i.e, label %qemu_chr_be_write_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @replay_chr_be_write(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #13
  br label %qemu_chr_be_write_impl.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %qemu_chr_be_write_impl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not7.i = icmp eq ptr %i.i, null
  br i1 %.not7.i, label %qemu_chr_be_write_impl.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.i(ptr noundef %i.k, ptr noundef %1, i32 noundef %2) #13, !inline_history !13
  br label %qemu_chr_be_write_impl.exit

qemu_chr_be_write_impl.exit:                      ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.c
  ret void
}

declare void @replay_chr_be_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @qemu_chr_be_update_read_handlers(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_get_class(ptr noundef %0) #13
  %i.b = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.109, i32 noundef 232, ptr noundef nonnull @__func__.CHARDEV_GET_CLASS) #13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 8
  %i.f = icmp ne i64 %i.e, 0
  %i.g = icmp eq ptr %1, null
  %or.cond.not = or i1 %i.g, %i.f
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 269, ptr noundef nonnull @__PRETTY_FUNCTION__.qemu_chr_be_update_read_handlers) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.j(ptr noundef nonnull %0) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @qemu_chr_add_client(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_get_class(ptr noundef %0) #13
  %i.b = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.109, i32 noundef 232, ptr noundef nonnull @__func__.CHARDEV_GET_CLASS) #13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.d = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @object_get_class(ptr noundef %0) #13
  %i.f = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.e, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.109, i32 noundef 232, ptr noundef nonnull @__func__.CHARDEV_GET_CLASS) #13
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i32 %i.h(ptr noundef %0, i32 noundef %1) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi i32 [ %i.i, %bb.b ], [ -1, %bb.a ]
  ret i32 %i.j
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @qemu_chr_wait_connected(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_get_class(ptr noundef %0) #13
  %i.b = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.109, i32 noundef 232, ptr noundef nonnull @__func__.CHARDEV_GET_CLASS) #13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 %i.d(ptr noundef %0, ptr noundef %1) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @qemu_chr_parse_compat(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [65 x i8], align 16               ; 12 uses
  %i.b = alloca [33 x i8], align 16               ; 12 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %i.e = alloca i32, align 4                      ; 11 uses
  %i.f = alloca ptr, align 8                      ; 32 uses
  %i.g = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65) %i.a, i8 0, i64 65, i1 false), !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(33) %i.b, i8 0, i64 33, i1 false), !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i64 0, ptr %i.c, align 8, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i64 0, ptr %i.d, align 8, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  store i32 0, ptr %i.e, align 4, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  store ptr null, ptr %i.f, align 8, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  store ptr null, ptr %i.g, align 8
  %i.h = tail call ptr @qemu_find_opts(ptr noundef nonnull @.str.4) #13
  %i.i = call ptr @qemu_opts_create(ptr noundef %i.h, ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.g) #13 ; 54 uses
  %i.j = load ptr, ptr %i.g, align 8              ; 2 uses
end_hunk_0
