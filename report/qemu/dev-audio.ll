Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/dev-audio?download=true
inline.NumInlined: 22
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PropertyInfo = type { ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon = type { i64 }
%struct.USBDescIface = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }

@.str = private unnamed_addr constant [10 x i8] c"usb-audio\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"usb-device\00", align 1
@usb_audio_info = internal constant { ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i64 5976, i64 0, ptr null, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer, i64 0, ptr @usb_audio_class_init, ptr null, ptr null, ptr null }, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"QEMU USB Audio Interface\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/qdev.h\00", align 1
@__func__.DEVICE_CLASS = private unnamed_addr constant [13 x i8] c"DEVICE_CLASS\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"/opt-bench/work/qemu/qemu/include/hw/usb/usb.h\00", align 1
@__func__.USB_DEVICE_CLASS = private unnamed_addr constant [17 x i8] c"USB_DEVICE_CLASS\00", align 1
@vmstate_usb_audio = internal constant { ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str, i8 1, i8 0, [2 x i8] zeroinitializer, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"audiodev\00", align 1
@qdev_prop_audiodev = external constant %struct.PropertyInfo, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@qdev_prop_uint32 = external constant %struct.PropertyInfo, align 8
@.str.10 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"multi\00", align 1
@qdev_prop_bool = external constant %struct.PropertyInfo, align 8
@usb_audio_properties = internal constant [4 x { ptr, ptr, i64, ptr, i64, %union.anon, ptr, i32, i32, i8, i8, [6 x i8] }] [{ ptr, ptr, i64, ptr, i64, %union.anon, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.8, ptr @qdev_prop_audiodev, i64 5856, ptr null, i64 0, %union.anon zeroinitializer, ptr null, i32 0, i32 0, i8 0, i8 0, [6 x i8] zeroinitializer }, { ptr, ptr, i64, ptr, i64, %union.anon, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.9, ptr @qdev_prop_uint32, i64 5960, ptr null, i64 0, %union.anon zeroinitializer, ptr null, i32 0, i32 0, i8 0, i8 1, [6 x i8] zeroinitializer }, { ptr, ptr, i64, ptr, i64, %union.anon, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.10, ptr @qdev_prop_uint32, i64 5964, ptr null, i64 0, %union.anon zeroinitializer, ptr null, i32 0, i32 0, i8 0, i8 1, [6 x i8] zeroinitializer }, { ptr, ptr, i64, ptr, i64, %union.anon, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.11, ptr @qdev_prop_bool, i64 5972, ptr null, i64 0, %union.anon zeroinitializer, ptr null, i32 0, i32 0, i8 0, i8 1, [6 x i8] zeroinitializer }], align 16
@.str.13 = private unnamed_addr constant [22 x i8] c"../hw/usb/dev-audio.c\00", align 1
@__func__.USB_AUDIO = private unnamed_addr constant [10 x i8] c"USB_AUDIO\00", align 1
@desc_audio_multi = internal constant { { i16, i16, i16, i8, i8, i8, i8 }, [6 x i8], ptr, ptr, ptr, ptr, ptr } { { i16, i16, i16, i8, i8, i8, i8 } { i16 18164, i16 2, i16 0, i8 1, i8 2, i8 3, i8 0 }, [6 x i8] zeroinitializer, ptr @desc_device_multi, ptr null, ptr null, ptr @usb_audio_stringtable, ptr null }, align 8
@desc_iface_multi = internal constant [5 x %struct.USBDescIface] [%struct.USBDescIface { i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i8 5, i8 4, ptr @.compoundliteral.20, ptr null }, %struct.USBDescIface { i8 1, i8 0, i8 0, i8 1, i8 2, i8 0, i8 9, i8 0, ptr null, ptr null }, %struct.USBDescIface { i8 1, i8 1, i8 1, i8 1, i8 2, i8 0, i8 10, i8 2, ptr @.compoundliteral.23, ptr @.compoundliteral.25 }, %struct.USBDescIface { i8 1, i8 2, i8 1, i8 1, i8 2, i8 0, i8 10, i8 2, ptr @.compoundliteral.28, ptr @.compoundliteral.30 }, %struct.USBDescIface { i8 1, i8 3, i8 1, i8 1, i8 2, i8 0, i8 10, i8 2, ptr @.compoundliteral.33, ptr @.compoundliteral.35 }], align 16
@.compoundliteral = internal global [1 x { i8, i8, i8, i8, i8, i8, [2 x i8], ptr, i8, [7 x i8], ptr }] [{ i8, i8, i8, i8, i8, i8, [2 x i8], ptr, i8, [7 x i8], ptr } { i8 2, i8 1, i8 4, i8 -64, i8 50, i8 0, [2 x i8] zeroinitializer, ptr null, i8 5, [7 x i8] zeroinitializer, ptr @desc_iface_multi }], align 8
@desc_device_multi = internal constant { i16, i8, i8, i8, i8, i8, i8, ptr } { i16 256, i8 0, i8 0, i8 0, i8 64, i8 1, i8 0, ptr @.compoundliteral }, align 8
@.compoundliteral.16 = internal global [9 x i8] c"\09$\01\00\017\00\01\01", align 1
@.compoundliteral.17 = internal global [12 x i8] c"\0C$\02\01\01\01\00\08?\06\00\06", align 1
@.compoundliteral.18 = internal global [25 x i8] c"\19$\06\02\01\02\01\00\02\00\02\00\02\00\02\00\02\00\02\00\02\00\02\00\07", align 1
@.compoundliteral.19 = internal global [9 x i8] c"\09$\03\03\01\03\00\02\08", align 1
@.compoundliteral.20 = internal global [4 x { i8, [7 x i8], ptr }] [{ i8, [7 x i8], ptr } { i8 0, [7 x i8] zeroinitializer, ptr @.compoundliteral.16 }, { i8, [7 x i8], ptr } { i8 0, [7 x i8] zeroinitializer, ptr @.compoundliteral.17 }, { i8, [7 x i8], ptr } { i8 0, [7 x i8] zeroinitializer, ptr @.compoundliteral.18 }, { i8, [7 x i8], ptr } { i8 0, [7 x i8] zeroinitializer, ptr @.compoundliteral.19 }], align 8
@.compoundliteral.21 = internal global [7 x i8] c"\07$\01\01\00\01\00", align 1
@.compoundliteral.22 = internal global [11 x i8] c"\0B$\02\01\02\02\10\01\80\BB\00", align 1
@.compoundliteral.23 = internal global [2 x { i8, [7 x i8], ptr }] [{ i8, [7 x i8], ptr } { i8 0, [7 x i8] zeroinitializer, ptr @.compoundliteral.21 }, { i8, [7 x i8], ptr } { i8 0, [7 x i8] zeroinitializer, ptr @.compoundliteral.22 }], align 8
@.compoundliteral.24 = internal global [7 x i8] c"\07%\01\00\00\00\00", align 1
@.compoundliteral.25 = internal global [1 x { i8, i8, i16, i8, i8, i8, i8, ptr, i8, i8, i16, [4 x i8] }] [{ i8, i8, i16, i8, i8, i8, i8, ptr, i8, i8, i16, [4 x i8] } { i8 1, i8 13, i16 192, i8 1, i8 0, i8 0, i8 1, ptr @.compoundliteral.24, i8 0, i8 0, i16 0, [4 x i8] zeroinitializer }], align 8
@.compoundliteral.26 = internal global [7 x i8] c"\07$\01\01\00\01\00", align 1
@.compoundliteral.27 = internal global [11 x i8] c"\0B$\02\01\06\02\10\01\80\BB\00", align 1
@.compoundliteral.28 = internal global [2 x { i8, [7 x i8], ptr }] [{ i8, [7 x i8], ptr } { i8 0, [7 x i8] zeroinitializer, ptr @.compoundliteral.26 }, { i8, [7 x i8], ptr } { i8 0, [7 x i8] zeroinitializer, ptr @.compoundliteral.27 }], align 8
@.compoundliteral.29 = internal global [7 x i8] c"\07%\01\00\00\00\00", align 1
@.compoundliteral.30 = internal global [1 x { i8, i8, i16, i8, i8, i8, i8, ptr, i8, i8, i16, [4 x i8] }] [{ i8, i8, i16, i8, i8, i8, i8, ptr, i8, i8, i16, [4 x i8] } { i8 1, i8 13, i16 576, i8 1, i8 0, i8 0, i8 1, ptr @.compoundliteral.29, i8 0, i8 0, i16 0, [4 x i8] zeroinitializer }], align 8
@.compoundliteral.31 = internal global [7 x i8] c"\07$\01\01\00\01\00", align 1
@.compoundliteral.32 = internal global [11 x i8] c"\0B$\02\01\08\02\10\01\80\BB\00", align 1
@.compoundliteral.33 = internal global [2 x { i8, [7 x i8], ptr }] [{ i8, [7 x i8], ptr } { i8 0, [7 x i8] zeroinitializer, ptr @.compoundliteral.31 }, { i8, [7 x i8], ptr } { i8 0, [7 x i8] zeroinitializer, ptr @.compoundliteral.32 }], align 8
@.compoundliteral.34 = internal global [7 x i8] c"\07%\01\00\00\00\00", align 1
@.compoundliteral.35 = internal global [1 x { i8, i8, i16, i8, i8, i8, i8, ptr, i8, i8, i16, [4 x i8] }] [{ i8, i8, i16, i8, i8, i8, i8, ptr, i8, i8, i16, [4 x i8] } { i8 1, i8 13, i16 768, i8 1, i8 0, i8 0, i8 1, ptr @.compoundliteral.34, i8 0, i8 0, i16 0, [4 x i8] zeroinitializer }], align 8
@.str.36 = private unnamed_addr constant [5 x i8] c"QEMU\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"QEMU USB Audio\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"Audio Configuration\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"Audio Device\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"Audio Output Pipe\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"Audio Output Volume Control\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"Audio Output Terminal\00", align 1
@.str.44 = private unnamed_addr constant [24 x i8] c"Audio Output - Disabled\00", align 1
@.str.45 = private unnamed_addr constant [29 x i8] c"Audio Output - 48 kHz Stereo\00", align 1
@usb_audio_stringtable = internal constant <{ [11 x ptr], [245 x ptr] }> <{ [11 x ptr] [ptr null, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], [245 x ptr] zeroinitializer }>, align 16
@desc_audio = internal constant { { i16, i16, i16, i8, i8, i8, i8 }, [6 x i8], ptr, ptr, ptr, ptr, ptr } { { i16, i16, i16, i8, i8, i8, i8 } { i16 18164, i16 2, i16 0, i8 1, i8 2, i8 3, i8 0 }, [6 x i8] zeroinitializer, ptr @desc_device, ptr null, ptr null, ptr @usb_audio_stringtable, ptr null }, align 8
@desc_iface = internal constant [3 x %struct.USBDescIface] [%struct.USBDescIface { i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i8 5, i8 4, ptr @.compoundliteral.54, ptr null }, %struct.USBDescIface { i8 1, i8 0, i8 0, i8 1, i8 2, i8 0, i8 9, i8 0, ptr null, ptr null }, %struct.USBDescIface { i8 1, i8 1, i8 1, i8 1, i8 2, i8 0, i8 10, i8 2, ptr @.compoundliteral.57, ptr @.compoundliteral.59 }], align 16
@.compoundliteral.48 = internal global [1 x { i8, i8, i8, i8, i8, i8, [2 x i8], ptr, i8, [7 x i8], ptr }] [{ i8, i8, i8, i8, i8, i8, [2 x i8], ptr, i8, [7 x i8], ptr } { i8 2, i8 1, i8 4, i8 -64, i8 50, i8 0, [2 x i8] zeroinitializer, ptr null, i8 3, [7 x i8] zeroinitializer, ptr @desc_iface }], align 8
@desc_device = internal constant { i16, i8, i8, i8, i8, i8, i8, ptr } { i16 256, i8 0, i8 0, i8 0, i8 64, i8 1, i8 0, ptr @.compoundliteral.48 }, align 8
@.compoundliteral.50 = internal global [9 x i8] c"\09$\01\00\01+\00\01\01", align 1
@.compoundliteral.51 = internal global [12 x i8] c"\0C$\02\01\01\01\00\02\03\00\00\06", align 1
@.compoundliteral.52 = internal global [13 x i8] c"\0D$\06\02\01\02\01\00\02\00\02\00\07", align 1
@.compoundliteral.53 = internal global [9 x i8] c"\09$\03\03\01\03\00\02\08", align 1
@.compoundliteral.54 = internal global [4 x { i8, [7 x i8], ptr }] [{ i8, [7 x i8], ptr } { i8 0, [7 x i8] zeroinitializer, ptr @.compoundliteral.50 }, { i8, [7 x i8], ptr } { i8 0, [7 x i8] zeroinitializer, ptr @.compoundliteral.51 }, { i8, [7 x i8], ptr } { i8 0, [7 x i8] zeroinitializer, ptr @.compoundliteral.52 }, { i8, [7 x i8], ptr } { i8 0, [7 x i8] zeroinitializer, ptr @.compoundliteral.53 }], align 8
@.compoundliteral.55 = internal global [7 x i8] c"\07$\01\01\00\01\00", align 1
@.compoundliteral.56 = internal global [11 x i8] c"\0B$\02\01\02\02\10\01\80\BB\00", align 1
@.compoundliteral.57 = internal global [2 x { i8, [7 x i8], ptr }] [{ i8, [7 x i8], ptr } { i8 0, [7 x i8] zeroinitializer, ptr @.compoundliteral.55 }, { i8, [7 x i8], ptr } { i8 0, [7 x i8] zeroinitializer, ptr @.compoundliteral.56 }], align 8
@.compoundliteral.58 = internal global [7 x i8] c"\07%\01\00\00\00\00", align 1
@.compoundliteral.59 = internal global [1 x { i8, i8, i16, i8, i8, i8, i8, ptr, i8, i8, i16, [4 x i8] }] [{ i8, i8, i16, i8, i8, i8, i8, ptr, i8, i8, i16, [4 x i8] } { i8 1, i8 13, i16 192, i8 1, i8 0, i8 0, i8 1, ptr @.compoundliteral.58, i8 0, i8 0, i16 0, [4 x i8] zeroinitializer }], align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.60 = private unnamed_addr constant [18 x i8] c"usb-audio: reset\0A\00", align 1
@altset_channels = internal unnamed_addr constant [4 x i32] [i32 0, i32 2, i32 6, i32 8], align 16
@.str.61 = private unnamed_addr constant [29 x i8] c"usb-audio: set interface %d\0A\00", align 1
@__func__.USB_DEVICE = private unnamed_addr constant [11 x i8] c"USB_DEVICE\00", align 1
@.str.62 = private unnamed_addr constant [88 x i8] c"usb-audio: control transaction: request 0x%04x value 0x%04x index 0x%04x length 0x%04x\0A\00", align 1
@.str.63 = private unnamed_addr constant [30 x i8] c"usb-audio: fail: get control\0A\00", align 1
@.str.64 = private unnamed_addr constant [30 x i8] c"usb-audio: fail: set control\0A\00", align 1
@.str.65 = private unnamed_addr constant [95 x i8] c"usb-audio: failed control transaction: request 0x%04x value 0x%04x index 0x%04x length 0x%04x\0A\00", align 1
@.str.66 = private unnamed_addr constant [27 x i8] c"usb-audio: cn %d vol %04x\0A\00", align 1
@.str.67 = private unnamed_addr constant [19 x i8] c"usb-audio: mute %d\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c", vol[%d] %3d\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.70 = private unnamed_addr constant [64 x i8] c"usb-audio: failed data transaction: pid 0x%x ep 0x%x len 0x%zx\0A\00", align 1
@.str.71 = private unnamed_addr constant [39 x i8] c"usb-audio: output overrun (%zd bytes)\0A\00", align 1
@.str.72 = private unnamed_addr constant [48 x i8] c"buf->prod % USBAUDIO_PACKET_SIZE(channels) == 0\00", align 1
@__PRETTY_FUNCTION__.streambuf_put = private unnamed_addr constant [61 x i8] c"int streambuf_put(struct streambuf *, USBPacket *, uint32_t)\00", align 1
@.str.73 = private unnamed_addr constant [20 x i8] c"usb-audio: destroy\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @do_qemu_init_usb_audio_register_types, ptr null }]

; Function Attrs: nounwind sspstrong uwtable
define internal void @do_qemu_init_usb_audio_register_types() #0 {
bb.a:
  tail call void @register_module_init(ptr noundef nonnull @usb_audio_register_types, i32 noundef 4) #6
  ret void
}

declare void @register_module_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @usb_audio_register_types() #0 {
bb.a:
  %i.a = tail call ptr @type_register_static(ptr noundef nonnull @usb_audio_info) #6 ; 0 uses
  ret void
}

declare ptr @type_register_static(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @usb_audio_class_init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE_CLASS) #6 ; 3 uses
  %i.b = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6, i32 noundef 271, ptr noundef nonnull @__func__.USB_DEVICE_CLASS) #6 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr @vmstate_usb_audio, ptr %i.c, align 8
  tail call void @device_class_set_props_n(ptr noundef %i.a, ptr noundef nonnull @usb_audio_properties, i64 noundef 4) #6
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = or i64 %i.e, 64
  store i64 %i.f, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  store ptr @.str.3, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store ptr @usb_audio_realize, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  store ptr @usb_audio_handle_reset, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  store ptr @usb_audio_handle_control, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  store ptr @usb_audio_handle_data, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  store ptr @usb_audio_unrealize, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  store ptr @usb_audio_set_interface, ptr %i.m, align 8
  ret void
}

declare void @device_class_set_props_n(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @usb_audio_realize(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef 657, ptr noundef nonnull @__func__.USB_AUDIO) #6 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5856
  %i.c = tail call zeroext i1 @audio_be_check(ptr noundef nonnull %i.b, ptr noundef %1) #6
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 5972 ; 7 uses
  %i.e = load i8, ptr %i.d, align 4, !range !7, !noundef !8
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = select i1 %i.f, ptr @desc_audio_multi, ptr @desc_audio
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5632
  store ptr %i.g, ptr %i.h, align 8
  tail call void @usb_desc_create_serial(ptr noundef %0) #6
  tail call void @usb_desc_init(ptr noundef %0) #6
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store ptr %i.a, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 5864
  store i32 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 5896
  store i8 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 5904
  store i8 -16, ptr %i.l, align 8
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 5905
  store i8 -16, ptr %2, align 1
  %3 = load i8, ptr %i.d, align 4, !range !7, !noundef !8
  %4 = trunc nuw i8 %3 to i1
  br i1 %4, label %5, label %bb.d

5:                                                ; preds = %bb.b
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 5906
  store i8 -16, ptr %6, align 2
  %7 = load i8, ptr %i.d, align 4, !range !7, !noundef !8
  %8 = trunc nuw i8 %7 to i1
  br i1 %8, label %9, label %bb.d

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %i.a, i64 5907
  store i8 -16, ptr %10, align 1
  %11 = load i8, ptr %i.d, align 4, !range !7, !noundef !8
  %12 = trunc nuw i8 %11 to i1
  br i1 %12, label %13, label %bb.d

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %i.a, i64 5908
  store i8 -16, ptr %14, align 4
  %15 = load i8, ptr %i.d, align 4, !range !7, !noundef !8
  %16 = trunc nuw i8 %15 to i1
  br i1 %16, label %17, label %bb.d

17:                                               ; preds = %13
  %18 = getelementptr inbounds nuw i8, ptr %i.a, i64 5909
  store i8 -16, ptr %18, align 1
  %19 = load i8, ptr %i.d, align 4, !range !7, !noundef !8
  %20 = trunc nuw i8 %19 to i1
  br i1 %20, label %bb.c, label %bb.d

bb.c:                                             ; preds = %17
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 5910
  store i8 -16, ptr %i.m, align 2
  %i.n = load i8, ptr %i.d, align 4, !range !7, !noundef !8
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %21, label %bb.d

21:                                               ; preds = %bb.c
  %22 = getelementptr inbounds nuw i8, ptr %i.a, i64 5911
  store i8 -16, ptr %22, align 1
  br label %bb.d

bb.d:                                             ; preds = %21, %bb.c, %17, %13, %9, %5, %bb.b
  %i.p = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef 657, ptr noundef nonnull @__func__.USB_AUDIO) #6 ; 15 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 5952
  store i32 2, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 5964
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %.not.i = icmp eq i32 %i.s, 0
  %spec.select.i = select i1 %.not.i, i32 6144, i32 %i.s ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 5968
  store i32 %spec.select.i, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 5896
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 5900
  store i32 2, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 5868 ; 2 uses
  store i32 48000, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 5872
  store i32 2, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 5876
  store i32 3, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 5880
  store i8 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 5920 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void @g_free(ptr noundef %i.ab) #6
  %i.ac = urem i32 %spec.select.i, 192
  %i.ad = sub nuw i32 %spec.select.i, %i.ac
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 5928
  store i64 %i.ae, ptr %i.af, align 8
  %i.ag = tail call noalias ptr @g_malloc(i64 noundef %i.ae) #7
  store ptr %i.ag, ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 5936
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 5856 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 5888 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call ptr @audio_be_open_out(ptr noundef %i.aj, ptr noundef %i.al, ptr noundef nonnull @.str, ptr noundef nonnull %i.p, ptr noundef nonnull @output_callback, ptr noundef nonnull %i.w) #6 ; 2 uses
  store ptr %i.am, ptr %i.ak, align 8
  %i.an = load ptr, ptr %i.ai, align 8
  tail call void @audio_be_set_volume_out(ptr noundef %i.an, ptr noundef %i.am, ptr noundef nonnull %i.u) #6
  %i.ao = load ptr, ptr %i.ai, align 8
  %i.ap = load ptr, ptr %i.ak, align 8
  tail call void @audio_be_set_active_out(ptr noundef %i.ao, ptr noundef %i.ap, i1 noundef zeroext false) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @usb_audio_handle_reset(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef 657, ptr noundef nonnull @__func__.USB_AUDIO) #6 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5960 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8
  %i.e = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.d, i32 noundef 1, ptr noundef nonnull @.str.60) #6 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 5856
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 5888
  %i.i = load ptr, ptr %i.h, align 8
  tail call void @audio_be_set_active_out(ptr noundef %i.g, ptr noundef %i.i, i1 noundef zeroext false) #6
  %i.j = load i32, ptr %i.b, align 8
  %.not16.i = icmp eq i32 %i.j, 0
  br i1 %.not16.i, label %usb_audio_set_output_altset.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @stderr, align 8
  %i.l = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.k, i32 noundef 1, ptr noundef nonnull @.str.61, i32 noundef 0) #6 ; 0 uses
  br label %usb_audio_set_output_altset.exit

usb_audio_set_output_altset.exit:                 ; preds = %bb.c, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 5864
  store i32 0, ptr %i.m, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @usb_audio_handle_control(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef 657, ptr noundef nonnull @__func__.USB_AUDIO) #6 ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5960 ; 6 uses
  %i.c = load i32, ptr %i.b, align 8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8
  %i.e = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.d, i32 noundef 1, ptr noundef nonnull @.str.62, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #6 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = tail call i32 @usb_desc_handle_control(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) #6
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %bb.ac, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i32 %2, label %bb.aa [
    i32 41345, label %bb.e
    i32 41346, label %bb.e
    i32 41347, label %bb.e
    i32 41348, label %bb.e
    i32 8449, label %bb.p
    i32 8450, label %bb.p
    i32 8451, label %bb.p
    i32 8452, label %bb.p
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.h = trunc i32 %3 to i8
  %i.i = add i8 %i.h, -1                          ; 5 uses
  %i.j = shl i32 %3, 16
  %i.k = and i32 %i.j, -16777216
  %i.l = shl nuw i32 %2, 16
  %i.m = and i32 %i.l, 16711680
  %i.n = or disjoint i32 %i.k, %i.m
  %i.o = and i32 %4, 65535
  %i.p = or disjoint i32 %i.n, %i.o
  switch i32 %i.p, label %bb.o [
    i32 25231872, label %bb.f
    i32 42009088, label %bb.g
    i32 42074624, label %bb.i
    i32 42140160, label %bb.k
    i32 42205696, label %bb.m
  ]

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 5896
  %i.r = load i8, ptr %i.q, align 8, !range !7, !noundef !8
  store i8 %i.r, ptr %6, align 1
  br label %usb_audio_get_control.exit

bb.g:                                             ; preds = %bb.e
  %i.s = zext i8 %i.i to i32
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 5972
  %i.u = load i8, ptr %i.t, align 4, !range !7, !noundef !8
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = select i1 %i.v, i32 8, i32 2
  %i.x = icmp samesign ugt i32 %i.w, %i.s
  br i1 %i.x, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 5904
  %i.z = zext i8 %i.i to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i32
  %i.ad = mul nuw nsw i32 %i.ac, 34816
  %i.ae = or disjoint i32 %i.ad, 127
  %i.af = udiv i32 %i.ae, 255                     ; 2 uses
  %i.ag = trunc i32 %i.af to i8
  store i8 %i.ag, ptr %6, align 1
  %i.ah = lshr i32 %i.af, 8
  %i.ai = trunc nuw i32 %i.ah to i8
  %i.aj = xor i8 %i.ai, -128
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 %i.aj, ptr %i.ak, align 1
  br label %usb_audio_get_control.exit

bb.i:                                             ; preds = %bb.e
  %i.al = zext i8 %i.i to i32
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 5972
  %i.an = load i8, ptr %i.am, align 4, !range !7, !noundef !8
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = select i1 %i.ao, i32 8, i32 2
  %i.aq = icmp samesign ugt i32 %i.ap, %i.al
  br i1 %i.aq, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %6, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 -128, ptr %i.ar, align 1
  br label %usb_audio_get_control.exit

bb.k:                                             ; preds = %bb.e
  %i.as = zext i8 %i.i to i32
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 5972
  %i.au = load i8, ptr %i.at, align 4, !range !7, !noundef !8
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = select i1 %i.av, i32 8, i32 2
  %i.ax = icmp samesign ugt i32 %i.aw, %i.as
  br i1 %i.ax, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr %6, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 8, ptr %i.ay, align 1
  br label %usb_audio_get_control.exit

bb.m:                                             ; preds = %bb.e
  %i.az = zext i8 %i.i to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 5972
  %i.bb = load i8, ptr %i.ba, align 4, !range !7, !noundef !8
  %i.bc = trunc nuw i8 %i.bb to i1
  %i.bd = select i1 %i.bc, i32 8, i32 2
  %i.be = icmp samesign ugt i32 %i.bd, %i.az
  br i1 %i.be, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 -120, ptr %6, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 0, ptr %i.bf, align 1
  br label %usb_audio_get_control.exit

bb.o:                                             ; preds = %bb.e, %bb.g, %bb.i, %bb.k, %bb.m
  %i.bg = load i32, ptr %i.b, align 8
  %.not39 = icmp eq i32 %i.bg, 0
  br i1 %.not39, label %.thread, label %.sink.split

usb_audio_get_control.exit:                       ; preds = %bb.n, %bb.l, %bb.j, %bb.h, %bb.f
  %.0.i = phi i32 [ 2, %bb.n ], [ 1, %bb.f ], [ 2, %bb.h ], [ 2, %bb.l ], [ 2, %bb.j ]
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i32 %.0.i, ptr %i.bh, align 8
  br label %bb.ac

bb.p:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.bi = trunc i32 %3 to i8
  %i.bj = add i8 %i.bi, -1                        ; 2 uses
  %i.bk = shl i32 %3, 16
  %i.bl = and i32 %i.bk, -16777216
  %i.bm = shl nuw nsw i32 %2, 16
  %i.bn = and i32 %i.bm, 16711680
  %i.bo = or disjoint i32 %i.bl, %i.bn
  %i.bp = and i32 %4, 65535
  %i.bq = or disjoint i32 %i.bo, %i.bp
  switch i32 %i.bq, label %bb.z [
    i32 16843264, label %bb.q
    i32 33620480, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.br = load i8, ptr %6, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 5896
  %i.bt = and i8 %i.br, 1
  store i8 %i.bt, ptr %i.bs, align 8
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.bu = zext i8 %i.bj to i32                    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 5972
  %i.bw = load i8, ptr %i.bv, align 4, !range !7, !noundef !8
  %i.bx = trunc nuw i8 %i.bw to i1
  %i.by = select i1 %i.bx, i32 8, i32 2
  %i.bz = icmp samesign ugt i32 %i.by, %i.bu
  br i1 %i.bz, label %bb.s, label %bb.z

bb.s:                                             ; preds = %bb.r
  %i.ca = load i16, ptr %6, align 1               ; 2 uses
  %i.cb = load i32, ptr %i.b, align 8
  %.not.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cc = load ptr, ptr @stderr, align 8
  %i.cd = zext i16 %i.ca to i32
  %i.ce = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.cc, i32 noundef 1, ptr noundef nonnull @.str.66, i32 noundef %i.bu, i32 noundef %i.cd) #6 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cf = xor i16 %i.ca, -32768                   ; 2 uses
  %i.cg = zext i16 %i.cf to i32
  %i.ch = mul nuw nsw i32 %i.cg, 255
  %i.ci = add nuw nsw i32 %i.ch, 17408
  %i.cj = udiv i32 %i.ci, 34816
  %i.ck = icmp ugt i16 %i.cf, -30652
  %i.cl = trunc i32 %i.cj to i8
  %i.cm = select i1 %i.ck, i8 -1, i8 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 5904
  %i.co = zext i8 %i.bj to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.co
  store i8 %i.cm, ptr %i.cp, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.q
  %i.cq = load i32, ptr %i.b, align 8
  %.not36.i = icmp eq i32 %i.cq, 0
  br i1 %.not36.i, label %usb_audio_set_control.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cr = load ptr, ptr @stderr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 5896
  %i.ct = load i8, ptr %i.cs, align 8, !range !7, !noundef !8
  %i.cu = zext nneg i8 %i.ct to i32
  %i.cv = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.cr, i32 noundef 1, ptr noundef nonnull @.str.67, i32 noundef %i.cu) #6 ; 0 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 5972
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 5904
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %indvars.iv.i = phi i64 [ 0, %bb.w ], [ %indvars.iv.next.i, %bb.x ] ; 3 uses
  %i.cy = load ptr, ptr @stderr, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv.i
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = zext i8 %i.da to i32
  %i.dc = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.dd = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.cy, i32 noundef 1, ptr noundef nonnull @.str.68, i32 noundef %i.dc, i32 noundef %i.db) #6 ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.de = load i8, ptr %i.cw, align 4, !range !7, !noundef !8
  %i.df = trunc nuw i8 %i.de to i1
  %i.dg = select i1 %i.df, i64 8, i64 2
  %i.dh = icmp samesign ult i64 %indvars.iv.next.i, %i.dg
  br i1 %i.dh, label %bb.x, label %bb.y, !llvm.loop !10

bb.y:                                             ; preds = %bb.x
  %i.di = load ptr, ptr @stderr, align 8
  %i.dj = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.di, i32 noundef 1, ptr noundef nonnull @.str.69) #6 ; 0 uses
  br label %usb_audio_set_control.exit

usb_audio_set_control.exit:                       ; preds = %bb.v, %bb.y
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 5856
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 5888
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 5896
  tail call void @audio_be_set_volume_out(ptr noundef %i.dl, ptr noundef %i.dn, ptr noundef nonnull %i.do) #6
  br label %bb.ac

bb.z:                                             ; preds = %bb.p, %bb.r
  %i.dp = load i32, ptr %i.b, align 8
  %.not38 = icmp eq i32 %i.dp, 0
  br i1 %.not38, label %.thread, label %.sink.split

.sink.split:                                      ; preds = %bb.z, %bb.o
  %.str.64.sink = phi ptr [ @.str.63, %bb.o ], [ @.str.64, %bb.z ]
  %i.dq = load ptr, ptr @stderr, align 8
  %i.dr = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.dq, i32 noundef 1, ptr noundef nonnull %.str.64.sink) #6 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split, %bb.d
  %.pr = load i32, ptr %i.b, align 8
  %.not40 = icmp eq i32 %.pr, 0
  br i1 %.not40, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ds = load ptr, ptr @stderr, align 8
  %i.dt = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ds, i32 noundef 1, ptr noundef nonnull @.str.65, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #6 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.o, %bb.z, %bb.ab, %bb.aa
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 84
  store i32 -3, ptr %i.du, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %usb_audio_set_control.exit, %usb_audio_get_control.exit, %.thread, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @usb_audio_handle_data(ptr nofree noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = icmp eq i32 %i.a, 225
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load i8, ptr %i.d, align 8
  %i.f = icmp eq i8 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5864
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 84
  store i32 -3, ptr %i.j, align 4
  br label %usb_audio_handle_dataout.exit

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 5944
  %i.s = load i64, ptr %i.r, align 8
  %.neg.i.i = sub i64 %i.o, %i.q
  %i.t = add i64 %.neg.i.i, %i.s
  %i.u = mul i32 %i.m, 96
  %i.v = zext i32 %i.u to i64                     ; 5 uses
  %i.w = icmp slt i64 %i.t, %i.v
  br i1 %i.w, label %streambuf_put.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = load i64, ptr %i.x, align 8
  %.not.i.i = icmp eq i64 %i.y, %i.v
  br i1 %.not.i.i, label %bb.g, label %streambuf_put.exit.i

bb.g:                                             ; preds = %bb.f
  %i.z = urem i64 %i.q, %i.v
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.13, i32 noundef 613, ptr noundef nonnull @__PRETTY_FUNCTION__.streambuf_put) #8
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %i.k, align 8
  %i.ac = urem i64 %i.q, %i.o
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  tail call void @usb_packet_copy(ptr noundef nonnull %1, ptr noundef %i.ad, i64 noundef %i.v) #6
  %i.ae = load i64, ptr %i.p, align 8
  %i.af = add i64 %i.ae, %i.v
  store i64 %i.af, ptr %i.p, align 8
  br label %streambuf_put.exit.i

streambuf_put.exit.i:                             ; preds = %bb.i, %bb.f, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.al = icmp ugt i64 %i.ak, %i.ai
  br i1 %i.al, label %bb.j, label %usb_audio_handle_dataout.exit

bb.j:                                             ; preds = %streambuf_put.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 5960
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = icmp ugt i32 %i.an, 1
  br i1 %i.ao, label %bb.k, label %usb_audio_handle_dataout.exit

bb.k:                                             ; preds = %bb.j
  %i.ap = load ptr, ptr @stderr, align 8
  %i.aq = sub nuw i64 %i.ak, %i.ai
  %i.ar = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ap, i32 noundef 1, ptr noundef nonnull @.str.71, i64 noundef %i.aq) #6 ; 0 uses
  br label %usb_audio_handle_dataout.exit

bb.l:                                             ; preds = %bb.b, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 84
  store i32 -3, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 5960
  %i.au = load i32, ptr %i.at, align 8
  %.not = icmp eq i32 %i.au, 0
  br i1 %.not, label %usb_audio_handle_dataout.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = load ptr, ptr @stderr, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = load i8, ptr %i.ax, align 8
  %i.az = zext i8 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.av, i32 noundef 1, ptr noundef nonnull @.str.70, i32 noundef %i.a, i32 noundef %i.az, i64 noundef %i.bb) #6 ; 0 uses
  br label %usb_audio_handle_dataout.exit

usb_audio_handle_dataout.exit:                    ; preds = %bb.k, %bb.j, %streambuf_put.exit.i, %bb.d, %bb.l, %bb.m
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @usb_audio_unrealize(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef 657, ptr noundef nonnull @__func__.USB_AUDIO) #6 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5960 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8
  %i.e = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.d, i32 noundef 1, ptr noundef nonnull @.str.73) #6 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 5856 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 5888 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  tail call void @audio_be_set_active_out(ptr noundef %i.g, ptr noundef %i.i, i1 noundef zeroext false) #6
  %i.j = load i32, ptr %i.b, align 8
  %.not16.i = icmp eq i32 %i.j, 0
  br i1 %.not16.i, label %usb_audio_set_output_altset.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @stderr, align 8
  %i.l = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.k, i32 noundef 1, ptr noundef nonnull @.str.61, i32 noundef 0) #6 ; 0 uses
  br label %usb_audio_set_output_altset.exit

usb_audio_set_output_altset.exit:                 ; preds = %bb.c, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 5864
  store i32 0, ptr %i.m, align 8
  %i.n = load ptr, ptr %i.f, align 8
  %i.o = load ptr, ptr %i.h, align 8
  tail call void @audio_be_close_out(ptr noundef %i.n, ptr noundef %i.o) #6
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 5920 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  tail call void @g_free(ptr noundef %i.q) #6
  store ptr null, ptr %i.p, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @usb_audio_set_interface(ptr noundef %0, i32 noundef %1, i32 %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef 657, ptr noundef nonnull @__func__.USB_AUDIO) #6
  %i.b = icmp eq i32 %1, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @usb_audio_set_output_altset(ptr noundef %i.a, i32 noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @audio_be_check(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @usb_desc_create_serial(ptr noundef) local_unnamed_addr #1

declare void @usb_desc_init(ptr noundef) local_unnamed_addr #1

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @audio_be_open_out(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @output_callback(ptr nofree noundef captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5944 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5856
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5888
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.012 = phi i32 [ %1, %bb.a ], [ %i.u, %bb.d ]  ; 2 uses
  %.not = icmp eq i32 %.012, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.a, align 8
  %i.h = load i64, ptr %i.d, align 8              ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = icmp slt i64 %i.i, 1
  br i1 %i.j, label %.critedge, label %streambuf_get.exit

streambuf_get.exit:                               ; preds = %bb.c
  %i.k = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not14 = icmp eq ptr %i.k, null
  br i1 %.not14, label %.critedge, label %bb.d

bb.d:                                             ; preds = %streambuf_get.exit
  %i.l = load i64, ptr %i.c, align 8              ; 2 uses
  %i.m = urem i64 %i.h, %i.l                      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  %i.o = sub nuw i64 %i.l, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.o) ; 2 uses
  %i.q = load ptr, ptr %i.e, align 8
  %i.r = load ptr, ptr %i.f, align 8
  %i.s = tail call i64 @audio_be_write(ptr noundef %i.q, ptr noundef %i.r, ptr noundef nonnull %i.n, i64 noundef %i.p) #6 ; 3 uses
  %i.t = trunc i64 %i.s to i32
  %i.u = sub i32 %.012, %i.t
  %i.v = load i64, ptr %i.d, align 8
  %i.w = add i64 %i.v, %i.s
  store i64 %i.w, ptr %i.d, align 8
  %.not19 = icmp ult i64 %i.s, %i.p
  br i1 %.not19, label %.critedge, label %bb.b, !llvm.loop !11

.critedge:                                        ; preds = %bb.c, %streambuf_get.exit, %bb.b, %bb.d
  ret void
}

declare void @audio_be_set_volume_out(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @audio_be_set_active_out(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @g_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #2

declare i64 @audio_be_write(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @usb_audio_set_output_altset(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.h [
    i32 0, label %bb.e
    i32 1, label %bb.b
    i32 2, label %bb.b
    i32 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5952 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = zext nneg i32 %1 to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr @altset_channels, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4              ; 6 uses
  %.not = icmp eq i32 %i.b, %i.e
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6, i32 noundef 271, ptr noundef nonnull @__func__.USB_DEVICE) #6
  %i.g = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.f, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef 657, ptr noundef nonnull @__func__.USB_AUDIO) #6 ; 15 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 5952
  store i32 %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 5964
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %.not.i = icmp eq i32 %i.j, 0
  %i.k = mul i32 %i.e, 3072
  %spec.select.i = select i1 %.not.i, i32 %i.k, i32 %i.j ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 5968
  store i32 %spec.select.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 5896
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 5900
  store i32 %i.e, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 5868 ; 2 uses
  store i32 48000, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 5872
  store i32 %i.e, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 5876
  store i32 3, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 5880
  store i8 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 5920 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  tail call void @g_free(ptr noundef %i.t) #6
  %i.u = mul i32 %i.e, 96
  %i.v = urem i32 %spec.select.i, %i.u
  %i.w = sub nuw i32 %spec.select.i, %i.v
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 5928
  store i64 %i.x, ptr %i.y, align 8
  %i.z = tail call noalias ptr @g_malloc(i64 noundef %i.x) #7
  store ptr %i.z, ptr %i.s, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 5936
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 5856 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 5888 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call ptr @audio_be_open_out(ptr noundef %i.ac, ptr noundef %i.ae, ptr noundef nonnull @.str, ptr noundef nonnull %i.g, ptr noundef nonnull @output_callback, ptr noundef nonnull %i.o) #6 ; 2 uses
  store ptr %i.af, ptr %i.ad, align 8
  %i.ag = load ptr, ptr %i.ab, align 8
  tail call void @audio_be_set_volume_out(ptr noundef %i.ag, ptr noundef %i.af, ptr noundef nonnull %i.m) #6
  %i.ah = load ptr, ptr %i.ab, align 8
  %i.ai = load ptr, ptr %i.ad, align 8
  tail call void @audio_be_set_active_out(ptr noundef %i.ah, ptr noundef %i.ai, i1 noundef zeroext false) #6
  %.pre = load i32, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aj = phi i32 [ %.pre, %bb.c ], [ %i.b, %bb.b ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 5920 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 5968
  %i.am = load i32, ptr %i.al, align 8            ; 2 uses
  %i.an = load ptr, ptr %i.ak, align 8
  tail call void @g_free(ptr noundef %i.an) #6
  %i.ao = mul i32 %i.aj, 96
  %i.ap = urem i32 %i.am, %i.ao
  %i.aq = sub nuw i32 %i.am, %i.ap
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 5928
  store i64 %i.ar, ptr %i.as, align 8
  %i.at = tail call noalias ptr @g_malloc(i64 noundef %i.ar) #7
  store ptr %i.at, ptr %i.ak, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 5936
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.sink20 = phi i1 [ true, %bb.d ], [ false, %bb.a ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 5856
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void @audio_be_set_active_out(ptr noundef %i.aw, ptr noundef %i.ay, i1 noundef zeroext %.sink20) #6
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 5960
  %i.ba = load i32, ptr %i.az, align 8
  %.not16 = icmp eq i32 %i.ba, 0
  br i1 %.not16, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bb = load ptr, ptr @stderr, align 8
  %i.bc = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bb, i32 noundef 1, ptr noundef nonnull @.str.61, i32 noundef %1) #6 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 5864
  store i32 %1, ptr %i.bd, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  ret void
}

declare i32 @usb_desc_handle_control(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @usb_packet_copy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @audio_be_close_out(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { noreturn nounwind }

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
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
end_hunk_0
