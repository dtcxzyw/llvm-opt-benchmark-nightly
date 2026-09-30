Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
begin_hunk_0_@ma_device_info_add_native_data_format:bb.a
  %i.c = load i32, ptr %i.b, align 4              ; 3 uses
  %i.d = icmp ult i32 %i.c, 64
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = zext nneg i32 %i.c to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.e ; 4 uses
  store i32 %1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %2, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 %3, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 %4, ptr %i.j, align 4
  %i.k = add nuw nsw i32 %i.c, 1
  store i32 %i.k, ptr %i.b, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden ptr @ma_get_backend_name(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i32 %0, 14
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [16 x i8], ptr @gBackendInfo, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ @.str.9, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 -2, 1) i32 @ma_get_backend_from_name(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.b = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.301)
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.d = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.302)
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.f = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.303)
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.h = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.304)
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.j = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.305)
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.l = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.306)
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.n = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.307)
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.b, label %.preheader.7

.preheader.7:                                     ; preds = %.preheader.6
  %i.p = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.308)
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.b, label %.preheader.8

.preheader.8:                                     ; preds = %.preheader.7
  %i.r = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.309)
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.b, label %.preheader.9

.preheader.9:                                     ; preds = %.preheader.8
  %i.t = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.310)
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.b, label %.preheader.10

.preheader.10:                                    ; preds = %.preheader.9
  %i.v = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.311)
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.b, label %.preheader.11

.preheader.11:                                    ; preds = %.preheader.10
  %i.x = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.312)
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.b, label %.preheader.12

.preheader.12:                                    ; preds = %.preheader.11
  %i.z = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.313)
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.b, label %.preheader.13

.preheader.13:                                    ; preds = %.preheader.12
  %i.ab = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.314)
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.b, label %.preheader.14

.preheader.14:                                    ; preds = %.preheader.13
  %i.ad = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.315)
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.preheader.14, %.preheader.13, %.preheader.12, %.preheader.11, %.preheader.10, %.preheader.9, %.preheader.8, %.preheader.7, %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi ptr [ @gBackendInfo, %.preheader.preheader ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 16), %.preheader.1 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 32), %.preheader.2 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 48), %.preheader.3 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 64), %.preheader.4 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 80), %.preheader.5 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 96), %.preheader.6 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 112), %.preheader.7 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 128), %.preheader.8 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 144), %.preheader.9 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 160), %.preheader.10 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 176), %.preheader.11 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 192), %.preheader.12 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 208), %.preheader.13 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 224), %.preheader.14 ]
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = load i32, ptr %.lcssa, align 16
  store i32 %i.af, ptr %1, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.14, %bb.b, %bb.c, %bb.a
  %.08 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ], [ 0, %bb.c ], [ -2, %.preheader.14 ]
  ret i32 %.08
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 0, 2) i32 @ma_is_backend_enabled(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %switch.tableidx = add i32 %0, -7               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 8
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ma_is_backend_enabled, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden range(i32 -18, 1) i32 @ma_get_enabled_backends(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.c, label %ma_is_backend_enabled.exit.7

ma_is_backend_enabled.exit.7:                     ; preds = %bb.a
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %bb.b, label %ma_is_backend_enabled.exit.8

ma_is_backend_enabled.exit.8:                     ; preds = %ma_is_backend_enabled.exit.7
  store i32 7, ptr %0, align 4
  %i.c = icmp eq i64 %1, 1
  br i1 %i.c, label %bb.b, label %ma_is_backend_enabled.exit.13

ma_is_backend_enabled.exit.13:                    ; preds = %ma_is_backend_enabled.exit.8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 8, ptr %i.d, align 4
  %i.e = icmp eq i64 %1, 2
  br i1 %i.e, label %bb.b, label %ma_is_backend_enabled.exit.14

ma_is_backend_enabled.exit.14:                    ; preds = %ma_is_backend_enabled.exit.13
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 13, ptr %i.f, align 4
  %i.g = icmp eq i64 %1, 3
  br i1 %i.g, label %bb.b, label %ma_is_backend_enabled.exit.thread.14

ma_is_backend_enabled.exit.thread.14:             ; preds = %ma_is_backend_enabled.exit.14
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 14, ptr %i.h, align 4
  br label %bb.b

bb.b:                                             ; preds = %ma_is_backend_enabled.exit.thread.14, %ma_is_backend_enabled.exit.14, %ma_is_backend_enabled.exit.13, %ma_is_backend_enabled.exit.8, %ma_is_backend_enabled.exit.7
  %.018.lcssa = phi i64 [ 2, %ma_is_backend_enabled.exit.13 ], [ 4, %ma_is_backend_enabled.exit.thread.14 ], [ 0, %ma_is_backend_enabled.exit.7 ], [ 3, %ma_is_backend_enabled.exit.14 ], [ 1, %ma_is_backend_enabled.exit.8 ]
  %.2 = phi i32 [ -18, %ma_is_backend_enabled.exit.13 ], [ 0, %ma_is_backend_enabled.exit.thread.14 ], [ -18, %ma_is_backend_enabled.exit.7 ], [ -18, %ma_is_backend_enabled.exit.14 ], [ -18, %ma_is_backend_enabled.exit.8 ]
  store i64 %.018.lcssa, ptr %2, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.021 = phi i32 [ %.2, %bb.b ], [ -2, %bb.a ]
  ret i32 %.021
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 0, 2) i32 @ma_is_loopback_supported(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %cond = icmp eq i32 %0, 0
  %. = zext i1 %cond to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 -1, 5) i32 @ma_get_format_priority_index(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %switch.tableidx = add i32 %0, -1               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 5
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ma_get_format_priority_index, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.06 = phi i32 [ %switch.ext, %switch.lookup ], [ -1, %bb.a ]
  ret i32 %.06
}

; Function Attrs: nounwind uwtable
define hidden i32 @ma_device_post_init(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #8 {
bb.a:
  %4 = alloca %struct.ma_data_converter_heap_layout, align 8 ; 5 uses
  %5 = alloca %struct.ma_data_converter_heap_layout, align 8 ; 5 uses
  %6 = alloca %struct.ma_data_converter_config, align 16 ; 16 uses
  %7 = alloca %struct.ma_data_converter_config, align 16 ; 16 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %8 = alloca %struct.ma_device_info, align 8     ; 6 uses
  %9 = alloca %struct.ma_device_info, align 8     ; 6 uses
  %10 = alloca %struct.ma_device_info, align 8    ; 10 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ma_device__post_init_setup.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %1, -2
  %or.cond3 = icmp ult i32 %i.c, 3                ; 5 uses
  br i1 %or.cond3, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %3, null
  br i1 %i.d, label %ma_device__post_init_setup.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %ma_device__post_init_setup.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = add i32 %i.i, -255
  %or.cond.i = icmp ult i32 %i.j, -254
  br i1 %or.cond.i, label %ma_device__post_init_setup.exit, label %ma_device_descriptor_is_valid.exit

ma_device_descriptor_is_valid.exit:               ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %ma_device__post_init_setup.exit, label %bb.f

bb.f:                                             ; preds = %ma_device_descriptor_is_valid.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2812
  store i32 %i.f, ptr %i.m, align 4
  %i.n = load i32, ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2816
  store i32 %i.n, ptr %i.o, align 8
  %i.p = load i32, ptr %i.k, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2820
  store i32 %i.p, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2824
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(254) %i.r, ptr noundef nonnull align 8 dereferenceable(254) %i.s, i64 254, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 280
  %i.u = load i32, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3080 ; 2 uses
  store i32 %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 288
  %i.x = load i32, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 3084
  store i32 %i.x, ptr %i.y, align 4
  %i.z = icmp eq i32 %i.u, 0
  br i1 %i.z, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aa = load i32, ptr %i.k, align 4             ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %ma_calculate_buffer_size_in_frames_from_milliseconds.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 284
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = mul i32 %i.ad, %i.aa
  %i.af = udiv i32 %i.ae, 1000
  br label %ma_calculate_buffer_size_in_frames_from_milliseconds.exit

ma_calculate_buffer_size_in_frames_from_milliseconds.exit: ; preds = %bb.g, %bb.h
  %.0.i71 = phi i32 [ %i.af, %bb.h ], [ 0, %bb.g ]
  store i32 %.0.i71, ptr %i.v, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %ma_calculate_buffer_size_in_frames_from_milliseconds.exit, %bb.b
  %i.ag = and i32 %1, -3
  %or.cond5 = icmp eq i32 %i.ag, 1                ; 4 uses
  br i1 %or.cond5, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.ah = icmp eq ptr %2, null
  br i1 %i.ah, label %ma_device__post_init_setup.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %ma_device__post_init_setup.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8
  %i.an = add i32 %i.am, -255
  %or.cond.i72 = icmp ult i32 %i.an, -254
  br i1 %or.cond.i72, label %ma_device__post_init_setup.exit, label %ma_device_descriptor_is_valid.exit75

ma_device_descriptor_is_valid.exit75:             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %.not86 = icmp eq i32 %i.ap, 0
  br i1 %.not86, label %ma_device__post_init_setup.exit, label %bb.m

bb.m:                                             ; preds = %ma_device_descriptor_is_valid.exit75
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1380
  store i32 %i.aj, ptr %i.aq, align 4
  %i.ar = load i32, ptr %i.al, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1384
  store i32 %i.ar, ptr %i.as, align 8
  %i.at = load i32, ptr %i.ao, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1388
  store i32 %i.at, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(254) %i.av, ptr noundef nonnull align 8 dereferenceable(254) %i.aw, i64 254, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.ay = load i32, ptr %i.ax, align 8            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  store i32 %i.ay, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1652
  store i32 %i.bb, ptr %i.bc, align 4
  %i.bd = icmp eq i32 %i.ay, 0
  br i1 %i.bd, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.be = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %ma_calculate_buffer_size_in_frames_from_milliseconds.exit77, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 284
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = mul i32 %i.bh, %i.be
  %i.bj = udiv i32 %i.bi, 1000
  br label %ma_calculate_buffer_size_in_frames_from_milliseconds.exit77

ma_calculate_buffer_size_in_frames_from_milliseconds.exit77: ; preds = %bb.n, %bb.o
  %.0.i76 = phi i32 [ %i.bj, %bb.o ], [ 0, %bb.n ]
  store i32 %.0.i76, ptr %i.az, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %ma_calculate_buffer_size_in_frames_from_milliseconds.exit77, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #61
  br i1 %or.cond3, label %bb.q, label %bb.aa

bb.q:                                             ; preds = %bb.p
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1544) %10, i8 0, i64 1544, i1 false)
  %i.bk = load ptr, ptr %0, align 8               ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 96
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.bm, null
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = call i32 %i.bm(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull %10) #61, !inline_history !79
  br label %ma_device_get_info.exit

bb.s:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = icmp eq i32 %i.bp, 4
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 2024
  %i.bs = load ptr, ptr %i.br, align 8            ; 3 uses
  %i.bt = icmp eq ptr %i.bs, null                 ; 2 uses
  %i.bu = and i1 %i.bq, %i.bt
  %.019.i = select i1 %i.bu, i32 1, i32 2
end_hunk_0
begin_hunk_1_@ma_lpf1_process_pcm_frames:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %.pre = load i32, ptr %i.e, align 4
  br label %bb.e

.preheader:                                       ; preds = %bb.b
  %.not53 = icmp eq i64 %3, 0
  br i1 %.not53, label %.loopexit, label %.lr.ph52

.lr.ph52:                                         ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %.pre61 = load i32, ptr %i.h, align 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph52, %ma_lpf1_process_pcm_frame_f32.exit
  %i.k = phi i32 [ %.pre61, %.lr.ph52 ], [ %i.at, %ma_lpf1_process_pcm_frame_f32.exit ] ; 4 uses
  %.03351 = phi ptr [ %2, %.lr.ph52 ], [ %i.aw, %ma_lpf1_process_pcm_frame_f32.exit ] ; 4 uses
  %.03450 = phi ptr [ %1, %.lr.ph52 ], [ %i.av, %ma_lpf1_process_pcm_frame_f32.exit ] ; 4 uses
  %.03549 = phi i32 [ 0, %.lr.ph52 ], [ %i.ax, %ma_lpf1_process_pcm_frame_f32.exit ]
  %i.l = load float, ptr %i.i, align 8            ; 4 uses
  %i.m = fsub float 1.000000e+00, %i.l            ; 3 uses
  %i.n = icmp ne i32 %i.k, 0
  tail call void @llvm.assume(i1 %i.n)
  %wide.trip.count59 = zext i32 %i.k to i64       ; 2 uses
  %xtraiter71 = and i64 %wide.trip.count59, 1
  %i.o = icmp eq i32 %i.k, 1
  br i1 %i.o, label %.epil.preheader70, label %.new69

.new69:                                           ; preds = %bb.c
  %unroll_iter74 = and i64 %wide.trip.count59, 4294967294
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.new69
  %indvars.iv56 = phi i64 [ 0, %.new69 ], [ %indvars.iv.next57.1, %bb.d ] ; 6 uses
  %niter75 = phi i64 [ 0, %.new69 ], [ %niter75.next.1, %bb.d ]
  %i.p = load ptr, ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv56
  %i.r = load float, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.03351, i64 %indvars.iv56
  %i.t = load float, ptr %i.s, align 4
  %i.u = fmul float %i.l, %i.r
  %i.v = tail call float @llvm.fmuladd.f32(float %i.m, float %i.t, float %i.u) ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.03450, i64 %indvars.iv56
  store float %i.v, ptr %i.w, align 4
  %i.x = load ptr, ptr %i.j, align 8
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv56
  store float %i.v, ptr %i.y, align 4
  %indvars.iv.next57 = or disjoint i64 %indvars.iv56, 1 ; 4 uses
  %i.z = load ptr, ptr %i.j, align 8
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next57
  %i.ab = load float, ptr %i.aa, align 4
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.03351, i64 %indvars.iv.next57
  %i.ad = load float, ptr %i.ac, align 4
  %i.ae = fmul float %i.l, %i.ab
  %i.af = tail call float @llvm.fmuladd.f32(float %i.m, float %i.ad, float %i.ae) ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.03450, i64 %indvars.iv.next57
  store float %i.af, ptr %i.ag, align 4
  %i.ah = load ptr, ptr %i.j, align 8
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next57
  store float %i.af, ptr %i.ai, align 4
  %indvars.iv.next57.1 = add nuw nsw i64 %indvars.iv56, 2 ; 2 uses
  %niter75.next.1 = add i64 %niter75, 2           ; 2 uses
  %niter75.ncmp.1 = icmp eq i64 %niter75.next.1, %unroll_iter74
  br i1 %niter75.ncmp.1, label %ma_lpf1_process_pcm_frame_f32.exit.unr-lcssa, label %bb.d

ma_lpf1_process_pcm_frame_f32.exit.unr-lcssa:     ; preds = %bb.d
  %lcmp.mod72.not = icmp eq i64 %xtraiter71, 0
  br i1 %lcmp.mod72.not, label %ma_lpf1_process_pcm_frame_f32.exit, label %.epil.preheader70

.epil.preheader70:                                ; preds = %ma_lpf1_process_pcm_frame_f32.exit.unr-lcssa, %bb.c
  %indvars.iv56.epil.init = phi i64 [ 0, %bb.c ], [ %indvars.iv.next57.1, %ma_lpf1_process_pcm_frame_f32.exit.unr-lcssa ] ; 4 uses
  %lcmp.mod73 = trunc i32 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod73)
  %i.aj = load ptr, ptr %i.j, align 8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv56.epil.init
  %i.al = load float, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.03351, i64 %indvars.iv56.epil.init
  %i.an = load float, ptr %i.am, align 4
  %i.ao = fmul float %i.l, %i.al
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.m, float %i.an, float %i.ao) ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.03450, i64 %indvars.iv56.epil.init
  store float %i.ap, ptr %i.aq, align 4
  %i.ar = load ptr, ptr %i.j, align 8
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv56.epil.init
  store float %i.ap, ptr %i.as, align 4
  br label %ma_lpf1_process_pcm_frame_f32.exit

ma_lpf1_process_pcm_frame_f32.exit:               ; preds = %ma_lpf1_process_pcm_frame_f32.exit.unr-lcssa, %.epil.preheader70
  %i.at = load i32, ptr %i.h, align 4             ; 2 uses
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.03450, i64 %i.au
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.03351, i64 %i.au
  %i.ax = add i32 %.03549, 1                      ; 2 uses
  %i.ay = zext i32 %i.ax to i64
  %i.az = icmp ugt i64 %3, %i.ay
  br i1 %i.az, label %bb.c, label %.loopexit

bb.e:                                             ; preds = %.lr.ph, %ma_lpf1_process_pcm_frame_s16.exit
  %i.ba = phi i32 [ %.pre, %.lr.ph ], [ %i.cv, %ma_lpf1_process_pcm_frame_s16.exit ] ; 4 uses
  %.047 = phi ptr [ %2, %.lr.ph ], [ %i.cy, %ma_lpf1_process_pcm_frame_s16.exit ] ; 4 uses
  %.03246 = phi ptr [ %1, %.lr.ph ], [ %i.cx, %ma_lpf1_process_pcm_frame_s16.exit ] ; 4 uses
  %.145 = phi i32 [ 0, %.lr.ph ], [ %i.cz, %ma_lpf1_process_pcm_frame_s16.exit ]
  %i.bb = load i32, ptr %i.f, align 8             ; 4 uses
  %i.bc = sub nsw i32 16384, %i.bb                ; 3 uses
  %i.bd = icmp ne i32 %i.ba, 0
  tail call void @llvm.assume(i1 %i.bd)
  %wide.trip.count = zext i32 %i.ba to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.be = icmp eq i32 %i.ba, 1
  br i1 %i.be, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.e
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.1, %bb.f ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.f ]
  %i.bf = load ptr, ptr %i.g, align 8
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %.047, i64 %indvars.iv
  %i.bj = load i16, ptr %i.bi, align 2
  %i.bk = sext i16 %i.bj to i32
  %i.bl = mul nsw i32 %i.bc, %i.bk
  %i.bm = mul nsw i32 %i.bh, %i.bb
  %i.bn = add nsw i32 %i.bl, %i.bm
  %i.bo = ashr i32 %i.bn, 14                      ; 2 uses
  %i.bp = trunc i32 %i.bo to i16
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %.03246, i64 %indvars.iv
  store i16 %i.bp, ptr %i.bq, align 2
  %i.br = load ptr, ptr %i.g, align 8
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv
  store i32 %i.bo, ptr %i.bs, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 4 uses
  %i.bt = load ptr, ptr %i.g, align 8
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.next
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %.047, i64 %indvars.iv.next
  %i.bx = load i16, ptr %i.bw, align 2
  %i.by = sext i16 %i.bx to i32
  %i.bz = mul nsw i32 %i.bc, %i.by
  %i.ca = mul nsw i32 %i.bv, %i.bb
  %i.cb = add nsw i32 %i.bz, %i.ca
  %i.cc = ashr i32 %i.cb, 14                      ; 2 uses
  %i.cd = trunc i32 %i.cc to i16
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %.03246, i64 %indvars.iv.next
  store i16 %i.cd, ptr %i.ce, align 2
  %i.cf = load ptr, ptr %i.g, align 8
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next
  store i32 %i.cc, ptr %i.cg, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %ma_lpf1_process_pcm_frame_s16.exit.unr-lcssa, label %bb.f

ma_lpf1_process_pcm_frame_s16.exit.unr-lcssa:     ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ma_lpf1_process_pcm_frame_s16.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %ma_lpf1_process_pcm_frame_s16.exit.unr-lcssa, %bb.e
  %indvars.iv.epil.init = phi i64 [ 0, %bb.e ], [ %indvars.iv.next.1, %ma_lpf1_process_pcm_frame_s16.exit.unr-lcssa ] ; 4 uses
  %lcmp.mod68 = trunc i32 %i.ba to i1
  tail call void @llvm.assume(i1 %lcmp.mod68)
  %i.ch = load ptr, ptr %i.g, align 8
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.epil.init
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %.047, i64 %indvars.iv.epil.init
  %i.cl = load i16, ptr %i.ck, align 2
  %i.cm = sext i16 %i.cl to i32
  %i.cn = mul nsw i32 %i.bc, %i.cm
  %i.co = mul nsw i32 %i.cj, %i.bb
  %i.cp = add nsw i32 %i.cn, %i.co
  %i.cq = ashr i32 %i.cp, 14                      ; 2 uses
  %i.cr = trunc i32 %i.cq to i16
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %.03246, i64 %indvars.iv.epil.init
  store i16 %i.cr, ptr %i.cs, align 2
  %i.ct = load ptr, ptr %i.g, align 8
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.epil.init
  store i32 %i.cq, ptr %i.cu, align 4
  br label %ma_lpf1_process_pcm_frame_s16.exit

ma_lpf1_process_pcm_frame_s16.exit:               ; preds = %ma_lpf1_process_pcm_frame_s16.exit.unr-lcssa, %.epil.preheader
  %i.cv = load i32, ptr %i.e, align 4             ; 2 uses
  %i.cw = zext i32 %i.cv to i64                   ; 2 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %.03246, i64 %i.cw
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %.047, i64 %i.cw
  %i.cz = add i32 %.145, 1                        ; 2 uses
  %i.da = zext i32 %i.cz to i64
  %i.db = icmp ugt i64 %3, %i.da
  br i1 %i.db, label %bb.e, label %.loopexit

.loopexit:                                        ; preds = %ma_lpf1_process_pcm_frame_s16.exit, %ma_lpf1_process_pcm_frame_f32.exit, %.preheader42, %.preheader, %bb.b, %bb.a
  %.036 = phi i32 [ -2, %bb.a ], [ -2, %bb.b ], [ 0, %.preheader ], [ 0, %.preheader42 ], [ 0, %ma_lpf1_process_pcm_frame_f32.exit ], [ 0, %ma_lpf1_process_pcm_frame_s16.exit ]
  ret i32 %.036
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 0, 2) i32 @ma_lpf1_get_latency(ptr nofree noundef readnone captures(address_is_null) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %. = zext i1 %i.a to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define hidden range(i32 -2, 1) i32 @ma_lpf2_get_heap_size(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #30 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load double, ptr %i.a, align 8, !noalias !465
  %i.c = fmul double %i.b, f0x401921FB54442D18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !noalias !465
  %i.f = uitofp i32 %i.e to double
  %i.g = fdiv double %i.c, %i.f                   ; 3 uses
  %i.h = tail call double @llvm.fabs.f64(double %i.g)
  %i.i = fcmp oeq double %i.h, +inf
  br i1 %i.i, label %cdce.call, label %cdce.end, !prof !46

cdce.call:                                        ; preds = %bb.a
  %i.j = tail call double @sin(double noundef %i.g) #61, !noalias !465 ; 0 uses
  br label %cdce.end

cdce.end:                                         ; preds = %bb.a, %cdce.call
  %i.k = fsub double f0x3FF921FB54442D18, %i.g    ; 2 uses
  %i.l = tail call double @llvm.fabs.f64(double %i.k)
  %i.m = fcmp oeq double %i.l, +inf
  br i1 %i.m, label %cdce.call9, label %cdce.end10, !prof !46

cdce.call9:                                       ; preds = %cdce.end
  %i.n = tail call double @sin(double noundef %i.k) #61, !noalias !465 ; 0 uses
  br label %cdce.end10

cdce.end10:                                       ; preds = %cdce.end, %cdce.call9
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = load i32, ptr %i.o, align 4, !noalias !465 ; 2 uses
  %i.q = icmp eq ptr %1, null
  br i1 %i.q, label %ma_biquad_get_heap_size.exit, label %bb.b

bb.b:                                             ; preds = %cdce.end10
  store i64 0, ptr %1, align 8
  %i.r = icmp eq i32 %i.p, 0
  br i1 %i.r, label %ma_biquad_get_heap_size.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = zext i32 %i.p to i64
  %i.t = shl nuw nsw i64 %i.s, 3
  store i64 %i.t, ptr %1, align 8
  br label %ma_biquad_get_heap_size.exit

ma_biquad_get_heap_size.exit:                     ; preds = %cdce.end10, %bb.b, %bb.c
  %.0.i = phi i32 [ 0, %bb.c ], [ -2, %cdce.end10 ], [ -2, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define hidden range(i32 -3, 1) i32 @ma_lpf2_init_preallocated(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #30 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %ma_biquad_init_preallocated.exit, label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %2, i8 0, i64 64, i1 false)
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ma_biquad_init_preallocated.exit, label %ma_zero_memory_default.exit17.i

ma_zero_memory_default.exit17.i:                  ; preds = %ma_zero_memory_default.exit
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !noalias !468
  %i.f = uitofp i32 %i.e to double
  %i.g = load <2 x double>, ptr %i.c, align 8, !noalias !468
  %i.h = fmul <2 x double> %i.g, <double f0x401921FB54442D18, double 2.000000e+00> ; 2 uses
  %i.i = extractelement <2 x double> %i.h, i64 0
  %i.j = fdiv double %i.i, %i.f                   ; 2 uses
  %i.k = tail call double @sin(double noundef %i.j) #61, !noalias !468
  %i.l = fsub double f0x3FF921FB54442D18, %i.j
  %i.m = tail call double @sin(double noundef %i.l) #61, !noalias !468 ; 2 uses
  %i.n = extractelement <2 x double> %i.h, i64 1
  %i.o = fdiv double %i.k, %i.n                   ; 2 uses
  %i.p = fadd double %i.o, 1.000000e+00           ; 6 uses
  %i.q = fsub double 1.000000e+00, %i.m           ; 3 uses
  %i.r = fmul double %i.q, 5.000000e-01
  %i.s = fmul double %i.m, -2.000000e+00          ; 2 uses
  %i.t = fsub double 1.000000e+00, %i.o           ; 2 uses
  %i.u = load i32, ptr %0, align 8, !noalias !468 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = load i32, ptr %i.v, align 4, !noalias !468 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %2, i8 0, i64 64, i1 false)
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %ma_biquad_init_preallocated.exit, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit17.i
  %i.y = zext i32 %i.w to i64                     ; 2 uses
  %i.z = shl nuw nsw i64 %i.y, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %1, ptr %i.aa, align 8
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = shl nuw nsw i64 %i.y, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 0, i64 %i.ab, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %1, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.z
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.ad, ptr %i.ae, align 8
  %i.af = fcmp oeq double %i.p, 0.000000e+00
  br i1 %i.af, label %ma_biquad_init_preallocated.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  switch i32 %i.u, label %ma_biquad_init_preallocated.exit [
    i32 5, label %bb.f
    i32 2, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.ag = load i32, ptr %2, align 8               ; 2 uses
  %.not53.i = icmp eq i32 %i.ag, 0
  %.not54.i = icmp eq i32 %i.ag, %i.u
  %or.cond57.i = or i1 %.not53.i, %.not54.i
  br i1 %or.cond57.i, label %bb.g, label %ma_biquad_init_preallocated.exit

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4            ; 2 uses
  %.not55.i = icmp eq i32 %i.ai, 0
  %.not56.i = icmp eq i32 %i.ai, %i.w
  %or.cond = or i1 %.not55.i, %.not56.i
  br i1 %or.cond, label %bb.h, label %ma_biquad_init_preallocated.exit

bb.h:                                             ; preds = %bb.g
  store i32 %i.u, ptr %2, align 8
  store i32 %i.w, ptr %i.ah, align 4
  %i.aj = icmp eq i32 %i.u, 5
  %i.ak = fdiv double %i.r, %i.p                  ; 3 uses
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.an = fdiv double %i.q, %i.p
  %i.ao = insertelement <2 x double> poison, double %i.s, i64 0
  %i.ap = insertelement <2 x double> %i.ao, double %i.t, i64 1
  %i.aq = insertelement <2 x double> poison, double %i.p, i64 0
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.as = fdiv <2 x double> %i.ap, %i.ar
  %i.at = insertelement <4 x double> poison, double %i.an, i64 0
  %i.au = insertelement <4 x double> %i.at, double %i.ak, i64 1
  %i.av = shufflevector <2 x double> %i.as, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aw = shufflevector <4 x double> %i.au, <4 x double> %i.av, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ax = fptrunc <4 x double> %i.aw to <4 x float>
  %i.ay = fptrunc double %i.ak to float
  store float %i.ay, ptr %i.al, align 8
  store <4 x float> %i.ax, ptr %i.am, align 4
  br label %ma_biquad_init_preallocated.exit

bb.j:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ba = insertelement <2 x double> poison, double %i.q, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %i.s, i64 1
  %i.bc = insertelement <2 x double> poison, double %i.p, i64 0
  %i.bd = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.be = fdiv <2 x double> %i.bb, %i.bd
  %i.bf = insertelement <4 x double> poison, double %i.ak, i64 0
  %i.bg = shufflevector <2 x double> %i.be, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.bh = shufflevector <4 x double> %i.bf, <4 x double> %i.bg, <4 x i32> <i32 0, i32 4, i32 0, i32 6>
  %i.bi = fmul <4 x double> %i.bh, splat (double 1.638400e+04)
  %i.bj = fptosi <4 x double> %i.bi to <4 x i32>
  store <4 x i32> %i.bj, ptr %i.az, align 8
  %i.bk = fdiv double %i.t, %i.p
  %i.bl = fmul double %i.bk, 1.638400e+04
  %i.bm = fptosi double %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.bm, ptr %i.bn, align 8
  br label %ma_biquad_init_preallocated.exit

ma_biquad_init_preallocated.exit:                 ; preds = %ma_zero_memory_default.exit17.i, %bb.d, %bb.e, %bb.f, %bb.i, %bb.j, %bb.g, %ma_zero_memory_default.exit, %bb.a
  %.0 = phi i32 [ -2, %ma_zero_memory_default.exit ], [ -2, %bb.a ], [ -2, %ma_zero_memory_default.exit17.i ], [ -3, %bb.g ], [ 0, %bb.i ], [ -2, %bb.d ], [ -2, %bb.e ], [ -3, %bb.f ], [ 0, %bb.j ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -4, 1) i32 @ma_lpf2_init(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load double, ptr %i.a, align 8, !noalias !471
  %i.c = fmul double %i.b, f0x401921FB54442D18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !noalias !471
  %i.f = uitofp i32 %i.e to double
  %i.g = fdiv double %i.c, %i.f                   ; 3 uses
  %i.h = tail call double @llvm.fabs.f64(double %i.g)
  %i.i = fcmp oeq double %i.h, +inf
  br i1 %i.i, label %cdce.call, label %cdce.end.i, !prof !46
end_hunk_1
begin_hunk_2_@ma_hpf1_process_pcm_frames:bb.a

.preheader:                                       ; preds = %bb.b
  %.not53 = icmp eq i64 %3, 0
  br i1 %.not53, label %.loopexit, label %.lr.ph52

.lr.ph52:                                         ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %.pre61 = load i32, ptr %i.h, align 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph52, %ma_hpf1_process_pcm_frame_f32.exit
  %i.k = phi i32 [ %.pre61, %.lr.ph52 ], [ %i.ax, %ma_hpf1_process_pcm_frame_f32.exit ] ; 4 uses
  %.03351 = phi ptr [ %2, %.lr.ph52 ], [ %i.ba, %ma_hpf1_process_pcm_frame_f32.exit ] ; 4 uses
  %.03450 = phi ptr [ %1, %.lr.ph52 ], [ %i.az, %ma_hpf1_process_pcm_frame_f32.exit ] ; 4 uses
  %.03549 = phi i32 [ 0, %.lr.ph52 ], [ %i.bb, %ma_hpf1_process_pcm_frame_f32.exit ]
  %i.l = load float, ptr %i.i, align 8
  %i.m = fsub float 1.000000e+00, %i.l            ; 4 uses
  %i.n = fsub float 1.000000e+00, %i.m            ; 3 uses
  %i.o = icmp ne i32 %i.k, 0
  tail call void @llvm.assume(i1 %i.o)
  %wide.trip.count59 = zext i32 %i.k to i64       ; 2 uses
  %xtraiter71 = and i64 %wide.trip.count59, 1
  %i.p = icmp eq i32 %i.k, 1
  br i1 %i.p, label %.epil.preheader70, label %.new69

.new69:                                           ; preds = %bb.c
  %unroll_iter74 = and i64 %wide.trip.count59, 4294967294
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.new69
  %indvars.iv56 = phi i64 [ 0, %.new69 ], [ %indvars.iv.next57.1, %bb.d ] ; 6 uses
  %niter75 = phi i64 [ 0, %.new69 ], [ %niter75.next.1, %bb.d ]
  %i.q = load ptr, ptr %i.j, align 8
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv56
  %i.s = load float, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.03351, i64 %indvars.iv56
  %i.u = load float, ptr %i.t, align 4
  %i.v = fneg float %i.s
  %i.w = fmul float %i.m, %i.v
  %i.x = tail call float @llvm.fmuladd.f32(float %i.n, float %i.u, float %i.w) ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.03450, i64 %indvars.iv56
  store float %i.x, ptr %i.y, align 4
  %i.z = load ptr, ptr %i.j, align 8
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv56
  store float %i.x, ptr %i.aa, align 4
  %indvars.iv.next57 = or disjoint i64 %indvars.iv56, 1 ; 4 uses
  %i.ab = load ptr, ptr %i.j, align 8
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next57
  %i.ad = load float, ptr %i.ac, align 4
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.03351, i64 %indvars.iv.next57
  %i.af = load float, ptr %i.ae, align 4
  %i.ag = fneg float %i.ad
  %i.ah = fmul float %i.m, %i.ag
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.n, float %i.af, float %i.ah) ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.03450, i64 %indvars.iv.next57
  store float %i.ai, ptr %i.aj, align 4
  %i.ak = load ptr, ptr %i.j, align 8
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next57
  store float %i.ai, ptr %i.al, align 4
  %indvars.iv.next57.1 = add nuw nsw i64 %indvars.iv56, 2 ; 2 uses
  %niter75.next.1 = add i64 %niter75, 2           ; 2 uses
  %niter75.ncmp.1 = icmp eq i64 %niter75.next.1, %unroll_iter74
  br i1 %niter75.ncmp.1, label %ma_hpf1_process_pcm_frame_f32.exit.unr-lcssa, label %bb.d

ma_hpf1_process_pcm_frame_f32.exit.unr-lcssa:     ; preds = %bb.d
  %lcmp.mod72.not = icmp eq i64 %xtraiter71, 0
  br i1 %lcmp.mod72.not, label %ma_hpf1_process_pcm_frame_f32.exit, label %.epil.preheader70

.epil.preheader70:                                ; preds = %ma_hpf1_process_pcm_frame_f32.exit.unr-lcssa, %bb.c
  %indvars.iv56.epil.init = phi i64 [ 0, %bb.c ], [ %indvars.iv.next57.1, %ma_hpf1_process_pcm_frame_f32.exit.unr-lcssa ] ; 4 uses
  %lcmp.mod73 = trunc i32 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod73)
  %i.am = load ptr, ptr %i.j, align 8
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv56.epil.init
  %i.ao = load float, ptr %i.an, align 4
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.03351, i64 %indvars.iv56.epil.init
  %i.aq = load float, ptr %i.ap, align 4
  %i.ar = fneg float %i.ao
  %i.as = fmul float %i.m, %i.ar
  %i.at = tail call float @llvm.fmuladd.f32(float %i.n, float %i.aq, float %i.as) ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.03450, i64 %indvars.iv56.epil.init
  store float %i.at, ptr %i.au, align 4
  %i.av = load ptr, ptr %i.j, align 8
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv56.epil.init
  store float %i.at, ptr %i.aw, align 4
  br label %ma_hpf1_process_pcm_frame_f32.exit

ma_hpf1_process_pcm_frame_f32.exit:               ; preds = %ma_hpf1_process_pcm_frame_f32.exit.unr-lcssa, %.epil.preheader70
  %i.ax = load i32, ptr %i.h, align 4             ; 2 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.03450, i64 %i.ay
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.03351, i64 %i.ay
  %i.bb = add i32 %.03549, 1                      ; 2 uses
  %i.bc = zext i32 %i.bb to i64
  %i.bd = icmp ugt i64 %3, %i.bc
  br i1 %i.bd, label %bb.c, label %.loopexit

bb.e:                                             ; preds = %.lr.ph, %ma_hpf1_process_pcm_frame_s16.exit
  %i.be = phi i32 [ %.pre, %.lr.ph ], [ %i.cv, %ma_hpf1_process_pcm_frame_s16.exit ] ; 4 uses
  %.047 = phi ptr [ %2, %.lr.ph ], [ %i.cy, %ma_hpf1_process_pcm_frame_s16.exit ] ; 4 uses
  %.03246 = phi ptr [ %1, %.lr.ph ], [ %i.cx, %ma_hpf1_process_pcm_frame_s16.exit ] ; 4 uses
  %.145 = phi i32 [ 0, %.lr.ph ], [ %i.cz, %ma_hpf1_process_pcm_frame_s16.exit ]
  %i.bf = load i32, ptr %i.f, align 8             ; 4 uses
  %.neg.i = add i32 %i.bf, -16384                 ; 3 uses
  %i.bg = icmp ne i32 %i.be, 0
  tail call void @llvm.assume(i1 %i.bg)
  %wide.trip.count = zext i32 %i.be to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bh = icmp eq i32 %i.be, 1
  br i1 %i.bh, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.e
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.1, %bb.f ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.f ]
  %i.bi = load ptr, ptr %i.g, align 8
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %.047, i64 %indvars.iv
  %i.bm = load i16, ptr %i.bl, align 2
  %i.bn = sext i16 %i.bm to i32
  %i.bo = mul nsw i32 %i.bf, %i.bn
  %.neg20.i = mul i32 %i.bk, %.neg.i
  %i.bp = add i32 %i.bo, %.neg20.i
  %i.bq = ashr i32 %i.bp, 14                      ; 2 uses
  %i.br = trunc i32 %i.bq to i16
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.03246, i64 %indvars.iv
  store i16 %i.br, ptr %i.bs, align 2
  %i.bt = load ptr, ptr %i.g, align 8
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv
  store i32 %i.bq, ptr %i.bu, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 4 uses
  %i.bv = load ptr, ptr %i.g, align 8
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %.047, i64 %indvars.iv.next
  %i.bz = load i16, ptr %i.by, align 2
  %i.ca = sext i16 %i.bz to i32
  %i.cb = mul nsw i32 %i.bf, %i.ca
  %.neg20.i.1 = mul i32 %i.bx, %.neg.i
  %i.cc = add i32 %i.cb, %.neg20.i.1
  %i.cd = ashr i32 %i.cc, 14                      ; 2 uses
  %i.ce = trunc i32 %i.cd to i16
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %.03246, i64 %indvars.iv.next
  store i16 %i.ce, ptr %i.cf, align 2
  %i.cg = load ptr, ptr %i.g, align 8
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.next
  store i32 %i.cd, ptr %i.ch, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %ma_hpf1_process_pcm_frame_s16.exit.unr-lcssa, label %bb.f

ma_hpf1_process_pcm_frame_s16.exit.unr-lcssa:     ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ma_hpf1_process_pcm_frame_s16.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %ma_hpf1_process_pcm_frame_s16.exit.unr-lcssa, %bb.e
  %indvars.iv.epil.init = phi i64 [ 0, %bb.e ], [ %indvars.iv.next.1, %ma_hpf1_process_pcm_frame_s16.exit.unr-lcssa ] ; 4 uses
  %lcmp.mod68 = trunc i32 %i.be to i1
  tail call void @llvm.assume(i1 %lcmp.mod68)
  %i.ci = load ptr, ptr %i.g, align 8
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.epil.init
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %.047, i64 %indvars.iv.epil.init
  %i.cm = load i16, ptr %i.cl, align 2
  %i.cn = sext i16 %i.cm to i32
  %i.co = mul nsw i32 %i.bf, %i.cn
  %.neg20.i.epil = mul i32 %i.ck, %.neg.i
  %i.cp = add i32 %i.co, %.neg20.i.epil
  %i.cq = ashr i32 %i.cp, 14                      ; 2 uses
  %i.cr = trunc i32 %i.cq to i16
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %.03246, i64 %indvars.iv.epil.init
  store i16 %i.cr, ptr %i.cs, align 2
  %i.ct = load ptr, ptr %i.g, align 8
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.epil.init
  store i32 %i.cq, ptr %i.cu, align 4
  br label %ma_hpf1_process_pcm_frame_s16.exit

ma_hpf1_process_pcm_frame_s16.exit:               ; preds = %ma_hpf1_process_pcm_frame_s16.exit.unr-lcssa, %.epil.preheader
  %i.cv = load i32, ptr %i.e, align 4             ; 2 uses
  %i.cw = zext i32 %i.cv to i64                   ; 2 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %.03246, i64 %i.cw
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %.047, i64 %i.cw
  %i.cz = add i32 %.145, 1                        ; 2 uses
  %i.da = zext i32 %i.cz to i64
  %i.db = icmp ugt i64 %3, %i.da
  br i1 %i.db, label %bb.e, label %.loopexit

.loopexit:                                        ; preds = %ma_hpf1_process_pcm_frame_s16.exit, %ma_hpf1_process_pcm_frame_f32.exit, %.preheader42, %.preheader, %bb.b, %bb.a
  %.036 = phi i32 [ -2, %bb.a ], [ -2, %bb.b ], [ 0, %.preheader ], [ 0, %.preheader42 ], [ 0, %ma_hpf1_process_pcm_frame_f32.exit ], [ 0, %ma_hpf1_process_pcm_frame_s16.exit ]
  ret i32 %.036
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 0, 2) i32 @ma_hpf1_get_latency(ptr nofree noundef readnone captures(address_is_null) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %. = zext i1 %i.a to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define hidden range(i32 -2, 1) i32 @ma_hpf2_get_heap_size(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #30 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load double, ptr %i.a, align 8, !noalias !494
  %i.c = fmul double %i.b, f0x401921FB54442D18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !noalias !494
  %i.f = uitofp i32 %i.e to double
  %i.g = fdiv double %i.c, %i.f                   ; 3 uses
  %i.h = tail call double @llvm.fabs.f64(double %i.g)
  %i.i = fcmp oeq double %i.h, +inf
  br i1 %i.i, label %cdce.call, label %cdce.end, !prof !46

cdce.call:                                        ; preds = %bb.a
  %i.j = tail call double @sin(double noundef %i.g) #61, !noalias !494 ; 0 uses
  br label %cdce.end

cdce.end:                                         ; preds = %bb.a, %cdce.call
  %i.k = fsub double f0x3FF921FB54442D18, %i.g    ; 2 uses
  %i.l = tail call double @llvm.fabs.f64(double %i.k)
  %i.m = fcmp oeq double %i.l, +inf
  br i1 %i.m, label %cdce.call9, label %cdce.end10, !prof !46

cdce.call9:                                       ; preds = %cdce.end
  %i.n = tail call double @sin(double noundef %i.k) #61, !noalias !494 ; 0 uses
  br label %cdce.end10

cdce.end10:                                       ; preds = %cdce.end, %cdce.call9
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = load i32, ptr %i.o, align 4, !noalias !494 ; 2 uses
  %i.q = icmp eq ptr %1, null
  br i1 %i.q, label %ma_biquad_get_heap_size.exit, label %bb.b

bb.b:                                             ; preds = %cdce.end10
  store i64 0, ptr %1, align 8
  %i.r = icmp eq i32 %i.p, 0
  br i1 %i.r, label %ma_biquad_get_heap_size.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = zext i32 %i.p to i64
  %i.t = shl nuw nsw i64 %i.s, 3
  store i64 %i.t, ptr %1, align 8
  br label %ma_biquad_get_heap_size.exit

ma_biquad_get_heap_size.exit:                     ; preds = %cdce.end10, %bb.b, %bb.c
  %.0.i = phi i32 [ 0, %bb.c ], [ -2, %cdce.end10 ], [ -2, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define hidden range(i32 -3, 1) i32 @ma_hpf2_init_preallocated(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #30 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %ma_biquad_init_preallocated.exit, label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %2, i8 0, i64 64, i1 false)
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ma_biquad_init_preallocated.exit, label %ma_zero_memory_default.exit17.i

ma_zero_memory_default.exit17.i:                  ; preds = %ma_zero_memory_default.exit
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !noalias !497
  %i.f = uitofp i32 %i.e to double
  %i.g = load <2 x double>, ptr %i.c, align 8, !noalias !497
  %i.h = fmul <2 x double> %i.g, <double f0x401921FB54442D18, double 2.000000e+00> ; 2 uses
  %i.i = extractelement <2 x double> %i.h, i64 0
  %i.j = fdiv double %i.i, %i.f                   ; 2 uses
  %i.k = tail call double @sin(double noundef %i.j) #61, !noalias !497
  %i.l = fsub double f0x3FF921FB54442D18, %i.j
  %i.m = tail call double @sin(double noundef %i.l) #61, !noalias !497 ; 2 uses
  %i.n = fadd double %i.m, 1.000000e+00           ; 2 uses
  %i.o = extractelement <2 x double> %i.h, i64 1
  %i.p = fdiv double %i.k, %i.o                   ; 2 uses
  %i.q = fmul double %i.n, 5.000000e-01
  %i.r = fneg double %i.n                         ; 2 uses
  %i.s = fadd double %i.p, 1.000000e+00           ; 6 uses
  %i.t = fmul double %i.m, -2.000000e+00          ; 2 uses
  %i.u = fsub double 1.000000e+00, %i.p           ; 2 uses
  %i.v = load i32, ptr %0, align 8, !noalias !497 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = load i32, ptr %i.w, align 4, !noalias !497 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %2, i8 0, i64 64, i1 false)
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %ma_biquad_init_preallocated.exit, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit17.i
  %i.z = zext i32 %i.x to i64                     ; 2 uses
  %i.aa = shl nuw nsw i64 %i.z, 2
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %1, ptr %i.ab, align 8
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 0, i64 %i.ac, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %1, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.ae, ptr %i.af, align 8
  %i.ag = fcmp oeq double %i.s, 0.000000e+00
  br i1 %i.ag, label %ma_biquad_init_preallocated.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  switch i32 %i.v, label %ma_biquad_init_preallocated.exit [
    i32 5, label %bb.f
    i32 2, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.ah = load i32, ptr %2, align 8               ; 2 uses
  %.not53.i = icmp eq i32 %i.ah, 0
  %.not54.i = icmp eq i32 %i.ah, %i.v
  %or.cond57.i = or i1 %.not53.i, %.not54.i
  br i1 %or.cond57.i, label %bb.g, label %ma_biquad_init_preallocated.exit

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %.not55.i = icmp eq i32 %i.aj, 0
  %.not56.i = icmp eq i32 %i.aj, %i.x
  %or.cond = or i1 %.not55.i, %.not56.i
  br i1 %or.cond, label %bb.h, label %ma_biquad_init_preallocated.exit

bb.h:                                             ; preds = %bb.g
  store i32 %i.v, ptr %2, align 8
  store i32 %i.x, ptr %i.ai, align 4
  %i.ak = icmp eq i32 %i.v, 5
  %i.al = fdiv double %i.q, %i.s                  ; 3 uses
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ao = fdiv double %i.r, %i.s
  %i.ap = insertelement <2 x double> poison, double %i.t, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %i.u, i64 1
  %i.ar = insertelement <2 x double> poison, double %i.s, i64 0
  %i.as = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> zeroinitializer
  %i.at = fdiv <2 x double> %i.aq, %i.as
  %i.au = insertelement <4 x double> poison, double %i.ao, i64 0
  %i.av = insertelement <4 x double> %i.au, double %i.al, i64 1
  %i.aw = shufflevector <2 x double> %i.at, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ax = shufflevector <4 x double> %i.av, <4 x double> %i.aw, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ay = fptrunc <4 x double> %i.ax to <4 x float>
  %i.az = fptrunc double %i.al to float
  store float %i.az, ptr %i.am, align 8
  store <4 x float> %i.ay, ptr %i.an, align 4
  br label %ma_biquad_init_preallocated.exit

bb.j:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = insertelement <2 x double> poison, double %i.r, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.t, i64 1
  %i.bd = insertelement <2 x double> poison, double %i.s, i64 0
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = fdiv <2 x double> %i.bc, %i.be
  %i.bg = insertelement <4 x double> poison, double %i.al, i64 0
  %i.bh = shufflevector <2 x double> %i.bf, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.bi = shufflevector <4 x double> %i.bg, <4 x double> %i.bh, <4 x i32> <i32 0, i32 4, i32 0, i32 6>
  %i.bj = fmul <4 x double> %i.bi, splat (double 1.638400e+04)
  %i.bk = fptosi <4 x double> %i.bj to <4 x i32>
  store <4 x i32> %i.bk, ptr %i.ba, align 8
  %i.bl = fdiv double %i.u, %i.s
  %i.bm = fmul double %i.bl, 1.638400e+04
  %i.bn = fptosi double %i.bm to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.bn, ptr %i.bo, align 8
  br label %ma_biquad_init_preallocated.exit

ma_biquad_init_preallocated.exit:                 ; preds = %ma_zero_memory_default.exit17.i, %bb.d, %bb.e, %bb.f, %bb.i, %bb.j, %bb.g, %ma_zero_memory_default.exit, %bb.a
  %.0 = phi i32 [ -2, %ma_zero_memory_default.exit ], [ -2, %bb.a ], [ -2, %ma_zero_memory_default.exit17.i ], [ -3, %bb.g ], [ 0, %bb.i ], [ -2, %bb.d ], [ -2, %bb.e ], [ -3, %bb.f ], [ 0, %bb.j ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -4, 1) i32 @ma_hpf2_init(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load double, ptr %i.a, align 8, !noalias !500
  %i.c = fmul double %i.b, f0x401921FB54442D18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !noalias !500
  %i.f = uitofp i32 %i.e to double
  %i.g = fdiv double %i.c, %i.f                   ; 3 uses
  %i.h = tail call double @llvm.fabs.f64(double %i.g)
  %i.i = fcmp oeq double %i.h, +inf
end_hunk_2
begin_hunk_3_@drmp3dec_decode_frame:bb.a
  br i1 %.not33.i.i.2, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ava = load i8, ptr %i.ns, align 1
  %i.avb = and i8 %i.ava, 8
  %.not32.i.i.2 = icmp eq i8 %i.avb, 0
  %i.avc = select i1 %.not32.i.i.2, i8 0, i8 3
  br label %bb.dt

bb.ds:                                            ; preds = %bb.dq
  %i.avd = sext i32 %i.auy to i64
  %i.ave = getelementptr inbounds i8, ptr %i.nw, i64 %i.avd
  %i.avf = load i8, ptr %i.ave, align 1
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %i.avg = phi i8 [ %i.avc, %bb.dr ], [ %i.avf, %bb.ds ]
  %i.avh = sext i32 %i.aux to i64
  %i.avi = getelementptr inbounds i8, ptr %i.nw, i64 %i.avh
  store i8 %i.avg, ptr %i.avi, align 1
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.dm
  %i.avj = load ptr, ptr %i.ok, align 8           ; 3 uses
  %i.avk = getelementptr inbounds nuw i8, ptr %i.ok, i64 44
  %i.avl = load i16, ptr %i.avk, align 4
  %i.avm = and i16 %i.avl, 1
  %i.avn = zext nneg i16 %i.avm to i32
  %i.avo = load i8, ptr %i.ns, align 1
  %i.avp = and i8 %i.avo, 8
  %.not.i34.i.i = icmp eq i8 %i.avp, 0
  %i.avq = select i1 %.not.i34.i.i, i32 64, i32 7
  %i.avr = load i8, ptr %i.avj, align 1           ; 2 uses
  %.not3648.i.i.i = icmp eq i8 %i.avr, 0
  br i1 %.not3648.i.i.i, label %drmp3_L3_intensity_stereo.exit.i, label %.lr.ph.i35.i.i

.lr.ph.i35.i.i:                                   ; preds = %bb.du, %drmp3_L3_intensity_stereo_band.exit.i.i.i
  %i.avs = phi i8 [ %i.azc, %drmp3_L3_intensity_stereo_band.exit.i.i.i ], [ %i.avr, %bb.du ] ; 5 uses
  %i.avt = phi ptr [ %i.azb, %drmp3_L3_intensity_stereo_band.exit.i.i.i ], [ %i.avj, %bb.du ]
  %i.avu = phi i64 [ %i.aza, %drmp3_L3_intensity_stereo_band.exit.i.i.i ], [ 0, %bb.du ]
  %.03350.i.i.i = phi i32 [ %i.ayz, %drmp3_L3_intensity_stereo_band.exit.i.i.i ], [ 0, %bb.du ] ; 3 uses
  %.03449.i.i.i = phi ptr [ %i.ayy, %drmp3_L3_intensity_stereo_band.exit.i.i.i ], [ %i.no, %bb.du ] ; 7 uses
  %i.avv = getelementptr inbounds nuw i8, ptr %i.nw, i64 %i.avu
  %i.avw = load i8, ptr %i.avv, align 1
  %i.avx = zext i8 %i.avw to i32                  ; 4 uses
  %i.avy = urem i32 %.03350.i.i.i, 3
  %i.avz = zext nneg i32 %i.avy to i64
  %i.awa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.avz
  %i.awb = load i32, ptr %i.awa, align 4
  %i.awc = icmp sgt i32 %.03350.i.i.i, %i.awb
  %i.awd = icmp samesign ugt i32 %i.avq, %i.avx
  %or.cond.i.i.i = select i1 %i.awc, i1 %i.awd, i1 false
  %i.awe = load i8, ptr %i.np, align 1
  %i.awf = and i8 %i.awe, 32
  %.not38.i.i.i = icmp eq i8 %i.awf, 0            ; 2 uses
  br i1 %or.cond.i.i.i, label %bb.dv, label %bb.ea

bb.dv:                                            ; preds = %.lr.ph.i35.i.i
  %i.awg = select i1 %.not38.i.i.i, float 1.000000e+00, float f0x3FB504F3 ; 2 uses
  %i.awh = load i8, ptr %i.ns, align 1
  %i.awi = and i8 %i.awh, 8
  %.not39.i.i.i = icmp eq i8 %i.awi, 0
  br i1 %.not39.i.i.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.awj = shl nuw nsw i32 %i.avx, 1
  %i.awk = zext nneg i32 %i.awj to i64
  %i.awl = getelementptr inbounds nuw [4 x i8], ptr @drmp3_L3_stereo_process.g_pan, i64 %i.awk ; 2 uses
  %i.awm = load float, ptr %i.awl, align 8
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awl, i64 4
  %i.awo = load float, ptr %i.awn, align 4
  br label %.lr.ph.preheader.i.i.i.i

bb.dx:                                            ; preds = %bb.dv
  %i.awp = add nuw nsw i32 %i.avx, 1
  %i.awq = lshr i32 %i.awp, 1
  %i.awr = shl nuw nsw i32 %i.awq, %i.avn
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dy, %bb.dx
  %.07.i.i.i.i = phi float [ 1.000000e+00, %bb.dx ], [ %i.axb, %bb.dy ]
  %.0.i.i.i76.i = phi i32 [ %i.awr, %bb.dx ], [ %i.axc, %bb.dy ] ; 2 uses
  %i.aws = tail call i32 @llvm.umin.i32(i32 %.0.i.i.i76.i, i32 120) ; 3 uses
  %i.awt = and i32 %i.aws, 3
  %i.awu = zext nneg i32 %i.awt to i64
  %i.awv = getelementptr inbounds nuw [4 x i8], ptr @drmp3_L3_ldexp_q2.g_expfrac, i64 %i.awu
  %i.aww = load float, ptr %i.awv, align 4
  %i.awx = lshr i32 %i.aws, 2
  %i.awy = lshr i32 1073741824, %i.awx
  %i.awz = uitofp nneg i32 %i.awy to float
  %i.axa = fmul float %i.aww, %i.awz
  %i.axb = fmul float %.07.i.i.i.i, %i.axa        ; 3 uses
  %i.axc = sub nuw nsw i32 %.0.i.i.i76.i, %i.aws  ; 2 uses
  %.not56.i.i.i = icmp eq i32 %i.axc, 0
  br i1 %.not56.i.i.i, label %drmp3_L3_ldexp_q2.exit.i.i.i, label %bb.dy

drmp3_L3_ldexp_q2.exit.i.i.i:                     ; preds = %bb.dy
  %i.axd = and i32 %i.avx, 1
  %.not40.i.i.i = icmp eq i32 %i.axd, 0
  br i1 %.not40.i.i.i, label %.lr.ph.preheader.i.i.i.i, label %bb.dz

bb.dz:                                            ; preds = %drmp3_L3_ldexp_q2.exit.i.i.i
  br label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.dz, %drmp3_L3_ldexp_q2.exit.i.i.i, %bb.dw
  %.032.i.i.i = phi float [ %i.awm, %bb.dw ], [ %i.axb, %bb.dz ], [ 1.000000e+00, %drmp3_L3_ldexp_q2.exit.i.i.i ]
  %.0.i.i74.i = phi float [ %i.awo, %bb.dw ], [ 1.000000e+00, %bb.dz ], [ %i.axb, %drmp3_L3_ldexp_q2.exit.i.i.i ]
  %i.axe = fmul float %i.awg, %.032.i.i.i         ; 2 uses
  %i.axf = fmul float %i.awg, %.0.i.i74.i         ; 2 uses
  %wide.trip.count.i.i.i.i = zext i8 %i.avs to i64 ; 3 uses
  %min.iters.check660 = icmp ult i8 %i.avs, 8
  br i1 %min.iters.check660, label %.lr.ph.i.i.i75.i.preheader, label %vector.ph661

vector.ph661:                                     ; preds = %.lr.ph.preheader.i.i.i.i
  %n.vec662 = and i64 %wide.trip.count.i.i.i.i, 248 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.axe, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert663 = insertelement <4 x float> poison, float %i.axf, i64 0
  %broadcast.splat664 = shufflevector <4 x float> %broadcast.splatinsert663, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body665

vector.body665:                                   ; preds = %vector.body665, %vector.ph661
  %index666 = phi i64 [ 0, %vector.ph661 ], [ %index.next669, %vector.body665 ] ; 2 uses
  %i.axg = getelementptr inbounds nuw [4 x i8], ptr %.03449.i.i.i, i64 %index666 ; 5 uses
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axg, i64 16 ; 2 uses
  %wide.load667 = load <4 x float>, ptr %i.axg, align 4 ; 2 uses
  %wide.load668 = load <4 x float>, ptr %i.axh, align 4 ; 2 uses
  %i.axi = fmul <4 x float> %broadcast.splat664, %wide.load667
  %i.axj = fmul <4 x float> %broadcast.splat664, %wide.load668
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axg, i64 2304
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axg, i64 2320
  store <4 x float> %i.axi, ptr %i.axk, align 4
  store <4 x float> %i.axj, ptr %i.axl, align 4
  %i.axm = fmul <4 x float> %broadcast.splat, %wide.load667
  %i.axn = fmul <4 x float> %broadcast.splat, %wide.load668
  store <4 x float> %i.axm, ptr %i.axg, align 4
  store <4 x float> %i.axn, ptr %i.axh, align 4
  %index.next669 = add nuw i64 %index666, 8       ; 2 uses
  %i.axo = icmp eq i64 %index.next669, %n.vec662
  br i1 %i.axo, label %middle.block670, label %vector.body665, !llvm.loop !1089

middle.block670:                                  ; preds = %vector.body665
  %cmp.n671 = icmp eq i64 %n.vec662, %wide.trip.count.i.i.i.i
  br i1 %cmp.n671, label %drmp3_L3_intensity_stereo_band.exit.i.i.i, label %.lr.ph.i.i.i75.i.preheader

.lr.ph.i.i.i75.i.preheader:                       ; preds = %.lr.ph.preheader.i.i.i.i, %middle.block670
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %n.vec662, %middle.block670 ]
  br label %.lr.ph.i.i.i75.i

.lr.ph.i.i.i75.i:                                 ; preds = %.lr.ph.i.i.i75.i.preheader, %.lr.ph.i.i.i75.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i75.i ], [ %indvars.iv.i.i.i.i.ph, %.lr.ph.i.i.i75.i.preheader ] ; 2 uses
  %i.axp = getelementptr inbounds nuw [4 x i8], ptr %.03449.i.i.i, i64 %indvars.iv.i.i.i.i ; 3 uses
  %i.axq = load float, ptr %i.axp, align 4        ; 2 uses
  %i.axr = fmul float %i.axf, %i.axq
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axp, i64 2304
  store float %i.axr, ptr %i.axs, align 4
  %i.axt = fmul float %i.axe, %i.axq
  store float %i.axt, ptr %i.axp, align 4
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %drmp3_L3_intensity_stereo_band.exit.i.i.i, label %.lr.ph.i.i.i75.i, !llvm.loop !1090

bb.ea:                                            ; preds = %.lr.ph.i35.i.i
  br i1 %.not38.i.i.i, label %drmp3_L3_intensity_stereo_band.exit.i.i.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.axu = zext i8 %i.avs to i32                  ; 2 uses
  %i.axv = getelementptr inbounds nuw i8, ptr %.03449.i.i.i, i64 2304 ; 3 uses
  %i.axw = icmp ugt i8 %i.avs, 3
  br i1 %i.axw, label %.lr.ph.preheader.i43.i.i.i, label %._crit_edge.i.i.i73.i

.lr.ph.preheader.i43.i.i.i:                       ; preds = %bb.eb
  %i.axx = add nsw i32 %i.axu, -3
  %i.axy = zext nneg i32 %i.axx to i64
  br label %.lr.ph.i44.i.i.i

.lr.ph.i44.i.i.i:                                 ; preds = %.lr.ph.i44.i.i.i, %.lr.ph.preheader.i43.i.i.i
  %indvars.iv.i45.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i43.i.i.i ], [ %indvars.iv.next.i46.i.i.i, %.lr.ph.i44.i.i.i ] ; 3 uses
  %i.axz = getelementptr inbounds nuw [4 x i8], ptr %.03449.i.i.i, i64 %indvars.iv.i45.i.i.i ; 2 uses
  %i.aya = load <4 x float>, ptr %i.axz, align 1  ; 2 uses
  %i.ayb = getelementptr inbounds nuw [4 x i8], ptr %i.axv, i64 %indvars.iv.i45.i.i.i ; 2 uses
  %i.ayc = load <4 x float>, ptr %i.ayb, align 1  ; 2 uses
  %i.ayd = fadd <4 x float> %i.aya, %i.ayc
  store <4 x float> %i.ayd, ptr %i.axz, align 1
  %i.aye = fsub <4 x float> %i.aya, %i.ayc
  store <4 x float> %i.aye, ptr %i.ayb, align 1
  %indvars.iv.next.i46.i.i.i = add nuw nsw i64 %indvars.iv.i45.i.i.i, 4 ; 3 uses
  %i.ayf = icmp samesign ult i64 %indvars.iv.next.i46.i.i.i, %i.axy
  br i1 %i.ayf, label %.lr.ph.i44.i.i.i, label %._crit_edge.loopexit.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i44.i.i.i
  %i.ayg = trunc nuw nsw i64 %indvars.iv.next.i46.i.i.i to i32
  br label %._crit_edge.i.i.i73.i

._crit_edge.i.i.i73.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.eb
  %.0.lcssa.i.i.i.i = phi i32 [ 0, %bb.eb ], [ %i.ayg, %._crit_edge.loopexit.i.i.i.i ] ; 2 uses
  %.not685 = icmp samesign ult i32 %.0.lcssa.i.i.i.i, %i.axu
  br i1 %.not685, label %.lr.ph35.preheader.i.i.i.i, label %drmp3_L3_intensity_stereo_band.exit.i.i.i

.lr.ph35.preheader.i.i.i.i:                       ; preds = %._crit_edge.i.i.i73.i
  %i.ayh = zext nneg i32 %.0.lcssa.i.i.i.i to i64 ; 4 uses
  %wide.trip.count.i41.i.i.i = zext i8 %i.avs to i64 ; 2 uses
  %i.ayi = sub nsw i64 %wide.trip.count.i41.i.i.i, %i.ayh ; 3 uses
  %min.iters.check674 = icmp ult i64 %i.ayi, 4
  br i1 %min.iters.check674, label %.lr.ph35.i.i.i.i.preheader, label %vector.ph675

vector.ph675:                                     ; preds = %.lr.ph35.preheader.i.i.i.i
  %n.vec676 = and i64 %i.ayi, -4                  ; 3 uses
  %i.ayj = add nsw i64 %n.vec676, %i.ayh
  br label %vector.body677

vector.body677:                                   ; preds = %vector.body677, %vector.ph675
  %index678 = phi i64 [ 0, %vector.ph675 ], [ %index.next681, %vector.body677 ] ; 2 uses
  %i.ayk = add nuw i64 %index678, %i.ayh          ; 2 uses
  %i.ayl = getelementptr inbounds nuw [4 x i8], ptr %.03449.i.i.i, i64 %i.ayk ; 2 uses
  %wide.load679 = load <4 x float>, ptr %i.ayl, align 4 ; 2 uses
  %i.aym = getelementptr inbounds nuw [4 x i8], ptr %i.axv, i64 %i.ayk ; 2 uses
  %wide.load680 = load <4 x float>, ptr %i.aym, align 4 ; 2 uses
  %i.ayn = fadd <4 x float> %wide.load679, %wide.load680
  store <4 x float> %i.ayn, ptr %i.ayl, align 4
  %i.ayo = fsub <4 x float> %wide.load679, %wide.load680
  store <4 x float> %i.ayo, ptr %i.aym, align 4
  %index.next681 = add nuw i64 %index678, 4       ; 2 uses
  %i.ayp = icmp eq i64 %index.next681, %n.vec676
  br i1 %i.ayp, label %middle.block682, label %vector.body677, !llvm.loop !1091

middle.block682:                                  ; preds = %vector.body677
  %cmp.n683 = icmp eq i64 %i.ayi, %n.vec676
  br i1 %cmp.n683, label %drmp3_L3_intensity_stereo_band.exit.i.i.i, label %.lr.ph35.i.i.i.i.preheader

.lr.ph35.i.i.i.i.preheader:                       ; preds = %.lr.ph35.preheader.i.i.i.i, %middle.block682
  %indvars.iv37.i.i.i.i.ph = phi i64 [ %i.ayh, %.lr.ph35.preheader.i.i.i.i ], [ %i.ayj, %middle.block682 ]
  br label %.lr.ph35.i.i.i.i

.lr.ph35.i.i.i.i:                                 ; preds = %.lr.ph35.i.i.i.i.preheader, %.lr.ph35.i.i.i.i
  %indvars.iv37.i.i.i.i = phi i64 [ %indvars.iv.next38.i.i.i.i, %.lr.ph35.i.i.i.i ], [ %indvars.iv37.i.i.i.i.ph, %.lr.ph35.i.i.i.i.preheader ] ; 3 uses
  %i.ayq = getelementptr inbounds nuw [4 x i8], ptr %.03449.i.i.i, i64 %indvars.iv37.i.i.i.i ; 2 uses
  %i.ayr = load float, ptr %i.ayq, align 4        ; 2 uses
  %i.ays = getelementptr inbounds nuw [4 x i8], ptr %i.axv, i64 %indvars.iv37.i.i.i.i ; 2 uses
  %i.ayt = load float, ptr %i.ays, align 4        ; 2 uses
  %i.ayu = fadd float %i.ayr, %i.ayt
  store float %i.ayu, ptr %i.ayq, align 4
  %i.ayv = fsub float %i.ayr, %i.ayt
  store float %i.ayv, ptr %i.ays, align 4
  %indvars.iv.next38.i.i.i.i = add nuw nsw i64 %indvars.iv37.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i42.i.i.i = icmp eq i64 %indvars.iv.next38.i.i.i.i, %wide.trip.count.i41.i.i.i
  br i1 %exitcond.not.i42.i.i.i, label %drmp3_L3_intensity_stereo_band.exit.i.i.i, label %.lr.ph35.i.i.i.i, !llvm.loop !1092

drmp3_L3_intensity_stereo_band.exit.i.i.i:        ; preds = %.lr.ph35.i.i.i.i, %.lr.ph.i.i.i75.i, %middle.block682, %middle.block670, %._crit_edge.i.i.i73.i, %bb.ea
  %i.ayw = load i8, ptr %i.avt, align 1
  %i.ayx = zext i8 %i.ayw to i64
  %i.ayy = getelementptr inbounds nuw [4 x i8], ptr %.03449.i.i.i, i64 %i.ayx
  %i.ayz = add i32 %.03350.i.i.i, 1               ; 2 uses
  %i.aza = zext i32 %i.ayz to i64                 ; 2 uses
  %i.azb = getelementptr inbounds nuw i8, ptr %i.avj, i64 %i.aza ; 2 uses
  %i.azc = load i8, ptr %i.azb, align 1           ; 2 uses
  %.not36.i.i.i = icmp eq i8 %i.azc, 0
  br i1 %.not36.i.i.i, label %drmp3_L3_intensity_stereo.exit.i, label %.lr.ph.i35.i.i

drmp3_L3_intensity_stereo.exit.i:                 ; preds = %drmp3_L3_intensity_stereo_band.exit.i.i.i, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  br label %drmp3_L3_midside_stereo.exit.i

bb.ec:                                            ; preds = %._crit_edge.i146
  %i.azd = and i32 %i.asv, 224
  %i.aze = icmp eq i32 %i.azd, 96
  br i1 %i.aze, label %.lr.ph.i77.i, label %drmp3_L3_midside_stereo.exit.i

.lr.ph.i77.i:                                     ; preds = %bb.ec, %.lr.ph.i77.i
  %indvars.iv.i78.i = phi i64 [ %indvars.iv.next.i79.i.1, %.lr.ph.i77.i ], [ 0, %bb.ec ] ; 4 uses
  %i.azf = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %indvars.iv.i78.i ; 2 uses
  %i.azg = load <4 x float>, ptr %i.azf, align 1  ; 2 uses
  %i.azh = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %indvars.iv.i78.i ; 2 uses
  %i.azi = load <4 x float>, ptr %i.azh, align 1  ; 2 uses
  %i.azj = fadd <4 x float> %i.azg, %i.azi
  store <4 x float> %i.azj, ptr %i.azf, align 1
  %i.azk = fsub <4 x float> %i.azg, %i.azi
  store <4 x float> %i.azk, ptr %i.azh, align 1
  %indvars.iv.next.i79.i = or disjoint i64 %indvars.iv.i78.i, 4 ; 3 uses
  %i.azl = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %indvars.iv.next.i79.i ; 2 uses
  %i.azm = load <4 x float>, ptr %i.azl, align 1  ; 2 uses
  %i.azn = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %indvars.iv.next.i79.i ; 2 uses
  %i.azo = load <4 x float>, ptr %i.azn, align 1  ; 2 uses
  %i.azp = fadd <4 x float> %i.azm, %i.azo
  store <4 x float> %i.azp, ptr %i.azl, align 1
  %i.azq = fsub <4 x float> %i.azm, %i.azo
  store <4 x float> %i.azq, ptr %i.azn, align 1
  %indvars.iv.next.i79.i.1 = add nuw nsw i64 %indvars.iv.i78.i, 8
  %i.azr = icmp samesign ult i64 %indvars.iv.next.i79.i, 569
  br i1 %i.azr, label %.lr.ph.i77.i, label %drmp3_L3_midside_stereo.exit.i

drmp3_L3_midside_stereo.exit.i:                   ; preds = %.lr.ph.i77.i, %bb.ec, %drmp3_L3_intensity_stereo.exit.i
  br i1 %i.ol, label %.lr.ph149.i, label %drmp3_L3_decode.exit

.lr.ph149.i:                                      ; preds = %drmp3_L3_midside_stereo.exit.i
  %wide.trip.count217.i = zext nneg i32 %i.oh to i64
  br label %bb.ed

bb.ed:                                            ; preds = %drmp3_L3_change_sign.exit.i, %.lr.ph149.i
  %indvars.iv214.i = phi i64 [ 0, %.lr.ph149.i ], [ %indvars.iv.next215.i, %drmp3_L3_change_sign.exit.i ] ; 6 uses
  %.054148.i = phi ptr [ %i.ok, %.lr.ph149.i ], [ %i.blf, %drmp3_L3_change_sign.exit.i ] ; 7 uses
  %i.azs = getelementptr inbounds nuw i8, ptr %.054148.i, i64 16
  %i.azt = load i8, ptr %i.azs, align 8
  %.not57.i = icmp eq i8 %i.azt, 0                ; 3 uses
  %i.azu = select i1 %.not57.i, i32 0, i32 2
  %i.azv = load i8, ptr %i.oa, align 2
  %i.azw = lshr i8 %i.azv, 2
  %i.azx = and i8 %i.azw, 3
  %i.azy = zext nneg i8 %i.azx to i32
  %i.azz = load i8, ptr %i.ns, align 1
  %i.baa = zext i8 %i.azz to i32                  ; 2 uses
  %i.bab = lshr i32 %i.baa, 3
  %i.bac = and i32 %i.bab, 1
  %i.bad = lshr i32 %i.baa, 4
  %i.bae = and i32 %i.bad, 1
  %i.baf = add nuw nsw i32 %i.bac, %i.bae
  %i.bag = mul nuw nsw i32 %i.baf, 3
  %i.bah = add nuw nsw i32 %i.bag, %i.azy
  %i.bai = icmp eq i32 %i.bah, 2
  %i.baj = zext i1 %i.bai to i32
  %i.bak = shl nuw nsw i32 %i.azu, %i.baj         ; 7 uses
  %i.bal = getelementptr inbounds nuw i8, ptr %.054148.i, i64 18
  %i.bam = load i8, ptr %i.bal, align 2
  %.not58.i = icmp eq i8 %i.bam, 0
  br i1 %.not58.i, label %.thread.i149, label %bb.ee

.thread.i149:                                     ; preds = %bb.ed
  %i.ban = getelementptr inbounds nuw [2304 x i8], ptr %i.no, i64 %indvars.iv214.i
  br label %.preheader.i87.preheader.i

bb.ee:                                            ; preds = %bb.ed
  %i.bao = add nsw i32 %i.bak, -1
  %i.bap = getelementptr inbounds nuw [2304 x i8], ptr %i.no, i64 %indvars.iv214.i ; 4 uses
  %i.baq = mul nuw nsw i32 %i.bak, 18
  %i.bar = zext nneg i32 %i.baq to i64
  %i.bas = getelementptr inbounds nuw [4 x i8], ptr %i.bap, i64 %i.bar ; 2 uses
  %i.bat = load ptr, ptr %.054148.i, align 8
  %i.bau = getelementptr inbounds nuw i8, ptr %.054148.i, i64 17
  %i.bav = load i8, ptr %i.bau, align 1
  %i.baw = zext i8 %i.bav to i64
  %i.bax = getelementptr inbounds nuw i8, ptr %i.bat, i64 %i.baw ; 2 uses
  %i.bay = load i8, ptr %i.bax, align 1           ; 2 uses
  %.not30.i.i = icmp eq i8 %i.bay, 0
  br i1 %.not30.i.i, label %bb.eh, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ee, %bb.eg
  %i.baz = phi i8 [ %i.bci, %bb.eg ], [ %i.bay, %bb.ee ] ; 4 uses
  %.033.i.i = phi ptr [ %.lcssa739, %bb.eg ], [ %i.ob, %bb.ee ] ; 2 uses
  %.02232.i.i = phi ptr [ %i.bch, %bb.eg ], [ %i.bas, %bb.ee ] ; 2 uses
  %.02531.i.i = phi ptr [ %i.bcg, %bb.eg ], [ %i.bax, %bb.ee ]
  %i.bba = zext i8 %i.baz to i32                  ; 3 uses
  %i.bbb = zext i8 %i.baz to i64                  ; 3 uses
  %i.bbc = shl nuw nsw i32 %i.bba, 1
  %i.bbd = zext nneg i32 %i.bbc to i64            ; 4 uses
  %xtraiter784 = and i32 %i.bba, 1
  %i.bbe = icmp eq i8 %i.baz, 1
  br i1 %i.bbe, label %.epil.preheader783, label %.preheader.i.i.new

.preheader.i.i.new:                               ; preds = %.preheader.i.i
  %unroll_iter789 = and i32 %i.bba, 254
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ef, %.preheader.i.i.new
  %.129.i.i = phi ptr [ %.033.i.i, %.preheader.i.i.new ], [ %i.bbv, %bb.ef ] ; 7 uses
  %.12328.i.i = phi ptr [ %.02232.i.i, %.preheader.i.i.new ], [ %i.bbw, %bb.ef ] ; 5 uses
  %niter790 = phi i32 [ 0, %.preheader.i.i.new ], [ %niter790.next.1, %bb.ef ]
  %i.bbf = load float, ptr %.12328.i.i, align 4
  %i.bbg = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 4
  store float %i.bbf, ptr %.129.i.i, align 4
  %i.bbh = getelementptr inbounds nuw [4 x i8], ptr %.12328.i.i, i64 %i.bbb
  %i.bbi = load float, ptr %i.bbh, align 4
  %i.bbj = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 8
  store float %i.bbi, ptr %i.bbg, align 4
  %i.bbk = getelementptr inbounds nuw [4 x i8], ptr %.12328.i.i, i64 %i.bbd
  %i.bbl = load float, ptr %i.bbk, align 4
  %i.bbm = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 12
  store float %i.bbl, ptr %i.bbj, align 4
  %i.bbn = getelementptr inbounds nuw i8, ptr %.12328.i.i, i64 4 ; 3 uses
  %i.bbo = load float, ptr %i.bbn, align 4
  %i.bbp = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 16
  store float %i.bbo, ptr %i.bbm, align 4
  %i.bbq = getelementptr inbounds nuw [4 x i8], ptr %i.bbn, i64 %i.bbb
  %i.bbr = load float, ptr %i.bbq, align 4
  %i.bbs = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 20
  store float %i.bbr, ptr %i.bbp, align 4
  %i.bbt = getelementptr inbounds nuw [4 x i8], ptr %i.bbn, i64 %i.bbd
  %i.bbu = load float, ptr %i.bbt, align 4
  %i.bbv = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 24 ; 3 uses
  store float %i.bbu, ptr %i.bbs, align 4
  %i.bbw = getelementptr inbounds nuw i8, ptr %.12328.i.i, i64 8 ; 3 uses
  %niter790.next.1 = add i32 %niter790, 2         ; 2 uses
  %niter790.ncmp.1 = icmp eq i32 %niter790.next.1, %unroll_iter789
  br i1 %niter790.ncmp.1, label %.unr-lcssa, label %bb.ef

.unr-lcssa:                                       ; preds = %bb.ef
  %lcmp.mod785.not = icmp eq i32 %xtraiter784, 0
  br i1 %lcmp.mod785.not, label %bb.eg, label %.epil.preheader783

.epil.preheader783:                               ; preds = %.unr-lcssa, %.preheader.i.i
  %.129.i.i.epil.init = phi ptr [ %.033.i.i, %.preheader.i.i ], [ %i.bbv, %.unr-lcssa ] ; 4 uses
  %.12328.i.i.epil.init = phi ptr [ %.02232.i.i, %.preheader.i.i ], [ %i.bbw, %.unr-lcssa ] ; 4 uses
end_hunk_3
begin_hunk_4_@drmp3_init_internal:bb.a
bb.cc:                                            ; preds = %bb.by
  %i.jd = mul i32 %.0248, %i.fp
  %i.je = zext i32 %i.jd to i64
  store i64 %i.je, ptr %i.x, align 8
  br label %bb.cd

bb.cd:                                            ; preds = %.thread334, %bb.cc, %bb.by
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 23008
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 22928
  %i.jh = load <2 x i32>, ptr %i.jf, align 8
  store <2 x i32> %i.jh, ptr %i.jg, align 8
  br label %drmp3__free_from_callbacks.exit

drmp3__free_from_callbacks.exit:                  ; preds = %bb.b, %bb.cb, %bb.ca, %bb.bz, %bb.bc, %bb.ae, %drmp3_copy_allocation_callbacks_or_defaults.exit, %bb.cd
  %.9 = phi i32 [ 0, %bb.ae ], [ 1, %bb.cd ], [ 0, %drmp3_copy_allocation_callbacks_or_defaults.exit ], [ 0, %bb.bc ], [ 0, %bb.b ], [ 0, %bb.bz ], [ 0, %bb.ca ], [ 0, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #61
  ret i32 %.9
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @drmp3_init_memory_with_metadata(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(address_is_null) %5) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32376) %0, i8 0, i64 32376, i1 false)
  %i.b = icmp eq ptr %1, null
  %i.c = icmp eq i64 %2, 0
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32352
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32360 ; 2 uses
  store i64 %2, ptr %i.e, align 8
  %i.f = tail call fastcc i32 @drmp3_init_internal(ptr noundef %0, ptr noundef nonnull @drmp3__on_read_memory, ptr noundef nonnull @drmp3__on_seek_memory, ptr noundef nonnull @drmp3__on_tell_memory, ptr noundef %3, ptr noundef nonnull %0, ptr noundef %4, ptr noundef %5)
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32256
  %i.i = load i64, ptr %i.h, align 8
  store i64 %i.i, ptr %i.e, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i64 @drmp3__on_read_memory(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) #44 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32360
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32368 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = sub i64 %i.b, %i.d
  %spec.select = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.e) ; 4 uses
  %.not = icmp eq i64 %spec.select, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32352
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.h, i64 %spec.select, i1 false)
  %i.i = load i64, ptr %i.c, align 8
  %i.j = add i64 %i.i, %spec.select
  store i64 %i.j, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i64 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 2) i32 @drmp3__on_seek_memory(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) #17 {
bb.a:
  switch i32 %2, label %bb.f [
    i32 0, label %bb.c
    i32 1, label %.sink.split
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b
  %.sink17 = phi i64 [ 32360, %bb.b ], [ 32368, %bb.a ]
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.sink17
  %i.b = load i64, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.b, %.sink.split ]
  %i.c = sext i32 %1 to i64
  %i.d = add nsw i64 %.0, %i.c                    ; 3 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32360
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ugt i64 %i.d, %i.g
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32368
  store i64 %i.d, ptr %i.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.a, %bb.e
  %.013 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %bb.e ], [ 0, %bb.d ]
  ret i32 %.013
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @drmp3__on_tell_memory(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32368
  %i.b = load i64, ptr %i.a, align 8
  store i64 %i.b, ptr %1, align 8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @drmp3_init_memory(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %drmp3_init_memory_with_metadata.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32376) %0, i8 0, i64 32376, i1 false)
  %i.b = icmp eq ptr %1, null
  %i.c = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.b, %i.c
  br i1 %or.cond.i, label %drmp3_init_memory_with_metadata.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32352
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32360 ; 2 uses
  store i64 %2, ptr %i.e, align 8
  %i.f = tail call fastcc i32 @drmp3_init_internal(ptr noundef %0, ptr noundef nonnull @drmp3__on_read_memory, ptr noundef nonnull @drmp3__on_seek_memory, ptr noundef nonnull @drmp3__on_tell_memory, ptr noundef null, ptr noundef nonnull %0, ptr noundef null, ptr noundef readonly %3)
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %drmp3_init_memory_with_metadata.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32256
  %i.i = load i64, ptr %i.h, align 8
  store i64 %i.i, ptr %i.e, align 8
  br label %drmp3_init_memory_with_metadata.exit

drmp3_init_memory_with_metadata.exit:             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ 1, %bb.d ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @drmp3_init_file_with_metadata(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %drmp3_fopen.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32376) %0, i8 0, i64 32376, i1 false)
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %drmp3_fopen.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias ptr @fopen(ptr noundef nonnull readonly %1, ptr noundef nonnull @.str.170) ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %drmp3_fopen.exit.thread, label %drmp3_fopen.exit

drmp3_fopen.exit:                                 ; preds = %bb.c
  %i.e = tail call fastcc i32 @drmp3_init_internal(ptr noundef %0, ptr noundef nonnull @drmp3__on_read_stdio, ptr noundef nonnull @drmp3__on_seek_stdio, ptr noundef nonnull @drmp3__on_tell_stdio, ptr noundef %2, ptr noundef nonnull %i.c, ptr noundef %3, ptr noundef %4)
  %.not11.not = icmp eq i32 %i.e, 0
  br i1 %.not11.not, label %bb.d, label %drmp3_fopen.exit.thread

bb.d:                                             ; preds = %drmp3_fopen.exit
  %i.f = tail call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  br label %drmp3_fopen.exit.thread

drmp3_fopen.exit.thread:                          ; preds = %bb.c, %bb.b, %drmp3_fopen.exit, %bb.a, %bb.d
  %.0 = phi i32 [ 1, %drmp3_fopen.exit ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i64 @drmp3__on_read_stdio(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) #9 {
bb.a:
  %i.a = tail call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef %0)
  ret i64 %i.a
}

; Function Attrs: nofree nounwind uwtable
define internal noundef range(i32 0, 2) i32 @drmp3__on_seek_stdio(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) #9 {
bb.a:
  %switch.selectcmp = icmp eq i32 %2, 2
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 0
  %switch.selectcmp5 = icmp eq i32 %2, 1
  %switch.select6 = select i1 %switch.selectcmp5, i32 1, i32 %switch.select
  %i.a = sext i32 %1 to i64
  %i.b = tail call i32 @fseek(ptr noundef %0, i64 noundef %i.a, i32 noundef %switch.select6)
  %i.c = icmp eq i32 %i.b, 0
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @drmp3__on_tell_stdio(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #9 {
bb.a:
  %i.a = tail call i64 @ftell(ptr noundef %0)
  store i64 %i.a, ptr %1, align 8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @drmp3_init_file_with_metadata_w(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #8 {
bb.a:
  %5 = alloca %struct.__mbstate_t, align 8        ; 7 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca [32 x i8], align 16               ; 8 uses
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %drmp3_wfopen.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32376) %0, i8 0, i64 32376, i1 false)
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %drmp3_wfopen.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  store ptr %1, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  store i64 0, ptr %5, align 8
  %i.e = call i64 @wcsrtombs(ptr noundef null, ptr noundef nonnull %i.a, i64 noundef 0, ptr noundef nonnull %5) #61 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @__errno_location() #75
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = icmp ult i32 %i.h, 126
  br i1 %i.i, label %switch.lookup, label %drmp3_result_from_errno.exit.thread.i

bb.e:                                             ; preds = %bb.c
  %i.j = add nuw i64 %i.e, 1                      ; 3 uses
  %i.k = icmp eq ptr %4, null
  br i1 %i.k, label %drmp3_result_from_errno.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %4, align 8
  %i.o = call ptr %i.m(i64 noundef %i.j, ptr noundef %i.n) #61, !inline_history !1107
  br label %drmp3__malloc_from_callbacks.exit.i

bb.h:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not12.i.i = icmp eq ptr %i.q, null
  br i1 %.not12.i.i, label %drmp3_result_from_errno.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %4, align 8
  %i.s = call ptr %i.q(ptr noundef null, i64 noundef %i.j, ptr noundef %i.r) #61, !inline_history !1107
  br label %drmp3__malloc_from_callbacks.exit.i

drmp3__malloc_from_callbacks.exit.i:              ; preds = %bb.i, %bb.g
  %.0.i38.i = phi ptr [ %i.s, %bb.i ], [ %i.o, %bb.g ] ; 4 uses
  %i.t = icmp eq ptr %.0.i38.i, null
  br i1 %i.t, label %drmp3_result_from_errno.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %drmp3__malloc_from_callbacks.exit.i
  store ptr %1, ptr %i.a, align 8
  store i64 0, ptr %5, align 8
  %i.u = call i64 @wcsrtombs(ptr noundef nonnull %.0.i38.i, ptr noundef nonnull %i.a, i64 noundef %i.j, ptr noundef nonnull %5) #61 ; 0 uses
  store i8 114, ptr %i.b, align 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 98, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 0, ptr %i.w, align 2
  %i.x = call noalias ptr @fopen(ptr noundef nonnull %.0.i38.i, ptr noundef nonnull %i.b) ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not.i39.i = icmp eq ptr %i.z, null
  br i1 %.not.i39.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = load ptr, ptr %4, align 8
  call void %i.z(ptr noundef nonnull %.0.i38.i, ptr noundef %i.aa) #61, !inline_history !1108
  br label %bb.l

switch.lookup:                                    ; preds = %bb.d
  %i.ab = zext nneg i32 %i.h to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.drwav_result_from_errno, i64 %i.ab
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %drmp3_result_from_errno.exit.thread.i

drmp3_result_from_errno.exit.thread.i:            ; preds = %bb.d, %switch.lookup, %drmp3__malloc_from_callbacks.exit.i, %bb.h, %bb.e
  %.030.ph.i = phi i32 [ %switch.load, %switch.lookup ], [ -4, %bb.h ], [ -4, %bb.e ], [ -4, %drmp3__malloc_from_callbacks.exit.i ], [ -1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #61
  br label %drmp3_wfopen.exit

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #61
  %i.ac = icmp eq ptr %i.x, null
  %..i = sext i1 %i.ac to i32
  br label %drmp3_wfopen.exit

drmp3_wfopen.exit:                                ; preds = %drmp3_result_from_errno.exit.thread.i, %bb.l
  %.014 = phi ptr [ %i.x, %bb.l ], [ null, %drmp3_result_from_errno.exit.thread.i ] ; 2 uses
  %.1.i = phi i32 [ %..i, %bb.l ], [ %.030.ph.i, %drmp3_result_from_errno.exit.thread.i ]
  %.not = icmp eq i32 %.1.i, 0
  br i1 %.not, label %bb.m, label %drmp3_wfopen.exit.thread

bb.m:                                             ; preds = %drmp3_wfopen.exit
  %i.ad = call fastcc i32 @drmp3_init_internal(ptr noundef %0, ptr noundef nonnull @drmp3__on_read_stdio, ptr noundef nonnull @drmp3__on_seek_stdio, ptr noundef nonnull @drmp3__on_tell_stdio, ptr noundef %2, ptr noundef %.014, ptr noundef %3, ptr noundef %4)
  %.not12.not = icmp eq i32 %i.ad, 0
  br i1 %.not12.not, label %bb.n, label %drmp3_wfopen.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ae = call i32 @fclose(ptr noundef %.014)     ; 0 uses
  br label %drmp3_wfopen.exit.thread

drmp3_wfopen.exit.thread:                         ; preds = %bb.b, %bb.m, %drmp3_wfopen.exit, %bb.a, %bb.n
  %.0 = phi i32 [ 0, %drmp3_wfopen.exit ], [ 0, %bb.a ], [ 0, %bb.n ], [ 1, %bb.m ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @drmp3_init_file(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #8 {
bb.a:
  %3 = alloca %struct.drmp3dec_frame_info, align 4 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [3 x i8], align 1                 ; 6 uses
  %i.c = alloca [32 x i8], align 16               ; 8 uses
  %i.d = alloca [10 x i8], align 1                ; 9 uses
  %4 = alloca %struct.drmp3_bs, align 8           ; 7 uses
  %5 = alloca [4 x %struct.drmp3_L3_gr_info], align 16 ; 4 uses
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %drmp3_init_file_with_metadata.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32376) %0, i8 0, i64 32376, i1 false)
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %drmp3_init_file_with_metadata.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noalias ptr @fopen(ptr noundef nonnull readonly %1, ptr noundef nonnull @.str.170) ; 13 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %drmp3_init_file_with_metadata.exit, label %drmp3_fopen.exit.i

drmp3_fopen.exit.i:                               ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 6152 ; 2 uses
  store i8 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 22936
  store ptr @drmp3__on_read_stdio, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 22944
  store ptr @drmp3__on_seek_stdio, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 22952
  store ptr null, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 22960
  store ptr %i.g, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 22968
  store ptr null, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 22976 ; 3 uses
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %.thread365.i, label %drmp3_copy_allocation_callbacks_or_defaults.exit.i

.thread365.i:                                     ; preds = %drmp3_fopen.exit.i
  store ptr null, ptr %i.o, align 8
  %.sroa.5.0..sroa_idx361.i = getelementptr inbounds nuw i8, ptr %0, i64 22984
  store ptr @drmp3__malloc_default, ptr %.sroa.5.0..sroa_idx361.i, align 8
  %.sroa.6.0..sroa_idx362.i = getelementptr inbounds nuw i8, ptr %0, i64 22992
  store ptr @drmp3__realloc_default, ptr %.sroa.6.0..sroa_idx362.i, align 8
  %.sroa.7.0..sroa_idx363.i = getelementptr inbounds nuw i8, ptr %0, i64 23000 ; 2 uses
  store ptr @drmp3__free_default, ptr %.sroa.7.0..sroa_idx363.i, align 8
  br label %bb.e

drmp3_copy_allocation_callbacks_or_defaults.exit.i: ; preds = %drmp3_fopen.exit.i
  %.sroa.5.0..sroa_idx322.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0..sroa_idx324.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload325.i = load ptr, ptr %.sroa.6.0..sroa_idx324.i, align 8 ; 2 uses
end_hunk_4
begin_hunk_5_@drwav__write_or_count_metadata:bb.a
  %i.vb = load i32, ptr %i.uv, align 8
  %.val.i840 = load ptr, ptr %i.bq, align 8
  %.val4.i841 = load ptr, ptr %i.br, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i32 %i.vb, ptr %i.i, align 4
  %i.vc = call i64 %.val.i840(ptr noundef %.val4.i841, ptr noundef nonnull %i.i, i64 noundef 4) #61, !inline_history !1228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.vd = add i64 %i.va, %i.vc
  %i.ve = getelementptr inbounds nuw i8, ptr %i.tl, i64 12
  %i.vf = load i32, ptr %i.ve, align 4
  %.val.i844 = load ptr, ptr %i.bq, align 8
  %.val4.i845 = load ptr, ptr %i.br, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 %i.vf, ptr %i.h, align 4
  %i.vg = call i64 %.val.i844(ptr noundef %.val4.i845, ptr noundef nonnull %i.h, i64 noundef 4) #61, !inline_history !1228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.vh = add i64 %i.vd, %i.vg
  %i.vi = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  %.val.i848 = load ptr, ptr %i.bq, align 8
  %.val6.i849 = load ptr, ptr %i.br, align 8
  %i.vj = call i64 %.val.i848(ptr noundef %.val6.i849, ptr noundef nonnull %i.vi, i64 noundef 4) #61, !inline_history !1227
  %i.vk = add i64 %i.vh, %i.vj
  %i.vl = getelementptr inbounds nuw i8, ptr %i.tl, i64 20
  %i.vm = load i16, ptr %i.vl, align 4
  %.val.i852 = load ptr, ptr %i.bq, align 8
  %.val4.i853 = load ptr, ptr %i.br, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i16 %i.vm, ptr %i.g, align 2
  %i.vn = call i64 %.val.i852(ptr noundef %.val4.i853, ptr noundef nonnull %i.g, i64 noundef 2) #61, !inline_history !1229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.vo = add i64 %i.vk, %i.vn
  %i.vp = getelementptr inbounds nuw i8, ptr %i.tl, i64 22
  %i.vq = load i16, ptr %i.vp, align 2
  %.val.i856 = load ptr, ptr %i.bq, align 8
  %.val4.i857 = load ptr, ptr %i.br, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i16 %i.vq, ptr %i.f, align 2
  %i.vr = call i64 %.val.i856(ptr noundef %.val4.i857, ptr noundef nonnull %i.f, i64 noundef 2) #61, !inline_history !1229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.vs = add i64 %i.vo, %i.vr
  %i.vt = getelementptr inbounds nuw i8, ptr %i.tl, i64 24
  %i.vu = load i16, ptr %i.vt, align 8
  %.val.i860 = load ptr, ptr %i.bq, align 8
  %.val4.i861 = load ptr, ptr %i.br, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i16 %i.vu, ptr %i.e, align 2
  %i.vv = call i64 %.val.i860(ptr noundef %.val4.i861, ptr noundef nonnull %i.e, i64 noundef 2) #61, !inline_history !1229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.vw = add i64 %i.vs, %i.vv
  %i.vx = getelementptr inbounds nuw i8, ptr %i.tl, i64 26
  %i.vy = load i16, ptr %i.vx, align 2
  %.val.i864 = load ptr, ptr %i.bq, align 8
  %.val4.i865 = load ptr, ptr %i.br, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i16 %i.vy, ptr %i.d, align 2
  %i.vz = call i64 %.val.i864(ptr noundef %.val4.i865, ptr noundef nonnull %i.d, i64 noundef 2) #61, !inline_history !1229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.wa = add i64 %i.vw, %i.vz                    ; 3 uses
  %i.wb = load i32, ptr %i.uw, align 4            ; 2 uses
  %.not4551011 = icmp eq i32 %i.wb, 0
  br i1 %.not4551011, label %.thread1027, label %bb.bm

drwav__write_or_count.exit871.thread:             ; preds = %drwav__write_or_count_u16ne_to_le.exit867
  %i.wc = add i32 %i.ur, 21
  %i.wd = zext i32 %i.ur to i64
  %i.we = add i64 %i.us, %i.wd
  br label %drwav__write_or_count_byte.exit875

bb.bm:                                            ; preds = %drwav__write_or_count_u16ne_to_le.exit867.thread
  %i.wf = getelementptr inbounds nuw i8, ptr %i.tl, i64 32
  %i.wg = load ptr, ptr %i.wf, align 8
  %i.wh = zext i32 %i.wb to i64
  %.val.i868 = load ptr, ptr %i.bq, align 8
  %.val6.i869 = load ptr, ptr %i.br, align 8
  %i.wi = call i64 %.val.i868(ptr noundef %.val6.i869, ptr noundef %i.wg, i64 noundef %i.wh) #61, !inline_history !1227
  %i.wj = add i64 %i.wi, %i.wa
  %.val.i872 = load ptr, ptr %i.bq, align 8
  %.val4.i873 = load ptr, ptr %i.br, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 0, ptr %i.c, align 1
  %i.wk = call i64 %.val.i872(ptr noundef %.val4.i873, ptr noundef nonnull %i.c, i64 noundef 1) #61, !inline_history !1233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %drwav__write_or_count_byte.exit875

drwav__write_or_count_byte.exit875:               ; preds = %drwav__write_or_count.exit871.thread, %bb.bm
  %i.wl = phi i64 [ %i.wj, %bb.bm ], [ %i.we, %drwav__write_or_count.exit871.thread ]
  %spec.select473987990993996999100210051008101210161019 = phi i32 [ %spec.select473, %bb.bm ], [ %i.wc, %drwav__write_or_count.exit871.thread ]
  %.0.i874 = phi i64 [ %i.wk, %bb.bm ], [ 1, %drwav__write_or_count.exit871.thread ]
  %i.wm = add i64 %.0.i874, %i.wl
  br label %bb.bq

bb.bn:                                            ; preds = %.split4
  %i.wn = getelementptr inbounds nuw i8, ptr %i.tl, i64 12
  %i.wo = load i32, ptr %i.wn, align 4
  %i.wp = icmp eq i32 %i.wo, 3
  br i1 %i.wp, label %bb.bo, label %.thread1023

bb.bo:                                            ; preds = %bb.bn
  %i.wq = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  %i.wr = load i32, ptr %i.wq, align 8            ; 4 uses
  br i1 %i.bp, label %drwav__write_or_count_u32ne_to_le.exit883.thread, label %bb.bp

drwav__write_or_count_u32ne_to_le.exit883.thread: ; preds = %bb.bo
  %i.ws = add i64 %.121075, 8
  %i.wt = zext i32 %i.wr to i64
  br label %drwav__write_or_count.exit887

bb.bp:                                            ; preds = %bb.bo
  %i.wu = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  %.val.i876 = load ptr, ptr %i.bq, align 8
  %.val6.i877 = load ptr, ptr %i.br, align 8
  %i.wv = call i64 %.val.i876(ptr noundef %.val6.i877, ptr noundef nonnull %i.wu, i64 noundef 4) #61, !inline_history !1227
  %i.ww = add i64 %i.wv, %.121075
  %.val.i880 = load ptr, ptr %i.bq, align 8
  %.val4.i881 = load ptr, ptr %i.br, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.wr, ptr %i.b, align 4
  %i.wx = call i64 %.val.i880(ptr noundef %.val4.i881, ptr noundef nonnull %i.b, i64 noundef 4) #61, !inline_history !1228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.wy = add i64 %i.ww, %i.wx
  %i.wz = getelementptr inbounds nuw i8, ptr %i.tl, i64 24
  %i.xa = load ptr, ptr %i.wz, align 8
  %i.xb = zext i32 %i.wr to i64
  %.val.i884 = load ptr, ptr %i.bq, align 8
  %.val6.i885 = load ptr, ptr %i.br, align 8
  %i.xc = call i64 %.val.i884(ptr noundef %.val6.i885, ptr noundef %i.xa, i64 noundef %i.xb) #61, !inline_history !1227
  br label %drwav__write_or_count.exit887

drwav__write_or_count.exit887:                    ; preds = %drwav__write_or_count_u32ne_to_le.exit883.thread, %bb.bp
  %i.xd = phi i64 [ %i.wy, %bb.bp ], [ %i.ws, %drwav__write_or_count_u32ne_to_le.exit883.thread ]
  %.0.i886 = phi i64 [ %i.xc, %bb.bp ], [ %i.wt, %drwav__write_or_count_u32ne_to_le.exit883.thread ]
  %i.xe = add i64 %.0.i886, %i.xd
  br label %bb.bq

bb.bq:                                            ; preds = %drwav__write_or_count.exit887, %drwav__write_or_count_byte.exit875, %drwav__write_or_count_byte.exit831
  %.13 = phi i64 [ %i.xe, %drwav__write_or_count.exit887 ], [ %i.up, %drwav__write_or_count_byte.exit831 ], [ %i.wm, %drwav__write_or_count_byte.exit875 ] ; 3 uses
  %.1 = phi i32 [ %i.wr, %drwav__write_or_count.exit887 ], [ %i.uo, %drwav__write_or_count_byte.exit831 ], [ %spec.select473987990993996999100210051008101210161019, %drwav__write_or_count_byte.exit875 ]
  %i.xf = and i32 %.1, 1
  %.not457 = icmp eq i32 %i.xf, 0
  br i1 %.not457, label %.thread1023, label %bb.br

.thread1027:                                      ; preds = %drwav__write_or_count_u16ne_to_le.exit867.thread
  %i.xg = and i32 %spec.select473, 1
  %.not4571030 = icmp eq i32 %i.xg, 0
  br i1 %.not4571030, label %.thread1023, label %.thread1032

bb.br:                                            ; preds = %bb.bq
  br i1 %i.bp, label %drwav__write_or_count_byte.exit891, label %.thread1032

.thread1032:                                      ; preds = %.thread1027, %bb.br
  %.1310311034 = phi i64 [ %.13, %bb.br ], [ %i.wa, %.thread1027 ]
  %.val.i888 = load ptr, ptr %i.bq, align 8
  %.val4.i889 = load ptr, ptr %i.br, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 0, ptr %i.a, align 1
  %i.xh = call i64 %.val.i888(ptr noundef %.val4.i889, ptr noundef nonnull %i.a, i64 noundef 1) #61, !inline_history !1233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %drwav__write_or_count_byte.exit891

drwav__write_or_count_byte.exit891:               ; preds = %bb.br, %.thread1032
  %.1310311035 = phi i64 [ %.1310311034, %.thread1032 ], [ %.13, %bb.br ]
  %.0.i890 = phi i64 [ %i.xh, %.thread1032 ], [ 1, %bb.br ]
  %i.xi = add i64 %.0.i890, %.1310311035
  br label %.thread1023

.thread1023:                                      ; preds = %drwav__write_or_count_u16ne_to_le.exit867, %bb.bh, %bb.bn, %bb.bi, %.split4, %.thread1027, %drwav__write_or_count_byte.exit891, %bb.bq
  %.14 = phi i64 [ %i.xi, %drwav__write_or_count_byte.exit891 ], [ %.13, %bb.bq ], [ %i.wa, %.thread1027 ], [ %.121075, %.split4 ], [ %.121075, %bb.bi ], [ %.121075, %bb.bn ], [ %.121075, %bb.bh ], [ %i.us, %drwav__write_or_count_u16ne_to_le.exit867 ] ; 2 uses
  %indvars.iv.next1113 = add nuw nsw i64 %indvars.iv1112, 1 ; 2 uses
  %exitcond1116.not = icmp eq i64 %indvars.iv.next1113, %wide.trip.count
  br i1 %exitcond1116.not, label %.loopexit, label %bb.bh

.loopexit:                                        ; preds = %.thread1023, %.loopexit1043, %bb.a
  %.0441 = phi i64 [ 0, %bb.a ], [ %.11, %.loopexit1043 ], [ %.14, %.thread1023 ]
  ret i64 %.0441
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #33

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc range(i32 -51, 1) i32 @drwav_result_from_errno(i32 noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i32 %0, 126
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.drwav_result_from_errno, i64 %i.b
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.load, %switch.lookup ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define internal noundef range(i32 0, 2) i32 @drwav__on_seek_stdio(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) #9 {
bb.a:
  %switch.selectcmp = icmp eq i32 %2, 2
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 0
  %switch.selectcmp5 = icmp eq i32 %2, 1
  %switch.select6 = select i1 %switch.selectcmp5, i32 1, i32 %switch.select
  %i.a = sext i32 %1 to i64
  %i.b = tail call i32 @fseek(ptr noundef %0, i64 noundef %i.a, i32 noundef %switch.select6)
  %i.c = icmp eq i32 %i.b, 0
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @drwav__on_tell_stdio(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #9 {
bb.a:
  %i.a = tail call i64 @ftell(ptr noundef %0)
  store i64 %i.a, ptr %1, align 8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @drwav_init_file_write__internal_FILE(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef range(i32 0, 2) %4, ptr nofree noundef readonly captures(address_is_null) %5) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  switch i32 %i.c, label %bb.c [
    i32 65534, label %.sink.split
    i32 2, label %.sink.split
    i32 17, label %.sink.split
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 0, i64 408, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @drwav__on_write_stdio, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @drwav__on_seek_stdio, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.f, align 8
  %.not.i.i = icmp eq ptr %5, null
  br i1 %.not.i.i, label %.thread.i, label %drwav_copy_allocation_callbacks_or_defaults.exit.i

.thread.i:                                        ; preds = %bb.c
  %.sroa.5.0..sroa_idx55.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @drwav__malloc_default, ptr %.sroa.5.0..sroa_idx55.i, align 8
  %.sroa.6.0..sroa_idx56.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @drwav__realloc_default, ptr %.sroa.6.0..sroa_idx56.i, align 8
  %.sroa.7.0..sroa_idx57.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @drwav__free_default, ptr %.sroa.7.0..sroa_idx57.i, align 8
  br label %bb.e

drwav_copy_allocation_callbacks_or_defaults.exit.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.5.0..sroa_idx44.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.6.0..sroa_idx46.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.6.0.copyload47.i = load ptr, ptr %.sroa.6.0..sroa_idx46.i, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx48.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.7.0.copyload49.i = load ptr, ptr %.sroa.7.0..sroa_idx48.i, align 8 ; 2 uses
  %.sroa.5.0.copyload45.i = load ptr, ptr %.sroa.5.0..sroa_idx44.i, align 8
  %i.h = load <2 x ptr>, ptr %5, align 8
  store <2 x ptr> %i.h, ptr %i.g, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.6.0.copyload47.i, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.7.0.copyload49.i, ptr %.sroa.7.0..sroa_idx.i, align 8
  %i.i = icmp eq ptr %.sroa.7.0.copyload49.i, null
  br i1 %i.i, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %drwav_copy_allocation_callbacks_or_defaults.exit.i
  %i.j = icmp eq ptr %.sroa.5.0.copyload45.i, null
  %i.k = icmp eq ptr %.sroa.6.0.copyload47.i, null
  %or.cond58.i = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond58.i, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread.i
  %i.l = load i32, ptr %i.b, align 4
  %i.m = trunc i32 %i.l to i16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i16 %i.m, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = trunc i32 %i.p to i16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 78
  store i16 %i.q, ptr %i.r, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.t, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4
  %i.x = mul i32 %i.w, %i.t
  %i.y = load i32, ptr %i.o, align 4
  %i.z = mul i32 %i.x, %i.y
  %i.aa = lshr i32 %i.z, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.aa, ptr %i.ab, align 4
  %i.ac = load i32, ptr %i.o, align 4
  %i.ad = load i32, ptr %i.v, align 4
  %i.ae = mul i32 %i.ad, %i.ac
  %i.af = lshr i32 %i.ae, 3
  %i.ag = trunc i32 %i.af to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i16 %i.ag, ptr %i.ah, align 8
  %i.ai = load i32, ptr %i.v, align 4
  %i.aj = trunc i32 %i.ai to i16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 90
  store i16 %i.aj, ptr %i.ak, align 2
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i16 0, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %4, ptr %i.am, align 8
  %i.an = tail call fastcc i32 @drwav_init_write__internal(ptr noundef nonnull %0, ptr noundef nonnull %2, i64 noundef %3)
  %.not.not16 = icmp eq i32 %i.an, 0
  br i1 %.not.not16, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %bb.e, %bb.d, %bb.b, %bb.b, %bb.b, %drwav_copy_allocation_callbacks_or_defaults.exit.i, %bb.a
  %i.ao = tail call i32 @fclose(ptr noundef %1)   ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e
  %.0 = phi i32 [ 1, %bb.e ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @drwav__on_write_memory(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8              ; 4 uses
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp ult i64 %i.f, %2
  br i1 %i.g, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.c, 0
  %i.i = shl i64 %i.c, 1
  %spec.select = select i1 %i.h, i64 256, i64 %i.i ; 2 uses
  %i.j = sub i64 %spec.select, %i.e
  %i.k = icmp ult i64 %i.j, %2
  %i.l = add i64 %i.e, %2
  %.035 = select i1 %i.k, i64 %i.l, i64 %spec.select ; 3 uses
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = load ptr, ptr %i.m, align 8              ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.c, label %drwav__realloc_from_callbacks.exit

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not25.i = icmp eq ptr %i.s, null
  br i1 %.not25.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %.not26.i = icmp eq ptr %i.u, null
  br i1 %.not26.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.o, align 8
  %i.w = tail call ptr %i.s(i64 noundef %.035, ptr noundef %i.v) #61, !inline_history !1234 ; 4 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not27.i = icmp eq ptr %i.n, null
  br i1 %.not27.i, label %drwav__realloc_from_callbacks.exit.thread44, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %i.n, i64 %i.c, i1 false)
  %i.y = load ptr, ptr %i.t, align 8
  %i.z = load ptr, ptr %i.o, align 8
  tail call void %i.y(ptr noundef nonnull %i.n, ptr noundef %i.z) #61, !inline_history !1234
  br label %drwav__realloc_from_callbacks.exit.thread44

drwav__realloc_from_callbacks.exit:               ; preds = %bb.b
  %i.aa = load ptr, ptr %i.o, align 8
  %i.ab = tail call ptr %i.q(ptr noundef %i.n, i64 noundef %.035, ptr noundef %i.aa) #61, !inline_history !1234 ; 2 uses
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %.critedge, label %drwav__realloc_from_callbacks.exit.thread44

drwav__realloc_from_callbacks.exit.thread44:      ; preds = %bb.g, %bb.f, %drwav__realloc_from_callbacks.exit
  %.1.i47 = phi ptr [ %i.ab, %drwav__realloc_from_callbacks.exit ], [ %i.w, %bb.f ], [ %i.w, %bb.g ]
  %i.ac = load ptr, ptr %i.a, align 8
  store ptr %.1.i47, ptr %i.ac, align 8
  store i64 %.035, ptr %i.b, align 8
  %.pre = load i64, ptr %i.d, align 8
  br label %bb.h

bb.h:                                             ; preds = %drwav__realloc_from_callbacks.exit.thread44, %bb.a
end_hunk_5
