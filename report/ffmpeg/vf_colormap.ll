Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_colormap?download=true
inline.NumInlined: 10
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 28
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }
%struct.ThreadData = type { ptr, ptr }

@.str = private unnamed_addr constant [9 x i8] c"colormap\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Apply custom Color Maps to video stream.\00", align 1
@inputs = internal constant [3 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr null }, %struct.AVFilterPad { ptr @.str.3, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr null }, %struct.AVFilterPad { ptr @.str.4, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr null }], align 16
@outputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @config_output }], align 16
@.compoundliteral = internal constant [3 x i32] [i32 175, i32 177, i32 -1], align 4
@ff_vf_colormap = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @inputs, ptr @outputs, ptr @colormap_class, i32 131076, [4 x i8] zeroinitializer }, i8 3, i8 1, i8 3, [5 x i8] zeroinitializer, ptr null, ptr null, ptr @uninit, %union.anon.0 { ptr @.compoundliteral }, i32 42112, i32 0, ptr @ff_filter_process_command, ptr @activate }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@__const.build_map.idx = private unnamed_addr constant [3 x [3 x i8]] [[3 x i8] c"\00\01\02", [3 x i8] c"\01\00\02", [3 x i8] c"\02\00\01"], align 1
@__const.build_map.didx = private unnamed_addr constant [3 x [4 x i8]] [[4 x i8] c"\00\01\02\02", [4 x i8] c"\00\02\01\02", [4 x i8] c"\00\02\02\01"], align 1
@colormap_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @colormap_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"patch_size\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"set patch size\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"64x64\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"nb_patches\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"set number of patches\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"set the target type used\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"relative\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"the target colors are relative\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"absolute\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"the target colors are absolute\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@.str.18 = private unnamed_addr constant [51 x i8] c"set the kernel used for measuring color difference\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"euclidean\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"square root of sum of squared differences\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"weuclidean\00", align 1
@.str.22 = private unnamed_addr constant [51 x i8] c"weighted square root of sum of squared differences\00", align 1
@colormap_options = internal constant <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.6, ptr @.str.7, i32 8, i32 12, { ptr } { ptr @.str.8 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.9, ptr @.str.10, i32 16, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 6.400000e+01, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.11, ptr @.str.12, i32 4192, i32 2, %union.anon.2 { i64 1 }, double 0.000000e+00, double 1.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.11 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.13, ptr @.str.14, i32 0, i32 11, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.11 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.15, ptr @.str.16, i32 0, i32 11, %union.anon.2 { i64 1 }, double 0.000000e+00, double 1.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.11 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.17, ptr @.str.18, i32 4196, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.17 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.19, ptr @.str.20, i32 0, i32 11, %union.anon.2 zeroinitializer, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.17 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.21, ptr @.str.22, i32 0, i32 11, %union.anon.2 { i64 1 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.17 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4208
  tail call void @ff_framesync_uninit(ptr noundef nonnull %i.c) #12
  ret void
}

declare i32 @ff_filter_process_command(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @activate(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4208
  %i.d = tail call i32 @ff_framesync_activate(ptr noundef nonnull %i.c) #12
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal i32 @config_output(ptr nofree noundef captures(none) initializes((40, 56), (96, 104), (280, 288)) %0) #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !57     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28   ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !31
  store i64 %i.m, ptr %i.k, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 280
  %i.p = load i64, ptr %i.o, align 8, !tbaa !31
  store i64 %i.p, ptr %i.n, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.s = load i64, ptr %i.r, align 8, !tbaa !31
  store i64 %i.s, ptr %i.q, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load <2 x i32>, ptr %i.t, align 8, !tbaa !31
  store <2 x i32> %i.v, ptr %i.u, align 8, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 4208 ; 2 uses
  %i.x = tail call i32 @ff_framesync_init(ptr noundef nonnull %i.w, ptr noundef %i.a, i32 noundef 3) #12 ; 2 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 4280
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !58  ; 12 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.l, align 8, !tbaa !31
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !31
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 136
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !31
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !31
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 52
  store i32 1, ptr %i.al, align 4, !tbaa !60
  store i32 0, ptr %i.aa, align 8, !tbaa !61
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 2, ptr %i.am, align 4, !tbaa !62
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 116
  store i32 1, ptr %i.an, align 4, !tbaa !60
  store i32 0, ptr %i.ad, align 8, !tbaa !61
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 68
  store i32 2, ptr %i.ao, align 4, !tbaa !62
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 180
  store i32 1, ptr %i.ap, align 4, !tbaa !60
  store i32 0, ptr %i.ah, align 8, !tbaa !61
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 132
  store i32 2, ptr %i.aq, align 4, !tbaa !62
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 4256
  store ptr %i.c, ptr %i.ar, align 8, !tbaa !63
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 4248
  store ptr @process_frame, ptr %i.as, align 8, !tbaa !64
  %i.at = tail call i32 @ff_framesync_configure(ptr noundef nonnull %i.w) #12
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 4228
  %i.av = load i64, ptr %i.au, align 4, !tbaa !31
  store i64 %i.av, ptr %i.k, align 8, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.at, %bb.b ], [ %i.x, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @ff_framesync_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @process_frame(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 7 uses
  %i.b = alloca [3 x i32], align 4                ; 6 uses
  %i.c = alloca [4 x double], align 16            ; 8 uses
  %1 = alloca [2 x double], align 16              ; 5 uses
  %i.d = alloca [9 x double], align 16            ; 13 uses
  %i.e = alloca [3 x double], align 16            ; 13 uses
  %i.f = alloca [16 x double], align 16           ; 20 uses
  %i.g = alloca [4 x double], align 16            ; 11 uses
  %i.h = alloca [4 x i32], align 16               ; 6 uses
  %i.i = alloca ptr, align 8                      ; 10 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.ThreadData, align 8         ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !85   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !86   ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !87
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !30   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 4196
  %i.t = load i32, ptr %i.s, align 4, !tbaa !88
  switch i32 %i.t, label %bb.an [
    i32 0, label %bb.c
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %weuclidean_kernel.sink = phi ptr [ @weuclidean_kernel, %bb.b ], [ @euclidean_kernel, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 4200
  store ptr %weuclidean_kernel.sink, ptr %i.u, align 8, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 4208 ; 3 uses
  %i.w = call i32 @ff_framesync_get_frame(ptr noundef nonnull %i.v, i32 noundef 0, ptr noundef nonnull %i.i, i32 noundef 1) #12 ; 2 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.an, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = call i32 @ff_framesync_get_frame(ptr noundef nonnull %i.v, i32 noundef 1, ptr noundef nonnull %i.j, i32 noundef 0) #12 ; 2 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.an, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = call i32 @ff_framesync_get_frame(ptr noundef nonnull %i.v, i32 noundef 2, ptr noundef nonnull %i.k, i32 noundef 0) #12 ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.an, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !28
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !30 ; 2 uses
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !89
  %i.ah = getelementptr i8, ptr %i.af, i64 16
  %.val48 = load ptr, ptr %i.ah, align 8, !tbaa !90 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.af, i64 24
  %.val49 = load ptr, ptr %i.ai, align 8, !tbaa !91
  %i.aj = getelementptr i8, ptr %.val48, i64 24
  %.val48.val = load ptr, ptr %i.aj, align 8, !tbaa !92
  %i.ak = getelementptr i8, ptr %.val48, i64 72
  %.val48.val50 = load ptr, ptr %i.ak, align 8, !tbaa !19
  call fastcc void @import_map(ptr %.val48.val, ptr %.val48.val50, ptr %.val49, ptr noundef %i.ag)
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !28
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !30 ; 2 uses
  %i.ao = load ptr, ptr %i.k, align 8, !tbaa !89
  %i.ap = getelementptr i8, ptr %i.an, i64 16
  %.val = load ptr, ptr %i.ap, align 8, !tbaa !90 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.an, i64 24
  %.val47 = load ptr, ptr %i.aq, align 8, !tbaa !91
  %i.ar = getelementptr i8, ptr %.val, i64 24
  %.val.val = load ptr, ptr %i.ar, align 8, !tbaa !92
  %i.as = getelementptr i8, ptr %.val, i64 72
  %.val.val51 = load ptr, ptr %i.as, align 8, !tbaa !19
  call fastcc void @import_map(ptr %.val.val, ptr %.val.val51, ptr %.val47, ptr noundef %i.ao)
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !31
  %.not = icmp eq i32 %i.au, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !31
  %.not42 = icmp eq i32 %i.aw, 0
  br i1 %.not42, label %bb.ae, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ax = getelementptr i8, ptr %i.m, i64 72
  %.val52 = load ptr, ptr %i.ax, align 8, !tbaa !19 ; 36 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val52, i64 20 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !38 ; 4 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i, label %.preheader17.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %.val52, i64 4192
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !93
  %i.bd = icmp eq i32 %i.bc, 0
  %i.be = getelementptr inbounds nuw i8, ptr %.val52, i64 1056 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.val52, i64 2080 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.val52, i64 32
  %wide.trip.count55.i = zext nneg i32 %i.az to i64 ; 3 uses
  br i1 %i.bd, label %.lr.ph.split.us.i, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %xtraiter = and i64 %wide.trip.count55.i, 1
  %i.bh = icmp eq i32 %i.az, 1
  br i1 %i.bh, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.i.preheader.new

.lr.ph.split.i.preheader.new:                     ; preds = %.lr.ph.split.i.preheader
  %unroll_iter = and i64 %wide.trip.count55.i, 2147483646
  br label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %.lr.ph.split.us.i
  %indvars.iv52.i = phi i64 [ %indvars.iv.next53.i, %.lr.ph.split.us.i ], [ 0, %.lr.ph.i ] ; 5 uses
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %indvars.iv52.i
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %indvars.iv52.i
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %indvars.iv52.i ; 2 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %.val52, i64 %indvars.iv52.i ; 2 uses
  %i.bm = load <2 x float>, ptr %i.bi, align 8, !tbaa !40
  %i.bn = load <2 x float>, ptr %i.bj, align 8, !tbaa !40
  %i.bo = fadd nsz <2 x float> %i.bm, %i.bn
  store <2 x float> %i.bo, ptr %i.bk, align 8, !tbaa !40
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !40
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 1064
  %i.bs = load float, ptr %i.br, align 8, !tbaa !40
  %i.bt = fadd nsz float %i.bq, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store float %i.bt, ptr %i.bu, align 8, !tbaa !40
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %exitcond56.not.i = icmp eq i64 %indvars.iv.next53.i, %wide.trip.count55.i
  br i1 %exitcond56.not.i, label %.preheader17.i, label %.lr.ph.split.us.i, !llvm.loop !65

.preheader17.i.loopexit66.unr-lcssa:              ; preds = %.lr.ph.split.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader17.i, label %.lr.ph.split.i.epil.preheader

.lr.ph.split.i.epil.preheader:                    ; preds = %.preheader17.i.loopexit66.unr-lcssa, %.lr.ph.split.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.split.i.preheader ], [ %indvars.iv.next.i.1, %.preheader17.i.loopexit66.unr-lcssa ] ; 3 uses
  %lcmp.mod67 = trunc i32 %i.az to i1
  call void @llvm.assume(i1 %lcmp.mod67)
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %indvars.iv.i.epil.init
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %.val52, i64 %indvars.iv.i.epil.init
  %i.by = load <2 x float>, ptr %i.bv, align 8, !tbaa !40
  store <2 x float> %i.by, ptr %i.bw, align 8, !tbaa !40
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 1064
  %i.ca = load float, ptr %i.bz, align 8, !tbaa !40
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store float %i.ca, ptr %i.cb, align 8, !tbaa !40
  br label %.preheader17.i

.preheader17.i:                                   ; preds = %.lr.ph.split.i.epil.preheader, %.preheader17.i.loopexit66.unr-lcssa, %.lr.ph.split.us.i, %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %.val52, i64 3104 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.val52, i64 3168 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.val52, i64 32 ; 11 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.val52, i64 40
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.val52, i64 48 ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.cn = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.val52, i64 56
  %i.cp = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.val52, i64 64 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.ct = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.val52, i64 72
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.val52, i64 80
  %i.cy = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.cz = getelementptr inbounds nuw i8, ptr %i.f, i64 120 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.val52, i64 88
  %i.db = getelementptr inbounds nuw i8, ptr %.val52, i64 2080 ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.val52, i64 2096 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.val52, i64 2112 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.val52, i64 2128
  %i.di = getelementptr inbounds nuw i8, ptr %.val52, i64 3120 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.val52, i64 3136 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.val52, i64 3152 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.dq = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dy = getelementptr i8, ptr %.val52, i64 4304 ; 17 uses
  %i.dz = getelementptr i8, ptr %.val52, i64 41296 ; 23 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.val52, i64 41840 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.val52, i64 4200
  %i.ec = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.preheader16.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.split.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph.split.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %niter.next.1, %.lr.ph.split.i ]
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %indvars.iv.i
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %indvars.iv.i ; 2 uses
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %.val52, i64 %indvars.iv.i
  %i.ei = load <2 x float>, ptr %i.ef, align 8, !tbaa !40
  store <2 x float> %i.ei, ptr %i.eg, align 8, !tbaa !40
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 1064
  %i.ek = load float, ptr %i.ej, align 8, !tbaa !40
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store float %i.ek, ptr %i.el, align 8, !tbaa !40
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %indvars.iv.next.i
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %indvars.iv.next.i ; 2 uses
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %.val52, i64 %indvars.iv.next.i
  %i.ep = load <2 x float>, ptr %i.em, align 8, !tbaa !40
  store <2 x float> %i.ep, ptr %i.en, align 8, !tbaa !40
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 1064
  %i.er = load float, ptr %i.eq, align 8, !tbaa !40
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store float %i.er, ptr %i.es, align 8, !tbaa !40
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader17.i.loopexit66.unr-lcssa, label %.lr.ph.split.i, !llvm.loop !65

.preheader16.i:                                   ; preds = %.loopexit.i, %.preheader17.i
  %indvars.iv129.i = phi i64 [ 0, %.preheader17.i ], [ %indvars.iv.next130.i, %.loopexit.i ] ; 28 uses
  %i.et = load i32, ptr %i.ay, align 4, !tbaa !38 ; 25 uses
  %i.eu = icmp sgt i32 %i.et, 0                   ; 4 uses
  br i1 %i.eu, label %.lr.ph21.i, label %.preheader15.i

.lr.ph21.i:                                       ; preds = %.preheader16.i
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv129.i ; 5 uses
  %wide.trip.count60.i = zext nneg i32 %i.et to i64 ; 2 uses
  %xtraiter68 = and i64 %wide.trip.count60.i, 3   ; 3 uses
  %i.ev = icmp ult i32 %i.et, 4
  br i1 %i.ev, label %.epil.preheader, label %.lr.ph21.i.new

.lr.ph21.i.new:                                   ; preds = %.lr.ph21.i
  %unroll_iter71 = and i64 %wide.trip.count60.i, 2147483644
  br label %bb.j

.preheader15.i.loopexit.unr-lcssa:                ; preds = %bb.j
  %lcmp.mod69.not = icmp eq i64 %xtraiter68, 0
  br i1 %lcmp.mod69.not, label %.preheader15.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader15.i.loopexit.unr-lcssa, %.lr.ph21.i
  %indvars.iv57.i.epil.init = phi i64 [ 0, %.lr.ph21.i ], [ %indvars.iv.next58.i.3, %.preheader15.i.loopexit.unr-lcssa ]
  %lcmp.mod70 = icmp ne i64 %xtraiter68, 0
  call void @llvm.assume(i1 %lcmp.mod70)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %indvars.iv57.i.epil = phi i64 [ %indvars.iv57.i.epil.init, %.epil.preheader ], [ %indvars.iv.next58.i.epil, %bb.i ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %gep.i.epil = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep.i, i64 %indvars.iv57.i.epil
  store float 0.000000e+00, ptr %gep.i.epil, align 4, !tbaa !40
  %indvars.iv.next58.i.epil = add nuw nsw i64 %indvars.iv57.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter68
  br i1 %epil.iter.cmp.not, label %.preheader15.i, label %bb.i, !llvm.loop !66

.preheader15.i:                                   ; preds = %.preheader15.i.loopexit.unr-lcssa, %bb.i, %.preheader16.i
  %invariant.gep22.i = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv129.i ; 8 uses
  store float 0.000000e+00, ptr %invariant.gep22.i, align 4, !tbaa !40
  %gep23.1.i = getelementptr inbounds nuw i8, ptr %invariant.gep22.i, i64 16 ; 2 uses
  store float 0.000000e+00, ptr %gep23.1.i, align 4, !tbaa !40
  %gep23.2.i = getelementptr inbounds nuw i8, ptr %invariant.gep22.i, i64 32 ; 2 uses
  store float 0.000000e+00, ptr %gep23.2.i, align 4, !tbaa !40
  %gep23.3.i = getelementptr inbounds nuw i8, ptr %invariant.gep22.i, i64 48 ; 2 uses
  store float 0.000000e+00, ptr %gep23.3.i, align 4, !tbaa !40
  %indvars.iv.next130.i = add nuw nsw i64 %indvars.iv129.i, 1 ; 4 uses
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %indvars.iv.next130.i
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv129.i ; 2 uses
  store float 1.000000e+00, ptr %i.ex, align 4, !tbaa !40
  switch i32 %i.et, label %bb.r [
    i32 1, label %bb.k
    i32 2, label %bb.l
    i32 3, label %bb.n
    i32 4, label %bb.p
  ]

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i.new
  %indvars.iv57.i = phi i64 [ 0, %.lr.ph21.i.new ], [ %indvars.iv.next58.i.3, %bb.j ] ; 5 uses
  %niter72 = phi i64 [ 0, %.lr.ph21.i.new ], [ %niter72.next.3, %bb.j ]
  %gep.i = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep.i, i64 %indvars.iv57.i
  store float 0.000000e+00, ptr %gep.i, align 4, !tbaa !40
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep.i, i64 %indvars.iv57.i
  %gep.i.1 = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store float 0.000000e+00, ptr %gep.i.1, align 4, !tbaa !40
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep.i, i64 %indvars.iv57.i
  %gep.i.2 = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  store float 0.000000e+00, ptr %gep.i.2, align 4, !tbaa !40
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep.i, i64 %indvars.iv57.i
  %gep.i.3 = getelementptr inbounds nuw i8, ptr %i.fa, i64 48
  store float 0.000000e+00, ptr %gep.i.3, align 4, !tbaa !40
  %indvars.iv.next58.i.3 = add nuw nsw i64 %indvars.iv57.i, 4 ; 2 uses
  %niter72.next.3 = add i64 %niter72, 4           ; 2 uses
  %niter72.ncmp.3 = icmp eq i64 %niter72.next.3, %unroll_iter71
  br i1 %niter72.ncmp.3, label %.preheader15.i.loopexit.unr-lcssa, label %bb.j, !llvm.loop !67

bb.k:                                             ; preds = %.preheader15.i
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv129.i
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !40 ; 2 uses
  %i.fd = call nsz float @llvm.fabs.f32(float %i.fc)
  %i.fe = fcmp nsz olt float %i.fd, f0x358637BD
  %i.ff = select nsz i1 %i.fe, float f0x358637BD, float %i.fc
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv129.i
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !40
  %i.fi = fdiv nsz float %i.fh, %i.ff
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %indvars.iv129.i
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %indvars.iv.next130.i
  store float %i.fi, ptr %i.fk, align 4, !tbaa !40
  br label %.loopexit.i

bb.l:                                             ; preds = %.preheader15.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store double 1.000000e+00, ptr %i.c, align 16, !tbaa !44
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv129.i
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !40
  %i.fn = fpext nsz float %i.fm to double
  store double %i.fn, ptr %i.dv, align 8, !tbaa !44
  store double 1.000000e+00, ptr %i.dw, align 16, !tbaa !44
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv129.i
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !40
  %i.fq = fpext nsz float %i.fp to double
  store double %i.fq, ptr %i.dx, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv129.i
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !40
  %4 = fpext nsz float %i.fs to double            ; 2 uses
  store double %4, ptr %1, align 16, !tbaa !44
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv129.i
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !40
  %5 = fpext nsz float %i.fu to double
  store double %5, ptr %3, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, i8 0, i64 12, i1 false)
  %i.fv = call fastcc i32 @gauss_make_triangular(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, i32 noundef 2)
  %.not.i.i = icmp eq i32 %i.fv, 0
  br i1 %.not.i.i, label %gauss_solve.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.l
  %6 = load i32, ptr %i.b, align 4, !tbaa !31
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [8 x i8], ptr %1, i64 %7 ; 2 uses
  %9 = load double, ptr %8, align 8, !tbaa !44    ; 2 uses
  store double %4, ptr %8, align 8, !tbaa !44
  %10 = load double, ptr %i.dw, align 16, !tbaa !44
  %i.fw = load double, ptr %3, align 8, !tbaa !44
  %i.fx = call nsz double @llvm.fmuladd.f64(double %10, double %9, double %i.fw)
  %i.fy = load double, ptr %i.dx, align 8, !tbaa !44
  %i.fz = fdiv nsz double %i.fx, %i.fy            ; 2 uses
  %i.ga = load double, ptr %i.dv, align 8, !tbaa !44
  %i.gb = fneg nsz double %i.ga
  %i.gc = call nsz double @llvm.fmuladd.f64(double %i.gb, double %i.fz, double %9)
  %i.gd = load double, ptr %i.c, align 16, !tbaa !44
  %i.ge = fdiv nsz double %i.gc, %i.gd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.gf = fptrunc nsz double %i.ge to float
  store float %i.gf, ptr %invariant.gep22.i, align 4, !tbaa !40
  %i.gg = fptrunc nsz double %i.fz to float
  store float %i.gg, ptr %i.ex, align 4, !tbaa !40
  br label %bb.m

gauss_solve.exit.i:                               ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.m

bb.m:                                             ; preds = %gauss_solve.exit.i, %.lr.ph.preheader.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %.loopexit.i

bb.n:                                             ; preds = %.preheader15.i
  %i.gh = getelementptr inbounds nuw [3 x i8], ptr @__const.build_map.idx, i64 %indvars.iv129.i ; 3 uses
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !94
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 1
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !94
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 2
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store double 1.000000e+00, ptr %i.d, align 16, !tbaa !44
  %i.gn = zext i8 %i.gi to i64                    ; 3 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.gn
  %i.gp = load float, ptr %i.go, align 4, !tbaa !40
  %i.gq = zext i8 %i.gk to i64                    ; 3 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.gq
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !40
  %i.gt = zext i8 %i.gm to i64                    ; 3 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.gt
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !40
  %i.gw = fadd nsz float %i.gs, %i.gv
  %i.gx = insertelement <2 x float> poison, float %i.gp, i64 0
  %i.gy = insertelement <2 x float> %i.gx, float %i.gw, i64 1
  %i.gz = fpext <2 x float> %i.gy to <2 x double>
  store <2 x double> %i.gz, ptr %i.dl, align 8, !tbaa !44
  store double 1.000000e+00, ptr %i.dn, align 8, !tbaa !44
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.gn
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !40
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.gq
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !40
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.gt
  %i.hf = load float, ptr %i.he, align 4, !tbaa !40
  %i.hg = fadd nsz float %i.hd, %i.hf
  %i.hh = insertelement <2 x float> poison, float %i.hb, i64 0
  %i.hi = insertelement <2 x float> %i.hh, float %i.hg, i64 1
  %i.hj = fpext <2 x float> %i.hi to <2 x double>
  store <2 x double> %i.hj, ptr %i.do, align 16, !tbaa !44
  store double 1.000000e+00, ptr %i.dq, align 16, !tbaa !44
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.gn
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !40
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.gq
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !40
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.gt
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !40
  %i.hq = fadd nsz float %i.hn, %i.hp
  %i.hr = insertelement <2 x float> poison, float %i.hl, i64 0
  %i.hs = insertelement <2 x float> %i.hr, float %i.hq, i64 1
  %i.ht = fpext <2 x float> %i.hs to <2 x double>
  store <2 x double> %i.ht, ptr %i.dr, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv129.i
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !40
  %i.hw = fpext nsz float %i.hv to double         ; 2 uses
  store double %i.hw, ptr %i.e, align 16, !tbaa !44
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv129.i
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !40
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv129.i
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !40
  %i.ib = insertelement <2 x float> poison, float %i.hy, i64 0
  %i.ic = insertelement <2 x float> %i.ib, float %i.ia, i64 1
  %i.id = fpext <2 x float> %i.ic to <2 x double>
  store <2 x double> %i.id, ptr %i.dt, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, i8 0, i64 12, i1 false)
  %i.ie = call fastcc i32 @gauss_make_triangular(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, i32 noundef 3)
  %.not.i287.i = icmp eq i32 %i.ie, 0
  br i1 %.not.i287.i, label %gauss_solve.exit311.i, label %.lr.ph.preheader.i.i288.preheader.i

.lr.ph.preheader.i.i288.preheader.i:              ; preds = %bb.n
  %i.if = load i32, ptr %i.a, align 4, !tbaa !31
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ig ; 2 uses
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !44 ; 2 uses
  store double %i.hw, ptr %i.ih, align 8, !tbaa !44
  store double %i.ii, ptr %i.e, align 16, !tbaa !44
  %i.ij = load <2 x double>, ptr %i.dn, align 8
  %i.ik = load double, ptr %i.dq, align 16, !tbaa !44
  %i.il = load <2 x double>, ptr %i.dt, align 8, !tbaa !44
  %i.im = insertelement <2 x double> %i.ij, double %i.ik, i64 1
  %i.in = insertelement <2 x double> poison, double %i.ii, i64 0
  %i.io = shufflevector <2 x double> %i.in, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ip = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.im, <2 x double> %i.io, <2 x double> %i.il) ; 2 uses
  store <2 x double> %i.ip, ptr %i.dt, align 8, !tbaa !44
  %i.iq = load i32, ptr %i.ee, align 4, !tbaa !31
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ir ; 2 uses
  %i.it = load double, ptr %i.is, align 8, !tbaa !44 ; 2 uses
  %i.iu = extractelement <2 x double> %i.ip, i64 0
  store double %i.iu, ptr %i.is, align 8, !tbaa !44
  %i.iv = load double, ptr %i.dr, align 8, !tbaa !44
  %i.iw = load double, ptr %i.du, align 16, !tbaa !44
  %i.ix = call nsz double @llvm.fmuladd.f64(double %i.iv, double %i.it, double %i.iw)
  %i.iy = load double, ptr %i.ds, align 16, !tbaa !44
  %i.iz = fdiv nsz double %i.ix, %i.iy            ; 3 uses
  store double %i.iz, ptr %i.du, align 16, !tbaa !44
  %i.ja = load double, ptr %i.dm, align 16, !tbaa !44
  %i.jb = load double, ptr %i.e, align 16, !tbaa !44
  %i.jc = fneg nsz double %i.ja
  %i.jd = call nsz double @llvm.fmuladd.f64(double %i.jc, double %i.iz, double %i.jb)
  %i.je = load double, ptr %i.dp, align 8, !tbaa !44
  %i.jf = fneg nsz double %i.je
  %i.jg = call nsz double @llvm.fmuladd.f64(double %i.jf, double %i.iz, double %i.it)
  %i.jh = load double, ptr %i.do, align 16, !tbaa !44
  %i.ji = fdiv nsz double %i.jg, %i.jh            ; 2 uses
  store double %i.ji, ptr %i.dt, align 8, !tbaa !44
  %i.jj = load double, ptr %i.dl, align 8, !tbaa !44
  %i.jk = fneg nsz double %i.jj
  %i.jl = call nsz double @llvm.fmuladd.f64(double %i.jk, double %i.ji, double %i.jd)
  %i.jm = load double, ptr %i.d, align 16, !tbaa !44
  %i.jn = fdiv nsz double %i.jl, %i.jm            ; 2 uses
  store double %i.jn, ptr %i.e, align 16, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr @__const.build_map.didx, i64 %indvars.iv129.i ; 3 uses
  %i.jp = fptrunc nsz double %i.jn to float
  store float %i.jp, ptr %invariant.gep22.i, align 4, !tbaa !40
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 1
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !94
  %i.js = zext i8 %i.jr to i64
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.js
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !44
  %i.jv = fptrunc nsz double %i.ju to float
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv129.i
  store float %i.jv, ptr %i.jw, align 4, !tbaa !40
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jo, i64 2
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !94
  %i.jz = zext i8 %i.jy to i64
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.jz
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !44
  %i.kc = fptrunc nsz double %i.kb to float
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv129.i
  store float %i.kc, ptr %i.kd, align 4, !tbaa !40
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jo, i64 3
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !94
  %i.kg = zext i8 %i.kf to i64
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.kg
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !44
  %i.kj = fptrunc nsz double %i.ki to float
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv129.i
  store float %i.kj, ptr %i.kk, align 4, !tbaa !40
  br label %bb.o

gauss_solve.exit311.i:                            ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.o

bb.o:                                             ; preds = %gauss_solve.exit311.i, %.lr.ph.preheader.i.i288.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %.loopexit.i

bb.p:                                             ; preds = %.preheader15.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store double 1.000000e+00, ptr %i.f, align 16, !tbaa !44
  %i.kl = load <2 x float>, ptr %i.cf, align 8, !tbaa !40
  %i.km = fpext <2 x float> %i.kl to <2 x double>
  store <2 x double> %i.km, ptr %i.ce, align 8, !tbaa !44
  %i.kn = load float, ptr %i.ci, align 8, !tbaa !40
  %i.ko = fpext nsz float %i.kn to double
  store double %i.ko, ptr %i.ch, align 8, !tbaa !44
  store double 1.000000e+00, ptr %i.cj, align 16, !tbaa !44
  %i.kp = load <2 x float>, ptr %i.cl, align 8, !tbaa !40
  %i.kq = fpext <2 x float> %i.kp to <2 x double>
  store <2 x double> %i.kq, ptr %i.ck, align 8, !tbaa !44
  %i.kr = load float, ptr %i.co, align 8, !tbaa !40
  %i.ks = fpext nsz float %i.kr to double
  store double %i.ks, ptr %i.cn, align 8, !tbaa !44
  store double 1.000000e+00, ptr %i.cp, align 16, !tbaa !44
  %i.kt = load <2 x float>, ptr %i.cr, align 8, !tbaa !40
  %i.ku = fpext <2 x float> %i.kt to <2 x double>
  store <2 x double> %i.ku, ptr %i.cq, align 8, !tbaa !44
  %i.kv = load float, ptr %i.cu, align 8, !tbaa !40
  %i.kw = fpext nsz float %i.kv to double
  store double %i.kw, ptr %i.ct, align 8, !tbaa !44
  store double 1.000000e+00, ptr %i.cv, align 16, !tbaa !44
  %i.kx = load <2 x float>, ptr %i.cx, align 8, !tbaa !40
  %i.ky = fpext <2 x float> %i.kx to <2 x double>
  store <2 x double> %i.ky, ptr %i.cw, align 8, !tbaa !44
  %i.kz = load float, ptr %i.da, align 8, !tbaa !40
  %i.la = fpext nsz float %i.kz to double
  store double %i.la, ptr %i.cz, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv129.i
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !40
  %i.ld = fpext nsz float %i.lc to double         ; 2 uses
  store double %i.ld, ptr %i.g, align 16, !tbaa !44
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv129.i
  %i.lf = load float, ptr %i.le, align 4, !tbaa !40
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv129.i
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !40
  %i.li = insertelement <2 x float> poison, float %i.lf, i64 0
  %i.lj = insertelement <2 x float> %i.li, float %i.lh, i64 1
  %i.lk = fpext <2 x float> %i.lj to <2 x double>
  store <2 x double> %i.lk, ptr %i.dc, align 8, !tbaa !44
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv129.i
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !40
  %i.ln = fpext nsz float %i.lm to double
  store double %i.ln, ptr %i.dg, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  %i.lo = call fastcc i32 @gauss_make_triangular(ptr noundef nonnull %i.f, ptr noundef nonnull %i.h, i32 noundef 4)
end_hunk_0
begin_hunk_1_@process_frame:bb.a
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv70.i327.i ; 2 uses
  %i.uy = load double, ptr %i.ux, align 8, !tbaa !44
  %i.uz = fdiv nsz double %i.uy, %i.uw            ; 4 uses
  store double %i.uz, ptr %i.ux, align 8, !tbaa !44
  %invariant.gep73.i328.i = getelementptr [8 x i8], ptr %i.dy, i64 %indvars.iv70.i327.i ; 3 uses
  %xtraiter104 = and i64 %indvars.iv70.i327.i, 1
  %i.va = icmp eq i64 %i.ts, %indvar
  br i1 %i.va, label %.epil.preheader103, label %.preheader.i325.i.new

.preheader.i325.i.new:                            ; preds = %.preheader.i325.i
  %unroll_iter108 = and i64 %indvars.iv70.i327.i, -2
  br label %bb.ab

.unr-lcssa:                                       ; preds = %bb.ab
  %lcmp.mod106.not = icmp eq i64 %xtraiter104, 0
  br i1 %lcmp.mod106.not, label %bb.aa, label %.epil.preheader103

.epil.preheader103:                               ; preds = %.unr-lcssa, %.preheader.i325.i
  %indvars.iv65.i329.i.epil.init = phi i64 [ 0, %.preheader.i325.i ], [ %indvars.iv.next66.i331.i.1, %.unr-lcssa ] ; 2 uses
  %lcmp.mod107 = trunc i64 %indvars.iv70.i327.i to i1
  call void @llvm.assume(i1 %lcmp.mod107)
  %i.vb = mul nuw nsw i64 %indvars.iv65.i329.i.epil.init, %i.tq
  %gep74.i330.i.epil = getelementptr [8 x i8], ptr %invariant.gep73.i328.i, i64 %i.vb
  %i.vc = load double, ptr %gep74.i330.i.epil, align 8, !tbaa !44
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv65.i329.i.epil.init ; 2 uses
  %i.ve = load double, ptr %i.vd, align 8, !tbaa !44
  %i.vf = fneg nsz double %i.vc
  %i.vg = call nsz double @llvm.fmuladd.f64(double %i.vf, double %i.uz, double %i.ve)
  store double %i.vg, ptr %i.vd, align 8, !tbaa !44
  br label %bb.aa

bb.aa:                                            ; preds = %.unr-lcssa, %.epil.preheader103
  %i.vh = icmp samesign ugt i64 %indvars.iv70.in.i326.i, 2
  %indvar.next = add i64 %indvar, 1
  br i1 %i.vh, label %.preheader.i325.i, label %gauss_solve_triangular.exit333.i, !llvm.loop !80

bb.ab:                                            ; preds = %bb.ab, %.preheader.i325.i.new
  %indvars.iv65.i329.i = phi i64 [ 0, %.preheader.i325.i.new ], [ %indvars.iv.next66.i331.i.1, %bb.ab ] ; 4 uses
  %niter109 = phi i64 [ 0, %.preheader.i325.i.new ], [ %niter109.next.1, %bb.ab ]
  %i.vi = mul nuw nsw i64 %indvars.iv65.i329.i, %i.tq
  %gep74.i330.i = getelementptr [8 x i8], ptr %invariant.gep73.i328.i, i64 %i.vi
  %i.vj = load double, ptr %gep74.i330.i, align 8, !tbaa !44
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv65.i329.i ; 2 uses
  %i.vl = load double, ptr %i.vk, align 8, !tbaa !44
  %i.vm = fneg nsz double %i.vj
  %i.vn = call nsz double @llvm.fmuladd.f64(double %i.vm, double %i.uz, double %i.vl)
  store double %i.vn, ptr %i.vk, align 8, !tbaa !44
  %indvars.iv.next66.i331.i = or disjoint i64 %indvars.iv65.i329.i, 1 ; 2 uses
  %i.vo = mul nuw nsw i64 %indvars.iv.next66.i331.i, %i.tq
  %gep74.i330.i.1 = getelementptr [8 x i8], ptr %invariant.gep73.i328.i, i64 %i.vo
  %i.vp = load double, ptr %gep74.i330.i.1, align 8, !tbaa !44
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv.next66.i331.i ; 2 uses
  %i.vr = load double, ptr %i.vq, align 8, !tbaa !44
  %i.vs = fneg nsz double %i.vp
  %i.vt = call nsz double @llvm.fmuladd.f64(double %i.vs, double %i.uz, double %i.vr)
  store double %i.vt, ptr %i.vq, align 8, !tbaa !44
  %indvars.iv.next66.i331.i.1 = add nuw nsw i64 %indvars.iv65.i329.i, 2 ; 2 uses
  %niter109.next.1 = add i64 %niter109, 2         ; 2 uses
  %niter109.ncmp.1 = icmp eq i64 %niter109.next.1, %unroll_iter108
  br i1 %niter109.ncmp.1, label %.unr-lcssa, label %bb.ab, !llvm.loop !81

gauss_solve_triangular.exit333.i:                 ; preds = %bb.aa
  %i.vu = load double, ptr %i.dy, align 8, !tbaa !44
  %i.vv = load double, ptr %i.dz, align 8, !tbaa !44
  %i.vw = fdiv nsz double %i.vv, %i.vu
  store double %i.vw, ptr %i.dz, align 8, !tbaa !44
  br i1 %i.eu, label %.lr.ph43.i, label %.preheader7.i

.lr.ph43.i:                                       ; preds = %gauss_solve_triangular.exit333.i
  %invariant.gep44.i = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv129.i ; 5 uses
  %wide.trip.count123.i = zext nneg i32 %i.et to i64 ; 2 uses
  %xtraiter111 = and i64 %wide.trip.count123.i, 3 ; 3 uses
  %i.vx = add nsw i32 %i.et, -1
  %i.vy = icmp ult i32 %i.vx, 3
  br i1 %i.vy, label %.epil.preheader110, label %.lr.ph43.i.new

.lr.ph43.i.new:                                   ; preds = %.lr.ph43.i
  %unroll_iter115 = and i64 %wide.trip.count123.i, 2147483644
  br label %bb.ad

.preheader7.i.loopexit.unr-lcssa:                 ; preds = %bb.ad
  %lcmp.mod113.not = icmp eq i64 %xtraiter111, 0
  br i1 %lcmp.mod113.not, label %.preheader7.i, label %.epil.preheader110

.epil.preheader110:                               ; preds = %.preheader7.i.loopexit.unr-lcssa, %.lr.ph43.i
  %indvars.iv120.i.epil.init = phi i64 [ 0, %.lr.ph43.i ], [ %indvars.iv.next121.i.3, %.preheader7.i.loopexit.unr-lcssa ]
  %lcmp.mod114 = icmp ne i64 %xtraiter111, 0
  call void @llvm.assume(i1 %lcmp.mod114)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.epil.preheader110
  %indvars.iv120.i.epil = phi i64 [ %indvars.iv120.i.epil.init, %.epil.preheader110 ], [ %indvars.iv.next121.i.epil, %bb.ac ] ; 3 uses
  %epil.iter112 = phi i64 [ 0, %.epil.preheader110 ], [ %epil.iter112.next, %bb.ac ]
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv120.i.epil
  %i.wa = load double, ptr %i.vz, align 8, !tbaa !44
  %i.wb = fptrunc nsz double %i.wa to float
  %gep45.i.epil = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep44.i, i64 %indvars.iv120.i.epil
  store float %i.wb, ptr %gep45.i.epil, align 4, !tbaa !40
  %indvars.iv.next121.i.epil = add nuw nsw i64 %indvars.iv120.i.epil, 1
  %epil.iter112.next = add i64 %epil.iter112, 1   ; 2 uses
  %epil.iter112.cmp.not = icmp eq i64 %epil.iter112.next, %xtraiter111
  br i1 %epil.iter112.cmp.not, label %.preheader7.i, label %bb.ac, !llvm.loop !82

.preheader7.i:                                    ; preds = %.preheader7.i.loopexit.unr-lcssa, %bb.ac, %gauss_solve_triangular.exit333.i, %gauss_solve_triangular.exit333.thread.i
  %i.wc = phi i64 [ %i.te, %gauss_solve_triangular.exit333.thread.i ], [ %i.to, %gauss_solve_triangular.exit333.i ], [ %i.to, %bb.ac ], [ %i.to, %.preheader7.i.loopexit.unr-lcssa ]
  %i.wd = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.wc ; 2 uses
  %i.we = load <2 x double>, ptr %i.wd, align 8, !tbaa !44
  %i.wf = fptrunc <2 x double> %i.we to <2 x float> ; 2 uses
  %i.wg = extractelement <2 x float> %i.wf, i64 0
  store float %i.wg, ptr %invariant.gep22.i, align 4, !tbaa !40
  %i.wh = extractelement <2 x float> %i.wf, i64 1
  store float %i.wh, ptr %gep23.1.i, align 4, !tbaa !40
  %i.wi = getelementptr i8, ptr %i.wd, i64 16
  %i.wj = load <2 x double>, ptr %i.wi, align 8, !tbaa !44
  %i.wk = fptrunc <2 x double> %i.wj to <2 x float> ; 2 uses
  %i.wl = extractelement <2 x float> %i.wk, i64 0
  store float %i.wl, ptr %gep23.2.i, align 4, !tbaa !40
  %i.wm = extractelement <2 x float> %i.wk, i64 1
  store float %i.wm, ptr %gep23.3.i, align 4, !tbaa !40
  br label %.loopexit.i

bb.ad:                                            ; preds = %bb.ad, %.lr.ph43.i.new
  %indvars.iv120.i = phi i64 [ 0, %.lr.ph43.i.new ], [ %indvars.iv.next121.i.3, %bb.ad ] ; 6 uses
  %niter116 = phi i64 [ 0, %.lr.ph43.i.new ], [ %niter116.next.3, %bb.ad ]
  %i.wn = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv120.i
  %i.wo = load double, ptr %i.wn, align 8, !tbaa !44
  %i.wp = fptrunc nsz double %i.wo to float
  %gep45.i = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep44.i, i64 %indvars.iv120.i
  store float %i.wp, ptr %gep45.i, align 4, !tbaa !40
  %indvars.iv.next121.i = or disjoint i64 %indvars.iv120.i, 1 ; 2 uses
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv.next121.i
  %i.wr = load double, ptr %i.wq, align 8, !tbaa !44
  %i.ws = fptrunc nsz double %i.wr to float
  %gep45.i.1 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep44.i, i64 %indvars.iv.next121.i
  store float %i.ws, ptr %gep45.i.1, align 4, !tbaa !40
  %indvars.iv.next121.i.1 = or disjoint i64 %indvars.iv120.i, 2 ; 2 uses
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv.next121.i.1
  %i.wu = load double, ptr %i.wt, align 8, !tbaa !44
  %i.wv = fptrunc nsz double %i.wu to float
  %gep45.i.2 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep44.i, i64 %indvars.iv.next121.i.1
  store float %i.wv, ptr %gep45.i.2, align 4, !tbaa !40
  %indvars.iv.next121.i.2 = or disjoint i64 %indvars.iv120.i, 3 ; 2 uses
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv.next121.i.2
  %i.wx = load double, ptr %i.ww, align 8, !tbaa !44
  %i.wy = fptrunc nsz double %i.wx to float
  %gep45.i.3 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep44.i, i64 %indvars.iv.next121.i.2
  store float %i.wy, ptr %gep45.i.3, align 4, !tbaa !40
  %indvars.iv.next121.i.3 = add nuw nsw i64 %indvars.iv120.i, 4 ; 2 uses
  %niter116.next.3 = add i64 %niter116, 4         ; 2 uses
  %niter116.ncmp.3 = icmp eq i64 %niter116.next.3, %unroll_iter115
  br i1 %niter116.ncmp.3, label %.preheader7.i.loopexit.unr-lcssa, label %bb.ad, !llvm.loop !83

.loopexit.i:                                      ; preds = %.preheader7.i, %bb.z, %bb.q, %bb.o, %bb.m, %bb.k
  %exitcond132.not.i = icmp eq i64 %indvars.iv.next130.i, 3
  br i1 %exitcond132.not.i, label %build_map.exit, label %.preheader16.i, !llvm.loop !84

build_map.exit:                                   ; preds = %.loopexit.i
  %i.wz = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  store i32 0, ptr %i.wz, align 4, !tbaa !31
  store i32 0, ptr %i.at, align 8, !tbaa !31
  br label %bb.ae

bb.ae:                                            ; preds = %build_map.exit, %bb.g
  %i.xa = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.xb = load i32, ptr %i.xa, align 8, !tbaa !95
  %.not43 = icmp eq i32 %i.xb, 0
  %i.xc = load ptr, ptr %i.i, align 8, !tbaa !89  ; 2 uses
  br i1 %.not43, label %bb.af, label %bb.am

bb.af:                                            ; preds = %bb.ae
  %i.xd = call i32 @av_frame_is_writable(ptr noundef %i.xc) #12
  %.not44 = icmp eq i32 %i.xd, 0
  br i1 %.not44, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.xe = load ptr, ptr %i.i, align 8, !tbaa !89  ; 2 uses
  br label %bb.ak

bb.ah:                                            ; preds = %bb.af
  %i.xf = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.xg = load i32, ptr %i.xf, align 8, !tbaa !96
  %i.xh = getelementptr inbounds nuw i8, ptr %i.r, i64 44
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !97
  %i.xj = call ptr @ff_get_video_buffer(ptr noundef %i.r, i32 noundef %i.xg, i32 noundef %i.xi) #12 ; 3 uses
  %.not45 = icmp eq ptr %i.xj, null
  br i1 %.not45, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @av_frame_free(ptr noundef nonnull %i.i) #12
  br label %bb.an

bb.aj:                                            ; preds = %bb.ah
  %i.xk = load ptr, ptr %i.i, align 8, !tbaa !89
  %i.xl = call i32 @av_frame_copy_props(ptr noundef nonnull %i.xj, ptr noundef %i.xk) #12 ; 0 uses
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !89
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ag
  %i.xm = phi ptr [ %i.xe, %bb.ag ], [ %.pre, %bb.aj ] ; 2 uses
  %.034 = phi ptr [ %i.xe, %bb.ag ], [ %i.xj, %bb.aj ] ; 4 uses
  store ptr %i.xm, ptr %2, align 8, !tbaa !48
  %i.xn = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.034, ptr %i.xn, align 8, !tbaa !49
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xm, i64 108
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !54
  %i.xq = call i32 @ff_filter_get_nb_threads(ptr noundef nonnull %i.m) #13
  %. = call i32 @llvm.smin.i32(i32 %i.xp, i32 %i.xq)
  %i.xr = call i32 @ff_filter_execute(ptr noundef nonnull %i.m, ptr noundef nonnull @colormap_slice, ptr noundef nonnull %2, ptr noundef null, i32 noundef %.) #12 ; 0 uses
  %i.xs = load ptr, ptr %i.i, align 8, !tbaa !89
  %.not46 = icmp eq ptr %.034, %i.xs
  br i1 %.not46, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @av_frame_free(ptr noundef nonnull %i.i) #12
  br label %bb.am

bb.am:                                            ; preds = %bb.ae, %bb.ak, %bb.al
  %.1 = phi ptr [ %.034, %bb.ak ], [ %.034, %bb.al ], [ %i.xc, %bb.ae ] ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.o, i64 4240
  %i.xu = load i64, ptr %i.xt, align 8, !tbaa !98
  %i.xv = getelementptr inbounds nuw i8, ptr %i.o, i64 4228
  %i.xw = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.xx = load i64, ptr %i.xv, align 4
  %i.xy = load i64, ptr %i.xw, align 8
  %i.xz = call i64 @av_rescale_q(i64 noundef %i.xu, i64 %i.xx, i64 %i.xy) #14
  %i.ya = getelementptr inbounds nuw i8, ptr %.1, i64 136
  store i64 %i.xz, ptr %i.ya, align 8, !tbaa !99
  %i.yb = call i32 @ff_filter_frame(ptr noundef %i.r, ptr noundef %.1) #12
  br label %bb.an

bb.an:                                            ; preds = %bb.c, %bb.d, %bb.e, %bb.a, %bb.am, %bb.ai
  %.035 = phi i32 [ -12, %bb.ai ], [ -558323010, %bb.a ], [ %i.yb, %bb.am ], [ %i.w, %bb.c ], [ %i.y, %bb.d ], [ %i.aa, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  ret i32 %.035
}

declare i32 @ff_framesync_configure(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal float @euclidean_kernel(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !40
  %i.b = load float, ptr %1, align 4, !tbaa !40
  %i.c = fsub nsz float %i.a, %i.b                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !40
  %i.h = fsub nsz float %i.e, %i.g                ; 2 uses
  %i.i = fmul nsz float %i.h, %i.h
  %i.j = tail call nsz float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !40
  %i.o = fsub nsz float %i.l, %i.n                ; 2 uses
  %i.p = tail call nsz float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.j)
  %i.q = tail call nsz float @llvm.sqrt.f32(float %i.p)
  ret float %i.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal float @weuclidean_kernel(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !40   ; 2 uses
  %i.b = load float, ptr %1, align 4, !tbaa !40   ; 2 uses
  %i.c = fadd nsz float %i.a, %i.b
  %i.d = fmul nsz float %i.c, 5.000000e-01        ; 2 uses
  %i.e = fsub nsz float %i.a, %i.b                ; 2 uses
  %i.f = fmul nsz float %i.e, %i.e
  %i.g = fadd nsz float %i.d, 2.000000e+00
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load float, ptr %i.h, align 4, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !40
  %i.l = fsub nsz float %i.i, %i.k                ; 2 uses
  %i.m = fmul nsz float %i.l, %i.l
  %i.n = fmul nsz float %i.m, 4.000000e+00
  %i.o = tail call nsz float @llvm.fmuladd.f32(float %i.f, float %i.g, float %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load float, ptr %i.p, align 4, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load float, ptr %i.r, align 4, !tbaa !40
  %i.t = fsub nsz float %i.q, %i.s                ; 2 uses
  %i.u = fmul nsz float %i.t, %i.t
  %i.v = fsub nsz float 3.000000e+00, %i.d
  %i.w = tail call nsz float @llvm.fmuladd.f32(float %i.u, float %i.v, float %i.o)
  %i.x = tail call nsz float @llvm.sqrt.f32(float %i.w)
  ret float %i.x
}

declare i32 @ff_framesync_get_frame(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @import_map(ptr %.16.val.24.val, ptr nofree captures(none) %.16.val.72.val, ptr %.24.val, ptr nofree noundef readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = ptrtoint ptr %.24.val to i64
  %i.b = ptrtoint ptr %.16.val.24.val to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 48
  %i.e = trunc i64 %i.d to i32
  %i.f = icmp sgt i32 %i.e, 1                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.16.val.72.val, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !102  ; 2 uses
  %i.i = sdiv i32 %i.h, 2                         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.16.val.72.val, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !103  ; 2 uses
  %i.l = sdiv i32 %i.k, 2                         ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.n = load i32, ptr %i.m, align 4, !tbaa !54   ; 2 uses
  %i.o = icmp slt i32 %i.l, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %.16.val.72.val, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %.16.val.72.val, i64 1056
  br i1 %i.o, label %.split.us, label %.split40.us.thread

.split.us:                                        ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.t = load i32, ptr %i.s, align 8, !tbaa !55   ; 2 uses
  %i.u = icmp slt i32 %i.i, %i.t
  br i1 %i.u, label %.split.us.split.us, label %.split40.us.thread

.split.us.split.us:                               ; preds = %.split.us
  %i.v = sext i32 %i.i to i64                     ; 6 uses
  %i.w = sext i32 %i.h to i64                     ; 6 uses
  %i.x = sext i32 %i.t to i64                     ; 6 uses
  %i.y = sext i32 %i.l to i64                     ; 6 uses
  %i.z = sext i32 %i.k to i64                     ; 6 uses
  %i.aa = sext i32 %i.n to i64                    ; 6 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !56    ; 2 uses
  %i.ac = load i32, ptr %i.p, align 8, !tbaa !31
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  br i1 %i.f, label %.lr.ph12.us.us.us.preheader, label %.lr.ph12.us.us.preheader

.lr.ph12.us.us.preheader:                         ; preds = %.split.us.split.us
  %invariant.gep.us.us = getelementptr i8, ptr %.16.val.72.val, i64 36
  br label %.lr.ph.us.us32.us

.lr.ph12.us.us.us.preheader:                      ; preds = %.split.us.split.us
  %invariant.gep5.us.us.us = getelementptr i8, ptr %.16.val.72.val, i64 1060
  br label %.lr.ph.us.us.us.us.us

.lr.ph.us.us.us.us.us:                            ; preds = %._crit_edge.split.us.us.us.us.us.us, %.lr.ph12.us.us.us.preheader
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %._crit_edge.split.us.us.us.us.us.us ], [ %i.y, %.lr.ph12.us.us.us.preheader ] ; 2 uses
  %.19.us.us.us.us.us = phi i64 [ %indvars.iv.next64, %._crit_edge.split.us.us.us.us.us.us ], [ 0, %.lr.ph12.us.us.us.preheader ]
  %.1658.us.us.us.us.us = phi i32 [ %spec.select.us.us.us.us.us.us, %._crit_edge.split.us.us.us.us.us.us ], [ 0, %.lr.ph12.us.us.us.preheader ]
  %i.ae = mul nsw i64 %indvars.iv68, %i.ad
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 %i.ae
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us.us.us.us.us
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %bb.b ], [ %.19.us.us.us.us.us, %.lr.ph.us.us.us.us.us ] ; 4 uses
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %bb.b ], [ %i.v, %.lr.ph.us.us.us.us.us ] ; 2 uses
  %.2661.us.us.us.us.us.us = phi i32 [ %spec.select.us.us.us.us.us.us, %bb.b ], [ %.1658.us.us.us.us.us, %.lr.ph.us.us.us.us.us ]
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.af, i64 %indvars.iv61
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !40 ; 2 uses
  %gep6.us.us.us.us.us.us = getelementptr [16 x i8], ptr %invariant.gep5.us.us.us, i64 %indvars.iv63 ; 2 uses
  %i.ai = load float, ptr %gep6.us.us.us.us.us.us, align 4, !tbaa !40
  %i.aj = fcmp nsz une float %i.ai, %i.ah
  %spec.select.us.us.us.us.us.us = select i1 %i.aj, i32 1, i32 %.2661.us.us.us.us.us.us ; 3 uses
  store float %i.ah, ptr %gep6.us.us.us.us.us.us, align 4, !tbaa !40
  %indvars.iv.next64 = add nsw i64 %indvars.iv63, 1 ; 2 uses
  %indvars.iv.next62 = add nsw i64 %indvars.iv61, %i.w ; 2 uses
  %i.ak = icmp slt i64 %indvars.iv.next62, %i.x
  %i.al = icmp slt i64 %indvars.iv63, 63
  %i.am = and i1 %i.ak, %i.al
  br i1 %i.am, label %bb.b, label %._crit_edge.split.us.us.us.us.us.us, !llvm.loop !100

._crit_edge.split.us.us.us.us.us.us:              ; preds = %bb.b
  %indvars.iv.next69 = add nsw i64 %indvars.iv68, %i.z ; 2 uses
  %i.an = icmp slt i64 %indvars.iv.next69, %i.aa
  %i.ao = icmp slt i64 %indvars.iv63, 63
  %i.ap = and i1 %i.an, %i.ao
  br i1 %i.ap, label %.lr.ph.us.us.us.us.us, label %._crit_edge13.split.us.split.us.us.us.us, !llvm.loop !101

._crit_edge13.split.us.split.us.us.us.us:         ; preds = %._crit_edge.split.us.us.us.us.us.us
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !56
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.at = load i32, ptr %i.as, align 4, !tbaa !31
  %invariant.gep5.us.us.us.1 = getelementptr i8, ptr %.16.val.72.val, i64 1064
  %i.au = sext i32 %i.at to i64
  br label %.lr.ph.us.us.us.us.us.1

.lr.ph.us.us.us.us.us.1:                          ; preds = %._crit_edge.split.us.us.us.us.us.us.1, %._crit_edge13.split.us.split.us.us.us.us
  %indvars.iv68.1 = phi i64 [ %indvars.iv.next69.1, %._crit_edge.split.us.us.us.us.us.us.1 ], [ %i.y, %._crit_edge13.split.us.split.us.us.us.us ] ; 2 uses
  %.19.us.us.us.us.us.1 = phi i64 [ %indvars.iv.next64.1, %._crit_edge.split.us.us.us.us.us.us.1 ], [ 0, %._crit_edge13.split.us.split.us.us.us.us ]
  %.1658.us.us.us.us.us.1 = phi i32 [ %spec.select.us.us.us.us.us.us.1, %._crit_edge.split.us.us.us.us.us.us.1 ], [ %spec.select.us.us.us.us.us.us, %._crit_edge13.split.us.split.us.us.us.us ]
  %i.av = mul nsw i64 %indvars.iv68.1, %i.au
  %i.aw = getelementptr inbounds i8, ptr %i.ar, i64 %i.av
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.us.us.us.us.us.1
  %indvars.iv63.1 = phi i64 [ %indvars.iv.next64.1, %bb.c ], [ %.19.us.us.us.us.us.1, %.lr.ph.us.us.us.us.us.1 ] ; 4 uses
  %indvars.iv61.1 = phi i64 [ %indvars.iv.next62.1, %bb.c ], [ %i.v, %.lr.ph.us.us.us.us.us.1 ] ; 2 uses
  %.2661.us.us.us.us.us.us.1 = phi i32 [ %spec.select.us.us.us.us.us.us.1, %bb.c ], [ %.1658.us.us.us.us.us.1, %.lr.ph.us.us.us.us.us.1 ]
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %indvars.iv61.1
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !40 ; 2 uses
  %gep6.us.us.us.us.us.us.1 = getelementptr [16 x i8], ptr %invariant.gep5.us.us.us.1, i64 %indvars.iv63.1 ; 2 uses
  %i.az = load float, ptr %gep6.us.us.us.us.us.us.1, align 4, !tbaa !40
  %i.ba = fcmp nsz une float %i.az, %i.ay
  %spec.select.us.us.us.us.us.us.1 = select i1 %i.ba, i32 1, i32 %.2661.us.us.us.us.us.us.1 ; 3 uses
  store float %i.ay, ptr %gep6.us.us.us.us.us.us.1, align 4, !tbaa !40
  %indvars.iv.next64.1 = add nsw i64 %indvars.iv63.1, 1 ; 2 uses
  %indvars.iv.next62.1 = add nsw i64 %indvars.iv61.1, %i.w ; 2 uses
  %i.bb = icmp slt i64 %indvars.iv.next62.1, %i.x
  %i.bc = icmp slt i64 %indvars.iv63.1, 63
  %i.bd = and i1 %i.bb, %i.bc
  br i1 %i.bd, label %bb.c, label %._crit_edge.split.us.us.us.us.us.us.1, !llvm.loop !100

._crit_edge.split.us.us.us.us.us.us.1:            ; preds = %bb.c
  %indvars.iv.next69.1 = add nsw i64 %indvars.iv68.1, %i.z ; 2 uses
  %i.be = icmp slt i64 %indvars.iv.next69.1, %i.aa
  %i.bf = icmp slt i64 %indvars.iv63.1, 63
  %i.bg = and i1 %i.be, %i.bf
  br i1 %i.bg, label %.lr.ph.us.us.us.us.us.1, label %._crit_edge13.split.us.split.us.us.us.us.1, !llvm.loop !101

._crit_edge13.split.us.split.us.us.us.us.1:       ; preds = %._crit_edge.split.us.us.us.us.us.us.1
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !56
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !31
  %i.bl = sext i32 %i.bk to i64
  br label %.lr.ph.us.us.us.us.us.2

.lr.ph.us.us.us.us.us.2:                          ; preds = %._crit_edge.split.us.us.us.us.us.us.2, %._crit_edge13.split.us.split.us.us.us.us.1
  %indvars.iv68.2 = phi i64 [ %indvars.iv.next69.2, %._crit_edge.split.us.us.us.us.us.us.2 ], [ %i.y, %._crit_edge13.split.us.split.us.us.us.us.1 ] ; 2 uses
end_hunk_1
