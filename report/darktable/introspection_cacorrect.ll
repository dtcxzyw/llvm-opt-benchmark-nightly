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
  %i.ad = load <2 x i32>, ptr %i.ab, align 4, !tbaa !12 ; 4 uses
  %i.ae = extractelement <2 x i32> %i.ad, i64 0   ; 44 uses
  %i.af = sext i32 %i.ae to i64                   ; 31 uses
  %i.ag = tail call i64 @dt_round_size(i64 noundef %i.af, i64 noundef 16) #20
  %i.ah = extractelement <2 x i32> %i.ad, i64 1   ; 17 uses
  %i.ai = add nsw i32 %i.ah, 2
  %i.aj = sext i32 %i.ai to i64
  %i.ak = mul i64 %i.ag, %i.aj                    ; 2 uses
  %i.al = add nsw <2 x i32> %i.ad, splat (i32 1)
  %i.am = sdiv <2 x i32> %i.al, splat (i32 2)     ; 2 uses
  %i.an = extractelement <2 x i32> %i.am, i64 0   ; 16 uses
  %i.ao = sext i32 %i.an to i64                   ; 7 uses
  %i.ap = tail call i64 @dt_round_size(i64 noundef %i.ao, i64 noundef 16) #20
  %i.aq = extractelement <2 x i32> %i.am, i64 1   ; 7 uses
  %i.ar = add nsw i32 %i.aq, 2
  %i.as = sext i32 %i.ar to i64
  %i.at = mul i64 %i.ap, %i.as                    ; 2 uses
  %i.au = shl i64 %i.ak, 2                        ; 3 uses
  %i.av = tail call ptr @dt_alloc_aligned(i64 noundef %i.au) #20 ; 201 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.av, i64 64) ]
  %.not1779 = icmp eq ptr %i.av, null
  %indvars.iv2591.sroa.gep4817 = getelementptr inbounds nuw i8, ptr %i.m, i64 256
  %indvars.iv2563.sroa.gep4819 = getelementptr inbounds nuw i8, ptr %i.m, i64 256
  %indvars.iv2591.sroa.gep4822 = getelementptr inbounds nuw i8, ptr %i.l, i64 4096
  %indvars.iv2563.sroa.gep4825 = getelementptr inbounds nuw i8, ptr %i.l, i64 4096
  %indvars.iv2563.sroa.gep4828 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %indvars.iv2591.sroa.gep4831 = getelementptr inbounds nuw i8, ptr %i.a, i64 256
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
  %i.bm = tail call ptr @dt_alloc_aligned(i64 noundef %i.bl) #20 ; 8 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bm, i64 64) ]
  %.not.i = icmp ne ptr %i.bm, null               ; 2 uses
  br i1 %.not.i, label %bb.f, label %dt_calloc_align_float.exit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr nonnull align 64 %i.bm, i8 0, i64 %i.bl, i1 false)
  br label %dt_calloc_align_float.exit

dt_calloc_align_float.exit:                       ; preds = %bb.e, %bb.f
  %i.bn = tail call ptr @dt_alloc_aligned(i64 noundef %i.bl) #20 ; 8 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bn, i64 64) ]
  %.not.i1808 = icmp ne ptr %i.bn, null           ; 2 uses
  br i1 %.not.i1808, label %bb.g, label %dt_calloc_align_float.exit1809

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
  %or.cond = and i1 %.not.i, %.not.i1808
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
  %.016971990 = phi i64 [ 0, %.lr.ph1991.preheader.new ], [ %i.cp, %._crit_edge.1 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph1991.preheader.new ], [ %niter.next.1, %._crit_edge.1 ]
  %.01697.tr = trunc i64 %.016971990 to i32
  %i.bq = shl i32 %.01697.tr, 2
  %.tr.i = and i32 %i.bq, 24
  %i.br = lshr i32 %i.q, %.tr.i
  %i.bs = and i32 %i.br, 1                        ; 2 uses
  %i.bt = icmp ult i32 %i.bs, %i.ae
  br i1 %i.bt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph1991
  %i.bu = zext nneg i32 %i.bs to i64
  %i.bv = mul i64 %.016971990, %i.af
  %i.bw = getelementptr [4 x i8], ptr %i.av, i64 %i.bv
  %i.bx = mul i64 %.016971990, %i.ao
  %i.by = getelementptr [4 x i8], ptr %i.bp, i64 %i.bx
  br label %bb.i

._crit_edge:                                      ; preds = %bb.i, %.lr.ph1991
  %i.bz = or disjoint i64 %.016971990, 1          ; 3 uses
  %.01697.tr.1 = trunc i64 %i.bz to i32
  %i.ca = shl i32 %.01697.tr.1, 2
  %.tr.i.1 = and i32 %i.ca, 28
  %i.cb = lshr i32 %i.q, %.tr.i.1
  %i.cc = and i32 %i.cb, 1                        ; 2 uses
  %i.cd = icmp ult i32 %i.cc, %i.ae
  br i1 %i.cd, label %.lr.ph.1, label %._crit_edge.1

.lr.ph.1:                                         ; preds = %._crit_edge
  %i.ce = zext nneg i32 %i.cc to i64
  %i.cf = mul i64 %i.bz, %i.af
  %i.cg = getelementptr [4 x i8], ptr %i.av, i64 %i.cf
  %i.ch = mul i64 %i.bz, %i.ao
  %i.ci = getelementptr [4 x i8], ptr %i.bp, i64 %i.ch
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.1
  %.016981989.1 = phi i64 [ %i.ce, %.lr.ph.1 ], [ %i.cn, %bb.h ] ; 3 uses
  %i.cj = getelementptr [4 x i8], ptr %i.cg, i64 %.016981989.1
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !33
  %i.cl = lshr i64 %.016981989.1, 1
  %i.cm = getelementptr [4 x i8], ptr %i.ci, i64 %i.cl
  store float %i.ck, ptr %i.cm, align 4, !tbaa !33
  %i.cn = add i64 %.016981989.1, 2                ; 2 uses
  %i.co = icmp ult i64 %i.cn, %i.af
  br i1 %i.co, label %bb.h, label %._crit_edge.1

._crit_edge.1:                                    ; preds = %bb.h, %._crit_edge
  %i.cp = add nuw i64 %.016971990, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit1977.loopexit.unr-lcssa, label %.lr.ph1991

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %.016981989 = phi i64 [ %i.bu, %.lr.ph ], [ %i.cu, %bb.i ] ; 3 uses
  %i.cq = getelementptr [4 x i8], ptr %i.bw, i64 %.016981989
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !33
  %i.cs = lshr i64 %.016981989, 1
  %i.ct = getelementptr [4 x i8], ptr %i.by, i64 %i.cs
  store float %i.cr, ptr %i.ct, align 4, !tbaa !33
  %i.cu = add i64 %.016981989, 2                  ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.af
  br i1 %i.cv, label %bb.i, label %._crit_edge

.loopexit1977.loopexit.unr-lcssa:                 ; preds = %._crit_edge.1
  %i.cw = and i32 %i.ah, 1
  %lcmp.mod.not = icmp eq i32 %i.cw, 0
  br i1 %lcmp.mod.not, label %.loopexit1977, label %.lr.ph1991.epil.preheader

.lr.ph1991.epil.preheader:                        ; preds = %.preheader1976, %.loopexit1977.loopexit.unr-lcssa
  %.016971990.epil.init = phi i64 [ 0, %.preheader1976 ], [ %i.cp, %.loopexit1977.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod4599 = trunc i32 %i.ah to i1
  tail call void @llvm.assume(i1 %lcmp.mod4599)
  %.01697.tr.epil = trunc i64 %.016971990.epil.init to i32
  %i.cx = shl i32 %.01697.tr.epil, 2
end_hunk_0
begin_hunk_1_@process:bb.a
  %exitcond2535.not.3 = icmp eq i64 %indvars.iv.next2532.3, %wide.trip.count2534
  br i1 %exitcond2535.not.3, label %._crit_edge2094, label %.preheader1963, !llvm.loop !84

._crit_edge2094:                                  ; preds = %.preheader1963.prol.loopexit, %.preheader1963, %middle.block4154, %.preheader1972
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.l, i8 0, i64 2048, i1 false), !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.fg, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aqq, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aqr, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aqs, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ff, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aqt, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aqu, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aqv, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.fh, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aqw, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aqx, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aqy, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aqz, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ara, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.arb, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.arc, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ard, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.are, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.arf, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.arg, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.arh, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ari, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.arj, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ark, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.arl, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.arm, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.arn, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aro, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.arp, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.arq, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.arr, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ars, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.art, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aru, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.arv, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.arw, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.arx, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ary, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.arz, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asa, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asb, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asc, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asd, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ase, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asf, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asg, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ash, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asi, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asj, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ask, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asl, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asm, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asn, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aso, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asp, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asq, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asr, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ass, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ast, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asu, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asv, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asw, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asx, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asy, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asz, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ata, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.atb, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.atc, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.atd, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ate, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.atf, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.atg, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ath, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ati, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.atj, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.atk, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.atl, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.atm, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.atn, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ato, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.atp, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.atq, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.atr, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ats, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.att, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.atu, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.atv, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.atw, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.atx, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aty, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.atz, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aua, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aub, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.auc, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aud, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aue, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.auf, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aug, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.auh, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aui, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.auj, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.auk, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aul, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aum, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aun, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.auo, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aup, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.auq, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aur, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aus, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aut, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.auu, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.auv, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.auw, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aux, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.auy, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.auz, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ava, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avb, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avc, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avd, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ave, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avf, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avg, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avh, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avi, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avj, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avk, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avl, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avm, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avn, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avo, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avp, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avq, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avr, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avs, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avt, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avu, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avv, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avw, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avx, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avy, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avz, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awa, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awb, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awc, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awd, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awe, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awf, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awg, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awh, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awi, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awj, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awk, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awl, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awm, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awn, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awo, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awp, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awq, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awr, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aws, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awt, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awu, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awv, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aww, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awx, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awy, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awz, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axa, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axb, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axc, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axd, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axe, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axf, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axg, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axh, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axi, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axj, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axk, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axl, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axm, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axn, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axo, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axp, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axq, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axr, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axs, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axt, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axu, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axv, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axw, align 16, !tbaa !216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.m, i8 0, i64 512, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  store i32 0, ptr %.sroa.0, align 8
  store i32 0, ptr %.sroa.6, align 4
  br i1 %brmerge2997, label %.thread, label %.preheader1962.preheader

.preheader1962.preheader:                         ; preds = %._crit_edge2094
  %i.ews = zext i32 %.016992241 to i64            ; 5 uses
  %xtraiter4686 = and i64 %i.ews, 1
  %i.ewt = icmp eq i32 %.016992241, 1
  %unroll_iter4690 = and i64 %i.ews, 4294967294
  %lcmp.mod4688.not = icmp eq i64 %xtraiter4686, 0
  %lcmp.mod4689 = trunc i32 %.016992241 to i1
  br label %.preheader1962

.preheader1962:                                   ; preds = %.preheader1962.preheader, %._crit_edge2117
  %indvars.iv2571 = phi i64 [ 1, %.preheader1962.preheader ], [ %indvars.iv.next2572, %._crit_edge2117 ] ; 4 uses
  %i.ewu = add nsw i64 %indvars.iv2571, -1
  %i.ewv = mul nuw nsw i64 %i.ewu, %i.fu
  %i.eww = mul nuw nsw i64 %indvars.iv2571, %i.fu
  %indvars.iv.next2572 = add nuw nsw i64 %indvars.iv2571, 1 ; 3 uses
  %i.ewx = mul nuw nsw i64 %indvars.iv.next2572, %i.fu
  %i.ewy = trunc nuw nsw i64 %indvars.iv2571 to i32
  %i.ewz = uitofp nsz nneg i32 %i.ewy to double   ; 2 uses
  %invariant.gep2975 = getelementptr [16 x i8], ptr %i.ek, i64 %i.ewv
  %invariant.gep2977 = getelementptr [16 x i8], ptr %i.ek, i64 %i.ewx
  br label %.preheader1937

._crit_edge2119.split:                            ; preds = %._crit_edge2117
  %.sroa.0.0..sroa.0.0..pre2830 = load i32, ptr %.sroa.0, align 8, !tbaa !12
  %.sroa.6.0..sroa.6.4..pre2831 = load i32, ptr %.sroa.6, align 4, !tbaa !12
  %i.exa = tail call i32 @llvm.smin.i32(i32 %.sroa.0.0..sroa.0.0..pre2830, i32 %.sroa.6.0..sroa.6.4..pre2831) ; 3 uses
  %i.exb = icmp slt i32 %i.exa, 32
  br i1 %i.exb, label %bb.au, label %bb.aw

.preheader1937:                                   ; preds = %.preheader1962, %bb.aq
  %indvars.iv2566 = phi i64 [ 1, %.preheader1962 ], [ %indvars.iv.next2567, %bb.aq ] ; 5 uses
  %gep2976 = getelementptr [16 x i8], ptr %invariant.gep2975, i64 %indvars.iv2566 ; 3 uses
  %i.exc = getelementptr i8, ptr %gep2976, i64 -16
  %i.exd = getelementptr i8, ptr %gep2976, i64 16
  %i.exe = add nuw nsw i64 %indvars.iv2566, %i.eww ; 2 uses
  %i.exf = getelementptr [16 x i8], ptr %i.ek, i64 %i.exe ; 3 uses
  %i.exg = getelementptr i8, ptr %i.exf, i64 -16
  %i.exh = getelementptr i8, ptr %i.exf, i64 16
  %gep2978 = getelementptr [16 x i8], ptr %invariant.gep2977, i64 %indvars.iv2566 ; 3 uses
  %i.exi = getelementptr i8, ptr %gep2978, i64 -16
  %i.exj = getelementptr i8, ptr %gep2978, i64 16
  %i.exk = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.exe
  %i.exl = trunc nuw nsw i64 %indvars.iv2566 to i32
  %i.exm = uitofp nsz nneg i32 %i.exl to double   ; 4 uses
  %factor.op.fmul = fmul reassoc nsz arcp contract afn double %i.exm, %i.exm
  br label %bb.ar

._crit_edge2117:                                  ; preds = %bb.aq
  %exitcond2575.not = icmp eq i64 %indvars.iv.next2572, %wide.trip.count2574
  br i1 %exitcond2575.not, label %._crit_edge2119.split, label %.preheader1962

bb.aq:                                            ; preds = %.loopexit1907
  %indvars.iv.next2567 = add nuw nsw i64 %indvars.iv2566, 1 ; 2 uses
  %exitcond2570.not = icmp eq i64 %indvars.iv.next2567, %wide.trip.count2569
  br i1 %exitcond2570.not, label %._crit_edge2117, label %.preheader1937

bb.ar:                                            ; preds = %.preheader1937, %.loopexit1907
  %i.exn = phi i1 [ true, %.preheader1937 ], [ false, %.loopexit1907 ]
  %indvars.iv2563.sroa.phi = phi ptr [ %.sroa.0, %.preheader1937 ], [ %.sroa.6, %.loopexit1907 ] ; 2 uses
  %indvars.iv2563.sroa.phi4818 = phi ptr [ %i.m, %.preheader1937 ], [ %indvars.iv2563.sroa.gep4819, %.loopexit1907 ] ; 2 uses
  %indvars.iv2563.sroa.phi4823 = phi ptr [ %i.l, %.preheader1937 ], [ %indvars.iv2563.sroa.gep4825, %.loopexit1907 ] ; 4 uses
  %indvars.iv2563.sroa.phi4826 = phi ptr [ %i.b, %.preheader1937 ], [ %indvars.iv2563.sroa.gep4828, %.loopexit1907 ]
  %indvars.iv2563 = phi i64 [ 0, %.preheader1937 ], [ 1, %.loopexit1907 ] ; 10 uses
  %i.exo = getelementptr inbounds nuw [8 x i8], ptr %i.exc, i64 %indvars.iv2563
  %i.exp = getelementptr inbounds nuw [8 x i8], ptr %gep2976, i64 %indvars.iv2563
  %i.exq = getelementptr inbounds nuw [8 x i8], ptr %i.exd, i64 %indvars.iv2563
  %i.exr = getelementptr inbounds nuw [8 x i8], ptr %i.exg, i64 %indvars.iv2563
  %i.exs = getelementptr inbounds nuw [8 x i8], ptr %i.exf, i64 %indvars.iv2563
  %i.ext = getelementptr inbounds nuw [8 x i8], ptr %i.exh, i64 %indvars.iv2563
  %i.exu = getelementptr inbounds nuw [8 x i8], ptr %i.exi, i64 %indvars.iv2563
  %i.exv = getelementptr inbounds nuw [8 x i8], ptr %gep2978, i64 %indvars.iv2563
  %i.exw = getelementptr inbounds nuw [8 x i8], ptr %i.exj, i64 %indvars.iv2563
  %i.exx = load <2 x float>, ptr %i.exs, align 4, !tbaa !33 ; 4 uses
  %i.exy = load <2 x float>, ptr %i.ext, align 4, !tbaa !33 ; 4 uses
  %i.exz = load <2 x float>, ptr %i.exv, align 4, !tbaa !33 ; 4 uses
  %i.eya = load <2 x float>, ptr %i.exw, align 4, !tbaa !33 ; 4 uses
  %i.eyb = load <2 x float>, ptr %i.exo, align 4, !tbaa !33 ; 4 uses
  %i.eyc = load <2 x float>, ptr %i.exp, align 4, !tbaa !33 ; 4 uses
  %i.eyd = load <2 x float>, ptr %i.exq, align 4, !tbaa !33 ; 4 uses
  %i.eye = load <2 x float>, ptr %i.exr, align 4, !tbaa !33 ; 4 uses
  %i.eyf = load <2 x float>, ptr %i.exu, align 4, !tbaa !33 ; 4 uses
  %i.eyg = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.eyc, %i.eyd
  %i.eyh = select <2 x i1> %i.eyg, <2 x float> %i.eyc, <2 x float> %i.eyd ; 4 uses
  %i.eyi = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.eyc, %i.eyd
  %i.eyj = select <2 x i1> %i.eyi, <2 x float> %i.eyc, <2 x float> %i.eyd ; 4 uses
  %i.eyk = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.exx, %i.exy
  %i.eyl = select <2 x i1> %i.eyk, <2 x float> %i.exx, <2 x float> %i.exy ; 4 uses
  %i.eym = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.exx, %i.exy
  %i.eyn = select <2 x i1> %i.eym, <2 x float> %i.exx, <2 x float> %i.exy ; 4 uses
  %i.eyo = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.exz, %i.eya
  %i.eyp = select <2 x i1> %i.eyo, <2 x float> %i.exz, <2 x float> %i.eya ; 4 uses
  %i.eyq = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.exz, %i.eya
  %i.eyr = select <2 x i1> %i.eyq, <2 x float> %i.exz, <2 x float> %i.eya ; 4 uses
  %i.eys = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.eyb, %i.eyh
  %i.eyt = select <2 x i1> %i.eys, <2 x float> %i.eyb, <2 x float> %i.eyh ; 2 uses
  %i.eyu = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.eyb, %i.eyh
  %i.eyv = select <2 x i1> %i.eyu, <2 x float> %i.eyb, <2 x float> %i.eyh ; 4 uses
  %i.eyw = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.eye, %i.eyl
  %i.eyx = select <2 x i1> %i.eyw, <2 x float> %i.eye, <2 x float> %i.eyl ; 2 uses
  %i.eyy = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.eye, %i.eyl
  %i.eyz = select <2 x i1> %i.eyy, <2 x float> %i.eye, <2 x float> %i.eyl ; 4 uses
  %i.eza = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.eyf, %i.eyp
  %i.ezb = select <2 x i1> %i.eza, <2 x float> %i.eyf, <2 x float> %i.eyp ; 2 uses
  %i.ezc = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.eyf, %i.eyp
  %i.ezd = select <2 x i1> %i.ezc, <2 x float> %i.eyf, <2 x float> %i.eyp ; 4 uses
  %i.eze = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.eyv, %i.eyj
  %i.ezf = select <2 x i1> %i.eze, <2 x float> %i.eyv, <2 x float> %i.eyj ; 2 uses
  %i.ezg = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.eyv, %i.eyj
  %i.ezh = select <2 x i1> %i.ezg, <2 x float> %i.eyv, <2 x float> %i.eyj ; 2 uses
  %i.ezi = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.eyz, %i.eyn
  %i.ezj = select <2 x i1> %i.ezi, <2 x float> %i.eyz, <2 x float> %i.eyn ; 4 uses
  %i.ezk = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.eyz, %i.eyn
  %i.ezl = select <2 x i1> %i.ezk, <2 x float> %i.eyz, <2 x float> %i.eyn ; 2 uses
  %i.ezm = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ezd, %i.eyr
  %i.ezn = select <2 x i1> %i.ezm, <2 x float> %i.ezd, <2 x float> %i.eyr ; 4 uses
  %i.ezo = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ezd, %i.eyr
  %i.ezp = select <2 x i1> %i.ezo, <2 x float> %i.ezd, <2 x float> %i.eyr ; 2 uses
  %i.ezq = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.eyt, %i.eyx
  %i.ezr = select <2 x i1> %i.ezq, <2 x float> %i.eyt, <2 x float> %i.eyx ; 2 uses
  %i.ezs = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ezl, %i.ezp
  %i.ezt = select <2 x i1> %i.ezs, <2 x float> %i.ezl, <2 x float> %i.ezp ; 2 uses
  %i.ezu = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ezj, %i.ezn
  %i.ezv = select <2 x i1> %i.ezu, <2 x float> %i.ezj, <2 x float> %i.ezn ; 2 uses
  %i.ezw = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ezj, %i.ezn
  %i.ezx = select <2 x i1> %i.ezw, <2 x float> %i.ezj, <2 x float> %i.ezn ; 2 uses
  %i.ezy = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ezr, %i.ezb
  %i.ezz = select <2 x i1> %i.ezy, <2 x float> %i.ezr, <2 x float> %i.ezb ; 2 uses
  %i.faa = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ezf, %i.ezx
  %i.fab = select <2 x i1> %i.faa, <2 x float> %i.ezf, <2 x float> %i.ezx ; 2 uses
  %i.fac = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ezh, %i.ezt
  %i.fad = select <2 x i1> %i.fac, <2 x float> %i.ezh, <2 x float> %i.ezt ; 4 uses
  %i.fae = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.fab, %i.ezv
  %i.faf = select <2 x i1> %i.fae, <2 x float> %i.fab, <2 x float> %i.ezv ; 4 uses
  %i.fag = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.faf, %i.fad
  %i.fah = select <2 x i1> %i.fag, <2 x float> %i.faf, <2 x float> %i.fad ; 2 uses
  %i.fai = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.faf, %i.fad
  %i.faj = select <2 x i1> %i.fai, <2 x float> %i.faf, <2 x float> %i.fad ; 2 uses
  %i.fak = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ezz, %i.fah
  %i.fal = select <2 x i1> %i.fak, <2 x float> %i.ezz, <2 x float> %i.fah ; 2 uses
  %i.fam = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.faj, %i.fal
  %i.fan = select <2 x i1> %i.fam, <2 x float> %i.faj, <2 x float> %i.fal ; 5 uses
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <2 x float> %i.fan, %i.fan
  %i.fao = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fap = load float, ptr %indvars.iv2563.sroa.phi4826, align 4, !tbaa !33
  %i.faq = fmul reassoc nsz arcp contract afn float %i.fap, 4.000000e+00
  %i.far = fcmp reassoc nsz arcp contract afn ogt float %i.fao, %i.faq
  br i1 %i.far, label %.loopexit1907, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %foldExtExtBinop4556 = fmul reassoc nsz arcp contract afn <2 x float> %i.fan, %i.fan
  %i.fas = extractelement <2 x float> %foldExtExtBinop4556, i64 1
  %i.fat = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv2563
  %i.fau = load float, ptr %i.fat, align 4, !tbaa !33
  %i.fav = fmul reassoc nsz arcp contract afn float %i.fau, 4.000000e+00
  %i.faw = fcmp reassoc nsz arcp contract afn ogt float %i.fas, %i.fav
  br i1 %i.faw, label %.loopexit1907, label %.preheader1896.lr.ph

.preheader1896.lr.ph:                             ; preds = %bb.as
  %6 = load i32, ptr %indvars.iv2563.sroa.phi, align 4, !tbaa !12
  %i.fax = add nsw i32 %6, 1
  store i32 %i.fax, ptr %indvars.iv2563.sroa.phi, align 4, !tbaa !12
  %i.fay = getelementptr inbounds nuw i8, ptr %indvars.iv2563.sroa.phi4823, i64 2048 ; 3 uses
  %i.faz = fpext reassoc nsz arcp contract afn <2 x float> %i.fan to <2 x double>
  %i.fba = getelementptr inbounds nuw i8, ptr %indvars.iv2563.sroa.phi4818, i64 128
  %i.fbb = load float, ptr %i.exk, align 4, !tbaa !33
  %i.fbc = fpext reassoc nsz arcp contract afn float %i.fbb to double ; 2 uses
  %i.fbd = insertelement <2 x double> poison, double %i.fbc, i64 0
  br label %.preheader1896

.preheader1896:                                   ; preds = %.preheader1896.lr.ph, %._crit_edge2107.split.us
  %indvars.iv2558 = phi i64 [ 0, %.preheader1896.lr.ph ], [ %indvars.iv.next2559, %._crit_edge2107.split.us ] ; 2 uses
  %.016672112 = phi double [ 1.000000e+00, %.preheader1896.lr.ph ], [ %i.fde, %._crit_edge2107.split.us ] ; 3 uses
  %i.fbe = mul nuw nsw i64 %indvars.iv2558, %i.ews
  %i.fbf = insertelement <2 x double> poison, double %.016672112, i64 0
  %i.fbg = fmul reassoc nsz arcp contract afn <2 x double> %i.fbf, %i.fbd
  br label %.preheader1895.us

.preheader1895.us:                                ; preds = %._crit_edge2104.us, %.preheader1896
  %indvars.iv2553 = phi i64 [ %indvars.iv.next2554, %._crit_edge2104.us ], [ 0, %.preheader1896 ] ; 2 uses
  %.016652105.us = phi double [ %i.fdd, %._crit_edge2104.us ], [ 1.000000e+00, %.preheader1896 ] ; 4 uses
  %i.fbh = add nuw nsw i64 %indvars.iv2553, %i.fbe ; 3 uses
  %i.fbi = trunc nuw i64 %i.fbh to i32
  %i.fbj = mul nsw i32 %.017022239, %i.fbi
  br label %.preheader1894.us

bb.at:                                            ; preds = %bb.at, %.preheader1894.us.new
  %indvars.iv2547 = phi i64 [ 0, %.preheader1894.us.new ], [ %indvars.iv.next2548.1, %bb.at ] ; 3 uses
  %.016612098.us = phi double [ %.016652105.us, %.preheader1894.us.new ], [ %.reass4888, %bb.at ] ; 3 uses
  %niter4691 = phi i64 [ 0, %.preheader1894.us.new ], [ %niter4691.next.1, %bb.at ]
  %.reass.us = fmul reassoc nsz arcp contract afn double %.016612098.us, %factor.op.fmul.us ; 2 uses
  %i.fbk = trunc nuw nsw i64 %indvars.iv2547 to i32
  %i.fbl = add i32 %i.fce, %i.fbk
  %i.fbm = sext i32 %i.fbl to i64                 ; 2 uses
  %i.fbn = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2563.sroa.phi4823, i64 %i.fbm ; 2 uses
  %i.fbo = load double, ptr %i.fbn, align 8, !tbaa !216
  %i.fbp = fadd reassoc nsz arcp contract afn double %.reass.us, %i.fbo
  store double %i.fbp, ptr %i.fbn, align 8, !tbaa !216
  %i.fbq = getelementptr inbounds nuw [8 x i8], ptr %i.fay, i64 %i.fbm ; 2 uses
  %i.fbr = load double, ptr %i.fbq, align 8, !tbaa !216
  %i.fbs = fadd reassoc nsz arcp contract afn double %i.fbr, %.reass.us
  store double %i.fbs, ptr %i.fbq, align 8, !tbaa !216
  %.reass4888 = fmul reassoc nsz arcp contract afn double %.016612098.us, %factor.op.fmul ; 2 uses
  %.reass.us.1.reass = fmul reassoc nsz arcp contract afn double %.016612098.us, %invariant.op4887 ; 2 uses
  %i.fbt = trunc i64 %indvars.iv2547 to i32
  %i.fbu = or disjoint i32 %i.fbt, 1
  %i.fbv = add i32 %i.fce, %i.fbu
  %i.fbw = sext i32 %i.fbv to i64                 ; 2 uses
  %i.fbx = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2563.sroa.phi4823, i64 %i.fbw ; 2 uses
  %i.fby = load double, ptr %i.fbx, align 8, !tbaa !216
  %i.fbz = fadd reassoc nsz arcp contract afn double %.reass.us.1.reass, %i.fby
  store double %i.fbz, ptr %i.fbx, align 8, !tbaa !216
  %i.fca = getelementptr inbounds nuw [8 x i8], ptr %i.fay, i64 %i.fbw ; 2 uses
  %i.fcb = load double, ptr %i.fca, align 8, !tbaa !216
  %i.fcc = fadd reassoc nsz arcp contract afn double %i.fcb, %.reass.us.1.reass
  store double %i.fcc, ptr %i.fca, align 8, !tbaa !216
  %indvars.iv.next2548.1 = add nuw nsw i64 %indvars.iv2547, 2 ; 2 uses
  %niter4691.next.1 = add i64 %niter4691, 2       ; 2 uses
  %niter4691.ncmp.1 = icmp eq i64 %niter4691.next.1, %unroll_iter4690
  br i1 %niter4691.ncmp.1, label %._crit_edge2101.us.unr-lcssa, label %bb.at

.preheader1894.us:                                ; preds = %.preheader1895.us, %._crit_edge2101.us
  %.016622103.us = phi i32 [ 0, %.preheader1895.us ], [ %i.fcp, %._crit_edge2101.us ] ; 2 uses
  %.016632102.us = phi double [ %.016672112, %.preheader1895.us ], [ %i.fco, %._crit_edge2101.us ] ; 2 uses
  %factor.op.fmul.us = fmul reassoc nsz arcp contract afn double %.016632102.us, %i.fbc ; 3 uses
  %i.fcd = mul nuw nsw i32 %.016622103.us, %.016992241
  %i.fce = add i32 %i.fcd, %i.fbj                 ; 3 uses
  br i1 %i.ewt, label %.epil.preheader4685, label %.preheader1894.us.new

.preheader1894.us.new:                            ; preds = %.preheader1894.us
  %invariant.op4887 = fmul reassoc nsz arcp contract afn double %i.exm, %factor.op.fmul.us
  br label %bb.at

._crit_edge2101.us.unr-lcssa:                     ; preds = %bb.at
  br i1 %lcmp.mod4688.not, label %._crit_edge2101.us, label %.epil.preheader4685

.epil.preheader4685:                              ; preds = %._crit_edge2101.us.unr-lcssa, %.preheader1894.us
  %indvars.iv2547.epil.init = phi i64 [ 0, %.preheader1894.us ], [ %indvars.iv.next2548.1, %._crit_edge2101.us.unr-lcssa ]
  %.016612098.us.epil.init = phi double [ %.016652105.us, %.preheader1894.us ], [ %.reass4888, %._crit_edge2101.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4689)
  %.reass.us.epil = fmul reassoc nsz arcp contract afn double %.016612098.us.epil.init, %factor.op.fmul.us ; 2 uses
  %i.fcf = trunc nuw nsw i64 %indvars.iv2547.epil.init to i32
  %i.fcg = add i32 %i.fce, %i.fcf
  %i.fch = sext i32 %i.fcg to i64                 ; 2 uses
  %i.fci = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2563.sroa.phi4823, i64 %i.fch ; 2 uses
  %i.fcj = load double, ptr %i.fci, align 8, !tbaa !216
  %i.fck = fadd reassoc nsz arcp contract afn double %.reass.us.epil, %i.fcj
  store double %i.fck, ptr %i.fci, align 8, !tbaa !216
  %i.fcl = getelementptr inbounds nuw [8 x i8], ptr %i.fay, i64 %i.fch ; 2 uses
  %i.fcm = load double, ptr %i.fcl, align 8, !tbaa !216
  %i.fcn = fadd reassoc nsz arcp contract afn double %i.fcm, %.reass.us.epil
  store double %i.fcn, ptr %i.fcl, align 8, !tbaa !216
  br label %._crit_edge2101.us

._crit_edge2101.us:                               ; preds = %._crit_edge2101.us.unr-lcssa, %.epil.preheader4685
  %i.fco = fmul reassoc nsz arcp contract afn double %.016632102.us, %i.ewz
  %i.fcp = add nuw nsw i32 %.016622103.us, 1      ; 2 uses
  %exitcond2552.not = icmp eq i32 %i.fcp, %.016992241
  br i1 %exitcond2552.not, label %._crit_edge2104.us, label %.preheader1894.us

._crit_edge2104.us:                               ; preds = %._crit_edge2101.us
  %i.fcq = insertelement <2 x double> poison, double %.016652105.us, i64 0
  %i.fcr = fmul reassoc nsz arcp contract afn <2 x double> %i.fcq, %i.fbg
  %i.fcs = shufflevector <2 x double> %i.fcr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fct = fmul reassoc nsz arcp contract afn <2 x double> %i.fcs, %i.faz
  %i.fcu = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2563.sroa.phi4818, i64 %i.fbh ; 2 uses
  %i.fcv = load double, ptr %i.fcu, align 8, !tbaa !216
  %i.fcw = getelementptr inbounds nuw [8 x i8], ptr %i.fba, i64 %i.fbh ; 2 uses
  %i.fcx = load double, ptr %i.fcw, align 8, !tbaa !216
  %i.fcy = insertelement <2 x double> poison, double %i.fcv, i64 0
  %i.fcz = insertelement <2 x double> %i.fcy, double %i.fcx, i64 1
  %i.fda = fadd reassoc nsz arcp contract afn <2 x double> %i.fct, %i.fcz ; 2 uses
  %i.fdb = extractelement <2 x double> %i.fda, i64 0
  store double %i.fdb, ptr %i.fcu, align 8, !tbaa !216
  %i.fdc = extractelement <2 x double> %i.fda, i64 1
  store double %i.fdc, ptr %i.fcw, align 8, !tbaa !216
  %i.fdd = fmul reassoc nsz arcp contract afn double %.016652105.us, %i.exm
  %indvars.iv.next2554 = add nuw nsw i64 %indvars.iv2553, 1 ; 2 uses
  %exitcond2557.not = icmp eq i64 %indvars.iv.next2554, %i.ews
  br i1 %exitcond2557.not, label %._crit_edge2107.split.us, label %.preheader1895.us

._crit_edge2107.split.us:                         ; preds = %._crit_edge2104.us
  %i.fde = fmul reassoc nsz arcp contract afn double %.016672112, %i.ewz
  %indvars.iv.next2559 = add nuw nsw i64 %indvars.iv2558, 1 ; 2 uses
  %exitcond2562.not = icmp eq i64 %indvars.iv.next2559, %i.ews
  br i1 %exitcond2562.not, label %.loopexit1907, label %.preheader1896

.loopexit1907:                                    ; preds = %._crit_edge2107.split.us, %bb.ar, %bb.as
  br i1 %i.exn, label %bb.ar, label %bb.aq

bb.au:                                            ; preds = %._crit_edge2119.split
  %i.fdf = icmp slt i32 %i.exa, 10
  br i1 %i.fdf, label %.thread, label %bb.aw

.thread:                                          ; preds = %._crit_edge2094, %bb.au
  %i.fdg = phi i32 [ %i.exa, %bb.au ], [ 0, %._crit_edge2094 ]
  %i.fdh = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !215
  %i.fdi = and i32 %i.fdh, 33554432
  %.not1784 = icmp eq i32 %i.fdi, 0
  br i1 %.not1784, label %.thread1874, label %bb.av

bb.av:                                            ; preds = %.thread
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.7, i32 noundef %i.fdg) #20
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
  %i.fdj = zext i32 %.11703 to i64                ; 56 uses
  %i.fdk = add nsw i64 %i.fdj, -1                 ; 6 uses
  %.1122132.i = add nuw nsw i64 %i.fdj, 1         ; 2 uses
  %i.fdl = shl nuw nsw i64 %i.fdj, 3              ; 2 uses
  %i.fdm = add nuw nsw i64 %i.fdl, 2048
  %i.fdn = shl nuw nsw i64 %i.fdj, 3
  %i.fdo = mul nuw i64 %i.fdj, %i.fdj
  %i.fdp = shl i64 %i.fdo, 3
  %scevgep3140 = getelementptr i8, ptr %scevgep3139, i64 %i.fdp
  %i.fdq = add nuw nsw i64 %i.fdl, 8
  %i.fdr = shl nuw nsw i64 %i.fdj, 3              ; 4 uses
  %i.fds = shl nuw nsw i64 %i.fdj, 3
  %i.fdt = mul nuw i64 %i.fdj, %i.fdj
  %i.fdu = shl i64 %i.fdt, 3
  %scevgep3267 = getelementptr i8, ptr %i.l, i64 %i.fdu
  %i.fdv = add nuw nsw i64 %i.fdr, 8
  %i.fdw = shl nuw nsw i64 %i.fdj, 3              ; 2 uses
  %i.fdx = add nsw i64 %i.fdj, -2                 ; 2 uses
  %i.fdy = getelementptr i8, ptr %i.l, i64 %i.fdw
  %i.fdz = getelementptr i8, ptr %i.l, i64 %i.fdr
  %i.fea = getelementptr i8, ptr %i.fdz, i64 2048
  br label %.preheader1961

.preheader1961:                                   ; preds = %bb.aw, %_LinEqSolve.exit.1
  %i.feb = phi i1 [ true, %bb.aw ], [ false, %_LinEqSolve.exit.1 ]
  %indvars.iv2591.sroa.phi = phi ptr [ %i.m, %bb.aw ], [ %indvars.iv2591.sroa.gep4817, %_LinEqSolve.exit.1 ] ; 6 uses
  %indvars.iv2591.sroa.phi4820 = phi ptr [ %i.l, %bb.aw ], [ %indvars.iv2591.sroa.gep4822, %_LinEqSolve.exit.1 ] ; 7 uses
  %indvars.iv2591.sroa.phi4829 = phi ptr [ %i.a, %bb.aw ], [ %indvars.iv2591.sroa.gep4831, %_LinEqSolve.exit.1 ] ; 5 uses
  %indvars.iv2591 = phi i64 [ 0, %bb.aw ], [ 1, %_LinEqSolve.exit.1 ] ; 4 uses
  %.42123 = phi i32 [ 1, %bb.aw ], [ %.6.1, %_LinEqSolve.exit.1 ]
  %i.fec = shl nuw nsw i64 %indvars.iv2591, 12    ; 5 uses
  %i.fed = add nuw nsw i64 %i.fdr, %i.fec         ; 2 uses
  %scevgep3268 = getelementptr i8, ptr %scevgep3267, i64 %i.fec
  %i.fee = getelementptr i8, ptr %i.l, i64 %i.fed
  %i.fef = getelementptr i8, ptr %i.l, i64 %i.fed
  %i.feg = getelementptr i8, ptr %i.fdy, i64 %i.fec
  %invariant.gep4889 = getelementptr i8, ptr %i.l, i64 %i.fec
  %invariant.gep4891 = getelementptr i8, ptr %i.l, i64 %i.fec
  br label %.lr.ph.preheader.i

.loopexit135.i:                                   ; preds = %._crit_edge148.us.i
  %exitcond169.not.i = icmp eq i64 %i.feq, %i.fdk
  br i1 %exitcond169.not.i, label %.preheader.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.loopexit135.i, %.preheader1961
  %.0121153.i = phi i64 [ %i.feq, %.loopexit135.i ], [ 0, %.preheader1961 ] ; 26 uses
  %i.feh = sub i64 %i.fdk, %.0121153.i
  %i.fei = sub i64 %i.fdx, %.0121153.i
  %i.fej = mul i64 %i.fds, %.0121153.i
  %scevgep3266 = getelementptr i8, ptr %i.fee, i64 %i.fej
  %i.fek = mul i64 %i.fdv, %.0121153.i
  %scevgep3269 = getelementptr i8, ptr %i.fef, i64 %i.fek
  %i.fel = sub nsw i64 %i.fdj, %.0121153.i        ; 10 uses
  %i.fem = mul nuw nsw i64 %.0121153.i, %i.fdj
  %i.fen = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi4820, i64 %i.fem ; 14 uses
  %i.feo = getelementptr inbounds nuw [8 x i8], ptr %i.fen, i64 %.0121153.i ; 5 uses
  %i.fep = load double, ptr %i.feo, align 8, !tbaa !216 ; 2 uses
  %i.feq = add nuw nsw i64 %.0121153.i, 1         ; 5 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi4820, i64 %.0121153.i ; 5 uses
  %i.fer = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fep) ; 2 uses
  %xtraiter4692 = and i64 %i.feh, 3               ; 2 uses
  %lcmp.mod4693.not = icmp eq i64 %xtraiter4692, 0
  br i1 %lcmp.mod4693.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %.0141.i.prol = phi i64 [ %spec.select133.i.prol, %.lr.ph.i.prol ], [ %.0121153.i, %.lr.ph.preheader.i ]
  %.0124140.i.prol = phi i64 [ %i.few, %.lr.ph.i.prol ], [ %i.feq, %.lr.ph.preheader.i ] ; 3 uses
  %.0126139.i.prol = phi double [ %spec.select.i.prol, %.lr.ph.i.prol ], [ %i.fer, %.lr.ph.preheader.i ] ; 2 uses
  %prol.iter4694 = phi i64 [ %prol.iter4694.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.fes = mul nuw nsw i64 %.0124140.i.prol, %i.fdj
  %gep.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.fes
  %i.fet = load double, ptr %gep.i.prol, align 8, !tbaa !216 ; 2 uses
  %i.feu = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fet)
  %i.fev = fcmp reassoc nsz arcp contract afn olt double %.0126139.i.prol, %i.feu ; 2 uses
  %spec.select.i.prol = select nsz i1 %i.fev, double %i.fet, double %.0126139.i.prol ; 2 uses
  %spec.select133.i.prol = select i1 %i.fev, i64 %.0124140.i.prol, i64 %.0141.i.prol ; 3 uses
  %i.few = add nuw nsw i64 %.0124140.i.prol, 1    ; 2 uses
  %prol.iter4694.next = add i64 %prol.iter4694, 1 ; 2 uses
  %prol.iter4694.cmp.not = icmp eq i64 %prol.iter4694.next, %xtraiter4692
  br i1 %prol.iter4694.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !85

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %spec.select133.i.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader.i ], [ %spec.select133.i.prol, %.lr.ph.i.prol ]
  %.0141.i.unr = phi i64 [ %.0121153.i, %.lr.ph.preheader.i ], [ %spec.select133.i.prol, %.lr.ph.i.prol ]
  %.0124140.i.unr = phi i64 [ %i.feq, %.lr.ph.preheader.i ], [ %i.few, %.lr.ph.i.prol ]
  %.0126139.i.unr = phi double [ %i.fer, %.lr.ph.preheader.i ], [ %spec.select.i.prol, %.lr.ph.i.prol ]
  %i.fex = icmp ult i64 %i.fei, 3
  br i1 %i.fex, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.0141.i = phi i64 [ %spec.select133.i.3, %.lr.ph.i ], [ %.0141.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0124140.i = phi i64 [ %i.ffr, %.lr.ph.i ], [ %.0124140.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.0126139.i = phi double [ %spec.select.i.3, %.lr.ph.i ], [ %.0126139.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.fey = mul nuw nsw i64 %.0124140.i, %i.fdj
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.fey
  %i.fez = load double, ptr %gep.i, align 8, !tbaa !216 ; 2 uses
  %i.ffa = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fez)
  %i.ffb = fcmp reassoc nsz arcp contract afn olt double %.0126139.i, %i.ffa ; 2 uses
  %spec.select.i = select nsz i1 %i.ffb, double %i.fez, double %.0126139.i ; 2 uses
  %spec.select133.i = select i1 %i.ffb, i64 %.0124140.i, i64 %.0141.i
  %i.ffc = add nuw nsw i64 %.0124140.i, 1         ; 2 uses
  %i.ffd = mul nuw nsw i64 %i.ffc, %i.fdj
  %gep.i.14698 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.ffd
  %i.ffe = load double, ptr %gep.i.14698, align 8, !tbaa !216 ; 2 uses
  %i.fff = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ffe)
  %i.ffg = fcmp reassoc nsz arcp contract afn olt double %spec.select.i, %i.fff ; 2 uses
  %spec.select.i.14699 = select nsz i1 %i.ffg, double %i.ffe, double %spec.select.i ; 2 uses
  %spec.select133.i.14700 = select i1 %i.ffg, i64 %i.ffc, i64 %spec.select133.i
  %i.ffh = add nuw nsw i64 %.0124140.i, 2         ; 2 uses
  %i.ffi = mul nuw nsw i64 %i.ffh, %i.fdj
  %gep.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.ffi
  %i.ffj = load double, ptr %gep.i.2, align 8, !tbaa !216 ; 2 uses
  %i.ffk = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ffj)
  %i.ffl = fcmp reassoc nsz arcp contract afn olt double %spec.select.i.14699, %i.ffk ; 2 uses
  %spec.select.i.2 = select nsz i1 %i.ffl, double %i.ffj, double %spec.select.i.14699 ; 2 uses
  %spec.select133.i.2 = select i1 %i.ffl, i64 %i.ffh, i64 %spec.select133.i.14700
  %i.ffm = add nuw nsw i64 %.0124140.i, 3         ; 2 uses
  %i.ffn = mul nuw nsw i64 %i.ffm, %i.fdj
  %gep.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.ffn
  %i.ffo = load double, ptr %gep.i.3, align 8, !tbaa !216 ; 2 uses
  %i.ffp = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ffo)
  %i.ffq = fcmp reassoc nsz arcp contract afn olt double %spec.select.i.2, %i.ffp ; 2 uses
  %spec.select.i.3 = select nsz i1 %i.ffq, double %i.ffo, double %spec.select.i.2
  %spec.select133.i.3 = select i1 %i.ffq, i64 %i.ffm, i64 %spec.select133.i.2 ; 2 uses
  %i.ffr = add nuw nsw i64 %.0124140.i, 4         ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ffr, %i.fdj
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %spec.select133.i.lcssa = phi i64 [ %spec.select133.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %spec.select133.i.3, %.lr.ph.i ] ; 5 uses
  %.not.i1832 = icmp eq i64 %spec.select133.i.lcssa, %.0121153.i
  br i1 %.not.i1832, label %bb.ax, label %.lr.ph143.i

.lr.ph143.i:                                      ; preds = %._crit_edge.i
  %i.ffs = mul nsw i64 %spec.select133.i.lcssa, %i.fdj
  %i.fft = getelementptr [8 x i8], ptr %indvars.iv2591.sroa.phi4820, i64 %i.ffs ; 6 uses
  %min.iters.check3322 = icmp ult i64 %i.fel, 8
  br i1 %min.iters.check3322, label %scalar.ph3321.preheader, label %vector.memcheck3323

vector.memcheck3323:                              ; preds = %.lr.ph143.i
  %i.ffu = mul nuw nsw i64 %.0121153.i, %i.fdw
  %i.ffv = getelementptr i8, ptr %i.feg, i64 %i.ffu
  %i.ffw = mul i64 %spec.select133.i.lcssa, %i.fdj
  %i.ffx = add i64 %.0121153.i, %i.ffw
  %i.ffy = shl i64 %i.ffx, 3
  %gep4890 = getelementptr i8, ptr %invariant.gep4889, i64 %i.ffy
  %i.ffz = shl i64 %spec.select133.i.lcssa, 3
  %i.fga = add i64 %i.ffz, 8
  %i.fgb = mul i64 %i.fga, %i.fdj
  %gep4892 = getelementptr i8, ptr %invariant.gep4891, i64 %i.fgb
  %bound03324 = icmp ult ptr %i.feo, %gep4892
  %bound13325 = icmp ult ptr %gep4890, %i.ffv
  %found.conflict3326 = and i1 %bound03324, %bound13325
  br i1 %found.conflict3326, label %scalar.ph3321.preheader, label %vector.ph3327

vector.ph3327:                                    ; preds = %vector.memcheck3323
  %n.vec3328 = and i64 %i.fel, -8                 ; 3 uses
  %i.fgc = add i64 %.0121153.i, %n.vec3328
  br label %vector.body3329

vector.body3329:                                  ; preds = %vector.body3329, %vector.ph3327
  %index3330 = phi i64 [ 0, %vector.ph3327 ], [ %index.next3335, %vector.body3329 ] ; 2 uses
  %i.fgd = add nuw i64 %.0121153.i, %index3330    ; 2 uses
  %i.fge = getelementptr inbounds nuw [8 x i8], ptr %i.fen, i64 %i.fgd ; 3 uses
  %i.fgf = getelementptr inbounds nuw i8, ptr %i.fge, i64 32 ; 2 uses
  %wide.load3331 = load <4 x double>, ptr %i.fge, align 8, !tbaa !216, !alias.scope !217, !noalias !218
  %wide.load3332 = load <4 x double>, ptr %i.fgf, align 8, !tbaa !216, !alias.scope !217, !noalias !218
  %i.fgg = getelementptr [8 x i8], ptr %i.fft, i64 %i.fgd ; 3 uses
  %i.fgh = getelementptr i8, ptr %i.fgg, i64 32   ; 2 uses
  %wide.load3333 = load <4 x double>, ptr %i.fgg, align 8, !tbaa !216, !alias.scope !218
  %wide.load3334 = load <4 x double>, ptr %i.fgh, align 8, !tbaa !216, !alias.scope !218
  store <4 x double> %wide.load3333, ptr %i.fge, align 8, !tbaa !216, !alias.scope !217, !noalias !218
  store <4 x double> %wide.load3334, ptr %i.fgf, align 8, !tbaa !216, !alias.scope !217, !noalias !218
  store <4 x double> %wide.load3331, ptr %i.fgg, align 8, !tbaa !216, !alias.scope !218
  store <4 x double> %wide.load3332, ptr %i.fgh, align 8, !tbaa !216, !alias.scope !218
  %index.next3335 = add nuw i64 %index3330, 8     ; 2 uses
  %i.fgi = icmp eq i64 %index.next3335, %n.vec3328
  br i1 %i.fgi, label %middle.block3336, label %vector.body3329, !llvm.loop !89

middle.block3336:                                 ; preds = %vector.body3329
  %cmp.n3337 = icmp eq i64 %i.fel, %n.vec3328
  br i1 %cmp.n3337, label %._crit_edge144.i, label %scalar.ph3321.preheader

scalar.ph3321.preheader:                          ; preds = %vector.memcheck3323, %.lr.ph143.i, %middle.block3336
  %.1125142.i.ph = phi i64 [ %.0121153.i, %vector.memcheck3323 ], [ %.0121153.i, %.lr.ph143.i ], [ %i.fgc, %middle.block3336 ] ; 4 uses
  %i.fgj = sub i64 %i.fdj, %.1125142.i.ph
  %xtraiter4703 = and i64 %i.fgj, 3               ; 2 uses
  %lcmp.mod4704.not = icmp eq i64 %xtraiter4703, 0
  br i1 %lcmp.mod4704.not, label %scalar.ph3321.prol.loopexit, label %scalar.ph3321.prol

scalar.ph3321.prol:                               ; preds = %scalar.ph3321.preheader, %scalar.ph3321.prol
  %.1125142.i.prol = phi i64 [ %i.fgo, %scalar.ph3321.prol ], [ %.1125142.i.ph, %scalar.ph3321.preheader ] ; 3 uses
  %prol.iter4705 = phi i64 [ %prol.iter4705.next, %scalar.ph3321.prol ], [ 0, %scalar.ph3321.preheader ]
end_hunk_1
begin_hunk_2_@process:bb.a
  %i.fsg = load double, ptr %i.fsf, align 8, !tbaa !216
  %i.fsh = getelementptr inbounds nuw [8 x i8], ptr %i.fng, i64 %.2145.us.i.1
  %i.fsi = load double, ptr %i.fsh, align 8, !tbaa !216
  %i.fsj = fmul reassoc nsz arcp contract afn double %i.fsi, %i.fqw
  %i.fsk = fadd reassoc nsz arcp contract afn double %i.fsj, %i.fsg
  store double %i.fsk, ptr %i.fsf, align 8, !tbaa !216
  %i.fsl = add nuw nsw i64 %.2145.us.i.1, 1       ; 2 uses
  %i.fsm = getelementptr inbounds nuw [8 x i8], ptr %i.fqr, i64 %i.fsl ; 2 uses
  %i.fsn = load double, ptr %i.fsm, align 8, !tbaa !216
  %i.fso = getelementptr inbounds nuw [8 x i8], ptr %i.fng, i64 %i.fsl
  %i.fsp = load double, ptr %i.fso, align 8, !tbaa !216
  %i.fsq = fmul reassoc nsz arcp contract afn double %i.fsp, %i.fqw
  %i.fsr = fadd reassoc nsz arcp contract afn double %i.fsq, %i.fsn
  store double %i.fsr, ptr %i.fsm, align 8, !tbaa !216
  %i.fss = add nuw nsw i64 %.2145.us.i.1, 2       ; 2 uses
  %i.fst = getelementptr inbounds nuw [8 x i8], ptr %i.fqr, i64 %i.fss ; 2 uses
  %i.fsu = load double, ptr %i.fst, align 8, !tbaa !216
  %i.fsv = getelementptr inbounds nuw [8 x i8], ptr %i.fng, i64 %i.fss
  %i.fsw = load double, ptr %i.fsv, align 8, !tbaa !216
  %i.fsx = fmul reassoc nsz arcp contract afn double %i.fsw, %i.fqw
  %i.fsy = fadd reassoc nsz arcp contract afn double %i.fsx, %i.fsu
  store double %i.fsy, ptr %i.fst, align 8, !tbaa !216
  %i.fsz = add nuw nsw i64 %.2145.us.i.1, 3       ; 2 uses
  %i.fta = getelementptr inbounds nuw [8 x i8], ptr %i.fqr, i64 %i.fsz ; 2 uses
  %i.ftb = load double, ptr %i.fta, align 8, !tbaa !216
  %i.ftc = getelementptr inbounds nuw [8 x i8], ptr %i.fng, i64 %i.fsz
  %i.ftd = load double, ptr %i.ftc, align 8, !tbaa !216
  %i.fte = fmul reassoc nsz arcp contract afn double %i.ftd, %i.fqw
  %i.ftf = fadd reassoc nsz arcp contract afn double %i.fte, %i.ftb
  store double %i.ftf, ptr %i.fta, align 8, !tbaa !216
  %i.ftg = add nuw nsw i64 %.2145.us.i.1, 4       ; 2 uses
  %exitcond167.not.i.1.3 = icmp eq i64 %i.ftg, %i.fdj
  br i1 %exitcond167.not.i.1.3, label %._crit_edge148.us.i.1, label %vec.epilog.scalar.ph3169, !llvm.loop !115

._crit_edge148.us.i.1:                            ; preds = %vec.epilog.scalar.ph3169.prol.loopexit, %vec.epilog.scalar.ph3169, %vec.epilog.middle.block3181, %middle.block3165
  %i.fth = getelementptr inbounds nuw [8 x i8], ptr %i.fmt, i64 %.0123149.us.i.1 ; 2 uses
  %i.fti = load double, ptr %i.fth, align 8, !tbaa !216
  %i.ftj = load double, ptr %i.fqm, align 8, !tbaa !216
  %i.ftk = fmul reassoc nsz arcp contract afn double %i.ftj, %i.fqw
  %i.ftl = fadd reassoc nsz arcp contract afn double %i.ftk, %i.fti
  store double %i.ftl, ptr %i.fth, align 8, !tbaa !216
  %i.ftm = add nuw nsw i64 %.0123149.us.i.1, 1    ; 2 uses
  %exitcond168.not.i.1 = icmp eq i64 %i.ftm, %i.fdj
  br i1 %exitcond168.not.i.1, label %.loopexit135.i.1, label %iter.check3167

.loopexit135.i.1:                                 ; preds = %._crit_edge148.us.i.1
  %exitcond169.not.i.1 = icmp eq i64 %i.fnj, %i.fdk
  br i1 %exitcond169.not.i.1, label %.preheader.i.1, label %.lr.ph.preheader.i.1

.preheader.i.1:                                   ; preds = %.loopexit135.i.1, %._crit_edge162.i.1
  %indvar3089 = phi i64 [ %indvar.next3090, %._crit_edge162.i.1 ], [ 0, %.loopexit135.i.1 ] ; 8 uses
  %.1122164.i.1 = phi i64 [ %i.fvi, %._crit_edge162.i.1 ], [ %i.fdk, %.loopexit135.i.1 ] ; 7 uses
  %i.ftn = getelementptr inbounds nuw [8 x i8], ptr %i.fmt, i64 %.1122164.i.1
  %i.fto = load double, ptr %i.ftn, align 8, !tbaa !216 ; 5 uses
  %i.ftp = getelementptr inbounds nuw [8 x i8], ptr %i.fmu, i64 %.1122164.i.1 ; 5 uses
  store double %i.fto, ptr %i.ftp, align 8, !tbaa !216
  %.3157.i.1 = add nuw nsw i64 %.1122164.i.1, 1   ; 6 uses
  %i.ftq = icmp slt i64 %.3157.i.1, %i.fdj
  br i1 %i.ftq, label %iter.check3114, label %._crit_edge162.i.1

iter.check3114:                                   ; preds = %.preheader.i.1
  %i.ftr = mul nuw nsw i64 %.1122164.i.1, %i.fdj
  %i.fts = getelementptr inbounds nuw [8 x i8], ptr %i.fms, i64 %i.ftr ; 3 uses
  %min.iters.check3091 = icmp ult i64 %indvar3089, 4
  br i1 %min.iters.check3091, label %vec.epilog.scalar.ph3116.preheader, label %vector.main.loop.iter.check3092

vector.main.loop.iter.check3092:                  ; preds = %iter.check3114
  %min.iters.check3093 = icmp ult i64 %indvar3089, 16
  br i1 %min.iters.check3093, label %vec.epilog.ph3118, label %vector.ph3094

vector.ph3094:                                    ; preds = %vector.main.loop.iter.check3092
  %i.ftt = and i64 %indvar3089, 12
  %n.vec3095 = and i64 %indvar3089, -16           ; 4 uses
  %i.ftu = add i64 %.3157.i.1, %n.vec3095
  %i.ftv = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %i.fto, i64 0
  br label %vector.body3096

vector.body3096:                                  ; preds = %vector.ph3094, %vector.body3096
  %index3097 = phi i64 [ 0, %vector.ph3094 ], [ %index.next3109, %vector.body3096 ] ; 2 uses
  %vec.phi = phi <4 x double> [ %i.ftv, %vector.ph3094 ], [ %i.fuj, %vector.body3096 ]
  %vec.phi3098 = phi <4 x double> [ zeroinitializer, %vector.ph3094 ], [ %i.fuk, %vector.body3096 ]
  %vec.phi3099 = phi <4 x double> [ zeroinitializer, %vector.ph3094 ], [ %i.ful, %vector.body3096 ]
  %vec.phi3100 = phi <4 x double> [ zeroinitializer, %vector.ph3094 ], [ %i.fum, %vector.body3096 ]
  %i.ftw = add nuw i64 %.3157.i.1, %index3097     ; 2 uses
  %i.ftx = getelementptr inbounds nuw [8 x i8], ptr %i.fts, i64 %i.ftw ; 4 uses
  %i.fty = getelementptr inbounds nuw i8, ptr %i.ftx, i64 32
  %i.ftz = getelementptr inbounds nuw i8, ptr %i.ftx, i64 64
  %i.fua = getelementptr inbounds nuw i8, ptr %i.ftx, i64 96
  %wide.load3101 = load <4 x double>, ptr %i.ftx, align 8, !tbaa !216
  %wide.load3102 = load <4 x double>, ptr %i.fty, align 8, !tbaa !216
  %wide.load3103 = load <4 x double>, ptr %i.ftz, align 8, !tbaa !216
  %wide.load3104 = load <4 x double>, ptr %i.fua, align 8, !tbaa !216
  %i.fub = getelementptr inbounds nuw [8 x i8], ptr %i.fmu, i64 %i.ftw ; 4 uses
  %i.fuc = getelementptr inbounds nuw i8, ptr %i.fub, i64 32
  %i.fud = getelementptr inbounds nuw i8, ptr %i.fub, i64 64
  %i.fue = getelementptr inbounds nuw i8, ptr %i.fub, i64 96
  %wide.load3105 = load <4 x double>, ptr %i.fub, align 8, !tbaa !216
  %wide.load3106 = load <4 x double>, ptr %i.fuc, align 8, !tbaa !216
  %wide.load3107 = load <4 x double>, ptr %i.fud, align 8, !tbaa !216
  %wide.load3108 = load <4 x double>, ptr %i.fue, align 8, !tbaa !216
  %i.fuf = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3105, %wide.load3101
  %i.fug = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3106, %wide.load3102
  %i.fuh = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3107, %wide.load3103
  %i.fui = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3108, %wide.load3104
  %i.fuj = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi, %i.fuf ; 2 uses
  %i.fuk = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi3098, %i.fug ; 2 uses
  %i.ful = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi3099, %i.fuh ; 2 uses
  %i.fum = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi3100, %i.fui ; 2 uses
  %index.next3109 = add nuw i64 %index3097, 16    ; 2 uses
  %i.fun = icmp eq i64 %index.next3109, %n.vec3095
  br i1 %i.fun, label %middle.block3110, label %vector.body3096, !llvm.loop !116

middle.block3110:                                 ; preds = %vector.body3096
  %bin.rdx = fadd reassoc nsz arcp contract afn <4 x double> %i.fuk, %i.fuj
  %bin.rdx3111 = fadd reassoc nsz arcp contract afn <4 x double> %i.ful, %bin.rdx
  %bin.rdx3112 = fadd reassoc nsz arcp contract afn <4 x double> %i.fum, %bin.rdx3111
  %i.fuo = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx3112) ; 4 uses
  store double %i.fuo, ptr %i.ftp, align 8, !tbaa !216
  %cmp.n3113 = icmp eq i64 %indvar3089, %n.vec3095
  br i1 %cmp.n3113, label %._crit_edge162.i.1, label %vec.epilog.iter.check3115

vec.epilog.iter.check3115:                        ; preds = %middle.block3110
  %min.epilog.iters.check3117 = icmp eq i64 %i.ftt, 0
  br i1 %min.epilog.iters.check3117, label %vec.epilog.scalar.ph3116.preheader, label %vec.epilog.ph3118, !prof !221

vec.epilog.ph3118:                                ; preds = %vector.main.loop.iter.check3092, %vec.epilog.iter.check3115
  %vec.epilog.resume.val3119 = phi i64 [ %n.vec3095, %vec.epilog.iter.check3115 ], [ 0, %vector.main.loop.iter.check3092 ]
  %bc.merge.rdx = phi double [ %i.fuo, %vec.epilog.iter.check3115 ], [ %i.fto, %vector.main.loop.iter.check3092 ]
  %n.vec3120 = and i64 %indvar3089, -4            ; 3 uses
  %i.fup = add i64 %.3157.i.1, %n.vec3120
  %i.fuq = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body3121

vec.epilog.vector.body3121:                       ; preds = %vec.epilog.vector.body3121, %vec.epilog.ph3118
  %index3122 = phi i64 [ %vec.epilog.resume.val3119, %vec.epilog.ph3118 ], [ %index.next3126, %vec.epilog.vector.body3121 ] ; 2 uses
  %vec.phi3123 = phi <4 x double> [ %i.fuq, %vec.epilog.ph3118 ], [ %i.fuv, %vec.epilog.vector.body3121 ]
  %i.fur = add nuw i64 %.3157.i.1, %index3122     ; 2 uses
  %i.fus = getelementptr inbounds nuw [8 x i8], ptr %i.fts, i64 %i.fur
  %wide.load3124 = load <4 x double>, ptr %i.fus, align 8, !tbaa !216
  %i.fut = getelementptr inbounds nuw [8 x i8], ptr %i.fmu, i64 %i.fur
  %wide.load3125 = load <4 x double>, ptr %i.fut, align 8, !tbaa !216
  %i.fuu = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3125, %wide.load3124
  %i.fuv = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi3123, %i.fuu ; 2 uses
  %index.next3126 = add nuw i64 %index3122, 4     ; 2 uses
  %i.fuw = icmp eq i64 %index.next3126, %n.vec3120
  br i1 %i.fuw, label %vec.epilog.middle.block3127, label %vec.epilog.vector.body3121, !llvm.loop !117

vec.epilog.middle.block3127:                      ; preds = %vec.epilog.vector.body3121
  %i.fux = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fuv) ; 3 uses
  store double %i.fux, ptr %i.ftp, align 8, !tbaa !216
  %cmp.n3128 = icmp eq i64 %indvar3089, %n.vec3120
  br i1 %cmp.n3128, label %._crit_edge162.i.1, label %vec.epilog.scalar.ph3116.preheader

vec.epilog.scalar.ph3116.preheader:               ; preds = %iter.check3114, %vec.epilog.iter.check3115, %vec.epilog.middle.block3127
  %.3159.i.1.ph = phi i64 [ %.3157.i.1, %iter.check3114 ], [ %i.ftu, %vec.epilog.iter.check3115 ], [ %i.fup, %vec.epilog.middle.block3127 ]
  %storemerge158.i.1.ph = phi double [ %i.fto, %iter.check3114 ], [ %i.fuo, %vec.epilog.iter.check3115 ], [ %i.fux, %vec.epilog.middle.block3127 ]
  br label %vec.epilog.scalar.ph3116

vec.epilog.scalar.ph3116:                         ; preds = %vec.epilog.scalar.ph3116.preheader, %vec.epilog.scalar.ph3116
  %.3159.i.1 = phi i64 [ %.3.i.1, %vec.epilog.scalar.ph3116 ], [ %.3159.i.1.ph, %vec.epilog.scalar.ph3116.preheader ] ; 3 uses
  %storemerge158.i.1 = phi double [ %i.fvd, %vec.epilog.scalar.ph3116 ], [ %storemerge158.i.1.ph, %vec.epilog.scalar.ph3116.preheader ]
  %i.fuy = getelementptr inbounds nuw [8 x i8], ptr %i.fts, i64 %.3159.i.1
  %i.fuz = load double, ptr %i.fuy, align 8, !tbaa !216
  %i.fva = getelementptr inbounds nuw [8 x i8], ptr %i.fmu, i64 %.3159.i.1
  %i.fvb = load double, ptr %i.fva, align 8, !tbaa !216
  %i.fvc = fmul reassoc nsz arcp contract afn double %i.fvb, %i.fuz
  %i.fvd = fsub reassoc nsz arcp contract afn double %storemerge158.i.1, %i.fvc ; 3 uses
  store double %i.fvd, ptr %i.ftp, align 8, !tbaa !216
  %.3.i.1 = add nuw nsw i64 %.3159.i.1, 1         ; 2 uses
  %exitcond170.not.i.1 = icmp eq i64 %.3.i.1, %i.fdj
  br i1 %exitcond170.not.i.1, label %._crit_edge162.i.1, label %vec.epilog.scalar.ph3116, !llvm.loop !118

._crit_edge162.i.1:                               ; preds = %vec.epilog.scalar.ph3116, %middle.block3110, %vec.epilog.middle.block3127, %.preheader.i.1
  %storemerge.lcssa.i.1 = phi double [ %i.fto, %.preheader.i.1 ], [ %i.fux, %vec.epilog.middle.block3127 ], [ %i.fuo, %middle.block3110 ], [ %i.fvd, %vec.epilog.scalar.ph3116 ]
  %i.fve = mul nuw i64 %.1122164.i.1, %.1122132.i
  %i.fvf = getelementptr inbounds nuw [8 x i8], ptr %i.fms, i64 %i.fve
  %i.fvg = load double, ptr %i.fvf, align 8, !tbaa !216
  %i.fvh = fdiv reassoc nsz arcp contract afn double %storemerge.lcssa.i.1, %i.fvg
  store double %i.fvh, ptr %i.ftp, align 8, !tbaa !216
  %i.fvi = add nsw i64 %.1122164.i.1, -1
  %i.fvj = icmp sgt i64 %.1122164.i.1, 0
  %indvar.next3090 = add i64 %indvar3089, 1
  br i1 %i.fvj, label %.preheader.i.1, label %_LinEqSolve.exit.1

bb.bb:                                            ; preds = %bb.ba
  %i.fvk = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !215
  %i.fvl = and i32 %i.fvk, 33554432
  %.not1789.1 = icmp eq i32 %i.fvl, 0
  br i1 %.not1789.1, label %_LinEqSolve.exit.1, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fvm = trunc nuw nsw i64 %indvars.iv2591 to i32
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.8, i32 noundef %i.fvm, i32 noundef 1) #20
  br label %_LinEqSolve.exit.1

_LinEqSolve.exit.1:                               ; preds = %._crit_edge162.i.1, %bb.bc, %bb.bb
  %.6.1 = phi i32 [ 0, %bb.bb ], [ 0, %bb.bc ], [ %.6, %._crit_edge162.i.1 ] ; 2 uses
  br i1 %i.feb, label %.preheader1961, label %bb.bd

bb.bd:                                            ; preds = %_LinEqSolve.exit.1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #20
  %.not1786 = icmp eq i32 %.6.1, 0                ; 2 uses
  %brmerge2999 = select i1 %.not1786, i1 true, i1 %i.fl
  %not..not1786 = xor i1 %.not1786, true
  br i1 %brmerge2999, label %.thread1866, label %.preheader1960.lr.ph

.preheader1960.lr.ph:                             ; preds = %bb.bd
  br i1 %i.fm, label %.preheader1960.preheader, label %.preheader1969

.preheader1960.preheader:                         ; preds = %.preheader1960.lr.ph
  %i.fvn = zext i32 %.11700 to i64                ; 4 uses
  %xtraiter4792 = and i64 %i.fvn, 1
  %i.fvo = icmp eq i32 %.11700, 1
  %unroll_iter4802 = and i64 %i.fvn, 4294967294
  %lcmp.mod4796.not = icmp eq i64 %xtraiter4792, 0
  %lcmp.mod4801 = trunc i32 %.11700 to i1
  br label %.preheader1960

.preheader1969:                                   ; preds = %._crit_edge2229, %.preheader1960.lr.ph
  br i1 %i.ft, label %.lr.ph2237, label %.thread1866

.preheader1960:                                   ; preds = %.preheader1960.preheader, %._crit_edge2229
  %indvars.iv2742 = phi i64 [ -8, %.preheader1960.preheader ], [ %indvars.iv.next2743, %._crit_edge2229 ] ; 9 uses
  %i.fvp = add nsw i64 %indvars.iv2742, 8
  %i.fvq = udiv i64 %i.fvp, 112
  %i.fvr = add nsw i64 %indvars.iv2742, 128       ; 2 uses
  %i.fvs = trunc nuw nsw i64 %i.fvr to i32
  %i.fvt = tail call i32 @llvm.smin.i32(i32 %i.fvs, i32 %i.eq)
  %i.fvu = trunc nsw i64 %indvars.iv2742 to i32   ; 2 uses
  %i.fvv = sub nsw i32 %i.fvt, %i.fvu             ; 7 uses
  %i.fvw = icmp sgt i64 %indvars.iv2742, -1       ; 3 uses
  %i.fvx = select i1 %i.fvw, i32 0, i32 8         ; 2 uses
  %i.fvy = icmp sgt i64 %i.fvr, %i.bk
  %i.fvz = trunc i64 %indvars.iv2742 to i32
  %i.fwa = sub i32 %i.ah, %i.fvz
  %i.fwb = select i1 %i.fvy, i32 %i.fwa, i32 %i.fvv ; 7 uses
  %i.fwc = icmp slt i32 %i.fvx, %i.fwb            ; 3 uses
  %i.fwd = icmp slt i32 %i.fwb, %i.fvv            ; 3 uses
  %i.fwe = sub nsw i32 %i.fvv, %i.fwb             ; 3 uses
  %i.fwf = tail call i32 @llvm.smin.i32(i32 %i.fwe, i32 8)
  %i.fwg = icmp sgt i32 %i.fwe, 0                 ; 2 uses
  %.not2832 = xor i1 %i.fwc, true
  %.not1799 = xor i1 %i.fwd, true
  %i.fwh = icmp slt i32 %i.fwe, 1
  %i.fwi = trunc i64 %i.fvq to i32
  %i.fwj = add i32 %i.fwi, 1
  %i.fwk = sitofp reassoc nsz arcp contract afn i32 %i.fwj to float
  %i.fwl = add nsw i32 %i.fvv, -4
  %i.fwm = icmp sgt i32 %i.fvv, 8
  %i.fwn = add nsw i32 %i.fvv, -8                 ; 2 uses
  %i.fwo = icmp sgt i32 %i.fvv, 16
  %i.fwp = zext nneg i32 %i.fvx to i64            ; 3 uses
  %i.fwq = sext i32 %i.fwb to i64                 ; 3 uses
  %i.fwr = sext i32 %i.fwf to i64                 ; 3 uses
  %i.fws = sext i32 %i.fwl to i64
  %i.fwt = sext i32 %i.fwn to i64
  %wide.trip.count2602 = zext nneg i32 %i.fwb to i64
  %brmerge2293.not2318 = select i1 %i.fwd, i1 %i.fwg, i1 false
  %wide.trip.count2630 = zext nneg i32 %i.fwb to i64
  %wide.trip.count2638 = zext nneg i32 %i.fwb to i64
  br label %bb.be

._crit_edge2229:                                  ; preds = %._crit_edge2226
  %indvars.iv.next2743 = add nsw i64 %indvars.iv2742, 112 ; 2 uses
  %i.fwu = icmp slt i64 %indvars.iv.next2743, %i.bk
  br i1 %i.fwu, label %.preheader1960, label %.preheader1969

bb.be:                                            ; preds = %.preheader1960, %._crit_edge2226
  %indvars.iv2738 = phi i64 [ -8, %.preheader1960 ], [ %indvars.iv.next2739, %._crit_edge2226 ] ; 8 uses
  %indvars.iv2664 = phi i32 [ 8, %.preheader1960 ], [ %indvars.iv.next2665, %._crit_edge2226 ] ; 2 uses
  %indvars.iv2661 = phi i32 [ 120, %.preheader1960 ], [ %indvars.iv.next2662, %._crit_edge2226 ] ; 2 uses
  %smin2693 = call i32 @llvm.smin.i32(i32 %indvars.iv2661, i32 %i.er)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(393216) %i.bsk, i8 0, i64 393216, i1 false)
  %i.fwv = add nsw i64 %indvars.iv2738, 8
  %i.fww = udiv i64 %i.fwv, 112
  %i.fwx = add nsw i64 %indvars.iv2738, 128       ; 2 uses
  %i.fwy = trunc i64 %i.fwx to i32
  %i.fwz = tail call i32 @llvm.smin.i32(i32 %i.fwy, i32 %i.er)
  %i.fxa = trunc i64 %indvars.iv2738 to i32       ; 3 uses
  %i.fxb = sub i32 %i.fwz, %i.fxa                 ; 7 uses
  %i.fxc = icmp slt i64 %indvars.iv2738, 0        ; 3 uses
  %i.fxd = select i1 %i.fxc, i32 8, i32 0         ; 4 uses
  %i.fxe = icmp sgt i64 %i.fwx, %i.af
  %i.fxf = trunc i64 %indvars.iv2738 to i32
  %i.fxg = sub i32 %i.ae, %i.fxf
  %i.fxh = select i1 %i.fxe, i32 %i.fxg, i32 %i.fxb ; 11 uses
  %i.fxi = icmp slt i32 %i.fxd, %i.fxh            ; 3 uses
  %or.cond2288 = select i1 %i.fwc, i1 %i.fxi, i1 false
  br i1 %or.cond2288, label %.lr.ph2127.preheader, label %._crit_edge2132.split

.lr.ph2127.preheader:                             ; preds = %bb.be
  %i.fxj = zext nneg i32 %i.fxd to i64            ; 5 uses
  %wide.trip.count2597 = zext i32 %i.fxh to i64   ; 3 uses
  %xtraiter4724 = and i64 %wide.trip.count2597, 1
  %lcmp.mod4725.not = icmp eq i64 %xtraiter4724, 0
  %indvars.iv.next2595.prol = or disjoint i64 %i.fxj, 1
  %i.fxk = add nsw i64 %wide.trip.count2597, -1
  %i.fxl = icmp eq i64 %i.fxk, %i.fxj
  br label %.lr.ph2127

._crit_edge2132.split:                            ; preds = %._crit_edge2128, %bb.be
  %.not2833 = xor i1 %i.fxi, true
  %or.cond2290.not = select i1 %i.fvw, i1 true, i1 %.not2833
  br i1 %or.cond2290.not, label %.loopexit1936.split, label %.preheader1906.preheader

.preheader1906.preheader:                         ; preds = %._crit_edge2132.split
  %i.fxm = zext nneg i32 %i.fxd to i64            ; 34 uses
  %wide.trip.count2608 = zext nneg i32 %i.fxh to i64 ; 17 uses
  %i.fxn = xor i64 %i.fxm, -1
  %i.fxo = add nsw i64 %i.fxn, %wide.trip.count2608 ; 8 uses
  %xtraiter4729 = and i64 %wide.trip.count2608, 1
  %lcmp.mod4730.not = icmp eq i64 %xtraiter4729, 0
  br i1 %lcmp.mod4730.not, label %.prol.loopexit4728, label %.prol.loopexit4728.unr-lcssa

.prol.loopexit4728.unr-lcssa:                     ; preds = %.preheader1906.preheader
  %i.fxp = load ptr, ptr %i.axz, align 8, !tbaa !171 ; 2 uses
  %sext2931.prol = or disjoint i64 %i.fxm, 2048   ; 2 uses
  %i.fxq = getelementptr inbounds nuw [4 x i8], ptr %i.fxp, i64 %sext2931.prol
  %i.fxr = load float, ptr %i.fxq, align 4, !tbaa !33
  %i.fxs = getelementptr inbounds nuw [4 x i8], ptr %i.fxp, i64 %i.fxm
  store float %i.fxr, ptr %i.fxs, align 4, !tbaa !33
  %i.fxt = getelementptr inbounds nuw [4 x i8], ptr %i.bsl, i64 %sext2931.prol
  %i.fxu = load float, ptr %i.fxt, align 32, !tbaa !33
  %i.fxv = getelementptr inbounds nuw [4 x i8], ptr %i.bsl, i64 %i.fxm
  store float %i.fxu, ptr %i.fxv, align 32, !tbaa !33
  %indvars.iv.next2605.prol = or disjoint i64 %i.fxm, 1
  br label %.prol.loopexit4728

.prol.loopexit4728:                               ; preds = %.prol.loopexit4728.unr-lcssa, %.preheader1906.preheader
  %indvars.iv2604.unr = phi i64 [ %i.fxm, %.preheader1906.preheader ], [ %indvars.iv.next2605.prol, %.prol.loopexit4728.unr-lcssa ]
  %i.fxw = icmp eq i64 %i.fxo, 0
  br i1 %i.fxw, label %._crit_edge2135.preheader, label %.preheader1906.preheader.new

.lr.ph2127:                                       ; preds = %.lr.ph2127.preheader, %._crit_edge2128
  %indvars.iv2599 = phi i64 [ %i.fwp, %.lr.ph2127.preheader ], [ %indvars.iv.next2600, %._crit_edge2128 ] ; 4 uses
  %i.fxx = add nsw i64 %indvars.iv2599, %indvars.iv2742
  %indvars.iv2599.tr = trunc i64 %indvars.iv2599 to i32
  %i.fxy = shl i32 %indvars.iv2599.tr, 2
  %.tr.i1833 = and i32 %i.fxy, 28                 ; 2 uses
  %i.fxz = lshr i32 %i.q, %.tr.i1833              ; 3 uses
  %i.fya = and i32 %i.fxz, 3                      ; 2 uses
  %i.fyb = or disjoint i32 %.tr.i1833, 2
  %i.fyc = lshr i32 %i.q, %i.fyb                  ; 2 uses
  %i.fyd = xor i32 %i.fyc, %i.fxz
  %i.fye = and i32 %i.fyd, 3
  %i.fyf = mul nsw i64 %i.fxx, %i.af
  %i.fyg = shl nuw nsw i64 %indvars.iv2599, 7     ; 3 uses
  %invariant.op = add i64 %indvars.iv2738, %i.fyf ; 3 uses
  br i1 %lcmp.mod4725.not, label %.prol.loopexit4723, label %.prol.preheader4722

.prol.preheader4722:                              ; preds = %.lr.ph2127
  %.reass.prol = add i64 %invariant.op, %i.fxj    ; 2 uses
  %i.fyh = or disjoint i64 %i.fyg, %i.fxj         ; 2 uses
  %i.fyi = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.reass.prol
  %i.fyj = load float, ptr %i.fyi, align 4, !tbaa !33
  %i.fyk = zext nneg i32 %i.fya to i64
  %i.fyl = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.fyk
  %i.fym = load ptr, ptr %i.fyl, align 8, !tbaa !171
  %i.fyn = getelementptr inbounds nuw [4 x i8], ptr %i.fym, i64 %i.fyh
  store float %i.fyj, ptr %i.fyn, align 4, !tbaa !33
  %i.fyo = and i32 %i.fxz, 1
  %i.fyp = icmp eq i32 %i.fyo, 0
  br i1 %i.fyp, label %bb.bf, label %.prol.loopexit4723.unr-lcssa

bb.bf:                                            ; preds = %.prol.preheader4722
  %i.fyq = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %.reass.prol
  %i.fyr = load float, ptr %i.fyq, align 4, !tbaa !33
  %i.fys = getelementptr inbounds nuw [4 x i8], ptr %i.bsl, i64 %i.fyh
  store float %i.fyr, ptr %i.fys, align 32, !tbaa !33
  br label %.prol.loopexit4723.unr-lcssa

.prol.loopexit4723.unr-lcssa:                     ; preds = %bb.bf, %.prol.preheader4722
  %i.fyt = and i32 %i.fyc, 3
  br label %.prol.loopexit4723

.prol.loopexit4723:                               ; preds = %.prol.loopexit4723.unr-lcssa, %.lr.ph2127
  %indvars.iv2594.unr = phi i64 [ %i.fxj, %.lr.ph2127 ], [ %indvars.iv.next2595.prol, %.prol.loopexit4723.unr-lcssa ]
  %.016542124.unr = phi i32 [ %i.fya, %.lr.ph2127 ], [ %i.fyt, %.prol.loopexit4723.unr-lcssa ] ; 3 uses
  br i1 %i.fxl, label %._crit_edge2128, label %.lr.ph2127.new

.lr.ph2127.new:                                   ; preds = %.prol.loopexit4723
  %i.fyu = zext nneg i32 %.016542124.unr to i64
  %i.fyv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.fyu
  %i.fyw = load ptr, ptr %i.fyv, align 8, !tbaa !171
  %i.fyx = and i32 %.016542124.unr, 1
  %i.fyy = icmp eq i32 %i.fyx, 0
  %i.fyz = xor i32 %.016542124.unr, %i.fye        ; 2 uses
  %i.fza = zext nneg i32 %i.fyz to i64
  %i.fzb = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.fza
  %i.fzc = load ptr, ptr %i.fzb, align 8, !tbaa !171
  %i.fzd = and i32 %i.fyz, 1
  %i.fze = icmp eq i32 %i.fzd, 0
  br label %bb.bg

._crit_edge2128:                                  ; preds = %bb.bk, %.prol.loopexit4723
  %indvars.iv.next2600 = add nuw nsw i64 %indvars.iv2599, 1 ; 2 uses
  %exitcond2603.not = icmp eq i64 %indvars.iv.next2600, %wide.trip.count2602
  br i1 %exitcond2603.not, label %._crit_edge2132.split, label %.lr.ph2127

end_hunk_2
