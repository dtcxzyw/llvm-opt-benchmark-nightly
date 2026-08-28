Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/blend?download=true
inline.NumInlined: 43
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dt_develop_blend_params_t = type { i32, i32, i32, float, float, i32, i32, i32, float, i32, float, float, float, float, i32, [2 x i32], [64 x float], [16 x float], [20 x i8], i32, i32, i32 }
%struct.darktable_t = type { %struct.dt_codepath_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [64 x %struct.dt_pthread_mutex_t], %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dt_lua_state_t, ptr, double, ptr, i32, [49 x i32], i32, i32, ptr, ptr, %struct.dt_sys_resources_t, %struct.dt_backthumb_t, %struct.dt_gimp_t, %struct.dt_splash_t, i32 }
%struct.dt_codepath_t = type { i8, [3 x i8] }
%struct.dt_pthread_mutex_t = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.dt_lua_state_t = type { ptr, %struct.dt_pthread_mutex_t, %union.pthread_cond_t, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%struct.dt_sys_resources_t = type { i64, i64, ptr, ptr, i32 }
%struct.dt_backthumb_t = type { double, double, i32, i32 }
%struct.dt_gimp_t = type { i32, ptr, ptr, i32, i32 }
%struct.dt_splash_t = type { ptr, ptr, ptr, ptr, i32 }

@_default_blendop_params = internal unnamed_addr constant %struct.dt_develop_blend_params_t { i32 0, i32 0, i32 24, float 0.000000e+00, float 1.000000e+02, i32 0, i32 0, i32 0, float 0.000000e+00, i32 5, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, [2 x i32] zeroinitializer, [64 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00], [16 x float] zeroinitializer, [20 x i8] zeroinitializer, i32 0, i32 -1, i32 0 }, align 4
@darktable = external local_unnamed_addr global %struct.darktable_t, align 8
@.str = private unnamed_addr constant [17 x i8] c"dt_develop_blend\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c" skip blending, work area mismatch\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c" could not allocate buffer for blending\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"blend raster\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c" %s%s%s\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" temp\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c" permanent\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c" inverted\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"blend with form\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"blend without form\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c" %s, %s%s%s\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c", inverted\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c", roi differ\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"[blendop] undefined post processing\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"refine with detail mask\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c" no mask data available\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"detail mask blending error\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"BLEND_CS_NONE\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"BLEND_CS_RAW\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"BLEND_CS_LAB\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"BLEND_CS_RGB_DISPLAY\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"BLEND_CS_RGB_SCENE\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"invalid BLEND_CS\00", align 1
@switch.table.dt_develop_blend_process = private unnamed_addr constant [4 x i8] c"\00\01\02\02", align 4
@switch.table.dt_develop_blend_process.7 = private unnamed_addr constant [5 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], align 8
@switch.table.dt_develop_blend_legacy_params = private unnamed_addr constant [6 x i8] c"\01\02\03\02\03\04", align 4
@switch.table.dt_develop_blend_legacy_params.8 = private unnamed_addr constant [6 x float] [float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float f0xC0D49A78], align 4
@switch.table._blend_legacy_blend_mode = private unnamed_addr constant [37 x i32] [i32 24, i32 25, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 -2147483623, i32 24, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 -2147483644], align 4

; Function Attrs: nounwind uwtable
define range(i32 0, 5) i32 @dt_develop_blend_default_module_blend_colorspace(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @dt_is_scene_referred() #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !11
  %i.d = tail call i32 %i.c() #14, !inline_history !29
  %i.e = and i32 %i.d, 2
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_blend_default_module_blend_colorspace.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !30
  %i.h = tail call i32 %i.g(ptr noundef nonnull %0, ptr noundef null, ptr noundef null) #14, !inline_history !29
  switch i32 %i.h, label %bb.g [
    i32 0, label %_blend_default_module_blend_colorspace.exit
    i32 1, label %bb.c
    i32 3, label %bb.c
    i32 2, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  br label %_blend_default_module_blend_colorspace.exit

bb.d:                                             ; preds = %bb.b
  %.not4.i = icmp eq i32 %i.a, 0
  %i.i = select i1 %.not4.i, i32 3, i32 4
  br label %_blend_default_module_blend_colorspace.exit

bb.e:                                             ; preds = %bb.b
  br label %_blend_default_module_blend_colorspace.exit

bb.f:                                             ; preds = %bb.b
  br label %_blend_default_module_blend_colorspace.exit

bb.g:                                             ; preds = %bb.b
  br label %_blend_default_module_blend_colorspace.exit

_blend_default_module_blend_colorspace.exit:      ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i32 [ 0, %bb.g ], [ 1, %bb.b ], [ 2, %bb.c ], [ %i.i, %bb.d ], [ 3, %bb.e ], [ 4, %bb.f ], [ 0, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @dt_is_scene_referred() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @dt_develop_blend_init_blend_parameters(ptr nofree noundef writeonly captures(none) initializes((0, 420)) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(420) %0, ptr noundef nonnull align 4 dereferenceable(420) @_default_blendop_params, i64 420, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %i.a, align 4, !tbaa !31
  %i.b = icmp eq i32 %1, 4
  br i1 %i.b, label %bb.b, label %_blend_init_blendif_boost_parameters.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 356
  store <2 x float> splat (float f0xC0D49A78), ptr %i.c, align 4, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 372
  store <2 x float> splat (float f0xC0D49A78), ptr %i.d, align 4, !tbaa !34
  br label %_blend_init_blendif_boost_parameters.exit

_blend_init_blendif_boost_parameters.exit:        ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @dt_develop_blend_init_blendif_parameters(ptr nofree noundef writeonly captures(none) initializes((4, 16), (28, 32), (68, 388)) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %i.a, align 4, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 24, ptr %i.b, align 4, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.e, ptr noundef nonnull align 4 dereferenceable(256) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 68), i64 256, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 324
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.f, ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 324), i64 64, i1 false)
  %i.g = icmp eq i32 %1, 4
  br i1 %i.g, label %bb.b, label %_blend_init_blendif_boost_parameters.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 356
  store <2 x float> splat (float f0xC0D49A78), ptr %i.h, align 4, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 372
  store <2 x float> splat (float f0xC0D49A78), ptr %i.i, align 4, !tbaa !34
  br label %_blend_init_blendif_boost_parameters.exit

_blend_init_blendif_boost_parameters.exit:        ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @dt_develop_blend_colorspace(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !31
  %switch.tableidx = add i32 %i.d, -1             ; 2 uses
  %i.e = icmp ult i32 %switch.tableidx, 4
  br i1 %i.e, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %bb.b
  %i.f = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.dt_develop_blend_process, i64 %i.f
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %switch.lookup, %bb.a
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ %1, %bb.a ], [ %1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @dt_develop_blendif_process_parameters(ptr noalias nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 324
  %i.g = icmp eq i32 %i.b, 2
  br label %bb.c

bb.b:                                             ; preds = %bb.i
  ret void

bb.c:                                             ; preds = %bb.a, %bb.i
  %.08691 = phi i64 [ 0, %bb.a ], [ %i.ar, %bb.i ] ; 3 uses
  %.08790 = phi i64 [ 0, %bb.a ], [ %i.aq, %bb.i ] ; 5 uses
  %i.h = trunc nuw nsw i64 %.08790 to i32
  %i.i = shl nuw nsw i32 1, %i.h
  %i.j = and i32 %i.i, %i.d
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = and i64 %.08790, 11
  %i.l = add nsw i64 %i.k, -1
  %or.cond5 = icmp ult i64 %i.l, 2
  %i.m = select i1 %i.g, i1 %or.cond5, i1 false
  %.0 = select nsz i1 %i.m, float 5.000000e-01, float 0.000000e+00
  %.idx = shl nuw nsw i64 %.08790, 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.08790
  %i.p = load float, ptr %i.o, align 4, !tbaa !34
  %i.q = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.p)
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.08691 ; 4 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = load <4 x float>, ptr %i.n, align 4, !tbaa !34 ; 5 uses
  %i.u = insertelement <4 x float> poison, float %.0, i64 0
  %i.v = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> zeroinitializer
  %i.w = fsub reassoc nsz arcp contract afn <4 x float> %i.t, %i.v
  %i.x = insertelement <4 x float> poison, float %i.q, i64 0
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> zeroinitializer
  %i.z = fmul reassoc nsz arcp contract afn <4 x float> %i.y, %i.w ; 3 uses
  store <4 x float> %i.z, ptr %i.r, align 4, !tbaa !34
  %i.aa = getelementptr i8, ptr %i.r, i64 16
  %i.ab = shufflevector <4 x float> %i.z, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.ac = shufflevector <4 x float> %i.z, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.ad = fsub reassoc nsz arcp contract afn <2 x float> %i.ab, %i.ac
  %i.ae = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ad, <2 x float> splat (float 1.000000e-03))
  %i.af = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ae
  store <2 x float> %i.af, ptr %i.aa, align 4, !tbaa !34
  %i.ag = extractelement <4 x float> %i.t, i64 0
  %i.ah = fcmp reassoc nsz arcp contract afn ugt float %i.ag, 0.000000e+00
  %i.ai = extractelement <4 x float> %i.t, i64 1
  %i.aj = fcmp reassoc nsz arcp contract afn ugt float %i.ai, 0.000000e+00
  %or.cond88 = select i1 %i.ah, i1 true, i1 %i.aj
  br i1 %or.cond88, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store <2 x float> splat (float f0xFF7FFFFF), ptr %i.r, align 4, !tbaa !34
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ak = extractelement <4 x float> %i.t, i64 2
end_hunk_0
begin_hunk_1_@_refine_with_detail_mask:bb.a
  store float %i.dl, ptr %i.de, align 4, !tbaa !34
  %i.dm = add nuw i64 %.042, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dm, %i.as
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !179

bb.s:                                             ; preds = %_detail_mask_threshold.exit, %bb.b, %bb.c
  %i.dn = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !92
  %i.do = and i32 %i.dn, 33558528
  %.not41 = icmp eq i32 %i.do, 0
  br i1 %.not41, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dp = load ptr, ptr %i.c, align 8, !tbaa !51
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.15, ptr noundef %i.dp, ptr noundef %0, i32 noundef -1, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @.str.17) #14
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dq = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #14
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.dq) #14
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge, %bb.u, %bb.a
  ret void
}

declare ptr @dt_masks_get_from_id_ext(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @dt_masks_group_render_roi(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dt_iop_image_invert(ptr noundef, float noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @dt_develop_blendif_lab_make_mask(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dt_develop_blendif_rgb_hsl_make_mask(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dt_develop_blendif_rgb_jzczhz_make_mask(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dt_develop_blendif_raw_make_mask(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dt_iop_copy_image_roi(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare ptr @dt_gaussian_init(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare void @dt_gaussian_blur(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dt_gaussian_free(ptr noundef) local_unnamed_addr #2

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #2

declare void @dt_develop_blendif_lab_blend(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dt_develop_blendif_rgb_hsl_blend(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dt_develop_blendif_rgb_jzczhz_blend(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dt_develop_blendif_raw_blend(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @dt_iop_piece_is_raster_mask_used(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dt_iop_piece_set_raster(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dt_iop_piece_clear_raster(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noalias noundef ptr @dt_develop_blend_init_cl_global() local_unnamed_addr #9 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @dt_develop_blend_free_cl_global(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #9 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_develop_blend_version() local_unnamed_addr #9 {
bb.a:
  ret i32 14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @tiling_callback_blendop(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 28)) %4) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %4, align 4, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.b, align 4, !tbaa !180
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.c, align 4, !tbaa !182
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.d, align 4, !tbaa !183
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.i = load float, ptr %i.h, align 4, !tbaa !151
  %i.j = fcmp reassoc nsz arcp contract afn une float %i.i, 0.000000e+00
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 592
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !184
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 568
  %i.p = load i32, ptr %i.o, align 8, !tbaa !185
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 572
  %i.r = load i32, ptr %i.q, align 4, !tbaa !186
  %i.s = mul nsw i32 %i.r, %i.p
  %i.t = sitofp reassoc nsz arcp contract afn i32 %i.s to float
  %i.u = fmul reassoc nnan nsz arcp contract afn float %i.t, 5.000000e-01
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !80
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !81
  %i.z = mul nsw i32 %i.y, %i.w
  %i.aa = sitofp reassoc nsz arcp contract afn i32 %i.z to float
  %i.ab = fdiv reassoc nsz arcp contract afn float %i.u, %i.aa
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.ac = phi float [ 0.000000e+00, %bb.c ], [ %i.ab, %bb.d ], [ 0.000000e+00, %bb.b ] ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !86
  %i.af = fcmp reassoc nsz arcp contract afn ogt float %i.ae, 1.000000e-01
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !51
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 652
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !187
  %i.ak = fcmp reassoc nsz arcp contract afn ogt float %i.ac, 1.000000e+00
  %i.al = icmp slt i32 %i.aj, 0
  %i.am = select i1 %i.al, i1 true, i1 %i.ak
  %i.an = fcmp reassoc nsz arcp contract afn ogt float %i.ac, 4.500000e+00
  %i.ao = fadd reassoc nsz arcp contract afn float %i.ac, 1.500000e+00
  %i.ap = select i1 %i.an, float %i.ao, float 6.000000e+00
  %i.aq = fadd reassoc nsz arcp contract afn float %i.ac, 1.500000e+00
  %i.ar = select i1 %i.am, float %i.aq, float 2.500000e+00
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.as = phi float [ %i.ar, %bb.f ], [ %i.ac, %bb.e ]
  %i.at = phi float [ %i.ap, %bb.f ], [ %i.ac, %bb.e ]
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !80
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !81
  %i.ay = mul nsw i32 %i.ax, %i.av
  %i.az = sitofp reassoc nsz arcp contract afn i32 %i.ay to float
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !80
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !81
  %i.be = mul nsw i32 %i.bd, %i.bb
  %i.bf = sitofp reassoc nsz arcp contract afn i32 %i.be to float
  %i.bg = fdiv reassoc nsz arcp contract afn float %i.az, %i.bf ; 2 uses
  %i.bh = fadd reassoc nsz arcp contract afn float %i.bg, %i.at
  store float %i.bh, ptr %4, align 4, !tbaa !188
  %i.bi = fadd reassoc nsz arcp contract afn float %i.as, %i.bg
  store float %i.bi, ptr %i.a, align 4, !tbaa !189
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dt_develop_blend_legacy_params(ptr noundef %0, ptr nofree noundef readonly %1, i32 noundef %2, ptr nofree noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !11
  %i.e = tail call i32 %i.d() #14, !inline_history !29
  %i.f = and i32 %i.e, 2
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_blend_default_module_blend_colorspace.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !30
  %i.i = tail call i32 %i.h(ptr noundef nonnull %0, ptr noundef null, ptr noundef null) #14, !inline_history !29 ; 3 uses
  %i.j = icmp ult i32 %i.i, 6
  br i1 %i.j, label %switch.lookup, label %_blend_default_module_blend_colorspace.exit

switch.lookup:                                    ; preds = %bb.b
  %i.k = zext nneg i32 %i.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.dt_develop_blend_legacy_params, i64 %i.k
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %6 = zext nneg i32 %i.i to i64
  %switch.gep589 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.dt_develop_blend_legacy_params.8, i64 %6
  %switch.load590 = load float, ptr %switch.gep589, align 4
  br label %_blend_default_module_blend_colorspace.exit

_blend_default_module_blend_colorspace.exit:      ; preds = %bb.b, %switch.lookup, %bb.a
  %.0.i581 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %switch.ext, %switch.lookup ] ; 11 uses
  %.sroa.18.0 = phi nsz float [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.a ], [ %switch.load590, %switch.lookup ] ; 44 uses
  %i.l = sext i32 %5 to i64
  %.not910.i = icmp eq i32 %5, 0
  br i1 %.not910.i, label %.loopexit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = add nuw i64 %.0711.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.m, %i.l
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_blend_default_module_blend_colorspace.exit, %bb.c
  %.0711.i = phi i64 [ %i.m, %bb.c ], [ 0, %_blend_default_module_blend_colorspace.exit ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.0711.i
  %i.o = load i8, ptr %i.n, align 1, !tbaa !190
  %.not.i379 = icmp eq i8 %i.o, 0
  br i1 %.not.i379, label %bb.c, label %_develop_blend_params_is_all_zero.exit

.loopexit:                                        ; preds = %bb.c, %_blend_default_module_blend_colorspace.exit
  store i32 0, ptr %3, align 4, !tbaa !82
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.0.i581, ptr %.sroa.14.0..sroa_idx, align 4, !tbaa !82
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(348) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(348) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 8), i64 348, i1 false), !tbaa.struct !191
  %.sroa.15463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 356
  store float %.sroa.18.0, ptr %.sroa.15463.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 360
  store float %.sroa.18.0, ptr %.sroa.16.0..sroa_idx, align 4
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 364
  store i64 0, ptr %.sroa.17.0..sroa_idx, align 4
  %.sroa.17516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 372
  store float %.sroa.18.0, ptr %.sroa.17516.0..sroa_idx, align 4
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 376
  store float %.sroa.18.0, ptr %.sroa.18.0..sroa_idx, align 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 380
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.19.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 380), i64 40, i1 false), !tbaa.struct !192
  br label %_fix_masks_combine.exit

_develop_blend_params_is_all_zero.exit:           ; preds = %.lr.ph.i
  %i.p = icmp eq i32 %2, 1
  %i.q = icmp eq i32 %4, 14                       ; 13 uses
  %or.cond = and i1 %i.p, %i.q
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_develop_blend_params_is_all_zero.exit
  %.not375 = icmp eq i32 %5, 12
  br i1 %.not375, label %bb.e, label %_fix_masks_combine.exit

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %3, align 4, !tbaa !82
  %.sroa.14.0..sroa_idx432 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.0.i581, ptr %.sroa.14.0..sroa_idx432, align 4, !tbaa !82
  %.sroa.15.0..sroa_idx453 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(348) %.sroa.15.0..sroa_idx453, ptr noundef nonnull align 4 dereferenceable(348) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 8), i64 348, i1 false), !tbaa.struct !191
  %.sroa.15463.0..sroa_idx464 = getelementptr inbounds nuw i8, ptr %3, i64 356
  store float %.sroa.18.0, ptr %.sroa.15463.0..sroa_idx464, align 4
  %.sroa.16.0..sroa_idx485 = getelementptr inbounds nuw i8, ptr %3, i64 360
  store float %.sroa.18.0, ptr %.sroa.16.0..sroa_idx485, align 4
  %.sroa.17.0..sroa_idx506 = getelementptr inbounds nuw i8, ptr %3, i64 364
  store i64 0, ptr %.sroa.17.0..sroa_idx506, align 4
  %.sroa.17516.0..sroa_idx517 = getelementptr inbounds nuw i8, ptr %3, i64 372
  store float %.sroa.18.0, ptr %.sroa.17516.0..sroa_idx517, align 4
  %.sroa.18.0..sroa_idx538 = getelementptr inbounds nuw i8, ptr %3, i64 376
  store float %.sroa.18.0, ptr %.sroa.18.0..sroa_idx538, align 4
  %.sroa.19.0..sroa_idx559 = getelementptr inbounds nuw i8, ptr %3, i64 380
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.19.0..sroa_idx559, ptr noundef nonnull align 4 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 380), i64 40, i1 false), !tbaa.struct !192
  %i.r = load i32, ptr %1, align 4, !tbaa !193    ; 5 uses
  %i.s = icmp ne i32 %i.r, 0
  %i.t = zext i1 %i.s to i32
  store i32 %i.t, ptr %3, align 4, !tbaa !78
  %i.u = and i32 %i.r, 255                        ; 2 uses
  %trunc.i = trunc i32 %i.r to i8
  %i.v = icmp ult i8 %trunc.i, 37
  br i1 %i.v, label %switch.hole_check, label %_blend_legacy_blend_mode.exit

switch.hole_check:                                ; preds = %bb.e
  %trunc.i.mask = and i32 %i.r, 63
  %switch.maskindex = zext nneg i32 %trunc.i.mask to i64
  %switch.shifted = lshr i64 68722622467, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup579, label %_blend_legacy_blend_mode.exit

switch.lookup579:                                 ; preds = %switch.hole_check
  %trunc.i.mask600 = and i32 %i.r, 63
  %i.w = zext nneg i32 %trunc.i.mask600 to i64
  %switch.gep580 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._blend_legacy_blend_mode, i64 %i.w
  %switch.load581 = load i32, ptr %switch.gep580, align 4
  br label %_blend_legacy_blend_mode.exit

_blend_legacy_blend_mode.exit:                    ; preds = %switch.lookup579, %switch.hole_check, %bb.e
  %.not.i380 = phi i32 [ %i.u, %bb.e ], [ %switch.load581, %switch.lookup579 ], [ %i.u, %switch.hole_check ]
  store i32 %.not.i380, ptr %.sroa.15.0..sroa_idx453, align 4, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.y = load float, ptr %i.x, align 4, !tbaa !195
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  store float %i.y, ptr %i.z, align 4, !tbaa !91
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !196
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !150
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.ad, align 4, !tbaa !153
  br label %_fix_masks_combine.exit

bb.f:                                             ; preds = %_develop_blend_params_is_all_zero.exit
  %i.ae = icmp eq i32 %2, 2
  %or.cond3 = and i1 %i.ae, %i.q
  br i1 %or.cond3, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %.not373 = icmp eq i32 %5, 144
  br i1 %.not373, label %bb.h, label %_fix_masks_combine.exit

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %3, align 4, !tbaa !82
  %.sroa.14.0..sroa_idx434 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.0.i581, ptr %.sroa.14.0..sroa_idx434, align 4, !tbaa !82
  %.sroa.15.0..sroa_idx454 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(348) %.sroa.15.0..sroa_idx454, ptr noundef nonnull align 4 dereferenceable(348) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 8), i64 348, i1 false), !tbaa.struct !191
  %.sroa.15463.0..sroa_idx466 = getelementptr inbounds nuw i8, ptr %3, i64 356
  store float %.sroa.18.0, ptr %.sroa.15463.0..sroa_idx466, align 4
  %.sroa.16.0..sroa_idx487 = getelementptr inbounds nuw i8, ptr %3, i64 360
  store float %.sroa.18.0, ptr %.sroa.16.0..sroa_idx487, align 4
  %.sroa.17.0..sroa_idx507 = getelementptr inbounds nuw i8, ptr %3, i64 364
  store i64 0, ptr %.sroa.17.0..sroa_idx507, align 4
  %.sroa.17516.0..sroa_idx519 = getelementptr inbounds nuw i8, ptr %3, i64 372
  store float %.sroa.18.0, ptr %.sroa.17516.0..sroa_idx519, align 4
  %.sroa.18.0..sroa_idx540 = getelementptr inbounds nuw i8, ptr %3, i64 376
  store float %.sroa.18.0, ptr %.sroa.18.0..sroa_idx540, align 4
  %.sroa.19.0..sroa_idx560 = getelementptr inbounds nuw i8, ptr %3, i64 380
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.19.0..sroa_idx560, ptr noundef nonnull align 4 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 380), i64 40, i1 false), !tbaa.struct !192
  %i.af = load i32, ptr %1, align 4, !tbaa !197   ; 5 uses
  %i.ag = icmp ne i32 %i.af, 0                    ; 2 uses
  %i.ah = zext i1 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !199 ; 3 uses
  %.not374.inv = icmp slt i32 %i.aj, 0
  %i.ak = and i1 %i.ag, %.not374.inv
  %spec.select = select i1 %i.ak, i32 4, i32 0
  %i.al = or disjoint i32 %spec.select, %i.ah
  store i32 %i.al, ptr %3, align 4, !tbaa !78
  %i.am = and i32 %i.af, 255                      ; 2 uses
  %trunc.i381 = trunc i32 %i.af to i8
  %i.an = icmp ult i8 %trunc.i381, 37
  br i1 %i.an, label %switch.hole_check583, label %_blend_legacy_blend_mode.exit383

switch.hole_check583:                             ; preds = %bb.h
  %trunc.i381.mask = and i32 %i.af, 63
  %switch.maskindex585 = zext nneg i32 %trunc.i381.mask to i64
  %switch.shifted586 = lshr i64 68722622467, %switch.maskindex585
  %switch.lobit587 = trunc i64 %switch.shifted586 to i1
  br i1 %switch.lobit587, label %switch.lookup584, label %_blend_legacy_blend_mode.exit383

switch.lookup584:                                 ; preds = %switch.hole_check583
  %trunc.i381.mask599 = and i32 %i.af, 63
  %i.ao = zext nneg i32 %trunc.i381.mask599 to i64
  %switch.gep588 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._blend_legacy_blend_mode, i64 %i.ao
  %switch.load589 = load i32, ptr %switch.gep588, align 4
  br label %_blend_legacy_blend_mode.exit383

_blend_legacy_blend_mode.exit383:                 ; preds = %switch.lookup584, %switch.hole_check583, %bb.h
  %.not.i382 = phi i32 [ %i.am, %bb.h ], [ %switch.load589, %switch.lookup584 ], [ %i.am, %switch.hole_check583 ] ; 2 uses
  %i.ap = add i64 %i.b, 8
  %i.aq = add i64 %i.b, 196
  %i.ar = add i64 %i.a, 4
  %i.as = add i64 %i.a, 144
  %rt.bound0 = icmp ult i64 %i.ap, %i.as
  %rt.bound1 = icmp ult i64 %i.ar, %i.aq
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %_blend_legacy_blend_mode.exit383.rtscalar, label %_blend_legacy_blend_mode.exit383.rtvec

bb.i:                                             ; preds = %bb.f
  %i.at = icmp eq i32 %2, 3
  %or.cond5 = and i1 %i.at, %i.q
  br i1 %or.cond5, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %.not371 = icmp eq i32 %5, 272
  br i1 %.not371, label %bb.k, label %_fix_masks_combine.exit

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %3, align 4, !tbaa !82
  %.sroa.14.0..sroa_idx436 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.0.i581, ptr %.sroa.14.0..sroa_idx436, align 4, !tbaa !82
  %.sroa.15.0..sroa_idx455 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(348) %.sroa.15.0..sroa_idx455, ptr noundef nonnull align 4 dereferenceable(348) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 8), i64 348, i1 false), !tbaa.struct !191
  %.sroa.15463.0..sroa_idx468 = getelementptr inbounds nuw i8, ptr %3, i64 356
  store float %.sroa.18.0, ptr %.sroa.15463.0..sroa_idx468, align 4
  %.sroa.16.0..sroa_idx489 = getelementptr inbounds nuw i8, ptr %3, i64 360
  store float %.sroa.18.0, ptr %.sroa.16.0..sroa_idx489, align 4
  %.sroa.17.0..sroa_idx508 = getelementptr inbounds nuw i8, ptr %3, i64 364
  store i64 0, ptr %.sroa.17.0..sroa_idx508, align 4
  %.sroa.17516.0..sroa_idx521 = getelementptr inbounds nuw i8, ptr %3, i64 372
  store float %.sroa.18.0, ptr %.sroa.17516.0..sroa_idx521, align 4
  %.sroa.18.0..sroa_idx542 = getelementptr inbounds nuw i8, ptr %3, i64 376
  store float %.sroa.18.0, ptr %.sroa.18.0..sroa_idx542, align 4
  %.sroa.19.0..sroa_idx561 = getelementptr inbounds nuw i8, ptr %3, i64 380
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.19.0..sroa_idx561, ptr noundef nonnull align 4 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 380), i64 40, i1 false), !tbaa.struct !192
  %i.au = load i32, ptr %1, align 4, !tbaa !200   ; 5 uses
  %i.av = icmp ne i32 %i.au, 0                    ; 2 uses
  %i.aw = zext i1 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !202 ; 2 uses
  %.not372.inv = icmp slt i32 %i.ay, 0
  %i.az = and i1 %i.av, %.not372.inv
  %spec.select376 = select i1 %i.az, i32 4, i32 0
  %i.ba = or disjoint i32 %spec.select376, %i.aw
  store i32 %i.ba, ptr %3, align 4, !tbaa !78
  %i.bb = and i32 %i.au, 255                      ; 2 uses
  %trunc.i384 = trunc i32 %i.au to i8
  %i.bc = icmp ult i8 %trunc.i384, 37
  br i1 %i.bc, label %switch.hole_check591, label %_blend_legacy_blend_mode.exit386

switch.hole_check591:                             ; preds = %bb.k
  %trunc.i384.mask = and i32 %i.au, 63
  %switch.maskindex593 = zext nneg i32 %trunc.i384.mask to i64
  %switch.shifted594 = lshr i64 68722622467, %switch.maskindex593
  %switch.lobit595 = trunc i64 %switch.shifted594 to i1
  br i1 %switch.lobit595, label %switch.lookup592, label %_blend_legacy_blend_mode.exit386

switch.lookup592:                                 ; preds = %switch.hole_check591
  %trunc.i384.mask598 = and i32 %i.au, 63
  %i.bd = zext nneg i32 %trunc.i384.mask598 to i64
  %switch.gep596 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._blend_legacy_blend_mode, i64 %i.bd
  %switch.load597 = load i32, ptr %switch.gep596, align 4
  br label %_blend_legacy_blend_mode.exit386

_blend_legacy_blend_mode.exit386:                 ; preds = %switch.lookup592, %switch.hole_check591, %bb.k
  %.not.i385 = phi i32 [ %i.bb, %bb.k ], [ %switch.load597, %switch.lookup592 ], [ %i.bb, %switch.hole_check591 ]
  store i32 %.not.i385, ptr %.sroa.15.0..sroa_idx455, align 4, !tbaa !35
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bf = load float, ptr %i.be, align 4, !tbaa !203
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16
  store float %i.bf, ptr %i.bg, align 4, !tbaa !91
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !204
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !150
  %i.bk = and i32 %i.ay, 2147483647
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !37
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.bm, ptr noundef nonnull align 4 dereferenceable(256) %i.bn, i64 256, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.bo, align 4, !tbaa !153
  br label %_fix_masks_combine.exit

bb.l:                                             ; preds = %bb.i
  %i.bp = icmp eq i32 %2, 4
  %or.cond7 = and i1 %i.bp, %i.q
  br i1 %or.cond7, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %.not369 = icmp eq i32 %5, 276
  br i1 %.not369, label %bb.n, label %_fix_masks_combine.exit

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %3, align 4, !tbaa !82
  %.sroa.14.0..sroa_idx438 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.0.i581, ptr %.sroa.14.0..sroa_idx438, align 4, !tbaa !82
  %.sroa.15.0..sroa_idx456 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(348) %.sroa.15.0..sroa_idx456, ptr noundef nonnull align 4 dereferenceable(348) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 8), i64 348, i1 false), !tbaa.struct !191
  %.sroa.15463.0..sroa_idx470 = getelementptr inbounds nuw i8, ptr %3, i64 356
  store float %.sroa.18.0, ptr %.sroa.15463.0..sroa_idx470, align 4
  %.sroa.16.0..sroa_idx491 = getelementptr inbounds nuw i8, ptr %3, i64 360
  store float %.sroa.18.0, ptr %.sroa.16.0..sroa_idx491, align 4
  %.sroa.17.0..sroa_idx509 = getelementptr inbounds nuw i8, ptr %3, i64 364
  store i64 0, ptr %.sroa.17.0..sroa_idx509, align 4
  %.sroa.17516.0..sroa_idx523 = getelementptr inbounds nuw i8, ptr %3, i64 372
  store float %.sroa.18.0, ptr %.sroa.17516.0..sroa_idx523, align 4
  %.sroa.18.0..sroa_idx544 = getelementptr inbounds nuw i8, ptr %3, i64 376
  store float %.sroa.18.0, ptr %.sroa.18.0..sroa_idx544, align 4
  %.sroa.19.0..sroa_idx562 = getelementptr inbounds nuw i8, ptr %3, i64 380
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.19.0..sroa_idx562, ptr noundef nonnull align 4 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 380), i64 40, i1 false), !tbaa.struct !192
  %i.bq = load i32, ptr %1, align 4, !tbaa !205   ; 2 uses
  %i.br = icmp ne i32 %i.bq, 0                    ; 2 uses
  %i.bs = zext i1 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bu = tail call fastcc i32 @_blend_legacy_blend_mode(i32 noundef %i.bq)
  store i32 %i.bu, ptr %.sroa.15.0..sroa_idx456, align 4, !tbaa !35
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !207
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store float %i.bw, ptr %i.bx, align 4, !tbaa !91
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !208
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 40
  store float %i.cb, ptr %i.cc, align 4, !tbaa !87
  %i.cd = load i32, ptr %i.bt, align 4, !tbaa !209
  %i.ce = load <2 x i32>, ptr %i.by, align 4, !tbaa !82
  %.not370.inv = icmp slt i32 %i.cd, 0
  %i.cf = and i1 %i.br, %.not370.inv
  %spec.select377 = select i1 %i.cf, i32 4, i32 0
  %i.cg = or disjoint i32 %spec.select377, %i.bs
  store i32 %i.cg, ptr %3, align 4, !tbaa !78
  %i.ch = and <2 x i32> %i.ce, <i32 -1, i32 2147483647>
  store <2 x i32> %i.ch, ptr %i.bz, align 4, !tbaa !82
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.ci, ptr noundef nonnull align 4 dereferenceable(256) %i.cj, i64 256, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.ck, align 4, !tbaa !153
  br label %_fix_masks_combine.exit

bb.o:                                             ; preds = %bb.l
  %i.cl = icmp eq i32 %2, 5
  %or.cond9 = and i1 %i.cl, %i.q
  br i1 %or.cond9, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %.not367 = icmp eq i32 %5, 300
  br i1 %.not367, label %bb.q, label %_fix_masks_combine.exit

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %3, align 4, !tbaa !82
  %.sroa.14.0..sroa_idx440 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.0.i581, ptr %.sroa.14.0..sroa_idx440, align 4, !tbaa !82
  %.sroa.15.0..sroa_idx457 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(348) %.sroa.15.0..sroa_idx457, ptr noundef nonnull align 4 dereferenceable(348) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 8), i64 348, i1 false), !tbaa.struct !191
  %.sroa.15463.0..sroa_idx472 = getelementptr inbounds nuw i8, ptr %3, i64 356
  store float %.sroa.18.0, ptr %.sroa.15463.0..sroa_idx472, align 4
  %.sroa.16.0..sroa_idx493 = getelementptr inbounds nuw i8, ptr %3, i64 360
  store float %.sroa.18.0, ptr %.sroa.16.0..sroa_idx493, align 4
  %.sroa.17.0..sroa_idx510 = getelementptr inbounds nuw i8, ptr %3, i64 364
  store i64 0, ptr %.sroa.17.0..sroa_idx510, align 4
  %.sroa.17516.0..sroa_idx525 = getelementptr inbounds nuw i8, ptr %3, i64 372
  store float %.sroa.18.0, ptr %.sroa.17516.0..sroa_idx525, align 4
  %.sroa.18.0..sroa_idx546 = getelementptr inbounds nuw i8, ptr %3, i64 376
  store float %.sroa.18.0, ptr %.sroa.18.0..sroa_idx546, align 4
  %.sroa.19.0..sroa_idx563 = getelementptr inbounds nuw i8, ptr %3, i64 380
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.19.0..sroa_idx563, ptr noundef nonnull align 4 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 380), i64 40, i1 false), !tbaa.struct !192
  %i.cm = load i32, ptr %1, align 4, !tbaa !210   ; 2 uses
  store i32 %i.cm, ptr %3, align 4, !tbaa !78
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !212
  %i.cp = tail call fastcc i32 @_blend_legacy_blend_mode(i32 noundef %i.co)
  store i32 %i.cp, ptr %.sroa.15.0..sroa_idx457, align 4, !tbaa !35
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !213
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 16
  store float %i.cr, ptr %i.cs, align 4, !tbaa !91
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.cv = load <2 x i32>, ptr %i.ct, align 4, !tbaa !82
  %i.cw = load i32, ptr %i.ct, align 4, !tbaa !214 ; 3 uses
  store <2 x i32> %i.cv, ptr %i.cu, align 4, !tbaa !82
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !215
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 40
  store float %i.cy, ptr %i.cz, align 4, !tbaa !87
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.db = load i32, ptr %i.da, align 4, !tbaa !216 ; 3 uses
  %i.dc = or i32 %i.db, 31
  %.not368571 = icmp slt i32 %i.db, 0
  %i.dd = select i1 %.not368571, i32 %i.dc, i32 %i.db
  %i.de = and i32 %i.dd, 2147483647
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.de, ptr %i.df, align 4, !tbaa !37
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.dg, ptr noundef nonnull align 4 dereferenceable(256) %i.dh, i64 256, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.di, align 4, !tbaa !153
  %i.dj = and i32 %i.cm, 2
  %.not.i387 = icmp eq i32 %i.dj, 0
  br i1 %.not.i387, label %_fix_masks_combine.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dk = and i32 %i.cw, 5
  switch i32 %i.dk, label %_fix_masks_combine.exit [
    i32 1, label %bb.s
    i32 5, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.dl = and i32 %i.cw, -6
  %i.dm = or disjoint i32 %i.dl, 4
  br label %.sink.split.i

bb.t:                                             ; preds = %bb.r
  %i.dn = and i32 %i.cw, -6
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.t, %bb.s
  %.sink.i = phi i32 [ %i.dm, %bb.s ], [ %i.dn, %bb.t ]
  store i32 %.sink.i, ptr %i.cu, align 4, !tbaa !141
  br label %_fix_masks_combine.exit

bb.u:                                             ; preds = %bb.o
  %i.do = icmp eq i32 %2, 6
  %or.cond11 = and i1 %i.do, %i.q
  br i1 %or.cond11, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  %.not366 = icmp eq i32 %5, 300
  br i1 %.not366, label %bb.w, label %_fix_masks_combine.exit

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %3, align 4, !tbaa !82
  %.sroa.14.0..sroa_idx442 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.0.i581, ptr %.sroa.14.0..sroa_idx442, align 4, !tbaa !82
  %.sroa.15.0..sroa_idx458 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(348) %.sroa.15.0..sroa_idx458, ptr noundef nonnull align 4 dereferenceable(348) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 8), i64 348, i1 false), !tbaa.struct !191
  %.sroa.15463.0..sroa_idx474 = getelementptr inbounds nuw i8, ptr %3, i64 356
  store float %.sroa.18.0, ptr %.sroa.15463.0..sroa_idx474, align 4
  %.sroa.16.0..sroa_idx495 = getelementptr inbounds nuw i8, ptr %3, i64 360
  store float %.sroa.18.0, ptr %.sroa.16.0..sroa_idx495, align 4
  %.sroa.17.0..sroa_idx511 = getelementptr inbounds nuw i8, ptr %3, i64 364
  store i64 0, ptr %.sroa.17.0..sroa_idx511, align 4
  %.sroa.17516.0..sroa_idx527 = getelementptr inbounds nuw i8, ptr %3, i64 372
  store float %.sroa.18.0, ptr %.sroa.17516.0..sroa_idx527, align 4
  %.sroa.18.0..sroa_idx548 = getelementptr inbounds nuw i8, ptr %3, i64 376
  store float %.sroa.18.0, ptr %.sroa.18.0..sroa_idx548, align 4
  %.sroa.19.0..sroa_idx564 = getelementptr inbounds nuw i8, ptr %3, i64 380
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.19.0..sroa_idx564, ptr noundef nonnull align 4 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 380), i64 40, i1 false), !tbaa.struct !192
  %i.dp = load i32, ptr %1, align 4, !tbaa !217   ; 2 uses
  store i32 %i.dp, ptr %3, align 4, !tbaa !78
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !219
  %i.ds = tail call fastcc i32 @_blend_legacy_blend_mode(i32 noundef %i.dr)
  store i32 %i.ds, ptr %.sroa.15.0..sroa_idx458, align 4, !tbaa !35
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.du = load float, ptr %i.dt, align 4, !tbaa !220
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 16
  store float %i.du, ptr %i.dv, align 4, !tbaa !91
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.dy = load <2 x i32>, ptr %i.dw, align 4, !tbaa !82
  %i.dz = load i32, ptr %i.dw, align 4, !tbaa !221 ; 3 uses
  store <2 x i32> %i.dy, ptr %i.dx, align 4, !tbaa !82
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !222
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 40
  store float %i.eb, ptr %i.ec, align 4, !tbaa !87
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !223
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !37
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.eg, ptr noundef nonnull align 4 dereferenceable(256) %i.eh, i64 256, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.ei, align 4, !tbaa !153
  %i.ej = and i32 %i.dp, 2
  %.not.i388 = icmp eq i32 %i.ej, 0
  br i1 %.not.i388, label %_fix_masks_combine.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ek = and i32 %i.dz, 5
  switch i32 %i.ek, label %_fix_masks_combine.exit [
    i32 1, label %bb.y
    i32 5, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  %i.el = and i32 %i.dz, -6
  %i.em = or disjoint i32 %i.el, 4
  br label %.sink.split.i389

bb.z:                                             ; preds = %bb.x
  %i.en = and i32 %i.dz, -6
  br label %.sink.split.i389

.sink.split.i389:                                 ; preds = %bb.z, %bb.y
  %.sink.i390 = phi i32 [ %i.em, %bb.y ], [ %i.en, %bb.z ]
  store i32 %.sink.i390, ptr %i.dx, align 4, !tbaa !141
  br label %_fix_masks_combine.exit

bb.aa:                                            ; preds = %bb.u
  %i.eo = icmp eq i32 %2, 7
  %or.cond13 = and i1 %i.eo, %i.q
  br i1 %or.cond13, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %.not365 = icmp eq i32 %5, 300
  br i1 %.not365, label %bb.ac, label %_fix_masks_combine.exit

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %3, align 4, !tbaa !82
  %.sroa.14.0..sroa_idx444 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.0.i581, ptr %.sroa.14.0..sroa_idx444, align 4, !tbaa !82
  %.sroa.15.0..sroa_idx459 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(348) %.sroa.15.0..sroa_idx459, ptr noundef nonnull align 4 dereferenceable(348) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 8), i64 348, i1 false), !tbaa.struct !191
  %.sroa.15463.0..sroa_idx476 = getelementptr inbounds nuw i8, ptr %3, i64 356
  store float %.sroa.18.0, ptr %.sroa.15463.0..sroa_idx476, align 4
  %.sroa.16.0..sroa_idx497 = getelementptr inbounds nuw i8, ptr %3, i64 360
  store float %.sroa.18.0, ptr %.sroa.16.0..sroa_idx497, align 4
  %.sroa.17.0..sroa_idx512 = getelementptr inbounds nuw i8, ptr %3, i64 364
  store i64 0, ptr %.sroa.17.0..sroa_idx512, align 4
  %.sroa.17516.0..sroa_idx529 = getelementptr inbounds nuw i8, ptr %3, i64 372
  store float %.sroa.18.0, ptr %.sroa.17516.0..sroa_idx529, align 4
  %.sroa.18.0..sroa_idx550 = getelementptr inbounds nuw i8, ptr %3, i64 376
  store float %.sroa.18.0, ptr %.sroa.18.0..sroa_idx550, align 4
  %.sroa.19.0..sroa_idx565 = getelementptr inbounds nuw i8, ptr %3, i64 380
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.19.0..sroa_idx565, ptr noundef nonnull align 4 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 380), i64 40, i1 false), !tbaa.struct !192
  %i.ep = load i32, ptr %1, align 4, !tbaa !224   ; 2 uses
  store i32 %i.ep, ptr %3, align 4, !tbaa !78
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !226
  %i.es = tail call fastcc i32 @_blend_legacy_blend_mode(i32 noundef %i.er)
  store i32 %i.es, ptr %.sroa.15.0..sroa_idx459, align 4, !tbaa !35
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eu = load float, ptr %i.et, align 4, !tbaa !227
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 16
  store float %i.eu, ptr %i.ev, align 4, !tbaa !91
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.ey = load <2 x i32>, ptr %i.ew, align 4, !tbaa !82
  %i.ez = load i32, ptr %i.ew, align 4, !tbaa !228 ; 3 uses
  store <2 x i32> %i.ey, ptr %i.ex, align 4, !tbaa !82
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !229
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 40
  store float %i.fb, ptr %i.fc, align 4, !tbaa !87
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !230
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !37
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.fg, ptr noundef nonnull align 4 dereferenceable(256) %i.fh, i64 256, i1 false)
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.fi, align 4, !tbaa !153
  %i.fj = and i32 %i.ep, 2
  %.not.i392 = icmp eq i32 %i.fj, 0
  br i1 %.not.i392, label %_fix_masks_combine.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fk = and i32 %i.ez, 5
  switch i32 %i.fk, label %_fix_masks_combine.exit [
    i32 1, label %bb.ae
    i32 5, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.fl = and i32 %i.ez, -6
  %i.fm = or disjoint i32 %i.fl, 4
  br label %.sink.split.i393

bb.af:                                            ; preds = %bb.ad
  %i.fn = and i32 %i.ez, -6
  br label %.sink.split.i393

.sink.split.i393:                                 ; preds = %bb.af, %bb.ae
  %.sink.i394 = phi i32 [ %i.fm, %bb.ae ], [ %i.fn, %bb.af ]
  store i32 %.sink.i394, ptr %i.ex, align 4, !tbaa !141
  br label %_fix_masks_combine.exit

bb.ag:                                            ; preds = %bb.aa
  %i.fo = icmp eq i32 %2, 8
  %or.cond15 = and i1 %i.fo, %i.q
  br i1 %or.cond15, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %.not364 = icmp eq i32 %5, 316
  br i1 %.not364, label %bb.ai, label %_fix_masks_combine.exit

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %3, align 4, !tbaa !82
  %.sroa.14.0..sroa_idx446 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.0.i581, ptr %.sroa.14.0..sroa_idx446, align 4, !tbaa !82
  %.sroa.15.0..sroa_idx460 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(348) %.sroa.15.0..sroa_idx460, ptr noundef nonnull align 4 dereferenceable(348) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 8), i64 348, i1 false), !tbaa.struct !191
  %.sroa.15463.0..sroa_idx478 = getelementptr inbounds nuw i8, ptr %3, i64 356
  store float %.sroa.18.0, ptr %.sroa.15463.0..sroa_idx478, align 4
  %.sroa.16.0..sroa_idx499 = getelementptr inbounds nuw i8, ptr %3, i64 360
  store float %.sroa.18.0, ptr %.sroa.16.0..sroa_idx499, align 4
  %.sroa.17.0..sroa_idx513 = getelementptr inbounds nuw i8, ptr %3, i64 364
  store i64 0, ptr %.sroa.17.0..sroa_idx513, align 4
  %.sroa.17516.0..sroa_idx531 = getelementptr inbounds nuw i8, ptr %3, i64 372
  store float %.sroa.18.0, ptr %.sroa.17516.0..sroa_idx531, align 4
  %.sroa.18.0..sroa_idx552 = getelementptr inbounds nuw i8, ptr %3, i64 376
  store float %.sroa.18.0, ptr %.sroa.18.0..sroa_idx552, align 4
  %.sroa.19.0..sroa_idx566 = getelementptr inbounds nuw i8, ptr %3, i64 380
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.19.0..sroa_idx566, ptr noundef nonnull align 4 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 380), i64 40, i1 false), !tbaa.struct !192
  %i.fp = load i32, ptr %1, align 4, !tbaa !231   ; 2 uses
  store i32 %i.fp, ptr %3, align 4, !tbaa !78
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !233
  %i.fs = tail call fastcc i32 @_blend_legacy_blend_mode(i32 noundef %i.fr)
  store i32 %i.fs, ptr %.sroa.15.0..sroa_idx460, align 4, !tbaa !35
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !234
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 16
  store float %i.fu, ptr %i.fv, align 4, !tbaa !91
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.fy = load <2 x i32>, ptr %i.fw, align 4, !tbaa !82
  %i.fz = load i32, ptr %i.fw, align 4, !tbaa !235 ; 3 uses
  store <2 x i32> %i.fy, ptr %i.fx, align 4, !tbaa !82
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !236
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.gb, ptr %i.gc, align 4, !tbaa !37
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !237
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 32
  store float %i.ge, ptr %i.gf, align 4, !tbaa !86
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !238
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !90
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gk = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.gl = load <2 x float>, ptr %i.gj, align 4, !tbaa !34
  store <2 x float> %i.gl, ptr %i.gk, align 4, !tbaa !34
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !239
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 48
  store float %i.gn, ptr %i.go, align 4, !tbaa !89
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.gp, ptr noundef nonnull align 4 dereferenceable(256) %i.gq, i64 256, i1 false)
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.gr, align 4, !tbaa !153
  %i.gs = and i32 %i.fp, 2
  %.not.i396 = icmp eq i32 %i.gs, 0
  br i1 %.not.i396, label %_fix_masks_combine.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gt = and i32 %i.fz, 5
  switch i32 %i.gt, label %_fix_masks_combine.exit [
    i32 1, label %bb.ak
    i32 5, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.gu = and i32 %i.fz, -6
  %i.gv = or disjoint i32 %i.gu, 4
  br label %.sink.split.i397

bb.al:                                            ; preds = %bb.aj
  %i.gw = and i32 %i.fz, -6
  br label %.sink.split.i397

.sink.split.i397:                                 ; preds = %bb.al, %bb.ak
  %.sink.i398 = phi i32 [ %i.gv, %bb.ak ], [ %i.gw, %bb.al ]
  store i32 %.sink.i398, ptr %i.fx, align 4, !tbaa !141
  br label %_fix_masks_combine.exit

bb.am:                                            ; preds = %bb.ag
  %i.gx = icmp eq i32 %2, 9
  %or.cond17 = and i1 %i.gx, %i.q
  br i1 %or.cond17, label %bb.an, label %bb.av

bb.an:                                            ; preds = %bb.am
  %.not362 = icmp eq i32 %5, 348
  br i1 %.not362, label %bb.ao, label %_fix_masks_combine.exit

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %3, align 4, !tbaa !82
  %.sroa.14.0..sroa_idx448 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.0.i581, ptr %.sroa.14.0..sroa_idx448, align 4, !tbaa !82
  %.sroa.15.0..sroa_idx461 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(348) %.sroa.15.0..sroa_idx461, ptr noundef nonnull align 4 dereferenceable(348) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 8), i64 348, i1 false), !tbaa.struct !191
  %.sroa.15463.0..sroa_idx480 = getelementptr inbounds nuw i8, ptr %3, i64 356
  store float %.sroa.18.0, ptr %.sroa.15463.0..sroa_idx480, align 4
  %.sroa.16.0..sroa_idx501 = getelementptr inbounds nuw i8, ptr %3, i64 360
  store float %.sroa.18.0, ptr %.sroa.16.0..sroa_idx501, align 4
  %.sroa.17.0..sroa_idx514 = getelementptr inbounds nuw i8, ptr %3, i64 364
  store i64 0, ptr %.sroa.17.0..sroa_idx514, align 4
  %.sroa.17516.0..sroa_idx533 = getelementptr inbounds nuw i8, ptr %3, i64 372
  store float %.sroa.18.0, ptr %.sroa.17516.0..sroa_idx533, align 4
  %.sroa.18.0..sroa_idx554 = getelementptr inbounds nuw i8, ptr %3, i64 376
  store float %.sroa.18.0, ptr %.sroa.18.0..sroa_idx554, align 4
  %.sroa.19.0..sroa_idx567 = getelementptr inbounds nuw i8, ptr %3, i64 380
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.19.0..sroa_idx567, ptr noundef nonnull align 4 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 380), i64 40, i1 false), !tbaa.struct !192
  %i.gy = load i32, ptr %1, align 4, !tbaa !240   ; 3 uses
  store i32 %i.gy, ptr %3, align 4, !tbaa !78
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !242
  %i.hb = tail call fastcc i32 @_blend_legacy_blend_mode(i32 noundef %i.ha)
  store i32 %i.hb, ptr %.sroa.15.0..sroa_idx461, align 4, !tbaa !35
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !243
  %i.he = getelementptr inbounds nuw i8, ptr %3, i64 16
  store float %i.hd, ptr %i.he, align 4, !tbaa !91
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.hh = load <2 x i32>, ptr %i.hf, align 4, !tbaa !82
  %i.hi = load i32, ptr %i.hf, align 4, !tbaa !244 ; 3 uses
  store <2 x i32> %i.hh, ptr %i.hg, align 4, !tbaa !82
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !245
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.hk, ptr %i.hl, align 4, !tbaa !37
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !246
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store float %i.hn, ptr %i.ho, align 4, !tbaa !86
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !247
  %i.hr = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  store i32 %i.hq, ptr %i.hr, align 4, !tbaa !90
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ht = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.hu = load <2 x float>, ptr %i.hs, align 4, !tbaa !34
  store <2 x float> %i.hu, ptr %i.ht, align 4, !tbaa !34
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !248
  %i.hx = getelementptr inbounds nuw i8, ptr %3, i64 48
  store float %i.hw, ptr %i.hx, align 4, !tbaa !89
  %i.hy = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.hy, ptr noundef nonnull align 4 dereferenceable(256) %i.hz, i64 256, i1 false)
  %i.ia = getelementptr inbounds nuw i8, ptr %3, i64 388
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 316 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ia, ptr noundef nonnull align 4 dereferenceable(20) %i.ib, i64 20, i1 false)
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !249
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 408
  store i32 %i.id, ptr %i.ie, align 4, !tbaa !250
  %i.if = load i8, ptr %i.ib, align 4, !tbaa !190
  %.not363 = icmp eq i8 %i.if, 0
  br i1 %.not363, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 340
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !251
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.ii = phi i32 [ %i.ih, %bb.ap ], [ -1, %bb.ao ]
  %i.ij = getelementptr inbounds nuw i8, ptr %3, i64 412
  store i32 %i.ii, ptr %i.ij, align 4, !tbaa !252
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !253
  %i.im = getelementptr inbounds nuw i8, ptr %3, i64 416
  store i32 %i.il, ptr %i.im, align 4, !tbaa !132
  %i.in = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.in, align 4, !tbaa !153
  %i.io = and i32 %i.gy, 2
  %.not.i400 = icmp eq i32 %i.io, 0
  br i1 %.not.i400, label %_fix_masks_combine.exit403, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ip = and i32 %i.hi, 5
  switch i32 %i.ip, label %_fix_masks_combine.exit403 [
    i32 1, label %bb.as
    i32 5, label %bb.at
  ]

bb.as:                                            ; preds = %bb.ar
  %i.iq = and i32 %i.hi, -6
  %i.ir = or disjoint i32 %i.iq, 4
  br label %.sink.split.i401

bb.at:                                            ; preds = %bb.ar
  %i.is = and i32 %i.hi, -6
  br label %.sink.split.i401

.sink.split.i401:                                 ; preds = %bb.at, %bb.as
  %.sink.i402 = phi i32 [ %i.ir, %bb.as ], [ %i.is, %bb.at ]
  store i32 %.sink.i402, ptr %i.hg, align 4, !tbaa !141
  br label %_fix_masks_combine.exit403

_fix_masks_combine.exit403:                       ; preds = %bb.aq, %bb.ar, %.sink.split.i401
  %i.it = and i32 %i.gy, 8
  %.not.i404 = icmp eq i32 %i.it, 0
  br i1 %.not.i404, label %_fix_masks_combine.exit, label %bb.au

bb.au:                                            ; preds = %_fix_masks_combine.exit403
  store float 0.000000e+00, ptr %i.ho, align 4, !tbaa !86
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ht, i8 0, i64 16, i1 false)
  store i32 5, ptr %i.hr, align 4, !tbaa !90
  br label %_fix_masks_combine.exit

bb.av:                                            ; preds = %bb.am
  %i.iu = icmp eq i32 %2, 10
  %or.cond19 = and i1 %i.iu, %i.q
  br i1 %or.cond19, label %bb.aw, label %bb.be

bb.aw:                                            ; preds = %bb.av
  %.not359 = icmp eq i32 %5, 420
  br i1 %.not359, label %bb.ax, label %_fix_masks_combine.exit

bb.ax:                                            ; preds = %bb.aw
  store i32 0, ptr %3, align 4, !tbaa !82
  %.sroa.14.0..sroa_idx450 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.0.i581, ptr %.sroa.14.0..sroa_idx450, align 4, !tbaa !82
  %.sroa.15.0..sroa_idx462 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(348) %.sroa.15.0..sroa_idx462, ptr noundef nonnull align 4 dereferenceable(348) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 8), i64 348, i1 false), !tbaa.struct !191
  %.sroa.15463.0..sroa_idx482 = getelementptr inbounds nuw i8, ptr %3, i64 356
  store float %.sroa.18.0, ptr %.sroa.15463.0..sroa_idx482, align 4
  %.sroa.16.0..sroa_idx503 = getelementptr inbounds nuw i8, ptr %3, i64 360
  store float %.sroa.18.0, ptr %.sroa.16.0..sroa_idx503, align 4
  %.sroa.17.0..sroa_idx515 = getelementptr inbounds nuw i8, ptr %3, i64 364
  store i64 0, ptr %.sroa.17.0..sroa_idx515, align 4
  %.sroa.17516.0..sroa_idx535 = getelementptr inbounds nuw i8, ptr %3, i64 372
  store float %.sroa.18.0, ptr %.sroa.17516.0..sroa_idx535, align 4
  %.sroa.18.0..sroa_idx556 = getelementptr inbounds nuw i8, ptr %3, i64 376
  store float %.sroa.18.0, ptr %.sroa.18.0..sroa_idx556, align 4
  %.sroa.19.0..sroa_idx568 = getelementptr inbounds nuw i8, ptr %3, i64 380
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.19.0..sroa_idx568, ptr noundef nonnull align 4 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 380), i64 40, i1 false), !tbaa.struct !192
  %i.iv = load <2 x i32>, ptr %1, align 4, !tbaa !82
  %i.iw = load i32, ptr %1, align 4, !tbaa !254   ; 2 uses
  store <2 x i32> %i.iv, ptr %3, align 4, !tbaa !82
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !256
  %i.iz = tail call fastcc i32 @_blend_legacy_blend_mode(i32 noundef %i.iy)
  store i32 %i.iz, ptr %.sroa.15.0..sroa_idx462, align 4, !tbaa !35
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.jb = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.jc = load <2 x float>, ptr %i.ja, align 4, !tbaa !34
  store <2 x float> %i.jc, ptr %i.jb, align 4, !tbaa !34
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.jf = load <2 x i32>, ptr %i.jd, align 4, !tbaa !82
  %i.jg = load i32, ptr %i.jd, align 4, !tbaa !257 ; 3 uses
  store <2 x i32> %i.jf, ptr %i.je, align 4, !tbaa !82
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !258
  %i.jj = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.ji, ptr %i.jj, align 4, !tbaa !37
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !259
  %i.jm = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store float %i.jl, ptr %i.jm, align 4, !tbaa !86
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !260
  %i.jp = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  store i32 %i.jo, ptr %i.jp, align 4, !tbaa !90
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.jr = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.js = load <2 x float>, ptr %i.jq, align 4, !tbaa !34
  store <2 x float> %i.js, ptr %i.jr, align 4, !tbaa !34
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !261
  %i.jv = getelementptr inbounds nuw i8, ptr %3, i64 48
  store float %i.ju, ptr %i.jv, align 4, !tbaa !89
  %i.jw = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.jy = load float, ptr %i.jx, align 4          ; 2 uses
  %i.jz = fcmp ord float %i.jy, 0.000000e+00
  %i.ka = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.jy, float -1.000000e+00)
  %i.kb = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ka, float 1.000000e+00)
  %i.kc = select i1 %i.jz, float %i.kb, float 0.000000e+00
  store float %i.kc, ptr %i.jw, align 4, !tbaa !151
  %i.kd = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 68
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.kd, ptr noundef nonnull align 4 dereferenceable(256) %i.ke, i64 256, i1 false)
  %i.kf = getelementptr inbounds nuw i8, ptr %3, i64 324
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 324
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.kf, ptr noundef nonnull align 4 dereferenceable(64) %i.kg, i64 64, i1 false)
  %i.kh = getelementptr inbounds nuw i8, ptr %3, i64 388
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 388 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.kh, ptr noundef nonnull align 4 dereferenceable(20) %i.ki, i64 20, i1 false)
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !262
  %i.kl = getelementptr inbounds nuw i8, ptr %3, i64 408
  store i32 %i.kk, ptr %i.kl, align 4, !tbaa !250
  %i.km = load i8, ptr %i.ki, align 4, !tbaa !190
  %.not361 = icmp eq i8 %i.km, 0
  br i1 %.not361, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 412
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !263
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.kp = phi i32 [ %i.ko, %bb.ay ], [ -1, %bb.ax ]
  %i.kq = getelementptr inbounds nuw i8, ptr %3, i64 412
  store i32 %i.kp, ptr %i.kq, align 4, !tbaa !252
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !264
  %i.kt = getelementptr inbounds nuw i8, ptr %3, i64 416
  store i32 %i.ks, ptr %i.kt, align 4, !tbaa !132
  %i.ku = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.ku, align 4, !tbaa !153
  %i.kv = and i32 %i.iw, 2
  %.not.i405 = icmp eq i32 %i.kv, 0
  br i1 %.not.i405, label %_fix_masks_combine.exit408, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kw = and i32 %i.jg, 5
  switch i32 %i.kw, label %_fix_masks_combine.exit408 [
    i32 1, label %bb.bb
    i32 5, label %bb.bc
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.kx = and i32 %i.jg, -6
  %i.ky = or disjoint i32 %i.kx, 4
  br label %.sink.split.i406

bb.bc:                                            ; preds = %bb.ba
  %i.kz = and i32 %i.jg, -6
  br label %.sink.split.i406

.sink.split.i406:                                 ; preds = %bb.bc, %bb.bb
  %.sink.i407 = phi i32 [ %i.ky, %bb.bb ], [ %i.kz, %bb.bc ]
  store i32 %.sink.i407, ptr %i.je, align 4, !tbaa !141
  br label %_fix_masks_combine.exit408

_fix_masks_combine.exit408:                       ; preds = %bb.az, %bb.ba, %.sink.split.i406
  %i.la = and i32 %i.iw, 8
  %.not.i409 = icmp eq i32 %i.la, 0
  br i1 %.not.i409, label %_fix_masks_combine.exit, label %bb.bd

bb.bd:                                            ; preds = %_fix_masks_combine.exit408
  store float 0.000000e+00, ptr %i.jm, align 4, !tbaa !86
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jr, i8 0, i64 16, i1 false)
  store i32 5, ptr %i.jp, align 4, !tbaa !90
  br label %_fix_masks_combine.exit

bb.be:                                            ; preds = %bb.av
  %i.lb = icmp eq i32 %2, 11
  %or.cond21 = and i1 %i.lb, %i.q
  br i1 %or.cond21, label %bb.bf, label %bb.bn

bb.bf:                                            ; preds = %bb.be
  %.not357 = icmp eq i32 %5, 420
  br i1 %.not357, label %bb.bg, label %_fix_masks_combine.exit

bb.bg:                                            ; preds = %bb.bf
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(420) %3, ptr noundef nonnull align 4 dereferenceable(420) %1, i64 420, i1 false), !tbaa.struct !265
  %i.lc = load i32, ptr %3, align 4, !tbaa !78    ; 2 uses
  %i.ld = and i32 %i.lc, 2
  %.not.i411 = icmp eq i32 %i.ld, 0
  br i1 %.not.i411, label %_fix_masks_combine.exit414, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.le = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !141 ; 3 uses
  %i.lg = and i32 %i.lf, 5
  switch i32 %i.lg, label %_fix_masks_combine.exit414 [
    i32 1, label %bb.bi
    i32 5, label %bb.bj
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.lh = and i32 %i.lf, -6
  %i.li = or disjoint i32 %i.lh, 4
  br label %.sink.split.i412

bb.bj:                                            ; preds = %bb.bh
  %i.lj = and i32 %i.lf, -6
  br label %.sink.split.i412

.sink.split.i412:                                 ; preds = %bb.bj, %bb.bi
  %.sink.i413 = phi i32 [ %i.li, %bb.bi ], [ %i.lj, %bb.bj ]
  store i32 %.sink.i413, ptr %i.le, align 4, !tbaa !141
  br label %_fix_masks_combine.exit414

_fix_masks_combine.exit414:                       ; preds = %bb.bg, %bb.bh, %.sink.split.i412
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 388
  %i.ll = load i8, ptr %i.lk, align 4, !tbaa !190
  %.not358 = icmp eq i8 %i.ll, 0
  br i1 %.not358, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_fix_masks_combine.exit414
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 412
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !252
  br label %bb.bl

bb.bl:                                            ; preds = %_fix_masks_combine.exit414, %bb.bk
  %i.lo = phi i32 [ %i.ln, %bb.bk ], [ -1, %_fix_masks_combine.exit414 ]
  %i.lp = getelementptr inbounds nuw i8, ptr %3, i64 412
  store i32 %i.lo, ptr %i.lp, align 4, !tbaa !252
  %i.lq = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.lq, align 4, !tbaa !153
  %i.lr = and i32 %i.lc, 8
  %.not.i415 = icmp eq i32 %i.lr, 0
  br i1 %.not.i415, label %_fix_masks_combine.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ls = getelementptr inbounds nuw i8, ptr %3, i64 32
  store float 0.000000e+00, ptr %i.ls, align 4, !tbaa !86
  %i.lt = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.lu = getelementptr inbounds nuw i8, ptr %3, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.lt, i8 0, i64 16, i1 false)
  store i32 5, ptr %i.lu, align 4, !tbaa !90
  br label %_fix_masks_combine.exit

bb.bn:                                            ; preds = %bb.be
  %i.lv = icmp eq i32 %2, 12
  %or.cond23 = and i1 %i.lv, %i.q
  br i1 %or.cond23, label %bb.bo, label %bb.bt

end_hunk_1
