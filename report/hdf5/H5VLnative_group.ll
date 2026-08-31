Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5VLnative_group?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.H5G_loc_t = type { ptr, ptr }
%struct.H5G_obj_create_t = type { i64, i32, %union.H5G_cache_t }
%union.H5G_cache_t = type { %struct.anon }
%struct.anon = type { i64, i64 }
%struct.H5G_link_iterate_t = type { i32, %union.anon.7 }
%union.anon.7 = type { ptr }

@.str = private unnamed_addr constant [49 x i8] c"/opt-bench/work/hdf5/hdf5/src/H5VLnative_group.c\00", align 1
@__func__.H5VL__native_group_create = private unnamed_addr constant [26 x i8] c"H5VL__native_group_create\00", align 1
@H5E_ARGS_g = external local_unnamed_addr global i64, align 8
@H5E_BADTYPE_g = external local_unnamed_addr global i64, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"not a file or file object\00", align 1
@H5E_SYM_g = external local_unnamed_addr global i64, align 8
@H5E_CANTINIT_g = external local_unnamed_addr global i64, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"unable to create group\00", align 1
@H5E_CANTGET_g = external local_unnamed_addr global i64, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"unable to get object location of group\00", align 1
@H5E_CANTDEC_g = external local_unnamed_addr global i64, align 8
@.str.4 = private unnamed_addr constant [53 x i8] c"unable to decrement refcount on newly created object\00", align 1
@__func__.H5VL__native_group_open = private unnamed_addr constant [24 x i8] c"H5VL__native_group_open\00", align 1
@H5E_CANTOPENOBJ_g = external local_unnamed_addr global i64, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"unable to open group\00", align 1
@__func__.H5VL__native_group_get = private unnamed_addr constant [23 x i8] c"H5VL__native_group_get\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"can't get creation property list for group\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"can't retrieve group info\00", align 1
@H5E_VOL_g = external local_unnamed_addr global i64, align 8
@H5E_UNSUPPORTED_g = external local_unnamed_addr global i64, align 8
@.str.8 = private unnamed_addr constant [28 x i8] c"unknown get info parameters\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"can't get this type of information from group\00", align 1
@__func__.H5VL__native_group_specific = private unnamed_addr constant [28 x i8] c"H5VL__native_group_specific\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"not a group object\00", align 1
@H5E_FILE_g = external local_unnamed_addr global i64, align 8
@H5E_MOUNT_g = external local_unnamed_addr global i64, align 8
@.str.11 = private unnamed_addr constant [21 x i8] c"unable to mount file\00", align 1
@H5E_UNMOUNT_g = external local_unnamed_addr global i64, align 8
@.str.12 = private unnamed_addr constant [23 x i8] c"unable to unmount file\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"H5Oflush isn't supported for parallel\00", align 1
@H5E_CANTFLUSH_g = external local_unnamed_addr global i64, align 8
@.str.14 = private unnamed_addr constant [22 x i8] c"unable to flush group\00", align 1
@H5E_CANTLOAD_g = external local_unnamed_addr global i64, align 8
@.str.15 = private unnamed_addr constant [24 x i8] c"unable to refresh group\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"invalid specific operation\00", align 1
@__func__.H5VL__native_group_optional = private unnamed_addr constant [28 x i8] c"H5VL__native_group_optional\00", align 1
@H5E_BADITER_g = external local_unnamed_addr global i64, align 8
@.str.17 = private unnamed_addr constant [35 x i8] c"error iterating over group's links\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"cannot stat object\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"invalid optional operation\00", align 1
@__func__.H5VL__native_group_close = private unnamed_addr constant [25 x i8] c"H5VL__native_group_close\00", align 1
@H5E_CLOSEERROR_g = external local_unnamed_addr global i64, align 8
@.str.20 = private unnamed_addr constant [18 x i8] c"can't close group\00", align 1

; Function Attrs: nounwind uwtable
define ptr @H5VL__native_group_create(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr nofree noundef readnone captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.H5G_loc_t, align 8          ; 5 uses
  %9 = alloca %struct.H5G_obj_create_t, align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #4
  %i.a = load i32, ptr %1, align 8, !tbaa !8
  %i.b = call i32 @H5G_loc_real(ptr noundef %0, i32 noundef %i.a, ptr noundef nonnull %8) #4
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !10
  %i.e = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !10
  %i.f = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5VL__native_group_create, i32 noundef 83, i64 noundef %i.d, i64 noundef %i.e, ptr noundef nonnull @.str.1) #4 ; 0 uses
  br label %.thread28

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %2, null
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #4
  store i64 %4, ptr %9, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.h, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.j = load ptr, ptr %8, align 8, !tbaa !15
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.l = call ptr @H5G__create(ptr noundef %i.k, ptr noundef nonnull %9) #4 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.n = load i64, ptr @H5E_SYM_g, align 8, !tbaa !10
  %i.o = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !10
  %i.p = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5VL__native_group_create, i32 noundef 96, i64 noundef %i.n, i64 noundef %i.o, ptr noundef nonnull @.str.2) #4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #4
  br label %.thread28

bb.f:                                             ; preds = %bb.c
  %i.q = call ptr @H5G__create_named(ptr noundef nonnull %8, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4) #4 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.g, label %.thread28

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr @H5E_SYM_g, align 8, !tbaa !10
  %i.t = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !10
  %i.u = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5VL__native_group_create, i32 noundef 102, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.2) #4 ; 0 uses
  br label %.thread28

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #4
  %i.v = call ptr @H5G_oloc(ptr noundef nonnull %i.l) #4 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = load i64, ptr @H5E_SYM_g, align 8, !tbaa !10
  %i.y = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !10
  %i.z = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5VL__native_group_create, i32 noundef 115, i64 noundef %i.x, i64 noundef %i.y, ptr noundef nonnull @.str.3) #4 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.2 = phi ptr [ null, %bb.i ], [ %i.l, %bb.h ]
  %i.aa = call i32 @H5O_dec_rc_by_loc(ptr noundef %i.v) #4
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.k, label %.thread28

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr @H5E_SYM_g, align 8, !tbaa !10
  %i.ad = load i64, ptr @H5E_CANTDEC_g, align 8, !tbaa !10
  %i.ae = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5VL__native_group_create, i32 noundef 120, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.4) #4 ; 0 uses
  br label %.thread28

.thread28:                                        ; preds = %bb.e, %bb.b, %bb.g, %bb.f, %bb.k, %bb.j
  %.4 = phi ptr [ null, %bb.b ], [ null, %bb.k ], [ %.2, %bb.j ], [ null, %bb.e ], [ %i.q, %bb.f ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  ret ptr %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @H5G_loc_real(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5E_printf_stack(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare ptr @H5G__create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @H5G__create_named(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @H5G_oloc(ptr noundef) local_unnamed_addr #2

declare i32 @H5O_dec_rc_by_loc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @H5VL__native_group_open(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.H5G_loc_t, align 8          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #4
  %i.a = load i32, ptr %1, align 8, !tbaa !8
  %i.b = call i32 @H5G_loc_real(ptr noundef %0, i32 noundef %i.a, ptr noundef nonnull %6) #4
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !10
  %i.e = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !10
  %i.f = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5VL__native_group_open, i32 noundef 149, i64 noundef %i.d, i64 noundef %i.e, ptr noundef nonnull @.str.1) #4 ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = call ptr @H5G__open_name(ptr noundef nonnull %6, ptr noundef %2) #4 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr @H5E_SYM_g, align 8, !tbaa !10
  %i.j = load i64, ptr @H5E_CANTOPENOBJ_g, align 8, !tbaa !10
  %i.k = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5VL__native_group_open, i32 noundef 153, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.5) #4 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %i.g, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  ret ptr %.0
}

declare ptr @H5G__open_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5VL__native_group_get(ptr noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.H5G_loc_t, align 8          ; 6 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !24
  switch i32 %i.a, label %bb.o [
    i32 0, label %bb.b
    i32 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @H5G_get_create_plist(ptr noundef %0) #4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.b, ptr %i.c, align 8, !tbaa !26
  %i.d = icmp slt i64 %i.b, 0
  br i1 %i.d, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr @H5E_SYM_g, align 8, !tbaa !10
  %i.f = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !10
  %i.g = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5VL__native_group_get, i32 noundef 182, i64 noundef %i.e, i64 noundef %i.f, ptr noundef nonnull @.str.6) #4 ; 0 uses
  br label %bb.p

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #4
  %i.i = load i32, ptr %i.h, align 8, !tbaa !27
  %i.j = call i32 @H5G_loc_real(ptr noundef %0, i32 noundef %i.i, ptr noundef nonnull %4) #4
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !10
  %i.m = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !10
  %i.n = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5VL__native_group_get, i32 noundef 193, i64 noundef %i.l, i64 noundef %i.m, ptr noundef nonnull @.str.1) #4 ; 0 uses
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !30
  switch i32 %i.p, label %bb.m [
    i32 0, label %bb.g
    i32 1, label %bb.i
    i32 2, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %4, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31
  %i.t = call i32 @H5G__obj_info(ptr noundef %i.q, ptr noundef %i.s) #4
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.v = load i64, ptr @H5E_SYM_g, align 8, !tbaa !10
  %i.w = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !10
  %i.x = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5VL__native_group_get, i32 noundef 200, i64 noundef %i.v, i64 noundef %i.w, ptr noundef nonnull @.str.7) #4 ; 0 uses
  br label %bb.n

bb.i:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !26
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !31
  %i.ac = call i32 @H5G__get_info_by_name(ptr noundef nonnull %4, ptr noundef %i.z, ptr noundef %i.ab) #4
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ae = load i64, ptr @H5E_SYM_g, align 8, !tbaa !10
  %i.af = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !10
  %i.ag = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5VL__native_group_get, i32 noundef 208, i64 noundef %i.ae, i64 noundef %i.af, ptr noundef nonnull @.str.7) #4 ; 0 uses
  br label %bb.n

bb.k:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !26
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !26
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.am = load i32, ptr %i.al, align 4, !tbaa !26
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !26
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !31
  %i.ar = call i32 @H5G__get_info_by_idx(ptr noundef nonnull %4, ptr noundef %i.ai, i32 noundef %i.ak, i32 noundef %i.am, i64 noundef %i.ao, ptr noundef %i.aq) #4
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.at = load i64, ptr @H5E_SYM_g, align 8, !tbaa !10
  %i.au = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !10
  %i.av = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5VL__native_group_get, i32 noundef 219, i64 noundef %i.at, i64 noundef %i.au, ptr noundef nonnull @.str.7) #4 ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.f
  %i.aw = load i64, ptr @H5E_VOL_g, align 8, !tbaa !10
  %i.ax = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !10
  %i.ay = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5VL__native_group_get, i32 noundef 222, i64 noundef %i.aw, i64 noundef %i.ax, ptr noundef nonnull @.str.8) #4 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %bb.k, %bb.i, %bb.m, %bb.l, %bb.j, %bb.h, %bb.e
  %.026 = phi i32 [ -1, %bb.e ], [ -1, %bb.h ], [ -1, %bb.m ], [ -1, %bb.j ], [ -1, %bb.l ], [ 0, %bb.i ], [ 0, %bb.k ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  br label %bb.p

bb.o:                                             ; preds = %bb.a
  %i.az = load i64, ptr @H5E_VOL_g, align 8, !tbaa !10
  %i.ba = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !10
  %i.bb = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5VL__native_group_get, i32 noundef 227, i64 noundef %i.az, i64 noundef %i.ba, ptr noundef nonnull @.str.9) #4 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.c, %bb.o, %bb.b, %bb.n
  %.1 = phi i32 [ -1, %bb.o ], [ -1, %bb.c ], [ 0, %bb.b ], [ %.026, %bb.n ]
  ret i32 %.1
}

declare i64 @H5G_get_create_plist(ptr noundef) local_unnamed_addr #2

declare i32 @H5G__obj_info(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5G__get_info_by_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5G__get_info_by_idx(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5VL__native_group_specific(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.H5G_loc_t, align 8          ; 4 uses
  %5 = alloca %struct.H5G_loc_t, align 8          ; 4 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !32
  switch i32 %i.a, label %bb.r [
    i32 0, label %bb.b
    i32 1, label %bb.g
    i32 2, label %bb.l
    i32 3, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #4
  %i.b = call i32 @H5G_loc_real(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %4) #4
end_hunk_0
