Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 277
begin_hunk_0_@ma_device_info_add_native_data_format:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.e ; 4 uses
  store i32 %1, ptr %i.g, align 8, !tbaa !180
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %2, ptr %i.h, align 4, !tbaa !181
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 %3, ptr %i.i, align 8, !tbaa !182
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 %4, ptr %i.j, align 4, !tbaa !183
  %i.k = add nuw nsw i32 %i.c, 1
  store i32 %i.k, ptr %i.b, align 4, !tbaa !178
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define ptr @ma_get_backend_name(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i32 %0, 14
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [16 x i8], ptr @gBackendInfo, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !186
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ @.str.9, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2, 1) i32 @ma_get_backend_from_name(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.b = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.187)
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.d = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.188)
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.f = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.189)
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.h = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.190)
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.j = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.191)
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.l = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.192)
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.n = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.193)
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.b, label %.preheader.7

.preheader.7:                                     ; preds = %.preheader.6
  %i.p = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.194)
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.b, label %.preheader.8

.preheader.8:                                     ; preds = %.preheader.7
  %i.r = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.195)
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.b, label %.preheader.9

.preheader.9:                                     ; preds = %.preheader.8
  %i.t = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.196)
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.b, label %.preheader.10

.preheader.10:                                    ; preds = %.preheader.9
  %i.v = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.197)
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.b, label %.preheader.11

.preheader.11:                                    ; preds = %.preheader.10
  %i.x = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.198)
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.b, label %.preheader.12

.preheader.12:                                    ; preds = %.preheader.11
  %i.z = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.199)
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.b, label %.preheader.13

.preheader.13:                                    ; preds = %.preheader.12
  %i.ab = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.200)
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.b, label %.preheader.14

.preheader.14:                                    ; preds = %.preheader.13
  %i.ad = tail call i32 @ma_strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.201)
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.preheader.14, %.preheader.13, %.preheader.12, %.preheader.11, %.preheader.10, %.preheader.9, %.preheader.8, %.preheader.7, %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi ptr [ @gBackendInfo, %.preheader.preheader ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 16), %.preheader.1 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 32), %.preheader.2 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 48), %.preheader.3 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 64), %.preheader.4 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 80), %.preheader.5 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 96), %.preheader.6 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 112), %.preheader.7 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 128), %.preheader.8 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 144), %.preheader.9 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 160), %.preheader.10 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 176), %.preheader.11 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 192), %.preheader.12 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 208), %.preheader.13 ], [ getelementptr inbounds nuw (i8, ptr @gBackendInfo, i64 224), %.preheader.14 ]
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = load i32, ptr %.lcssa, align 16, !tbaa !187
  store i32 %i.af, ptr %1, align 4, !tbaa !118
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.14, %bb.b, %bb.c, %bb.a
  %.08 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ], [ 0, %bb.c ], [ -2, %.preheader.14 ]
  ret i32 %.08
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @ma_is_backend_enabled(i32 noundef %0) local_unnamed_addr #1 {
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
define range(i32 -18, 1) i32 @ma_get_enabled_backends(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.c, label %ma_is_backend_enabled.exit.7

ma_is_backend_enabled.exit.7:                     ; preds = %bb.a
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %bb.b, label %ma_is_backend_enabled.exit.8

ma_is_backend_enabled.exit.8:                     ; preds = %ma_is_backend_enabled.exit.7
  store i32 7, ptr %0, align 4, !tbaa !118
  %i.c = icmp eq i64 %1, 1
  br i1 %i.c, label %bb.b, label %ma_is_backend_enabled.exit.9

ma_is_backend_enabled.exit.9:                     ; preds = %ma_is_backend_enabled.exit.8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 8, ptr %i.d, align 4, !tbaa !118
  %i.e = icmp eq i64 %1, 2
  br i1 %i.e, label %bb.b, label %ma_is_backend_enabled.exit.13

ma_is_backend_enabled.exit.13:                    ; preds = %ma_is_backend_enabled.exit.9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 9, ptr %i.f, align 4, !tbaa !118
  %i.g = icmp eq i64 %1, 3
  br i1 %i.g, label %bb.b, label %ma_is_backend_enabled.exit.14

ma_is_backend_enabled.exit.14:                    ; preds = %ma_is_backend_enabled.exit.13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 13, ptr %i.h, align 4, !tbaa !118
  %i.i = icmp eq i64 %1, 4
  br i1 %i.i, label %bb.b, label %ma_is_backend_enabled.exit.thread.14

ma_is_backend_enabled.exit.thread.14:             ; preds = %ma_is_backend_enabled.exit.14
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 14, ptr %i.j, align 4, !tbaa !118
  br label %bb.b

bb.b:                                             ; preds = %ma_is_backend_enabled.exit.thread.14, %ma_is_backend_enabled.exit.14, %ma_is_backend_enabled.exit.13, %ma_is_backend_enabled.exit.9, %ma_is_backend_enabled.exit.8, %ma_is_backend_enabled.exit.7
  %.018.lcssa = phi i64 [ 3, %ma_is_backend_enabled.exit.13 ], [ 5, %ma_is_backend_enabled.exit.thread.14 ], [ 0, %ma_is_backend_enabled.exit.7 ], [ 4, %ma_is_backend_enabled.exit.14 ], [ 2, %ma_is_backend_enabled.exit.9 ], [ 1, %ma_is_backend_enabled.exit.8 ]
  %.2 = phi i32 [ -18, %ma_is_backend_enabled.exit.13 ], [ 0, %ma_is_backend_enabled.exit.thread.14 ], [ -18, %ma_is_backend_enabled.exit.7 ], [ -18, %ma_is_backend_enabled.exit.14 ], [ -18, %ma_is_backend_enabled.exit.9 ], [ -18, %ma_is_backend_enabled.exit.8 ]
  store i64 %.018.lcssa, ptr %2, align 8, !tbaa !154
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.021 = phi i32 [ %.2, %bb.b ], [ -2, %bb.a ]
  ret i32 %.021
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @ma_is_loopback_supported(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %cond = icmp eq i32 %0, 0
  %. = zext i1 %cond to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 -1, 5) i32 @ma_get_format_priority_index(i32 noundef %0) local_unnamed_addr #1 {
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
define i32 @ma_device_post_init(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #8 {
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
  %i.f = load i32, ptr %i.e, align 4, !tbaa !189  ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %ma_device__post_init_setup.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !190  ; 2 uses
  %i.j = add i32 %i.i, -255
  %or.cond.i = icmp ult i32 %i.j, -254
  br i1 %or.cond.i, label %ma_device__post_init_setup.exit, label %ma_device_descriptor_is_valid.exit

ma_device_descriptor_is_valid.exit:               ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !191  ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %ma_device__post_init_setup.exit, label %bb.f

bb.f:                                             ; preds = %ma_device_descriptor_is_valid.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2812
  store i32 %i.f, ptr %i.m, align 4, !tbaa !206
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2816
  store i32 %i.i, ptr %i.n, align 8, !tbaa !207
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2820
  store i32 %i.l, ptr %i.o, align 4, !tbaa !208
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2824
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(254) %i.p, ptr noundef nonnull align 8 dereferenceable(254) %i.q, i64 254, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 280
  %i.s = load i32, ptr %i.r, align 8, !tbaa !209  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3080 ; 2 uses
  store i32 %i.s, ptr %i.t, align 8, !tbaa !210
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 288
  %i.v = load i32, ptr %i.u, align 8, !tbaa !211
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3084
  store i32 %i.v, ptr %i.w, align 4, !tbaa !212
  %i.x = icmp eq i32 %i.s, 0
  br i1 %i.x, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.y = load i32, ptr %i.k, align 4, !tbaa !191  ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %ma_calculate_buffer_size_in_frames_from_milliseconds.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 284
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !213
  %i.ac = mul i32 %i.ab, %i.y
  %i.ad = udiv i32 %i.ac, 1000
  br label %ma_calculate_buffer_size_in_frames_from_milliseconds.exit

ma_calculate_buffer_size_in_frames_from_milliseconds.exit: ; preds = %bb.g, %bb.h
  %.0.i71 = phi i32 [ %i.ad, %bb.h ], [ 0, %bb.g ]
  store i32 %.0.i71, ptr %i.t, align 8, !tbaa !210
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %ma_calculate_buffer_size_in_frames_from_milliseconds.exit, %bb.b
  %i.ae = and i32 %1, -3
  %or.cond5 = icmp eq i32 %i.ae, 1                ; 4 uses
  br i1 %or.cond5, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.af = icmp eq ptr %2, null
  br i1 %i.af, label %ma_device__post_init_setup.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !189 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %ma_device__post_init_setup.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !190 ; 2 uses
  %i.al = add i32 %i.ak, -255
  %or.cond.i72 = icmp ult i32 %i.al, -254
  br i1 %or.cond.i72, label %ma_device__post_init_setup.exit, label %ma_device_descriptor_is_valid.exit75

ma_device_descriptor_is_valid.exit75:             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !191 ; 2 uses
  %.not86 = icmp eq i32 %i.an, 0
  br i1 %.not86, label %ma_device__post_init_setup.exit, label %bb.m

bb.m:                                             ; preds = %ma_device_descriptor_is_valid.exit75
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1380
  store i32 %i.ah, ptr %i.ao, align 4, !tbaa !214
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1384
  store i32 %i.ak, ptr %i.ap, align 8, !tbaa !215
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1388
  store i32 %i.an, ptr %i.aq, align 4, !tbaa !216
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(254) %i.ar, ptr noundef nonnull align 8 dereferenceable(254) %i.as, i64 254, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.au = load i32, ptr %i.at, align 8, !tbaa !209 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  store i32 %i.au, ptr %i.av, align 8, !tbaa !217
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !211
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1652
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !218
  %i.az = icmp eq i32 %i.au, 0
  br i1 %i.az, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ba = load i32, ptr %i.am, align 4, !tbaa !191 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %ma_calculate_buffer_size_in_frames_from_milliseconds.exit77, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 284
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !213
  %i.be = mul i32 %i.bd, %i.ba
  %i.bf = udiv i32 %i.be, 1000
  br label %ma_calculate_buffer_size_in_frames_from_milliseconds.exit77

ma_calculate_buffer_size_in_frames_from_milliseconds.exit77: ; preds = %bb.n, %bb.o
  %.0.i76 = phi i32 [ %i.bf, %bb.o ], [ 0, %bb.n ]
  store i32 %.0.i76, ptr %i.av, align 8, !tbaa !217
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %ma_calculate_buffer_size_in_frames_from_milliseconds.exit77, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #55
  br i1 %or.cond3, label %bb.q, label %bb.aa

bb.q:                                             ; preds = %bb.p
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1544) %10, i8 0, i64 1544, i1 false)
  %i.bg = load ptr, ptr %0, align 8, !tbaa !219   ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 96
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !222 ; 2 uses
  %.not.i = icmp eq ptr %i.bi, null
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = call i32 %i.bi(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull %10) #55, !inline_history !1235
  br label %ma_device_get_info.exit

bb.s:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !223
  %i.bm = icmp eq i32 %i.bl, 4
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2024
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !224 ; 3 uses
  %i.bp = icmp eq ptr %i.bo, null                 ; 2 uses
  %i.bq = and i1 %i.bm, %i.bp
  %.019.i = select i1 %i.bq, i32 1, i32 2
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1544) %9, i8 0, i64 1544, i1 false)
  br i1 %i.bp, label %bb.u, label %bb.t

end_hunk_0
begin_hunk_1_@ma_lpf1_process_pcm_frames:bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !401
  switch i32 %i.d, label %.loopexit [
    i32 5, label %.preheader
    i32 2, label %.preheader42
  ]

.preheader42:                                     ; preds = %bb.b
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader42
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pre = load i32, ptr %i.e, align 4, !tbaa !402
  br label %bb.e

.preheader:                                       ; preds = %bb.b
  %.not53 = icmp eq i64 %3, 0
  br i1 %.not53, label %.loopexit, label %.lr.ph52

.lr.ph52:                                         ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pre61 = load i32, ptr %i.h, align 4, !tbaa !402
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph52, %ma_lpf1_process_pcm_frame_f32.exit
  %i.k = phi i32 [ %.pre61, %.lr.ph52 ], [ %i.an, %ma_lpf1_process_pcm_frame_f32.exit ] ; 4 uses
  %.03351 = phi ptr [ %2, %.lr.ph52 ], [ %i.aq, %ma_lpf1_process_pcm_frame_f32.exit ] ; 4 uses
  %.03450 = phi ptr [ %1, %.lr.ph52 ], [ %i.ap, %ma_lpf1_process_pcm_frame_f32.exit ] ; 4 uses
  %.03549 = phi i32 [ 0, %.lr.ph52 ], [ %i.ar, %ma_lpf1_process_pcm_frame_f32.exit ]
  %i.l = load float, ptr %i.i, align 8, !tbaa !119 ; 4 uses
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
  %indvars.iv56 = phi i64 [ 0, %.new69 ], [ %indvars.iv.next57.1, %bb.d ] ; 5 uses
  %niter75 = phi i64 [ 0, %.new69 ], [ %niter75.next.1, %bb.d ]
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !400
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv56 ; 2 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !119
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.03351, i64 %indvars.iv56
  %i.t = load float, ptr %i.s, align 4, !tbaa !349
  %i.u = fmul float %i.l, %i.r
  %i.v = tail call float @llvm.fmuladd.f32(float %i.m, float %i.t, float %i.u) ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.03450, i64 %indvars.iv56
  store float %i.v, ptr %i.w, align 4, !tbaa !349
  store float %i.v, ptr %i.q, align 4, !tbaa !119
  %indvars.iv.next57 = or disjoint i64 %indvars.iv56, 1 ; 3 uses
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !400
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next57 ; 2 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !119
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.03351, i64 %indvars.iv.next57
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !349
  %i.ac = fmul float %i.l, %i.z
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.m, float %i.ab, float %i.ac) ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.03450, i64 %indvars.iv.next57
  store float %i.ad, ptr %i.ae, align 4, !tbaa !349
  store float %i.ad, ptr %i.y, align 4, !tbaa !119
  %indvars.iv.next57.1 = add nuw nsw i64 %indvars.iv56, 2 ; 2 uses
  %niter75.next.1 = add i64 %niter75, 2           ; 2 uses
  %niter75.ncmp.1 = icmp eq i64 %niter75.next.1, %unroll_iter74
  br i1 %niter75.ncmp.1, label %ma_lpf1_process_pcm_frame_f32.exit.unr-lcssa, label %bb.d, !llvm.loop !24

ma_lpf1_process_pcm_frame_f32.exit.unr-lcssa:     ; preds = %bb.d
  %lcmp.mod72.not = icmp eq i64 %xtraiter71, 0
  br i1 %lcmp.mod72.not, label %ma_lpf1_process_pcm_frame_f32.exit, label %.epil.preheader70

.epil.preheader70:                                ; preds = %ma_lpf1_process_pcm_frame_f32.exit.unr-lcssa, %bb.c
  %indvars.iv56.epil.init = phi i64 [ 0, %bb.c ], [ %indvars.iv.next57.1, %ma_lpf1_process_pcm_frame_f32.exit.unr-lcssa ] ; 3 uses
  %lcmp.mod73 = trunc i32 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod73)
  %i.af = load ptr, ptr %i.j, align 8, !tbaa !400
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv56.epil.init ; 2 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !119
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.03351, i64 %indvars.iv56.epil.init
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !349
  %i.ak = fmul float %i.l, %i.ah
  %i.al = tail call float @llvm.fmuladd.f32(float %i.m, float %i.aj, float %i.ak) ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.03450, i64 %indvars.iv56.epil.init
  store float %i.al, ptr %i.am, align 4, !tbaa !349
  store float %i.al, ptr %i.ag, align 4, !tbaa !119
  br label %ma_lpf1_process_pcm_frame_f32.exit

ma_lpf1_process_pcm_frame_f32.exit:               ; preds = %ma_lpf1_process_pcm_frame_f32.exit.unr-lcssa, %.epil.preheader70
  %i.an = load i32, ptr %i.h, align 4, !tbaa !402 ; 2 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.03450, i64 %i.ao
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.03351, i64 %i.ao
  %i.ar = add i32 %.03549, 1                      ; 2 uses
  %i.as = zext i32 %i.ar to i64
  %i.at = icmp ugt i64 %3, %i.as
  br i1 %i.at, label %bb.c, label %.loopexit, !llvm.loop !25

bb.e:                                             ; preds = %.lr.ph, %ma_lpf1_process_pcm_frame_s16.exit
  %i.au = phi i32 [ %.pre, %.lr.ph ], [ %i.cj, %ma_lpf1_process_pcm_frame_s16.exit ] ; 4 uses
  %.047 = phi ptr [ %2, %.lr.ph ], [ %i.cm, %ma_lpf1_process_pcm_frame_s16.exit ] ; 4 uses
  %.03246 = phi ptr [ %1, %.lr.ph ], [ %i.cl, %ma_lpf1_process_pcm_frame_s16.exit ] ; 4 uses
  %.145 = phi i32 [ 0, %.lr.ph ], [ %i.cn, %ma_lpf1_process_pcm_frame_s16.exit ]
  %i.av = load i32, ptr %i.f, align 8, !tbaa !119 ; 4 uses
  %i.aw = sub nsw i32 16384, %i.av                ; 3 uses
  %i.ax = icmp ne i32 %i.au, 0
  tail call void @llvm.assume(i1 %i.ax)
  %wide.trip.count = zext i32 %i.au to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ay = icmp eq i32 %i.au, 1
  br i1 %i.ay, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.e
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.1, %bb.f ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.f ]
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !400
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !119
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %.047, i64 %indvars.iv
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !122
  %i.be = sext i16 %i.bd to i32
  %i.bf = mul nsw i32 %i.aw, %i.be
  %i.bg = mul nsw i32 %i.bb, %i.av
  %i.bh = add nsw i32 %i.bf, %i.bg
  %i.bi = ashr i32 %i.bh, 14                      ; 2 uses
  %i.bj = trunc i32 %i.bi to i16
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %.03246, i64 %indvars.iv
  store i16 %i.bj, ptr %i.bk, align 2, !tbaa !122
  store i32 %i.bi, ptr %i.ba, align 4, !tbaa !119
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.bl = load ptr, ptr %i.g, align 8, !tbaa !400
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.next ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !119
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %.047, i64 %indvars.iv.next
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !122
  %i.bq = sext i16 %i.bp to i32
  %i.br = mul nsw i32 %i.aw, %i.bq
  %i.bs = mul nsw i32 %i.bn, %i.av
  %i.bt = add nsw i32 %i.br, %i.bs
  %i.bu = ashr i32 %i.bt, 14                      ; 2 uses
  %i.bv = trunc i32 %i.bu to i16
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %.03246, i64 %indvars.iv.next
  store i16 %i.bv, ptr %i.bw, align 2, !tbaa !122
  store i32 %i.bu, ptr %i.bm, align 4, !tbaa !119
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %ma_lpf1_process_pcm_frame_s16.exit.unr-lcssa, label %bb.f, !llvm.loop !26

ma_lpf1_process_pcm_frame_s16.exit.unr-lcssa:     ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ma_lpf1_process_pcm_frame_s16.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %ma_lpf1_process_pcm_frame_s16.exit.unr-lcssa, %bb.e
  %indvars.iv.epil.init = phi i64 [ 0, %bb.e ], [ %indvars.iv.next.1, %ma_lpf1_process_pcm_frame_s16.exit.unr-lcssa ] ; 3 uses
  %lcmp.mod68 = trunc i32 %i.au to i1
  tail call void @llvm.assume(i1 %lcmp.mod68)
  %i.bx = load ptr, ptr %i.g, align 8, !tbaa !400
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.epil.init ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !119
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %.047, i64 %indvars.iv.epil.init
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !122
  %i.cc = sext i16 %i.cb to i32
  %i.cd = mul nsw i32 %i.aw, %i.cc
  %i.ce = mul nsw i32 %i.bz, %i.av
  %i.cf = add nsw i32 %i.cd, %i.ce
  %i.cg = ashr i32 %i.cf, 14                      ; 2 uses
  %i.ch = trunc i32 %i.cg to i16
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %.03246, i64 %indvars.iv.epil.init
  store i16 %i.ch, ptr %i.ci, align 2, !tbaa !122
  store i32 %i.cg, ptr %i.by, align 4, !tbaa !119
  br label %ma_lpf1_process_pcm_frame_s16.exit

ma_lpf1_process_pcm_frame_s16.exit:               ; preds = %ma_lpf1_process_pcm_frame_s16.exit.unr-lcssa, %.epil.preheader
  %i.cj = load i32, ptr %i.e, align 4, !tbaa !402 ; 2 uses
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %.03246, i64 %i.ck
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %.047, i64 %i.ck
  %i.cn = add i32 %.145, 1                        ; 2 uses
  %i.co = zext i32 %i.cn to i64
  %i.cp = icmp ugt i64 %3, %i.co
  br i1 %i.cp, label %bb.e, label %.loopexit, !llvm.loop !27

.loopexit:                                        ; preds = %ma_lpf1_process_pcm_frame_s16.exit, %ma_lpf1_process_pcm_frame_f32.exit, %.preheader42, %.preheader, %bb.b, %bb.a
  %.036 = phi i32 [ -2, %bb.a ], [ -2, %bb.b ], [ 0, %.preheader ], [ 0, %.preheader42 ], [ 0, %ma_lpf1_process_pcm_frame_f32.exit ], [ 0, %ma_lpf1_process_pcm_frame_s16.exit ]
  ret i32 %.036
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @ma_lpf1_get_latency(ptr nofree noundef readnone captures(address_is_null) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %. = zext i1 %i.a to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define range(i32 -2, 1) i32 @ma_lpf2_get_heap_size(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #30 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !396, !noalias !1656
  %i.c = fmul double %i.b, f0x401921FB54442D18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !395, !noalias !1656
  %i.f = uitofp i32 %i.e to double
  %i.g = fdiv double %i.c, %i.f                   ; 3 uses
  %i.h = tail call double @llvm.fabs.f64(double %i.g)
  %i.i = fcmp oeq double %i.h, +inf
  br i1 %i.i, label %cdce.call, label %cdce.end, !prof !390

cdce.call:                                        ; preds = %bb.a
  %i.j = tail call double @sin(double noundef %i.g) #55, !noalias !1656 ; 0 uses
  br label %cdce.end

cdce.end:                                         ; preds = %bb.a, %cdce.call
  %i.k = fsub double f0x3FF921FB54442D18, %i.g    ; 2 uses
  %i.l = tail call double @llvm.fabs.f64(double %i.k)
  %i.m = fcmp oeq double %i.l, +inf
  br i1 %i.m, label %cdce.call9, label %cdce.end10, !prof !390

cdce.call9:                                       ; preds = %cdce.end
  %i.n = tail call double @sin(double noundef %i.k) #55, !noalias !1656 ; 0 uses
  br label %cdce.end10

cdce.end10:                                       ; preds = %cdce.end, %cdce.call9
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !394, !noalias !1656 ; 2 uses
  %i.q = icmp eq ptr %1, null
  br i1 %i.q, label %ma_biquad_get_heap_size.exit, label %bb.b

bb.b:                                             ; preds = %cdce.end10
  store i64 0, ptr %1, align 8, !tbaa !154
  %i.r = icmp eq i32 %i.p, 0
  br i1 %i.r, label %ma_biquad_get_heap_size.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = zext i32 %i.p to i64
  %i.t = shl nuw nsw i64 %i.s, 3
  store i64 %i.t, ptr %1, align 8, !tbaa !154
  br label %ma_biquad_get_heap_size.exit

ma_biquad_get_heap_size.exit:                     ; preds = %cdce.end10, %bb.b, %bb.c
  %.0.i = phi i32 [ 0, %bb.c ], [ -2, %cdce.end10 ], [ -2, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define range(i32 -3, 1) i32 @ma_lpf2_init_preallocated(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #30 {
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
  %i.e = load i32, ptr %i.d, align 8, !tbaa !395, !noalias !1659
  %i.f = uitofp i32 %i.e to double
  %i.g = load <2 x double>, ptr %i.c, align 8, !tbaa !404, !noalias !1659
  %i.h = fmul <2 x double> %i.g, <double f0x401921FB54442D18, double 2.000000e+00> ; 2 uses
  %i.i = extractelement <2 x double> %i.h, i64 0
  %i.j = fdiv double %i.i, %i.f                   ; 2 uses
  %i.k = tail call double @sin(double noundef %i.j) #55, !noalias !1659
  %i.l = fsub double f0x3FF921FB54442D18, %i.j
  %i.m = tail call double @sin(double noundef %i.l) #55, !noalias !1659 ; 2 uses
  %i.n = extractelement <2 x double> %i.h, i64 1
  %i.o = fdiv double %i.k, %i.n                   ; 2 uses
  %i.p = fadd double %i.o, 1.000000e+00           ; 6 uses
  %i.q = fsub double 1.000000e+00, %i.m           ; 3 uses
  %i.r = fmul double %i.q, 5.000000e-01
  %i.s = fmul double %i.m, -2.000000e+00          ; 2 uses
  %i.t = fsub double 1.000000e+00, %i.o           ; 2 uses
  %i.u = load i32, ptr %0, align 8, !tbaa !393, !noalias !1659 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !394, !noalias !1659 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %2, i8 0, i64 64, i1 false)
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %ma_biquad_init_preallocated.exit, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit17.i
  %i.y = zext i32 %i.w to i64                     ; 2 uses
  %i.z = shl nuw nsw i64 %i.y, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %1, ptr %i.aa, align 8, !tbaa !385
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = shl nuw nsw i64 %i.y, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 0, i64 %i.ab, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %1, ptr %i.ac, align 8, !tbaa !386
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.z
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !387
  %i.af = fcmp oeq double %i.p, 0.000000e+00
  br i1 %i.af, label %ma_biquad_init_preallocated.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  switch i32 %i.u, label %ma_biquad_init_preallocated.exit [
    i32 5, label %bb.f
    i32 2, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.ag = load i32, ptr %2, align 8, !tbaa !388   ; 2 uses
  %.not53.i = icmp eq i32 %i.ag, 0
  %.not54.i = icmp eq i32 %i.ag, %i.u
  %or.cond57.i = or i1 %.not53.i, %.not54.i
  br i1 %or.cond57.i, label %bb.g, label %ma_biquad_init_preallocated.exit

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !389 ; 2 uses
  %.not55.i = icmp eq i32 %i.ai, 0
  %.not56.i = icmp eq i32 %i.ai, %i.w
  %or.cond = or i1 %.not55.i, %.not56.i
  br i1 %or.cond, label %._crit_edge.i, label %ma_biquad_init_preallocated.exit

._crit_edge.i:                                    ; preds = %bb.g
  store i32 %i.u, ptr %2, align 8, !tbaa !388
  store i32 %i.w, ptr %i.ah, align 4, !tbaa !389
  %i.aj = icmp eq i32 %i.u, 5
  %i.ak = fdiv double %i.r, %i.p                  ; 3 uses
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i
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
  store float %i.ay, ptr %i.al, align 8, !tbaa !119
  store <4 x float> %i.ax, ptr %i.am, align 4, !tbaa !119
  br label %ma_biquad_init_preallocated.exit

bb.i:                                             ; preds = %._crit_edge.i
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
  store <4 x i32> %i.bj, ptr %i.az, align 8, !tbaa !119
  %i.bk = fdiv double %i.t, %i.p
  %i.bl = fmul double %i.bk, 1.638400e+04
  %i.bm = fptosi double %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.bm, ptr %i.bn, align 8, !tbaa !119
  br label %ma_biquad_init_preallocated.exit

ma_biquad_init_preallocated.exit:                 ; preds = %bb.g, %ma_zero_memory_default.exit17.i, %bb.d, %bb.e, %bb.f, %bb.h, %bb.i, %ma_zero_memory_default.exit, %bb.a
  %.0 = phi i32 [ -2, %ma_zero_memory_default.exit ], [ -2, %bb.a ], [ -2, %ma_zero_memory_default.exit17.i ], [ -3, %bb.g ], [ 0, %bb.h ], [ -2, %bb.d ], [ -2, %bb.e ], [ -3, %bb.f ], [ 0, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -4, 1) i32 @ma_lpf2_init(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !396, !noalias !1662
  %i.c = fmul double %i.b, f0x401921FB54442D18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !395, !noalias !1662
  %i.f = uitofp i32 %i.e to double
  %i.g = fdiv double %i.c, %i.f                   ; 3 uses
  %i.h = tail call double @llvm.fabs.f64(double %i.g)
  %i.i = fcmp oeq double %i.h, +inf
  br i1 %i.i, label %cdce.call, label %cdce.end.i, !prof !390
end_hunk_1
begin_hunk_2_@ma_hpf1_process_pcm_frames:bb.a
  ]

.preheader42:                                     ; preds = %bb.b
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader42
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pre = load i32, ptr %i.e, align 4, !tbaa !402
  br label %bb.e

.preheader:                                       ; preds = %bb.b
  %.not53 = icmp eq i64 %3, 0
  br i1 %.not53, label %.loopexit, label %.lr.ph52

.lr.ph52:                                         ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pre61 = load i32, ptr %i.h, align 4, !tbaa !402
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph52, %ma_hpf1_process_pcm_frame_f32.exit
  %i.k = phi i32 [ %.pre61, %.lr.ph52 ], [ %i.ar, %ma_hpf1_process_pcm_frame_f32.exit ] ; 4 uses
  %.03351 = phi ptr [ %2, %.lr.ph52 ], [ %i.au, %ma_hpf1_process_pcm_frame_f32.exit ] ; 4 uses
  %.03450 = phi ptr [ %1, %.lr.ph52 ], [ %i.at, %ma_hpf1_process_pcm_frame_f32.exit ] ; 4 uses
  %.03549 = phi i32 [ 0, %.lr.ph52 ], [ %i.av, %ma_hpf1_process_pcm_frame_f32.exit ]
  %i.l = load float, ptr %i.i, align 8, !tbaa !119
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
  %indvars.iv56 = phi i64 [ 0, %.new69 ], [ %indvars.iv.next57.1, %bb.d ] ; 5 uses
  %niter75 = phi i64 [ 0, %.new69 ], [ %niter75.next.1, %bb.d ]
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !400
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv56 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !119
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.03351, i64 %indvars.iv56
  %i.u = load float, ptr %i.t, align 4, !tbaa !349
  %i.v = fneg float %i.s
  %i.w = fmul float %i.m, %i.v
  %i.x = tail call float @llvm.fmuladd.f32(float %i.n, float %i.u, float %i.w) ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.03450, i64 %indvars.iv56
  store float %i.x, ptr %i.y, align 4, !tbaa !349
  store float %i.x, ptr %i.r, align 4, !tbaa !119
  %indvars.iv.next57 = or disjoint i64 %indvars.iv56, 1 ; 3 uses
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !400
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next57 ; 2 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !119
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.03351, i64 %indvars.iv.next57
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !349
  %i.ae = fneg float %i.ab
  %i.af = fmul float %i.m, %i.ae
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.n, float %i.ad, float %i.af) ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.03450, i64 %indvars.iv.next57
  store float %i.ag, ptr %i.ah, align 4, !tbaa !349
  store float %i.ag, ptr %i.aa, align 4, !tbaa !119
  %indvars.iv.next57.1 = add nuw nsw i64 %indvars.iv56, 2 ; 2 uses
  %niter75.next.1 = add i64 %niter75, 2           ; 2 uses
  %niter75.ncmp.1 = icmp eq i64 %niter75.next.1, %unroll_iter74
  br i1 %niter75.ncmp.1, label %ma_hpf1_process_pcm_frame_f32.exit.unr-lcssa, label %bb.d, !llvm.loop !34

ma_hpf1_process_pcm_frame_f32.exit.unr-lcssa:     ; preds = %bb.d
  %lcmp.mod72.not = icmp eq i64 %xtraiter71, 0
  br i1 %lcmp.mod72.not, label %ma_hpf1_process_pcm_frame_f32.exit, label %.epil.preheader70

.epil.preheader70:                                ; preds = %ma_hpf1_process_pcm_frame_f32.exit.unr-lcssa, %bb.c
  %indvars.iv56.epil.init = phi i64 [ 0, %bb.c ], [ %indvars.iv.next57.1, %ma_hpf1_process_pcm_frame_f32.exit.unr-lcssa ] ; 3 uses
  %lcmp.mod73 = trunc i32 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod73)
  %i.ai = load ptr, ptr %i.j, align 8, !tbaa !400
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv56.epil.init ; 2 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !119
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.03351, i64 %indvars.iv56.epil.init
  %i.am = load float, ptr %i.al, align 4, !tbaa !349
  %i.an = fneg float %i.ak
  %i.ao = fmul float %i.m, %i.an
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.n, float %i.am, float %i.ao) ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.03450, i64 %indvars.iv56.epil.init
  store float %i.ap, ptr %i.aq, align 4, !tbaa !349
  store float %i.ap, ptr %i.aj, align 4, !tbaa !119
  br label %ma_hpf1_process_pcm_frame_f32.exit

ma_hpf1_process_pcm_frame_f32.exit:               ; preds = %ma_hpf1_process_pcm_frame_f32.exit.unr-lcssa, %.epil.preheader70
  %i.ar = load i32, ptr %i.h, align 4, !tbaa !402 ; 2 uses
  %i.as = zext i32 %i.ar to i64                   ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.03450, i64 %i.as
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.03351, i64 %i.as
  %i.av = add i32 %.03549, 1                      ; 2 uses
  %i.aw = zext i32 %i.av to i64
  %i.ax = icmp ugt i64 %3, %i.aw
  br i1 %i.ax, label %bb.c, label %.loopexit, !llvm.loop !35

bb.e:                                             ; preds = %.lr.ph, %ma_hpf1_process_pcm_frame_s16.exit
  %i.ay = phi i32 [ %.pre, %.lr.ph ], [ %i.cj, %ma_hpf1_process_pcm_frame_s16.exit ] ; 4 uses
  %.047 = phi ptr [ %2, %.lr.ph ], [ %i.cm, %ma_hpf1_process_pcm_frame_s16.exit ] ; 4 uses
  %.03246 = phi ptr [ %1, %.lr.ph ], [ %i.cl, %ma_hpf1_process_pcm_frame_s16.exit ] ; 4 uses
  %.145 = phi i32 [ 0, %.lr.ph ], [ %i.cn, %ma_hpf1_process_pcm_frame_s16.exit ]
  %i.az = load i32, ptr %i.f, align 8, !tbaa !119 ; 4 uses
  %.neg.i = add i32 %i.az, -16384                 ; 3 uses
  %i.ba = icmp ne i32 %i.ay, 0
  tail call void @llvm.assume(i1 %i.ba)
  %wide.trip.count = zext i32 %i.ay to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bb = icmp eq i32 %i.ay, 1
  br i1 %i.bb, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.e
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.1, %bb.f ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.f ]
  %i.bc = load ptr, ptr %i.g, align 8, !tbaa !400
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !119
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %.047, i64 %indvars.iv
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !122
  %i.bh = sext i16 %i.bg to i32
  %i.bi = mul nsw i32 %i.az, %i.bh
  %.neg20.i = mul i32 %i.be, %.neg.i
  %i.bj = add i32 %i.bi, %.neg20.i
  %i.bk = ashr i32 %i.bj, 14                      ; 2 uses
  %i.bl = trunc i32 %i.bk to i16
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %.03246, i64 %indvars.iv
  store i16 %i.bl, ptr %i.bm, align 2, !tbaa !122
  store i32 %i.bk, ptr %i.bd, align 4, !tbaa !119
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.bn = load ptr, ptr %i.g, align 8, !tbaa !400
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.next ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !119
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %.047, i64 %indvars.iv.next
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !122
  %i.bs = sext i16 %i.br to i32
  %i.bt = mul nsw i32 %i.az, %i.bs
  %.neg20.i.1 = mul i32 %i.bp, %.neg.i
  %i.bu = add i32 %i.bt, %.neg20.i.1
  %i.bv = ashr i32 %i.bu, 14                      ; 2 uses
  %i.bw = trunc i32 %i.bv to i16
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %.03246, i64 %indvars.iv.next
  store i16 %i.bw, ptr %i.bx, align 2, !tbaa !122
  store i32 %i.bv, ptr %i.bo, align 4, !tbaa !119
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %ma_hpf1_process_pcm_frame_s16.exit.unr-lcssa, label %bb.f, !llvm.loop !36

ma_hpf1_process_pcm_frame_s16.exit.unr-lcssa:     ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ma_hpf1_process_pcm_frame_s16.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %ma_hpf1_process_pcm_frame_s16.exit.unr-lcssa, %bb.e
  %indvars.iv.epil.init = phi i64 [ 0, %bb.e ], [ %indvars.iv.next.1, %ma_hpf1_process_pcm_frame_s16.exit.unr-lcssa ] ; 3 uses
  %lcmp.mod68 = trunc i32 %i.ay to i1
  tail call void @llvm.assume(i1 %lcmp.mod68)
  %i.by = load ptr, ptr %i.g, align 8, !tbaa !400
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.epil.init ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !119
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %.047, i64 %indvars.iv.epil.init
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !122
  %i.cd = sext i16 %i.cc to i32
  %i.ce = mul nsw i32 %i.az, %i.cd
  %.neg20.i.epil = mul i32 %i.ca, %.neg.i
  %i.cf = add i32 %i.ce, %.neg20.i.epil
  %i.cg = ashr i32 %i.cf, 14                      ; 2 uses
  %i.ch = trunc i32 %i.cg to i16
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %.03246, i64 %indvars.iv.epil.init
  store i16 %i.ch, ptr %i.ci, align 2, !tbaa !122
  store i32 %i.cg, ptr %i.bz, align 4, !tbaa !119
  br label %ma_hpf1_process_pcm_frame_s16.exit

ma_hpf1_process_pcm_frame_s16.exit:               ; preds = %ma_hpf1_process_pcm_frame_s16.exit.unr-lcssa, %.epil.preheader
  %i.cj = load i32, ptr %i.e, align 4, !tbaa !402 ; 2 uses
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %.03246, i64 %i.ck
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %.047, i64 %i.ck
  %i.cn = add i32 %.145, 1                        ; 2 uses
  %i.co = zext i32 %i.cn to i64
  %i.cp = icmp ugt i64 %3, %i.co
  br i1 %i.cp, label %bb.e, label %.loopexit, !llvm.loop !37

.loopexit:                                        ; preds = %ma_hpf1_process_pcm_frame_s16.exit, %ma_hpf1_process_pcm_frame_f32.exit, %.preheader42, %.preheader, %bb.b, %bb.a
  %.036 = phi i32 [ -2, %bb.a ], [ -2, %bb.b ], [ 0, %.preheader ], [ 0, %.preheader42 ], [ 0, %ma_hpf1_process_pcm_frame_f32.exit ], [ 0, %ma_hpf1_process_pcm_frame_s16.exit ]
  ret i32 %.036
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @ma_hpf1_get_latency(ptr nofree noundef readnone captures(address_is_null) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %. = zext i1 %i.a to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define range(i32 -2, 1) i32 @ma_hpf2_get_heap_size(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #30 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !396, !noalias !1684
  %i.c = fmul double %i.b, f0x401921FB54442D18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !395, !noalias !1684
  %i.f = uitofp i32 %i.e to double
  %i.g = fdiv double %i.c, %i.f                   ; 3 uses
  %i.h = tail call double @llvm.fabs.f64(double %i.g)
  %i.i = fcmp oeq double %i.h, +inf
  br i1 %i.i, label %cdce.call, label %cdce.end, !prof !390

cdce.call:                                        ; preds = %bb.a
  %i.j = tail call double @sin(double noundef %i.g) #55, !noalias !1684 ; 0 uses
  br label %cdce.end

cdce.end:                                         ; preds = %bb.a, %cdce.call
  %i.k = fsub double f0x3FF921FB54442D18, %i.g    ; 2 uses
  %i.l = tail call double @llvm.fabs.f64(double %i.k)
  %i.m = fcmp oeq double %i.l, +inf
  br i1 %i.m, label %cdce.call9, label %cdce.end10, !prof !390

cdce.call9:                                       ; preds = %cdce.end
  %i.n = tail call double @sin(double noundef %i.k) #55, !noalias !1684 ; 0 uses
  br label %cdce.end10

cdce.end10:                                       ; preds = %cdce.end, %cdce.call9
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !394, !noalias !1684 ; 2 uses
  %i.q = icmp eq ptr %1, null
  br i1 %i.q, label %ma_biquad_get_heap_size.exit, label %bb.b

bb.b:                                             ; preds = %cdce.end10
  store i64 0, ptr %1, align 8, !tbaa !154
  %i.r = icmp eq i32 %i.p, 0
  br i1 %i.r, label %ma_biquad_get_heap_size.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = zext i32 %i.p to i64
  %i.t = shl nuw nsw i64 %i.s, 3
  store i64 %i.t, ptr %1, align 8, !tbaa !154
  br label %ma_biquad_get_heap_size.exit

ma_biquad_get_heap_size.exit:                     ; preds = %cdce.end10, %bb.b, %bb.c
  %.0.i = phi i32 [ 0, %bb.c ], [ -2, %cdce.end10 ], [ -2, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define range(i32 -3, 1) i32 @ma_hpf2_init_preallocated(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #30 {
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
  %i.e = load i32, ptr %i.d, align 8, !tbaa !395, !noalias !1687
  %i.f = uitofp i32 %i.e to double
  %i.g = load <2 x double>, ptr %i.c, align 8, !tbaa !404, !noalias !1687
  %i.h = fmul <2 x double> %i.g, <double f0x401921FB54442D18, double 2.000000e+00> ; 2 uses
  %i.i = extractelement <2 x double> %i.h, i64 0
  %i.j = fdiv double %i.i, %i.f                   ; 2 uses
  %i.k = tail call double @sin(double noundef %i.j) #55, !noalias !1687
  %i.l = fsub double f0x3FF921FB54442D18, %i.j
  %i.m = tail call double @sin(double noundef %i.l) #55, !noalias !1687 ; 2 uses
  %i.n = fadd double %i.m, 1.000000e+00           ; 2 uses
  %i.o = extractelement <2 x double> %i.h, i64 1
  %i.p = fdiv double %i.k, %i.o                   ; 2 uses
  %i.q = fmul double %i.n, 5.000000e-01
  %i.r = fneg double %i.n                         ; 2 uses
  %i.s = fadd double %i.p, 1.000000e+00           ; 6 uses
  %i.t = fmul double %i.m, -2.000000e+00          ; 2 uses
  %i.u = fsub double 1.000000e+00, %i.p           ; 2 uses
  %i.v = load i32, ptr %0, align 8, !tbaa !393, !noalias !1687 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !394, !noalias !1687 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %2, i8 0, i64 64, i1 false)
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %ma_biquad_init_preallocated.exit, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit17.i
  %i.z = zext i32 %i.x to i64                     ; 2 uses
  %i.aa = shl nuw nsw i64 %i.z, 2
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %1, ptr %i.ab, align 8, !tbaa !385
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 0, i64 %i.ac, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %1, ptr %i.ad, align 8, !tbaa !386
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !387
  %i.ag = fcmp oeq double %i.s, 0.000000e+00
  br i1 %i.ag, label %ma_biquad_init_preallocated.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  switch i32 %i.v, label %ma_biquad_init_preallocated.exit [
    i32 5, label %bb.f
    i32 2, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.ah = load i32, ptr %2, align 8, !tbaa !388   ; 2 uses
  %.not53.i = icmp eq i32 %i.ah, 0
  %.not54.i = icmp eq i32 %i.ah, %i.v
  %or.cond57.i = or i1 %.not53.i, %.not54.i
  br i1 %or.cond57.i, label %bb.g, label %ma_biquad_init_preallocated.exit

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !389 ; 2 uses
  %.not55.i = icmp eq i32 %i.aj, 0
  %.not56.i = icmp eq i32 %i.aj, %i.x
  %or.cond = or i1 %.not55.i, %.not56.i
  br i1 %or.cond, label %._crit_edge.i, label %ma_biquad_init_preallocated.exit

._crit_edge.i:                                    ; preds = %bb.g
  store i32 %i.v, ptr %2, align 8, !tbaa !388
  store i32 %i.x, ptr %i.ai, align 4, !tbaa !389
  %i.ak = icmp eq i32 %i.v, 5
  %i.al = fdiv double %i.q, %i.s                  ; 3 uses
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i
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
  store float %i.az, ptr %i.am, align 8, !tbaa !119
  store <4 x float> %i.ay, ptr %i.an, align 4, !tbaa !119
  br label %ma_biquad_init_preallocated.exit

bb.i:                                             ; preds = %._crit_edge.i
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
  store <4 x i32> %i.bk, ptr %i.ba, align 8, !tbaa !119
  %i.bl = fdiv double %i.u, %i.s
  %i.bm = fmul double %i.bl, 1.638400e+04
  %i.bn = fptosi double %i.bm to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.bn, ptr %i.bo, align 8, !tbaa !119
  br label %ma_biquad_init_preallocated.exit

ma_biquad_init_preallocated.exit:                 ; preds = %bb.g, %ma_zero_memory_default.exit17.i, %bb.d, %bb.e, %bb.f, %bb.h, %bb.i, %ma_zero_memory_default.exit, %bb.a
  %.0 = phi i32 [ -2, %ma_zero_memory_default.exit ], [ -2, %bb.a ], [ -2, %ma_zero_memory_default.exit17.i ], [ -3, %bb.g ], [ 0, %bb.h ], [ -2, %bb.d ], [ -2, %bb.e ], [ -3, %bb.f ], [ 0, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -4, 1) i32 @ma_hpf2_init(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !396, !noalias !1690
  %i.c = fmul double %i.b, f0x401921FB54442D18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !395, !noalias !1690
  %i.f = uitofp i32 %i.e to double
  %i.g = fdiv double %i.c, %i.f                   ; 3 uses
  %i.h = tail call double @llvm.fabs.f64(double %i.g)
  %i.i = fcmp oeq double %i.h, +inf
end_hunk_2
begin_hunk_3_@ma_dr_wav_guid_equal:bb.a
bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.l = load i8, ptr %i.k, align 1, !tbaa !119
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.n = load i8, ptr %i.m, align 1, !tbaa !119
  %.not.3 = icmp eq i8 %i.l, %i.n
  br i1 %.not.3, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = load i8, ptr %i.o, align 1, !tbaa !119
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = load i8, ptr %i.q, align 1, !tbaa !119
  %.not.4 = icmp eq i8 %i.p, %i.r
  br i1 %.not.4, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.t = load i8, ptr %i.s, align 1, !tbaa !119
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.v = load i8, ptr %i.u, align 1, !tbaa !119
  %.not.5 = icmp eq i8 %i.t, %i.v
  br i1 %.not.5, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.x = load i8, ptr %i.w, align 1, !tbaa !119
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.z = load i8, ptr %i.y, align 1, !tbaa !119
  %.not.6 = icmp eq i8 %i.x, %i.z
  br i1 %.not.6, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !119
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !119
  %.not.7 = icmp eq i8 %i.ab, %i.ad
  br i1 %.not.7, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !119
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !119
  %.not.8 = icmp eq i8 %i.af, %i.ah
  br i1 %.not.8, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !119
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !119
  %.not.9 = icmp eq i8 %i.aj, %i.al
  br i1 %.not.9, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.an = load i8, ptr %i.am, align 1, !tbaa !119
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !119
  %.not.10 = icmp eq i8 %i.an, %i.ap
  br i1 %.not.10, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !119
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.at = load i8, ptr %i.as, align 1, !tbaa !119
  %.not.11 = icmp eq i8 %i.ar, %i.at
  br i1 %.not.11, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.av = load i8, ptr %i.au, align 1, !tbaa !119
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !119
  %.not.12 = icmp eq i8 %i.av, %i.ax
  br i1 %.not.12, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !119
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !119
  %.not.13 = icmp eq i8 %i.az, %i.bb
  br i1 %.not.13, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !119
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !119
  %.not.14 = icmp eq i8 %i.bd, %i.bf
  br i1 %.not.14, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !119
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !119
  %.not.15 = icmp eq i8 %i.bh, %i.bj
  %spec.select = zext i1 %.not.15 to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.06 = phi i32 [ 0, %bb.a ], [ 0, %bb.i ], [ 0, %bb.b ], [ %spec.select, %bb.p ], [ 0, %bb.c ], [ 0, %bb.k ], [ 0, %bb.d ], [ 0, %bb.o ], [ 0, %bb.e ], [ 0, %bb.j ], [ 0, %bb.f ], [ 0, %bb.n ], [ 0, %bb.g ], [ 0, %bb.l ], [ 0, %bb.h ], [ 0, %bb.m ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @ma_dr_wav_fourcc_equal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !119
  %i.b = zext i8 %i.a to i32
  %i.c = load i8, ptr %1, align 1, !tbaa !119
  %i.d = sext i8 %i.c to i32
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !119
  %i.h = zext i8 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !119
  %i.k = sext i8 %i.j to i32
  %i.l = icmp eq i32 %i.h, %i.k
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !119
  %i.o = zext i8 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !119
  %i.r = sext i8 %i.q to i32
  %i.s = icmp eq i32 %i.o, %i.r
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !119
  %i.v = zext i8 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.x = load i8, ptr %i.w, align 1, !tbaa !119
  %i.y = sext i8 %i.x to i32
  %i.z = icmp eq i32 %i.v, %i.y
  %i.aa = zext i1 %i.z to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.ab = phi i32 [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ %i.aa, %bb.d ]
  ret i32 %i.ab
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ma_dr_flac_version(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 4, !tbaa !118
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not8 = icmp eq ptr %1, null
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 13, ptr %1, align 4, !tbaa !118
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not9 = icmp eq ptr %2, null
  br i1 %.not9, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 3, ptr %2, align 4, !tbaa !118
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @ma_dr_flac_version_string() local_unnamed_addr #1 {
bb.a:
  ret ptr @.str.178
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i64 @ma_dr_flac__on_read_stdio(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) #9 {
bb.a:
  %i.a = tail call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef %0)
  ret i64 %i.a
}

; Function Attrs: nofree nounwind uwtable
define internal range(i32 0, 2) i32 @ma_dr_flac__on_seek_stdio(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) #9 {
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
define internal noundef i32 @ma_dr_flac__on_tell_stdio(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #9 {
bb.a:
  %i.a = tail call i64 @ftell(ptr noundef %0)
  store i64 %i.a, ptr %1, align 8, !tbaa !164
  ret i32 1
}

; Function Attrs: nounwind uwtable
define ptr @ma_dr_flac_open_file_with_metadata(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_fopen.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias ptr @fopen(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.176) ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %ma_fopen.exit.thread, label %ma_fopen.exit

ma_fopen.exit:                                    ; preds = %bb.b
  %i.d = tail call fastcc ptr @ma_dr_flac_open_with_metadata_private(ptr noundef nonnull @ma_dr_flac__on_read_stdio, ptr noundef nonnull @ma_dr_flac__on_seek_stdio, ptr noundef nonnull @ma_dr_flac__on_tell_stdio, ptr noundef %1, i32 noundef 2, ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef %3) ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %ma_fopen.exit.thread

bb.c:                                             ; preds = %ma_fopen.exit
  %i.f = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %ma_fopen.exit.thread

ma_fopen.exit.thread:                             ; preds = %bb.b, %bb.a, %ma_fopen.exit, %bb.c
  %.0 = phi ptr [ %i.d, %ma_fopen.exit ], [ null, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ma_dr_flac_open_with_metadata_private(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readonly captures(address_is_null) %7) unnamed_addr #8 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %8 = alloca %struct.ma_dr_flac_metadata, align 8 ; 31 uses
  %i.b = alloca [4 x i8], align 1                 ; 9 uses
  %i.c = alloca [6 x i8], align 1                 ; 6 uses
  %9 = alloca %struct.ma_dr_flac_init_info, align 8 ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #55
  %.b.i = load i1, ptr @ma_dr_flac__init_cpu_caps.isCPUCapsInitialized, align 4
  br i1 %.b.i, label %ma_dr_flac__init_cpu_caps.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 -2147483647, i32 0) #55, !srcloc !2945
  %i.e = extractvalue { i32, i32, i32, i32 } %i.d, 2
  %i.f = lshr i32 %i.e, 5
  %.lobit.i = and i32 %i.f, 1
  store i32 %.lobit.i, ptr @ma_dr_flac__gIsLZCNTSupported, align 4, !tbaa !118
  store i1 true, ptr @ma_dr_flac__gIsSSE2Supported, align 4
  store i1 true, ptr @ma_dr_flac__init_cpu_caps.isCPUCapsInitialized, align 4
  br label %ma_dr_flac__init_cpu_caps.exit

ma_dr_flac__init_cpu_caps.exit:                   ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  %i.g = icmp eq ptr %0, null
  %i.h = icmp eq ptr %1, null
  %or.cond3.i = or i1 %i.g, %i.h
  br i1 %or.cond3.i, label %ma_dr_flac__init_private.exit.thread, label %bb.c

bb.c:                                             ; preds = %ma_dr_flac__init_cpu_caps.exit
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4576) %i.i, i8 0, i64 4576, i1 false)
  store ptr %0, ptr %9, align 8, !tbaa !2946
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %1, ptr %i.j, align 8, !tbaa !2947
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %2, ptr %i.k, align 8, !tbaa !2948
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr %3, ptr %i.l, align 8, !tbaa !2949
  store i32 %4, ptr %i.i, align 8, !tbaa !1094
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 40
  store ptr %5, ptr %i.m, align 8, !tbaa !2950
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  store ptr %6, ptr %i.n, align 8, !tbaa !2951
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  store ptr %0, ptr %i.o, align 8, !tbaa !2952
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 104
  store ptr %1, ptr %i.p, align 8, !tbaa !2953
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 112
  store ptr %2, ptr %i.q, align 8, !tbaa !2954
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 120
  store ptr %5, ptr %i.r, align 8, !tbaa !2955
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 144
  store i32 512, ptr %i.s, align 8, !tbaa !738
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 148
  store i32 64, ptr %i.t, align 4, !tbaa !739
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.v = icmp ne i32 %4, 2                        ; 2 uses
  %i.w = zext i1 %i.v to i32                      ; 2 uses
  %i.x = call i64 %0(ptr noundef %5, ptr noundef nonnull %i.b, i64 noundef 4) #55, !inline_history !2935
  %.not123.i = icmp eq i64 %i.x, 4
  br i1 %.not123.i, label %.lr.ph.i, label %ma_dr_flac__init_private.exit.thread

.lr.ph.i:                                         ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph.i
  %i.ad = load i64, ptr %i.y, align 8, !tbaa !1095
  %i.ae = add i64 %i.ad, 4
  store i64 %i.ae, ptr %i.y, align 8, !tbaa !1095
  %i.af = load i8, ptr %i.b, align 1, !tbaa !119  ; 3 uses
  %i.ag = icmp eq i8 %i.af, 73
  %i.ah = load i8, ptr %i.z, align 1              ; 3 uses
  %i.ai = icmp eq i8 %i.ah, 68
  %or.cond7.i = select i1 %i.ag, i1 %i.ai, i1 false
  %i.aj = load i8, ptr %i.aa, align 1             ; 3 uses
  %i.ak = icmp eq i8 %i.aj, 51
  %or.cond11.i = select i1 %or.cond7.i, i1 %i.ak, i1 false
  br i1 %or.cond11.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  %i.al = call i64 %0(ptr noundef %5, ptr noundef nonnull %i.c, i64 noundef 6) #55, !inline_history !2935
  %.not115.i = icmp eq i64 %i.al, 6
  br i1 %.not115.i, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.am = load i64, ptr %i.y, align 8, !tbaa !1095
  %i.an = add i64 %i.am, 6
  store i64 %i.an, ptr %i.y, align 8, !tbaa !1095
  %i.ao = load i8, ptr %i.ab, align 1, !tbaa !119
  %.0.copyload.i = load i32, ptr %i.ac, align 1
  %i.ap = call i32 @llvm.bswap.i32(i32 %.0.copyload.i) ; 4 uses
  %i.aq = lshr i32 %i.ap, 3
  %i.ar = and i32 %i.aq, 266338304
  %i.as = lshr i32 %i.ap, 2
  %i.at = and i32 %i.as, 2080768
  %i.au = lshr i32 %i.ap, 1
  %i.av = and i32 %i.au, 16256
  %i.aw = and i32 %i.ap, 127
  %i.ax = or disjoint i32 %i.at, %i.aw
  %i.ay = or disjoint i32 %i.ax, %i.ar
  %i.az = or disjoint i32 %i.ay, %i.av            ; 2 uses
  %i.ba = and i8 %i.ao, 16
  %.not116.i = icmp eq i8 %i.ba, 0
  %i.bb = add nuw nsw i32 %i.az, 10
  %spec.select.i = select i1 %.not116.i, i32 %i.az, i32 %i.bb ; 2 uses
  %i.bc = call i32 %1(ptr noundef %5, i32 noundef %spec.select.i, i32 noundef 1) #55, !inline_history !2935
  %.not117.i = icmp eq i32 %i.bc, 0
  br i1 %.not117.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = zext nneg i32 %spec.select.i to i64
  %i.be = load i64, ptr %i.y, align 8, !tbaa !1095
  %i.bf = add i64 %i.be, %i.bd
  store i64 %i.bf, ptr %i.y, align 8, !tbaa !1095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  %i.bg = call i64 %0(ptr noundef %5, ptr noundef nonnull %i.b, i64 noundef 4) #55, !inline_history !2935
  %.not.i = icmp eq i64 %i.bg, 4
  br i1 %.not.i, label %bb.d, label %ma_dr_flac__init_private.exit.thread

bb.h:                                             ; preds = %bb.d
  %i.bh = icmp eq i8 %i.af, 102
  %i.bi = icmp eq i8 %i.ah, 76
  %or.cond15.i = select i1 %i.bh, i1 %i.bi, i1 false
  %i.bj = icmp eq i8 %i.aj, 97
  %or.cond19.i = select i1 %or.cond15.i, i1 %i.bj, i1 false
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.bl = load i8, ptr %i.bk, align 1             ; 2 uses
  %i.bm = icmp eq i8 %i.bl, 67
  %or.cond23.i = select i1 %or.cond19.i, i1 %i.bm, i1 false
  br i1 %or.cond23.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bn = call fastcc i32 @ma_dr_flac__init_private__native(ptr noundef nonnull %9, ptr noundef %0, ptr noundef %3, ptr noundef %5, ptr noundef %6, i32 noundef %i.w)
  br label %ma_dr_flac__init_private.exit

bb.j:                                             ; preds = %bb.h
  %i.bo = icmp eq i8 %i.af, 79
  %i.bp = icmp eq i8 %i.ah, 103
  %or.cond27.i = select i1 %i.bo, i1 %i.bp, i1 false
  %i.bq = icmp eq i8 %i.aj, 103
  %or.cond31.i = select i1 %or.cond27.i, i1 %i.bq, i1 false
  %i.br = icmp eq i8 %i.bl, 83
  %or.cond35.i = select i1 %or.cond31.i, i1 %i.br, i1 false
  br i1 %or.cond35.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bs = call fastcc i32 @ma_dr_flac__init_private__ogg(ptr noundef nonnull %9, ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %5, ptr noundef %6)
end_hunk_3
begin_hunk_4_@ma_dr_mp3dec_decode_frame:bb.a
  br i1 %.not33.i.i.2, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.aur = load i8, ptr %i.ns, align 1, !tbaa !119
  %i.aus = and i8 %i.aur, 8
  %.not32.i.i.2 = icmp eq i8 %i.aus, 0
  %i.aut = select i1 %.not32.i.i.2, i8 0, i8 3
  br label %bb.dt

bb.ds:                                            ; preds = %bb.dq
  %i.auu = sext i32 %i.aup to i64
  %i.auv = getelementptr inbounds i8, ptr %i.nw, i64 %i.auu
  %i.auw = load i8, ptr %i.auv, align 1, !tbaa !119
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %i.aux = phi i8 [ %i.aut, %bb.dr ], [ %i.auw, %bb.ds ]
  %i.auy = sext i32 %i.auo to i64
  %i.auz = getelementptr inbounds i8, ptr %i.nw, i64 %i.auy
  store i8 %i.aux, ptr %i.auz, align 1, !tbaa !119
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.dm
  %i.ava = load ptr, ptr %i.ok, align 8, !tbaa !1130 ; 3 uses
  %i.avb = getelementptr inbounds nuw i8, ptr %i.ok, i64 44
  %i.avc = load i16, ptr %i.avb, align 4, !tbaa !1126
  %i.avd = and i16 %i.avc, 1
  %i.ave = zext nneg i16 %i.avd to i32
  %i.avf = load i8, ptr %i.ns, align 1, !tbaa !119
  %i.avg = and i8 %i.avf, 8
  %.not.i34.i.i = icmp eq i8 %i.avg, 0
  %i.avh = select i1 %.not.i34.i.i, i32 64, i32 7
  %i.avi = load i8, ptr %i.ava, align 1, !tbaa !119 ; 2 uses
  %.not3648.i.i.i = icmp eq i8 %i.avi, 0
  br i1 %.not3648.i.i.i, label %ma_dr_mp3_L3_intensity_stereo.exit.i, label %.lr.ph.i35.i.i

.lr.ph.i35.i.i:                                   ; preds = %bb.du, %ma_dr_mp3_L3_intensity_stereo_band.exit.i.i.i
  %i.avj = phi i8 [ %i.ayt, %ma_dr_mp3_L3_intensity_stereo_band.exit.i.i.i ], [ %i.avi, %bb.du ] ; 5 uses
  %i.avk = phi ptr [ %i.ays, %ma_dr_mp3_L3_intensity_stereo_band.exit.i.i.i ], [ %i.ava, %bb.du ]
  %i.avl = phi i64 [ %i.ayr, %ma_dr_mp3_L3_intensity_stereo_band.exit.i.i.i ], [ 0, %bb.du ]
  %.03350.i.i.i = phi i32 [ %i.ayq, %ma_dr_mp3_L3_intensity_stereo_band.exit.i.i.i ], [ 0, %bb.du ] ; 3 uses
  %.03449.i.i.i = phi ptr [ %i.ayp, %ma_dr_mp3_L3_intensity_stereo_band.exit.i.i.i ], [ %i.no, %bb.du ] ; 7 uses
  %i.avm = getelementptr inbounds nuw i8, ptr %i.nw, i64 %i.avl
  %i.avn = load i8, ptr %i.avm, align 1, !tbaa !119
  %i.avo = zext i8 %i.avn to i32                  ; 4 uses
  %i.avp = urem i32 %.03350.i.i.i, 3
  %i.avq = zext nneg i32 %i.avp to i64
  %i.avr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.avq
  %i.avs = load i32, ptr %i.avr, align 4, !tbaa !118
  %i.avt = icmp sgt i32 %.03350.i.i.i, %i.avs
  %i.avu = icmp samesign ugt i32 %i.avh, %i.avo
  %or.cond.i.i.i = select i1 %i.avt, i1 %i.avu, i1 false
  %i.avv = load i8, ptr %i.np, align 1, !tbaa !119
  %i.avw = and i8 %i.avv, 32
  %.not38.i.i.i = icmp eq i8 %i.avw, 0            ; 2 uses
  br i1 %or.cond.i.i.i, label %bb.dv, label %bb.ea

bb.dv:                                            ; preds = %.lr.ph.i35.i.i
  %i.avx = select i1 %.not38.i.i.i, float 1.000000e+00, float f0x3FB504F3 ; 2 uses
  %i.avy = load i8, ptr %i.ns, align 1, !tbaa !119
  %i.avz = and i8 %i.avy, 8
  %.not39.i.i.i = icmp eq i8 %i.avz, 0
  br i1 %.not39.i.i.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.awa = shl nuw nsw i32 %i.avo, 1
  %i.awb = zext nneg i32 %i.awa to i64
  %i.awc = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_mp3_L3_stereo_process.g_pan, i64 %i.awb ; 2 uses
  %i.awd = load float, ptr %i.awc, align 8, !tbaa !349
  %i.awe = getelementptr inbounds nuw i8, ptr %i.awc, i64 4
  %i.awf = load float, ptr %i.awe, align 4, !tbaa !349
  br label %.lr.ph.preheader.i.i.i.i

bb.dx:                                            ; preds = %bb.dv
  %i.awg = add nuw nsw i32 %i.avo, 1
  %i.awh = lshr i32 %i.awg, 1
  %i.awi = shl nuw nsw i32 %i.awh, %i.ave
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dy, %bb.dx
  %.07.i.i.i.i = phi float [ 1.000000e+00, %bb.dx ], [ %i.aws, %bb.dy ]
  %.0.i.i.i78.i = phi i32 [ %i.awi, %bb.dx ], [ %i.awt, %bb.dy ] ; 2 uses
  %i.awj = tail call i32 @llvm.umin.i32(i32 %.0.i.i.i78.i, i32 120) ; 3 uses
  %i.awk = and i32 %i.awj, 3
  %i.awl = zext nneg i32 %i.awk to i64
  %i.awm = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_mp3_L3_ldexp_q2.g_expfrac, i64 %i.awl
  %i.awn = load float, ptr %i.awm, align 4, !tbaa !349
  %i.awo = lshr i32 %i.awj, 2
  %i.awp = lshr i32 1073741824, %i.awo
  %i.awq = uitofp nneg i32 %i.awp to float
  %i.awr = fmul float %i.awn, %i.awq
  %i.aws = fmul float %.07.i.i.i.i, %i.awr        ; 3 uses
  %i.awt = sub nuw nsw i32 %.0.i.i.i78.i, %i.awj  ; 2 uses
  %.not56.i.i.i = icmp eq i32 %i.awt, 0
  br i1 %.not56.i.i.i, label %ma_dr_mp3_L3_ldexp_q2.exit.i.i.i, label %bb.dy, !llvm.loop !2980

ma_dr_mp3_L3_ldexp_q2.exit.i.i.i:                 ; preds = %bb.dy
  %i.awu = and i32 %i.avo, 1
  %.not40.i.i.i = icmp eq i32 %i.awu, 0
  br i1 %.not40.i.i.i, label %.lr.ph.preheader.i.i.i.i, label %bb.dz

bb.dz:                                            ; preds = %ma_dr_mp3_L3_ldexp_q2.exit.i.i.i
  br label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.dz, %ma_dr_mp3_L3_ldexp_q2.exit.i.i.i, %bb.dw
  %.032.i.i.i = phi float [ %i.awd, %bb.dw ], [ %i.aws, %bb.dz ], [ 1.000000e+00, %ma_dr_mp3_L3_ldexp_q2.exit.i.i.i ]
  %.0.i.i76.i = phi float [ %i.awf, %bb.dw ], [ 1.000000e+00, %bb.dz ], [ %i.aws, %ma_dr_mp3_L3_ldexp_q2.exit.i.i.i ]
  %i.awv = fmul float %i.avx, %.032.i.i.i         ; 2 uses
  %i.aww = fmul float %i.avx, %.0.i.i76.i         ; 2 uses
  %wide.trip.count.i.i.i.i = zext i8 %i.avj to i64 ; 3 uses
  %min.iters.check647 = icmp ult i8 %i.avj, 8
  br i1 %min.iters.check647, label %.lr.ph.i.i.i77.i.preheader, label %vector.ph648

vector.ph648:                                     ; preds = %.lr.ph.preheader.i.i.i.i
  %n.vec649 = and i64 %wide.trip.count.i.i.i.i, 248 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.awv, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert650 = insertelement <4 x float> poison, float %i.aww, i64 0
  %broadcast.splat651 = shufflevector <4 x float> %broadcast.splatinsert650, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body652

vector.body652:                                   ; preds = %vector.body652, %vector.ph648
  %index653 = phi i64 [ 0, %vector.ph648 ], [ %index.next656, %vector.body652 ] ; 2 uses
  %i.awx = getelementptr inbounds nuw [4 x i8], ptr %.03449.i.i.i, i64 %index653 ; 5 uses
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awx, i64 16 ; 2 uses
  %wide.load654 = load <4 x float>, ptr %i.awx, align 4, !tbaa !349 ; 2 uses
  %wide.load655 = load <4 x float>, ptr %i.awy, align 4, !tbaa !349 ; 2 uses
  %i.awz = fmul <4 x float> %broadcast.splat651, %wide.load654
  %i.axa = fmul <4 x float> %broadcast.splat651, %wide.load655
  %i.axb = getelementptr inbounds nuw i8, ptr %i.awx, i64 2304
  %i.axc = getelementptr inbounds nuw i8, ptr %i.awx, i64 2320
  store <4 x float> %i.awz, ptr %i.axb, align 4, !tbaa !349
  store <4 x float> %i.axa, ptr %i.axc, align 4, !tbaa !349
  %i.axd = fmul <4 x float> %broadcast.splat, %wide.load654
  %i.axe = fmul <4 x float> %broadcast.splat, %wide.load655
  store <4 x float> %i.axd, ptr %i.awx, align 4, !tbaa !349
  store <4 x float> %i.axe, ptr %i.awy, align 4, !tbaa !349
  %index.next656 = add nuw i64 %index653, 8       ; 2 uses
  %i.axf = icmp eq i64 %index.next656, %n.vec649
  br i1 %i.axf, label %middle.block657, label %vector.body652, !llvm.loop !3001

middle.block657:                                  ; preds = %vector.body652
  %cmp.n658 = icmp eq i64 %n.vec649, %wide.trip.count.i.i.i.i
  br i1 %cmp.n658, label %ma_dr_mp3_L3_intensity_stereo_band.exit.i.i.i, label %.lr.ph.i.i.i77.i.preheader

.lr.ph.i.i.i77.i.preheader:                       ; preds = %.lr.ph.preheader.i.i.i.i, %middle.block657
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %n.vec649, %middle.block657 ]
  br label %.lr.ph.i.i.i77.i

.lr.ph.i.i.i77.i:                                 ; preds = %.lr.ph.i.i.i77.i.preheader, %.lr.ph.i.i.i77.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i77.i ], [ %indvars.iv.i.i.i.i.ph, %.lr.ph.i.i.i77.i.preheader ] ; 2 uses
  %i.axg = getelementptr inbounds nuw [4 x i8], ptr %.03449.i.i.i, i64 %indvars.iv.i.i.i.i ; 3 uses
  %i.axh = load float, ptr %i.axg, align 4, !tbaa !349 ; 2 uses
  %i.axi = fmul float %i.aww, %i.axh
  %i.axj = getelementptr inbounds nuw i8, ptr %i.axg, i64 2304
  store float %i.axi, ptr %i.axj, align 4, !tbaa !349
  %i.axk = fmul float %i.awv, %i.axh
  store float %i.axk, ptr %i.axg, align 4, !tbaa !349
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %ma_dr_mp3_L3_intensity_stereo_band.exit.i.i.i, label %.lr.ph.i.i.i77.i, !llvm.loop !3002

bb.ea:                                            ; preds = %.lr.ph.i35.i.i
  br i1 %.not38.i.i.i, label %ma_dr_mp3_L3_intensity_stereo_band.exit.i.i.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.axl = zext i8 %i.avj to i32                  ; 2 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %.03449.i.i.i, i64 2304 ; 3 uses
  %i.axn = icmp ugt i8 %i.avj, 3
  br i1 %i.axn, label %.lr.ph.preheader.i43.i.i.i, label %._crit_edge.i.i.i75.i

.lr.ph.preheader.i43.i.i.i:                       ; preds = %bb.eb
  %i.axo = add nsw i32 %i.axl, -3
  %i.axp = zext nneg i32 %i.axo to i64
  br label %.lr.ph.i44.i.i.i

.lr.ph.i44.i.i.i:                                 ; preds = %.lr.ph.i44.i.i.i, %.lr.ph.preheader.i43.i.i.i
  %indvars.iv.i45.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i43.i.i.i ], [ %indvars.iv.next.i46.i.i.i, %.lr.ph.i44.i.i.i ] ; 3 uses
  %i.axq = getelementptr inbounds nuw [4 x i8], ptr %.03449.i.i.i, i64 %indvars.iv.i45.i.i.i ; 2 uses
  %i.axr = load <4 x float>, ptr %i.axq, align 1, !tbaa !119 ; 2 uses
  %i.axs = getelementptr inbounds nuw [4 x i8], ptr %i.axm, i64 %indvars.iv.i45.i.i.i ; 2 uses
  %i.axt = load <4 x float>, ptr %i.axs, align 1, !tbaa !119 ; 2 uses
  %i.axu = fadd <4 x float> %i.axr, %i.axt
  store <4 x float> %i.axu, ptr %i.axq, align 1, !tbaa !119
  %i.axv = fsub <4 x float> %i.axr, %i.axt
  store <4 x float> %i.axv, ptr %i.axs, align 1, !tbaa !119
  %indvars.iv.next.i46.i.i.i = add nuw nsw i64 %indvars.iv.i45.i.i.i, 4 ; 3 uses
  %i.axw = icmp samesign ult i64 %indvars.iv.next.i46.i.i.i, %i.axp
  br i1 %i.axw, label %.lr.ph.i44.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !3003

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i44.i.i.i
  %i.axx = trunc nuw nsw i64 %indvars.iv.next.i46.i.i.i to i32
  br label %._crit_edge.i.i.i75.i

._crit_edge.i.i.i75.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.eb
  %.0.lcssa.i.i.i.i = phi i32 [ 0, %bb.eb ], [ %i.axx, %._crit_edge.loopexit.i.i.i.i ] ; 2 uses
  %.not672 = icmp samesign ult i32 %.0.lcssa.i.i.i.i, %i.axl
  br i1 %.not672, label %.lr.ph35.preheader.i.i.i.i, label %ma_dr_mp3_L3_intensity_stereo_band.exit.i.i.i

.lr.ph35.preheader.i.i.i.i:                       ; preds = %._crit_edge.i.i.i75.i
  %i.axy = zext i32 %.0.lcssa.i.i.i.i to i64      ; 4 uses
  %wide.trip.count.i41.i.i.i = zext i8 %i.avj to i64 ; 2 uses
  %i.axz = sub nsw i64 %wide.trip.count.i41.i.i.i, %i.axy ; 3 uses
  %min.iters.check661 = icmp ult i64 %i.axz, 4
  br i1 %min.iters.check661, label %.lr.ph35.i.i.i.i.preheader, label %vector.ph662

vector.ph662:                                     ; preds = %.lr.ph35.preheader.i.i.i.i
  %n.vec663 = and i64 %i.axz, -4                  ; 3 uses
  %i.aya = add nsw i64 %n.vec663, %i.axy
  br label %vector.body664

vector.body664:                                   ; preds = %vector.body664, %vector.ph662
  %index665 = phi i64 [ 0, %vector.ph662 ], [ %index.next668, %vector.body664 ] ; 2 uses
  %i.ayb = add nuw i64 %index665, %i.axy          ; 2 uses
  %i.ayc = getelementptr inbounds nuw [4 x i8], ptr %.03449.i.i.i, i64 %i.ayb ; 2 uses
  %wide.load666 = load <4 x float>, ptr %i.ayc, align 4, !tbaa !349 ; 2 uses
  %i.ayd = getelementptr inbounds nuw [4 x i8], ptr %i.axm, i64 %i.ayb ; 2 uses
  %wide.load667 = load <4 x float>, ptr %i.ayd, align 4, !tbaa !349 ; 2 uses
  %i.aye = fadd <4 x float> %wide.load666, %wide.load667
  store <4 x float> %i.aye, ptr %i.ayc, align 4, !tbaa !349
  %i.ayf = fsub <4 x float> %wide.load666, %wide.load667
  store <4 x float> %i.ayf, ptr %i.ayd, align 4, !tbaa !349
  %index.next668 = add nuw i64 %index665, 4       ; 2 uses
  %i.ayg = icmp eq i64 %index.next668, %n.vec663
  br i1 %i.ayg, label %middle.block669, label %vector.body664, !llvm.loop !3004

middle.block669:                                  ; preds = %vector.body664
  %cmp.n670 = icmp eq i64 %i.axz, %n.vec663
  br i1 %cmp.n670, label %ma_dr_mp3_L3_intensity_stereo_band.exit.i.i.i, label %.lr.ph35.i.i.i.i.preheader

.lr.ph35.i.i.i.i.preheader:                       ; preds = %.lr.ph35.preheader.i.i.i.i, %middle.block669
  %indvars.iv37.i.i.i.i.ph = phi i64 [ %i.axy, %.lr.ph35.preheader.i.i.i.i ], [ %i.aya, %middle.block669 ]
  br label %.lr.ph35.i.i.i.i

.lr.ph35.i.i.i.i:                                 ; preds = %.lr.ph35.i.i.i.i.preheader, %.lr.ph35.i.i.i.i
  %indvars.iv37.i.i.i.i = phi i64 [ %indvars.iv.next38.i.i.i.i, %.lr.ph35.i.i.i.i ], [ %indvars.iv37.i.i.i.i.ph, %.lr.ph35.i.i.i.i.preheader ] ; 3 uses
  %i.ayh = getelementptr inbounds nuw [4 x i8], ptr %.03449.i.i.i, i64 %indvars.iv37.i.i.i.i ; 2 uses
  %i.ayi = load float, ptr %i.ayh, align 4, !tbaa !349 ; 2 uses
  %i.ayj = getelementptr inbounds nuw [4 x i8], ptr %i.axm, i64 %indvars.iv37.i.i.i.i ; 2 uses
  %i.ayk = load float, ptr %i.ayj, align 4, !tbaa !349 ; 2 uses
  %i.ayl = fadd float %i.ayi, %i.ayk
  store float %i.ayl, ptr %i.ayh, align 4, !tbaa !349
  %i.aym = fsub float %i.ayi, %i.ayk
  store float %i.aym, ptr %i.ayj, align 4, !tbaa !349
  %indvars.iv.next38.i.i.i.i = add nuw nsw i64 %indvars.iv37.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i42.i.i.i = icmp eq i64 %indvars.iv.next38.i.i.i.i, %wide.trip.count.i41.i.i.i
  br i1 %exitcond.not.i42.i.i.i, label %ma_dr_mp3_L3_intensity_stereo_band.exit.i.i.i, label %.lr.ph35.i.i.i.i, !llvm.loop !3005

ma_dr_mp3_L3_intensity_stereo_band.exit.i.i.i:    ; preds = %.lr.ph35.i.i.i.i, %.lr.ph.i.i.i77.i, %middle.block669, %middle.block657, %._crit_edge.i.i.i75.i, %bb.ea
  %i.ayn = load i8, ptr %i.avk, align 1, !tbaa !119
  %i.ayo = zext i8 %i.ayn to i64
  %i.ayp = getelementptr inbounds nuw [4 x i8], ptr %.03449.i.i.i, i64 %i.ayo
  %i.ayq = add i32 %.03350.i.i.i, 1               ; 2 uses
  %i.ayr = zext i32 %i.ayq to i64                 ; 2 uses
  %i.ays = getelementptr inbounds nuw i8, ptr %i.ava, i64 %i.ayr ; 2 uses
  %i.ayt = load i8, ptr %i.ays, align 1, !tbaa !119 ; 2 uses
  %.not36.i.i.i = icmp eq i8 %i.ayt, 0
  br i1 %.not36.i.i.i, label %ma_dr_mp3_L3_intensity_stereo.exit.i, label %.lr.ph.i35.i.i, !llvm.loop !3006

ma_dr_mp3_L3_intensity_stereo.exit.i:             ; preds = %ma_dr_mp3_L3_intensity_stereo_band.exit.i.i.i, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %ma_dr_mp3_L3_midside_stereo.exit.i

bb.ec:                                            ; preds = %._crit_edge.i146
  %i.ayu = and i32 %i.asm, 224
  %i.ayv = icmp eq i32 %i.ayu, 96
  br i1 %i.ayv, label %.lr.ph.i80.i, label %ma_dr_mp3_L3_midside_stereo.exit.i

.lr.ph.i80.i:                                     ; preds = %bb.ec, %.lr.ph.i80.i
  %indvars.iv.i81.i = phi i64 [ %indvars.iv.next.i82.i.1, %.lr.ph.i80.i ], [ 0, %bb.ec ] ; 4 uses
  %i.ayw = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %indvars.iv.i81.i ; 2 uses
  %i.ayx = load <4 x float>, ptr %i.ayw, align 1, !tbaa !119 ; 2 uses
  %i.ayy = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %indvars.iv.i81.i ; 2 uses
  %i.ayz = load <4 x float>, ptr %i.ayy, align 1, !tbaa !119 ; 2 uses
  %i.aza = fadd <4 x float> %i.ayx, %i.ayz
  store <4 x float> %i.aza, ptr %i.ayw, align 1, !tbaa !119
  %i.azb = fsub <4 x float> %i.ayx, %i.ayz
  store <4 x float> %i.azb, ptr %i.ayy, align 1, !tbaa !119
  %indvars.iv.next.i82.i = or disjoint i64 %indvars.iv.i81.i, 4 ; 3 uses
  %i.azc = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %indvars.iv.next.i82.i ; 2 uses
  %i.azd = load <4 x float>, ptr %i.azc, align 1, !tbaa !119 ; 2 uses
  %i.aze = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %indvars.iv.next.i82.i ; 2 uses
  %i.azf = load <4 x float>, ptr %i.aze, align 1, !tbaa !119 ; 2 uses
  %i.azg = fadd <4 x float> %i.azd, %i.azf
  store <4 x float> %i.azg, ptr %i.azc, align 1, !tbaa !119
  %i.azh = fsub <4 x float> %i.azd, %i.azf
  store <4 x float> %i.azh, ptr %i.aze, align 1, !tbaa !119
  %indvars.iv.next.i82.i.1 = add nuw nsw i64 %indvars.iv.i81.i, 8
  %i.azi = icmp samesign ult i64 %indvars.iv.next.i82.i, 569
  br i1 %i.azi, label %.lr.ph.i80.i, label %ma_dr_mp3_L3_midside_stereo.exit.i, !llvm.loop !3003

ma_dr_mp3_L3_midside_stereo.exit.i:               ; preds = %.lr.ph.i80.i, %bb.ec, %ma_dr_mp3_L3_intensity_stereo.exit.i
  br i1 %i.ol, label %.lr.ph152.i, label %ma_dr_mp3_L3_decode.exit

.lr.ph152.i:                                      ; preds = %ma_dr_mp3_L3_midside_stereo.exit.i
  %wide.trip.count220.i = zext nneg i32 %i.oh to i64
  br label %bb.ed

bb.ed:                                            ; preds = %ma_dr_mp3_L3_change_sign.exit.i, %.lr.ph152.i
  %indvars.iv217.i = phi i64 [ 0, %.lr.ph152.i ], [ %indvars.iv.next218.i, %ma_dr_mp3_L3_change_sign.exit.i ] ; 6 uses
  %.054151.i = phi ptr [ %i.ok, %.lr.ph152.i ], [ %i.bkw, %ma_dr_mp3_L3_change_sign.exit.i ] ; 7 uses
  %i.azj = getelementptr inbounds nuw i8, ptr %.054151.i, i64 16
  %i.azk = load i8, ptr %i.azj, align 8, !tbaa !1132
  %.not57.i = icmp eq i8 %i.azk, 0                ; 3 uses
  %i.azl = select i1 %.not57.i, i32 0, i32 2
  %i.azm = load i8, ptr %i.oa, align 2, !tbaa !119
  %i.azn = lshr i8 %i.azm, 2
  %i.azo = and i8 %i.azn, 3
  %i.azp = zext nneg i8 %i.azo to i32
  %i.azq = load i8, ptr %i.ns, align 1, !tbaa !119
  %i.azr = zext i8 %i.azq to i32                  ; 2 uses
  %i.azs = lshr i32 %i.azr, 3
  %i.azt = and i32 %i.azs, 1
  %i.azu = lshr i32 %i.azr, 4
  %i.azv = and i32 %i.azu, 1
  %i.azw = add nuw nsw i32 %i.azt, %i.azv
  %i.azx = mul nuw nsw i32 %i.azw, 3
  %i.azy = add nuw nsw i32 %i.azx, %i.azp
  %i.azz = icmp eq i32 %i.azy, 2
  %i.baa = zext i1 %i.azz to i32
  %i.bab = shl nuw nsw i32 %i.azl, %i.baa         ; 7 uses
  %i.bac = getelementptr inbounds nuw i8, ptr %.054151.i, i64 18
  %i.bad = load i8, ptr %i.bac, align 2, !tbaa !1122
  %.not58.i = icmp eq i8 %i.bad, 0
  br i1 %.not58.i, label %.thread.i148, label %bb.ee

.thread.i148:                                     ; preds = %bb.ed
  %i.bae = getelementptr inbounds nuw [2304 x i8], ptr %i.no, i64 %indvars.iv217.i
  br label %.preheader.i90.preheader.i

bb.ee:                                            ; preds = %bb.ed
  %i.baf = add nsw i32 %i.bab, -1
  %i.bag = getelementptr inbounds nuw [2304 x i8], ptr %i.no, i64 %indvars.iv217.i ; 4 uses
  %i.bah = mul nuw nsw i32 %i.bab, 18
  %i.bai = zext nneg i32 %i.bah to i64
  %i.baj = getelementptr inbounds nuw [4 x i8], ptr %i.bag, i64 %i.bai ; 2 uses
  %i.bak = load ptr, ptr %.054151.i, align 8, !tbaa !1130
  %i.bal = getelementptr inbounds nuw i8, ptr %.054151.i, i64 17
  %i.bam = load i8, ptr %i.bal, align 1, !tbaa !1123
  %i.ban = zext i8 %i.bam to i64
  %i.bao = getelementptr inbounds nuw i8, ptr %i.bak, i64 %i.ban ; 2 uses
  %i.bap = load i8, ptr %i.bao, align 1, !tbaa !119 ; 2 uses
  %.not30.i.i = icmp eq i8 %i.bap, 0
  br i1 %.not30.i.i, label %bb.eh, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ee, %bb.eg
  %i.baq = phi i8 [ %i.bbz, %bb.eg ], [ %i.bap, %bb.ee ] ; 4 uses
  %.033.i.i = phi ptr [ %.lcssa726, %bb.eg ], [ %i.ob, %bb.ee ] ; 2 uses
  %.02232.i.i = phi ptr [ %i.bby, %bb.eg ], [ %i.baj, %bb.ee ] ; 2 uses
  %.02531.i.i = phi ptr [ %i.bbx, %bb.eg ], [ %i.bao, %bb.ee ]
  %i.bar = zext i8 %i.baq to i32                  ; 3 uses
  %i.bas = zext i8 %i.baq to i64                  ; 3 uses
  %i.bat = shl nuw nsw i32 %i.bar, 1
  %i.bau = zext nneg i32 %i.bat to i64            ; 4 uses
  %xtraiter771 = and i32 %i.bar, 1
  %i.bav = icmp eq i8 %i.baq, 1
  br i1 %i.bav, label %.epil.preheader770, label %.preheader.i.i.new

.preheader.i.i.new:                               ; preds = %.preheader.i.i
  %unroll_iter776 = and i32 %i.bar, 254
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ef, %.preheader.i.i.new
  %.129.i.i = phi ptr [ %.033.i.i, %.preheader.i.i.new ], [ %i.bbm, %bb.ef ] ; 7 uses
  %.12328.i.i = phi ptr [ %.02232.i.i, %.preheader.i.i.new ], [ %i.bbn, %bb.ef ] ; 5 uses
  %niter777 = phi i32 [ 0, %.preheader.i.i.new ], [ %niter777.next.1, %bb.ef ]
  %i.baw = load float, ptr %.12328.i.i, align 4, !tbaa !349
  %i.bax = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 4
  store float %i.baw, ptr %.129.i.i, align 4, !tbaa !349
  %i.bay = getelementptr inbounds nuw [4 x i8], ptr %.12328.i.i, i64 %i.bas
  %i.baz = load float, ptr %i.bay, align 4, !tbaa !349
  %i.bba = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 8
  store float %i.baz, ptr %i.bax, align 4, !tbaa !349
  %i.bbb = getelementptr inbounds nuw [4 x i8], ptr %.12328.i.i, i64 %i.bau
  %i.bbc = load float, ptr %i.bbb, align 4, !tbaa !349
  %i.bbd = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 12
  store float %i.bbc, ptr %i.bba, align 4, !tbaa !349
  %i.bbe = getelementptr inbounds nuw i8, ptr %.12328.i.i, i64 4 ; 3 uses
  %i.bbf = load float, ptr %i.bbe, align 4, !tbaa !349
  %i.bbg = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 16
  store float %i.bbf, ptr %i.bbd, align 4, !tbaa !349
  %i.bbh = getelementptr inbounds nuw [4 x i8], ptr %i.bbe, i64 %i.bas
  %i.bbi = load float, ptr %i.bbh, align 4, !tbaa !349
  %i.bbj = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 20
  store float %i.bbi, ptr %i.bbg, align 4, !tbaa !349
  %i.bbk = getelementptr inbounds nuw [4 x i8], ptr %i.bbe, i64 %i.bau
  %i.bbl = load float, ptr %i.bbk, align 4, !tbaa !349
  %i.bbm = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 24 ; 3 uses
  store float %i.bbl, ptr %i.bbj, align 4, !tbaa !349
  %i.bbn = getelementptr inbounds nuw i8, ptr %.12328.i.i, i64 8 ; 3 uses
  %niter777.next.1 = add i32 %niter777, 2         ; 2 uses
  %niter777.ncmp.1 = icmp eq i32 %niter777.next.1, %unroll_iter776
  br i1 %niter777.ncmp.1, label %.unr-lcssa, label %bb.ef, !llvm.loop !3007

.unr-lcssa:                                       ; preds = %bb.ef
  %lcmp.mod772.not = icmp eq i32 %xtraiter771, 0
  br i1 %lcmp.mod772.not, label %bb.eg, label %.epil.preheader770

.epil.preheader770:                               ; preds = %.unr-lcssa, %.preheader.i.i
  %.129.i.i.epil.init = phi ptr [ %.033.i.i, %.preheader.i.i ], [ %i.bbm, %.unr-lcssa ] ; 4 uses
  %.12328.i.i.epil.init = phi ptr [ %.02232.i.i, %.preheader.i.i ], [ %i.bbn, %.unr-lcssa ] ; 4 uses
end_hunk_4
begin_hunk_5_@ma_dr_mp3_init_internal:bb.a
  store i8 0, ptr %i.h, align 8, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #55
  %.not300 = icmp eq i32 %.0248, -1
  br i1 %.not300, label %bb.cd, label %bb.cc

bb.bz:                                            ; preds = %.critedge304
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 32336
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !782 ; 2 uses
  %i.ja = icmp eq ptr %i.iz, null
  br i1 %i.ja, label %ma_dr_mp3__free_from_callbacks.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jb = load ptr, ptr %.sroa.7.0..sroa_idx364367, align 8, !tbaa !132 ; 2 uses
  %.not.i320 = icmp eq ptr %i.jb, null
  br i1 %.not.i320, label %ma_dr_mp3__free_from_callbacks.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jc = load ptr, ptr %i.n, align 8, !tbaa !126
  call void %i.jb(ptr noundef nonnull %i.iz, ptr noundef %i.jc) #55, !inline_history !67
  br label %ma_dr_mp3__free_from_callbacks.exit

bb.cc:                                            ; preds = %bb.by
  %i.jd = mul i32 %.0248, %i.fp
  %i.je = zext i32 %i.jd to i64
  store i64 %i.je, ptr %i.x, align 8, !tbaa !771
  br label %bb.cd

bb.cd:                                            ; preds = %.thread334, %bb.cc, %bb.by
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 23008
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 22928
  %i.jh = load <2 x i32>, ptr %i.jf, align 8, !tbaa !118
  store <2 x i32> %i.jh, ptr %i.jg, align 8, !tbaa !118
  br label %ma_dr_mp3__free_from_callbacks.exit

ma_dr_mp3__free_from_callbacks.exit:              ; preds = %bb.b, %bb.cb, %bb.ca, %bb.bz, %bb.bc, %bb.ae, %ma_dr_mp3_copy_allocation_callbacks_or_defaults.exit, %bb.cd
  %.9 = phi i32 [ 0, %bb.ae ], [ 1, %bb.cd ], [ 0, %ma_dr_mp3_copy_allocation_callbacks_or_defaults.exit ], [ 0, %bb.bc ], [ 0, %bb.b ], [ 0, %bb.bz ], [ 0, %bb.ca ], [ 0, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #55
  ret i32 %.9
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ma_dr_mp3_init_memory_with_metadata(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(address_is_null) %5) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32376) %0, i8 0, i64 32376, i1 false)
  %i.b = icmp eq ptr %1, null
  %i.c = icmp eq i64 %2, 0
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32352
  store ptr %1, ptr %i.d, align 8, !tbaa !772
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32360 ; 2 uses
  store i64 %2, ptr %i.e, align 8, !tbaa !773
  %i.f = tail call fastcc i32 @ma_dr_mp3_init_internal(ptr noundef %0, ptr noundef nonnull @ma_dr_mp3__on_read_memory, ptr noundef nonnull @ma_dr_mp3__on_seek_memory, ptr noundef nonnull @ma_dr_mp3__on_tell_memory, ptr noundef %3, ptr noundef nonnull %0, ptr noundef %4, ptr noundef %5)
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32256
  %i.i = load i64, ptr %i.h, align 8, !tbaa !767  ; 2 uses
  %i.j = icmp ult i64 %i.i, 4294967296
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 %i.i, ptr %i.e, align 8, !tbaa !773
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32264
  %i.l = load i64, ptr %i.k, align 8, !tbaa !768
  %i.m = icmp ult i64 %i.l, 4294967296
  %. = zext i1 %i.m to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ %., %bb.f ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i64 @ma_dr_mp3__on_read_memory(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) #46 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32360
  %i.b = load i64, ptr %i.a, align 8, !tbaa !773
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32368 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1134 ; 2 uses
  %i.e = sub i64 %i.b, %i.d
  %spec.select = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.e) ; 4 uses
  %.not = icmp eq i64 %spec.select, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32352
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !772
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.h, i64 %spec.select, i1 false)
  %i.i = load i64, ptr %i.c, align 8, !tbaa !1134
  %i.j = add i64 %i.i, %spec.select
  store i64 %i.j, ptr %i.c, align 8, !tbaa !1134
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i64 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 2) i32 @ma_dr_mp3__on_seek_memory(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) #14 {
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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !154
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.b, %.sink.split ]
  %i.c = sext i32 %1 to i64
  %i.d = add nsw i64 %.0, %i.c                    ; 3 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32360
  %i.g = load i64, ptr %i.f, align 8, !tbaa !773
  %i.h = icmp ugt i64 %i.d, %i.g
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32368
  store i64 %i.d, ptr %i.i, align 8, !tbaa !1134
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.a, %bb.e
  %.013 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %bb.e ], [ 0, %bb.d ]
  ret i32 %.013
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @ma_dr_mp3__on_tell_memory(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32368
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1134
  store i64 %i.b, ptr %1, align 8, !tbaa !164
  ret i32 1
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ma_dr_mp3_init_file_with_metadata(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_fopen.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32376) %0, i8 0, i64 32376, i1 false)
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %ma_fopen.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias ptr @fopen(ptr noundef nonnull readonly %1, ptr noundef nonnull @.str.176) ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %ma_fopen.exit.thread, label %ma_fopen.exit

ma_fopen.exit:                                    ; preds = %bb.c
  %i.e = tail call fastcc i32 @ma_dr_mp3_init_internal(ptr noundef %0, ptr noundef nonnull @ma_dr_mp3__on_read_stdio, ptr noundef nonnull @ma_dr_mp3__on_seek_stdio, ptr noundef nonnull @ma_dr_mp3__on_tell_stdio, ptr noundef %2, ptr noundef nonnull %i.c, ptr noundef %3, ptr noundef %4)
  %.not11.not = icmp eq i32 %i.e, 0
  br i1 %.not11.not, label %bb.d, label %ma_fopen.exit.thread

bb.d:                                             ; preds = %ma_fopen.exit
  %i.f = tail call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  br label %ma_fopen.exit.thread

ma_fopen.exit.thread:                             ; preds = %bb.c, %bb.b, %ma_fopen.exit, %bb.a, %bb.d
  %.0 = phi i32 [ 1, %ma_fopen.exit ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i64 @ma_dr_mp3__on_read_stdio(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) #9 {
bb.a:
  %i.a = tail call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef %0)
  ret i64 %i.a
}

; Function Attrs: nofree nounwind uwtable
define internal range(i32 0, 2) i32 @ma_dr_mp3__on_seek_stdio(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) #9 {
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
define internal noundef i32 @ma_dr_mp3__on_tell_stdio(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #9 {
bb.a:
  %i.a = tail call i64 @ftell(ptr noundef %0)
  store i64 %i.a, ptr %1, align 8, !tbaa !164
  ret i32 1
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ma_dr_mp3_init_file_with_metadata_w(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32376) %0, i8 0, i64 32376, i1 false)
  %i.c = call i32 @ma_wfopen(ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef nonnull @.str.177, ptr noundef %4)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !129  ; 2 uses
  %i.e = call fastcc i32 @ma_dr_mp3_init_internal(ptr noundef %0, ptr noundef nonnull @ma_dr_mp3__on_read_stdio, ptr noundef nonnull @ma_dr_mp3__on_seek_stdio, ptr noundef nonnull @ma_dr_mp3__on_tell_stdio, ptr noundef %2, ptr noundef %i.d, ptr noundef %3, ptr noundef %4)
  %.not12.not = icmp eq i32 %i.e, 0
  br i1 %.not12.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = call i32 @fclose(ptr noundef %i.d)       ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.d ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ma_dr_mp3_read_pcm_frames_raw(ptr noundef nonnull %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32240 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32284
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 23020 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 23016 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32296 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32288 ; 2 uses
  %.not82 = icmp eq ptr %2, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 22928
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 23024 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 23008
  br label %bb.b

bb.b:                                             ; preds = %bb.n, %bb.a
  %.061 = phi i64 [ 0, %bb.a ], [ %i.ba, %bb.n ]  ; 4 uses
  %.0 = phi i64 [ %1, %bb.a ], [ %i.bb, %bb.n ]   ; 3 uses
  %.not = icmp eq i64 %.0, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.a, align 8, !tbaa !791  ; 4 uses
  %i.k = load i32, ptr %i.b, align 4, !tbaa !769
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = icmp ult i64 %i.j, %i.l
  %.pre = load i32, ptr %i.c, align 4, !tbaa !781 ; 3 uses
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = zext i32 %.pre to i64
  %i.o = sub nuw nsw i64 %i.l, %i.j
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.n) ; 2 uses
  %i.q = trunc nuw i64 %i.p to i32                ; 2 uses
  %i.r = add nuw nsw i64 %i.p, %i.j               ; 2 uses
  store i64 %i.r, ptr %i.a, align 8, !tbaa !791
  %i.s = load i32, ptr %i.d, align 8, !tbaa !790
  %i.t = add i32 %i.s, %i.q
  store i32 %i.t, ptr %i.d, align 8, !tbaa !790
  %i.u = sub i32 %.pre, %i.q                      ; 2 uses
  store i32 %i.u, ptr %i.c, align 4, !tbaa !781
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = phi i64 [ %i.r, %bb.d ], [ %i.j, %bb.c ] ; 3 uses
  %i.w = phi i32 [ %i.u, %bb.d ], [ %.pre, %bb.c ] ; 2 uses
  %i.x = zext i32 %i.w to i64
  %i.y = tail call i64 @llvm.umin.i64(i64 %.0, i64 %i.x) ; 3 uses
  %i.z = load i64, ptr %i.e, align 8, !tbaa !771  ; 3 uses
  %.not81 = icmp eq i64 %i.z, -1
  br i1 %.not81, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load i32, ptr %i.f, align 8, !tbaa !770
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = icmp ugt i64 %i.z, %i.ab
  br i1 %i.ac, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ad = sub nuw i64 %i.z, %i.ab                 ; 2 uses
  %i.ae = icmp ult i64 %i.v, %i.ad
  br i1 %i.ae, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.af = sub nuw i64 %i.ad, %i.v
  %spec.select88 = tail call i64 @llvm.umin.i64(i64 %i.af, i64 %i.y)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.e
  %.165.in = phi i64 [ %spec.select88, %bb.h ], [ %i.y, %bb.f ], [ %i.y, %bb.e ] ; 5 uses
  %.165 = trunc nuw i64 %.165.in to i32           ; 2 uses
  %.pre91 = load i32, ptr %i.d, align 8, !tbaa !790 ; 2 uses
  br i1 %.not82, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = shl i64 %.061, 1
  %i.ah = load i32, ptr %i.g, align 8, !tbaa !787
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = mul i64 %i.ag, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %i.aj
  %i.al = zext i32 %.pre91 to i64
  %i.am = shl nuw nsw i64 %i.al, 1
  %i.an = load i32, ptr %i.i, align 8, !tbaa !1135
  %i.ao = zext i32 %i.an to i64
  %i.ap = mul i64 %i.am, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ap
  %i.ar = shl nuw nsw i64 %.165.in, 1
  %i.as = and i64 %i.ar, 8589934590
  %i.at = mul i64 %i.as, %i.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ak, ptr nonnull align 2 %i.aq, i64 %i.at, i1 false)
  %.pre89 = load i64, ptr %i.a, align 8, !tbaa !791
  %.pre90 = load i32, ptr %i.d, align 8, !tbaa !790
  %.pre92 = load i32, ptr %i.c, align 4, !tbaa !781
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.au = phi i32 [ %.pre92, %bb.j ], [ %i.w, %bb.i ]
  %i.av = phi i32 [ %.pre90, %bb.j ], [ %.pre91, %bb.i ]
  %i.aw = phi i64 [ %.pre89, %bb.j ], [ %i.v, %bb.i ]
  %i.ax = add i64 %i.aw, %.165.in                 ; 2 uses
  store i64 %i.ax, ptr %i.a, align 8, !tbaa !791
  %i.ay = add i32 %i.av, %.165
  store i32 %i.ay, ptr %i.d, align 8, !tbaa !790
  %i.az = sub i32 %i.au, %.165
  store i32 %i.az, ptr %i.c, align 4, !tbaa !781
  %i.ba = add i64 %.165.in, %.061                 ; 4 uses
  %i.bb = sub i64 %.0, %.165.in                   ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = load i64, ptr %i.e, align 8, !tbaa !771 ; 3 uses
  %.not83 = icmp eq i64 %i.bd, -1
  br i1 %.not83, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = load i32, ptr %i.f, align 8, !tbaa !770
  %i.bf = zext i32 %i.be to i64                   ; 2 uses
  %i.bg = icmp ule i64 %i.bd, %i.bf
  %i.bh = sub nuw i64 %i.bd, %i.bf
  %.not84 = icmp ult i64 %i.ax, %i.bh
  %or.cond = select i1 %i.bg, i1 true, i1 %.not84
  br i1 %or.cond, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bi = tail call fastcc range(i32 0, 1153) i32 @ma_dr_mp3_decode_next_frame_ex(ptr noundef nonnull %0, ptr noundef nonnull %i.h, ptr noundef null, ptr noundef null)
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.m, %bb.n, %bb.k, %bb.g, %bb.b
  %.2 = phi i64 [ %.061, %bb.b ], [ %.061, %bb.g ], [ %i.ba, %bb.m ], [ %i.ba, %bb.k ], [ %i.ba, %bb.n ]
  ret i64 %.2
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ma_dr_mp3_get_mp3_and_pcm_frame_count(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_dr_mp3_seek_to_start_of_stream.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 22944 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !762  ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %ma_dr_mp3_seek_to_start_of_stream.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32240 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !791
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32264 ; 2 uses
end_hunk_5
begin_hunk_6_@ma_dr_wav__write_or_count_metadata:bb.a
  br i1 %.not454985, label %.thread1023, label %ma_dr_wav__write_or_count.exit871.thread

ma_dr_wav__write_or_count_u16ne_to_le.exit867.thread: ; preds = %bb.bl
  %.val.i832 = load ptr, ptr %i.bq, align 8, !tbaa !682
  %.val6.i833 = load ptr, ptr %i.br, align 8, !tbaa !676
  %i.ut = call i64 %.val.i832(ptr noundef %.val6.i833, ptr noundef nonnull @.str.559, i64 noundef 4) #55, !inline_history !3211
  %i.uu = add i64 %i.ut, %.121075
  %i.uv = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  %i.uw = getelementptr inbounds nuw i8, ptr %i.tl, i64 28 ; 2 uses
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !119 ; 2 uses
  %.not454 = icmp eq i32 %i.ux, 0
  %i.uy = add i32 %i.ux, 21
  %spec.select473 = select i1 %.not454, i32 20, i32 %i.uy ; 3 uses
  %.val.i836 = load ptr, ptr %i.bq, align 8, !tbaa !682
  %.val4.i837 = load ptr, ptr %i.br, align 8, !tbaa !676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i32 %spec.select473, ptr %i.j, align 4, !tbaa !118
  %i.uz = call i64 %.val.i836(ptr noundef %.val4.i837, ptr noundef nonnull %i.j, i64 noundef 4) #55, !inline_history !3212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.va = add i64 %i.uu, %i.uz
  %i.vb = load i32, ptr %i.uv, align 8, !tbaa !119
  %.val.i840 = load ptr, ptr %i.bq, align 8, !tbaa !682
  %.val4.i841 = load ptr, ptr %i.br, align 8, !tbaa !676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i32 %i.vb, ptr %i.i, align 4, !tbaa !118
  %i.vc = call i64 %.val.i840(ptr noundef %.val4.i841, ptr noundef nonnull %i.i, i64 noundef 4) #55, !inline_history !3212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.vd = add i64 %i.va, %i.vc
  %i.ve = getelementptr inbounds nuw i8, ptr %i.tl, i64 12
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !119
  %.val.i844 = load ptr, ptr %i.bq, align 8, !tbaa !682
  %.val4.i845 = load ptr, ptr %i.br, align 8, !tbaa !676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 %i.vf, ptr %i.h, align 4, !tbaa !118
  %i.vg = call i64 %.val.i844(ptr noundef %.val4.i845, ptr noundef nonnull %i.h, i64 noundef 4) #55, !inline_history !3212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.vh = add i64 %i.vd, %i.vg
  %i.vi = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  %.val.i848 = load ptr, ptr %i.bq, align 8, !tbaa !682
  %.val6.i849 = load ptr, ptr %i.br, align 8, !tbaa !676
  %i.vj = call i64 %.val.i848(ptr noundef %.val6.i849, ptr noundef nonnull %i.vi, i64 noundef 4) #55, !inline_history !3211
  %i.vk = add i64 %i.vh, %i.vj
  %i.vl = getelementptr inbounds nuw i8, ptr %i.tl, i64 20
  %i.vm = load i16, ptr %i.vl, align 4, !tbaa !119
  %.val.i852 = load ptr, ptr %i.bq, align 8, !tbaa !682
  %.val4.i853 = load ptr, ptr %i.br, align 8, !tbaa !676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i16 %i.vm, ptr %i.g, align 2, !tbaa !122
  %i.vn = call i64 %.val.i852(ptr noundef %.val4.i853, ptr noundef nonnull %i.g, i64 noundef 2) #55, !inline_history !3215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.vo = add i64 %i.vk, %i.vn
  %i.vp = getelementptr inbounds nuw i8, ptr %i.tl, i64 22
  %i.vq = load i16, ptr %i.vp, align 2, !tbaa !119
  %.val.i856 = load ptr, ptr %i.bq, align 8, !tbaa !682
  %.val4.i857 = load ptr, ptr %i.br, align 8, !tbaa !676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i16 %i.vq, ptr %i.f, align 2, !tbaa !122
  %i.vr = call i64 %.val.i856(ptr noundef %.val4.i857, ptr noundef nonnull %i.f, i64 noundef 2) #55, !inline_history !3215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.vs = add i64 %i.vo, %i.vr
  %i.vt = getelementptr inbounds nuw i8, ptr %i.tl, i64 24
  %i.vu = load i16, ptr %i.vt, align 8, !tbaa !119
  %.val.i860 = load ptr, ptr %i.bq, align 8, !tbaa !682
  %.val4.i861 = load ptr, ptr %i.br, align 8, !tbaa !676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i16 %i.vu, ptr %i.e, align 2, !tbaa !122
  %i.vv = call i64 %.val.i860(ptr noundef %.val4.i861, ptr noundef nonnull %i.e, i64 noundef 2) #55, !inline_history !3215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.vw = add i64 %i.vs, %i.vv
  %i.vx = getelementptr inbounds nuw i8, ptr %i.tl, i64 26
  %i.vy = load i16, ptr %i.vx, align 2, !tbaa !119
  %.val.i864 = load ptr, ptr %i.bq, align 8, !tbaa !682
  %.val4.i865 = load ptr, ptr %i.br, align 8, !tbaa !676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i16 %i.vy, ptr %i.d, align 2, !tbaa !122
  %i.vz = call i64 %.val.i864(ptr noundef %.val4.i865, ptr noundef nonnull %i.d, i64 noundef 2) #55, !inline_history !3215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.wa = add i64 %i.vw, %i.vz                    ; 3 uses
  %i.wb = load i32, ptr %i.uw, align 4, !tbaa !119 ; 2 uses
  %.not4551011 = icmp eq i32 %i.wb, 0
  br i1 %.not4551011, label %.thread1027, label %bb.bm

ma_dr_wav__write_or_count.exit871.thread:         ; preds = %ma_dr_wav__write_or_count_u16ne_to_le.exit867
  %i.wc = add i32 %i.ur, 21
  %i.wd = zext i32 %i.ur to i64
  %i.we = add i64 %i.us, %i.wd
  br label %ma_dr_wav__write_or_count_byte.exit875

bb.bm:                                            ; preds = %ma_dr_wav__write_or_count_u16ne_to_le.exit867.thread
  %i.wf = getelementptr inbounds nuw i8, ptr %i.tl, i64 32
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !119
  %i.wh = zext i32 %i.wb to i64
  %.val.i868 = load ptr, ptr %i.bq, align 8, !tbaa !682
  %.val6.i869 = load ptr, ptr %i.br, align 8, !tbaa !676
  %i.wi = call i64 %.val.i868(ptr noundef %.val6.i869, ptr noundef %i.wg, i64 noundef %i.wh) #55, !inline_history !3211
  %i.wj = add i64 %i.wi, %i.wa
  %.val.i872 = load ptr, ptr %i.bq, align 8, !tbaa !682
  %.val4.i873 = load ptr, ptr %i.br, align 8, !tbaa !676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 0, ptr %i.c, align 1, !tbaa !119
  %i.wk = call i64 %.val.i872(ptr noundef %.val4.i873, ptr noundef nonnull %i.c, i64 noundef 1) #55, !inline_history !3220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %ma_dr_wav__write_or_count_byte.exit875

ma_dr_wav__write_or_count_byte.exit875:           ; preds = %ma_dr_wav__write_or_count.exit871.thread, %bb.bm
  %i.wl = phi i64 [ %i.wj, %bb.bm ], [ %i.we, %ma_dr_wav__write_or_count.exit871.thread ]
  %spec.select473987990993996999100210051008101210161019 = phi i32 [ %spec.select473, %bb.bm ], [ %i.wc, %ma_dr_wav__write_or_count.exit871.thread ]
  %.0.i874 = phi i64 [ %i.wk, %bb.bm ], [ 1, %ma_dr_wav__write_or_count.exit871.thread ]
  %i.wm = add i64 %.0.i874, %i.wl
  br label %bb.bq

bb.bn:                                            ; preds = %.split4
  %i.wn = getelementptr inbounds nuw i8, ptr %i.tl, i64 12
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !119
  %i.wp = icmp eq i32 %i.wo, 3
  br i1 %i.wp, label %bb.bo, label %.thread1023

bb.bo:                                            ; preds = %bb.bn
  %i.wq = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  %i.wr = load i32, ptr %i.wq, align 8, !tbaa !119 ; 4 uses
  br i1 %i.bp, label %ma_dr_wav__write_or_count_u32ne_to_le.exit883.thread, label %bb.bp

ma_dr_wav__write_or_count_u32ne_to_le.exit883.thread: ; preds = %bb.bo
  %i.ws = add i64 %.121075, 8
  %i.wt = zext i32 %i.wr to i64
  br label %ma_dr_wav__write_or_count.exit887

bb.bp:                                            ; preds = %bb.bo
  %i.wu = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  %.val.i876 = load ptr, ptr %i.bq, align 8, !tbaa !682
  %.val6.i877 = load ptr, ptr %i.br, align 8, !tbaa !676
  %i.wv = call i64 %.val.i876(ptr noundef %.val6.i877, ptr noundef nonnull %i.wu, i64 noundef 4) #55, !inline_history !3211
  %i.ww = add i64 %i.wv, %.121075
  %.val.i880 = load ptr, ptr %i.bq, align 8, !tbaa !682
  %.val4.i881 = load ptr, ptr %i.br, align 8, !tbaa !676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.wr, ptr %i.b, align 4, !tbaa !118
  %i.wx = call i64 %.val.i880(ptr noundef %.val4.i881, ptr noundef nonnull %i.b, i64 noundef 4) #55, !inline_history !3212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.wy = add i64 %i.ww, %i.wx
  %i.wz = getelementptr inbounds nuw i8, ptr %i.tl, i64 24
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !119
  %i.xb = zext i32 %i.wr to i64
  %.val.i884 = load ptr, ptr %i.bq, align 8, !tbaa !682
  %.val6.i885 = load ptr, ptr %i.br, align 8, !tbaa !676
  %i.xc = call i64 %.val.i884(ptr noundef %.val6.i885, ptr noundef %i.xa, i64 noundef %i.xb) #55, !inline_history !3211
  br label %ma_dr_wav__write_or_count.exit887

ma_dr_wav__write_or_count.exit887:                ; preds = %ma_dr_wav__write_or_count_u32ne_to_le.exit883.thread, %bb.bp
  %i.xd = phi i64 [ %i.wy, %bb.bp ], [ %i.ws, %ma_dr_wav__write_or_count_u32ne_to_le.exit883.thread ]
  %.0.i886 = phi i64 [ %i.xc, %bb.bp ], [ %i.wt, %ma_dr_wav__write_or_count_u32ne_to_le.exit883.thread ]
  %i.xe = add i64 %.0.i886, %i.xd
  br label %bb.bq

bb.bq:                                            ; preds = %ma_dr_wav__write_or_count.exit887, %ma_dr_wav__write_or_count_byte.exit875, %ma_dr_wav__write_or_count_byte.exit831
  %.13 = phi i64 [ %i.xe, %ma_dr_wav__write_or_count.exit887 ], [ %i.up, %ma_dr_wav__write_or_count_byte.exit831 ], [ %i.wm, %ma_dr_wav__write_or_count_byte.exit875 ] ; 3 uses
  %.1 = phi i32 [ %i.wr, %ma_dr_wav__write_or_count.exit887 ], [ %i.uo, %ma_dr_wav__write_or_count_byte.exit831 ], [ %spec.select473987990993996999100210051008101210161019, %ma_dr_wav__write_or_count_byte.exit875 ]
  %i.xf = and i32 %.1, 1
  %.not457 = icmp eq i32 %i.xf, 0
  br i1 %.not457, label %.thread1023, label %bb.br

.thread1027:                                      ; preds = %ma_dr_wav__write_or_count_u16ne_to_le.exit867.thread
  %i.xg = and i32 %spec.select473, 1
  %.not4571030 = icmp eq i32 %i.xg, 0
  br i1 %.not4571030, label %.thread1023, label %.thread1032

bb.br:                                            ; preds = %bb.bq
  br i1 %i.bp, label %ma_dr_wav__write_or_count_byte.exit891, label %.thread1032

.thread1032:                                      ; preds = %.thread1027, %bb.br
  %.1310311034 = phi i64 [ %.13, %bb.br ], [ %i.wa, %.thread1027 ]
  %.val.i888 = load ptr, ptr %i.bq, align 8, !tbaa !682
  %.val4.i889 = load ptr, ptr %i.br, align 8, !tbaa !676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 0, ptr %i.a, align 1, !tbaa !119
  %i.xh = call i64 %.val.i888(ptr noundef %.val4.i889, ptr noundef nonnull %i.a, i64 noundef 1) #55, !inline_history !3220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %ma_dr_wav__write_or_count_byte.exit891

ma_dr_wav__write_or_count_byte.exit891:           ; preds = %bb.br, %.thread1032
  %.1310311035 = phi i64 [ %.1310311034, %.thread1032 ], [ %.13, %bb.br ]
  %.0.i890 = phi i64 [ %i.xh, %.thread1032 ], [ 1, %bb.br ]
  %i.xi = add i64 %.0.i890, %.1310311035
  br label %.thread1023

.thread1023:                                      ; preds = %ma_dr_wav__write_or_count_u16ne_to_le.exit867, %bb.bh, %bb.bn, %bb.bi, %.split4, %.thread1027, %ma_dr_wav__write_or_count_byte.exit891, %bb.bq
  %.14 = phi i64 [ %i.xi, %ma_dr_wav__write_or_count_byte.exit891 ], [ %.13, %bb.bq ], [ %i.wa, %.thread1027 ], [ %.121075, %.split4 ], [ %.121075, %bb.bi ], [ %.121075, %bb.bn ], [ %.121075, %bb.bh ], [ %i.us, %ma_dr_wav__write_or_count_u16ne_to_le.exit867 ] ; 2 uses
  %indvars.iv.next1113 = add nuw nsw i64 %indvars.iv1112, 1 ; 2 uses
  %exitcond1116.not = icmp eq i64 %indvars.iv.next1113, %wide.trip.count
  br i1 %exitcond1116.not, label %.loopexit, label %bb.bh, !llvm.loop !3225

.loopexit:                                        ; preds = %.thread1023, %.loopexit1043, %bb.a
  %.0441 = phi i64 [ 0, %bb.a ], [ %.11, %.loopexit1043 ], [ %.14, %.thread1023 ]
  ret i64 %.0441
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #33

; Function Attrs: nofree nounwind uwtable
define internal range(i32 0, 2) i32 @ma_dr_wav__on_seek_stdio(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) #9 {
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
define internal noundef i32 @ma_dr_wav__on_tell_stdio(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #9 {
bb.a:
  %i.a = tail call i64 @ftell(ptr noundef %0)
  store i64 %i.a, ptr %1, align 8, !tbaa !164
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ma_dr_wav_init_file_write__internal_FILE(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef range(i32 0, 2) %4, ptr nofree noundef readonly captures(address_is_null) %5) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !840
  switch i32 %i.c, label %bb.c [
    i32 65534, label %.sink.split
    i32 2, label %.sink.split
    i32 17, label %.sink.split
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 0, i64 408, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @ma_dr_wav__on_write_stdio, ptr %i.d, align 8, !tbaa !682
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @ma_dr_wav__on_seek_stdio, ptr %i.e, align 8, !tbaa !674
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.f, align 8, !tbaa !676
  %.not.i.i = icmp eq ptr %5, null
  br i1 %.not.i.i, label %.thread.i, label %ma_dr_wav_copy_allocation_callbacks_or_defaults.exit.i

.thread.i:                                        ; preds = %bb.c
  %.sroa.5.0..sroa_idx55.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @ma_dr_wav__malloc_default, ptr %.sroa.5.0..sroa_idx55.i, align 8, !tbaa !134
  %.sroa.6.0..sroa_idx56.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @ma_dr_wav__realloc_default, ptr %.sroa.6.0..sroa_idx56.i, align 8, !tbaa !134
  %.sroa.7.0..sroa_idx57.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @ma_dr_wav__free_default, ptr %.sroa.7.0..sroa_idx57.i, align 8, !tbaa !134
  br label %bb.e

ma_dr_wav_copy_allocation_callbacks_or_defaults.exit.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.5.0..sroa_idx44.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.6.0..sroa_idx46.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.6.0.copyload47.i = load ptr, ptr %.sroa.6.0..sroa_idx46.i, align 8, !tbaa !134 ; 2 uses
  %.sroa.7.0..sroa_idx48.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.7.0.copyload49.i = load ptr, ptr %.sroa.7.0..sroa_idx48.i, align 8, !tbaa !134 ; 2 uses
  %.sroa.5.0.copyload45.i = load ptr, ptr %.sroa.5.0..sroa_idx44.i, align 8, !tbaa !134
  %i.h = load <2 x ptr>, ptr %5, align 8, !tbaa !134
  store <2 x ptr> %i.h, ptr %i.g, align 8, !tbaa !134
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.6.0.copyload47.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !134
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.7.0.copyload49.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !134
  %i.i = icmp eq ptr %.sroa.7.0.copyload49.i, null
  br i1 %i.i, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %ma_dr_wav_copy_allocation_callbacks_or_defaults.exit.i
  %i.j = icmp eq ptr %.sroa.5.0.copyload45.i, null
  %i.k = icmp eq ptr %.sroa.6.0.copyload47.i, null
  %or.cond58.i = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond58.i, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread.i
  %i.l = load i32, ptr %i.b, align 4, !tbaa !840
  %i.m = trunc i32 %i.l to i16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i16 %i.m, ptr %i.n, align 4, !tbaa !841
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !837  ; 2 uses
  %i.q = trunc i32 %i.p to i16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 78
  store i16 %i.q, ptr %i.r, align 2, !tbaa !695
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !838  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.t, ptr %i.u, align 8, !tbaa !842
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load i32, ptr %i.v, align 4, !tbaa !839  ; 2 uses
  %i.x = mul i32 %i.w, %i.p                       ; 2 uses
  %i.y = mul i32 %i.x, %i.t
  %i.z = lshr i32 %i.y, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !843
  %i.ab = lshr i32 %i.x, 3
  %i.ac = trunc i32 %i.ab to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i16 %i.ac, ptr %i.ad, align 8, !tbaa !696
  %i.ae = trunc i32 %i.w to i16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 90
  store i16 %i.ae, ptr %i.af, align 2, !tbaa !844
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i16 0, ptr %i.ag, align 4, !tbaa !1089
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %4, ptr %i.ah, align 8, !tbaa !685
  %i.ai = tail call fastcc i32 @ma_dr_wav_init_write__internal(ptr noundef nonnull %0, ptr noundef nonnull %2, i64 noundef %3)
  %.not.not16 = icmp eq i32 %i.ai, 0
  br i1 %.not.not16, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %bb.e, %bb.d, %bb.b, %bb.b, %bb.b, %ma_dr_wav_copy_allocation_callbacks_or_defaults.exit.i, %bb.a
  %i.aj = tail call i32 @fclose(ptr noundef %1)   ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e
  %.0 = phi i32 [ 1, %bb.e ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @ma_dr_wav__on_write_memory(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !3227 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1190 ; 4 uses
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
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !1090
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !134  ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !135  ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.c, label %ma_dr_wav__realloc_from_callbacks.exit

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !125  ; 2 uses
  %.not25.i = icmp eq ptr %i.s, null
  br i1 %.not25.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !132
  %.not26.i = icmp eq ptr %i.u, null
  br i1 %.not26.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !126
  %i.w = tail call ptr %i.s(i64 noundef %.035, ptr noundef %i.v) #55, !inline_history !3226 ; 4 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not27.i = icmp eq ptr %i.n, null
  br i1 %.not27.i, label %ma_dr_wav__realloc_from_callbacks.exit.thread44, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %i.n, i64 %i.c, i1 false)
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !132
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !126
  tail call void %i.y(ptr noundef nonnull %i.n, ptr noundef %i.z) #55, !inline_history !3226
  br label %ma_dr_wav__realloc_from_callbacks.exit.thread44

ma_dr_wav__realloc_from_callbacks.exit:           ; preds = %bb.b
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !126
  %i.ab = tail call ptr %i.q(ptr noundef %i.n, i64 noundef %.035, ptr noundef %i.aa) #55, !inline_history !3226 ; 2 uses
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %.critedge, label %ma_dr_wav__realloc_from_callbacks.exit.thread44

ma_dr_wav__realloc_from_callbacks.exit.thread44:  ; preds = %bb.g, %bb.f, %ma_dr_wav__realloc_from_callbacks.exit
  %.1.i47 = phi ptr [ %i.ab, %ma_dr_wav__realloc_from_callbacks.exit ], [ %i.w, %bb.f ], [ %i.w, %bb.g ]
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !1090
  store ptr %.1.i47, ptr %i.ac, align 8, !tbaa !134
  store i64 %.035, ptr %i.b, align 8, !tbaa !3227
  %.pre = load i64, ptr %i.d, align 8, !tbaa !1190
  br label %bb.h

bb.h:                                             ; preds = %ma_dr_wav__realloc_from_callbacks.exit.thread44, %bb.a
  %i.ad = phi i64 [ %.pre, %ma_dr_wav__realloc_from_callbacks.exit.thread44 ], [ %i.e, %bb.a ]
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !1090
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !134
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %1, i64 %2, i1 false)
end_hunk_6
