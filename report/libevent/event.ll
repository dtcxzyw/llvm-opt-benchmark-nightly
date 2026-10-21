Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/event?download=true
inline.NumInlined: 216
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.evthread_lock_callbacks = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.event_debug_map = type { ptr, i32, i32, i32, i32 }
%struct.evthread_condition_callbacks = type { i32, ptr, ptr, ptr, ptr }
%struct.eventop = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64 }
%struct.timeval = type { i64, i64 }

@event_global_current_base_ = local_unnamed_addr global ptr null, align 8
@event_debug_mode_on_ = hidden local_unnamed_addr global i32 0, align 4
@event_debug_created_threadable_ctx_ = hidden local_unnamed_addr global i32 0, align 4
@event_debug_map_PRIMES = internal unnamed_addr constant [26 x i32] [i32 53, i32 97, i32 193, i32 389, i32 769, i32 1543, i32 3079, i32 6151, i32 12289, i32 24593, i32 49157, i32 98317, i32 196613, i32 393241, i32 786433, i32 1572869, i32 3145739, i32 6291469, i32 12582917, i32 25165843, i32 50331653, i32 100663319, i32 201326611, i32 402653189, i32 805306457, i32 1610612741], align 16
@evthread_lock_fns_ = external local_unnamed_addr global %struct.evthread_lock_callbacks, align 8
@.str = private unnamed_addr constant [35 x i8] c"%s: Unable to construct event_base\00", align 1
@__func__.event_init = private unnamed_addr constant [11 x i8] c"event_init\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%s was called twice!\00", align 1
@__func__.event_enable_debug_mode = private unnamed_addr constant [24 x i8] c"event_enable_debug_mode\00", align 1
@event_debug_mode_too_late = internal unnamed_addr global i1 false, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"%s must be called *before* creating any events or event_bases\00", align 1
@global_debug_map = internal global %struct.event_debug_map { ptr null, i32 0, i32 0, i32 0, i32 -1 }, align 8
@event_debug_map_lock_ = internal unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"%s: calloc\00", align 1
@__func__.event_base_new_with_config = private unnamed_addr constant [27 x i8] c"event_base_new_with_config\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"EVENT_PRECISE_TIMER\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"%s: no event mechanism available\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"EVENT_SHOW_METHOD\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"libevent using: %s\00", align 1
@evthread_cond_fns_ = external local_unnamed_addr global %struct.evthread_condition_callbacks, align 8
@.str.8 = private unnamed_addr constant [36 x i8] c"%s: Unable to make base notifiable.\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@nil_eventop = hidden constant %struct.eventop { ptr @.str.9, ptr null, ptr null, ptr @nil_backend_del, ptr null, ptr null, i32 0, i32 0, i64 0 }, align 8
@.str.10 = private unnamed_addr constant [43 x i8] c"%s: could not reinitialize event mechanism\00", align 1
@__func__.event_reinit = private unnamed_addr constant [13 x i8] c"event_reinit\00", align 1
@event_get_supported_methods.methods = internal unnamed_addr global ptr null, align 8
@__func__.event_base_priority_init = private unnamed_addr constant [25 x i8] c"event_base_priority_init\00", align 1
@.str.11 = private unnamed_addr constant [79 x i8] c"%s: Too many common timeouts already in use; we only support %d per event_base\00", align 1
@__func__.event_base_init_common_timeout = private unnamed_addr constant [31 x i8] c"event_base_init_common_timeout\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"%s: realloc\00", align 1
@evthread_id_fn_ = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [88 x i8] c"%s: reentrant invocation.  Only one event_base_loop can run on each event_base at once.\00", align 1
@__func__.event_base_loop = private unnamed_addr constant [16 x i8] c"event_base_loop\00", align 1
@event_debug_logging_mask_ = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [26 x i8] c"%s: no events registered.\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"%s: dispatch returned unsuccessfully.\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"%s: asked to terminate loop.\00", align 1
@event_self_cbarg_ptr_ = internal global ptr null, align 8
@.str.17 = private unnamed_addr constant [68 x i8] c"%s: EV_SIGNAL is not compatible with EV_READ, EV_WRITE or EV_CLOSED\00", align 1
@__func__.event_assign = private unnamed_addr constant [13 x i8] c"event_assign\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"%s: %d events finalizing\00", align 1
@__func__.event_callback_finalize_many_ = private unnamed_addr constant [30 x i8] c"event_callback_finalize_many_\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"event_remove_timer_nolock: event: %p\00", align 1
@.str.20 = private unnamed_addr constant [46 x i8] c"event_add: event: %p (fd %d), %s%s%s%scall %p\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"EV_READ \00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"EV_WRITE \00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"EV_CLOSED \00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"EV_TIMEOUT \00", align 1
@.str.26 = private unnamed_addr constant [64 x i8] c"event_add: event %p, timeout in %d seconds %d useconds, call %p\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"event_del: %p (fd %d), callback %p\00", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c"event_active: %p (fd %d), res %d, callback %p\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"2.1.13-stable\00", align 1
@mm_malloc_fn_ = internal unnamed_addr global ptr null, align 8
@mm_realloc_fn_ = internal unnamed_addr global ptr null, align 8
@mm_free_fn_ = internal unnamed_addr global ptr null, align 8
@.str.30 = private unnamed_addr constant [18 x i8] c"Inserted events:\0A\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"Active events:\0A\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"Couldn't allocate %s\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"event_debug_map_lock_\00", align 1
@epollops = external constant %struct.eventop, align 8
@pollops = external constant %struct.eventop, align 8
@selectops = external constant %struct.eventop, align 8
@.str.34 = private unnamed_addr constant [11 x i8] c"EVENT_NO%s\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"%s: no base to free\00", align 1
@__func__.event_base_free_ = private unnamed_addr constant [17 x i8] c"event_base_free_\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"%s: %d events freed\00", align 1
@.str.37 = private unnamed_addr constant [37 x i8] c"%s: %d events were still set in base\00", align 1
@.str.38 = private unnamed_addr constant [47 x i8] c"event_process_active: event: %p, %s%s%scall %p\00", align 1
@.str.39 = private unnamed_addr constant [61 x i8] c"event_process_active: event_callback %p, closure %d, call %p\00", align 1
@.str.40 = private unnamed_addr constant [75 x i8] c"%s called on an already added event %p (events: 0x%x, fd: %d, flags: 0x%x)\00", align 1
@__func__.event_debug_assert_not_added_ = private unnamed_addr constant [30 x i8] c"event_debug_assert_not_added_\00", align 1
@.str.41 = private unnamed_addr constant [32 x i8] c"Out of memory in debugging code\00", align 1
@.str.42 = private unnamed_addr constant [76 x i8] c"%s called on a non-initialized event %p (events: 0x%x, fd: %d, flags: 0x%x)\00", align 1
@__func__.event_debug_assert_is_setup_ = private unnamed_addr constant [29 x i8] c"event_debug_assert_is_setup_\00", align 1
@.str.43 = private unnamed_addr constant [78 x i8] c"%s: noting an add on a non-setup event %p (events: 0x%x, fd: %d, flags: 0x%x)\00", align 1
@__func__.event_debug_note_add_ = private unnamed_addr constant [22 x i8] c"event_debug_note_add_\00", align 1
@.str.44 = private unnamed_addr constant [77 x i8] c"%s: noting a del on a non-setup event %p (events: 0x%x, fd: %d, flags: 0x%x)\00", align 1
@__func__.event_debug_note_del_ = private unnamed_addr constant [22 x i8] c"event_debug_note_del_\00", align 1
@.str.45 = private unnamed_addr constant [52 x i8] c"timeout_next: event: %p, in %d seconds, %d useconds\00", align 1
@.str.46 = private unnamed_addr constant [36 x i8] c"timeout_process: event: %p, call %p\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"Error reading from eventfd\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"sig\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"fd \00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"  %p [%s %d]%s%s%s%s%s%s%s\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c" Read\00", align 1
@.str.52 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.53 = private unnamed_addr constant [7 x i8] c" Write\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c" EOF\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c" Signal\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c" Persist\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c" ET\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c" Internal\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c" Timeout=%ld.%06d\00", align 1
@.str.60 = private unnamed_addr constant [48 x i8] c"  %p [%s %d, priority=%d]%s%s%s%s%s active%s%s\0A\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c" Timeout\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c" [Internal]\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c" [NextTime]\00", align 1

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @event_debug_map_HT_GROW(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = icmp eq i32 %i.b, 25
  br i1 %i.c, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp ugt i32 %i.e, %1
  br i1 %i.f, label %.critedge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %i.g = sext i32 %i.b to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ %i.g, %.preheader.preheader ], [ %indvars.iv.next, %.preheader ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.h = getelementptr inbounds [4 x i8], ptr @event_debug_map_PRIMES, i64 %indvars.iv.next
  %i.i = load i32, ptr %i.h, align 4              ; 6 uses
  %i.j = uitofp i32 %i.i to double
  %i.k = fmul nnan double %i.j, 5.000000e-01
  %i.l = fptoui double %i.k to i32                ; 2 uses
  %i.m = icmp uge i32 %1, %i.l
  %i.n = icmp slt i64 %indvars.iv, 25
  %i.o = and i1 %i.n, %i.m
  br i1 %i.o, label %.preheader, label %bb.c, !llvm.loop !21

bb.c:                                             ; preds = %.preheader
  %i.p = trunc nsw i64 %indvars.iv.next to i32
  %i.q = zext i32 %i.i to i64
  %i.r = shl nuw nsw i64 %i.q, 3                  ; 5 uses
  %i.s = load ptr, ptr @mm_malloc_fn_, align 8    ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = tail call ptr %i.s(i64 noundef %i.r) #25, !inline_history !16
  br label %event_mm_malloc_.exit

bb.e:                                             ; preds = %bb.c
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.r) #26
  br label %event_mm_malloc_.exit

event_mm_malloc_.exit:                            ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.u, %bb.e ], [ %i.t, %bb.d ] ; 6 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %event_mm_malloc_.exit.thread, label %bb.f

bb.f:                                             ; preds = %event_mm_malloc_.exit
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i, i8 0, i64 %i.r, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8              ; 2 uses
  %.not110 = icmp eq i32 %i.w, 0
  %.pre123 = load ptr, ptr %0, align 8            ; 2 uses
  br i1 %.not110, label %._crit_edge99, label %.lr.ph98

.lr.ph98:                                         ; preds = %bb.f, %._crit_edge
  %i.x = phi i32 [ %i.aj, %._crit_edge ], [ %i.w, %bb.f ]
  %2 = phi ptr [ %3, %._crit_edge ], [ %.pre123, %bb.f ] ; 2 uses
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %._crit_edge ], [ 0, %bb.f ] ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv115
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not8694 = icmp eq ptr %i.z, null
  br i1 %.not8694, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph98, %.lr.ph
  %.07195 = phi ptr [ %i.aa, %.lr.ph ], [ %i.z, %.lr.ph98 ] ; 4 uses
  %i.aa = load ptr, ptr %.07195, align 8          ; 2 uses
  %i.ab = getelementptr i8, ptr %.07195, i64 8
  %.071.val = load ptr, ptr %i.ab, align 8
  %i.ac = ptrtoint ptr %.071.val to i64
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = lshr i32 %i.ad, 6
  %i.af = urem i32 %i.ae, %i.i
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.ag ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  store ptr %i.ai, ptr %.07195, align 8
  store ptr %.07195, ptr %i.ah, align 8
  %.not86 = icmp eq ptr %i.aa, null
  br i1 %.not86, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !22

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %0, align 8
  %.pre.a = load i32, ptr %i.v, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph98
  %i.aj = phi i32 [ %.pre.a, %._crit_edge.loopexit ], [ %i.x, %.lr.ph98 ] ; 2 uses
  %3 = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %2, %.lr.ph98 ] ; 2 uses
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = icmp samesign ult i64 %indvars.iv.next116, %i.ak
  br i1 %i.al, label %.lr.ph98, label %._crit_edge99, !llvm.loop !23

._crit_edge99:                                    ; preds = %._crit_edge, %bb.f
  %4 = phi ptr [ %.pre123, %bb.f ], [ %3, %._crit_edge ] ; 3 uses
  %.not85 = icmp eq ptr %4, null
  br i1 %.not85, label %event_mm_free_.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge99
  %i.am = load ptr, ptr @mm_free_fn_, align 8     ; 2 uses
  %.not.i87 = icmp eq ptr %i.am, null
  br i1 %.not.i87, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void %i.am(ptr noundef nonnull %4) #25, !inline_history !17
  br label %event_mm_free_.exit

bb.i:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %4) #25
  br label %event_mm_free_.exit

event_mm_malloc_.exit.thread:                     ; preds = %event_mm_malloc_.exit
  %i.an = load ptr, ptr %0, align 8               ; 2 uses
  %i.ao = load ptr, ptr @mm_realloc_fn_, align 8  ; 2 uses
  %.not.i88 = icmp eq ptr %i.ao, null
  br i1 %.not.i88, label %bb.k, label %bb.j

bb.j:                                             ; preds = %event_mm_malloc_.exit.thread
  %i.ap = tail call ptr %i.ao(ptr noundef %i.an, i64 noundef %i.r) #25, !inline_history !18
  br label %event_mm_realloc_.exit

bb.k:                                             ; preds = %event_mm_malloc_.exit.thread
  %i.aq = tail call ptr @realloc(ptr noundef %i.an, i64 noundef %i.r) #27
  br label %event_mm_realloc_.exit

event_mm_realloc_.exit:                           ; preds = %bb.j, %bb.k
  %.0.i89 = phi ptr [ %i.ap, %bb.j ], [ %i.aq, %bb.k ] ; 6 uses
  %.not83.not = icmp eq ptr %.0.i89, null
  br i1 %.not83.not, label %.critedge, label %bb.l

bb.l:                                             ; preds = %event_mm_realloc_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8            ; 2 uses
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.0.i89, i64 %i.at
  %i.av = sub i32 %i.i, %i.as
  %i.aw = zext i32 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.au, i8 0, i64 %i.ax, i1 false)
  %i.ay = load i32, ptr %i.ar, align 8            ; 2 uses
  %.not111 = icmp eq i32 %i.ay, 0
  br i1 %.not111, label %event_mm_free_.exit, label %.lr.ph109

.lr.ph109:                                        ; preds = %bb.l, %._crit_edge106
  %i.az = phi i32 [ %i.bl, %._crit_edge106 ], [ %i.ay, %bb.l ]
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %._crit_edge106 ], [ 0, %bb.l ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.0.i89, i64 %indvars.iv118 ; 2 uses
  %.069100 = load ptr, ptr %i.ba, align 8         ; 2 uses
  %.not84101 = icmp eq ptr %.069100, null
  br i1 %.not84101, label %._crit_edge106, label %.lr.ph105

.lr.ph105:                                        ; preds = %.lr.ph109, %bb.n
  %.069103 = phi ptr [ %.069, %bb.n ], [ %.069100, %.lr.ph109 ] ; 5 uses
  %.0102 = phi ptr [ %.1, %bb.n ], [ %i.ba, %.lr.ph109 ] ; 2 uses
  %i.bb = getelementptr i8, ptr %.069103, i64 8
  %.069.val = load ptr, ptr %i.bb, align 8
  %i.bc = ptrtoint ptr %.069.val to i64
  %i.bd = trunc i64 %i.bc to i32
  %i.be = lshr i32 %i.bd, 6
  %i.bf = urem i32 %i.be, %i.i
  %i.bg = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bh = icmp eq i64 %indvars.iv118, %i.bg
  br i1 %i.bh, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph105
  %i.bi = load ptr, ptr %.069103, align 8
  store ptr %i.bi, ptr %.0102, align 8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.0.i89, i64 %i.bg ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8
  store ptr %i.bk, ptr %.069103, align 8
  store ptr %.069103, ptr %i.bj, align 8
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph105, %bb.m
  %.1 = phi ptr [ %.0102, %bb.m ], [ %.069103, %.lr.ph105 ] ; 2 uses
  %.069 = load ptr, ptr %.1, align 8              ; 2 uses
  %.not84 = icmp eq ptr %.069, null
  br i1 %.not84, label %._crit_edge106.loopexit, label %.lr.ph105, !llvm.loop !24

._crit_edge106.loopexit:                          ; preds = %bb.n
  %.pre121 = load i32, ptr %i.ar, align 8
  br label %._crit_edge106

._crit_edge106:                                   ; preds = %._crit_edge106.loopexit, %.lr.ph109
  %i.bl = phi i32 [ %.pre121, %._crit_edge106.loopexit ], [ %i.az, %.lr.ph109 ] ; 2 uses
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %i.bm = zext i32 %i.bl to i64
  %i.bn = icmp samesign ult i64 %indvars.iv.next119, %i.bm
  br i1 %i.bn, label %.lr.ph109, label %event_mm_free_.exit, !llvm.loop !25

event_mm_free_.exit:                              ; preds = %._crit_edge106, %bb.l, %._crit_edge99, %bb.h, %bb.i
  %storemerge = phi ptr [ %.0.i, %._crit_edge99 ], [ %.0.i, %bb.i ], [ %.0.i, %bb.h ], [ %.0.i89, %bb.l ], [ %.0.i89, %._crit_edge106 ]
  store ptr %storemerge, ptr %0, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.i, ptr %i.bo, align 8
  store i32 %i.p, ptr %i.a, align 4
  store i32 %i.l, ptr %i.d, align 8
  br label %.critedge

.critedge:                                        ; preds = %event_mm_realloc_.exit, %bb.b, %bb.a, %event_mm_free_.exit
  %.176 = phi i32 [ -1, %event_mm_realloc_.exit ], [ 0, %bb.a ], [ 0, %event_mm_free_.exit ], [ 0, %bb.b ]
  ret i32 %.176
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define ptr @event_mm_malloc_(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @mm_malloc_fn_, align 8    ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr %i.b(i64 noundef %0) #25
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = tail call noalias ptr @malloc(i64 noundef %0) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi ptr [ %i.d, %bb.d ], [ %i.c, %bb.c ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @event_mm_free_(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @mm_free_fn_, align 8      ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.a(ptr noundef %0) #25
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %0) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @event_mm_realloc_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @mm_realloc_fn_, align 8   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr %i.a(ptr noundef %0, i64 noundef %1) #25
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @realloc(ptr noundef %0, i64 noundef %1) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden void @event_debug_map_HT_CLEAR(ptr nofree noundef captures(none) initializes((8, 24)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %event_mm_free_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @mm_free_fn_, align 8      ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.b(ptr noundef nonnull %i.a) #25, !inline_history !17
  br label %event_mm_free_.exit

bb.d:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #25
  br label %event_mm_free_.exit

event_mm_free_.exit:                              ; preds = %bb.d, %bb.c, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  store i32 -1, ptr %i.c, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 10000, 9999) i32 @event_debug_map_HT_REP_IS_BAD_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 5 uses
  %.not = icmp eq i32 %i.b, 0
end_hunk_0
