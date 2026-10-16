Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/pmix_mca_base_components_open?download=true
inline.NumInlined: 15
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pmix_class_t = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.pmix_tma = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pmix_output_desc_t = type { i8, i8, i32, i8, i32, ptr, ptr, i32, ptr, i32, i8, i8, i8, i8, ptr, i32, i32 }
%struct.pmix_value = type { i16, %union.anon }
%union.anon = type { %struct.pmix_envar_t }
%struct.pmix_envar_t = type { ptr, ptr, i8 }

@.str = private unnamed_addr constant [10 x i8] c"fc_pair_t\00", align 1
@pmix_list_item_t_class = external global %struct.pmix_class_t, align 8
@fc_pair_t_class = global %struct.pmix_class_t { ptr @.str, ptr @pmix_list_item_t_class, ptr @fc_pair_constructor, ptr @fc_pair_destructor, i32 0, i32 0, ptr null, ptr null, i64 160 }, align 8
@pmix_class_init_epoch = external local_unnamed_addr global i32, align 4
@pmix_list_t_class = external global %struct.pmix_class_t, align 8
@pmix_mca_base_component_show_load_errors = external local_unnamed_addr global ptr, align 8
@show_load_errors = internal unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"help-mca-base.txt\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"internal error during init\00", align 1
@__func__.pmix_mca_base_show_load_errors_init = private unnamed_addr constant [36 x i8] c"pmix_mca_base_show_load_errors_init\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"pmix_mca_base_components_open.c\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"Failed to argv split pmix_mca_base_component_show_load_errors\00", align 1
@.str.7 = private unnamed_addr constant [68 x i8] c"Failed to argv split pmix_mca_base_component_show_load_errors value\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Argv split resulted in 0 tokens\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"show_load_errors: too many /\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Failed to alloc new fc_pair_t\00", align 1
@pmix_object_t_class = external global %struct.pmix_class_t, align 8
@show_load_errors_include = internal global { { %union.pthread_mutex_t, ptr, i32, [4 x i8], %struct.pmix_tma }, { { %union.pthread_mutex_t, ptr, i32, [4 x i8], %struct.pmix_tma }, ptr, ptr, i32, [4 x i8] }, i64 } { { %union.pthread_mutex_t, ptr, i32, [4 x i8], %struct.pmix_tma } { %union.pthread_mutex_t zeroinitializer, ptr @pmix_object_t_class, i32 1, [4 x i8] zeroinitializer, %struct.pmix_tma zeroinitializer }, { { %union.pthread_mutex_t, ptr, i32, [4 x i8], %struct.pmix_tma }, ptr, ptr, i32, [4 x i8] } { { %union.pthread_mutex_t, ptr, i32, [4 x i8], %struct.pmix_tma } { %union.pthread_mutex_t zeroinitializer, ptr @pmix_object_t_class, i32 1, [4 x i8] zeroinitializer, %struct.pmix_tma zeroinitializer }, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, i64 0 }, align 8
@show_load_errors_exclude = internal global { { %union.pthread_mutex_t, ptr, i32, [4 x i8], %struct.pmix_tma }, { { %union.pthread_mutex_t, ptr, i32, [4 x i8], %struct.pmix_tma }, ptr, ptr, i32, [4 x i8] }, i64 } { { %union.pthread_mutex_t, ptr, i32, [4 x i8], %struct.pmix_tma } { %union.pthread_mutex_t zeroinitializer, ptr @pmix_object_t_class, i32 1, [4 x i8] zeroinitializer, %struct.pmix_tma zeroinitializer }, { { %union.pthread_mutex_t, ptr, i32, [4 x i8], %struct.pmix_tma }, ptr, ptr, i32, [4 x i8] } { { %union.pthread_mutex_t, ptr, i32, [4 x i8], %struct.pmix_tma } { %union.pthread_mutex_t zeroinitializer, ptr @pmix_object_t_class, i32 1, [4 x i8] zeroinitializer, %struct.pmix_tma zeroinitializer }, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, i64 0 }, align 8
@pmix_output_info = external local_unnamed_addr global [0 x %struct.pmix_output_desc_t], align 8
@.str.13 = private unnamed_addr constant [50 x i8] c"mca: base: components_open: opening %s components\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"mca: base: components_open: found loaded component %s\00", align 1
@.str.15 = private unnamed_addr constant [66 x i8] c"mca: base: components_open: component %s open function successful\00", align 1
@.str.16 = private unnamed_addr constant [67 x i8] c"mca: base: components_open: component %s / %s open function failed\00", align 1
@.str.17 = private unnamed_addr constant [62 x i8] c"mca: base: components_open: component %s open function failed\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"pthread_mutex_lock()\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @fc_pair_constructor(ptr nofree noundef writeonly captures(none) initializes((144, 160)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal void @fc_pair_destructor(ptr nofree noundef captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  tail call void @free(ptr noundef %i.b) #15
  store ptr null, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  tail call void @free(ptr noundef %i.d) #15
  store ptr null, ptr %i.c, align 8, !tbaa !20
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -29, 1) i32 @pmix_mca_base_show_load_errors_init() local_unnamed_addr #2 {
bb.a:
  %0 = alloca %struct.pmix_value, align 8         ; 5 uses
  %i.a = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !21
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_list_t_class, i64 32), align 8, !tbaa !37
  %.not = icmp eq i32 %i.a, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @pmix_class_initialize(ptr noundef nonnull @pmix_list_t_class) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr @pmix_list_t_class, ptr getelementptr inbounds nuw (i8, ptr @show_load_errors_include, i64 40), align 8, !tbaa !24
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @show_load_errors_include, i64 48), align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @show_load_errors_include, i64 56), i8 0, i64 64, i1 false)
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_list_t_class, i64 40), align 8, !tbaa !38 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not6.i = icmp eq ptr %i.d, null
  br i1 %.not6.i, label %pmix_obj_run_constructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.e = phi ptr [ %i.g, %.lr.ph.i ], [ %i.d, %bb.c ]
  %.07.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.c, %bb.c ]
  tail call void %i.e(ptr noundef nonnull @show_load_errors_include) #15, !inline_history !33
  %i.f = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26   ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %pmix_obj_run_constructors.exit, label %.lr.ph.i, !llvm.loop !34

pmix_obj_run_constructors.exit:                   ; preds = %.lr.ph.i, %bb.c
  %i.h = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !21
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_list_t_class, i64 32), align 8, !tbaa !37
  %.not49 = icmp eq i32 %i.h, %i.i
  br i1 %.not49, label %bb.e, label %bb.d

bb.d:                                             ; preds = %pmix_obj_run_constructors.exit
  tail call void @pmix_class_initialize(ptr noundef nonnull @pmix_list_t_class) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %pmix_obj_run_constructors.exit
  store ptr @pmix_list_t_class, ptr getelementptr inbounds nuw (i8, ptr @show_load_errors_exclude, i64 40), align 8, !tbaa !24
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @show_load_errors_exclude, i64 48), align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @show_load_errors_exclude, i64 56), i8 0, i64 64, i1 false)
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_list_t_class, i64 40), align 8, !tbaa !38 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26   ; 2 uses
  %.not6.i52 = icmp eq ptr %i.k, null
  br i1 %.not6.i52, label %pmix_obj_run_constructors.exit56, label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %bb.e, %.lr.ph.i53
  %i.l = phi ptr [ %i.n, %.lr.ph.i53 ], [ %i.k, %bb.e ]
  %.07.i54 = phi ptr [ %i.m, %.lr.ph.i53 ], [ %i.j, %bb.e ]
  tail call void %i.l(ptr noundef nonnull @show_load_errors_exclude) #15, !inline_history !33
  %i.m = getelementptr inbounds nuw i8, ptr %.07.i54, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %.not.i55 = icmp eq ptr %i.n, null
  br i1 %.not.i55, label %pmix_obj_run_constructors.exit56, label %.lr.ph.i53, !llvm.loop !34

pmix_obj_run_constructors.exit56:                 ; preds = %.lr.ph.i53, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #15
  %i.o = load ptr, ptr @pmix_mca_base_component_show_load_errors, align 8, !tbaa !39
  %i.p = call i32 @PMIx_Value_load(ptr noundef nonnull %0, ptr noundef %i.o, i16 noundef zeroext 3) #15 ; 0 uses
  %i.q = call i32 @PMIx_Value_true(ptr noundef nonnull %0) #15
  call void @PMIx_Value_destruct(ptr noundef nonnull %0) #15
  switch i32 %i.q, label %bb.h [
    i32 0, label %bb.f
    i32 1, label %bb.g
  ]

bb.f:                                             ; preds = %pmix_obj_run_constructors.exit56
  store i32 0, ptr @show_load_errors, align 4, !tbaa !21
  br label %.thread60

bb.g:                                             ; preds = %pmix_obj_run_constructors.exit56
  store i32 3, ptr @show_load_errors, align 4, !tbaa !21
  br label %.thread60

bb.h:                                             ; preds = %pmix_obj_run_constructors.exit56
  %i.r = load ptr, ptr @pmix_mca_base_component_show_load_errors, align 8, !tbaa !39 ; 4 uses
  %i.s = call i32 @strcasecmp(ptr noundef %i.r, ptr noundef nonnull @.str.1) #16
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr @show_load_errors, align 4, !tbaa !21
  br label %.thread60

bb.j:                                             ; preds = %bb.h
  %i.u = call i32 @strcasecmp(ptr noundef %i.r, ptr noundef nonnull @.str.2) #16
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 3, ptr @show_load_errors, align 4, !tbaa !21
  br label %.thread60

bb.l:                                             ; preds = %bb.j
  %i.w = load i8, ptr %i.r, align 1, !tbaa !40
  %i.x = icmp eq i8 %i.w, 94                      ; 5 uses
  %spec.store.select = select i1 %i.x, i32 2, i32 1
  store i32 %spec.store.select, ptr @show_load_errors, align 4, !tbaa !21
  %spec.select = zext i1 %i.x to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 %spec.select
  %i.z = call ptr @PMIx_Argv_split(ptr noundef nonnull %i.y, i32 noundef 44) #15 ; 5 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.m, label %.preheader

.preheader:                                       ; preds = %bb.l
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !39  ; 2 uses
  %.not5067 = icmp eq ptr %i.ab, null
  br i1 %.not5067, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %1 = select i1 %i.x, ptr getelementptr inbounds nuw (i8, ptr @show_load_errors_exclude, i64 120), ptr getelementptr inbounds nuw (i8, ptr @show_load_errors_include, i64 120)
  %2 = select i1 %i.x, ptr getelementptr inbounds nuw (i8, ptr @show_load_errors_exclude, i64 248), ptr getelementptr inbounds nuw (i8, ptr @show_load_errors_include, i64 248) ; 2 uses
  %3 = select i1 %i.x, ptr getelementptr inbounds nuw (i8, ptr @show_load_errors_exclude, i64 264), ptr getelementptr inbounds nuw (i8, ptr @show_load_errors_include, i64 264) ; 2 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ac = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 1, ptr noundef nonnull @__func__.pmix_mca_base_show_load_errors_init, ptr noundef nonnull @.str.5, i32 noundef 146, i32 noundef -1, ptr noundef nonnull @.str.6) #15 ; 0 uses
  br label %.thread60

bb.n:                                             ; preds = %.lr.ph, %bb.aa
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.aa ] ; 2 uses
  %i.ad = phi ptr [ %i.ab, %.lr.ph ], [ %i.bs, %bb.aa ]
  %i.ae = call ptr @PMIx_Argv_split(ptr noundef nonnull %i.ad, i32 noundef 47) #15 ; 5 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ag = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 1, ptr noundef nonnull @__func__.pmix_mca_base_show_load_errors_init, ptr noundef nonnull @.str.5, i32 noundef 161, i32 noundef -1, ptr noundef nonnull @.str.7) #15 ; 0 uses
  br label %.thread60

bb.p:                                             ; preds = %bb.n
  %i.ah = call i32 @PMIx_Argv_count(ptr noundef nonnull %i.ae) #15 ; 3 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aj = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 1, ptr noundef nonnull @__func__.pmix_mca_base_show_load_errors_init, ptr noundef nonnull @.str.5, i32 noundef 173, i32 noundef -1, ptr noundef nonnull @.str.8) #15 ; 0 uses
  br label %.thread60

bb.r:                                             ; preds = %bb.p
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !39
  %char0 = load i8, ptr %i.ak, align 1
  %i.al = icmp eq i8 %char0, 0
  br i1 %i.al, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.am = icmp sgt i32 %i.ah, 2
  br i1 %i.am, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !39
  %i.ap = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, i32 noundef 1, ptr noundef %i.ao) #15 ; 0 uses
  br label %.thread60

bb.u:                                             ; preds = %bb.s
  %i.aq = load i64, ptr getelementptr inbounds nuw (i8, ptr @fc_pair_t_class, i64 56), align 8, !tbaa !41
  %i.ar = call noalias noundef ptr @malloc(i64 noundef %i.aq) #17 ; 13 uses
  %i.as = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !21
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @fc_pair_t_class, i64 32), align 8, !tbaa !37
  %.not.i57 = icmp eq i32 %i.as, %i.at
  br i1 %.not.i57, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @pmix_class_initialize(ptr noundef nonnull @fc_pair_t_class) #15
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.not22.i = icmp eq ptr %i.ar, null
  br i1 %.not22.i, label %pmix_obj_new_tma.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.au = call i32 @pthread_mutex_init(ptr noundef nonnull %i.ar, ptr noundef null) #15 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store ptr @fc_pair_t_class, ptr %i.av, align 8, !tbaa !24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  store i32 1, ptr %i.aw, align 8, !tbaa !25
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fc_pair_t_class, i64 40), align 8, !tbaa !38 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !26 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.ba, null
  br i1 %.not6.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.x, %.lr.ph.i.i
  %i.bb = phi ptr [ %i.bd, %.lr.ph.i.i ], [ %i.ba, %bb.x ]
  %.07.i.i = phi ptr [ %i.bc, %.lr.ph.i.i ], [ %i.az, %bb.x ]
  call void %i.bb(ptr noundef nonnull %i.ar) #15, !inline_history !35
  %i.bc = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !26 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !34

pmix_obj_new_tma.exit:                            ; preds = %bb.w
  %i.be = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 1, ptr noundef nonnull @__func__.pmix_mca_base_show_load_errors_init, ptr noundef nonnull @.str.5, i32 noundef 198, i32 noundef -29, ptr noundef nonnull @.str.10) #15 ; 0 uses
  br label %.thread60

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.x
  %i.bf = load ptr, ptr %i.ae, align 8, !tbaa !39
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 144
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !19
  %i.bh = icmp eq i32 %i.ah, 2
  br i1 %i.bh, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.loopexit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !39
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 152
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !20
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.loopexit
  %i.bl = load ptr, ptr %2, align 8, !tbaa !28    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ar, i64 128
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !28
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 120
  store volatile ptr %i.ar, ptr %i.bn, align 8, !tbaa !29
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ar, i64 120
  store ptr %1, ptr %i.bo, align 8, !tbaa !29
  store ptr %i.ar, ptr %2, align 8, !tbaa !28
  %i.bp = load volatile i64, ptr %3, align 8, !tbaa !31
  %i.bq = add i64 %i.bp, 1
  store volatile i64 %i.bq, ptr %3, align 8, !tbaa !31
  br label %bb.aa

bb.aa:                                            ; preds = %bb.r, %bb.z
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !39 ; 2 uses
  %.not50 = icmp eq ptr %i.bs, null
  br i1 %.not50, label %._crit_edge, label %bb.n, !llvm.loop !36

._crit_edge:                                      ; preds = %bb.aa, %.preheader
  call void @PMIx_Argv_free(ptr noundef nonnull %i.z) #15
  br label %.thread60

.thread60:                                        ; preds = %bb.o, %bb.q, %bb.t, %pmix_obj_new_tma.exit, %bb.m, %bb.f, %bb.i, %bb.k, %bb.g, %._crit_edge
  %.242 = phi i32 [ 0, %bb.f ], [ 0, %._crit_edge ], [ 0, %bb.g ], [ 0, %bb.k ], [ 0, %bb.i ], [ -1, %bb.m ], [ -29, %pmix_obj_new_tma.exit ], [ -27, %bb.t ], [ -1, %bb.q ], [ -1, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #15
  ret i32 %.242
}

declare void @pmix_class_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare i32 @PMIx_Value_load(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

declare i32 @PMIx_Value_true(ptr noundef) local_unnamed_addr #3

declare void @PMIx_Value_destruct(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare ptr @PMIx_Argv_split(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @pmix_show_help(ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #3

declare i32 @PMIx_Argv_count(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare void @PMIx_Argv_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @pmix_mca_base_show_load_errors(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr @show_load_errors, align 4, !tbaa !21 ; 2 uses
  switch i32 %i.a, label %bb.c [
    i32 0, label %.loopexit
    i32 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = icmp eq i32 %i.a, 1                      ; 5 uses
  %i.d = select i1 %i.c, ptr getelementptr inbounds nuw (i8, ptr @show_load_errors_include, i64 120), ptr getelementptr inbounds nuw (i8, ptr @show_load_errors_exclude, i64 120) ; 3 uses
  %.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @show_load_errors_include, i64 240), align 8
  %.val22 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @show_load_errors_exclude, i64 240), align 8
  %.019 = select i1 %i.c, ptr %.val, ptr %.val22  ; 3 uses
  %.not20 = icmp eq ptr %.019, %i.d
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.e
  %.021.us = phi ptr [ %.0.us, %bb.e ], [ %.019, %.lr.ph ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.021.us, i64 144
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %i.g) #16
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.j = getelementptr inbounds nuw i8, ptr %.021.us, i64 120
  %.0.us = load ptr, ptr %i.j, align 8, !tbaa !29 ; 2 uses
  %.not.us = icmp eq ptr %.0.us, %i.d
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !0

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.g
  %.021 = phi ptr [ %.0, %bb.g ], [ %.019, %.lr.ph ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.021, i64 144
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %i.l) #16
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.split
  %i.o = getelementptr inbounds nuw i8, ptr %.021, i64 152
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !20
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.p) #16
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.021, i64 120
  %.0 = load ptr, ptr %i.s, align 8, !tbaa !29    ; 2 uses
  %.not = icmp eq ptr %.0, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.g, %bb.e, %bb.d
  %i.t = xor i1 %i.c, true
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %.lr.ph.split.us, %._crit_edge, %bb.c, %bb.a, %bb.b
  %.1 = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.a ], [ %i.t, %._crit_edge ], [ %i.c, %.lr.ph.split.us ], [ %i.c, %bb.f ]
  ret i1 %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define noundef i32 @pmix_mca_base_show_load_errors_finalize() local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @show_load_errors_include, i64 40), align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not6.i = icmp eq ptr %i.d, null
  br i1 %.not6.i, label %pmix_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.e = phi ptr [ %i.g, %.lr.ph.i ], [ %i.d, %bb.a ]
  %.07.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.c, %bb.a ]
  tail call void %i.e(ptr noundef nonnull @show_load_errors_include) #15, !inline_history !42
  %i.f = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26   ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %pmix_obj_run_destructors.exit, label %.lr.ph.i, !llvm.loop !1

pmix_obj_run_destructors.exit:                    ; preds = %.lr.ph.i, %bb.a
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @show_load_errors_exclude, i64 40), align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26   ; 2 uses
  %.not6.i1 = icmp eq ptr %i.k, null
  br i1 %.not6.i1, label %pmix_obj_run_destructors.exit5, label %.lr.ph.i2

.lr.ph.i2:                                        ; preds = %pmix_obj_run_destructors.exit, %.lr.ph.i2
  %i.l = phi ptr [ %i.n, %.lr.ph.i2 ], [ %i.k, %pmix_obj_run_destructors.exit ]
  %.07.i3 = phi ptr [ %i.m, %.lr.ph.i2 ], [ %i.j, %pmix_obj_run_destructors.exit ]
  tail call void %i.l(ptr noundef nonnull @show_load_errors_exclude) #15, !inline_history !42
  %i.m = getelementptr inbounds nuw i8, ptr %.07.i3, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %.not.i4 = icmp eq ptr %i.n, null
  br i1 %.not.i4, label %pmix_obj_run_destructors.exit5, label %.lr.ph.i2, !llvm.loop !1

pmix_obj_run_destructors.exit5:                   ; preds = %.lr.ph.i2, %pmix_obj_run_destructors.exit
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @pmix_mca_base_framework_components_open(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = and i32 %1, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %1, 2
  %.not9 = icmp eq i32 %i.b, 0
  %i.c = tail call i32 @pmix_mca_base_component_find(ptr noundef null, ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext %.not9) #15 ; 2 uses
  %.not10.not = icmp eq i32 %i.c, 0
  br i1 %.not10.not, label %bb.c, label %open_components.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.e = load i32, ptr %i.d, align 4, !tbaa !49   ; 9 uses
  %i.f = tail call i32 @pmix_mca_base_components_filter(ptr noundef %0) #15 ; 2 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.d, label %open_components.exit

bb.d:                                             ; preds = %bb.c
  %or.cond.i = icmp ult i32 %i.e, 64              ; 5 uses
  br i1 %or.cond.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.g = zext nneg i32 %i.e to i64
  %i.h = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !52
  %i.k = icmp sgt i32 %i.j, 9
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.e, ptr noundef nonnull @.str.13, ptr noundef %i.m) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !54   ; 2 uses
  %.not7085.i = icmp eq ptr %i.p, %i.n
  br i1 %.not7085.i, label %open_components.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.q = zext nneg i32 %i.e to i64
  %i.r = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.aa, %.lr.ph.i
  %.06486.i = phi ptr [ %i.p, %.lr.ph.i ], [ %.088.i, %bb.aa ] ; 12 uses
  %.0.in87.i = getelementptr inbounds nuw i8, ptr %.06486.i, i64 120 ; 2 uses
  %.088.i = load ptr, ptr %.0.in87.i, align 8, !tbaa !29 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.06486.i, i64 144
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !57   ; 6 uses
  br i1 %or.cond.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.w = load i32, ptr %i.s, align 4, !tbaa !52
  %i.x = icmp sgt i32 %i.w, 9
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 84
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.e, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.y) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 160
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !59  ; 2 uses
  %.not71.i = icmp eq ptr %i.aa, null
  br i1 %.not71.i, label %bb.aa, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = tail call i32 %i.aa() #15, !inline_history !43
  switch i32 %i.ab, label %bb.p [
    i32 0, label %bb.m
    i32 -64, label %.thread.thread.i
  ]

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i, label %bb.n, label %bb.aa

bb.n:                                             ; preds = %bb.m
  %i.ac = load i32, ptr %i.s, align 4, !tbaa !52
  %i.ad = icmp sgt i32 %i.ac, 9
  br i1 %i.ad, label %bb.o, label %bb.aa

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 84
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.e, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.ae) #15
  br label %bb.aa

bb.p:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 84 ; 3 uses
  %i.ah = load i32, ptr @show_load_errors, align 4, !tbaa !21 ; 2 uses
  switch i32 %i.ah, label %bb.q [
    i32 0, label %pmix_mca_base_show_load_errors.exit.i
    i32 3, label %pmix_mca_base_show_load_errors.exit.thread.i
  ]

bb.q:                                             ; preds = %bb.p
  %i.ai = icmp eq i32 %i.ah, 1                    ; 4 uses
  %i.aj = select i1 %i.ai, ptr getelementptr inbounds nuw (i8, ptr @show_load_errors_include, i64 120), ptr getelementptr inbounds nuw (i8, ptr @show_load_errors_exclude, i64 120) ; 2 uses
  %.val.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @show_load_errors_include, i64 240), align 8
  %.val22.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @show_load_errors_exclude, i64 240), align 8
  %.019.i.i = select i1 %i.ai, ptr %.val.i.i, ptr %.val22.i.i ; 2 uses
  %.not20.i.i = icmp eq ptr %.019.i.i, %i.aj
  br i1 %.not20.i.i, label %._crit_edge.i.i, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.q, %bb.s
  %.021.i.i = phi ptr [ %.0.i.i, %bb.s ], [ %.019.i.i, %bb.q ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 144
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !19
  %i.am = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.af, ptr noundef nonnull dereferenceable(1) %i.al) #16
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.split.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 152
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !20
  %i.aq = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ag, ptr noundef nonnull dereferenceable(1) %i.ap) #16
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %pmix_mca_base_show_load_errors.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.split.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 120
  %.0.i.i = load ptr, ptr %i.as, align 8, !tbaa !29 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, %i.aj
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.split.i.i, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %bb.s, %bb.q
  %i.at = xor i1 %i.ai, true
  br label %pmix_mca_base_show_load_errors.exit.i

pmix_mca_base_show_load_errors.exit.i:            ; preds = %bb.r, %._crit_edge.i.i, %bb.p
  %.1.i.i = phi i1 [ true, %bb.p ], [ %i.at, %._crit_edge.i.i ], [ %i.ai, %bb.r ]
  %brmerge.not.i = and i1 %or.cond.i, %.1.i.i
  br i1 %brmerge.not.i, label %bb.t, label %pmix_mca_base_show_load_errors.exit.thread.i

bb.t:                                             ; preds = %pmix_mca_base_show_load_errors.exit.i
  %i.au = load i32, ptr %i.s, align 4, !tbaa !52
  %i.av = icmp sgt i32 %i.au, -1
  br i1 %i.av, label %bb.u, label %.thread.thread.i

bb.u:                                             ; preds = %bb.t
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.e, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ag) #15
  br label %.thread.i

pmix_mca_base_show_load_errors.exit.thread.i:     ; preds = %pmix_mca_base_show_load_errors.exit.i, %bb.p
  br i1 %or.cond.i, label %.thread.i, label %.thread.thread.i

.thread.i:                                        ; preds = %pmix_mca_base_show_load_errors.exit.thread.i, %bb.u
  %.pr.i = load i32, ptr %i.s, align 4, !tbaa !52
  %i.aw = icmp sgt i32 %.pr.i, 9
  br i1 %i.aw, label %bb.v, label %.thread.thread.i

bb.v:                                             ; preds = %.thread.i
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.e, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.ag) #15
  br label %.thread.thread.i

.thread.thread.i:                                 ; preds = %bb.v, %.thread.i, %pmix_mca_base_show_load_errors.exit.thread.i, %bb.t, %bb.l
  tail call void @pmix_mca_base_component_close(ptr noundef nonnull %i.v, i32 noundef %i.e) #15
  %i.ax = load ptr, ptr %.0.in87.i, align 8, !tbaa !29 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.06486.i, i64 128
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !28 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 120
  store volatile ptr %i.ax, ptr %i.ba, align 8, !tbaa !29
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 128
  store volatile ptr %i.az, ptr %i.bb, align 8, !tbaa !28
  %i.bc = load volatile i64, ptr %i.t, align 8, !tbaa !31
  %i.bd = add i64 %i.bc, -1
  store volatile i64 %i.bd, ptr %i.t, align 8, !tbaa !31
  %i.be = tail call i32 @pthread_mutex_lock(ptr noundef %.06486.i) #15
  %i.bf = icmp eq i32 %i.be, 35
  br i1 %i.bf, label %bb.w, label %pmix_obj_update.exit.i

bb.w:                                             ; preds = %.thread.thread.i
  %i.bg = tail call ptr @__errno_location() #18
  store i32 35, ptr %i.bg, align 4, !tbaa !21
  tail call void @perror(ptr noundef nonnull @.str.18) #19
  tail call void @abort() #20
  unreachable

pmix_obj_update.exit.i:                           ; preds = %.thread.thread.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.06486.i, i64 48 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !25
  %i.bj = add nsw i32 %i.bi, -1                   ; 2 uses
  store i32 %i.bj, ptr %i.bh, align 8, !tbaa !25
  %i.bk = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %.06486.i) #15 ; 0 uses
  %i.bl = icmp eq i32 %i.bj, 0
  br i1 %i.bl, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %pmix_obj_update.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.06486.i, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !24
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !32 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !26 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.bq, null
  br i1 %.not6.i.i, label %pmix_obj_run_destructors.exit.i, label %.lr.ph.i75.i

.lr.ph.i75.i:                                     ; preds = %bb.x, %.lr.ph.i75.i
  %i.br = phi ptr [ %i.bt, %.lr.ph.i75.i ], [ %i.bq, %bb.x ]
  %.07.i.i = phi ptr [ %i.bs, %.lr.ph.i75.i ], [ %i.bp, %bb.x ]
  tail call void %i.br(ptr noundef nonnull %.06486.i) #15, !inline_history !44
  %i.bs = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !26 ; 2 uses
  %.not.i76.i = icmp eq ptr %i.bt, null
  br i1 %.not.i76.i, label %pmix_obj_run_destructors.exit.i, label %.lr.ph.i75.i, !llvm.loop !1

pmix_obj_run_destructors.exit.i:                  ; preds = %.lr.ph.i75.i, %bb.x
  %i.bu = getelementptr inbounds nuw i8, ptr %.06486.i, i64 96
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !60 ; 2 uses
  %.not73.i = icmp eq ptr %i.bv, null
  br i1 %.not73.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %pmix_obj_run_destructors.exit.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.06486.i, i64 56
  tail call void %i.bv(ptr noundef nonnull %i.bw, ptr noundef nonnull %.06486.i) #15, !inline_history !45
  br label %bb.aa

bb.z:                                             ; preds = %pmix_obj_run_destructors.exit.i
  tail call void @free(ptr noundef nonnull %.06486.i) #15
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %pmix_obj_update.exit.i, %bb.o, %bb.n, %bb.m, %bb.k
  %.not70.i = icmp eq ptr %.088.i, %i.n
  br i1 %.not70.i, label %open_components.exit, label %bb.h, !llvm.loop !46

open_components.exit:                             ; preds = %bb.aa, %bb.g, %bb.c, %bb.b
  %.1 = phi i32 [ %i.c, %bb.b ], [ %i.f, %bb.c ], [ 0, %bb.g ], [ 0, %bb.aa ]
  ret i32 %.1
}

declare i32 @pmix_mca_base_component_find(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

declare i32 @pmix_mca_base_components_filter(ptr noundef) local_unnamed_addr #3

declare void @pmix_output(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @pmix_mca_base_component_close(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #11

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #12

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind willreturn memory(none) }
attributes #19 = { cold }
attributes #20 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !27}
!1 = distinct !{!1, !27}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS12pmix_class_t", !10, i64 0}
!12 = !{!"any p2 pointer", !10, i64 0}
!13 = !{!"pmix_tma", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !12, i64 56}
!14 = !{!"pmix_object_t", !6, i64 0, !11, i64 40, !7, i64 48, !13, i64 56}
!15 = !{!"p1 _ZTS16pmix_list_item_t", !10, i64 0}
!16 = !{!"pmix_list_item_t", !14, i64 0, !15, i64 120, !15, i64 128, !7, i64 136}
!17 = !{!"p1 omnipotent char", !10, i64 0}
!18 = !{!"fc_pair", !16, i64 0, !17, i64 144, !17, i64 152}
!19 = !{!18, !17, i64 144}
!20 = !{!18, !17, i64 152}
!21 = !{!7, !7, i64 0}
!22 = !{!"long", !6, i64 0}
!23 = !{!"pmix_class_t", !17, i64 0, !11, i64 8, !10, i64 16, !10, i64 24, !7, i64 32, !7, i64 36, !12, i64 40, !12, i64 48, !22, i64 56}
!24 = !{!14, !11, i64 40}
!25 = !{!14, !7, i64 48}
!26 = !{!10, !10, i64 0}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!16, !15, i64 128}
!29 = !{!16, !15, i64 120}
!30 = !{!"pmix_list_t", !14, i64 0, !16, i64 120, !22, i64 264}
!31 = !{!30, !22, i64 264}
!32 = !{!23, !12, i64 48}
end_hunk_0
