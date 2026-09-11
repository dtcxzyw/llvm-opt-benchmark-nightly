Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_cacorrect?download=true
inline.NumInlined: 74
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 80
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.dt_introspection_t = type { i32, i32, ptr, i64, ptr, i64, i64 }

@.str = private unnamed_addr constant [26 x i8] c"raw chromatic aberrations\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"correct chromatic aberrations for Bayer sensors\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"corrective\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"linear, raw, scene-referred\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"linear, raw\00", align 1
@darktable = external local_unnamed_addr global %struct.darktable_t, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"[cacorrect] out of memory, skipping\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"[cacorrect] blockdenom vanishes\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"[cacorrect] restrict fit to linear, numblox = %d \00", align 1
@.str.8 = private unnamed_addr constant [68 x i8] c"[cacorrect] can't solve linear equations for colour %d direction %d\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"bayer\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"other\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"iterations\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"iteration runs, default is twice\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"avoidshift\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"activate colorshift correction for blue & red channels\00", align 1
@.str.15 = private unnamed_addr constant [89 x i8] c"automatic chromatic aberration correction\0Aonly for Bayer raw files with 3 color channels\00", align 1
@introspection = internal global %struct.dt_introspection_t { i32 8, i32 2, ptr @.str.32, i64 8, ptr getelementptr (i8, ptr @introspection_linear, i64 176), i64 1120, i64 688 }, align 8
@introspection_init.f1 = internal global [6 x { ptr, i32, [4 x i8], ptr }] [{ ptr, i32, [4 x i8], ptr } { ptr @.str.16, i32 1, [4 x i8] zeroinitializer, ptr @.str.17 }, { ptr, i32, [4 x i8], ptr } { ptr @.str.18, i32 2, [4 x i8] zeroinitializer, ptr @.str.19 }, { ptr, i32, [4 x i8], ptr } { ptr @.str.20, i32 3, [4 x i8] zeroinitializer, ptr @.str.21 }, { ptr, i32, [4 x i8], ptr } { ptr @.str.22, i32 4, [4 x i8] zeroinitializer, ptr @.str.23 }, { ptr, i32, [4 x i8], ptr } { ptr @.str.24, i32 5, [4 x i8] zeroinitializer, ptr @.str.25 }, { ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.16 = private unnamed_addr constant [18 x i8] c"CACORRETC_MULTI_1\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"once\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"CACORRETC_MULTI_2\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"twice\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"CACORRETC_MULTI_3\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"three times\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"CACORRETC_MULTI_4\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"four times\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"CACORRETC_MULTI_5\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"five times\00", align 1
@introspection_init.f2 = internal global [3 x ptr] [ptr @introspection_linear, ptr getelementptr (i8, ptr @introspection_linear, i64 88), ptr null], align 16
@.str.26 = private unnamed_addr constant [7 x i8] c"halign\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"xalign\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"ellipsize\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"avoid colorshift\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"dt_iop_cacorrect_multi_t\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"dt_iop_cacorrect_params_t\00", align 1
@.str.33 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@introspection_linear = internal global <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, [4 x i8] }, [16 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } }> <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, [4 x i8] }, [16 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.29, ptr @.str.13, ptr @.str.13, ptr @.str.30, i64 4, i64 0, ptr null }, i32 0, [4 x i8] zeroinitializer }, [16 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.31, ptr @.str.11, ptr @.str.11, ptr @.str.11, i64 4, i64 4, ptr null }, i64 5, ptr null, i32 2, [4 x i8] zeroinitializer } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.32, ptr @.str.33, ptr @.str.33, ptr @.str.33, i64 8, i64 0, ptr null }, i64 2, ptr null }, [8 x i8] zeroinitializer }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } zeroinitializer }>, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_dt_version() local_unnamed_addr #0 {
bb.a:
  ret i32 25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_mod_version() local_unnamed_addr #0 {
bb.a:
  ret i32 2
}

; Function Attrs: nounwind uwtable
define ptr @name() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #20
  ret ptr %i.a
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @description(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #20
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #20
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #20
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #20
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #20
  %i.f = tail call ptr @dt_iop_set_description(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e) #20
  ret ptr %i.f
}

declare ptr @dt_iop_set_description(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #0 {
bb.a:
  ret i32 40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 128
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @legacy_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i32 %2, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #21 ; 3 uses
  store i32 0, ptr %i.b, align 4, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 1, ptr %i.c, align 4, !tbaa !57
  store ptr %i.b, ptr %3, align 8, !tbaa !58
  store i32 8, ptr %4, align 4, !tbaa !12
  store i32 2, ptr %5, align 4, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nounwind uwtable
define void @process(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [2 x [2 x [16 x double]]], align 16 ; 8 uses
  %i.b = alloca [2 x [2 x float]], align 16       ; 6 uses
  %i.c = alloca [2 x [3 x i32]], align 16         ; 6 uses
  %i.d = alloca [3 x i32], align 4                ; 6 uses
  %i.e = alloca [3 x i32], align 4                ; 6 uses
  %i.f = alloca [3 x i32], align 4                ; 6 uses
  %i.g = alloca [3 x i32], align 4                ; 6 uses
  %i.h = alloca [2 x [3 x [2 x float]]], align 16 ; 14 uses
  %i.i = alloca [3 x float], align 4              ; 7 uses
  %i.j = alloca [3 x float], align 4              ; 7 uses
  %i.k = alloca [3 x ptr], align 16               ; 251 uses
  %i.l = alloca [2 x [2 x [256 x double]]], align 16 ; 212 uses
  %i.m = alloca [2 x [2 x [16 x double]]], align 16 ; 8 uses
  %.sroa.0 = alloca i32, align 8                  ; 6 uses
  %.sroa.6 = alloca i32, align 4                  ; 6 uses
  %i.n = alloca [1 x float], align 4              ; 5 uses
  %i.o = alloca [1 x float], align 4              ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 516
  %i.q = load i32, ptr %i.p, align 4, !tbaa !150  ; 256 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !151
  %i.t = getelementptr i8, ptr %i.s, i64 644
  %.val = load i32, ptr %i.t, align 4, !tbaa !166 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 16, !tbaa !32  ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !168
  %.not = icmp ne i32 %i.w, 0
  %i.x = and i32 %.val, 4
  %.not1778 = icmp eq i32 %i.x, 0
  %i.y = select i1 %.not, i1 %.not1778, i1 false  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !169 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ad = load <2 x i32>, ptr %i.ab, align 4, !tbaa !12 ; 3 uses
  %i.ae = extractelement <2 x i32> %i.ad, i64 0   ; 45 uses
  %i.af = sext i32 %i.ae to i64                   ; 31 uses
  %i.ag = tail call i64 @dt_round_size(i64 noundef %i.af, i64 noundef 16) #20
  %i.ah = extractelement <2 x i32> %i.ad, i64 1   ; 19 uses
  %i.ai = add nsw i32 %i.ah, 2
  %i.aj = sext i32 %i.ai to i64
  %i.ak = mul i64 %i.ag, %i.aj                    ; 2 uses
  %i.al = add nsw i32 %i.ae, 1
  %i.am = sdiv i32 %i.al, 2                       ; 17 uses
  %i.an = add nsw i32 %i.ah, 1
  %i.ao = sdiv i32 %i.an, 2                       ; 6 uses
  %i.ap = sext i32 %i.am to i64                   ; 7 uses
  %i.aq = tail call i64 @dt_round_size(i64 noundef %i.ap, i64 noundef 16) #20
  %i.ar = add nsw i32 %i.ao, 2
  %i.as = sext i32 %i.ar to i64
  %i.at = mul i64 %i.aq, %i.as                    ; 2 uses
  %i.au = shl i64 %i.ak, 2                        ; 3 uses
  %i.av = tail call ptr @dt_alloc_aligned(i64 noundef %i.au) #20 ; 199 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.av, i64 64) ]
  %.not1779 = icmp eq ptr %i.av, null
  %indvars.iv2591.sroa.gep4435 = getelementptr inbounds nuw i8, ptr %i.m, i64 256
  %indvars.iv2563.sroa.gep4437 = getelementptr inbounds nuw i8, ptr %i.m, i64 256
  %indvars.iv2591.sroa.gep4440 = getelementptr inbounds nuw i8, ptr %i.l, i64 4096
  %indvars.iv2563.sroa.gep4443 = getelementptr inbounds nuw i8, ptr %i.l, i64 4096
  %indvars.iv2563.sroa.gep4446 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %indvars.iv2591.sroa.gep4449 = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  br i1 %.not1779, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !170
  %i.ay = sext i32 %i.ax to i64
  tail call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %2, i64 noundef %i.ay, ptr noundef nonnull %4, ptr noundef %5) #20
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.5) #20
  br label %bb.ey

bb.c:                                             ; preds = %bb.a
  %i.az = and i32 %.val, 256
  %.val1807 = load ptr, ptr %i.r, align 8, !tbaa !151 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.val1807, i64 272
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !33
  %i.bc = getelementptr inbounds nuw i8, ptr %.val1807, i64 276
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !33
  %i.be = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bb, float %i.bd)
  %i.bf = getelementptr inbounds nuw i8, ptr %.val1807, i64 280
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !33
  %i.bh = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.be, float %i.bg)
  %i.bi = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bh, float 1.000000e+00) ; 8 uses
  %i.bj = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bi
  %i.bk = sext i32 %i.ah to i64                   ; 7 uses
  tail call void @dt_iop_image_scaled_copy(ptr noundef nonnull %i.av, ptr noundef %2, float noundef %i.bj, i64 noundef %i.af, i64 noundef %i.bk, i64 noundef 1) #20
  %.not1780 = icmp eq i32 %i.az, 0
  br i1 %.not1780, label %bb.d, label %bb.eq

bb.d:                                             ; preds = %bb.c
  br i1 %i.y, label %bb.e, label %.loopexit1977

bb.e:                                             ; preds = %bb.d
  %i.bl = shl i64 %i.at, 2                        ; 4 uses
  %i.bm = tail call ptr @dt_alloc_aligned(i64 noundef %i.bl) #20 ; 9 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bm, i64 64) ]
  %.not.i = icmp eq ptr %i.bm, null
  br i1 %.not.i, label %dt_calloc_align_float.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr nonnull align 64 %i.bm, i8 0, i64 %i.bl, i1 false)
  br label %dt_calloc_align_float.exit

dt_calloc_align_float.exit:                       ; preds = %bb.e, %bb.f
  %i.bn = tail call ptr @dt_alloc_aligned(i64 noundef %i.bl) #20 ; 9 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bn, i64 64) ]
  %.not.i1808 = icmp eq ptr %i.bn, null
  br i1 %.not.i1808, label %dt_calloc_align_float.exit1809, label %bb.g

bb.g:                                             ; preds = %dt_calloc_align_float.exit
  tail call void @llvm.memset.p0.i64(ptr nonnull align 64 %i.bn, i8 0, i64 %i.bl, i1 false)
  br label %dt_calloc_align_float.exit1809

dt_calloc_align_float.exit1809:                   ; preds = %dt_calloc_align_float.exit, %bb.g
  %i.bo = shl i64 %i.at, 3                        ; 2 uses
  %i.bp = tail call ptr @dt_alloc_aligned(i64 noundef %i.bo) #20 ; 11 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bp, i64 64) ]
  %.not.i1810 = icmp eq ptr %i.bp, null
  br i1 %.not.i1810, label %dt_calloc_align_float.exit1811.thread, label %dt_calloc_align_float.exit1811

dt_calloc_align_float.exit1811:                   ; preds = %dt_calloc_align_float.exit1809
  tail call void @llvm.memset.p0.i64(ptr nonnull align 64 %i.bp, i8 0, i64 %i.bo, i1 false)
  %i.bq = icmp ne ptr %i.bm, null
  %i.br = icmp ne ptr %i.bn, null
  %or.cond = and i1 %i.bq, %i.br
  br i1 %or.cond, label %.preheader1976, label %dt_calloc_align_float.exit1811.thread

.preheader1976:                                   ; preds = %dt_calloc_align_float.exit1811
  switch i32 %i.ah, label %.lr.ph1991.preheader.new [
    i32 0, label %.loopexit1977
    i32 1, label %.lr.ph1991.epil.preheader
  ]

.lr.ph1991.preheader.new:                         ; preds = %.preheader1976
  %unroll_iter = and i64 %i.bk, -2
  br label %.lr.ph1991

dt_calloc_align_float.exit1811.thread:            ; preds = %dt_calloc_align_float.exit1809, %dt_calloc_align_float.exit1811
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.5) #20
  br label %bb.eq

.lr.ph1991:                                       ; preds = %._crit_edge.1, %.lr.ph1991.preheader.new
  %.016971990 = phi i64 [ 0, %.lr.ph1991.preheader.new ], [ %i.cr, %._crit_edge.1 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph1991.preheader.new ], [ %niter.next.1, %._crit_edge.1 ]
  %.01697.tr = trunc i64 %.016971990 to i32
  %i.bs = shl i32 %.01697.tr, 2
  %.tr.i = and i32 %i.bs, 24
  %i.bt = lshr i32 %i.q, %.tr.i
  %i.bu = and i32 %i.bt, 1                        ; 2 uses
  %i.bv = icmp ult i32 %i.bu, %i.ae
  br i1 %i.bv, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph1991
  %i.bw = zext nneg i32 %i.bu to i64
  %i.bx = mul i64 %.016971990, %i.af
  %i.by = getelementptr [4 x i8], ptr %i.av, i64 %i.bx
  %i.bz = mul i64 %.016971990, %i.ap
  %i.ca = getelementptr [4 x i8], ptr %i.bp, i64 %i.bz
  br label %bb.i

._crit_edge:                                      ; preds = %bb.i, %.lr.ph1991
  %i.cb = or disjoint i64 %.016971990, 1          ; 3 uses
  %.01697.tr.1 = trunc i64 %i.cb to i32
  %i.cc = shl i32 %.01697.tr.1, 2
  %.tr.i.1 = and i32 %i.cc, 28
  %i.cd = lshr i32 %i.q, %.tr.i.1
  %i.ce = and i32 %i.cd, 1                        ; 2 uses
  %i.cf = icmp ult i32 %i.ce, %i.ae
  br i1 %i.cf, label %.lr.ph.1, label %._crit_edge.1

.lr.ph.1:                                         ; preds = %._crit_edge
  %i.cg = zext nneg i32 %i.ce to i64
  %i.ch = mul i64 %i.cb, %i.af
  %i.ci = getelementptr [4 x i8], ptr %i.av, i64 %i.ch
  %i.cj = mul i64 %i.cb, %i.ap
  %i.ck = getelementptr [4 x i8], ptr %i.bp, i64 %i.cj
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.1
  %.016981989.1 = phi i64 [ %i.cg, %.lr.ph.1 ], [ %i.cp, %bb.h ] ; 3 uses
  %i.cl = getelementptr [4 x i8], ptr %i.ci, i64 %.016981989.1
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !33
  %i.cn = lshr i64 %.016981989.1, 1
  %i.co = getelementptr [4 x i8], ptr %i.ck, i64 %i.cn
  store float %i.cm, ptr %i.co, align 4, !tbaa !33
  %i.cp = add i64 %.016981989.1, 2                ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.af
  br i1 %i.cq, label %bb.h, label %._crit_edge.1

._crit_edge.1:                                    ; preds = %bb.h, %._crit_edge
  %i.cr = add nuw i64 %.016971990, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit1977.loopexit.unr-lcssa, label %.lr.ph1991

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %.016981989 = phi i64 [ %i.bw, %.lr.ph ], [ %i.cw, %bb.i ] ; 3 uses
  %i.cs = getelementptr [4 x i8], ptr %i.by, i64 %.016981989
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !33
  %i.cu = lshr i64 %.016981989, 1
  %i.cv = getelementptr [4 x i8], ptr %i.ca, i64 %i.cu
  store float %i.ct, ptr %i.cv, align 4, !tbaa !33
  %i.cw = add i64 %.016981989, 2                  ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.af
  br i1 %i.cx, label %bb.i, label %._crit_edge

.loopexit1977.loopexit.unr-lcssa:                 ; preds = %._crit_edge.1
  %i.cy = and i32 %i.ah, 1
  %lcmp.mod.not = icmp eq i32 %i.cy, 0
  br i1 %lcmp.mod.not, label %.loopexit1977, label %.lr.ph1991.epil.preheader

.lr.ph1991.epil.preheader:                        ; preds = %.preheader1976, %.loopexit1977.loopexit.unr-lcssa
end_hunk_0
begin_hunk_1_@process:bb.a
  %i.fbb = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.fau, %i.fae
  %i.fbc = select <2 x i1> %i.fbb, <2 x float> %i.fau, <2 x float> %i.fae ; 2 uses
  %i.fbd = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.fai, %i.fba
  %i.fbe = select <2 x i1> %i.fbd, <2 x float> %i.fai, <2 x float> %i.fba ; 2 uses
  %i.fbf = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.fak, %i.faw
  %i.fbg = select <2 x i1> %i.fbf, <2 x float> %i.fak, <2 x float> %i.faw ; 4 uses
  %i.fbh = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.fbe, %i.fay
  %i.fbi = select <2 x i1> %i.fbh, <2 x float> %i.fbe, <2 x float> %i.fay ; 4 uses
  %i.fbj = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.fbi, %i.fbg
  %i.fbk = select <2 x i1> %i.fbj, <2 x float> %i.fbi, <2 x float> %i.fbg ; 2 uses
  %i.fbl = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.fbi, %i.fbg
  %i.fbm = select <2 x i1> %i.fbl, <2 x float> %i.fbi, <2 x float> %i.fbg ; 2 uses
  %i.fbn = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.fbc, %i.fbk
  %i.fbo = select <2 x i1> %i.fbn, <2 x float> %i.fbc, <2 x float> %i.fbk ; 2 uses
  %i.fbp = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.fbm, %i.fbo
  %i.fbq = select <2 x i1> %i.fbp, <2 x float> %i.fbm, <2 x float> %i.fbo ; 5 uses
  %foldExtExtBinop4174 = fmul reassoc nsz arcp contract afn <2 x float> %i.fbq, %i.fbq
  %i.fbr = extractelement <2 x float> %foldExtExtBinop4174, i64 0
  %i.fbs = load float, ptr %indvars.iv2563.sroa.phi4444, align 4, !tbaa !33
  %i.fbt = fmul reassoc nsz arcp contract afn float %i.fbs, 4.000000e+00
  %i.fbu = fcmp reassoc nsz arcp contract afn ogt float %i.fbr, %i.fbt
  br i1 %i.fbu, label %.loopexit1907, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %foldExtExtBinop4176 = fmul reassoc nsz arcp contract afn <2 x float> %i.fbq, %i.fbq
  %i.fbv = extractelement <2 x float> %foldExtExtBinop4176, i64 1
  %i.fbw = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv2563
  %i.fbx = load float, ptr %i.fbw, align 4, !tbaa !33
  %i.fby = fmul reassoc nsz arcp contract afn float %i.fbx, 4.000000e+00
  %i.fbz = fcmp reassoc nsz arcp contract afn ogt float %i.fbv, %i.fby
  br i1 %i.fbz, label %.loopexit1907, label %.preheader1896.lr.ph

.preheader1896.lr.ph:                             ; preds = %bb.as
  %i.fca = load i32, ptr %indvars.iv2563.sroa.phi, align 4, !tbaa !12
  %i.fcb = add nsw i32 %i.fca, 1
  store i32 %i.fcb, ptr %indvars.iv2563.sroa.phi, align 4, !tbaa !12
  %i.fcc = getelementptr inbounds nuw i8, ptr %indvars.iv2563.sroa.phi4441, i64 2048 ; 3 uses
  %i.fcd = fpext <2 x float> %i.fbq to <2 x double>
  %i.fce = getelementptr inbounds nuw i8, ptr %indvars.iv2563.sroa.phi4436, i64 128
  %i.fcf = load float, ptr %i.eyn, align 4, !tbaa !33
  %i.fcg = fpext reassoc nsz arcp contract afn float %i.fcf to double ; 2 uses
  %i.fch = insertelement <2 x double> poison, double %i.fcg, i64 0
  br label %.preheader1896

.preheader1896:                                   ; preds = %.preheader1896.lr.ph, %._crit_edge2107.split.us
  %indvars.iv2558 = phi i64 [ 0, %.preheader1896.lr.ph ], [ %indvars.iv.next2559, %._crit_edge2107.split.us ] ; 2 uses
  %.016672112 = phi double [ 1.000000e+00, %.preheader1896.lr.ph ], [ %i.fei, %._crit_edge2107.split.us ] ; 3 uses
  %i.fci = mul nuw nsw i64 %indvars.iv2558, %i.exv
  %i.fcj = insertelement <2 x double> poison, double %.016672112, i64 0
  %i.fck = fmul reassoc nsz arcp contract afn <2 x double> %i.fcj, %i.fch
  br label %.preheader1895.us

.preheader1895.us:                                ; preds = %._crit_edge2104.us, %.preheader1896
  %indvars.iv2553 = phi i64 [ %indvars.iv.next2554, %._crit_edge2104.us ], [ 0, %.preheader1896 ] ; 2 uses
  %.016652105.us = phi double [ %i.feh, %._crit_edge2104.us ], [ 1.000000e+00, %.preheader1896 ] ; 4 uses
  %i.fcl = add nuw nsw i64 %indvars.iv2553, %i.fci ; 3 uses
  %i.fcm = trunc nuw i64 %i.fcl to i32
  %i.fcn = mul nsw i32 %.017022239, %i.fcm
  br label %.preheader1894.us

bb.at:                                            ; preds = %bb.at, %.preheader1894.us.new
  %indvars.iv2547 = phi i64 [ 0, %.preheader1894.us.new ], [ %indvars.iv.next2548.1, %bb.at ] ; 3 uses
  %.016612098.us = phi double [ %.016652105.us, %.preheader1894.us.new ], [ %.reass4504, %bb.at ] ; 3 uses
  %niter4309 = phi i64 [ 0, %.preheader1894.us.new ], [ %niter4309.next.1, %bb.at ]
  %.reass.us = fmul reassoc nsz arcp contract afn double %.016612098.us, %factor.op.fmul.us ; 2 uses
  %i.fco = trunc nuw nsw i64 %indvars.iv2547 to i32
  %i.fcp = add i32 %i.fdi, %i.fco
  %i.fcq = sext i32 %i.fcp to i64                 ; 2 uses
  %i.fcr = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2563.sroa.phi4441, i64 %i.fcq ; 2 uses
  %i.fcs = load double, ptr %i.fcr, align 8, !tbaa !216
  %i.fct = fadd reassoc nsz arcp contract afn double %.reass.us, %i.fcs
  store double %i.fct, ptr %i.fcr, align 8, !tbaa !216
  %i.fcu = getelementptr inbounds nuw [8 x i8], ptr %i.fcc, i64 %i.fcq ; 2 uses
  %i.fcv = load double, ptr %i.fcu, align 8, !tbaa !216
  %i.fcw = fadd reassoc nsz arcp contract afn double %i.fcv, %.reass.us
  store double %i.fcw, ptr %i.fcu, align 8, !tbaa !216
  %.reass4504 = fmul reassoc nsz arcp contract afn double %.016612098.us, %factor.op.fmul ; 2 uses
  %.reass.us.1.reass = fmul reassoc nsz arcp contract afn double %.016612098.us, %invariant.op4503 ; 2 uses
  %i.fcx = trunc i64 %indvars.iv2547 to i32
  %i.fcy = or disjoint i32 %i.fcx, 1
  %i.fcz = add i32 %i.fdi, %i.fcy
  %i.fda = sext i32 %i.fcz to i64                 ; 2 uses
  %i.fdb = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2563.sroa.phi4441, i64 %i.fda ; 2 uses
  %i.fdc = load double, ptr %i.fdb, align 8, !tbaa !216
  %i.fdd = fadd reassoc nsz arcp contract afn double %.reass.us.1.reass, %i.fdc
  store double %i.fdd, ptr %i.fdb, align 8, !tbaa !216
  %i.fde = getelementptr inbounds nuw [8 x i8], ptr %i.fcc, i64 %i.fda ; 2 uses
  %i.fdf = load double, ptr %i.fde, align 8, !tbaa !216
  %i.fdg = fadd reassoc nsz arcp contract afn double %i.fdf, %.reass.us.1.reass
  store double %i.fdg, ptr %i.fde, align 8, !tbaa !216
  %indvars.iv.next2548.1 = add nuw nsw i64 %indvars.iv2547, 2 ; 2 uses
  %niter4309.next.1 = add i64 %niter4309, 2       ; 2 uses
  %niter4309.ncmp.1 = icmp eq i64 %niter4309.next.1, %unroll_iter4308
  br i1 %niter4309.ncmp.1, label %._crit_edge2101.us.unr-lcssa, label %bb.at

.preheader1894.us:                                ; preds = %.preheader1895.us, %._crit_edge2101.us
  %.016622103.us = phi i32 [ 0, %.preheader1895.us ], [ %i.fdt, %._crit_edge2101.us ] ; 2 uses
  %.016632102.us = phi double [ %.016672112, %.preheader1895.us ], [ %i.fds, %._crit_edge2101.us ] ; 2 uses
  %factor.op.fmul.us = fmul reassoc nsz arcp contract afn double %.016632102.us, %i.fcg ; 3 uses
  %i.fdh = mul nuw nsw i32 %.016622103.us, %.016992241
  %i.fdi = add i32 %i.fdh, %i.fcn                 ; 3 uses
  br i1 %i.exw, label %.epil.preheader4303, label %.preheader1894.us.new

.preheader1894.us.new:                            ; preds = %.preheader1894.us
  %invariant.op4503 = fmul reassoc nsz arcp contract afn double %i.eyp, %factor.op.fmul.us
  br label %bb.at

._crit_edge2101.us.unr-lcssa:                     ; preds = %bb.at
  br i1 %lcmp.mod4306.not, label %._crit_edge2101.us, label %.epil.preheader4303

.epil.preheader4303:                              ; preds = %._crit_edge2101.us.unr-lcssa, %.preheader1894.us
  %indvars.iv2547.epil.init = phi i64 [ 0, %.preheader1894.us ], [ %indvars.iv.next2548.1, %._crit_edge2101.us.unr-lcssa ]
  %.016612098.us.epil.init = phi double [ %.016652105.us, %.preheader1894.us ], [ %.reass4504, %._crit_edge2101.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4307)
  %.reass.us.epil = fmul reassoc nsz arcp contract afn double %.016612098.us.epil.init, %factor.op.fmul.us ; 2 uses
  %i.fdj = trunc nuw nsw i64 %indvars.iv2547.epil.init to i32
  %i.fdk = add i32 %i.fdi, %i.fdj
  %i.fdl = sext i32 %i.fdk to i64                 ; 2 uses
  %i.fdm = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2563.sroa.phi4441, i64 %i.fdl ; 2 uses
  %i.fdn = load double, ptr %i.fdm, align 8, !tbaa !216
  %i.fdo = fadd reassoc nsz arcp contract afn double %.reass.us.epil, %i.fdn
  store double %i.fdo, ptr %i.fdm, align 8, !tbaa !216
  %i.fdp = getelementptr inbounds nuw [8 x i8], ptr %i.fcc, i64 %i.fdl ; 2 uses
  %i.fdq = load double, ptr %i.fdp, align 8, !tbaa !216
  %i.fdr = fadd reassoc nsz arcp contract afn double %i.fdq, %.reass.us.epil
  store double %i.fdr, ptr %i.fdp, align 8, !tbaa !216
  br label %._crit_edge2101.us

._crit_edge2101.us:                               ; preds = %._crit_edge2101.us.unr-lcssa, %.epil.preheader4303
  %i.fds = fmul reassoc nsz arcp contract afn double %.016632102.us, %i.eyc
  %i.fdt = add nuw nsw i32 %.016622103.us, 1      ; 2 uses
  %exitcond2552.not = icmp eq i32 %i.fdt, %.016992241
  br i1 %exitcond2552.not, label %._crit_edge2104.us, label %.preheader1894.us

._crit_edge2104.us:                               ; preds = %._crit_edge2101.us
  %i.fdu = insertelement <2 x double> poison, double %.016652105.us, i64 0
  %i.fdv = fmul reassoc nsz arcp contract afn <2 x double> %i.fdu, %i.fck
  %i.fdw = shufflevector <2 x double> %i.fdv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fdx = fmul reassoc nsz arcp contract afn <2 x double> %i.fdw, %i.fcd
  %i.fdy = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2563.sroa.phi4436, i64 %i.fcl ; 2 uses
  %i.fdz = load double, ptr %i.fdy, align 8, !tbaa !216
  %i.fea = getelementptr inbounds nuw [8 x i8], ptr %i.fce, i64 %i.fcl ; 2 uses
  %i.feb = load double, ptr %i.fea, align 8, !tbaa !216
  %i.fec = insertelement <2 x double> poison, double %i.fdz, i64 0
  %i.fed = insertelement <2 x double> %i.fec, double %i.feb, i64 1
  %i.fee = fadd reassoc nsz arcp contract afn <2 x double> %i.fdx, %i.fed ; 2 uses
  %i.fef = extractelement <2 x double> %i.fee, i64 0
  store double %i.fef, ptr %i.fdy, align 8, !tbaa !216
  %i.feg = extractelement <2 x double> %i.fee, i64 1
  store double %i.feg, ptr %i.fea, align 8, !tbaa !216
  %i.feh = fmul reassoc nsz arcp contract afn double %.016652105.us, %i.eyp
  %indvars.iv.next2554 = add nuw nsw i64 %indvars.iv2553, 1 ; 2 uses
  %exitcond2557.not = icmp eq i64 %indvars.iv.next2554, %i.exv
  br i1 %exitcond2557.not, label %._crit_edge2107.split.us, label %.preheader1895.us

._crit_edge2107.split.us:                         ; preds = %._crit_edge2104.us
  %i.fei = fmul reassoc nsz arcp contract afn double %.016672112, %i.eyc
  %indvars.iv.next2559 = add nuw nsw i64 %indvars.iv2558, 1 ; 2 uses
  %exitcond2562.not = icmp eq i64 %indvars.iv.next2559, %i.exv
  br i1 %exitcond2562.not, label %.loopexit1907, label %.preheader1896

.loopexit1907:                                    ; preds = %._crit_edge2107.split.us, %bb.ar, %bb.as
  br i1 %i.eyq, label %bb.ar, label %bb.aq

bb.au:                                            ; preds = %._crit_edge2119.split
  %i.fej = icmp slt i32 %i.eyd, 10
  br i1 %i.fej, label %.thread, label %bb.aw

.thread:                                          ; preds = %._crit_edge2094, %bb.au
  %i.fek = phi i32 [ %i.eyd, %bb.au ], [ 0, %._crit_edge2094 ]
  %i.fel = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !215
  %i.fem = and i32 %i.fel, 33554432
  %.not1784 = icmp eq i32 %i.fem, 0
  br i1 %.not1784, label %.thread1874, label %bb.av

bb.av:                                            ; preds = %.thread
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.7, i32 noundef %i.fek) #20
  br label %.thread1874

.thread1874:                                      ; preds = %.thread, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #20
  br label %.thread1866

bb.aw:                                            ; preds = %bb.au, %._crit_edge2119.split
  %.11703 = phi i32 [ %.017022239, %._crit_edge2119.split ], [ 4, %bb.au ] ; 4 uses
  %.11700 = phi i32 [ %.016992241, %._crit_edge2119.split ], [ 2, %bb.au ] ; 6 uses
  %i.fen = zext i32 %.11703 to i64                ; 58 uses
  %i.feo = add nsw i64 %i.fen, -1                 ; 5 uses
  %.1122132.i = add nuw nsw i64 %i.fen, 1         ; 2 uses
  %i.fep = shl nuw nsw i64 %i.fen, 3              ; 2 uses
  %i.feq = add nuw nsw i64 %i.fep, 2048
  %i.fer = add nuw nsw i64 %i.fep, 8
  %i.fes = mul nuw i64 %i.fen, %i.fen
  %i.fet = shl i64 %i.fes, 3
  %scevgep3140 = getelementptr i8, ptr %scevgep3139, i64 %i.fet
  %i.feu = shl nuw nsw i64 %i.fen, 3
  %i.fev = shl nuw nsw i64 %i.fen, 3              ; 3 uses
  %6 = shl nuw nsw i64 %i.fen, 3
  %i.few = shl nuw nsw i64 %i.fen, 3
  %7 = add nuw nsw i64 %i.fev, 8
  %i.fex = mul nuw i64 %i.fen, %i.fen
  %i.fey = shl i64 %i.fex, 3
  %scevgep3259.a = getelementptr i8, ptr %i.l, i64 %i.fey
  %i.fez = shl nuw nsw i64 %i.fen, 3
  %i.ffa = shl nuw nsw i64 %i.fen, 3
  %i.ffb = shl nuw nsw i64 %i.fen, 3
  %i.ffc = shl nuw nsw i64 %i.fen, 3
  %i.ffd = add nsw i64 %i.fen, -2                 ; 2 uses
  %i.ffe = add nsw i64 %i.fen, -1                 ; 2 uses
  %i.fff = getelementptr i8, ptr %i.l, i64 %i.ffa
  %i.ffg = getelementptr i8, ptr %i.l, i64 %i.fev
  %i.ffh = getelementptr i8, ptr %i.ffg, i64 2048
  br label %.preheader1961

.preheader1961:                                   ; preds = %bb.aw, %_LinEqSolve.exit.1
  %i.ffi = phi i1 [ true, %bb.aw ], [ false, %_LinEqSolve.exit.1 ]
  %indvars.iv2591.sroa.phi = phi ptr [ %i.m, %bb.aw ], [ %indvars.iv2591.sroa.gep4435, %_LinEqSolve.exit.1 ] ; 6 uses
  %indvars.iv2591.sroa.phi4438 = phi ptr [ %i.l, %bb.aw ], [ %indvars.iv2591.sroa.gep4440, %_LinEqSolve.exit.1 ] ; 7 uses
  %indvars.iv2591.sroa.phi4447 = phi ptr [ %i.a, %bb.aw ], [ %indvars.iv2591.sroa.gep4449, %_LinEqSolve.exit.1 ] ; 5 uses
  %indvars.iv2591 = phi i64 [ 0, %bb.aw ], [ 1, %_LinEqSolve.exit.1 ] ; 4 uses
  %.42123 = phi i32 [ 1, %bb.aw ], [ %.6.1, %_LinEqSolve.exit.1 ]
  %i.ffj = shl nuw nsw i64 %indvars.iv2591, 12    ; 5 uses
  %i.ffk = add nuw nsw i64 %i.fev, %i.ffj         ; 2 uses
  %i.ffl = getelementptr i8, ptr %scevgep3259.a, i64 %i.ffj
  %i.ffm = getelementptr i8, ptr %i.l, i64 %i.ffj
  %i.ffn = getelementptr i8, ptr %i.fff, i64 %i.ffj
  %i.ffo = getelementptr i8, ptr %i.l, i64 %i.ffj
  %i.ffp = getelementptr i8, ptr %i.l, i64 %i.ffk
  %i.ffq = getelementptr i8, ptr %i.l, i64 %i.ffk
  br label %.lr.ph.preheader.i

.loopexit135.i:                                   ; preds = %._crit_edge148.us.i
  %exitcond169.not.i = icmp eq i64 %i.fgc, %i.feo
  br i1 %exitcond169.not.i, label %.preheader.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.loopexit135.i, %.preheader1961
  %.0121153.i = phi i64 [ %i.fgc, %.loopexit135.i ], [ 0, %.preheader1961 ] ; 26 uses
  %i.ffr = sub i64 %i.feo, %.0121153.i
  %i.ffs = sub i64 %i.ffd, %.0121153.i
  %i.fft = mul i64 %i.ffb, %.0121153.i
  %scevgep3307.a = getelementptr i8, ptr %i.ffn, i64 %i.fft
  %i.ffu = shl i64 %.0121153.i, 3
  %scevgep3308 = getelementptr i8, ptr %i.ffo, i64 %i.ffu
  %i.ffv = sub nsw i64 %i.fen, %.0121153.i        ; 10 uses
  %i.ffw = mul i64 %7, %.0121153.i
  %scevgep3261 = getelementptr i8, ptr %i.ffp, i64 %i.ffw
  %i.ffx = mul i64 %i.fez, %.0121153.i
  %scevgep3262 = getelementptr i8, ptr %i.ffq, i64 %i.ffx
  %i.ffy = mul nuw nsw i64 %.0121153.i, %i.fen
  %i.ffz = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi4438, i64 %i.ffy ; 14 uses
  %i.fga = getelementptr inbounds nuw [8 x i8], ptr %i.ffz, i64 %.0121153.i ; 5 uses
  %i.fgb = load double, ptr %i.fga, align 8, !tbaa !216 ; 2 uses
  %i.fgc = add nuw nsw i64 %.0121153.i, 1         ; 5 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi4438, i64 %.0121153.i ; 5 uses
  %i.fgd = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fgb) ; 2 uses
  %xtraiter4310 = and i64 %i.ffr, 3               ; 2 uses
  %lcmp.mod4311.not = icmp eq i64 %xtraiter4310, 0
  br i1 %lcmp.mod4311.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %.0141.i.prol = phi i64 [ %spec.select133.i.prol, %.lr.ph.i.prol ], [ %.0121153.i, %.lr.ph.preheader.i ]
  %.0124140.i.prol = phi i64 [ %i.fgi, %.lr.ph.i.prol ], [ %i.fgc, %.lr.ph.preheader.i ] ; 3 uses
  %.0126139.i.prol = phi double [ %spec.select.i.prol, %.lr.ph.i.prol ], [ %i.fgd, %.lr.ph.preheader.i ] ; 2 uses
  %prol.iter4312 = phi i64 [ %prol.iter4312.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.fge = mul nuw nsw i64 %.0124140.i.prol, %i.fen
  %gep.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.fge
  %i.fgf = load double, ptr %gep.i.prol, align 8, !tbaa !216 ; 2 uses
  %i.fgg = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fgf)
  %i.fgh = fcmp reassoc nsz arcp contract afn olt double %.0126139.i.prol, %i.fgg ; 2 uses
  %spec.select.i.prol = select nsz i1 %i.fgh, double %i.fgf, double %.0126139.i.prol ; 2 uses
  %spec.select133.i.prol = select i1 %i.fgh, i64 %.0124140.i.prol, i64 %.0141.i.prol ; 3 uses
  %i.fgi = add nuw nsw i64 %.0124140.i.prol, 1    ; 2 uses
  %prol.iter4312.next = add i64 %prol.iter4312, 1 ; 2 uses
  %prol.iter4312.cmp.not = icmp eq i64 %prol.iter4312.next, %xtraiter4310
  br i1 %prol.iter4312.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !85

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %spec.select133.i.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader.i ], [ %spec.select133.i.prol, %.lr.ph.i.prol ]
  %.0141.i.unr = phi i64 [ %.0121153.i, %.lr.ph.preheader.i ], [ %spec.select133.i.prol, %.lr.ph.i.prol ]
  %.0124140.i.unr = phi i64 [ %i.fgc, %.lr.ph.preheader.i ], [ %i.fgi, %.lr.ph.i.prol ]
  %.0126139.i.unr = phi double [ %i.fgd, %.lr.ph.preheader.i ], [ %spec.select.i.prol, %.lr.ph.i.prol ]
  %i.fgj = icmp ult i64 %i.ffs, 3
  br i1 %i.fgj, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.0141.i = phi i64 [ %spec.select133.i.3, %.lr.ph.i ], [ %.0141.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0124140.i = phi i64 [ %i.fhd, %.lr.ph.i ], [ %.0124140.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.0126139.i = phi double [ %spec.select.i.3, %.lr.ph.i ], [ %.0126139.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.fgk = mul nuw nsw i64 %.0124140.i, %i.fen
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.fgk
  %i.fgl = load double, ptr %gep.i, align 8, !tbaa !216 ; 2 uses
  %i.fgm = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fgl)
  %i.fgn = fcmp reassoc nsz arcp contract afn olt double %.0126139.i, %i.fgm ; 2 uses
  %spec.select.i = select nsz i1 %i.fgn, double %i.fgl, double %.0126139.i ; 2 uses
  %spec.select133.i = select i1 %i.fgn, i64 %.0124140.i, i64 %.0141.i
  %i.fgo = add nuw nsw i64 %.0124140.i, 1         ; 2 uses
  %i.fgp = mul nuw nsw i64 %i.fgo, %i.fen
  %gep.i.14316 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.fgp
  %i.fgq = load double, ptr %gep.i.14316, align 8, !tbaa !216 ; 2 uses
  %i.fgr = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fgq)
  %i.fgs = fcmp reassoc nsz arcp contract afn olt double %spec.select.i, %i.fgr ; 2 uses
  %spec.select.i.14317 = select nsz i1 %i.fgs, double %i.fgq, double %spec.select.i ; 2 uses
  %spec.select133.i.14318 = select i1 %i.fgs, i64 %i.fgo, i64 %spec.select133.i
  %i.fgt = add nuw nsw i64 %.0124140.i, 2         ; 2 uses
  %i.fgu = mul nuw nsw i64 %i.fgt, %i.fen
  %gep.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.fgu
  %i.fgv = load double, ptr %gep.i.2, align 8, !tbaa !216 ; 2 uses
  %i.fgw = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fgv)
  %i.fgx = fcmp reassoc nsz arcp contract afn olt double %spec.select.i.14317, %i.fgw ; 2 uses
  %spec.select.i.2 = select nsz i1 %i.fgx, double %i.fgv, double %spec.select.i.14317 ; 2 uses
  %spec.select133.i.2 = select i1 %i.fgx, i64 %i.fgt, i64 %spec.select133.i.14318
  %i.fgy = add nuw nsw i64 %.0124140.i, 3         ; 2 uses
  %i.fgz = mul nuw nsw i64 %i.fgy, %i.fen
  %gep.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.fgz
  %i.fha = load double, ptr %gep.i.3, align 8, !tbaa !216 ; 2 uses
  %i.fhb = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fha)
  %i.fhc = fcmp reassoc nsz arcp contract afn olt double %spec.select.i.2, %i.fhb ; 2 uses
  %spec.select.i.3 = select nsz i1 %i.fhc, double %i.fha, double %spec.select.i.2
  %spec.select133.i.3 = select i1 %i.fhc, i64 %i.fgy, i64 %spec.select133.i.2 ; 2 uses
  %i.fhd = add nuw nsw i64 %.0124140.i, 4         ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.fhd, %i.fen
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %spec.select133.i.lcssa = phi i64 [ %spec.select133.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %spec.select133.i.3, %.lr.ph.i ] ; 5 uses
  %.not.i1832 = icmp eq i64 %spec.select133.i.lcssa, %.0121153.i
  br i1 %.not.i1832, label %bb.ax, label %.lr.ph143.i

.lr.ph143.i:                                      ; preds = %._crit_edge.i
  %i.fhe = mul nsw i64 %spec.select133.i.lcssa, %i.fen
  %i.fhf = getelementptr [8 x i8], ptr %indvars.iv2591.sroa.phi4438, i64 %i.fhe ; 6 uses
  %min.iters.check3316 = icmp ult i64 %i.ffv, 8
  br i1 %min.iters.check3316, label %scalar.ph3315.preheader, label %vector.memcheck3305

vector.memcheck3305:                              ; preds = %.lr.ph143.i
  %i.fhg = mul i64 %i.ffc, %spec.select133.i.lcssa
  %scevgep3309 = getelementptr i8, ptr %scevgep3308, i64 %i.fhg
  %i.fhh = shl i64 %spec.select133.i.lcssa, 3
  %i.fhi = add i64 %i.fhh, 8
  %i.fhj = mul i64 %i.fhi, %i.fen
  %scevgep3311 = getelementptr i8, ptr %i.ffm, i64 %i.fhj
  %bound03312 = icmp ult ptr %i.fga, %scevgep3311
  %bound13313 = icmp ult ptr %scevgep3309, %scevgep3307.a
  %found.conflict3314 = and i1 %bound03312, %bound13313
  br i1 %found.conflict3314, label %scalar.ph3315.preheader, label %vector.ph3317

vector.ph3317:                                    ; preds = %vector.memcheck3305
  %n.vec3318 = and i64 %i.ffv, -8                 ; 3 uses
  %i.fhk = add i64 %.0121153.i, %n.vec3318
  br label %vector.body3319

vector.body3319:                                  ; preds = %vector.body3319, %vector.ph3317
  %index3320 = phi i64 [ 0, %vector.ph3317 ], [ %index.next3325, %vector.body3319 ] ; 2 uses
  %i.fhl = add nuw i64 %.0121153.i, %index3320    ; 2 uses
  %i.fhm = getelementptr inbounds nuw [8 x i8], ptr %i.ffz, i64 %i.fhl ; 3 uses
  %i.fhn = getelementptr inbounds nuw i8, ptr %i.fhm, i64 32 ; 2 uses
  %wide.load3321 = load <4 x double>, ptr %i.fhm, align 8, !tbaa !216, !alias.scope !217, !noalias !218
  %wide.load3322 = load <4 x double>, ptr %i.fhn, align 8, !tbaa !216, !alias.scope !217, !noalias !218
  %i.fho = getelementptr [8 x i8], ptr %i.fhf, i64 %i.fhl ; 3 uses
  %i.fhp = getelementptr i8, ptr %i.fho, i64 32   ; 2 uses
  %wide.load3323 = load <4 x double>, ptr %i.fho, align 8, !tbaa !216, !alias.scope !218
  %wide.load3324 = load <4 x double>, ptr %i.fhp, align 8, !tbaa !216, !alias.scope !218
  store <4 x double> %wide.load3323, ptr %i.fhm, align 8, !tbaa !216, !alias.scope !217, !noalias !218
  store <4 x double> %wide.load3324, ptr %i.fhn, align 8, !tbaa !216, !alias.scope !217, !noalias !218
  store <4 x double> %wide.load3321, ptr %i.fho, align 8, !tbaa !216, !alias.scope !218
  store <4 x double> %wide.load3322, ptr %i.fhp, align 8, !tbaa !216, !alias.scope !218
  %index.next3325 = add nuw i64 %index3320, 8     ; 2 uses
  %i.fhq = icmp eq i64 %index.next3325, %n.vec3318
  br i1 %i.fhq, label %middle.block3326, label %vector.body3319, !llvm.loop !89

middle.block3326:                                 ; preds = %vector.body3319
  %cmp.n3327 = icmp eq i64 %i.ffv, %n.vec3318
  br i1 %cmp.n3327, label %._crit_edge144.i, label %scalar.ph3315.preheader

scalar.ph3315.preheader:                          ; preds = %vector.memcheck3305, %.lr.ph143.i, %middle.block3326
  %.1125142.i.ph = phi i64 [ %.0121153.i, %vector.memcheck3305 ], [ %.0121153.i, %.lr.ph143.i ], [ %i.fhk, %middle.block3326 ] ; 4 uses
  %i.fhr = sub i64 %i.fen, %.1125142.i.ph
  %xtraiter4321 = and i64 %i.fhr, 3               ; 2 uses
  %lcmp.mod4322.not = icmp eq i64 %xtraiter4321, 0
  br i1 %lcmp.mod4322.not, label %scalar.ph3315.prol.loopexit, label %scalar.ph3315.prol

scalar.ph3315.prol:                               ; preds = %scalar.ph3315.preheader, %scalar.ph3315.prol
  %.1125142.i.prol = phi i64 [ %i.fhw, %scalar.ph3315.prol ], [ %.1125142.i.ph, %scalar.ph3315.preheader ] ; 3 uses
  %prol.iter4323 = phi i64 [ %prol.iter4323.next, %scalar.ph3315.prol ], [ 0, %scalar.ph3315.preheader ]
  %i.fhs = getelementptr inbounds nuw [8 x i8], ptr %i.ffz, i64 %.1125142.i.prol ; 2 uses
  %i.fht = load double, ptr %i.fhs, align 8, !tbaa !216
  %i.fhu = getelementptr [8 x i8], ptr %i.fhf, i64 %.1125142.i.prol ; 2 uses
  %i.fhv = load double, ptr %i.fhu, align 8, !tbaa !216
  store double %i.fhv, ptr %i.fhs, align 8, !tbaa !216
  store double %i.fht, ptr %i.fhu, align 8, !tbaa !216
  %i.fhw = add nuw nsw i64 %.1125142.i.prol, 1    ; 2 uses
  %prol.iter4323.next = add i64 %prol.iter4323, 1 ; 2 uses
  %prol.iter4323.cmp.not = icmp eq i64 %prol.iter4323.next, %xtraiter4321
  br i1 %prol.iter4323.cmp.not, label %scalar.ph3315.prol.loopexit, label %scalar.ph3315.prol, !llvm.loop !90

scalar.ph3315.prol.loopexit:                      ; preds = %scalar.ph3315.prol, %scalar.ph3315.preheader
  %.1125142.i.unr = phi i64 [ %.1125142.i.ph, %scalar.ph3315.preheader ], [ %i.fhw, %scalar.ph3315.prol ]
  %i.fhx = sub i64 %.1125142.i.ph, %i.fen
  %i.fhy = icmp ugt i64 %i.fhx, -4
  br i1 %i.fhy, label %._crit_edge144.i, label %scalar.ph3315

scalar.ph3315:                                    ; preds = %scalar.ph3315.prol.loopexit, %scalar.ph3315
  %.1125142.i = phi i64 [ %i.fis, %scalar.ph3315 ], [ %.1125142.i.unr, %scalar.ph3315.prol.loopexit ] ; 6 uses
  %i.fhz = getelementptr inbounds nuw [8 x i8], ptr %i.ffz, i64 %.1125142.i ; 2 uses
  %i.fia = load double, ptr %i.fhz, align 8, !tbaa !216
  %i.fib = getelementptr [8 x i8], ptr %i.fhf, i64 %.1125142.i ; 2 uses
  %i.fic = load double, ptr %i.fib, align 8, !tbaa !216
  store double %i.fic, ptr %i.fhz, align 8, !tbaa !216
  store double %i.fia, ptr %i.fib, align 8, !tbaa !216
  %i.fid = add nuw nsw i64 %.1125142.i, 1         ; 2 uses
  %i.fie = getelementptr inbounds nuw [8 x i8], ptr %i.ffz, i64 %i.fid ; 2 uses
  %i.fif = load double, ptr %i.fie, align 8, !tbaa !216
  %i.fig = getelementptr [8 x i8], ptr %i.fhf, i64 %i.fid ; 2 uses
  %i.fih = load double, ptr %i.fig, align 8, !tbaa !216
  store double %i.fih, ptr %i.fie, align 8, !tbaa !216
  store double %i.fif, ptr %i.fig, align 8, !tbaa !216
  %i.fii = add nuw nsw i64 %.1125142.i, 2         ; 2 uses
  %i.fij = getelementptr inbounds nuw [8 x i8], ptr %i.ffz, i64 %i.fii ; 2 uses
  %i.fik = load double, ptr %i.fij, align 8, !tbaa !216
  %i.fil = getelementptr [8 x i8], ptr %i.fhf, i64 %i.fii ; 2 uses
  %i.fim = load double, ptr %i.fil, align 8, !tbaa !216
  store double %i.fim, ptr %i.fij, align 8, !tbaa !216
  store double %i.fik, ptr %i.fil, align 8, !tbaa !216
  %i.fin = add nuw nsw i64 %.1125142.i, 3         ; 2 uses
  %i.fio = getelementptr inbounds nuw [8 x i8], ptr %i.ffz, i64 %i.fin ; 2 uses
  %i.fip = load double, ptr %i.fio, align 8, !tbaa !216
  %i.fiq = getelementptr [8 x i8], ptr %i.fhf, i64 %i.fin ; 2 uses
  %i.fir = load double, ptr %i.fiq, align 8, !tbaa !216
  store double %i.fir, ptr %i.fio, align 8, !tbaa !216
  store double %i.fip, ptr %i.fiq, align 8, !tbaa !216
  %i.fis = add nuw nsw i64 %.1125142.i, 4         ; 2 uses
  %exitcond166.not.i.3 = icmp eq i64 %i.fis, %i.fen
  br i1 %exitcond166.not.i.3, label %._crit_edge144.i, label %scalar.ph3315, !llvm.loop !91

._crit_edge144.i:                                 ; preds = %scalar.ph3315.prol.loopexit, %scalar.ph3315, %middle.block3326
  %i.fit = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi, i64 %.0121153.i ; 2 uses
  %i.fiu = load double, ptr %i.fit, align 8, !tbaa !216
  %i.fiv = getelementptr inbounds [8 x i8], ptr %indvars.iv2591.sroa.phi, i64 %spec.select133.i.lcssa ; 2 uses
  %i.fiw = load double, ptr %i.fiv, align 8, !tbaa !216
  store double %i.fiw, ptr %i.fit, align 8, !tbaa !216
  store double %i.fiu, ptr %i.fiv, align 8, !tbaa !216
  %.pre.i = load double, ptr %i.fga, align 8, !tbaa !216
  br label %bb.ax

bb.ax:                                            ; preds = %._crit_edge144.i, %._crit_edge.i
  %i.fix = phi double [ %.pre.i, %._crit_edge144.i ], [ %i.fgb, %._crit_edge.i ]
  %i.fiy = fcmp reassoc nsz arcp contract afn oeq double %i.fix, 0.000000e+00
  br i1 %i.fiy, label %bb.ay, label %.lr.ph150.i

.lr.ph150.i:                                      ; preds = %bb.ax
  %i.fiz = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi, i64 %.0121153.i
  %min.iters.check3267 = icmp ult i64 %i.ffv, 4
  %bound03263 = icmp ult ptr %scevgep3261, %scevgep3262
  %bound13264 = icmp ult ptr %i.fga, %i.ffl
  %found.conflict3265 = and i1 %bound03263, %bound13264
  %min.iters.check3269 = icmp ult i64 %i.ffv, 16
  %i.fja = and i64 %i.ffv, 12
  %n.vec3271 = and i64 %i.ffv, -16                ; 4 uses
  %i.fjb = add i64 %.0121153.i, %n.vec3271
  %cmp.n3286 = icmp eq i64 %i.ffv, %n.vec3271
  %min.epilog.iters.check3292 = icmp eq i64 %i.fja, 0
  %n.vec3294 = and i64 %i.ffv, -4                 ; 3 uses
  %i.fjc = add i64 %.0121153.i, %n.vec3294
  %cmp.n3303 = icmp eq i64 %i.ffv, %n.vec3294
  br label %iter.check3289

iter.check3289:                                   ; preds = %._crit_edge148.us.i, %.lr.ph150.i
  %.0123149.us.i = phi i64 [ %i.fgc, %.lr.ph150.i ], [ %i.flz, %._crit_edge148.us.i ] ; 3 uses
  %i.fjd = mul nuw nsw i64 %.0123149.us.i, %i.fen
  %i.fje = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi4438, i64 %i.fjd ; 8 uses
  %i.fjf = getelementptr inbounds nuw [8 x i8], ptr %i.fje, i64 %.0121153.i
  %i.fjg = load double, ptr %i.fjf, align 8, !tbaa !216
  %i.fjh = fneg reassoc nsz arcp contract afn double %i.fjg
  %i.fji = load double, ptr %i.fga, align 8, !tbaa !216
  %i.fjj = fdiv reassoc nsz arcp contract afn double %i.fjh, %i.fji ; 8 uses
  %brmerge4526 = select i1 %min.iters.check3267, i1 true, i1 %found.conflict3265
  br i1 %brmerge4526, label %vec.epilog.scalar.ph3290.preheader, label %vector.main.loop.iter.check3268

vector.main.loop.iter.check3268:                  ; preds = %iter.check3289
  br i1 %min.iters.check3269, label %vec.epilog.ph3293, label %vector.ph3270

vector.ph3270:                                    ; preds = %vector.main.loop.iter.check3268
  %broadcast.splatinsert3272 = insertelement <4 x double> poison, double %i.fjj, i64 0
  %broadcast.splat3273 = shufflevector <4 x double> %broadcast.splatinsert3272, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body3274

vector.body3274:                                  ; preds = %vector.body3274, %vector.ph3270
  %index3275 = phi i64 [ 0, %vector.ph3270 ], [ %index.next3284, %vector.body3274 ] ; 2 uses
  %i.fjk = add nuw i64 %.0121153.i, %index3275    ; 2 uses
  %i.fjl = getelementptr inbounds nuw [8 x i8], ptr %i.fje, i64 %i.fjk ; 5 uses
  %i.fjm = getelementptr inbounds nuw i8, ptr %i.fjl, i64 32 ; 2 uses
  %i.fjn = getelementptr inbounds nuw i8, ptr %i.fjl, i64 64 ; 2 uses
  %i.fjo = getelementptr inbounds nuw i8, ptr %i.fjl, i64 96 ; 2 uses
  %wide.load3276.a = load <4 x double>, ptr %i.fjl, align 8, !tbaa !216, !alias.scope !219, !noalias !220
  %wide.load3277.a = load <4 x double>, ptr %i.fjm, align 8, !tbaa !216, !alias.scope !219, !noalias !220
  %wide.load3278.a = load <4 x double>, ptr %i.fjn, align 8, !tbaa !216, !alias.scope !219, !noalias !220
  %wide.load3279.a = load <4 x double>, ptr %i.fjo, align 8, !tbaa !216, !alias.scope !219, !noalias !220
  %i.fjp = getelementptr inbounds nuw [8 x i8], ptr %i.ffz, i64 %i.fjk ; 4 uses
  %i.fjq = getelementptr inbounds nuw i8, ptr %i.fjp, i64 32
  %i.fjr = getelementptr inbounds nuw i8, ptr %i.fjp, i64 64
  %i.fjs = getelementptr inbounds nuw i8, ptr %i.fjp, i64 96
  %wide.load3280.a = load <4 x double>, ptr %i.fjp, align 8, !tbaa !216, !alias.scope !220
  %wide.load3281 = load <4 x double>, ptr %i.fjq, align 8, !tbaa !216, !alias.scope !220
  %wide.load3282 = load <4 x double>, ptr %i.fjr, align 8, !tbaa !216, !alias.scope !220
  %wide.load3283 = load <4 x double>, ptr %i.fjs, align 8, !tbaa !216, !alias.scope !220
  %i.fjt = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3280.a, %broadcast.splat3273
  %i.fju = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3281, %broadcast.splat3273
  %i.fjv = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3282, %broadcast.splat3273
  %i.fjw = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3283, %broadcast.splat3273
  %i.fjx = fadd reassoc nsz arcp contract afn <4 x double> %i.fjt, %wide.load3276.a
  %i.fjy = fadd reassoc nsz arcp contract afn <4 x double> %i.fju, %wide.load3277.a
  %i.fjz = fadd reassoc nsz arcp contract afn <4 x double> %i.fjv, %wide.load3278.a
  %i.fka = fadd reassoc nsz arcp contract afn <4 x double> %i.fjw, %wide.load3279.a
  store <4 x double> %i.fjx, ptr %i.fjl, align 8, !tbaa !216, !alias.scope !219, !noalias !220
  store <4 x double> %i.fjy, ptr %i.fjm, align 8, !tbaa !216, !alias.scope !219, !noalias !220
  store <4 x double> %i.fjz, ptr %i.fjn, align 8, !tbaa !216, !alias.scope !219, !noalias !220
  store <4 x double> %i.fka, ptr %i.fjo, align 8, !tbaa !216, !alias.scope !219, !noalias !220
  %index.next3284 = add nuw i64 %index3275, 16    ; 2 uses
  %i.fkb = icmp eq i64 %index.next3284, %n.vec3271
  br i1 %i.fkb, label %middle.block3285, label %vector.body3274, !llvm.loop !95

middle.block3285:                                 ; preds = %vector.body3274
  br i1 %cmp.n3286, label %._crit_edge148.us.i, label %vec.epilog.iter.check3291

vec.epilog.iter.check3291:                        ; preds = %middle.block3285
  br i1 %min.epilog.iters.check3292, label %vec.epilog.scalar.ph3290.preheader, label %vec.epilog.ph3293, !prof !221

vec.epilog.ph3293:                                ; preds = %vector.main.loop.iter.check3268, %vec.epilog.iter.check3291
  %vec.epilog.resume.val3287 = phi i64 [ %n.vec3271, %vec.epilog.iter.check3291 ], [ 0, %vector.main.loop.iter.check3268 ]
  %broadcast.splatinsert3295 = insertelement <4 x double> poison, double %i.fjj, i64 0
  %broadcast.splat3296 = shufflevector <4 x double> %broadcast.splatinsert3295, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body3297

vec.epilog.vector.body3297:                       ; preds = %vec.epilog.vector.body3297, %vec.epilog.ph3293
  %index3298 = phi i64 [ %vec.epilog.resume.val3287, %vec.epilog.ph3293 ], [ %index.next3301, %vec.epilog.vector.body3297 ] ; 2 uses
  %i.fkc = add nuw i64 %.0121153.i, %index3298    ; 2 uses
  %i.fkd = getelementptr inbounds nuw [8 x i8], ptr %i.fje, i64 %i.fkc ; 2 uses
  %wide.load3299 = load <4 x double>, ptr %i.fkd, align 8, !tbaa !216, !alias.scope !219, !noalias !220
  %i.fke = getelementptr inbounds nuw [8 x i8], ptr %i.ffz, i64 %i.fkc
  %wide.load3300 = load <4 x double>, ptr %i.fke, align 8, !tbaa !216, !alias.scope !220
  %i.fkf = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3300, %broadcast.splat3296
  %i.fkg = fadd reassoc nsz arcp contract afn <4 x double> %i.fkf, %wide.load3299
  store <4 x double> %i.fkg, ptr %i.fkd, align 8, !tbaa !216, !alias.scope !219, !noalias !220
  %index.next3301 = add nuw i64 %index3298, 4     ; 2 uses
  %i.fkh = icmp eq i64 %index.next3301, %n.vec3294
  br i1 %i.fkh, label %vec.epilog.middle.block3302, label %vec.epilog.vector.body3297, !llvm.loop !96

vec.epilog.middle.block3302:                      ; preds = %vec.epilog.vector.body3297
  br i1 %cmp.n3303, label %._crit_edge148.us.i, label %vec.epilog.scalar.ph3290.preheader

vec.epilog.scalar.ph3290.preheader:               ; preds = %iter.check3289, %vec.epilog.iter.check3291, %vec.epilog.middle.block3302
  %.2145.us.i.ph = phi i64 [ %.0121153.i, %iter.check3289 ], [ %i.fjc, %vec.epilog.middle.block3302 ], [ %i.fjb, %vec.epilog.iter.check3291 ] ; 4 uses
  %i.fki = sub i64 %i.fen, %.2145.us.i.ph
  %i.fkj = sub i64 %i.ffe, %.2145.us.i.ph
  %xtraiter4326 = and i64 %i.fki, 3               ; 2 uses
  %lcmp.mod4327.not = icmp eq i64 %xtraiter4326, 0
  br i1 %lcmp.mod4327.not, label %vec.epilog.scalar.ph3290.prol.loopexit, label %vec.epilog.scalar.ph3290.prol

vec.epilog.scalar.ph3290.prol:                    ; preds = %vec.epilog.scalar.ph3290.preheader, %vec.epilog.scalar.ph3290.prol
  %.2145.us.i.prol = phi i64 [ %i.fkq, %vec.epilog.scalar.ph3290.prol ], [ %.2145.us.i.ph, %vec.epilog.scalar.ph3290.preheader ] ; 3 uses
  %prol.iter4328 = phi i64 [ %prol.iter4328.next, %vec.epilog.scalar.ph3290.prol ], [ 0, %vec.epilog.scalar.ph3290.preheader ]
  %i.fkk = getelementptr inbounds nuw [8 x i8], ptr %i.fje, i64 %.2145.us.i.prol ; 2 uses
  %i.fkl = load double, ptr %i.fkk, align 8, !tbaa !216
  %i.fkm = getelementptr inbounds nuw [8 x i8], ptr %i.ffz, i64 %.2145.us.i.prol
  %i.fkn = load double, ptr %i.fkm, align 8, !tbaa !216
  %i.fko = fmul reassoc nsz arcp contract afn double %i.fkn, %i.fjj
  %i.fkp = fadd reassoc nsz arcp contract afn double %i.fko, %i.fkl
  store double %i.fkp, ptr %i.fkk, align 8, !tbaa !216
  %i.fkq = add nuw nsw i64 %.2145.us.i.prol, 1    ; 2 uses
  %prol.iter4328.next = add i64 %prol.iter4328, 1 ; 2 uses
  %prol.iter4328.cmp.not = icmp eq i64 %prol.iter4328.next, %xtraiter4326
  br i1 %prol.iter4328.cmp.not, label %vec.epilog.scalar.ph3290.prol.loopexit, label %vec.epilog.scalar.ph3290.prol, !llvm.loop !97

vec.epilog.scalar.ph3290.prol.loopexit:           ; preds = %vec.epilog.scalar.ph3290.prol, %vec.epilog.scalar.ph3290.preheader
  %.2145.us.i.unr = phi i64 [ %.2145.us.i.ph, %vec.epilog.scalar.ph3290.preheader ], [ %i.fkq, %vec.epilog.scalar.ph3290.prol ]
  %i.fkr = icmp ult i64 %i.fkj, 3
  br i1 %i.fkr, label %._crit_edge148.us.i, label %vec.epilog.scalar.ph3290

vec.epilog.scalar.ph3290:                         ; preds = %vec.epilog.scalar.ph3290.prol.loopexit, %vec.epilog.scalar.ph3290
  %.2145.us.i = phi i64 [ %i.flt, %vec.epilog.scalar.ph3290 ], [ %.2145.us.i.unr, %vec.epilog.scalar.ph3290.prol.loopexit ] ; 6 uses
  %i.fks = getelementptr inbounds nuw [8 x i8], ptr %i.fje, i64 %.2145.us.i ; 2 uses
  %i.fkt = load double, ptr %i.fks, align 8, !tbaa !216
  %i.fku = getelementptr inbounds nuw [8 x i8], ptr %i.ffz, i64 %.2145.us.i
  %i.fkv = load double, ptr %i.fku, align 8, !tbaa !216
  %i.fkw = fmul reassoc nsz arcp contract afn double %i.fkv, %i.fjj
  %i.fkx = fadd reassoc nsz arcp contract afn double %i.fkw, %i.fkt
  store double %i.fkx, ptr %i.fks, align 8, !tbaa !216
  %i.fky = add nuw nsw i64 %.2145.us.i, 1         ; 2 uses
  %i.fkz = getelementptr inbounds nuw [8 x i8], ptr %i.fje, i64 %i.fky ; 2 uses
  %i.fla = load double, ptr %i.fkz, align 8, !tbaa !216
  %i.flb = getelementptr inbounds nuw [8 x i8], ptr %i.ffz, i64 %i.fky
  %i.flc = load double, ptr %i.flb, align 8, !tbaa !216
  %i.fld = fmul reassoc nsz arcp contract afn double %i.flc, %i.fjj
  %i.fle = fadd reassoc nsz arcp contract afn double %i.fld, %i.fla
  store double %i.fle, ptr %i.fkz, align 8, !tbaa !216
  %i.flf = add nuw nsw i64 %.2145.us.i, 2         ; 2 uses
  %i.flg = getelementptr inbounds nuw [8 x i8], ptr %i.fje, i64 %i.flf ; 2 uses
  %i.flh = load double, ptr %i.flg, align 8, !tbaa !216
  %i.fli = getelementptr inbounds nuw [8 x i8], ptr %i.ffz, i64 %i.flf
  %i.flj = load double, ptr %i.fli, align 8, !tbaa !216
  %i.flk = fmul reassoc nsz arcp contract afn double %i.flj, %i.fjj
  %i.fll = fadd reassoc nsz arcp contract afn double %i.flk, %i.flh
  store double %i.fll, ptr %i.flg, align 8, !tbaa !216
  %i.flm = add nuw nsw i64 %.2145.us.i, 3         ; 2 uses
  %i.fln = getelementptr inbounds nuw [8 x i8], ptr %i.fje, i64 %i.flm ; 2 uses
  %i.flo = load double, ptr %i.fln, align 8, !tbaa !216
  %i.flp = getelementptr inbounds nuw [8 x i8], ptr %i.ffz, i64 %i.flm
  %i.flq = load double, ptr %i.flp, align 8, !tbaa !216
  %i.flr = fmul reassoc nsz arcp contract afn double %i.flq, %i.fjj
  %i.fls = fadd reassoc nsz arcp contract afn double %i.flr, %i.flo
  store double %i.fls, ptr %i.fln, align 8, !tbaa !216
  %i.flt = add nuw nsw i64 %.2145.us.i, 4         ; 2 uses
  %exitcond167.not.i.3 = icmp eq i64 %i.flt, %i.fen
  br i1 %exitcond167.not.i.3, label %._crit_edge148.us.i, label %vec.epilog.scalar.ph3290, !llvm.loop !98

._crit_edge148.us.i:                              ; preds = %vec.epilog.scalar.ph3290.prol.loopexit, %vec.epilog.scalar.ph3290, %vec.epilog.middle.block3302, %middle.block3285
  %i.flu = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi, i64 %.0123149.us.i ; 2 uses
  %i.flv = load double, ptr %i.flu, align 8, !tbaa !216
  %i.flw = load double, ptr %i.fiz, align 8, !tbaa !216
  %i.flx = fmul reassoc nsz arcp contract afn double %i.flw, %i.fjj
  %i.fly = fadd reassoc nsz arcp contract afn double %i.flx, %i.flv
  store double %i.fly, ptr %i.flu, align 8, !tbaa !216
  %i.flz = add nuw nsw i64 %.0123149.us.i, 1      ; 2 uses
  %exitcond168.not.i = icmp eq i64 %i.flz, %i.fen
  br i1 %exitcond168.not.i, label %.loopexit135.i, label %iter.check3289

.preheader.i:                                     ; preds = %.loopexit135.i, %._crit_edge162.i
  %indvar3210 = phi i64 [ %indvar.next3211, %._crit_edge162.i ], [ 0, %.loopexit135.i ] ; 8 uses
  %.1122164.i = phi i64 [ %i.fnv, %._crit_edge162.i ], [ %i.feo, %.loopexit135.i ] ; 7 uses
  %i.fma = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi, i64 %.1122164.i
  %i.fmb = load double, ptr %i.fma, align 8, !tbaa !216 ; 5 uses
  %i.fmc = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi4447, i64 %.1122164.i ; 5 uses
  store double %i.fmb, ptr %i.fmc, align 8, !tbaa !216
  %.3157.i = add nuw nsw i64 %.1122164.i, 1       ; 6 uses
  %i.fmd = icmp slt i64 %.3157.i, %i.fen
  br i1 %i.fmd, label %iter.check3241, label %._crit_edge162.i

iter.check3241:                                   ; preds = %.preheader.i
  %i.fme = mul nuw nsw i64 %.1122164.i, %i.fen
  %i.fmf = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi4438, i64 %i.fme ; 3 uses
  %min.iters.check3213.a = icmp ult i64 %indvar3210, 4
  br i1 %min.iters.check3213.a, label %vec.epilog.scalar.ph3242.preheader, label %vector.main.loop.iter.check3214

vector.main.loop.iter.check3214:                  ; preds = %iter.check3241
  %min.iters.check3215 = icmp ult i64 %indvar3210, 16
  br i1 %min.iters.check3215, label %vec.epilog.ph3245, label %vector.ph3216

vector.ph3216:                                    ; preds = %vector.main.loop.iter.check3214
  %i.fmg = and i64 %indvar3210, 12
  %n.vec3217 = and i64 %indvar3210, -16           ; 4 uses
  %i.fmh = add i64 %.3157.i, %n.vec3217
  %i.fmi = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %i.fmb, i64 0
  br label %vector.body3218

vector.body3218:                                  ; preds = %vector.body3218, %vector.ph3216
  %index3219 = phi i64 [ 0, %vector.ph3216 ], [ %index.next3232, %vector.body3218 ] ; 2 uses
  %vec.phi3220.a = phi <4 x double> [ %i.fmi, %vector.ph3216 ], [ %i.fmw, %vector.body3218 ]
  %vec.phi3221.a = phi <4 x double> [ zeroinitializer, %vector.ph3216 ], [ %i.fmx, %vector.body3218 ]
  %vec.phi3222 = phi <4 x double> [ zeroinitializer, %vector.ph3216 ], [ %i.fmy, %vector.body3218 ]
  %vec.phi3223 = phi <4 x double> [ zeroinitializer, %vector.ph3216 ], [ %i.fmz, %vector.body3218 ]
  %i.fmj = add nuw i64 %.3157.i, %index3219       ; 2 uses
  %i.fmk = getelementptr inbounds nuw [8 x i8], ptr %i.fmf, i64 %i.fmj ; 4 uses
  %i.fml = getelementptr inbounds nuw i8, ptr %i.fmk, i64 32
  %i.fmm = getelementptr inbounds nuw i8, ptr %i.fmk, i64 64
  %i.fmn = getelementptr inbounds nuw i8, ptr %i.fmk, i64 96
  %wide.load3224.a = load <4 x double>, ptr %i.fmk, align 8, !tbaa !216
  %wide.load3225.a = load <4 x double>, ptr %i.fml, align 8, !tbaa !216
  %wide.load3226.a = load <4 x double>, ptr %i.fmm, align 8, !tbaa !216
  %wide.load3227.a = load <4 x double>, ptr %i.fmn, align 8, !tbaa !216
  %i.fmo = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi4447, i64 %i.fmj ; 4 uses
  %i.fmp = getelementptr inbounds nuw i8, ptr %i.fmo, i64 32
  %i.fmq = getelementptr inbounds nuw i8, ptr %i.fmo, i64 64
  %i.fmr = getelementptr inbounds nuw i8, ptr %i.fmo, i64 96
  %wide.load3228.a = load <4 x double>, ptr %i.fmo, align 8, !tbaa !216
  %wide.load3229.a = load <4 x double>, ptr %i.fmp, align 8, !tbaa !216
  %wide.load3230 = load <4 x double>, ptr %i.fmq, align 8, !tbaa !216
  %wide.load3231 = load <4 x double>, ptr %i.fmr, align 8, !tbaa !216
  %i.fms = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3228.a, %wide.load3224.a
  %i.fmt = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3229.a, %wide.load3225.a
  %i.fmu = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3230, %wide.load3226.a
  %i.fmv = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3231, %wide.load3227.a
  %i.fmw = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi3220.a, %i.fms ; 2 uses
  %i.fmx = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi3221.a, %i.fmt ; 2 uses
  %i.fmy = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi3222, %i.fmu ; 2 uses
  %i.fmz = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi3223, %i.fmv ; 2 uses
  %index.next3232 = add nuw i64 %index3219, 16    ; 2 uses
  %i.fna = icmp eq i64 %index.next3232, %n.vec3217
  br i1 %i.fna, label %middle.block3233, label %vector.body3218, !llvm.loop !99

middle.block3233:                                 ; preds = %vector.body3218
  %bin.rdx3234.a = fadd reassoc nsz arcp contract afn <4 x double> %i.fmx, %i.fmw
  %bin.rdx3235 = fadd reassoc nsz arcp contract afn <4 x double> %i.fmy, %bin.rdx3234.a
  %bin.rdx3236 = fadd reassoc nsz arcp contract afn <4 x double> %i.fmz, %bin.rdx3235
  %i.fnb = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx3236) ; 4 uses
  store double %i.fnb, ptr %i.fmc, align 8, !tbaa !216
  %cmp.n3237 = icmp eq i64 %indvar3210, %n.vec3217
  br i1 %cmp.n3237, label %._crit_edge162.i, label %vec.epilog.iter.check3243

vec.epilog.iter.check3243:                        ; preds = %middle.block3233
  %min.epilog.iters.check3244 = icmp eq i64 %i.fmg, 0
  br i1 %min.epilog.iters.check3244, label %vec.epilog.scalar.ph3242.preheader, label %vec.epilog.ph3245, !prof !221

vec.epilog.ph3245:                                ; preds = %vector.main.loop.iter.check3214, %vec.epilog.iter.check3243
  %vec.epilog.resume.val3238 = phi i64 [ %n.vec3217, %vec.epilog.iter.check3243 ], [ 0, %vector.main.loop.iter.check3214 ]
  %bc.merge.rdx3240 = phi double [ %i.fnb, %vec.epilog.iter.check3243 ], [ %i.fmb, %vector.main.loop.iter.check3214 ]
  %n.vec3246 = and i64 %indvar3210, -4            ; 3 uses
  %i.fnc = add i64 %.3157.i, %n.vec3246
  %i.fnd = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx3240, i64 0
  br label %vec.epilog.vector.body3247

vec.epilog.vector.body3247:                       ; preds = %vec.epilog.vector.body3247, %vec.epilog.ph3245
  %index3248 = phi i64 [ %vec.epilog.resume.val3238, %vec.epilog.ph3245 ], [ %index.next3252, %vec.epilog.vector.body3247 ] ; 2 uses
  %vec.phi3249 = phi <4 x double> [ %i.fnd, %vec.epilog.ph3245 ], [ %i.fni, %vec.epilog.vector.body3247 ]
  %i.fne = add nuw i64 %.3157.i, %index3248       ; 2 uses
  %i.fnf = getelementptr inbounds nuw [8 x i8], ptr %i.fmf, i64 %i.fne
  %wide.load3250 = load <4 x double>, ptr %i.fnf, align 8, !tbaa !216
  %i.fng = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi4447, i64 %i.fne
  %wide.load3251 = load <4 x double>, ptr %i.fng, align 8, !tbaa !216
  %i.fnh = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3251, %wide.load3250
  %i.fni = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi3249, %i.fnh ; 2 uses
  %index.next3252 = add nuw i64 %index3248, 4     ; 2 uses
  %i.fnj = icmp eq i64 %index.next3252, %n.vec3246
  br i1 %i.fnj, label %vec.epilog.middle.block3253, label %vec.epilog.vector.body3247, !llvm.loop !100

vec.epilog.middle.block3253:                      ; preds = %vec.epilog.vector.body3247
  %i.fnk = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fni) ; 3 uses
  store double %i.fnk, ptr %i.fmc, align 8, !tbaa !216
  %cmp.n3254 = icmp eq i64 %indvar3210, %n.vec3246
  br i1 %cmp.n3254, label %._crit_edge162.i, label %vec.epilog.scalar.ph3242.preheader

vec.epilog.scalar.ph3242.preheader:               ; preds = %iter.check3241, %vec.epilog.iter.check3243, %vec.epilog.middle.block3253
  %.3159.i.ph = phi i64 [ %.3157.i, %iter.check3241 ], [ %i.fmh, %vec.epilog.iter.check3243 ], [ %i.fnc, %vec.epilog.middle.block3253 ]
  %storemerge158.i.ph = phi double [ %i.fmb, %iter.check3241 ], [ %i.fnb, %vec.epilog.iter.check3243 ], [ %i.fnk, %vec.epilog.middle.block3253 ]
  br label %vec.epilog.scalar.ph3242

vec.epilog.scalar.ph3242:                         ; preds = %vec.epilog.scalar.ph3242.preheader, %vec.epilog.scalar.ph3242
  %.3159.i = phi i64 [ %.3.i, %vec.epilog.scalar.ph3242 ], [ %.3159.i.ph, %vec.epilog.scalar.ph3242.preheader ] ; 3 uses
  %storemerge158.i = phi double [ %i.fnq, %vec.epilog.scalar.ph3242 ], [ %storemerge158.i.ph, %vec.epilog.scalar.ph3242.preheader ]
  %i.fnl = getelementptr inbounds nuw [8 x i8], ptr %i.fmf, i64 %.3159.i
  %i.fnm = load double, ptr %i.fnl, align 8, !tbaa !216
  %i.fnn = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi4447, i64 %.3159.i
  %i.fno = load double, ptr %i.fnn, align 8, !tbaa !216
  %i.fnp = fmul reassoc nsz arcp contract afn double %i.fno, %i.fnm
  %i.fnq = fsub reassoc nsz arcp contract afn double %storemerge158.i, %i.fnp ; 3 uses
  store double %i.fnq, ptr %i.fmc, align 8, !tbaa !216
  %.3.i = add nuw nsw i64 %.3159.i, 1             ; 2 uses
  %exitcond170.not.i = icmp eq i64 %.3.i, %i.fen
  br i1 %exitcond170.not.i, label %._crit_edge162.i, label %vec.epilog.scalar.ph3242, !llvm.loop !101

._crit_edge162.i:                                 ; preds = %vec.epilog.scalar.ph3242, %middle.block3233, %vec.epilog.middle.block3253, %.preheader.i
  %storemerge.lcssa.i = phi double [ %i.fmb, %.preheader.i ], [ %i.fnk, %vec.epilog.middle.block3253 ], [ %i.fnb, %middle.block3233 ], [ %i.fnq, %vec.epilog.scalar.ph3242 ]
  %i.fnr = mul nuw i64 %.1122164.i, %.1122132.i
  %i.fns = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi4438, i64 %i.fnr
  %i.fnt = load double, ptr %i.fns, align 8, !tbaa !216
  %i.fnu = fdiv reassoc nsz arcp contract afn double %storemerge.lcssa.i, %i.fnt
  store double %i.fnu, ptr %i.fmc, align 8, !tbaa !216
  %i.fnv = add nsw i64 %.1122164.i, -1
  %i.fnw = icmp sgt i64 %.1122164.i, 0
  %indvar.next3211 = add i64 %indvar3210, 1
  br i1 %i.fnw, label %.preheader.i, label %_LinEqSolve.exit

bb.ay:                                            ; preds = %bb.ax
  %i.fnx = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !215
  %i.fny = and i32 %i.fnx, 33554432
  %.not1789 = icmp eq i32 %i.fny, 0
  br i1 %.not1789, label %_LinEqSolve.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fnz = trunc nuw nsw i64 %indvars.iv2591 to i32
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.8, i32 noundef %i.fnz, i32 noundef 0) #20
  br label %_LinEqSolve.exit

_LinEqSolve.exit:                                 ; preds = %._crit_edge162.i, %bb.ay, %bb.az
  %.6 = phi i32 [ 0, %bb.ay ], [ 0, %bb.az ], [ %.42123, %._crit_edge162.i ]
  %i.foa = getelementptr inbounds nuw i8, ptr %indvars.iv2591.sroa.phi4438, i64 2048 ; 6 uses
  %i.fob = getelementptr inbounds nuw i8, ptr %indvars.iv2591.sroa.phi, i64 128 ; 5 uses
  %i.foc = getelementptr inbounds nuw i8, ptr %indvars.iv2591.sroa.phi4447, i64 128 ; 4 uses
  %i.fod = shl nuw nsw i64 %indvars.iv2591, 12    ; 5 uses
  %i.foe = add nuw nsw i64 %i.feq, %i.fod         ; 2 uses
  %scevgep3191 = getelementptr i8, ptr %scevgep3140, i64 %i.fod
  %i.fof = getelementptr i8, ptr %scevgep3190.a, i64 %i.fod
  %i.fog = getelementptr i8, ptr %i.ffh, i64 %i.fod
  %i.foh = getelementptr i8, ptr %i.l, i64 %i.fod
  %i.foi = getelementptr i8, ptr %i.foh, i64 2048
  %i.foj = getelementptr i8, ptr %i.l, i64 %i.foe
  %i.fok = getelementptr i8, ptr %i.l, i64 %i.foe
  br label %.lr.ph.preheader.i.1

.lr.ph.preheader.i.1:                             ; preds = %.loopexit135.i.1, %_LinEqSolve.exit
  %.0121153.i.1 = phi i64 [ %i.fow, %.loopexit135.i.1 ], [ 0, %_LinEqSolve.exit ] ; 26 uses
  %i.fol = sub i64 %i.ffe, %.0121153.i.1
  %i.fom = sub i64 %i.ffd, %.0121153.i.1
  %i.fon = mul i64 %6, %.0121153.i.1
  %scevgep3187.a = getelementptr i8, ptr %i.fog, i64 %i.fon
  %i.foo = shl i64 %.0121153.i.1, 3
  %scevgep3188 = getelementptr i8, ptr %i.foi, i64 %i.foo
  %i.fop = sub nsw i64 %i.fen, %.0121153.i.1      ; 10 uses
  %i.foq = mul i64 %i.fer, %.0121153.i.1
  %scevgep3142.a = getelementptr i8, ptr %i.foj, i64 %i.foq
  %i.for = mul i64 %i.feu, %.0121153.i.1
  %scevgep3143 = getelementptr i8, ptr %i.fok, i64 %i.for
  %i.fos = mul nuw nsw i64 %.0121153.i.1, %i.fen
  %i.fot = getelementptr inbounds nuw [8 x i8], ptr %i.foa, i64 %i.fos ; 14 uses
  %i.fou = getelementptr inbounds nuw [8 x i8], ptr %i.fot, i64 %.0121153.i.1 ; 5 uses
  %i.fov = load double, ptr %i.fou, align 8, !tbaa !216 ; 2 uses
  %i.fow = add nuw nsw i64 %.0121153.i.1, 1       ; 5 uses
  %invariant.gep.i.1 = getelementptr inbounds nuw [8 x i8], ptr %i.foa, i64 %.0121153.i.1 ; 5 uses
  %i.fox = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fov) ; 2 uses
  %xtraiter4331 = and i64 %i.fol, 3               ; 2 uses
  %lcmp.mod4332.not = icmp eq i64 %xtraiter4331, 0
  br i1 %lcmp.mod4332.not, label %.lr.ph.i.1.prol.loopexit, label %.lr.ph.i.1.prol

.lr.ph.i.1.prol:                                  ; preds = %.lr.ph.preheader.i.1, %.lr.ph.i.1.prol
  %.0141.i.1.prol = phi i64 [ %spec.select133.i.1.prol, %.lr.ph.i.1.prol ], [ %.0121153.i.1, %.lr.ph.preheader.i.1 ]
  %.0124140.i.1.prol = phi i64 [ %i.fpc, %.lr.ph.i.1.prol ], [ %i.fow, %.lr.ph.preheader.i.1 ] ; 3 uses
  %.0126139.i.1.prol = phi double [ %spec.select.i.1.prol, %.lr.ph.i.1.prol ], [ %i.fox, %.lr.ph.preheader.i.1 ] ; 2 uses
  %prol.iter4333 = phi i64 [ %prol.iter4333.next, %.lr.ph.i.1.prol ], [ 0, %.lr.ph.preheader.i.1 ]
  %i.foy = mul nuw nsw i64 %.0124140.i.1.prol, %i.fen
  %gep.i.1.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.1, i64 %i.foy
  %i.foz = load double, ptr %gep.i.1.prol, align 8, !tbaa !216 ; 2 uses
  %i.fpa = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.foz)
  %i.fpb = fcmp reassoc nsz arcp contract afn olt double %.0126139.i.1.prol, %i.fpa ; 2 uses
  %spec.select.i.1.prol = select nsz i1 %i.fpb, double %i.foz, double %.0126139.i.1.prol ; 2 uses
  %spec.select133.i.1.prol = select i1 %i.fpb, i64 %.0124140.i.1.prol, i64 %.0141.i.1.prol ; 3 uses
  %i.fpc = add nuw nsw i64 %.0124140.i.1.prol, 1  ; 2 uses
  %prol.iter4333.next = add i64 %prol.iter4333, 1 ; 2 uses
  %prol.iter4333.cmp.not = icmp eq i64 %prol.iter4333.next, %xtraiter4331
  br i1 %prol.iter4333.cmp.not, label %.lr.ph.i.1.prol.loopexit, label %.lr.ph.i.1.prol, !llvm.loop !102

.lr.ph.i.1.prol.loopexit:                         ; preds = %.lr.ph.i.1.prol, %.lr.ph.preheader.i.1
  %spec.select133.i.1.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader.i.1 ], [ %spec.select133.i.1.prol, %.lr.ph.i.1.prol ]
  %.0141.i.1.unr = phi i64 [ %.0121153.i.1, %.lr.ph.preheader.i.1 ], [ %spec.select133.i.1.prol, %.lr.ph.i.1.prol ]
  %.0124140.i.1.unr = phi i64 [ %i.fow, %.lr.ph.preheader.i.1 ], [ %i.fpc, %.lr.ph.i.1.prol ]
  %.0126139.i.1.unr = phi double [ %i.fox, %.lr.ph.preheader.i.1 ], [ %spec.select.i.1.prol, %.lr.ph.i.1.prol ]
  %i.fpd = icmp ult i64 %i.fom, 3
  br i1 %i.fpd, label %._crit_edge.i.1, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.1.prol.loopexit, %.lr.ph.i.1
  %.0141.i.1 = phi i64 [ %spec.select133.i.1.3, %.lr.ph.i.1 ], [ %.0141.i.1.unr, %.lr.ph.i.1.prol.loopexit ]
  %.0124140.i.1 = phi i64 [ %i.fpx, %.lr.ph.i.1 ], [ %.0124140.i.1.unr, %.lr.ph.i.1.prol.loopexit ] ; 6 uses
  %.0126139.i.1 = phi double [ %spec.select.i.1.3, %.lr.ph.i.1 ], [ %.0126139.i.1.unr, %.lr.ph.i.1.prol.loopexit ] ; 2 uses
  %i.fpe = mul nuw nsw i64 %.0124140.i.1, %i.fen
  %gep.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.1, i64 %i.fpe
  %i.fpf = load double, ptr %gep.i.1, align 8, !tbaa !216 ; 2 uses
  %i.fpg = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fpf)
  %i.fph = fcmp reassoc nsz arcp contract afn olt double %.0126139.i.1, %i.fpg ; 2 uses
  %spec.select.i.1 = select nsz i1 %i.fph, double %i.fpf, double %.0126139.i.1 ; 2 uses
  %spec.select133.i.1 = select i1 %i.fph, i64 %.0124140.i.1, i64 %.0141.i.1
  %i.fpi = add nuw nsw i64 %.0124140.i.1, 1       ; 2 uses
  %i.fpj = mul nuw nsw i64 %i.fpi, %i.fen
  %gep.i.1.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.1, i64 %i.fpj
  %i.fpk = load double, ptr %gep.i.1.1, align 8, !tbaa !216 ; 2 uses
  %i.fpl = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fpk)
  %i.fpm = fcmp reassoc nsz arcp contract afn olt double %spec.select.i.1, %i.fpl ; 2 uses
  %spec.select.i.1.1 = select nsz i1 %i.fpm, double %i.fpk, double %spec.select.i.1 ; 2 uses
  %spec.select133.i.1.1 = select i1 %i.fpm, i64 %i.fpi, i64 %spec.select133.i.1
  %i.fpn = add nuw nsw i64 %.0124140.i.1, 2       ; 2 uses
  %i.fpo = mul nuw nsw i64 %i.fpn, %i.fen
  %gep.i.1.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.1, i64 %i.fpo
  %i.fpp = load double, ptr %gep.i.1.2, align 8, !tbaa !216 ; 2 uses
  %i.fpq = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fpp)
  %i.fpr = fcmp reassoc nsz arcp contract afn olt double %spec.select.i.1.1, %i.fpq ; 2 uses
  %spec.select.i.1.2 = select nsz i1 %i.fpr, double %i.fpp, double %spec.select.i.1.1 ; 2 uses
  %spec.select133.i.1.2 = select i1 %i.fpr, i64 %i.fpn, i64 %spec.select133.i.1.1
  %i.fps = add nuw nsw i64 %.0124140.i.1, 3       ; 2 uses
  %i.fpt = mul nuw nsw i64 %i.fps, %i.fen
  %gep.i.1.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.1, i64 %i.fpt
  %i.fpu = load double, ptr %gep.i.1.3, align 8, !tbaa !216 ; 2 uses
  %i.fpv = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fpu)
  %i.fpw = fcmp reassoc nsz arcp contract afn olt double %spec.select.i.1.2, %i.fpv ; 2 uses
  %spec.select.i.1.3 = select nsz i1 %i.fpw, double %i.fpu, double %spec.select.i.1.2
  %spec.select133.i.1.3 = select i1 %i.fpw, i64 %i.fps, i64 %spec.select133.i.1.2 ; 2 uses
  %i.fpx = add nuw nsw i64 %.0124140.i.1, 4       ; 2 uses
  %exitcond.not.i.1.3 = icmp eq i64 %i.fpx, %i.fen
  br i1 %exitcond.not.i.1.3, label %._crit_edge.i.1, label %.lr.ph.i.1

._crit_edge.i.1:                                  ; preds = %.lr.ph.i.1, %.lr.ph.i.1.prol.loopexit
  %spec.select133.i.1.lcssa = phi i64 [ %spec.select133.i.1.lcssa.unr, %.lr.ph.i.1.prol.loopexit ], [ %spec.select133.i.1.3, %.lr.ph.i.1 ] ; 5 uses
  %.not.i1832.1 = icmp eq i64 %spec.select133.i.1.lcssa, %.0121153.i.1
  br i1 %.not.i1832.1, label %bb.ba, label %.lr.ph143.i.1

.lr.ph143.i.1:                                    ; preds = %._crit_edge.i.1
  %i.fpy = mul nsw i64 %spec.select133.i.1.lcssa, %i.fen
  %i.fpz = getelementptr [8 x i8], ptr %i.foa, i64 %i.fpy ; 6 uses
  %min.iters.check3196 = icmp ult i64 %i.fop, 8
  br i1 %min.iters.check3196, label %scalar.ph.preheader, label %vector.memcheck3185

vector.memcheck3185:                              ; preds = %.lr.ph143.i.1
  %i.fqa = mul i64 %i.few, %spec.select133.i.1.lcssa
  %scevgep3189 = getelementptr i8, ptr %scevgep3188, i64 %i.fqa
  %i.fqb = shl i64 %spec.select133.i.1.lcssa, 3
  %i.fqc = add i64 %i.fqb, 8
  %i.fqd = mul i64 %i.fqc, %i.fen
  %scevgep3192 = getelementptr i8, ptr %i.fof, i64 %i.fqd
  %bound03193 = icmp ult ptr %i.fou, %scevgep3192
  %bound13194 = icmp ult ptr %scevgep3189, %scevgep3187.a
  %found.conflict3195 = and i1 %bound03193, %bound13194
  br i1 %found.conflict3195, label %scalar.ph.preheader, label %vector.ph3197

vector.ph3197:                                    ; preds = %vector.memcheck3185
  %n.vec3198 = and i64 %i.fop, -8                 ; 3 uses
  %i.fqe = add i64 %.0121153.i.1, %n.vec3198
  br label %vector.body3199

vector.body3199:                                  ; preds = %vector.body3199, %vector.ph3197
  %index3200 = phi i64 [ 0, %vector.ph3197 ], [ %index.next3205, %vector.body3199 ] ; 2 uses
  %i.fqf = add nuw i64 %.0121153.i.1, %index3200  ; 2 uses
  %i.fqg = getelementptr inbounds nuw [8 x i8], ptr %i.fot, i64 %i.fqf ; 3 uses
  %i.fqh = getelementptr inbounds nuw i8, ptr %i.fqg, i64 32 ; 2 uses
  %wide.load3201.a = load <4 x double>, ptr %i.fqg, align 8, !tbaa !216, !alias.scope !222, !noalias !223
  %wide.load3202.a = load <4 x double>, ptr %i.fqh, align 8, !tbaa !216, !alias.scope !222, !noalias !223
  %i.fqi = getelementptr [8 x i8], ptr %i.fpz, i64 %i.fqf ; 3 uses
  %i.fqj = getelementptr i8, ptr %i.fqi, i64 32   ; 2 uses
  %wide.load3203 = load <4 x double>, ptr %i.fqi, align 8, !tbaa !216, !alias.scope !223
  %wide.load3204 = load <4 x double>, ptr %i.fqj, align 8, !tbaa !216, !alias.scope !223
  store <4 x double> %wide.load3203, ptr %i.fqg, align 8, !tbaa !216, !alias.scope !222, !noalias !223
  store <4 x double> %wide.load3204, ptr %i.fqh, align 8, !tbaa !216, !alias.scope !222, !noalias !223
  store <4 x double> %wide.load3201.a, ptr %i.fqi, align 8, !tbaa !216, !alias.scope !223
  store <4 x double> %wide.load3202.a, ptr %i.fqj, align 8, !tbaa !216, !alias.scope !223
  %index.next3205 = add nuw i64 %index3200, 8     ; 2 uses
  %i.fqk = icmp eq i64 %index.next3205, %n.vec3198
  br i1 %i.fqk, label %middle.block3206, label %vector.body3199, !llvm.loop !106

middle.block3206:                                 ; preds = %vector.body3199
  %cmp.n3207 = icmp eq i64 %i.fop, %n.vec3198
  br i1 %cmp.n3207, label %._crit_edge144.i.1, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck3185, %.lr.ph143.i.1, %middle.block3206
  %.1125142.i.1.ph = phi i64 [ %.0121153.i.1, %vector.memcheck3185 ], [ %.0121153.i.1, %.lr.ph143.i.1 ], [ %i.fqe, %middle.block3206 ] ; 4 uses
  %i.fql = sub i64 %i.fen, %.1125142.i.1.ph
  %xtraiter4334 = and i64 %i.fql, 3               ; 2 uses
  %lcmp.mod4335.not = icmp eq i64 %xtraiter4334, 0
  br i1 %lcmp.mod4335.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.1125142.i.1.prol = phi i64 [ %i.fqq, %scalar.ph.prol ], [ %.1125142.i.1.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter4336 = phi i64 [ %prol.iter4336.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fqm = getelementptr inbounds nuw [8 x i8], ptr %i.fot, i64 %.1125142.i.1.prol ; 2 uses
  %i.fqn = load double, ptr %i.fqm, align 8, !tbaa !216
  %i.fqo = getelementptr [8 x i8], ptr %i.fpz, i64 %.1125142.i.1.prol ; 2 uses
  %i.fqp = load double, ptr %i.fqo, align 8, !tbaa !216
  store double %i.fqp, ptr %i.fqm, align 8, !tbaa !216
  store double %i.fqn, ptr %i.fqo, align 8, !tbaa !216
  %i.fqq = add nuw nsw i64 %.1125142.i.1.prol, 1  ; 2 uses
  %prol.iter4336.next = add i64 %prol.iter4336, 1 ; 2 uses
  %prol.iter4336.cmp.not = icmp eq i64 %prol.iter4336.next, %xtraiter4334
  br i1 %prol.iter4336.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !107

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.1125142.i.1.unr = phi i64 [ %.1125142.i.1.ph, %scalar.ph.preheader ], [ %i.fqq, %scalar.ph.prol ]
  %i.fqr = sub i64 %.1125142.i.1.ph, %i.fen
  %i.fqs = icmp ugt i64 %i.fqr, -4
  br i1 %i.fqs, label %._crit_edge144.i.1, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.1125142.i.1 = phi i64 [ %i.frm, %scalar.ph ], [ %.1125142.i.1.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fqt = getelementptr inbounds nuw [8 x i8], ptr %i.fot, i64 %.1125142.i.1 ; 2 uses
  %i.fqu = load double, ptr %i.fqt, align 8, !tbaa !216
  %i.fqv = getelementptr [8 x i8], ptr %i.fpz, i64 %.1125142.i.1 ; 2 uses
  %i.fqw = load double, ptr %i.fqv, align 8, !tbaa !216
  store double %i.fqw, ptr %i.fqt, align 8, !tbaa !216
  store double %i.fqu, ptr %i.fqv, align 8, !tbaa !216
  %i.fqx = add nuw nsw i64 %.1125142.i.1, 1       ; 2 uses
  %i.fqy = getelementptr inbounds nuw [8 x i8], ptr %i.fot, i64 %i.fqx ; 2 uses
  %i.fqz = load double, ptr %i.fqy, align 8, !tbaa !216
  %i.fra = getelementptr [8 x i8], ptr %i.fpz, i64 %i.fqx ; 2 uses
  %i.frb = load double, ptr %i.fra, align 8, !tbaa !216
  store double %i.frb, ptr %i.fqy, align 8, !tbaa !216
  store double %i.fqz, ptr %i.fra, align 8, !tbaa !216
  %i.frc = add nuw nsw i64 %.1125142.i.1, 2       ; 2 uses
  %i.frd = getelementptr inbounds nuw [8 x i8], ptr %i.fot, i64 %i.frc ; 2 uses
  %i.fre = load double, ptr %i.frd, align 8, !tbaa !216
  %i.frf = getelementptr [8 x i8], ptr %i.fpz, i64 %i.frc ; 2 uses
  %i.frg = load double, ptr %i.frf, align 8, !tbaa !216
  store double %i.frg, ptr %i.frd, align 8, !tbaa !216
  store double %i.fre, ptr %i.frf, align 8, !tbaa !216
  %i.frh = add nuw nsw i64 %.1125142.i.1, 3       ; 2 uses
  %i.fri = getelementptr inbounds nuw [8 x i8], ptr %i.fot, i64 %i.frh ; 2 uses
  %i.frj = load double, ptr %i.fri, align 8, !tbaa !216
  %i.frk = getelementptr [8 x i8], ptr %i.fpz, i64 %i.frh ; 2 uses
  %i.frl = load double, ptr %i.frk, align 8, !tbaa !216
  store double %i.frl, ptr %i.fri, align 8, !tbaa !216
  store double %i.frj, ptr %i.frk, align 8, !tbaa !216
  %i.frm = add nuw nsw i64 %.1125142.i.1, 4       ; 2 uses
  %exitcond166.not.i.1.3 = icmp eq i64 %i.frm, %i.fen
  br i1 %exitcond166.not.i.1.3, label %._crit_edge144.i.1, label %scalar.ph, !llvm.loop !108

._crit_edge144.i.1:                               ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block3206
  %i.frn = getelementptr inbounds nuw [8 x i8], ptr %i.fob, i64 %.0121153.i.1 ; 2 uses
  %i.fro = load double, ptr %i.frn, align 8, !tbaa !216
  %i.frp = getelementptr inbounds [8 x i8], ptr %i.fob, i64 %spec.select133.i.1.lcssa ; 2 uses
  %i.frq = load double, ptr %i.frp, align 8, !tbaa !216
  store double %i.frq, ptr %i.frn, align 8, !tbaa !216
  store double %i.fro, ptr %i.frp, align 8, !tbaa !216
  %.pre.i.1 = load double, ptr %i.fou, align 8, !tbaa !216
  br label %bb.ba

bb.ba:                                            ; preds = %._crit_edge144.i.1, %._crit_edge.i.1
  %i.frr = phi double [ %.pre.i.1, %._crit_edge144.i.1 ], [ %i.fov, %._crit_edge.i.1 ]
  %i.frs = fcmp reassoc nsz arcp contract afn oeq double %i.frr, 0.000000e+00
  br i1 %i.frs, label %bb.bb, label %.lr.ph150.i.1

.lr.ph150.i.1:                                    ; preds = %bb.ba
  %i.frt = getelementptr inbounds nuw [8 x i8], ptr %i.fob, i64 %.0121153.i.1
  %min.iters.check3147 = icmp ult i64 %i.fop, 4
  %bound03144 = icmp ult ptr %scevgep3142.a, %scevgep3143
  %bound13145 = icmp ult ptr %i.fou, %scevgep3191
  %found.conflict3146 = and i1 %bound03144, %bound13145
  %min.iters.check3149 = icmp ult i64 %i.fop, 16
  %i.fru = and i64 %i.fop, 12
  %n.vec3151 = and i64 %i.fop, -16                ; 4 uses
  %i.frv = add i64 %.0121153.i.1, %n.vec3151
  %cmp.n3166 = icmp eq i64 %i.fop, %n.vec3151
  %min.epilog.iters.check3172 = icmp eq i64 %i.fru, 0
  %n.vec3174 = and i64 %i.fop, -4                 ; 3 uses
  %i.frw = add i64 %.0121153.i.1, %n.vec3174
  %cmp.n3183 = icmp eq i64 %i.fop, %n.vec3174
  br label %iter.check3169

iter.check3169:                                   ; preds = %._crit_edge148.us.i.1, %.lr.ph150.i.1
  %.0123149.us.i.1 = phi i64 [ %i.fow, %.lr.ph150.i.1 ], [ %i.fut, %._crit_edge148.us.i.1 ] ; 3 uses
  %i.frx = mul nuw nsw i64 %.0123149.us.i.1, %i.fen
  %i.fry = getelementptr inbounds nuw [8 x i8], ptr %i.foa, i64 %i.frx ; 8 uses
  %i.frz = getelementptr inbounds nuw [8 x i8], ptr %i.fry, i64 %.0121153.i.1
  %i.fsa = load double, ptr %i.frz, align 8, !tbaa !216
  %i.fsb = fneg reassoc nsz arcp contract afn double %i.fsa
  %i.fsc = load double, ptr %i.fou, align 8, !tbaa !216
  %i.fsd = fdiv reassoc nsz arcp contract afn double %i.fsb, %i.fsc ; 8 uses
  %brmerge4527 = select i1 %min.iters.check3147, i1 true, i1 %found.conflict3146
  br i1 %brmerge4527, label %vec.epilog.scalar.ph3170.preheader, label %vector.main.loop.iter.check3148

vector.main.loop.iter.check3148:                  ; preds = %iter.check3169
  br i1 %min.iters.check3149, label %vec.epilog.ph3173, label %vector.ph3150

vector.ph3150:                                    ; preds = %vector.main.loop.iter.check3148
  %broadcast.splatinsert3152 = insertelement <4 x double> poison, double %i.fsd, i64 0
  %broadcast.splat3153 = shufflevector <4 x double> %broadcast.splatinsert3152, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body3154

vector.body3154:                                  ; preds = %vector.body3154, %vector.ph3150
  %index3155 = phi i64 [ 0, %vector.ph3150 ], [ %index.next3164, %vector.body3154 ] ; 2 uses
  %i.fse = add nuw i64 %.0121153.i.1, %index3155  ; 2 uses
  %i.fsf = getelementptr inbounds nuw [8 x i8], ptr %i.fry, i64 %i.fse ; 5 uses
  %i.fsg = getelementptr inbounds nuw i8, ptr %i.fsf, i64 32 ; 2 uses
  %i.fsh = getelementptr inbounds nuw i8, ptr %i.fsf, i64 64 ; 2 uses
  %i.fsi = getelementptr inbounds nuw i8, ptr %i.fsf, i64 96 ; 2 uses
  %wide.load3156.a = load <4 x double>, ptr %i.fsf, align 8, !tbaa !216, !alias.scope !224, !noalias !225
  %wide.load3157.a = load <4 x double>, ptr %i.fsg, align 8, !tbaa !216, !alias.scope !224, !noalias !225
  %wide.load3158.a = load <4 x double>, ptr %i.fsh, align 8, !tbaa !216, !alias.scope !224, !noalias !225
  %wide.load3159.a = load <4 x double>, ptr %i.fsi, align 8, !tbaa !216, !alias.scope !224, !noalias !225
  %i.fsj = getelementptr inbounds nuw [8 x i8], ptr %i.fot, i64 %i.fse ; 4 uses
  %i.fsk = getelementptr inbounds nuw i8, ptr %i.fsj, i64 32
  %i.fsl = getelementptr inbounds nuw i8, ptr %i.fsj, i64 64
  %i.fsm = getelementptr inbounds nuw i8, ptr %i.fsj, i64 96
  %wide.load3160.a = load <4 x double>, ptr %i.fsj, align 8, !tbaa !216, !alias.scope !225
  %wide.load3161.a = load <4 x double>, ptr %i.fsk, align 8, !tbaa !216, !alias.scope !225
  %wide.load3162.a = load <4 x double>, ptr %i.fsl, align 8, !tbaa !216, !alias.scope !225
  %wide.load3163 = load <4 x double>, ptr %i.fsm, align 8, !tbaa !216, !alias.scope !225
  %i.fsn = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3160.a, %broadcast.splat3153
  %i.fso = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3161.a, %broadcast.splat3153
  %i.fsp = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3162.a, %broadcast.splat3153
  %i.fsq = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3163, %broadcast.splat3153
  %i.fsr = fadd reassoc nsz arcp contract afn <4 x double> %i.fsn, %wide.load3156.a
  %i.fss = fadd reassoc nsz arcp contract afn <4 x double> %i.fso, %wide.load3157.a
  %i.fst = fadd reassoc nsz arcp contract afn <4 x double> %i.fsp, %wide.load3158.a
  %i.fsu = fadd reassoc nsz arcp contract afn <4 x double> %i.fsq, %wide.load3159.a
  store <4 x double> %i.fsr, ptr %i.fsf, align 8, !tbaa !216, !alias.scope !224, !noalias !225
  store <4 x double> %i.fss, ptr %i.fsg, align 8, !tbaa !216, !alias.scope !224, !noalias !225
  store <4 x double> %i.fst, ptr %i.fsh, align 8, !tbaa !216, !alias.scope !224, !noalias !225
  store <4 x double> %i.fsu, ptr %i.fsi, align 8, !tbaa !216, !alias.scope !224, !noalias !225
  %index.next3164 = add nuw i64 %index3155, 16    ; 2 uses
  %i.fsv = icmp eq i64 %index.next3164, %n.vec3151
  br i1 %i.fsv, label %middle.block3165, label %vector.body3154, !llvm.loop !112

middle.block3165:                                 ; preds = %vector.body3154
  br i1 %cmp.n3166, label %._crit_edge148.us.i.1, label %vec.epilog.iter.check3171

vec.epilog.iter.check3171:                        ; preds = %middle.block3165
  br i1 %min.epilog.iters.check3172, label %vec.epilog.scalar.ph3170.preheader, label %vec.epilog.ph3173, !prof !221

vec.epilog.ph3173:                                ; preds = %vector.main.loop.iter.check3148, %vec.epilog.iter.check3171
  %vec.epilog.resume.val3167 = phi i64 [ %n.vec3151, %vec.epilog.iter.check3171 ], [ 0, %vector.main.loop.iter.check3148 ]
  %broadcast.splatinsert3175 = insertelement <4 x double> poison, double %i.fsd, i64 0
  %broadcast.splat3176 = shufflevector <4 x double> %broadcast.splatinsert3175, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body3177

vec.epilog.vector.body3177:                       ; preds = %vec.epilog.vector.body3177, %vec.epilog.ph3173
  %index3178 = phi i64 [ %vec.epilog.resume.val3167, %vec.epilog.ph3173 ], [ %index.next3181, %vec.epilog.vector.body3177 ] ; 2 uses
  %i.fsw = add nuw i64 %.0121153.i.1, %index3178  ; 2 uses
  %i.fsx = getelementptr inbounds nuw [8 x i8], ptr %i.fry, i64 %i.fsw ; 2 uses
  %wide.load3179.a = load <4 x double>, ptr %i.fsx, align 8, !tbaa !216, !alias.scope !224, !noalias !225
  %i.fsy = getelementptr inbounds nuw [8 x i8], ptr %i.fot, i64 %i.fsw
  %wide.load3180 = load <4 x double>, ptr %i.fsy, align 8, !tbaa !216, !alias.scope !225
  %i.fsz = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3180, %broadcast.splat3176
  %i.fta = fadd reassoc nsz arcp contract afn <4 x double> %i.fsz, %wide.load3179.a
  store <4 x double> %i.fta, ptr %i.fsx, align 8, !tbaa !216, !alias.scope !224, !noalias !225
  %index.next3181 = add nuw i64 %index3178, 4     ; 2 uses
  %i.ftb = icmp eq i64 %index.next3181, %n.vec3174
  br i1 %i.ftb, label %vec.epilog.middle.block3182, label %vec.epilog.vector.body3177, !llvm.loop !113

vec.epilog.middle.block3182:                      ; preds = %vec.epilog.vector.body3177
  br i1 %cmp.n3183, label %._crit_edge148.us.i.1, label %vec.epilog.scalar.ph3170.preheader

vec.epilog.scalar.ph3170.preheader:               ; preds = %iter.check3169, %vec.epilog.iter.check3171, %vec.epilog.middle.block3182
  %.2145.us.i.1.ph = phi i64 [ %.0121153.i.1, %iter.check3169 ], [ %i.frw, %vec.epilog.middle.block3182 ], [ %i.frv, %vec.epilog.iter.check3171 ] ; 4 uses
  %i.ftc = sub i64 %i.fen, %.2145.us.i.1.ph
  %xtraiter4337 = and i64 %i.ftc, 3               ; 2 uses
  %lcmp.mod4338.not = icmp eq i64 %xtraiter4337, 0
  br i1 %lcmp.mod4338.not, label %vec.epilog.scalar.ph3170.prol.loopexit, label %vec.epilog.scalar.ph3170.prol

vec.epilog.scalar.ph3170.prol:                    ; preds = %vec.epilog.scalar.ph3170.preheader, %vec.epilog.scalar.ph3170.prol
  %.2145.us.i.1.prol = phi i64 [ %i.ftj, %vec.epilog.scalar.ph3170.prol ], [ %.2145.us.i.1.ph, %vec.epilog.scalar.ph3170.preheader ] ; 3 uses
  %prol.iter4339 = phi i64 [ %prol.iter4339.next, %vec.epilog.scalar.ph3170.prol ], [ 0, %vec.epilog.scalar.ph3170.preheader ]
  %i.ftd = getelementptr inbounds nuw [8 x i8], ptr %i.fry, i64 %.2145.us.i.1.prol ; 2 uses
  %i.fte = load double, ptr %i.ftd, align 8, !tbaa !216
  %i.ftf = getelementptr inbounds nuw [8 x i8], ptr %i.fot, i64 %.2145.us.i.1.prol
  %i.ftg = load double, ptr %i.ftf, align 8, !tbaa !216
  %i.fth = fmul reassoc nsz arcp contract afn double %i.ftg, %i.fsd
  %i.fti = fadd reassoc nsz arcp contract afn double %i.fth, %i.fte
  store double %i.fti, ptr %i.ftd, align 8, !tbaa !216
  %i.ftj = add nuw nsw i64 %.2145.us.i.1.prol, 1  ; 2 uses
  %prol.iter4339.next = add i64 %prol.iter4339, 1 ; 2 uses
  %prol.iter4339.cmp.not = icmp eq i64 %prol.iter4339.next, %xtraiter4337
  br i1 %prol.iter4339.cmp.not, label %vec.epilog.scalar.ph3170.prol.loopexit, label %vec.epilog.scalar.ph3170.prol, !llvm.loop !114

vec.epilog.scalar.ph3170.prol.loopexit:           ; preds = %vec.epilog.scalar.ph3170.prol, %vec.epilog.scalar.ph3170.preheader
  %.2145.us.i.1.unr = phi i64 [ %.2145.us.i.1.ph, %vec.epilog.scalar.ph3170.preheader ], [ %i.ftj, %vec.epilog.scalar.ph3170.prol ]
  %i.ftk = sub i64 %.2145.us.i.1.ph, %i.fen
  %i.ftl = icmp ugt i64 %i.ftk, -4
  br i1 %i.ftl, label %._crit_edge148.us.i.1, label %vec.epilog.scalar.ph3170

vec.epilog.scalar.ph3170:                         ; preds = %vec.epilog.scalar.ph3170.prol.loopexit, %vec.epilog.scalar.ph3170
  %.2145.us.i.1 = phi i64 [ %i.fun, %vec.epilog.scalar.ph3170 ], [ %.2145.us.i.1.unr, %vec.epilog.scalar.ph3170.prol.loopexit ] ; 6 uses
  %i.ftm = getelementptr inbounds nuw [8 x i8], ptr %i.fry, i64 %.2145.us.i.1 ; 2 uses
  %i.ftn = load double, ptr %i.ftm, align 8, !tbaa !216
  %i.fto = getelementptr inbounds nuw [8 x i8], ptr %i.fot, i64 %.2145.us.i.1
  %i.ftp = load double, ptr %i.fto, align 8, !tbaa !216
  %i.ftq = fmul reassoc nsz arcp contract afn double %i.ftp, %i.fsd
  %i.ftr = fadd reassoc nsz arcp contract afn double %i.ftq, %i.ftn
  store double %i.ftr, ptr %i.ftm, align 8, !tbaa !216
  %i.fts = add nuw nsw i64 %.2145.us.i.1, 1       ; 2 uses
  %i.ftt = getelementptr inbounds nuw [8 x i8], ptr %i.fry, i64 %i.fts ; 2 uses
  %i.ftu = load double, ptr %i.ftt, align 8, !tbaa !216
  %i.ftv = getelementptr inbounds nuw [8 x i8], ptr %i.fot, i64 %i.fts
  %i.ftw = load double, ptr %i.ftv, align 8, !tbaa !216
  %i.ftx = fmul reassoc nsz arcp contract afn double %i.ftw, %i.fsd
  %i.fty = fadd reassoc nsz arcp contract afn double %i.ftx, %i.ftu
  store double %i.fty, ptr %i.ftt, align 8, !tbaa !216
  %i.ftz = add nuw nsw i64 %.2145.us.i.1, 2       ; 2 uses
  %i.fua = getelementptr inbounds nuw [8 x i8], ptr %i.fry, i64 %i.ftz ; 2 uses
  %i.fub = load double, ptr %i.fua, align 8, !tbaa !216
  %i.fuc = getelementptr inbounds nuw [8 x i8], ptr %i.fot, i64 %i.ftz
  %i.fud = load double, ptr %i.fuc, align 8, !tbaa !216
  %i.fue = fmul reassoc nsz arcp contract afn double %i.fud, %i.fsd
  %i.fuf = fadd reassoc nsz arcp contract afn double %i.fue, %i.fub
  store double %i.fuf, ptr %i.fua, align 8, !tbaa !216
  %i.fug = add nuw nsw i64 %.2145.us.i.1, 3       ; 2 uses
  %i.fuh = getelementptr inbounds nuw [8 x i8], ptr %i.fry, i64 %i.fug ; 2 uses
  %i.fui = load double, ptr %i.fuh, align 8, !tbaa !216
  %i.fuj = getelementptr inbounds nuw [8 x i8], ptr %i.fot, i64 %i.fug
  %i.fuk = load double, ptr %i.fuj, align 8, !tbaa !216
  %i.ful = fmul reassoc nsz arcp contract afn double %i.fuk, %i.fsd
  %i.fum = fadd reassoc nsz arcp contract afn double %i.ful, %i.fui
  store double %i.fum, ptr %i.fuh, align 8, !tbaa !216
  %i.fun = add nuw nsw i64 %.2145.us.i.1, 4       ; 2 uses
  %exitcond167.not.i.1.3 = icmp eq i64 %i.fun, %i.fen
  br i1 %exitcond167.not.i.1.3, label %._crit_edge148.us.i.1, label %vec.epilog.scalar.ph3170, !llvm.loop !115

._crit_edge148.us.i.1:                            ; preds = %vec.epilog.scalar.ph3170.prol.loopexit, %vec.epilog.scalar.ph3170, %vec.epilog.middle.block3182, %middle.block3165
  %i.fuo = getelementptr inbounds nuw [8 x i8], ptr %i.fob, i64 %.0123149.us.i.1 ; 2 uses
  %i.fup = load double, ptr %i.fuo, align 8, !tbaa !216
  %i.fuq = load double, ptr %i.frt, align 8, !tbaa !216
  %i.fur = fmul reassoc nsz arcp contract afn double %i.fuq, %i.fsd
  %i.fus = fadd reassoc nsz arcp contract afn double %i.fur, %i.fup
  store double %i.fus, ptr %i.fuo, align 8, !tbaa !216
  %i.fut = add nuw nsw i64 %.0123149.us.i.1, 1    ; 2 uses
  %exitcond168.not.i.1 = icmp eq i64 %i.fut, %i.fen
  br i1 %exitcond168.not.i.1, label %.loopexit135.i.1, label %iter.check3169

.loopexit135.i.1:                                 ; preds = %._crit_edge148.us.i.1
  %exitcond169.not.i.1 = icmp eq i64 %i.fow, %i.feo
  br i1 %exitcond169.not.i.1, label %.preheader.i.1, label %.lr.ph.preheader.i.1

.preheader.i.1:                                   ; preds = %.loopexit135.i.1, %._crit_edge162.i.1
  %indvar3094 = phi i64 [ %indvar.next3095, %._crit_edge162.i.1 ], [ 0, %.loopexit135.i.1 ] ; 8 uses
  %.1122164.i.1 = phi i64 [ %i.fwp, %._crit_edge162.i.1 ], [ %i.feo, %.loopexit135.i.1 ] ; 7 uses
  %i.fuu = getelementptr inbounds nuw [8 x i8], ptr %i.fob, i64 %.1122164.i.1
  %i.fuv = load double, ptr %i.fuu, align 8, !tbaa !216 ; 5 uses
  %i.fuw = getelementptr inbounds nuw [8 x i8], ptr %i.foc, i64 %.1122164.i.1 ; 5 uses
  store double %i.fuv, ptr %i.fuw, align 8, !tbaa !216
  %.3157.i.1 = add nuw nsw i64 %.1122164.i.1, 1   ; 6 uses
  %i.fux = icmp slt i64 %.3157.i.1, %i.fen
  br i1 %i.fux, label %iter.check3121, label %._crit_edge162.i.1

iter.check3121:                                   ; preds = %.preheader.i.1
  %i.fuy = mul nuw nsw i64 %.1122164.i.1, %i.fen
  %i.fuz = getelementptr inbounds nuw [8 x i8], ptr %i.foa, i64 %i.fuy ; 3 uses
  %min.iters.check3096 = icmp ult i64 %indvar3094, 4
  br i1 %min.iters.check3096, label %vec.epilog.scalar.ph3122.preheader, label %vector.main.loop.iter.check3097

vector.main.loop.iter.check3097:                  ; preds = %iter.check3121
  %min.iters.check3098 = icmp ult i64 %indvar3094, 16
  br i1 %min.iters.check3098, label %vec.epilog.ph3125, label %vector.ph3099

vector.ph3099:                                    ; preds = %vector.main.loop.iter.check3097
  %i.fva = and i64 %indvar3094, 12
  %n.vec3100 = and i64 %indvar3094, -16           ; 4 uses
end_hunk_1
