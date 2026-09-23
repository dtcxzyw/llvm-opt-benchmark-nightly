Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vmmouse?download=true
inline.NumInlined: 42
inline.NumDeleted: 24
begin_hunk_0
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"vmport\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"vmmouse needs a machine with vmport\00", align 1
@__func__.VMMOUSE = private unnamed_addr constant [8 x i8] c"VMMOUSE\00", align 1
@trace_events_enabled_count = external local_unnamed_addr global i32, align 4
@_TRACE_VMMOUSE_INIT_DSTATE = external local_unnamed_addr global i16, align 2
@.str.10 = private unnamed_addr constant [15 x i8] c"vmmouse_init \0A\00", align 1
@qemu_loglevel = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [30 x i8] c"vmmouse: unknown command %lx\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"vmmouse: unknown command %x\0A\00", align 1
@current_cpu = external thread_local local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [11 x i8] c"x86_64-cpu\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"/opt-bench/work/qemu/qemu/target/i386/cpu-qom.h\00", align 1
@__func__.X86_CPU = private unnamed_addr constant [8 x i8] c"X86_CPU\00", align 1
@_TRACE_VMMOUSE_GET_STATUS_DSTATE = external local_unnamed_addr global i16, align 2
@.str.15 = private unnamed_addr constant [21 x i8] c"vmmouse_get_status \0A\00", align 1
@_TRACE_VMMOUSE_DISABLE_DSTATE = external local_unnamed_addr global i16, align 2
@.str.16 = private unnamed_addr constant [18 x i8] c"vmmouse_disable \0A\00", align 1
@_TRACE_VMMOUSE_READ_ID_DSTATE = external local_unnamed_addr global i16, align 2
@.str.17 = private unnamed_addr constant [18 x i8] c"vmmouse_read_id \0A\00", align 1
@vmmouse_update_handler.vmmouse_abs_handler = internal constant { ptr, i32, [4 x i8], ptr, ptr } { ptr @.str, i32 10, [4 x i8] zeroinitializer, ptr @vmmouse_input_event, ptr @vmmouse_input_sync }, align 8
@vmmouse_update_handler.vmmouse_rel_handler = internal constant { ptr, i32, [4 x i8], ptr, ptr } { ptr @.str, i32 6, [4 x i8] zeroinitializer, ptr @vmmouse_input_event, ptr @vmmouse_input_sync }, align 8
@_TRACE_VMMOUSE_QUEUE_EVENT_DSTATE = external local_unnamed_addr global i16, align 2
@.str.18 = private unnamed_addr constant [53 x i8] c"vmmouse_queue_event event: x=%d y=%d dz=%d state=%d\0A\00", align 1
@__func__.DEVICE = private unnamed_addr constant [7 x i8] c"DEVICE\00", align 1
@_TRACE_VMMOUSE_REQUEST_RELATIVE_DSTATE = external local_unnamed_addr global i16, align 2
@.str.19 = private unnamed_addr constant [27 x i8] c"vmmouse_request_relative \0A\00", align 1
@_TRACE_VMMOUSE_REQUEST_ABSOLUTE_DSTATE = external local_unnamed_addr global i16, align 2
@.str.20 = private unnamed_addr constant [27 x i8] c"vmmouse_request_absolute \0A\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"vmmouse: driver requested too much data %d\0A\00", align 1
@_TRACE_VMMOUSE_DATA_DSTATE = external local_unnamed_addr global i16, align 2
@.str.22 = private unnamed_addr constant [28 x i8] c"vmmouse_data data: size=%u\0A\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"queue_size\00", align 1
@vmstate_info_int32_equal = external constant %struct.VMStateInfo, align 8
@.str.24 = private unnamed_addr constant [6 x i8] c"queue\00", align 1
@vmstate_info_uint32 = external constant %struct.VMStateInfo, align 8
@.str.25 = private unnamed_addr constant [9 x i8] c"nb_queue\00", align 1
@vmstate_info_uint16 = external constant %struct.VMStateInfo, align 8
@.str.26 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"absolute\00", align 1
@vmstate_info_uint8 = external constant %struct.VMStateInfo, align 8
@.compoundliteral = internal constant [6 x { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr }] [{ ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.23, i64 4256, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_int32_equal, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.24, i64 160, i64 4, i64 0, i64 0, i32 1024, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 4, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.25, i64 4260, i64 2, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint16, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.26, i64 4262, i64 2, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint16, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.27, i64 4264, i64 1, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint8, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr null, i64 0, i64 0, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 131072, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }], align 8
@vmstate_vmmouse = internal constant { ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0, i32 0, i32 0, ptr null, ptr null, ptr @vmmouse_post_load, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.compoundliteral, ptr null }, align 8
@.str.29 = private unnamed_addr constant [6 x i8] c"i8042\00", align 1
@qdev_prop_link = external constant %struct.PropertyInfo, align 8
@vmmouse_properties = internal constant [1 x { ptr, ptr, i64, ptr, i64, %union.anon, ptr, i32, i32, i8, i8, [6 x i8] }] [{ ptr, ptr, i64, ptr, i64, %union.anon, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.29, ptr @qdev_prop_link, i64 4304, ptr @.str.29, i64 0, %union.anon zeroinitializer, ptr null, i32 0, i32 0, i8 0, i8 0, [6 x i8] zeroinitializer }], align 16
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @do_qemu_init_vmmouse_register_types, ptr null }]

; Function Attrs: nounwind sspstrong uwtable
define internal void @do_qemu_init_vmmouse_register_types() #0 {
bb.a:
  tail call void @register_module_init(ptr noundef nonnull @vmmouse_register_types, i32 noundef 4) #4
  ret void
}

declare void @register_module_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @vmmouse_register_types() #0 {
bb.a:
  %i.a = tail call ptr @type_register_static(ptr noundef nonnull @vmmouse_info) #4 ; 0 uses
  ret void
}

declare ptr @type_register_static(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @vmmouse_class_initfn(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE_CLASS) #4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr @vmmouse_realizefn, ptr %i.b, align 8
  tail call void @device_class_set_legacy_reset(ptr noundef %i.a, ptr noundef nonnull @vmmouse_reset) #4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr @vmstate_vmmouse, ptr %i.c, align 8
  tail call void @device_class_set_props_n(ptr noundef %i.a, ptr noundef nonnull @vmmouse_properties, i64 noundef 1) #4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = or i64 %i.e, 16
  store i64 %i.f, ptr %i.d, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @vmmouse_realizefn(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 61, ptr noundef nonnull @__func__.VMMOUSE) #4 ; 4 uses
  %i.b = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %trace_vmmouse_init.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr @_TRACE_VMMOUSE_INIT_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.c, 0
  br i1 %.not1.i, label %trace_vmmouse_init.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @qemu_loglevel, align 4
  %i.e = and i32 %i.d, 32768
  %.not2.i = icmp eq i32 %i.e, 0
  br i1 %.not2.i, label %trace_vmmouse_init.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.10) #4
  br label %trace_vmmouse_init.exit

trace_vmmouse_init.exit:                          ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4304
  %i.g = load ptr, ptr %i.f, align 8
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %trace_vmmouse_init.exit
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef 360, ptr noundef nonnull @__func__.vmmouse_realizefn, ptr noundef nonnull @.str.6) #4
  br label %bb.i

bb.f:                                             ; preds = %trace_vmmouse_init.exit
  %i.h = tail call ptr @object_resolve_path_type(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef null) #4
  %.not7 = icmp eq ptr %i.h, null
  br i1 %.not7, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef 364, ptr noundef nonnull @__func__.vmmouse_realizefn, ptr noundef nonnull @.str.9) #4
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @vmport_register(i32 noundef 40, ptr noundef nonnull @vmmouse_ioport_read, ptr noundef nonnull %i.a) #4
  tail call void @vmport_register(i32 noundef 41, ptr noundef nonnull @vmmouse_ioport_read, ptr noundef nonnull %i.a) #4
  tail call void @vmport_register(i32 noundef 39, ptr noundef nonnull @vmmouse_ioport_read, ptr noundef nonnull %i.a) #4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  ret void
}

declare void @device_class_set_legacy_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @vmmouse_reset(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 61, ptr noundef nonnull @__func__.VMMOUSE) #4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4256
  store i32 1024, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4260
  store i16 0, ptr %i.c, align 4
  %i.d = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %trace_vmmouse_disable.exit.i, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.e = load i16, ptr @_TRACE_VMMOUSE_DISABLE_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.e, 0
  br i1 %.not1.i.i, label %trace_vmmouse_disable.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr @qemu_loglevel, align 4
  %i.g = and i32 %i.f, 32768
  %.not2.i.i = icmp eq i32 %i.g, 0
  br i1 %.not2.i.i, label %trace_vmmouse_disable.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.16) #4
  br label %trace_vmmouse_disable.exit.i

trace_vmmouse_disable.exit.i:                     ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4262
  store i16 -1, ptr %i.h, align 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4272 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  store ptr null, ptr %i.i, align 8
  %.not.i2.i = icmp eq ptr %i.j, null
  br i1 %.not.i2.i, label %vmmouse_disable.exit, label %bb.e

bb.e:                                             ; preds = %trace_vmmouse_disable.exit.i
  tail call void @qemu_input_handler_unregister(ptr noundef nonnull %i.j) #4
  br label %vmmouse_disable.exit

vmmouse_disable.exit:                             ; preds = %trace_vmmouse_disable.exit.i, %bb.e
  ret void
}

declare void @device_class_set_props_n(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @error_setg_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @object_resolve_path_type(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @vmport_register(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @vmmouse_ioport_read(ptr noundef %0, i32 %1) #0 {
bb.a:
  %i.a = alloca [6 x i64], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @current_cpu) ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.c, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #4 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16496
  %i.f = load i64, ptr %i.e, align 16
  store i64 %i.f, ptr %i.a, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16520
  %i.h = load i64, ptr %i.g, align 8              ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16504 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load <2 x i64>, ptr %i.j, align 8
  %i.m = load i64, ptr %i.j, align 8              ; 2 uses
  store <2 x i64> %i.l, ptr %i.k, align 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16544
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.p = load <2 x i64>, ptr %i.n, align 16
  store <2 x i64> %i.p, ptr %i.o, align 16
  %trunc = trunc i64 %i.m to i16
  switch i16 %trunc, label %bb.ap [
    i16 40, label %bb.b
    i16 41, label %bb.f
    i16 39, label %bb.ah
  ]

bb.b:                                             ; preds = %bb.a
  %i.q = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %vmmouse_get_status.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.r = load i16, ptr @_TRACE_VMMOUSE_GET_STATUS_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.r, 0
  br i1 %.not1.i.i, label %vmmouse_get_status.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load i32, ptr @qemu_loglevel, align 4
  %i.t = and i32 %i.s, 32768
  %.not2.i.i = icmp eq i32 %i.t, 0
  br i1 %.not2.i.i, label %vmmouse_get_status.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.15) #4
  br label %vmmouse_get_status.exit

vmmouse_get_status.exit:                          ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.u = getelementptr i8, ptr %0, i64 4260
  %i.v = load i32, ptr %i.u, align 4
  %i.w = zext i32 %i.v to i64
  store i64 %i.w, ptr %i.a, align 16
  br label %vmmouse_disable.exit

bb.f:                                             ; preds = %bb.a
  switch i64 %i.h, label %bb.ag [
    i64 245, label %bb.g
    i64 1161905490, label %bb.l
    i64 1279611474, label %bb.q
    i64 1396851026, label %bb.y
  ]

bb.g:                                             ; preds = %bb.f
  %i.x = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i8 = icmp eq i32 %i.x, 0
  br i1 %.not.i.i8, label %trace_vmmouse_disable.exit.i, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.y = load i16, ptr @_TRACE_VMMOUSE_DISABLE_DSTATE, align 2
  %.not1.i.i9 = icmp eq i16 %i.y, 0
  br i1 %.not1.i.i9, label %trace_vmmouse_disable.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load i32, ptr @qemu_loglevel, align 4
  %i.aa = and i32 %i.z, 32768
  %.not2.i.i10 = icmp eq i32 %i.aa, 0
  br i1 %.not2.i.i10, label %trace_vmmouse_disable.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.16) #4
  br label %trace_vmmouse_disable.exit.i

trace_vmmouse_disable.exit.i:                     ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4262
  store i16 -1, ptr %i.ab, align 2
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4272 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  store ptr null, ptr %i.ac, align 8
  %.not.i2.i = icmp eq ptr %i.ad, null
  br i1 %.not.i2.i, label %vmmouse_disable.exit, label %bb.k

bb.k:                                             ; preds = %trace_vmmouse_disable.exit.i
  tail call void @qemu_input_handler_unregister(ptr noundef nonnull %i.ad) #4
  br label %vmmouse_disable.exit

bb.l:                                             ; preds = %bb.f
  %i.ae = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i11 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i11, label %trace_vmmouse_read_id.exit.i, label %bb.m, !prof !7

bb.m:                                             ; preds = %bb.l
  %i.af = load i16, ptr @_TRACE_VMMOUSE_READ_ID_DSTATE, align 2
  %.not1.i.i12 = icmp eq i16 %i.af, 0
  br i1 %.not1.i.i12, label %trace_vmmouse_read_id.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = load i32, ptr @qemu_loglevel, align 4
  %i.ah = and i32 %i.ag, 32768
  %.not2.i.i13 = icmp eq i32 %i.ah, 0
  br i1 %.not2.i.i13, label %trace_vmmouse_read_id.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.17) #4
  br label %trace_vmmouse_read_id.exit.i

trace_vmmouse_read_id.exit.i:                     ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4260 ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 4            ; 3 uses
  %i.ak = icmp eq i16 %i.aj, 1024
  br i1 %i.ak, label %vmmouse_disable.exit, label %vmmouse_remove_handler.exit.i.i

vmmouse_remove_handler.exit.i.i:                  ; preds = %trace_vmmouse_read_id.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.am = add i16 %i.aj, 1
  store i16 %i.am, ptr %i.ai, align 4
  %i.an = zext i16 %i.aj to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.an
  store i32 876762442, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4262
  store i16 0, ptr %i.ap, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4272 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.p, label %vmmouse_disable.exit

bb.p:                                             ; preds = %vmmouse_remove_handler.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4264
  %i.au = load i8, ptr %i.at, align 8
  %.not12.i.i = icmp eq i8 %i.au, 0
  %i.av = select i1 %.not12.i.i, ptr @vmmouse_update_handler.vmmouse_rel_handler, ptr @vmmouse_update_handler.vmmouse_abs_handler
  %i.aw = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #4
  %i.ax = tail call ptr @qemu_input_handler_register(ptr noundef %i.aw, ptr noundef nonnull %i.av) #4 ; 2 uses
  store ptr %i.ax, ptr %i.aq, align 8
  tail call void @qemu_input_handler_activate(ptr noundef %i.ax) #4
  br label %vmmouse_disable.exit

bb.q:                                             ; preds = %bb.f
  %i.ay = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i14 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i14, label %trace_vmmouse_request_relative.exit.i, label %bb.r, !prof !7

bb.r:                                             ; preds = %bb.q
  %i.az = load i16, ptr @_TRACE_VMMOUSE_REQUEST_RELATIVE_DSTATE, align 2
  %.not1.i.i15 = icmp eq i16 %i.az, 0
  br i1 %.not1.i.i15, label %trace_vmmouse_request_relative.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ba = load i32, ptr @qemu_loglevel, align 4
  %i.bb = and i32 %i.ba, 32768
  %.not2.i.i16 = icmp eq i32 %i.bb, 0
  br i1 %.not2.i.i16, label %trace_vmmouse_request_relative.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.19) #4
  br label %trace_vmmouse_request_relative.exit.i

trace_vmmouse_request_relative.exit.i:            ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4262
  %i.bd = load i16, ptr %i.bc, align 2
  %.not.i1.i = icmp eq i16 %i.bd, 0
  br i1 %.not.i1.i, label %bb.u, label %vmmouse_disable.exit

bb.u:                                             ; preds = %trace_vmmouse_request_relative.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4264 ; 3 uses
  %i.bf = load i8, ptr %i.be, align 8
  %.not11.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not11.i.i, label %vmmouse_remove_handler.exit.i.i17, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i8 0, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4272 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  store ptr null, ptr %i.bg, align 8
  %.not.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i, label %vmmouse_remove_handler.exit.i.i17, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @qemu_input_handler_unregister(ptr noundef nonnull %i.bh) #4
  br label %vmmouse_remove_handler.exit.i.i17

vmmouse_remove_handler.exit.i.i17:                ; preds = %bb.w, %bb.v, %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4272 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.x, label %vmmouse_disable.exit

bb.x:                                             ; preds = %vmmouse_remove_handler.exit.i.i17
  %i.bl = load i8, ptr %i.be, align 8
  %.not12.i.i18 = icmp eq i8 %i.bl, 0
  %i.bm = select i1 %.not12.i.i18, ptr @vmmouse_update_handler.vmmouse_rel_handler, ptr @vmmouse_update_handler.vmmouse_abs_handler
  %i.bn = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #4
  %i.bo = tail call ptr @qemu_input_handler_register(ptr noundef %i.bn, ptr noundef nonnull %i.bm) #4 ; 2 uses
  store ptr %i.bo, ptr %i.bi, align 8
  tail call void @qemu_input_handler_activate(ptr noundef %i.bo) #4
  br label %vmmouse_disable.exit

bb.y:                                             ; preds = %bb.f
  %i.bp = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i19 = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i19, label %trace_vmmouse_request_absolute.exit.i, label %bb.z, !prof !7

bb.z:                                             ; preds = %bb.y
  %i.bq = load i16, ptr @_TRACE_VMMOUSE_REQUEST_ABSOLUTE_DSTATE, align 2
  %.not1.i.i20 = icmp eq i16 %i.bq, 0
  br i1 %.not1.i.i20, label %trace_vmmouse_request_absolute.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.br = load i32, ptr @qemu_loglevel, align 4
  %i.bs = and i32 %i.br, 32768
  %.not2.i.i21 = icmp eq i32 %i.bs, 0
  br i1 %.not2.i.i21, label %trace_vmmouse_request_absolute.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.20) #4
  br label %trace_vmmouse_request_absolute.exit.i

trace_vmmouse_request_absolute.exit.i:            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 4262
  %i.bu = load i16, ptr %i.bt, align 2
  %.not.i1.i22 = icmp eq i16 %i.bu, 0
  br i1 %.not.i1.i22, label %bb.ac, label %vmmouse_disable.exit

bb.ac:                                            ; preds = %trace_vmmouse_request_absolute.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 4264 ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 8
  %.not11.i.i23 = icmp eq i8 %i.bw, 1
  br i1 %.not11.i.i23, label %vmmouse_remove_handler.exit.i.i25, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i8 1, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 4272 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8            ; 2 uses
  store ptr null, ptr %i.bx, align 8
  %.not.i.i.i24 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i24, label %vmmouse_remove_handler.exit.i.i25, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @qemu_input_handler_unregister(ptr noundef nonnull %i.by) #4
  br label %vmmouse_remove_handler.exit.i.i25

vmmouse_remove_handler.exit.i.i25:                ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 4272 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.af, label %vmmouse_disable.exit

bb.af:                                            ; preds = %vmmouse_remove_handler.exit.i.i25
  %i.cc = load i8, ptr %i.bv, align 8
  %.not12.i.i26 = icmp eq i8 %i.cc, 0
  %i.cd = select i1 %.not12.i.i26, ptr @vmmouse_update_handler.vmmouse_rel_handler, ptr @vmmouse_update_handler.vmmouse_abs_handler
  %i.ce = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #4
  %i.cf = tail call ptr @qemu_input_handler_register(ptr noundef %i.ce, ptr noundef nonnull %i.cd) #4 ; 2 uses
  store ptr %i.cf, ptr %i.bz, align 8
  tail call void @qemu_input_handler_activate(ptr noundef %i.cf) #4
  br label %vmmouse_disable.exit

bb.ag:                                            ; preds = %bb.f
  %i.cg = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.11, i64 noundef %i.h) #4 ; 0 uses
  br label %vmmouse_disable.exit

bb.ah:                                            ; preds = %bb.a
  %i.ch = trunc i64 %i.h to i32                   ; 4 uses
  %i.ci = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i27 = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i27, label %trace_vmmouse_data.exit.i, label %bb.ai, !prof !7

bb.ai:                                            ; preds = %bb.ah
  %i.cj = load i16, ptr @_TRACE_VMMOUSE_DATA_DSTATE, align 2
  %.not1.i.i28 = icmp eq i16 %i.cj, 0
  br i1 %.not1.i.i28, label %trace_vmmouse_data.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ck = load i32, ptr @qemu_loglevel, align 4
  %i.cl = and i32 %i.ck, 32768
  %.not2.i.i29 = icmp eq i32 %i.cl, 0
  br i1 %.not2.i.i29, label %trace_vmmouse_data.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.22, i32 noundef %i.ch) #4
  br label %trace_vmmouse_data.exit.i

trace_vmmouse_data.exit.i:                        ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %i.cm = add i32 %i.ch, -7
  %or.cond.i = icmp ult i32 %i.cm, -6
  br i1 %or.cond.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %trace_vmmouse_data.exit.i
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 4260 ; 2 uses
  %i.co = load i16, ptr %i.cn, align 4            ; 3 uses
  %i.cp = zext i16 %i.co to i32
  %i.cq = icmp samesign ugt i32 %i.ch, %i.cp
  br i1 %i.cq, label %bb.am, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.al
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %wide.trip.count.i = and i64 %i.h, 4294967295   ; 4 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.h, 4294967292               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %wide.load = load <2 x i32>, ptr %i.cs, align 4
  %wide.load34 = load <2 x i32>, ptr %i.ct, align 4
  %i.cu = zext <2 x i32> %wide.load to <2 x i64>
  %i.cv = zext <2 x i32> %wide.load34 to <2 x i64>
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store <2 x i64> %i.cu, ptr %i.cw, align 16
  store <2 x i64> %i.cv, ptr %i.cx, align 16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

bb.am:                                            ; preds = %bb.al, %trace_vmmouse_data.exit.i
  %i.cz = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.21, i32 noundef %i.ch) #4 ; 0 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 4262
  store i16 -1, ptr %i.da, align 2
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 4272 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8            ; 2 uses
  store ptr null, ptr %i.db, align 8
  %.not.i24.i = icmp eq ptr %i.dc, null
  br i1 %.not.i24.i, label %vmmouse_disable.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @qemu_input_handler_unregister(ptr noundef nonnull %i.dc) #4
  br label %vmmouse_disable.exit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv.i
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i
  store i64 %i.df, ptr %i.dg, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !11

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %i.dh = trunc i64 %i.h to i16                   ; 2 uses
  %i.di = sub i16 %i.co, %i.dh                    ; 2 uses
  store i16 %i.di, ptr %i.cn, align 4
  %.not.i = icmp eq i16 %i.co, %i.dh
  br i1 %.not.i, label %vmmouse_disable.exit, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge.i
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %wide.trip.count.i
  %i.dk = zext i16 %i.di to i64
  %i.dl = shl nuw nsw i64 %i.dk, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 %i.cr, ptr noundef nonnull align 1 %i.dj, i64 noundef range(i64 4, 262141) %i.dl, i1 noundef false) #4
  br label %vmmouse_disable.exit

bb.ap:                                            ; preds = %bb.a
  %i.dm = trunc i64 %i.m to i32
  %i.dn = and i32 %i.dm, 65535
  %i.do = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.12, i32 noundef %i.dn) #4 ; 0 uses
  br label %vmmouse_disable.exit

vmmouse_disable.exit:                             ; preds = %bb.ao, %._crit_edge.i, %bb.an, %bb.am, %bb.af, %vmmouse_remove_handler.exit.i.i25, %trace_vmmouse_request_absolute.exit.i, %bb.x, %vmmouse_remove_handler.exit.i.i17, %trace_vmmouse_request_relative.exit.i, %bb.p, %vmmouse_remove_handler.exit.i.i, %trace_vmmouse_read_id.exit.i, %bb.k, %trace_vmmouse_disable.exit.i, %bb.ag, %bb.ap, %vmmouse_get_status.exit
  %i.dp = load ptr, ptr %i.b, align 8
  %i.dq = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.dp, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #4 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16496
  %2 = load <4 x i64>, ptr %i.a, align 16
  %i.ds = load i64, ptr %i.a, align 16
  %3 = shufflevector <4 x i64> %2, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 3, i32 1>
  store <4 x i64> %3, ptr %i.dr, align 16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 16544
  %i.du = load <2 x i64>, ptr %i.o, align 16
  store <2 x i64> %i.du, ptr %i.dt, align 16
  %i.dv = trunc i64 %i.ds to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %i.dv
}

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #1

declare i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #3

declare void @qemu_input_handler_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @vmmouse_input_event(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 61, ptr noundef nonnull @__func__.VMMOUSE) #4 ; 5 uses
  %i.b = load i32, ptr %2, align 8
  switch i32 %i.b, label %bb.j [
    i32 1, label %bb.b
    i32 3, label %bb.f
    i32 2, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4, !range !8, !noundef !9
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.c, align 8
  switch i32 %i.g, label %bb.e [
    i32 3, label %.sink.split
    i32 4, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d
  %.sink22 = phi i32 [ 1, %bb.d ], [ -1, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4288 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = add i32 %i.i, %.sink22
  store i32 %i.j, ptr %i.h, align 8
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c, %bb.b
  %i.k = load i8, ptr %i.d, align 4, !range !8, !noundef !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 4292
  %i.m = load i32, ptr %i.c, align 8
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.n
  store i8 %i.k, ptr %i.o, align 1
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i32, ptr %i.p, align 8
  switch i32 %i.q, label %bb.j [
    i32 0, label %bb.g
    i32 1, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load i64, ptr %i.r, align 8
  %i.t = trunc i64 %i.s to i32
  %i.u = tail call i32 @qemu_input_scale_axis(i32 noundef %i.t, i32 noundef 0, i32 noundef 32767, i32 noundef 0, i32 noundef 65535) #4
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 4280
  store i32 %i.u, ptr %i.v, align 8
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load i64, ptr %i.w, align 8
  %i.y = trunc i64 %i.x to i32
  %i.z = tail call i32 @qemu_input_scale_axis(i32 noundef %i.y, i32 noundef 0, i32 noundef 32767, i32 noundef 0, i32 noundef 65535) #4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 4284
  store i32 %i.z, ptr %i.aa, align 4
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 4280
  %i.af = load i32, ptr %i.ab, align 8
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = trunc i64 %i.ad to i32
  %i.ak = add i32 %i.ai, %i.aj
  store i32 %i.ak, ptr %i.ah, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.a, %bb.g, %bb.h, %bb.i, %bb.e
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @vmmouse_input_sync(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 61, ptr noundef nonnull @__func__.VMMOUSE) #4 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4260 ; 9 uses
  %i.c = load i16, ptr %i.b, align 4              ; 4 uses
  %i.d = icmp ugt i16 %i.c, 1020
  br i1 %i.d, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4292
  %i.f = load i8, ptr %i.e, align 4, !range !8, !noundef !9
  %i.g = shl nuw nsw i8 %i.f, 5
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4294
  %i.i = load i8, ptr %i.h, align 2, !range !8, !noundef !9
  %i.j = shl nuw nsw i8 %i.i, 4
  %.131 = or disjoint i8 %i.j, %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 4293
  %i.l = load i8, ptr %i.k, align 1, !range !8, !noundef !9
  %i.m = shl nuw nsw i8 %i.l, 3
  %.232 = or disjoint i8 %.131, %i.m
  %.2 = zext nneg i8 %.232 to i32                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4264 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8
  %.not = icmp eq i8 %i.o, 0
  %i.p = or disjoint i32 %.2, 65536
  %.3 = select i1 %.not, i32 %i.p, i32 %.2        ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 4280 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4284 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 4288 ; 3 uses
  %i.v = load i32, ptr %i.u, align 8
  %i.w = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %trace_vmmouse_queue_event.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.x = load i16, ptr @_TRACE_VMMOUSE_QUEUE_EVENT_DSTATE, align 2
  %.not4.i = icmp eq i16 %i.x, 0
  br i1 %.not4.i, label %trace_vmmouse_queue_event.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load i32, ptr @qemu_loglevel, align 4
  %i.z = and i32 %i.y, 32768
  %.not5.i = icmp eq i32 %i.z, 0
  br i1 %.not5.i, label %trace_vmmouse_queue_event.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.18, i32 noundef %i.r, i32 noundef %i.t, i32 noundef %i.v, i32 noundef range(i32 0, 65600) %.3) #4
  %.pre = load i16, ptr %i.b, align 4
  br label %trace_vmmouse_queue_event.exit

trace_vmmouse_queue_event.exit:                   ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.aa = phi i16 [ %i.c, %bb.b ], [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ %.pre, %bb.e ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 4 uses
  %i.ac = add i16 %i.aa, 1
  store i16 %i.ac, ptr %i.b, align 4
  %i.ad = zext i16 %i.aa to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ad
  store i32 %.3, ptr %i.ae, align 4
  %i.af = load i32, ptr %i.q, align 8
  %i.ag = load i16, ptr %i.b, align 4             ; 2 uses
  %i.ah = add i16 %i.ag, 1
  store i16 %i.ah, ptr %i.b, align 4
  %i.ai = zext i16 %i.ag to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ai
  store i32 %i.af, ptr %i.aj, align 4
  %i.ak = load i32, ptr %i.s, align 4
  %i.al = load i16, ptr %i.b, align 4             ; 2 uses
  %i.am = add i16 %i.al, 1
  store i16 %i.am, ptr %i.b, align 4
  %i.an = zext i16 %i.al to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.an
  store i32 %i.ak, ptr %i.ao, align 4
  %i.ap = load i32, ptr %i.u, align 8
  %i.aq = load i16, ptr %i.b, align 4             ; 2 uses
  %i.ar = add i16 %i.aq, 1
  store i16 %i.ar, ptr %i.b, align 4
  %i.as = zext i16 %i.aq to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.as
  store i32 %i.ap, ptr %i.at, align 4
  store i32 0, ptr %i.u, align 8
  %i.au = load i8, ptr %i.n, align 8
  %.not30 = icmp eq i8 %i.au, 0
  br i1 %.not30, label %bb.f, label %bb.g

bb.f:                                             ; preds = %trace_vmmouse_queue_event.exit
  store i32 0, ptr %i.q, align 8
  store i32 0, ptr %i.s, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %trace_vmmouse_queue_event.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 4304
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void @i8042_isa_mouse_fake_event(ptr noundef %i.aw) #4
end_hunk_0
