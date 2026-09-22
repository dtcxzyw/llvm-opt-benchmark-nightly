Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/virtio-input-hid?download=true
inline.NumInlined: 51
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PropertyInfo = type { ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon = type { i64 }
%struct.QEnumLookup = type { ptr, ptr, i32 }
%struct.virtio_input_devids = type { i16, i16, i16, i16 }
%struct.virtio_input_config = type { i8, i8, i8, [5 x i8], %union.anon.7 }
%union.anon.7 = type { %struct.virtio_input_absinfo, [108 x i8] }
%struct.virtio_input_absinfo = type { i32, i32, i32, i32, i32 }
%struct.virtio_input_event = type { i16, i16, i32 }

@.str = private unnamed_addr constant [24 x i8] c"virtio-input-hid-device\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"virtio-input-device\00", align 1
@virtio_input_hid_info = internal constant { ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i64 664, i64 0, ptr null, ptr null, ptr null, i8 1, [7 x i8] zeroinitializer, i64 0, ptr @virtio_input_hid_class_init, ptr null, ptr null, ptr null }, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/qdev.h\00", align 1
@__func__.DEVICE_CLASS = private unnamed_addr constant [13 x i8] c"DEVICE_CLASS\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"/opt-bench/work/qemu/qemu/include/hw/virtio/virtio-input.h\00", align 1
@__func__.VIRTIO_INPUT_CLASS = private unnamed_addr constant [19 x i8] c"VIRTIO_INPUT_CLASS\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@qdev_prop_string = external constant %struct.PropertyInfo, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"head\00", align 1
@qdev_prop_uint32 = external constant %struct.PropertyInfo, align 8
@virtio_input_hid_properties = internal constant [2 x { ptr, ptr, i64, ptr, i64, %union.anon, ptr, i32, i32, i8, i8, [6 x i8] }] [{ ptr, ptr, i64, ptr, i64, %union.anon, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.6, ptr @qdev_prop_string, i64 624, ptr null, i64 0, %union.anon zeroinitializer, ptr null, i32 0, i32 0, i8 0, i8 0, [6 x i8] zeroinitializer }, { ptr, ptr, i64, ptr, i64, %union.anon, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.7, ptr @qdev_prop_uint32, i64 632, ptr null, i64 0, %union.anon zeroinitializer, ptr null, i32 0, i32 0, i8 0, i8 1, [6 x i8] zeroinitializer }], align 16
@__func__.VIRTIO_INPUT_HID = private unnamed_addr constant [17 x i8] c"VIRTIO_INPUT_HID\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"%s: unknown type %d\0A\00", align 1
@__func__.virtio_input_hid_handle_status = private unnamed_addr constant [31 x i8] c"virtio_input_hid_handle_status\00", align 1
@qemu_loglevel = external local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"virtio-keyboard-device\00", align 1
@virtio_keyboard_info = internal constant { ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str.10, ptr @.str, i64 664, i64 0, ptr @virtio_keyboard_init, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer, i64 0, ptr null, ptr null, ptr null, ptr null }, align 8
@__func__.VIRTIO_INPUT = private unnamed_addr constant [13 x i8] c"VIRTIO_INPUT\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"QEMU Virtio Keyboard\00", align 1
@virtio_keyboard_handler = internal constant { ptr, i32, [4 x i8], ptr, ptr } { ptr @.str.12, i32 1, [4 x i8] zeroinitializer, ptr @virtio_input_handle_event, ptr @virtio_input_handle_sync }, align 8
@keymap_button = internal unnamed_addr constant [10 x i16] [i16 272, i16 274, i16 273, i16 337, i16 336, i16 275, i16 276, i16 0, i16 0, i16 330], align 16
@.str.14 = private unnamed_addr constant [30 x i8] c"%s: unmapped button: %d [%s]\0A\00", align 1
@__func__.virtio_input_handle_event = private unnamed_addr constant [26 x i8] c"virtio_input_handle_event\00", align 1
@InputButton_lookup = external constant %struct.QEnumLookup, align 8
@axismap_tch = internal unnamed_addr constant [2 x i16] [i16 53, i16 54], align 2
@virtio_keyboard_config = internal global <{ { i8, i8, i8, [5 x i8], { [128 x i8] } }, { i8, i8, i8, [5 x i8], { %struct.virtio_input_devids, [120 x i8] } }, %struct.virtio_input_config, { i8, i8, i8, [5 x i8], { <{ i8, [127 x i8] }> } }, %struct.virtio_input_config }> <{ { i8, i8, i8, [5 x i8], { [128 x i8] } } { i8 1, i8 0, i8 21, [5 x i8] zeroinitializer, { [128 x i8] } { [128 x i8] c"QEMU Virtio Keyboard\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" } }, { i8, i8, i8, [5 x i8], { %struct.virtio_input_devids, [120 x i8] } } { i8 3, i8 0, i8 8, [5 x i8] zeroinitializer, { %struct.virtio_input_devids, [120 x i8] } { %struct.virtio_input_devids { i16 6, i16 1575, i16 1, i16 1 }, [120 x i8] zeroinitializer } }, %struct.virtio_input_config { i8 17, i8 20, i8 1, [5 x i8] zeroinitializer, %union.anon.7 zeroinitializer }, { i8, i8, i8, [5 x i8], { <{ i8, [127 x i8] }> } } { i8 17, i8 17, i8 1, [5 x i8] zeroinitializer, { <{ i8, [127 x i8] }> } { <{ i8, [127 x i8] }> <{ i8 7, [127 x i8] zeroinitializer }> } }, %struct.virtio_input_config zeroinitializer }>, align 16
@.str.16 = private unnamed_addr constant [20 x i8] c"virtio-mouse-device\00", align 1
@virtio_mouse_info = internal constant { ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str.16, ptr @.str, i64 664, i64 0, ptr @virtio_mouse_init, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer, i64 0, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.18 = private unnamed_addr constant [18 x i8] c"QEMU Virtio Mouse\00", align 1
@virtio_mouse_handler = internal constant { ptr, i32, [4 x i8], ptr, ptr } { ptr @.str.18, i32 6, [4 x i8] zeroinitializer, ptr @virtio_input_handle_event, ptr @virtio_input_handle_sync }, align 8
@virtio_mouse_config = internal global <{ { i8, i8, i8, [5 x i8], { [128 x i8] } }, { i8, i8, i8, [5 x i8], { %struct.virtio_input_devids, [120 x i8] } }, { i8, i8, i8, [5 x i8], { <{ i8, i8, [126 x i8] }> } }, %struct.virtio_input_config }> <{ { i8, i8, i8, [5 x i8], { [128 x i8] } } { i8 1, i8 0, i8 18, [5 x i8] zeroinitializer, { [128 x i8] } { [128 x i8] c"QEMU Virtio Mouse\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" } }, { i8, i8, i8, [5 x i8], { %struct.virtio_input_devids, [120 x i8] } } { i8 3, i8 0, i8 8, [5 x i8] zeroinitializer, { %struct.virtio_input_devids, [120 x i8] } { %struct.virtio_input_devids { i16 6, i16 1575, i16 2, i16 2 }, [120 x i8] zeroinitializer } }, { i8, i8, i8, [5 x i8], { <{ i8, i8, [126 x i8] }> } } { i8 17, i8 2, i8 2, [5 x i8] zeroinitializer, { <{ i8, i8, [126 x i8] }> } { <{ i8, i8, [126 x i8] }> <{ i8 3, i8 1, [126 x i8] zeroinitializer }> } }, %struct.virtio_input_config zeroinitializer }>, align 16
@.str.21 = private unnamed_addr constant [21 x i8] c"virtio-tablet-device\00", align 1
@virtio_tablet_info = internal constant { ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str.21, ptr @.str, i64 664, i64 0, ptr @virtio_tablet_init, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer, i64 0, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.23 = private unnamed_addr constant [19 x i8] c"QEMU Virtio Tablet\00", align 1
@virtio_tablet_handler = internal constant { ptr, i32, [4 x i8], ptr, ptr } { ptr @.str.23, i32 10, [4 x i8] zeroinitializer, ptr @virtio_input_handle_event, ptr @virtio_input_handle_sync }, align 8
@virtio_tablet_config = internal global <{ { i8, i8, i8, [5 x i8], { [128 x i8] } }, { i8, i8, i8, [5 x i8], { %struct.virtio_input_devids, [120 x i8] } }, { i8, i8, i8, [5 x i8], { <{ i8, [127 x i8] }> } }, { i8, i8, i8, [5 x i8], { <{ i8, i8, [126 x i8] }> } }, %struct.virtio_input_config, %struct.virtio_input_config, %struct.virtio_input_config }> <{ { i8, i8, i8, [5 x i8], { [128 x i8] } } { i8 1, i8 0, i8 19, [5 x i8] zeroinitializer, { [128 x i8] } { [128 x i8] c"QEMU Virtio Tablet\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" } }, { i8, i8, i8, [5 x i8], { %struct.virtio_input_devids, [120 x i8] } } { i8 3, i8 0, i8 8, [5 x i8] zeroinitializer, { %struct.virtio_input_devids, [120 x i8] } { %struct.virtio_input_devids { i16 6, i16 1575, i16 3, i16 2 }, [120 x i8] zeroinitializer } }, { i8, i8, i8, [5 x i8], { <{ i8, [127 x i8] }> } } { i8 17, i8 3, i8 1, [5 x i8] zeroinitializer, { <{ i8, [127 x i8] }> } { <{ i8, [127 x i8] }> <{ i8 3, [127 x i8] zeroinitializer }> } }, { i8, i8, i8, [5 x i8], { <{ i8, i8, [126 x i8] }> } } { i8 17, i8 2, i8 2, [5 x i8] zeroinitializer, { <{ i8, i8, [126 x i8] }> } { <{ i8, i8, [126 x i8] }> <{ i8 0, i8 1, [126 x i8] zeroinitializer }> } }, %struct.virtio_input_config { i8 18, i8 0, i8 20, [5 x i8] zeroinitializer, %union.anon.7 { %struct.virtio_input_absinfo { i32 0, i32 32767, i32 0, i32 0, i32 0 }, [108 x i8] zeroinitializer } }, %struct.virtio_input_config { i8 18, i8 1, i8 20, [5 x i8] zeroinitializer, %union.anon.7 { %struct.virtio_input_absinfo { i32 0, i32 32767, i32 0, i32 0, i32 0 }, [108 x i8] zeroinitializer } }, %struct.virtio_input_config zeroinitializer }>, align 16
@.str.26 = private unnamed_addr constant [25 x i8] c"virtio-multitouch-device\00", align 1
@virtio_multitouch_info = internal constant { ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str.26, ptr @.str, i64 664, i64 0, ptr @virtio_multitouch_init, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer, i64 0, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.28 = private unnamed_addr constant [23 x i8] c"QEMU Virtio MultiTouch\00", align 1
@virtio_multitouch_handler = internal constant { ptr, i32, [4 x i8], ptr, ptr } { ptr @.str.28, i32 18, [4 x i8] zeroinitializer, ptr @virtio_input_handle_event, ptr @virtio_input_handle_sync }, align 8
@virtio_multitouch_config = internal global <{ { i8, i8, i8, [5 x i8], { [128 x i8] } }, { i8, i8, i8, [5 x i8], { %struct.virtio_input_devids, [120 x i8] } }, %struct.virtio_input_config, %struct.virtio_input_config, %struct.virtio_input_config, %struct.virtio_input_config, %struct.virtio_input_config }> <{ { i8, i8, i8, [5 x i8], { [128 x i8] } } { i8 1, i8 0, i8 23, [5 x i8] zeroinitializer, { [128 x i8] } { [128 x i8] c"QEMU Virtio MultiTouch\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" } }, { i8, i8, i8, [5 x i8], { %struct.virtio_input_devids, [120 x i8] } } { i8 3, i8 0, i8 8, [5 x i8] zeroinitializer, { %struct.virtio_input_devids, [120 x i8] } { %struct.virtio_input_devids { i16 6, i16 1575, i16 3, i16 1 }, [120 x i8] zeroinitializer } }, %struct.virtio_input_config { i8 18, i8 47, i8 20, [5 x i8] zeroinitializer, %union.anon.7 { %struct.virtio_input_absinfo { i32 0, i32 10, i32 0, i32 0, i32 0 }, [108 x i8] zeroinitializer } }, %struct.virtio_input_config { i8 18, i8 57, i8 20, [5 x i8] zeroinitializer, %union.anon.7 { %struct.virtio_input_absinfo { i32 0, i32 10, i32 0, i32 0, i32 0 }, [108 x i8] zeroinitializer } }, %struct.virtio_input_config { i8 18, i8 53, i8 20, [5 x i8] zeroinitializer, %union.anon.7 { %struct.virtio_input_absinfo { i32 0, i32 32767, i32 0, i32 0, i32 0 }, [108 x i8] zeroinitializer } }, %struct.virtio_input_config { i8 18, i8 54, i8 20, [5 x i8] zeroinitializer, %union.anon.7 { %struct.virtio_input_absinfo { i32 0, i32 32767, i32 0, i32 0, i32 0 }, [108 x i8] zeroinitializer } }, %struct.virtio_input_config zeroinitializer }>, align 16
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @do_qemu_init_virtio_register_types, ptr null }]
@switch.table.virtio_input_hid_handle_status = private unnamed_addr constant [3 x i8] c"\02\04\01", align 4

; Function Attrs: nounwind sspstrong uwtable
define internal void @do_qemu_init_virtio_register_types() #0 {
bb.a:
  tail call void @register_module_init(ptr noundef nonnull @virtio_register_types, i32 noundef 4) #4
  ret void
}

declare void @register_module_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @virtio_register_types() #0 {
bb.a:
  %i.a = tail call ptr @type_register_static(ptr noundef nonnull @virtio_input_hid_info) #4 ; 0 uses
  %i.b = tail call ptr @type_register_static(ptr noundef nonnull @virtio_keyboard_info) #4 ; 0 uses
  %i.c = tail call ptr @type_register_static(ptr noundef nonnull @virtio_mouse_info) #4 ; 0 uses
  %i.d = tail call ptr @type_register_static(ptr noundef nonnull @virtio_tablet_info) #4 ; 0 uses
  %i.e = tail call ptr @type_register_static(ptr noundef nonnull @virtio_multitouch_info) #4 ; 0 uses
  ret void
}

declare ptr @type_register_static(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @virtio_input_hid_class_init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE_CLASS) #4
  %i.b = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef 25, ptr noundef nonnull @__func__.VIRTIO_INPUT_CLASS) #4 ; 4 uses
  tail call void @device_class_set_props_n(ptr noundef %i.a, ptr noundef nonnull @virtio_input_hid_properties, i64 noundef 2) #4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  store ptr @virtio_input_hid_realize, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  store ptr @virtio_input_hid_unrealize, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  store ptr @virtio_input_hid_change_active, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  store ptr @virtio_input_hid_handle_status, ptr %i.f, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @device_class_set_props_n(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @virtio_input_hid_realize(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 35, ptr noundef nonnull @__func__.VIRTIO_INPUT_HID) #4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call ptr @qemu_input_handler_register(ptr noundef %0, ptr noundef %i.c) #4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 648
  store ptr %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq ptr %i.g, null
  %.not10 = icmp eq ptr %i.d, null
  %or.cond = select i1 %.not, i1 true, i1 %.not10
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 632
  %i.i = load i32, ptr %i.h, align 8
  tail call void @qemu_input_handler_bind(ptr noundef nonnull %i.d, ptr noundef nonnull %i.g, i32 noundef %i.i, ptr noundef null) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @virtio_input_hid_unrealize(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 35, ptr noundef nonnull @__func__.VIRTIO_INPUT_HID) #4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 648
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @qemu_input_handler_unregister(ptr noundef %i.c) #4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @virtio_input_hid_change_active(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 35, ptr noundef nonnull @__func__.VIRTIO_INPUT_HID) #4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.c = load i8, ptr %i.b, align 8, !range !7, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 648
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @qemu_input_handler_activate(ptr noundef %i.f) #4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @qemu_input_handler_deactivate(ptr noundef %i.f) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @virtio_input_hid_handle_status(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 35, ptr noundef nonnull @__func__.VIRTIO_INPUT_HID) #4 ; 3 uses
  %i.b = load i16, ptr %1, align 4                ; 2 uses
  %cond = icmp eq i16 %i.b, 17
  br i1 %cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.d = load i16, ptr %i.c, align 2              ; 2 uses
  %i.e = icmp ult i16 %i.d, 3
  br i1 %i.e, label %switch.lookup, label %.fold.split

switch.lookup:                                    ; preds = %bb.b
  %i.f = zext nneg i16 %i.d to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.virtio_input_hid_handle_status, i64 %i.f
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %.fold.split

.fold.split:                                      ; preds = %bb.b, %switch.lookup
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.fold.split
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 656 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = or i32 %i.j, %.0                         ; 2 uses
  store i32 %i.k, ptr %i.i, align 8
  br label %bb.e

bb.d:                                             ; preds = %.fold.split
  %i.l = xor i32 %.0, -1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 656 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = and i32 %i.n, %i.l                       ; 2 uses
  store i32 %i.o, ptr %i.m, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i32 [ %i.o, %bb.d ], [ %i.k, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 648
  %i.r = load ptr, ptr %i.q, align 8
  tail call void @qemu_input_handler_set_leds_mask(ptr noundef %i.r, i32 noundef %i.p) #4
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.s = load i32, ptr @qemu_loglevel, align 4
  %i.t = and i32 %i.s, 2048
  %.not13 = icmp eq i32 %i.t, 0
  br i1 %.not13, label %bb.h, label %bb.g, !prof !9

bb.g:                                             ; preds = %bb.f
  %i.u = zext i16 %i.b to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.virtio_input_hid_handle_status, i32 noundef %i.u) #4
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  ret void
}

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @qemu_input_handler_register(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @qemu_input_handler_bind(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @qemu_input_handler_unregister(ptr noundef) local_unnamed_addr #1

declare void @qemu_input_handler_activate(ptr noundef) local_unnamed_addr #1

declare void @qemu_input_handler_deactivate(ptr noundef) local_unnamed_addr #1

declare void @qemu_input_handler_set_leds_mask(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @virtio_keyboard_init(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.virtio_input_config, align 4 ; 8 uses
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 35, ptr noundef nonnull @__func__.VIRTIO_INPUT_HID) #4
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef 25, ptr noundef nonnull @__func__.VIRTIO_INPUT) #4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(136) %1, i8 0, i64 136, i1 false)
  store i8 17, ptr %1, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 1, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 29, ptr %i.d, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  store ptr @virtio_keyboard_handler, ptr %i.e, align 8
  tail call void @virtio_input_init_config(ptr noundef %i.b, ptr noundef nonnull @virtio_keyboard_config) #4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.08 = phi i32 [ 1, %bb.a ], [ %i.ag, %bb.b ]   ; 5 uses
  %i.g = and i32 %.08, 7
  %i.h = shl nuw nsw i32 1, %i.g
  %i.i = lshr i32 %.08, 3
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j ; 2 uses
  %i.l = load i8, ptr %i.k, align 1
  %i.m = trunc nuw i32 %i.h to i8
  %i.n = or i8 %i.l, %i.m
  store i8 %i.n, ptr %i.k, align 1
  %i.o = add nuw nsw i32 %.08, 1                  ; 2 uses
  %i.p = and i32 %i.o, 7
  %i.q = shl nuw nsw i32 1, %i.p
  %i.r = lshr i32 %i.o, 3
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 1
  %i.v = trunc nuw i32 %i.q to i8
  %i.w = or i8 %i.u, %i.v
  store i8 %i.w, ptr %i.t, align 1
  %i.x = add nuw nsw i32 %.08, 2                  ; 2 uses
  %i.y = and i32 %i.x, 7
  %i.z = shl nuw nsw i32 1, %i.y
  %i.aa = lshr i32 %i.x, 3
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ab ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = trunc nuw i32 %i.z to i8
  %i.af = or i8 %i.ad, %i.ae
  store i8 %i.af, ptr %i.ac, align 1
  %i.ag = add nuw nsw i32 %.08, 3                 ; 2 uses
  %exitcond.not.2 = icmp eq i32 %i.ag, 232
  br i1 %exitcond.not.2, label %bb.c, label %bb.b, !llvm.loop !10

bb.c:                                             ; preds = %bb.b
  call void @virtio_input_add_config(ptr noundef %i.b, ptr noundef nonnull %1) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @virtio_input_init_config(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @virtio_input_add_config(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @virtio_input_handle_event(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct.virtio_input_event, align 8 ; 32 uses
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef 25, ptr noundef nonnull @__func__.VIRTIO_INPUT) #4 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  store i64 0, ptr %3, align 8, !annotation !12
  %i.b = load i32, ptr %2, align 8
  switch i32 %i.b, label %bb.o [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.j
    i32 3, label %bb.k
    i32 4, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  store i16 1, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %i.e = trunc i32 %i.d to i16
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 %i.e, ptr %i.f, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.h = load i8, ptr %i.g, align 4, !range !7, !noundef !8
  %i.i = zext nneg i8 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.i, ptr %i.j, align 4
  call void @virtio_input_send(ptr noundef %i.a, ptr noundef nonnull %3) #4
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i32, ptr %i.k, align 8              ; 6 uses
  %.off = add i32 %i.l, -3
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.n = load i8, ptr %i.m, align 4, !range !7, !noundef !8
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  store i16 2, ptr %3, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 8, ptr %i.p, align 2
  %i.q = icmp eq i32 %i.l, 3
  %i.r = select i1 %i.q, i32 1, i32 -1
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.r, ptr %i.s, align 4
  call void @virtio_input_send(ptr noundef %i.a, ptr noundef nonnull %3) #4
  br label %bb.o

bb.f:                                             ; preds = %bb.c
  %i.t = add i32 %i.l, -7
  %.not = icmp ult i32 %i.t, 2
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.v = load i8, ptr %i.u, align 4, !range !7    ; 2 uses
  br i1 %.not, label %bb.g, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.f
  %i.w = zext nneg i8 %i.v to i32
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.d
  %i.x = phi i32 [ %i.w, %..thread_crit_edge ], [ 0, %bb.d ]
  store i16 1, ptr %3, align 8
  %i.y = zext i32 %i.l to i64
  %i.z = getelementptr inbounds nuw [2 x i8], ptr @keymap_button, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 %i.aa, ptr %i.ab, align 2
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.x, ptr %i.ac, align 4
  call void @virtio_input_send(ptr noundef %i.a, ptr noundef nonnull %3) #4
  br label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.ad = trunc nuw i8 %i.v to i1
  br i1 %i.ad, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ae = load i32, ptr @qemu_loglevel, align 4
  %i.af = and i32 %i.ae, 2048
  %.not32 = icmp eq i32 %i.af, 0
  br i1 %.not32, label %bb.o, label %bb.i, !prof !9

bb.i:                                             ; preds = %bb.h
  %i.ag = tail call ptr @qapi_enum_lookup(ptr noundef nonnull @InputButton_lookup, i32 noundef %i.l) #4
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.virtio_input_handle_event, i32 noundef %i.l, ptr noundef %i.ag) #4
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  store i16 2, ptr %3, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = load i32, ptr %i.ah, align 8
  %4 = trunc i32 %i.ai to i16
  %notmask33 = shl nsw i16 -1, %4
  %5 = xor i16 %notmask33, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 %5, ptr %i.aj, align 2
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = trunc i64 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.am, ptr %i.an, align 4
  call void @virtio_input_send(ptr noundef %i.a, ptr noundef nonnull %3) #4
  br label %bb.o

bb.k:                                             ; preds = %bb.a
  store i16 3, ptr %3, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load i32, ptr %i.ao, align 8
  %6 = trunc i32 %i.ap to i16
  %notmask = shl nsw i16 -1, %6
  %7 = xor i16 %notmask, -1
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 %7, ptr %i.aq, align 2
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = trunc i64 %i.as to i32
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.at, ptr %i.au, align 4
  call void @virtio_input_send(ptr noundef %i.a, ptr noundef nonnull %3) #4
  br label %bb.o

bb.l:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = icmp eq i32 %i.aw, 4
  store i16 3, ptr %3, align 8
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr @axismap_tch, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 2
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 %i.bc, ptr %i.bd, align 2
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.bg, ptr %i.bh, align 4
  call void @virtio_input_send(ptr noundef %i.a, ptr noundef nonnull %3) #4
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i16 47, ptr %i.bi, align 2
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 %i.bl, ptr %i.bm, align 4
  call void @virtio_input_send(ptr noundef %i.a, ptr noundef nonnull %3) #4
  store i16 3, ptr %3, align 8
  store i16 57, ptr %i.bi, align 2
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = trunc i64 %i.bo to i32
  store i32 %i.bp, ptr %i.bm, align 4
  call void @virtio_input_send(ptr noundef %i.a, ptr noundef nonnull %3) #4
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.m, %bb.n, %bb.e, %bb.g, %bb.i, %bb.h, %.thread, %bb.k, %bb.j, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @virtio_input_handle_sync(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.virtio_input_event, align 8 ; 4 uses
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef 25, ptr noundef nonnull @__func__.VIRTIO_INPUT) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  store i64 0, ptr %1, align 8
  call void @virtio_input_send(ptr noundef %i.a, ptr noundef nonnull %1) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  ret void
}

declare void @virtio_input_send(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @qapi_enum_lookup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @virtio_mouse_init(ptr noundef %0) #0 {
virtio_input_extend_config.exit:
  %1 = alloca %struct.virtio_input_config, align 4 ; 10 uses
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 35, ptr noundef nonnull @__func__.VIRTIO_INPUT_HID) #4
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef 25, ptr noundef nonnull @__func__.VIRTIO_INPUT) #4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  store ptr @virtio_mouse_handler, ptr %i.c, align 8
  tail call void @virtio_input_init_config(ptr noundef %i.b, ptr noundef nonnull @virtio_mouse_config) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(136) %1, i8 0, i64 136, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 50
  store i8 3, ptr %i.d, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 42
  store i8 31, ptr %i.e, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 49
  store i8 4, ptr %i.f, align 1
  store i8 17, ptr %1, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 1, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 43, ptr %i.h, align 2
  call void @virtio_input_add_config(ptr noundef %i.b, ptr noundef nonnull %1) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @virtio_tablet_init(ptr noundef %0) #0 {
virtio_input_extend_config.exit:
  %1 = alloca %struct.virtio_input_config, align 4 ; 10 uses
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 35, ptr noundef nonnull @__func__.VIRTIO_INPUT_HID) #4
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef 25, ptr noundef nonnull @__func__.VIRTIO_INPUT) #4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  store ptr @virtio_tablet_handler, ptr %i.c, align 8
  tail call void @virtio_input_init_config(ptr noundef %i.b, ptr noundef nonnull @virtio_tablet_config) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(136) %1, i8 0, i64 136, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 50
  store i8 3, ptr %i.d, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 42
  store i8 31, ptr %i.e, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 49
  store i8 4, ptr %i.f, align 1
  store i8 17, ptr %1, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 1, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 43, ptr %i.h, align 2
  call void @virtio_input_add_config(ptr noundef %i.b, ptr noundef nonnull %1) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @virtio_multitouch_init(ptr noundef %0) #0 {
virtio_input_extend_config.exit20:
  %1 = alloca %struct.virtio_input_config, align 4 ; 10 uses
  %2 = alloca %struct.virtio_input_config, align 4 ; 7 uses
  %3 = alloca %struct.virtio_input_config, align 4 ; 10 uses
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 35, ptr noundef nonnull @__func__.VIRTIO_INPUT_HID) #4
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef 25, ptr noundef nonnull @__func__.VIRTIO_INPUT) #4 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  store ptr @virtio_multitouch_handler, ptr %i.c, align 8
  tail call void @virtio_input_init_config(ptr noundef %i.b, ptr noundef nonnull @virtio_multitouch_config) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(136) %3, i8 0, i64 136, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 50
  store i8 3, ptr %i.d, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 42
  store i8 31, ptr %i.e, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 49
  store i8 4, ptr %i.f, align 1
  store i8 17, ptr %3, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 1, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 43, ptr %i.h, align 2
  call void @virtio_input_add_config(ptr noundef %i.b, ptr noundef nonnull %3) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(136) %2, i8 0, i64 136, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 2, ptr %i.i, align 4
  store i8 16, ptr %2, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 1, ptr %i.j, align 2
  call void @virtio_input_add_config(ptr noundef %i.b, ptr noundef nonnull %2) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(136) %1, i8 0, i64 136, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 -128, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 2, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 96, ptr %i.m, align 2
  store i8 17, ptr %1, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 3, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 8, ptr %i.o, align 2
  call void @virtio_input_add_config(ptr noundef %i.b, ptr noundef nonnull %1) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  ret void
}

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"auto-init"}
end_hunk_0
