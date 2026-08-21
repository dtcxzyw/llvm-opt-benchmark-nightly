Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/switch?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.slurm_conf_t = type { i64, ptr, i16, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, i16, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i64, i64, ptr, i16, i16, ptr, i32, i32, ptr, i32, i16, ptr, i32, i16, i16, ptr, i16, i16, ptr, ptr, i32, i16, i16, ptr, i16, ptr, i32, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i16, i16, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr, i16, ptr, ptr, i32, i32, i32, i32, i32, i64, i32, i32, i16, ptr, ptr, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, i16, i32, ptr, ptr, i16, ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, ptr, i16, ptr, i32, i32, i32, i32, i32, i32, ptr, i16, ptr, ptr, i32, ptr, i32, i16, i16, i16, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, i16, i16, ptr, i16, ptr, i16, ptr, i16, ptr, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, i16, ptr, ptr, ptr, i32, i16, ptr, ptr, i16, i16, ptr, i16, ptr, ptr, ptr, ptr, i32, ptr, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i32, i16, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i16, ptr, ptr, ptr, i16, ptr, i16, ptr, ptr, i16, i16, ptr }
%struct._plugin_args = type { ptr, ptr }
%struct.dynamic_plugin_data = type { ptr, i32 }

@.str = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@context_lock = internal global %union.pthread_mutex_t zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: pthread_mutex_lock(): %m\00", align 1
@__func__.switch_g_init = private unnamed_addr constant [14 x i8] c"switch_g_init\00", align 1
@switch_context_cnt = internal unnamed_addr global i32 -1, align 4
@slurm_conf = external local_unnamed_addr global %struct.slurm_conf_t, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"switch.c\00", align 1
@ops = internal global ptr null, align 8
@switch_context = internal global ptr null, align 8
@switch_context_default = internal unnamed_addr global i32 -1, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Can't find plugin for %s\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"switchPlugins: Duplicate plugin_id %u for %s and %s\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"switchPlugins: Invalid plugin_id %u (<100) %s\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"%s: pthread_mutex_unlock(): %m\00", align 1
@__func__.switch_g_fini = private unnamed_addr constant [14 x i8] c"switch_g_fini\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"%s: protocol_version %hu not supported\00", align 1
@__func__.switch_g_stepinfo_pack = private unnamed_addr constant [23 x i8] c"switch_g_stepinfo_pack\00", align 1
@__func__.switch_g_stepinfo_unpack = private unnamed_addr constant [25 x i8] c"switch_g_stepinfo_unpack\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"we don't have switch plugin type %u\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"%s: skipping switch_stepinfo data (%u)\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"%s: unpack error\00", align 1
@syms = internal global [23 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], align 16
@.str.11 = private unnamed_addr constant [10 x i8] c"plugin_id\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"switch_p_save\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"switch_p_restore\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"switch_p_jobinfo_pack\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"switch_p_jobinfo_unpack\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"switch_p_jobinfo_free\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"switch_p_stepinfo_build\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"switch_p_stepinfo_duplicate\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"switch_p_stepinfo_free\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"switch_p_stepinfo_pack\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"switch_p_stepinfo_unpack\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"switch_p_setup_special_steps\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"switch_p_job_preinit\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"switch_p_job_init\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"switch_p_job_postfini\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"switch_p_job_attach\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"switch_p_job_step_complete\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"switch_p_job_start\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"switch_p_job_complete\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"switch_p_job_channel\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"switch_p_fs_init\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"switch_p_stepmgr_init\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"switch_p_stepmgr_fini\00", align 1
@__func__._create_dynamic_plugin_data = private unnamed_addr constant [28 x i8] c"_create_dynamic_plugin_data\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @switch_g_init(i1 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct._plugin_args, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @context_lock) #9 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #10
  store i32 %i.a, ptr %i.b, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.switch_g_init) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr @switch_context_cnt, align 4
  %i.d = icmp sgt i32 %i.c, -1
  br i1 %i.d, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr @switch_context_cnt, align 4
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1488), align 8 ; 2 uses
  %.not35 = icmp eq ptr %i.e, null
  br i1 %.not35, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr @.str, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.e, ptr %i.f, align 8
  br i1 %0, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = tail call ptr @list_create(ptr noundef nonnull @xfree_ptr) #9 ; 2 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1488), align 8
  %i.i = tail call ptr @xstrdup(ptr noundef %i.h) #9
  tail call void @list_append(ptr noundef %i.g, ptr noundef %i.i) #9
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.j = tail call ptr @plugin_get_plugins_of_type(ptr noundef nonnull @.str) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi ptr [ %i.g, %bb.f ], [ %i.j, %bb.g ]  ; 5 uses
  %.not36 = icmp eq ptr %.0, null
  br i1 %.not36, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = tail call i32 @list_count(ptr noundef nonnull %.0) #9 ; 2 uses
  %.not37 = icmp eq i32 %i.k, 0
  br i1 %.not37, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = tail call ptr @slurm_xcalloc(i64 noundef %i.l, i64 noundef 184, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.2, i32 noundef 198, ptr noundef nonnull @__func__.switch_g_init) #9
  store ptr %i.m, ptr @ops, align 8
  %i.n = tail call ptr @slurm_xcalloc(i64 noundef %i.l, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.2, i32 noundef 200, ptr noundef nonnull @__func__.switch_g_init) #9
  store ptr %i.n, ptr @switch_context, align 8
  %i.o = call i32 @list_for_each(ptr noundef nonnull %.0, ptr noundef nonnull @_load_plugins, ptr noundef nonnull %1) #9 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.p = load i32, ptr @switch_context_default, align 4
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.k
  %i.r = load i32, ptr @switch_context_cnt, align 4 ; 3 uses
  %i.s = load ptr, ptr @ops, align 8              ; 2 uses
  %sext = sext i32 %i.r to i64                    ; 2 uses
  %smax = call i32 @llvm.smax.i32(i32 %i.r, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond57.not75 = icmp slt i32 %i.r, 1
  br i1 %exitcond57.not75, label %.loopexit, label %.lr.ph78

bb.l:                                             ; preds = %bb.k
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1488), align 8
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.3, ptr noundef %i.t) #11
  unreachable

bb.m:                                             ; preds = %._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv77, 1
  %exitcond57.not = icmp eq i64 %indvars.iv.next55, %wide.trip.count
  br i1 %exitcond57.not, label %.loopexit, label %.lr.ph78, !llvm.loop !8

.lr.ph78:                                         ; preds = %.preheader, %bb.m
  %indvars.iv77 = phi i64 [ %indvars.iv.next, %bb.m ], [ 1, %.preheader ] ; 2 uses
  %indvars.iv5476 = phi i64 [ %indvars.iv.next55, %bb.m ], [ 0, %.preheader ] ; 4 uses
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv5476, 1 ; 3 uses
  %2 = icmp slt i64 %indvars.iv.next55, %sext
  %i.u = getelementptr inbounds nuw [184 x i8], ptr %i.s, i64 %indvars.iv5476
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = load i32, ptr %i.v, align 4              ; 4 uses
  br i1 %2, label %.lr.ph, label %._crit_edge

bb.n:                                             ; preds = %.lr.ph
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next52, %sext
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !11

.lr.ph:                                           ; preds = %.lr.ph78, %bb.n
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %bb.n ], [ %indvars.iv77, %.lr.ph78 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [184 x i8], ptr %i.s, i64 %indvars.iv51
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = load i32, ptr %i.y, align 4
  %.not38 = icmp eq i32 %i.w, %i.z
  br i1 %.not38, label %bb.o, label %bb.n

bb.o:                                             ; preds = %.lr.ph
  %i.aa = load ptr, ptr @switch_context, align 8  ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv5476
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv51
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.4, i32 noundef %i.w, ptr noundef %i.ae, ptr noundef %i.ai) #11
  unreachable

._crit_edge:                                      ; preds = %bb.n, %.lr.ph78
  %i.aj = icmp ult i32 %i.w, 100
  br i1 %i.aj, label %bb.p, label %bb.m, !llvm.loop !8

bb.p:                                             ; preds = %._crit_edge
  %i.ak = load ptr, ptr @switch_context, align 8
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv5476
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.5, i32 noundef %i.w, ptr noundef %i.ao) #11
  unreachable

.loopexit:                                        ; preds = %bb.m, %.preheader, %bb.c, %bb.d
  %.1 = phi ptr [ null, %bb.c ], [ null, %bb.d ], [ %.0, %.preheader ], [ %.0, %bb.m ] ; 2 uses
  %i.ap = call i32 @pthread_mutex_unlock(ptr noundef nonnull @context_lock) #9 ; 2 uses
  %.not39 = icmp eq i32 %i.ap, 0
  br i1 %.not39, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.loopexit
  %i.aq = tail call ptr @__errno_location() #10
  store i32 %i.ap, ptr %i.aq, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.switch_g_init) #11
  unreachable

bb.r:                                             ; preds = %.loopexit
  %.not40 = icmp eq ptr %.1, null
  br i1 %.not40, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @list_destroy(ptr noundef nonnull %.1) #9
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: noreturn
declare void @fatal_abort(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @list_create(ptr noundef) local_unnamed_addr #6

declare void @xfree_ptr(ptr noundef) #6

declare void @list_append(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #6

declare ptr @plugin_get_plugins_of_type(ptr noundef) local_unnamed_addr #6

declare i32 @list_count(ptr noundef) local_unnamed_addr #6

declare ptr @slurm_xcalloc(i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare i32 @list_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal noundef i32 @_load_plugins(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = load ptr, ptr @ops, align 8
  %i.c = load i32, ptr @switch_context_cnt, align 4
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [184 x i8], ptr %i.b, i64 %i.d
  %i.f = tail call ptr @plugin_context_create(ptr noundef %i.a, ptr noundef %0, ptr noundef %i.e, ptr noundef nonnull @syms, i64 noundef 184) #9
  %i.g = load ptr, ptr @switch_context, align 8
  %i.h = load i32, ptr @switch_context_cnt, align 4
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.i
  store ptr %i.f, ptr %i.j, align 8
  %i.k = load ptr, ptr @switch_context, align 8
  %i.l = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.i
  %i.m = load ptr, ptr %i.l, align 8
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call i32 @xstrcmp(ptr noundef %0, ptr noundef %i.o) #9
  %.not6 = icmp eq i32 %i.p, 0
  %.pre = load i32, ptr @switch_context_cnt, align 4 ; 2 uses
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %.pre, ptr @switch_context_default, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = add nsw i32 %.pre, 1
  store i32 %i.q, ptr @switch_context_cnt, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret i32 0
}

; Function Attrs: noreturn
declare void @fatal(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #3

declare void @list_destroy(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @switch_g_fini() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @context_lock) #9 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #10
  store i32 %i.a, ptr %i.b, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.switch_g_fini) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @switch_context, align 8
  %.not12 = icmp eq ptr %i.c, null
  br i1 %.not12, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.d = load i32, ptr @switch_context_cnt, align 4
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %.0914 = phi i32 [ %i.j, %.lr.ph ], [ 0, %.preheader ]
  %i.f = load ptr, ptr @switch_context, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i32 @plugin_context_destroy(ptr noundef %i.h) #9
  %i.j = or i32 %i.i, %.0914                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = load i32, ptr @switch_context_cnt, align 4
  %i.l = sext i32 %i.k to i64
  %i.m = icmp slt i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.09.lcssa = phi i32 [ 0, %.preheader ], [ %i.j, %.lr.ph ]
  tail call void @slurm_xfree(ptr noundef nonnull @switch_context) #9
  tail call void @slurm_xfree(ptr noundef nonnull @ops) #9
  store i32 -1, ptr @switch_context_cnt, align 4
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.1 = phi i32 [ %.09.lcssa, %._crit_edge ], [ 0, %bb.c ]
  %i.n = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @context_lock) #9 ; 2 uses
  %.not13 = icmp eq i32 %i.n, 0
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @__errno_location() #10
  store i32 %i.n, ptr %i.o, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.switch_g_fini) #11
  unreachable

end_hunk_0
