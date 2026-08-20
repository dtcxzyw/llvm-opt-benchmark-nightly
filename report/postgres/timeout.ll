inline.NumInlined: 8
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeout_params = type { i32, i8, i8, ptr, i64, i64, i32 }
%struct.itimerval = type { %struct.timeval, %struct.timeval }
%struct.timeval = type { i64, i64 }

@alarm_enabled = internal global i32 0, align 4
@num_active_timeouts = internal global i32 0, align 4
@all_timeouts = internal global [23 x %struct.timeout_params] zeroinitializer, align 16
@all_timeouts_initialized = internal unnamed_addr global i1 false, align 1
@.str = private unnamed_addr constant [32 x i8] c"cannot add more timeout reasons\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"timeout.c\00", align 1
@__func__.RegisterTimeout = private unnamed_addr constant [16 x i8] c"RegisterTimeout\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"unrecognized timeout type %d\00", align 1
@__func__.enable_timeouts = private unnamed_addr constant [16 x i8] c"enable_timeouts\00", align 1
@InterruptHoldoffCount = external global i32, align 4
@MyLatch = external local_unnamed_addr global ptr, align 8
@signal_pending = internal global i32 0, align 4
@active_timeouts = internal global [23 x ptr] zeroinitializer, align 16
@signal_due_at = internal global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"could not enable SIGALRM timer: %m\00", align 1
@__func__.schedule_alarm = private unnamed_addr constant [15 x i8] c"schedule_alarm\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"timeout index %d out of range 0..%d\00", align 1
@__func__.insert_timeout = private unnamed_addr constant [15 x i8] c"insert_timeout\00", align 1
@__func__.remove_timeout_index = private unnamed_addr constant [21 x i8] c"remove_timeout_index\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @InitializeTimeouts() local_unnamed_addr #0 {
bb.a:
  store volatile i32 0, ptr @alarm_enabled, align 4
  store volatile i32 0, ptr @num_active_timeouts, align 4
  store i32 0, ptr @all_timeouts, align 16
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 4), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 5), align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 8), i8 0, i64 28, i1 false)
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 40), align 8
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 44), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 45), align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 48), i8 0, i64 28, i1 false)
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 80), align 16
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 84), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 85), align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 88), i8 0, i64 28, i1 false)
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 120), align 8
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 124), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 125), align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 128), i8 0, i64 28, i1 false)
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 160), align 16
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 164), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 165), align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 168), i8 0, i64 28, i1 false)
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 200), align 8
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 204), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 205), align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 208), i8 0, i64 28, i1 false)
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 240), align 16
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 244), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 245), align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 248), i8 0, i64 28, i1 false)
  store i32 7, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 280), align 8
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 284), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 285), align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 288), i8 0, i64 28, i1 false)
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 320), align 16
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 324), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 325), align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 328), i8 0, i64 28, i1 false)
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 360), align 8
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 364), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 365), align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 368), i8 0, i64 28, i1 false)
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 400), align 16
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 404), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 405), align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 408), i8 0, i64 28, i1 false)
  store i32 11, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 440), align 8
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 444), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 445), align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 448), i8 0, i64 28, i1 false)
  store i32 12, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 480), align 16
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 484), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 485), align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 488), i8 0, i64 28, i1 false)
  store i32 13, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 520), align 8
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 524), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 525), align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 528), i8 0, i64 28, i1 false)
  store i32 14, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 560), align 16
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 564), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 565), align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 568), i8 0, i64 28, i1 false)
  store i32 15, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 600), align 8
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 604), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 605), align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 608), i8 0, i64 28, i1 false)
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 640), align 16
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 644), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 645), align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 648), i8 0, i64 28, i1 false)
  store i32 17, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 680), align 8
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 684), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 685), align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 688), i8 0, i64 28, i1 false)
  store i32 18, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 720), align 16
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 724), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 725), align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 728), i8 0, i64 28, i1 false)
  store i32 19, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 760), align 8
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 764), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 765), align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 768), i8 0, i64 28, i1 false)
  store i32 20, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 800), align 16
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 804), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 805), align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 808), i8 0, i64 28, i1 false)
  store i32 21, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 840), align 8
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 844), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 845), align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 848), i8 0, i64 28, i1 false)
  store i32 22, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 880), align 16
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 884), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 885), align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 888), i8 0, i64 28, i1 false)
  store i1 true, ptr @all_timeouts_initialized, align 1
  tail call void @pqsignal_be(i32 noundef 14, ptr noundef nonnull @handle_sig_alarm) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @pqsignal_be(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @handle_sig_alarm(i32 %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = load volatile i32, ptr @InterruptHoldoffCount, align 4
  %i.b = add i32 %i.a, 1
  store volatile i32 %i.b, ptr @InterruptHoldoffCount, align 4
  %i.c = load ptr, ptr @MyLatch, align 8
  tail call void @SetLatch(ptr noundef %i.c) #8
  store volatile i32 0, ptr @signal_pending, align 4
  %i.d = load volatile i32, ptr @alarm_enabled, align 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store volatile i32 0, ptr @alarm_enabled, align 4
  %i.e = load volatile i32, ptr @num_active_timeouts, align 4
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i64 @GetCurrentTimestamp() #8  ; 2 uses
  %i.h = load volatile i32, ptr @num_active_timeouts, align 4
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c, %bb.h
  %.01419 = phi i64 [ %i.as, %bb.h ], [ %i.g, %bb.c ] ; 5 uses
  %i.j = load volatile ptr, ptr @active_timeouts, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load i64, ptr %i.k, align 8
  %.not17 = icmp slt i64 %.01419, %i.l
  br i1 %.not17, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.m = load volatile ptr, ptr @active_timeouts, align 16 ; 5 uses
  %i.n = load volatile i32, ptr @num_active_timeouts, align 4
  %.not.i = icmp sgt i32 %i.n, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #9 ; 0 uses
  %i.p = load volatile i32, ptr @num_active_timeouts, align 4
  %i.q = add i32 %i.p, -1
  %i.r = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %i.q) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 143, ptr noundef nonnull @__func__.remove_timeout_index) #8
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.s = load volatile ptr, ptr @active_timeouts, align 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store volatile i8 0, ptr %i.t, align 4
  %i.u = load volatile i32, ptr @num_active_timeouts, align 4
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %.lr.ph.i, label %remove_timeout_index.exit

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i.a = phi i64 [ %indvars.iv.next14.i, %.lr.ph.i ], [ 0, %bb.f ] ; 2 uses
  %.0.in11.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 1, %bb.f ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @active_timeouts, i64 %.0.in11.i
  %i.x = load volatile ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @active_timeouts, i64 %indvars.iv.i.a
  store volatile ptr %i.x, ptr %i.y, align 8
  %indvars.iv.next.i = add nuw nsw i64 %.0.in11.i, 1 ; 2 uses
  %i.z = load volatile i32, ptr @num_active_timeouts, align 4
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i64 %indvars.iv.next.i, %i.aa
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv.i.a, 1
  br i1 %i.ab, label %.lr.ph.i, label %remove_timeout_index.exit, !llvm.loop !4

remove_timeout_index.exit:                        ; preds = %.lr.ph.i, %bb.f
  %i.ac = load volatile i32, ptr @num_active_timeouts, align 4
  %i.ad = add i32 %i.ac, -1
  store volatile i32 %i.ad, ptr @num_active_timeouts, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 5
  store volatile i8 1, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag() #8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ai = load i32, ptr %i.ah, align 8            ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %remove_timeout_index.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = zext nneg i32 %i.ai to i64
  %i.an = mul nuw nsw i64 %i.am, 1000             ; 2 uses
  %i.ao = add i64 %i.al, %i.an                    ; 2 uses
  %i.ap = icmp slt i64 %i.ao, %.01419
  %i.aq = add i64 %i.an, %.01419
  %spec.select = select i1 %i.ap, i64 %i.aq, i64 %i.ao
  %i.ar = load i32, ptr %i.m, align 8
  tail call fastcc void @enable_timeout(i32 noundef %i.ar, i64 noundef %.01419, i64 noundef %spec.select, i32 noundef %i.ai)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %remove_timeout_index.exit
  %i.as = tail call i64 @GetCurrentTimestamp() #8 ; 2 uses
  %i.at = load volatile i32, ptr @num_active_timeouts, align 4
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph, label %.critedge, !llvm.loop !6

.critedge:                                        ; preds = %.lr.ph, %bb.h, %bb.c
  %.014.lcssa = phi i64 [ %i.g, %bb.c ], [ %i.as, %bb.h ], [ %.01419, %.lr.ph ]
  tail call fastcc void @schedule_alarm(i64 noundef %.014.lcssa)
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %.critedge, %bb.b
  %i.av = load volatile i32, ptr @InterruptHoldoffCount, align 4
  %i.aw = add i32 %i.av, -1
  store volatile i32 %i.aw, ptr @InterruptHoldoffCount, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 23) i32 @RegisterTimeout(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %0, 12
  br i1 %i.a, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 528), align 16
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.loopexit, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 568), align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.loopexit, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 608), align 16
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.loopexit, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 648), align 8
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.loopexit, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 688), align 16
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.loopexit, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 728), align 8
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.loopexit, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 768), align 16
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.loopexit, label %.preheader.7

.preheader.7:                                     ; preds = %.preheader.6
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 808), align 8
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.loopexit, label %.preheader.8

.preheader.8:                                     ; preds = %.preheader.7
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 848), align 16
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.loopexit, label %.preheader.9

.preheader.9:                                     ; preds = %.preheader.8
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 888), align 8
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.preheader.9
  %i.v = tail call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #9 ; 0 uses
  %i.w = tail call i32 @errcode(i32 noundef 16581) #8 ; 0 uses
  %i.x = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 520, ptr noundef nonnull @__func__.RegisterTimeout) #8
  unreachable

.loopexit:                                        ; preds = %.preheader.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %.preheader.7, %.preheader.8, %.preheader.9, %bb.a
  %.1 = phi i32 [ %0, %bb.a ], [ 13, %.preheader.preheader ], [ 14, %.preheader.1 ], [ 15, %.preheader.2 ], [ 16, %.preheader.3 ], [ 17, %.preheader.4 ], [ 18, %.preheader.5 ], [ 19, %.preheader.6 ], [ 20, %.preheader.7 ], [ 21, %.preheader.8 ], [ 22, %.preheader.9 ] ; 2 uses
  %i.y = zext nneg i32 %.1 to i64
  %i.z = getelementptr inbounds nuw [40 x i8], ptr @all_timeouts, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %1, ptr %i.aa, align 8
  ret i32 %.1
}

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @errcode(i32 noundef) local_unnamed_addr #2

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @reschedule_timeouts() local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @all_timeouts_initialized, align 1
  br i1 %.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  store volatile i32 0, ptr @alarm_enabled, align 4
  %i.a = load volatile i32, ptr @num_active_timeouts, align 4
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @GetCurrentTimestamp() #8
  tail call fastcc void @schedule_alarm(i64 noundef %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @schedule_alarm(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.itimerval, align 8          ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = load volatile i32, ptr @num_active_timeouts, align 4
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 16, i1 false)
  %i.e = load volatile i32, ptr @signal_pending, align 4
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load volatile i64, ptr @signal_due_at, align 8
  %i.g = add i64 %i.f, 10000
  %i.h = icmp sgt i64 %0, %i.g
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store volatile i32 0, ptr @signal_pending, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.i = load volatile ptr, ptr @active_timeouts, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i64, ptr %i.j, align 8              ; 4 uses
  %i.l = icmp sgt i64 %0, %i.k
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store volatile i32 0, ptr @signal_pending, align 4
  store i64 0, ptr %i.a, align 8
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  call void @TimestampDifference(i64 noundef %0, i64 noundef %i.k, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %i.m = load i64, ptr %i.a, align 8              ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  %i.o = load i32, ptr %i.b, align 4              ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  %or.cond5 = select i1 %i.n, i1 %i.p, i1 false
  br i1 %or.cond5, label %.sink.split, label %bb.h

.sink.split:                                      ; preds = %bb.g, %bb.f
  store i32 1, ptr %i.b, align 4
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.g
  %i.q = phi i32 [ %i.o, %bb.g ], [ 1, %.sink.split ]
  %i.r = phi i64 [ %i.m, %bb.g ], [ 0, %.sink.split ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.r, ptr %i.s, align 8
  %i.t = sext i32 %i.q to i64
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.t, ptr %i.u, align 8
  store volatile i32 1, ptr @alarm_enabled, align 4
  %i.v = load volatile i32, ptr @signal_pending, align 4
  %.not26 = icmp eq i32 %i.v, 0
  br i1 %.not26, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load volatile i64, ptr @signal_due_at, align 8
  %.not27 = icmp slt i64 %i.k, %i.w
  br i1 %.not27, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i, %bb.h
  store volatile i64 %i.k, ptr @signal_due_at, align 8
  store volatile i32 1, ptr @signal_pending, align 4
  %i.x = call i32 @setitimer(i32 noundef 0, ptr noundef nonnull %1, ptr noundef null) #8
  %.not28 = icmp eq i32 %i.x, 0
  br i1 %.not28, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store volatile i32 0, ptr @signal_pending, align 4
  %i.y = call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #9 ; 0 uses
  %i.z = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.3) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 347, ptr noundef nonnull @__func__.schedule_alarm) #8
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.a
  ret void
}

declare i64 @GetCurrentTimestamp() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @enable_timeout_after(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  store volatile i32 0, ptr @alarm_enabled, align 4
  %i.a = tail call i64 @GetCurrentTimestamp() #8  ; 3 uses
  %i.b = sext i32 %1 to i64
  %i.c = mul nsw i64 %i.b, 1000
  %i.d = add i64 %i.a, %i.c
  tail call fastcc void @enable_timeout(i32 noundef %0, i64 noundef %i.a, i64 noundef %i.d, i32 noundef 0)
  tail call fastcc void @schedule_alarm(i64 noundef %i.a)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @enable_timeout(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [40 x i8], ptr @all_timeouts, i64 %i.a ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.d = load volatile i8, ptr %i.c, align 4, !range !7, !noundef !8
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load volatile i32, ptr @num_active_timeouts, align 4
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.i, label %find_active_timeout.exit.thread

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %bb.b ] ; 6 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @active_timeouts, i64 %indvars.iv.i
  %i.i = load volatile ptr, ptr %i.h, align 8
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp eq i32 %i.j, %0
  %i.l = load volatile i32, ptr @num_active_timeouts, align 4 ; 2 uses
  br i1 %i.k, label %find_active_timeout.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = icmp slt i64 %indvars.iv.next.i, %i.m
  br i1 %i.n, label %.lr.ph.i, label %find_active_timeout.exit.thread, !llvm.loop !9

find_active_timeout.exit:                         ; preds = %.lr.ph.i
  %i.o = trunc nuw nsw i64 %indvars.iv.i to i32   ; 3 uses
  %.not.i = icmp sgt i32 %i.l, %i.o
  br i1 %.not.i, label %bb.d, label %find_active_timeout.exit.thread

find_active_timeout.exit.thread:                  ; preds = %bb.c, %bb.b, %find_active_timeout.exit
  %.06.i28 = phi i32 [ -1, %bb.b ], [ %i.o, %find_active_timeout.exit ], [ -1, %bb.c ]
  %i.p = tail call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #9 ; 0 uses
  %i.q = load volatile i32, ptr @num_active_timeouts, align 4
  %i.r = add i32 %i.q, -1
  %i.s = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.4, i32 noundef %.06.i28, i32 noundef %i.r) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 143, ptr noundef nonnull @__func__.remove_timeout_index) #8
  unreachable

bb.d:                                             ; preds = %find_active_timeout.exit
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @active_timeouts, i64 %indvars.iv.i
  %i.u = load volatile ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store volatile i8 0, ptr %i.v, align 4
  %.010.i = add nuw nsw i32 %i.o, 1
  %i.w = load volatile i32, ptr @num_active_timeouts, align 4
  %i.x = icmp slt i32 %.010.i, %i.w
  br i1 %i.x, label %.lr.ph.preheader.i, label %remove_timeout_index.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %4 = add nuw nsw i64 %indvars.iv.i, 1
  br label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.lr.ph.i23, %.lr.ph.preheader.i
  %indvars.iv.i24.a = phi i64 [ %indvars.iv.i, %.lr.ph.preheader.i ], [ %indvars.iv.next14.i, %.lr.ph.i23 ] ; 2 uses
  %.0.in11.i = phi i64 [ %4, %.lr.ph.preheader.i ], [ %indvars.iv.next.i25, %.lr.ph.i23 ] ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @active_timeouts, i64 %.0.in11.i
  %i.z = load volatile ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @active_timeouts, i64 %indvars.iv.i24.a
  store volatile ptr %i.z, ptr %i.aa, align 8
  %indvars.iv.next.i25 = add nuw nsw i64 %.0.in11.i, 1 ; 2 uses
  %i.ab = load volatile i32, ptr @num_active_timeouts, align 4
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next.i25, %i.ac
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv.i24.a, 1
  br i1 %i.ad, label %.lr.ph.i23, label %remove_timeout_index.exit, !llvm.loop !4

remove_timeout_index.exit:                        ; preds = %.lr.ph.i23, %bb.d
  %i.ae = load volatile i32, ptr @num_active_timeouts, align 4
  %i.af = add i32 %i.ae, -1
  store volatile i32 %i.af, ptr @num_active_timeouts, align 4
  br label %bb.e

bb.e:                                             ; preds = %remove_timeout_index.exit, %bb.a
  %i.ag = load volatile i32, ptr @num_active_timeouts, align 4
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.e, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %bb.e ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr @active_timeouts, i64 %indvars.iv
  %i.aj = load volatile ptr, ptr %i.ai, align 8   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.am = icmp slt i64 %2, %i.al
  br i1 %i.am, label %.thread.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.an = icmp eq i64 %2, %i.al
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ao = load i32, ptr %i.aj, align 8
  %i.ap = icmp ult i32 %0, %i.ao
  br i1 %i.ap, label %.thread.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.aq = load volatile i32, ptr @num_active_timeouts, align 4
  %i.ar = sext i32 %i.aq to i64
  %i.as = icmp slt i64 %indvars.iv.next, %i.ar
  br i1 %i.as, label %.lr.ph, label %.thread.loopexit, !llvm.loop !10

.thread.loopexit:                                 ; preds = %bb.g, %.lr.ph, %bb.h
  %.020.lcssa.ph.in = phi i64 [ %indvars.iv.next, %bb.h ], [ %indvars.iv, %.lr.ph ], [ %indvars.iv, %bb.g ]
  %.020.lcssa.ph = trunc i64 %.020.lcssa.ph.in to i32
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.e
  %.020.lcssa = phi i32 [ 0, %bb.e ], [ %.020.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store volatile i8 0, ptr %i.at, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %1, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %2, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %3, ptr %i.aw, align 8
  %i.ax = load volatile i32, ptr @num_active_timeouts, align 4
  %i.ay = icmp sgt i32 %.020.lcssa, %i.ax
  br i1 %i.ay, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread
  %i.az = tail call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #9 ; 0 uses
  %i.ba = load volatile i32, ptr @num_active_timeouts, align 4
  %i.bb = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.4, i32 noundef %.020.lcssa, i32 noundef %i.ba) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 120, ptr noundef nonnull @__func__.insert_timeout) #8
  unreachable

bb.j:                                             ; preds = %.thread
  store volatile i8 1, ptr %i.c, align 4
  %i.bc = load volatile i32, ptr @num_active_timeouts, align 4 ; 2 uses
  %.012.i = add i32 %i.bc, -1                     ; 2 uses
  %.not13.i = icmp slt i32 %.012.i, %.020.lcssa
  br i1 %.not13.i, label %insert_timeout.exit, label %.lr.ph.i26.preheader

.lr.ph.i26.preheader:                             ; preds = %bb.j
  %i.bd = sext i32 %.012.i to i64
  %i.be = sext i32 %.020.lcssa to i64
  %i.bf = sext i32 %i.bc to i64
  br label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.lr.ph.i26.preheader, %.lr.ph.i26
  %indvars.iv38.a = phi i64 [ %i.bf, %.lr.ph.i26.preheader ], [ %indvars.iv.next41, %.lr.ph.i26 ] ; 2 uses
  %.0.in14.i = phi i64 [ %i.bd, %.lr.ph.i26.preheader ], [ %indvars.iv.next39, %.lr.ph.i26 ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr @active_timeouts, i64 %.0.in14.i
  %i.bh = load volatile ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds [8 x i8], ptr @active_timeouts, i64 %indvars.iv38.a
  store volatile ptr %i.bh, ptr %i.bi, align 8
  %indvars.iv.next39 = add nsw i64 %.0.in14.i, -1
  %.not.not.i = icmp samesign ugt i64 %.0.in14.i, %i.be
  %indvars.iv.next41 = add nsw i64 %indvars.iv38.a, -1
  br i1 %.not.not.i, label %.lr.ph.i26, label %insert_timeout.exit, !llvm.loop !11

insert_timeout.exit:                              ; preds = %.lr.ph.i26, %bb.j
  %i.bj = zext nneg i32 %.020.lcssa to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr @active_timeouts, i64 %i.bj
  store volatile ptr %i.b, ptr %i.bk, align 8
  %i.bl = load volatile i32, ptr @num_active_timeouts, align 4
  %i.bm = add i32 %i.bl, 1
  store volatile i32 %i.bm, ptr @num_active_timeouts, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @enable_timeout_every(i32 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  store volatile i32 0, ptr @alarm_enabled, align 4
  %i.a = tail call i64 @GetCurrentTimestamp() #8  ; 2 uses
  tail call fastcc void @enable_timeout(i32 noundef %0, i64 noundef %i.a, i64 noundef %1, i32 noundef %2)
  tail call fastcc void @schedule_alarm(i64 noundef %i.a)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @enable_timeout_at(i32 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  store volatile i32 0, ptr @alarm_enabled, align 4
  %i.a = tail call i64 @GetCurrentTimestamp() #8  ; 2 uses
  tail call fastcc void @enable_timeout(i32 noundef %0, i64 noundef %i.a, i64 noundef %1, i32 noundef 0)
  tail call fastcc void @schedule_alarm(i64 noundef %i.a)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @enable_timeouts(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  store volatile i32 0, ptr @alarm_enabled, align 4
  %i.a = tail call i64 @GetCurrentTimestamp() #8  ; 6 uses
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %indvars.iv ; 6 uses
  %i.d = load i32, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.f = load i32, ptr %i.e, align 4
  switch i32 %i.f, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load i32, ptr %i.g, align 8
  %i.i = sext i32 %i.h to i64
  %i.j = mul nsw i64 %i.i, 1000
  %i.k = add i64 %i.j, %i.a
  tail call fastcc void @enable_timeout(i32 noundef %i.d, i64 noundef %i.a, i64 noundef %i.k, i32 noundef 0)
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.m = load i64, ptr %i.l, align 8
  tail call fastcc void @enable_timeout(i32 noundef %i.d, i64 noundef %i.a, i64 noundef %i.m, i32 noundef 0)
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.p, 1000
  %i.r = add i64 %i.q, %i.a
  tail call fastcc void @enable_timeout(i32 noundef %i.d, i64 noundef %i.a, i64 noundef %i.r, i32 noundef %i.o)
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.t = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.u = load i32, ptr %i.s, align 4
  %i.v = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.2, i32 noundef %i.u) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 666, ptr noundef nonnull @__func__.enable_timeouts) #8
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !12

._crit_edge:                                      ; preds = %bb.f, %bb.a
  tail call fastcc void @schedule_alarm(i64 noundef %i.a)
  ret void
}

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @disable_timeout(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  store volatile i32 0, ptr @alarm_enabled, align 4
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [40 x i8], ptr @all_timeouts, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load volatile i8, ptr %i.c, align 4, !range !7, !noundef !8
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load volatile i32, ptr @num_active_timeouts, align 4
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.i, label %find_active_timeout.exit.thread

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %bb.b ] ; 6 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @active_timeouts, i64 %indvars.iv.i
  %i.i = load volatile ptr, ptr %i.h, align 8
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp eq i32 %i.j, %0
  %i.l = load volatile i32, ptr @num_active_timeouts, align 4 ; 2 uses
  br i1 %i.k, label %find_active_timeout.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = icmp slt i64 %indvars.iv.next.i, %i.m
  br i1 %i.n, label %.lr.ph.i, label %find_active_timeout.exit.thread, !llvm.loop !9

find_active_timeout.exit:                         ; preds = %.lr.ph.i
  %i.o = trunc nuw nsw i64 %indvars.iv.i to i32   ; 3 uses
  %.not.i = icmp sgt i32 %i.l, %i.o
  br i1 %.not.i, label %bb.d, label %find_active_timeout.exit.thread

find_active_timeout.exit.thread:                  ; preds = %bb.c, %bb.b, %find_active_timeout.exit
  %.06.i8 = phi i32 [ -1, %bb.b ], [ %i.o, %find_active_timeout.exit ], [ -1, %bb.c ]
  %i.p = tail call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #9 ; 0 uses
  %i.q = load volatile i32, ptr @num_active_timeouts, align 4
  %i.r = add i32 %i.q, -1
  %i.s = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.4, i32 noundef %.06.i8, i32 noundef %i.r) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 143, ptr noundef nonnull @__func__.remove_timeout_index) #8
  unreachable

bb.d:                                             ; preds = %find_active_timeout.exit
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @active_timeouts, i64 %indvars.iv.i
  %i.u = load volatile ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store volatile i8 0, ptr %i.v, align 4
  %.010.i = add nuw nsw i32 %i.o, 1
  %i.w = load volatile i32, ptr @num_active_timeouts, align 4
  %i.x = icmp slt i32 %.010.i, %i.w
  br i1 %i.x, label %.lr.ph.preheader.i, label %remove_timeout_index.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %2 = add nuw nsw i64 %indvars.iv.i, 1
  br label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %.lr.ph.i4, %.lr.ph.preheader.i
  %indvars.iv.i5.a = phi i64 [ %indvars.iv.i, %.lr.ph.preheader.i ], [ %indvars.iv.next14.i, %.lr.ph.i4 ] ; 2 uses
  %.0.in11.i = phi i64 [ %2, %.lr.ph.preheader.i ], [ %indvars.iv.next.i6, %.lr.ph.i4 ] ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @active_timeouts, i64 %.0.in11.i
  %i.z = load volatile ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @active_timeouts, i64 %indvars.iv.i5.a
  store volatile ptr %i.z, ptr %i.aa, align 8
  %indvars.iv.next.i6 = add nuw nsw i64 %.0.in11.i, 1 ; 2 uses
  %i.ab = load volatile i32, ptr @num_active_timeouts, align 4
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next.i6, %i.ac
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv.i5.a, 1
  br i1 %i.ad, label %.lr.ph.i4, label %remove_timeout_index.exit, !llvm.loop !4

remove_timeout_index.exit:                        ; preds = %.lr.ph.i4, %bb.d
  %i.ae = load volatile i32, ptr @num_active_timeouts, align 4
  %i.af = add i32 %i.ae, -1
  store volatile i32 %i.af, ptr @num_active_timeouts, align 4
  br label %bb.e

bb.e:                                             ; preds = %remove_timeout_index.exit, %bb.a
  br i1 %1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store volatile i8 0, ptr %i.ag, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = load volatile i32, ptr @num_active_timeouts, align 4
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = tail call i64 @GetCurrentTimestamp() #8
  tail call fastcc void @schedule_alarm(i64 noundef %i.aj)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @disable_timeouts(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  store volatile i32 0, ptr @alarm_enabled, align 4
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [40 x i8], ptr @all_timeouts, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load volatile i8, ptr %i.f, align 4, !range !7, !noundef !8
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.i = load volatile i32, ptr @num_active_timeouts, align 4
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.i, label %find_active_timeout.exit.thread

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %bb.b ] ; 6 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @active_timeouts, i64 %indvars.iv.i
  %i.l = load volatile ptr, ptr %i.k, align 8
  %i.m = load i32, ptr %i.l, align 8
  %i.n = icmp eq i32 %i.m, %i.c
  %i.o = load volatile i32, ptr @num_active_timeouts, align 4 ; 2 uses
  br i1 %i.n, label %find_active_timeout.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp slt i64 %indvars.iv.next.i, %i.p
  br i1 %i.q, label %.lr.ph.i, label %find_active_timeout.exit.thread, !llvm.loop !9

find_active_timeout.exit:                         ; preds = %.lr.ph.i
  %i.r = trunc nuw nsw i64 %indvars.iv.i to i32   ; 3 uses
  %.not.i = icmp sgt i32 %i.o, %i.r
  br i1 %.not.i, label %bb.d, label %find_active_timeout.exit.thread

find_active_timeout.exit.thread:                  ; preds = %bb.b, %find_active_timeout.exit, %bb.c
  %.06.i13 = phi i32 [ -1, %bb.c ], [ %i.r, %find_active_timeout.exit ], [ -1, %bb.b ]
  %i.s = tail call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #9 ; 0 uses
  %i.t = load volatile i32, ptr @num_active_timeouts, align 4
  %i.u = add i32 %i.t, -1
  %i.v = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.4, i32 noundef %.06.i13, i32 noundef %i.u) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 143, ptr noundef nonnull @__func__.remove_timeout_index) #8
  unreachable

bb.d:                                             ; preds = %find_active_timeout.exit
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @active_timeouts, i64 %indvars.iv.i
  %i.x = load volatile ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store volatile i8 0, ptr %i.y, align 4
  %.010.i = add nuw nsw i32 %i.r, 1
  %i.z = load volatile i32, ptr @num_active_timeouts, align 4
  %i.aa = icmp slt i32 %.010.i, %i.z
  br i1 %i.aa, label %.lr.ph.preheader.i, label %remove_timeout_index.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %2 = add nuw nsw i64 %indvars.iv.i, 1
  br label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %.lr.ph.i9, %.lr.ph.preheader.i
  %indvars.iv.i10.a = phi i64 [ %indvars.iv.i, %.lr.ph.preheader.i ], [ %indvars.iv.next14.i, %.lr.ph.i9 ] ; 2 uses
  %.0.in11.i = phi i64 [ %2, %.lr.ph.preheader.i ], [ %indvars.iv.next.i11, %.lr.ph.i9 ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @active_timeouts, i64 %.0.in11.i
  %i.ac = load volatile ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr @active_timeouts, i64 %indvars.iv.i10.a
  store volatile ptr %i.ac, ptr %i.ad, align 8
  %indvars.iv.next.i11 = add nuw nsw i64 %.0.in11.i, 1 ; 2 uses
  %i.ae = load volatile i32, ptr @num_active_timeouts, align 4
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i64 %indvars.iv.next.i11, %i.af
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv.i10.a, 1
  br i1 %i.ag, label %.lr.ph.i9, label %remove_timeout_index.exit, !llvm.loop !4

remove_timeout_index.exit:                        ; preds = %.lr.ph.i9, %bb.d
  %i.ah = load volatile i32, ptr @num_active_timeouts, align 4
  %i.ai = add i32 %i.ah, -1
  store volatile i32 %i.ai, ptr @num_active_timeouts, align 4
  br label %bb.e

bb.e:                                             ; preds = %remove_timeout_index.exit, %.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ak = load i8, ptr %i.aj, align 4, !range !7, !noundef !8
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  store volatile i8 0, ptr %i.am, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %i.an = load volatile i32, ptr @num_active_timeouts, align 4
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.ap = tail call i64 @GetCurrentTimestamp() #8
  tail call fastcc void @schedule_alarm(i64 noundef %i.ap)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, target_mem: none) uwtable
define dso_local void @disable_all_timeouts(i1 noundef zeroext %0) local_unnamed_addr #4 {
bb.a:
  store volatile i32 0, ptr @alarm_enabled, align 4
  store volatile i32 0, ptr @num_active_timeouts, align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 4), align 4
  br i1 %0, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 5), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 44), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 45), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 84), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 85), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 124), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 125), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 164), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 165), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 204), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 205), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 244), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 245), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 284), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 285), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 324), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 325), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 364), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 365), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 404), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 405), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 444), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 445), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 484), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 485), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 524), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 525), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 564), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 565), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 604), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 605), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 644), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 645), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 684), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 685), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 724), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 725), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 764), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 765), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 804), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 805), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 844), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 845), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 884), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 885), align 1
  br label %.split7.us

.split.us.preheader:                              ; preds = %bb.a
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 44), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 84), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 124), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 164), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 204), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 244), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 284), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 324), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 364), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 404), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 444), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 484), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 524), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 564), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 604), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 644), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 684), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 724), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 764), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 804), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 844), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 884), align 4
  br label %.split7.us

.split7.us:                                       ; preds = %.split.preheader, %.split.us.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, target_mem: none) uwtable
define dso_local zeroext i1 @get_timeout_active(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [40 x i8], ptr @all_timeouts, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load volatile i8, ptr %i.c, align 4, !range !7, !noundef !8
  %i.e = trunc nuw i8 %i.d to i1
  ret i1 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, target_mem: none) uwtable
define dso_local zeroext i1 @get_timeout_indicator(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #4 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [40 x i8], ptr @all_timeouts, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5 ; 2 uses
  %i.d = load volatile i8, ptr %i.c, align 1, !range !7, !noundef !8
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %brmerge.demorgan = and i1 %1, %i.e
  br i1 %brmerge.demorgan, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store volatile i8 0, ptr %i.c, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @get_timeout_start_time(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [40 x i8], ptr @all_timeouts, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @get_timeout_finish_time(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [40 x i8], ptr @all_timeouts, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8
  ret i64 %i.d
}

declare void @SetLatch(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare void @TimestampDifference(i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare noundef i32 @setitimer(i32 noundef, ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
end_hunk_0
