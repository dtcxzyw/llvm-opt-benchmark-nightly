Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/plog_base_stubs?download=true
inline.NumInlined: 43
inline.NumDeleted: 13
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pmix_plog_globals_t = type { %struct.pmix_lock_t, %struct.pmix_pointer_array_t, i8, i8, ptr }
%struct.pmix_lock_t = type { i32, %struct.pmix_mutex_t, %union.pthread_cond_t, i8 }
%struct.pmix_mutex_t = type { %struct.pmix_object_t, %union.pthread_mutex_t }
%struct.pmix_object_t = type { %union.pthread_mutex_t, ptr, i32, %struct.pmix_tma }
%struct.pmix_tma = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%struct.pmix_pointer_array_t = type { %struct.pmix_object_t, i32, i32, i32, i32, i32, ptr, ptr }
%struct.pmix_mca_base_framework_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.pmix_list_t, %struct.pmix_list_t }
%struct.pmix_list_t = type { %struct.pmix_object_t, %struct.pmix_list_item_t, i64 }
%struct.pmix_list_item_t = type { %struct.pmix_object_t, ptr, ptr, i32 }
%struct.pmix_output_desc_t = type { i8, i8, i32, i8, i32, ptr, ptr, i32, ptr, i32, i8, i8, i8, i8, ptr, i32, i32 }
%struct.pmix_class_t = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64 }

@pmix_plog_globals = external global %struct.pmix_plog_globals_t, align 8
@pmix_plog_base_framework = external local_unnamed_addr global %struct.pmix_mca_base_framework_t, align 8
@pmix_output_info = external local_unnamed_addr global [0 x %struct.pmix_output_desc_t], align 8
@.str = private unnamed_addr constant [16 x i8] c"plog:log called\00", align 1
@pmix_mycount_t_class = internal global %struct.pmix_class_t { ptr @.str.5, ptr @pmix_object_t_class, ptr @mycon, ptr @mydes, i32 0, i32 0, ptr null, ptr null, i64 376 }, align 8
@pmix_class_init_epoch = external local_unnamed_addr global i32, align 4
@pmix_list_t_class = external global %struct.pmix_class_t, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"pmix.log.once\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"pmix.log.agg\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"pmix.log.key\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"pmix.log.val\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"pmix_mycount_t\00", align 1
@pmix_object_t_class = external global %struct.pmix_class_t, align 8
@pmix_mutex_t_class = external global %struct.pmix_class_t, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"pthread_mutex_lock()\00", align 1

; Function Attrs: nounwind uwtable
define i32 @pmix_plog_base_log(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.pmix_list_t, align 8        ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_plog_globals, i64 384), align 8, !tbaa !58, !range !21, !noundef !22
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.ax

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.ax, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pmix_plog_globals, i64 128)) #12 ; 0 uses
  %i.e = load volatile i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_plog_globals, i64 216), align 8, !tbaa !59, !range !21, !noundef !22
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %i.g = tail call i32 @pthread_cond_wait(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pmix_plog_globals, i64 168), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pmix_plog_globals, i64 128)) #12 ; 0 uses
  %i.h = load volatile i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_plog_globals, i64 216), align 8, !tbaa !59, !range !21, !noundef !22
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %.lr.ph, label %._crit_edge, !llvm.loop !41

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  fence acquire
  store volatile i8 1, ptr getelementptr inbounds nuw (i8, ptr @pmix_plog_globals, i64 216), align 8, !tbaa !59
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_plog_base_framework, i64 76), align 4, !tbaa !65 ; 3 uses
  %or.cond = icmp ult i32 %i.j, 64
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !67
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.j, ptr noundef nonnull @.str) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @pmix_mycount_t_class, i64 56), align 8, !tbaa !68
  %i.q = tail call noalias noundef ptr @malloc(i64 noundef %i.p) #13 ; 29 uses
  %i.r = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !27
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_mycount_t_class, i64 32), align 8, !tbaa !28
  %.not.i = icmp eq i32 %i.r, %i.s
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @pmix_class_initialize(ptr noundef nonnull @pmix_mycount_t_class) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not22.i = icmp eq ptr %i.q, null
  br i1 %.not22.i, label %pmix_obj_new_tma.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.q, ptr noundef null) #12 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 3 uses
  store ptr @pmix_mycount_t_class, ptr %i.u, align 8, !tbaa !29
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 5 uses
  store i32 1, ptr %i.v, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 96 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_mycount_t_class, i64 40), align 8, !tbaa !31 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !32   ; 2 uses
  %.not6.i.i = icmp eq ptr %i.z, null
  br i1 %.not6.i.i, label %.loopexit197, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %.lr.ph.i.i
  %i.aa = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %i.z, %bb.i ]
  %.07.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %i.y, %bb.i ]
  tail call void %i.aa(ptr noundef nonnull %i.q) #12, !inline_history !42
  %i.ab = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %.loopexit197, label %.lr.ph.i.i, !llvm.loop !0

pmix_obj_new_tma.exit:                            ; preds = %bb.h
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @pmix_plog_globals, i64 216), align 8, !tbaa !59
  fence release
  %i.ad = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pmix_plog_globals, i64 168)) #12 ; 0 uses
  %i.ae = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pmix_plog_globals, i64 128)) #12 ; 0 uses
  br label %bb.ax

.loopexit197:                                     ; preds = %.lr.ph.i.i, %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 360
  store ptr %5, ptr %i.af, align 8, !tbaa !34
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 368
  store ptr %6, ptr %i.ag, align 8, !tbaa !35
  %i.ah = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !27
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_list_t_class, i64 32), align 8, !tbaa !28
  %.not = icmp eq i32 %i.ah, %i.ai
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.loopexit197
  tail call void @pmix_class_initialize(ptr noundef nonnull @pmix_list_t_class) #12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit197
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  store ptr @pmix_list_t_class, ptr %i.aj, align 8, !tbaa !29
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i32 1, ptr %i.ak, align 8, !tbaa !30
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.al, i8 0, i64 64, i1 false)
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_list_t_class, i64 40), align 8, !tbaa !31 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !32 ; 2 uses
  %.not6.i = icmp eq ptr %i.an, null
  br i1 %.not6.i, label %pmix_obj_run_constructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  %i.ao = phi ptr [ %i.aq, %.lr.ph.i ], [ %i.an, %bb.k ]
  %.07.i = phi ptr [ %i.ap, %.lr.ph.i ], [ %i.am, %bb.k ]
  call void %i.ao(ptr noundef nonnull %7) #12, !inline_history !1
  %i.ap = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !32 ; 2 uses
  %.not.i162 = icmp eq ptr %i.aq, null
  br i1 %.not.i162, label %pmix_obj_run_constructors.exit, label %.lr.ph.i, !llvm.loop !0

pmix_obj_run_constructors.exit:                   ; preds = %.lr.ph.i, %bb.k
  %.not150 = icmp eq ptr %3, null
  %.not241 = icmp eq i64 %4, 0
  %or.cond284 = or i1 %.not150, %.not241
  br i1 %or.cond284, label %.loopexit195, label %.lr.ph204

.lr.ph204:                                        ; preds = %pmix_obj_run_constructors.exit, %bb.s
  %.0203 = phi i1 [ %.1, %bb.s ], [ true, %pmix_obj_run_constructors.exit ] ; 4 uses
  %.0124202 = phi ptr [ %.1125, %bb.s ], [ null, %pmix_obj_run_constructors.exit ] ; 4 uses
  %.0126201 = phi ptr [ %.1127, %bb.s ], [ null, %pmix_obj_run_constructors.exit ] ; 4 uses
  %.0130200 = phi i8 [ %.1131, %bb.s ], [ 0, %pmix_obj_run_constructors.exit ] ; 4 uses
  %.0135199 = phi i64 [ %i.bf, %bb.s ], [ 0, %pmix_obj_run_constructors.exit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [552 x i8], ptr %3, i64 %.0135199 ; 8 uses
  %i.as = call zeroext i1 @PMIx_Check_key(ptr noundef nonnull %i.ar, ptr noundef nonnull @.str.1) #12
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph204
  %i.at = call i32 @PMIx_Info_true(ptr noundef nonnull %i.ar) #12
  %i.au = icmp eq i32 %i.at, 0
  %i.av = zext i1 %i.au to i8
  br label %bb.s

bb.m:                                             ; preds = %.lr.ph204
  %i.aw = call zeroext i1 @PMIx_Check_key(ptr noundef nonnull %i.ar, ptr noundef nonnull @.str.2) #12
  br i1 %i.aw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ax = call i32 @PMIx_Info_true(ptr noundef nonnull %i.ar) #12
  %i.ay = icmp eq i32 %i.ax, 0
  br label %bb.s

bb.o:                                             ; preds = %bb.m
  %i.az = call zeroext i1 @PMIx_Check_key(ptr noundef nonnull %i.ar, ptr noundef nonnull @.str.3) #12
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 528
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !69
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.bc = call zeroext i1 @PMIx_Check_key(ptr noundef nonnull %i.ar, ptr noundef nonnull @.str.4) #12
  br i1 %i.bc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 528
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !69
  br label %bb.s

bb.s:                                             ; preds = %bb.l, %bb.p, %bb.r, %bb.q, %bb.n
  %.1131 = phi i8 [ %i.av, %bb.l ], [ %.0130200, %bb.n ], [ %.0130200, %bb.p ], [ %.0130200, %bb.r ], [ %.0130200, %bb.q ] ; 5 uses
  %.1127 = phi ptr [ %.0126201, %bb.l ], [ %.0126201, %bb.n ], [ %i.bb, %bb.p ], [ %.0126201, %bb.r ], [ %.0126201, %bb.q ] ; 3 uses
  %.1125 = phi ptr [ %.0124202, %bb.l ], [ %.0124202, %bb.n ], [ %.0124202, %bb.p ], [ %i.be, %bb.r ], [ %.0124202, %bb.q ] ; 3 uses
  %.1 = phi i1 [ %.0203, %bb.l ], [ %i.ay, %bb.n ], [ %.0203, %bb.p ], [ %.0203, %bb.r ], [ %.0203, %bb.q ] ; 2 uses
  %i.bf = add nuw i64 %.0135199, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bf, %4
  br i1 %exitcond.not, label %._crit_edge205, label %.lr.ph204, !llvm.loop !43

._crit_edge205:                                   ; preds = %bb.s
  %i.bg = icmp ne ptr %.1127, null
  %or.cond3 = select i1 %.1, i1 %i.bg, i1 false
  %i.bh = icmp ne ptr %.1125, null
  %or.cond5 = select i1 %or.cond3, i1 %i.bh, i1 false
  br i1 %or.cond5, label %bb.t, label %.loopexit195

bb.t:                                             ; preds = %._crit_edge205
  %i.bi = call i32 @pmix_help_check_dups(ptr noundef nonnull %.1127, ptr noundef nonnull %.1125) #12
  %i.bj = icmp eq i32 %i.bi, 0
  %i.bk = icmp ne i64 %2, 0
  %or.cond239 = and i1 %i.bj, %i.bk
  br i1 %or.cond239, label %.lr.ph210.preheader, label %.loopexit195

.lr.ph210.preheader:                              ; preds = %bb.t
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.bl = icmp ult i64 %2, 4
  br i1 %i.bl, label %.lr.ph210.epil.preheader, label %.lr.ph210.preheader.new

.lr.ph210.preheader.new:                          ; preds = %.lr.ph210.preheader
  %unroll_iter = and i64 %2, -4
  br label %.lr.ph210

.lr.ph210:                                        ; preds = %.lr.ph210, %.lr.ph210.preheader.new
  %.0133209 = phi i64 [ 0, %.lr.ph210.preheader.new ], [ %i.cc, %.lr.ph210 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph210.preheader.new ], [ %niter.next.3, %.lr.ph210 ]
  %i.bm = getelementptr inbounds nuw [552 x i8], ptr %1, i64 %.0133209
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 512 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !73
  %i.bp = or i32 %i.bo, -2147483648
  store i32 %i.bp, ptr %i.bn, align 8, !tbaa !73
  %i.bq = getelementptr inbounds nuw [552 x i8], ptr %1, i64 %.0133209
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1064 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !73
  %i.bt = or i32 %i.bs, -2147483648
  store i32 %i.bt, ptr %i.br, align 8, !tbaa !73
  %i.bu = getelementptr inbounds nuw [552 x i8], ptr %1, i64 %.0133209
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1616 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !73
  %i.bx = or i32 %i.bw, -2147483648
  store i32 %i.bx, ptr %i.bv, align 8, !tbaa !73
  %i.by = getelementptr inbounds nuw [552 x i8], ptr %1, i64 %.0133209
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 2168 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !73
  %i.cb = or i32 %i.ca, -2147483648
  store i32 %i.cb, ptr %i.bz, align 8, !tbaa !73
  %i.cc = add nuw i64 %.0133209, 4                ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph218.loopexit.unr-lcssa, label %.lr.ph210, !llvm.loop !44

.loopexit195:                                     ; preds = %._crit_edge205, %bb.t, %pmix_obj_run_constructors.exit
  %.2 = phi i8 [ 0, %pmix_obj_run_constructors.exit ], [ %.1131, %bb.t ], [ %.1131, %._crit_edge205 ] ; 2 uses
  %.not242 = icmp eq i64 %2, 0
  br i1 %.not242, label %._crit_edge219, label %.lr.ph218

.lr.ph218.loopexit.unr-lcssa:                     ; preds = %.lr.ph210
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph218, label %.lr.ph210.epil.preheader

.lr.ph210.epil.preheader:                         ; preds = %.lr.ph218.loopexit.unr-lcssa, %.lr.ph210.preheader
  %.0133209.epil.init = phi i64 [ 0, %.lr.ph210.preheader ], [ %i.cc, %.lr.ph218.loopexit.unr-lcssa ]
  %lcmp.mod285 = icmp ne i64 %xtraiter, 0
end_hunk_0
begin_hunk_1_@pmix_plog_base_log:bb.a
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 120
  store volatile ptr %i.cs, ptr %i.dg, align 8, !tbaa !83
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cs, i64 120
  store ptr %i.cl, ptr %i.dh, align 8, !tbaa !83
  store ptr %i.cs, ptr %i.cm, align 8, !tbaa !82
  %i.di = load volatile i64, ptr %i.cn, align 8, !tbaa !84
  %i.dj = add i64 %i.di, 1
  store volatile i64 %i.dj, ptr %i.cn, align 8, !tbaa !84
  store i8 1, ptr %i.db, align 1, !tbaa !81
  br label %.loopexit

bb.y:                                             ; preds = %.lr.ph213, %bb.ab
  %i.dk = phi ptr [ %i.cz, %.lr.ph213 ], [ %i.dw, %bb.ab ]
  %.1134212 = phi i64 [ 0, %.lr.ph213 ], [ %i.du, %bb.ab ]
  %i.dl = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(1) %i.dk) #14
  %.not160 = icmp eq ptr %i.dl, null
  br i1 %.not160, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dm = load i8, ptr %i.da, align 1, !tbaa !81, !range !21, !noundef !22
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.do = load ptr, ptr %i.cm, align 8, !tbaa !82 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cs, i64 128
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !82
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 120
  store volatile ptr %i.cs, ptr %i.dq, align 8, !tbaa !83
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cs, i64 120
  store ptr %i.cl, ptr %i.dr, align 8, !tbaa !83
  store ptr %i.cs, ptr %i.cm, align 8, !tbaa !82
  %i.ds = load volatile i64, ptr %i.cn, align 8, !tbaa !84
  %i.dt = add i64 %i.ds, 1
  store volatile i64 %i.dt, ptr %i.cn, align 8, !tbaa !84
  store i8 1, ptr %i.da, align 1, !tbaa !81
  br label %.loopexit

bb.ab:                                            ; preds = %bb.y, %bb.z
  %i.du = add i64 %.1134212, 1                    ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.du
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !80 ; 2 uses
  %.not159 = icmp eq ptr %i.dw, null
  br i1 %.not159, label %.loopexit, label %bb.y, !llvm.loop !46

.loopexit:                                        ; preds = %bb.ab, %.preheader191, %bb.x, %bb.w, %bb.aa, %pmix_pointer_array_get_item.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond245.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond245.not, label %.loopexit193, label %pmix_pointer_array_get_item.exit, !llvm.loop !47

.loopexit193:                                     ; preds = %.loopexit, %bb.u
  %.1129 = phi i1 [ %.0128216.mux, %bb.u ], [ false, %.loopexit ] ; 2 uses
  %i.dx = add nuw i64 %.1136215, 1                ; 2 uses
  %exitcond246.not = icmp eq i64 %i.dx, %2
  br i1 %exitcond246.not, label %._crit_edge219, label %bb.u, !llvm.loop !48

._crit_edge219:                                   ; preds = %.loopexit193, %.loopexit195
  %.2283 = phi i8 [ %.2, %.loopexit195 ], [ %.2282, %.loopexit193 ]
  %.0128.lcssa = phi i1 [ true, %.loopexit195 ], [ %.1129, %.loopexit193 ]
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 120 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 240 ; 6 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !85 ; 2 uses
  %.not151221 = icmp eq ptr %i.ea, %i.dy
  br i1 %.not151221, label %._crit_edge225, label %.lr.ph224

.lr.ph224:                                        ; preds = %._crit_edge219, %.lr.ph224
  %.0137222 = phi ptr [ %i.ed, %.lr.ph224 ], [ %i.ea, %._crit_edge219 ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.0137222, i64 145
  store i8 0, ptr %i.eb, align 1, !tbaa !81
  %i.ec = getelementptr inbounds nuw i8, ptr %.0137222, i64 120
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !83 ; 2 uses
  %.not151 = icmp eq ptr %i.ed, %i.dy
  br i1 %.not151, label %._crit_edge225, label %.lr.ph224, !llvm.loop !49

._crit_edge225:                                   ; preds = %.lr.ph224, %._crit_edge219
  br i1 %.0128.lcssa, label %.preheader, label %bb.ah

.preheader:                                       ; preds = %._crit_edge225
  %i.ee = getelementptr inbounds nuw i8, ptr %7, i64 264 ; 4 uses
  %i.ef = load volatile i64, ptr %i.ee, align 8, !tbaa !84
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %._crit_edge237, label %pmix_list_remove_first.exit.lr.ph

pmix_list_remove_first.exit.lr.ph:                ; preds = %.preheader
  %.promoted238 = load ptr, ptr %i.dz, align 8
  br label %pmix_list_remove_first.exit

pmix_list_remove_first.exit:                      ; preds = %pmix_list_remove_first.exit.lr.ph, %pmix_list_remove_first.exit
  %i.eh = phi ptr [ %.promoted238, %pmix_list_remove_first.exit.lr.ph ], [ %i.ep, %pmix_list_remove_first.exit ] ; 2 uses
  %i.ei = load volatile i64, ptr %i.ee, align 8, !tbaa !84
  %i.ej = add i64 %i.ei, -1
  store volatile i64 %i.ej, ptr %i.ee, align 8, !tbaa !84
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 128
  %i.el = load volatile ptr, ptr %i.ek, align 8, !tbaa !82
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 120 ; 2 uses
  %i.en = load volatile ptr, ptr %i.em, align 8, !tbaa !83
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 128
  store volatile ptr %i.el, ptr %i.eo, align 8, !tbaa !82
  %i.ep = load volatile ptr, ptr %i.em, align 8, !tbaa !83 ; 2 uses
  store ptr %i.ep, ptr %i.dz, align 8, !tbaa !85
  %i.eq = load volatile i64, ptr %i.ee, align 8, !tbaa !84
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %._crit_edge237, label %pmix_list_remove_first.exit, !llvm.loop !50

._crit_edge237:                                   ; preds = %pmix_list_remove_first.exit, %.preheader
  %i.es = load ptr, ptr %i.aj, align 8, !tbaa !29
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !36 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !32 ; 2 uses
  %.not6.i164 = icmp eq ptr %i.ev, null
  br i1 %.not6.i164, label %pmix_obj_run_destructors.exit, label %.lr.ph.i165

.lr.ph.i165:                                      ; preds = %._crit_edge237, %.lr.ph.i165
  %i.ew = phi ptr [ %i.ey, %.lr.ph.i165 ], [ %i.ev, %._crit_edge237 ]
  %.07.i166 = phi ptr [ %i.ex, %.lr.ph.i165 ], [ %i.eu, %._crit_edge237 ]
  call void %i.ew(ptr noundef nonnull %7) #12, !inline_history !2
  %i.ex = getelementptr inbounds nuw i8, ptr %.07.i166, i64 8 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !32 ; 2 uses
  %.not.i167 = icmp eq ptr %i.ey, null
  br i1 %.not.i167, label %pmix_obj_run_destructors.exit, label %.lr.ph.i165, !llvm.loop !3

pmix_obj_run_destructors.exit:                    ; preds = %.lr.ph.i165, %._crit_edge237
  %i.ez = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.q) #12
  %i.fa = icmp eq i32 %i.ez, 35
  br i1 %i.fa, label %bb.ac, label %pmix_obj_update.exit161

bb.ac:                                            ; preds = %pmix_obj_run_destructors.exit
  %i.fb = tail call ptr @__errno_location() #15
  store i32 35, ptr %i.fb, align 4, !tbaa !27
  call void @perror(ptr noundef nonnull @.str.6) #16
  call void @abort() #17
  unreachable

pmix_obj_update.exit161:                          ; preds = %pmix_obj_run_destructors.exit
  %i.fc = load i32, ptr %i.v, align 8, !tbaa !30
  %i.fd = add nsw i32 %i.fc, -1                   ; 2 uses
  store i32 %i.fd, ptr %i.v, align 8, !tbaa !30
  %i.fe = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.q) #12 ; 0 uses
  %i.ff = icmp eq i32 %i.fd, 0
  br i1 %i.ff, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %pmix_obj_update.exit161
  %i.fg = load ptr, ptr %i.u, align 8, !tbaa !29
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !36 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !32 ; 2 uses
  %.not6.i168 = icmp eq ptr %i.fj, null
  br i1 %.not6.i168, label %pmix_obj_run_destructors.exit172, label %.lr.ph.i169

.lr.ph.i169:                                      ; preds = %bb.ad, %.lr.ph.i169
  %i.fk = phi ptr [ %i.fm, %.lr.ph.i169 ], [ %i.fj, %bb.ad ]
  %.07.i170 = phi ptr [ %i.fl, %.lr.ph.i169 ], [ %i.fi, %bb.ad ]
  call void %i.fk(ptr noundef nonnull %i.q) #12, !inline_history !2
  %i.fl = getelementptr inbounds nuw i8, ptr %.07.i170, i64 8 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !32 ; 2 uses
  %.not.i171 = icmp eq ptr %i.fm, null
  br i1 %.not.i171, label %pmix_obj_run_destructors.exit172, label %.lr.ph.i169, !llvm.loop !3

pmix_obj_run_destructors.exit172:                 ; preds = %.lr.ph.i169, %bb.ad
  %i.fn = load ptr, ptr %i.x, align 8, !tbaa !37  ; 2 uses
  %.not157 = icmp eq ptr %i.fn, null
  br i1 %.not157, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %pmix_obj_run_destructors.exit172
  call void %i.fn(ptr noundef nonnull %i.w, ptr noundef nonnull %i.q) #12, !inline_history !4
  br label %bb.ag

bb.af:                                            ; preds = %pmix_obj_run_destructors.exit172
  call void @free(ptr noundef nonnull %i.q) #12
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af, %pmix_obj_update.exit161
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @pmix_plog_globals, i64 216), align 8, !tbaa !59
  fence release
  %i.fo = call i32 @pthread_cond_broadcast(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pmix_plog_globals, i64 168)) #12 ; 0 uses
  %i.fp = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pmix_plog_globals, i64 128)) #12 ; 0 uses
  br label %bb.ax

bb.ah:                                            ; preds = %._crit_edge225
  %i.fq = getelementptr inbounds nuw i8, ptr %i.q, i64 248 ; 4 uses
  %i.fr = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.fq) #12 ; 0 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.q, i64 336 ; 5 uses
  %i.ft = load volatile i8, ptr %i.fs, align 8, !tbaa !38, !range !21, !noundef !22
  %i.fu = trunc nuw i8 %i.ft to i1
  br i1 %i.fu, label %.lr.ph227, label %._crit_edge228

.lr.ph227:                                        ; preds = %bb.ah
  %i.fv = getelementptr inbounds nuw i8, ptr %i.q, i64 288
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph227, %bb.ai
  %i.fw = call i32 @pthread_cond_wait(ptr noundef nonnull %i.fv, ptr noundef nonnull %i.fq) #12 ; 0 uses
  %i.fx = load volatile i8, ptr %i.fs, align 8, !tbaa !38, !range !21, !noundef !22
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %bb.ai, label %._crit_edge228, !llvm.loop !51

._crit_edge228:                                   ; preds = %bb.ai, %bb.ah
  fence acquire
  store volatile i8 1, ptr %i.fs, align 8, !tbaa !38
  %i.fz = load ptr, ptr %i.dz, align 8, !tbaa !85 ; 2 uses
  %.not152229 = icmp eq ptr %i.fz, %i.dy
  br i1 %.not152229, label %._crit_edge233, label %.lr.ph232

.lr.ph232:                                        ; preds = %._crit_edge228
  %i.ga = getelementptr inbounds nuw i8, ptr %i.q, i64 344 ; 8 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.q, i64 352 ; 3 uses
  %i.gb = trunc nuw i8 %.2283 to i1               ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph232, %bb.ap
  %.1138230 = phi ptr [ %i.fz, %.lr.ph232 ], [ %i.gq, %bb.ap ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.1138230, i64 152
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !77
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !86 ; 2 uses
  %.not153 = icmp eq ptr %i.gf, null
  br i1 %.not153, label %bb.ap, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gg = load i64, ptr %i.ga, align 8, !tbaa !39
  %i.gh = add i64 %i.gg, 1
  store i64 %i.gh, ptr %i.ga, align 8, !tbaa !39
  %i.gi = call i32 %i.gf(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef nonnull @localcbfunc, ptr noundef nonnull %i.q) #12 ; 2 uses
  switch i32 %i.gi, label %bb.ao [
    i32 0, label %bb.al
    i32 -64, label %bb.am
    i32 -1366, label %bb.am
    i32 -156, label %bb.an
  ]

bb.al:                                            ; preds = %bb.ak
  %i.gj = load i64, ptr %i.ga, align 8, !tbaa !39
  %i.gk = add i64 %i.gj, -1
  store i64 %i.gk, ptr %i.ga, align 8, !tbaa !39
  store i32 0, ptr %8, align 8, !tbaa !40
  br i1 %i.gb, label %._crit_edge233, label %bb.ap

bb.am:                                            ; preds = %bb.ak, %bb.ak
  %i.gl = load i64, ptr %i.ga, align 8, !tbaa !39
  %i.gm = add i64 %i.gl, -1
  store i64 %i.gm, ptr %i.ga, align 8, !tbaa !39
  br label %bb.ap

bb.an:                                            ; preds = %bb.ak
  store i32 0, ptr %8, align 8, !tbaa !40
  br i1 %i.gb, label %._crit_edge233, label %bb.ap

bb.ao:                                            ; preds = %bb.ak
  %i.gn = load i64, ptr %i.ga, align 8, !tbaa !39
  %i.go = add i64 %i.gn, -1
  store i64 %i.go, ptr %i.ga, align 8, !tbaa !39
  store i32 %i.gi, ptr %8, align 8, !tbaa !40
  br label %bb.ap

bb.ap:                                            ; preds = %bb.aj, %bb.am, %bb.an, %bb.ao, %bb.al
  %i.gp = getelementptr inbounds nuw i8, ptr %.1138230, i64 120
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !83 ; 2 uses
  %.not152 = icmp eq ptr %i.gq, %i.dy
  br i1 %.not152, label %._crit_edge233, label %bb.aj, !llvm.loop !52

._crit_edge233:                                   ; preds = %bb.ap, %bb.al, %bb.an, %._crit_edge228
  %i.gr = getelementptr inbounds nuw i8, ptr %7, i64 264 ; 4 uses
  %i.gs = load volatile i64, ptr %i.gr, align 8, !tbaa !84
  %i.gt = icmp eq i64 %i.gs, 0
  br i1 %i.gt, label %._crit_edge236, label %pmix_list_remove_first.exit175.lr.ph

pmix_list_remove_first.exit175.lr.ph:             ; preds = %._crit_edge233
  %.promoted = load ptr, ptr %i.dz, align 8
  br label %pmix_list_remove_first.exit175

pmix_list_remove_first.exit175:                   ; preds = %pmix_list_remove_first.exit175.lr.ph, %pmix_list_remove_first.exit175
  %i.gu = phi ptr [ %.promoted, %pmix_list_remove_first.exit175.lr.ph ], [ %i.hc, %pmix_list_remove_first.exit175 ] ; 2 uses
  %i.gv = load volatile i64, ptr %i.gr, align 8, !tbaa !84
  %i.gw = add i64 %i.gv, -1
  store volatile i64 %i.gw, ptr %i.gr, align 8, !tbaa !84
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 128
  %i.gy = load volatile ptr, ptr %i.gx, align 8, !tbaa !82
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 120 ; 2 uses
  %i.ha = load volatile ptr, ptr %i.gz, align 8, !tbaa !83
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 128
  store volatile ptr %i.gy, ptr %i.hb, align 8, !tbaa !82
  %i.hc = load volatile ptr, ptr %i.gz, align 8, !tbaa !83 ; 2 uses
  store ptr %i.hc, ptr %i.dz, align 8, !tbaa !85
  %i.hd = load volatile i64, ptr %i.gr, align 8, !tbaa !84
  %i.he = icmp eq i64 %i.hd, 0
  br i1 %i.he, label %._crit_edge236, label %pmix_list_remove_first.exit175, !llvm.loop !53

._crit_edge236:                                   ; preds = %pmix_list_remove_first.exit175, %._crit_edge233
  %i.hf = load ptr, ptr %i.aj, align 8, !tbaa !29
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 48
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !36 ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !32 ; 2 uses
  %.not6.i176 = icmp eq ptr %i.hi, null
  br i1 %.not6.i176, label %pmix_obj_run_destructors.exit180, label %.lr.ph.i177

.lr.ph.i177:                                      ; preds = %._crit_edge236, %.lr.ph.i177
  %i.hj = phi ptr [ %i.hl, %.lr.ph.i177 ], [ %i.hi, %._crit_edge236 ]
  %.07.i178 = phi ptr [ %i.hk, %.lr.ph.i177 ], [ %i.hh, %._crit_edge236 ]
  call void %i.hj(ptr noundef nonnull %7) #12, !inline_history !2
  %i.hk = getelementptr inbounds nuw i8, ptr %.07.i178, i64 8 ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !32 ; 2 uses
  %.not.i179 = icmp eq ptr %i.hl, null
  br i1 %.not.i179, label %pmix_obj_run_destructors.exit180, label %.lr.ph.i177, !llvm.loop !3

pmix_obj_run_destructors.exit180:                 ; preds = %.lr.ph.i177, %._crit_edge236
  %i.hm = getelementptr inbounds nuw i8, ptr %i.q, i64 344
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !39
  %i.ho = icmp eq i64 %i.hn, 0
  br i1 %i.ho, label %bb.aq, label %bb.aw

bb.aq:                                            ; preds = %pmix_obj_run_destructors.exit180
  store volatile i8 0, ptr %i.fs, align 8, !tbaa !38
  fence release
  %i.hp = getelementptr inbounds nuw i8, ptr %i.q, i64 288
  %i.hq = call i32 @pthread_cond_broadcast(ptr noundef nonnull %i.hp) #12 ; 0 uses
  %i.hr = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.fq) #12 ; 0 uses
  %i.hs = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.q) #12
  %i.ht = icmp eq i32 %i.hs, 35
  br i1 %i.ht, label %bb.ar, label %pmix_obj_update.exit

bb.ar:                                            ; preds = %bb.aq
  %i.hu = tail call ptr @__errno_location() #15
  store i32 35, ptr %i.hu, align 4, !tbaa !27
  call void @perror(ptr noundef nonnull @.str.6) #16
  call void @abort() #17
  unreachable

pmix_obj_update.exit:                             ; preds = %bb.aq
  %i.hv = load i32, ptr %i.v, align 8, !tbaa !30
  %i.hw = add nsw i32 %i.hv, -1                   ; 2 uses
  store i32 %i.hw, ptr %i.v, align 8, !tbaa !30
  %i.hx = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.q) #12 ; 0 uses
  %i.hy = icmp eq i32 %i.hw, 0
  br i1 %i.hy, label %bb.as, label %bb.av

bb.as:                                            ; preds = %pmix_obj_update.exit
  %i.hz = load ptr, ptr %i.u, align 8, !tbaa !29
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 48
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !36 ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !32 ; 2 uses
  %.not6.i181 = icmp eq ptr %i.ic, null
  br i1 %.not6.i181, label %pmix_obj_run_destructors.exit185, label %.lr.ph.i182

.lr.ph.i182:                                      ; preds = %bb.as, %.lr.ph.i182
  %i.id = phi ptr [ %i.if, %.lr.ph.i182 ], [ %i.ic, %bb.as ]
  %.07.i183 = phi ptr [ %i.ie, %.lr.ph.i182 ], [ %i.ib, %bb.as ]
  call void %i.id(ptr noundef nonnull %i.q) #12, !inline_history !2
  %i.ie = getelementptr inbounds nuw i8, ptr %.07.i183, i64 8 ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !32 ; 2 uses
  %.not.i184 = icmp eq ptr %i.if, null
  br i1 %.not.i184, label %pmix_obj_run_destructors.exit185, label %.lr.ph.i182, !llvm.loop !3

pmix_obj_run_destructors.exit185:                 ; preds = %.lr.ph.i182, %bb.as
  %i.ig = load ptr, ptr %i.x, align 8, !tbaa !37  ; 2 uses
  %.not155 = icmp eq ptr %i.ig, null
  br i1 %.not155, label %bb.au, label %bb.at

bb.at:                                            ; preds = %pmix_obj_run_destructors.exit185
  call void %i.ig(ptr noundef nonnull %i.w, ptr noundef nonnull %i.q) #12, !inline_history !4
  br label %bb.av

bb.au:                                            ; preds = %pmix_obj_run_destructors.exit185
  call void @free(ptr noundef nonnull %i.q) #12
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au, %pmix_obj_update.exit
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @pmix_plog_globals, i64 216), align 8, !tbaa !59
  fence release
  %i.ih = call i32 @pthread_cond_broadcast(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pmix_plog_globals, i64 168)) #12 ; 0 uses
  %i.ii = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pmix_plog_globals, i64 128)) #12 ; 0 uses
  br label %bb.ax

bb.aw:                                            ; preds = %pmix_obj_run_destructors.exit180
  %9 = getelementptr inbounds nuw i8, ptr %i.q, i64 352
  %i.ij = load i32, ptr %9, align 8, !tbaa !40
  store volatile i8 0, ptr %i.fs, align 8, !tbaa !38
  fence release
  %i.ik = getelementptr inbounds nuw i8, ptr %i.q, i64 288
  %i.il = call i32 @pthread_cond_broadcast(ptr noundef nonnull %i.ik) #12 ; 0 uses
  %i.im = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.fq) #12 ; 0 uses
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @pmix_plog_globals, i64 216), align 8, !tbaa !59
  fence release
  %i.in = call i32 @pthread_cond_broadcast(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pmix_plog_globals, i64 168)) #12 ; 0 uses
  %i.io = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pmix_plog_globals, i64 128)) #12 ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.b, %bb.a, %bb.aw, %bb.av, %bb.ag, %pmix_obj_new_tma.exit
  %.0139 = phi i32 [ -31, %bb.a ], [ -32, %pmix_obj_new_tma.exit ], [ -157, %bb.ag ], [ -157, %bb.av ], [ %i.ij, %bb.aw ], [ -157, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  ret i32 %.0139
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @pmix_output(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_cond_broadcast(ptr noundef) local_unnamed_addr #3

declare void @pmix_class_initialize(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @PMIx_Check_key(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PMIx_Info_true(ptr noundef) local_unnamed_addr #2

declare i32 @pmix_help_check_dups(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal void @localcbfunc(i32 noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 4 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 5 uses
  %i.d = load volatile i8, ptr %i.c, align 8, !tbaa !38, !range !21, !noundef !22
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 288
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.g = tail call i32 @pthread_cond_wait(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.h = load volatile i8, ptr %i.c, align 8, !tbaa !38, !range !21, !noundef !22
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %._crit_edge, !llvm.loop !87

._crit_edge:                                      ; preds = %bb.b, %bb.a
  fence acquire
  store volatile i8 1, ptr %i.c, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !39
  %i.l = add i64 %i.k, -1                         ; 2 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !39
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !40
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %0, ptr %i.m, align 8, !tbaa !40
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %i.p = icmp eq i64 %i.l, 0
  br i1 %i.p, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !34   ; 2 uses
  %.not29 = icmp eq ptr %i.r, null
  br i1 %.not29, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.t = load i32, ptr %i.s, align 8, !tbaa !40
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !35
  tail call void %i.r(i32 noundef %i.t, ptr noundef %i.v) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  store volatile i8 0, ptr %i.c, align 8, !tbaa !38
  fence release
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.x = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %i.w) #12 ; 0 uses
  %i.y = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.z = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %1) #12
  %i.aa = icmp eq i32 %i.z, 35
  br i1 %i.aa, label %bb.i, label %pmix_obj_update.exit

bb.i:                                             ; preds = %bb.h
  %i.ab = tail call ptr @__errno_location() #15
  store i32 35, ptr %i.ab, align 4, !tbaa !27
  tail call void @perror(ptr noundef nonnull @.str.6) #16
  tail call void @abort() #17
  unreachable

pmix_obj_update.exit:                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !30
  %i.ae = add nsw i32 %i.ad, -1                   ; 2 uses
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !30
  %i.af = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %1) #12 ; 0 uses
  %i.ag = icmp eq i32 %i.ae, 0
  br i1 %i.ag, label %bb.j, label %bb.n

bb.j:                                             ; preds = %pmix_obj_update.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !29
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !36 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !32 ; 2 uses
  %.not6.i = icmp eq ptr %i.al, null
  br i1 %.not6.i, label %pmix_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %i.am = phi ptr [ %i.ao, %.lr.ph.i ], [ %i.al, %bb.j ]
  %.07.i = phi ptr [ %i.an, %.lr.ph.i ], [ %i.ak, %bb.j ]
  tail call void %i.am(ptr noundef nonnull %1) #12, !inline_history !2
  %i.an = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !32 ; 2 uses
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %pmix_obj_run_destructors.exit, label %.lr.ph.i, !llvm.loop !3

pmix_obj_run_destructors.exit:                    ; preds = %.lr.ph.i, %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !37 ; 2 uses
  %.not30 = icmp eq ptr %i.aq, null
  br i1 %.not30, label %bb.l, label %bb.k

bb.k:                                             ; preds = %pmix_obj_run_destructors.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void %i.aq(ptr noundef nonnull %i.ar, ptr noundef nonnull %1) #12, !inline_history !4
  br label %bb.n

bb.l:                                             ; preds = %pmix_obj_run_destructors.exit
  tail call void @free(ptr noundef nonnull %1) #12
  br label %bb.n

bb.m:                                             ; preds = %bb.e
  store volatile i8 0, ptr %i.c, align 8, !tbaa !38
  fence release
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.at = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %i.as) #12 ; 0 uses
  %i.au = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #12 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %pmix_obj_update.exit, %bb.l, %bb.k, %bb.m
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @mycon(ptr noundef initializes((168, 180), (184, 248)) %0) #0 {
bb.a:
  %i.a = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !27
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_mutex_t_class, i64 32), align 8, !tbaa !28
  %.not = icmp eq i32 %i.a, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @pmix_class_initialize(ptr noundef nonnull @pmix_mutex_t_class) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr @pmix_mutex_t_class, ptr %i.d, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 1, ptr %i.e, align 8, !tbaa !30
end_hunk_1
