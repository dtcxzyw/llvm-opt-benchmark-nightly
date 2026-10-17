Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/ptimer?download=true
inline.NumInlined: 19
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.VMStateInfo = type { ptr, ptr, ptr, ptr, ptr }

@use_icount = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [18 x i8] c"s->in_transaction\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"/opt-bench/work/qemu/qemu/hw/core/ptimer.c\00", align 1
@__PRETTY_FUNCTION__.ptimer_set_count = private unnamed_addr constant [48 x i8] c"void ptimer_set_count(ptimer_state *, uint64_t)\00", align 1
@__PRETTY_FUNCTION__.ptimer_run = private unnamed_addr constant [37 x i8] c"void ptimer_run(ptimer_state *, int)\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Timer with period zero, disabling\0A\00", align 1
@__PRETTY_FUNCTION__.ptimer_stop = private unnamed_addr constant [33 x i8] c"void ptimer_stop(ptimer_state *)\00", align 1
@__PRETTY_FUNCTION__.ptimer_set_period = private unnamed_addr constant [48 x i8] c"void ptimer_set_period(ptimer_state *, int64_t)\00", align 1
@__PRETTY_FUNCTION__.ptimer_set_period_from_clock = private unnamed_addr constant [79 x i8] c"void ptimer_set_period_from_clock(ptimer_state *, const Clock *, unsigned int)\00", align 1
@__PRETTY_FUNCTION__.ptimer_set_freq = private unnamed_addr constant [47 x i8] c"void ptimer_set_freq(ptimer_state *, uint32_t)\00", align 1
@__PRETTY_FUNCTION__.ptimer_set_limit = private unnamed_addr constant [53 x i8] c"void ptimer_set_limit(ptimer_state *, uint64_t, int)\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"!s->in_transaction\00", align 1
@__PRETTY_FUNCTION__.ptimer_transaction_begin = private unnamed_addr constant [46 x i8] c"void ptimer_transaction_begin(ptimer_state *)\00", align 1
@__PRETTY_FUNCTION__.ptimer_transaction_commit = private unnamed_addr constant [47 x i8] c"void ptimer_transaction_commit(ptimer_state *)\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ptimer\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@vmstate_info_uint8 = external constant %struct.VMStateInfo, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@vmstate_info_uint64 = external constant %struct.VMStateInfo, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"delta\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"period_frac\00", align 1
@vmstate_info_uint32 = external constant %struct.VMStateInfo, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"period\00", align 1
@vmstate_info_int64 = external constant %struct.VMStateInfo, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"last_event\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"next_event\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@vmstate_info_timer = external constant %struct.VMStateInfo, align 8
@.compoundliteral = internal constant [9 x { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr }] [{ ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.5, i64 0, i64 1, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint8, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.6, i64 8, i64 8, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint64, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.7, i64 16, i64 8, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint64, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.8, i64 24, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.9, i64 32, i64 8, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_int64, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.10, i64 40, i64 8, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_int64, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.11, i64 48, i64 8, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_int64, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.12, i64 64, i64 8, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_timer, i32 3, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr null, i64 0, i64 0, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 131072, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }], align 8
@vmstate_ptimer = dso_local local_unnamed_addr constant { ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.4, i8 0, i8 0, [2 x i8] zeroinitializer, i32 1, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.compoundliteral, ptr null }, align 8
@.str.13 = private unnamed_addr constant [9 x i8] c"callback\00", align 1
@__PRETTY_FUNCTION__.ptimer_init = private unnamed_addr constant [54 x i8] c"ptimer_state *ptimer_init(ptimer_cb, void *, uint8_t)\00", align 1
@.str.14 = private unnamed_addr constant [113 x i8] c"!((policy_mask & PTIMER_POLICY_TRIGGER_ONLY_ON_DECREMENT) && (policy_mask & PTIMER_POLICY_NO_IMMEDIATE_TRIGGER))\00", align 1
@qtest_allowed = external local_unnamed_addr global i8, align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"Timer with delta zero, disabling\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @ptimer_get_count(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8
  %.not = icmp eq i8 %i.a, 0
  %.phi.trans.insert85 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pre86 = load i64, ptr %.phi.trans.insert85, align 8 ; 2 uses
  br i1 %.not, label %.critedge82, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not75 = icmp eq i64 %.pre86, 0
  br i1 %.not75, label %.critedge82, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i64 @qemu_clock_get_ns(i32 noundef 1) #7 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = sub i64 %i.b, %i.d
  %i.h = icmp sgt i64 %i.g, -1
  %i.i = load i8, ptr %0, align 8
  %i.j = icmp eq i8 %i.i, 2                       ; 2 uses
  br i1 %i.h, label %..critedge_crit_edge, label %bb.d

..critedge_crit_edge:                             ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load i8, ptr %.phi.trans.insert, align 8
  br label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i32, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i64, ptr %i.m, align 8              ; 3 uses
  br i1 %i.j, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i64, ptr %.phi.trans.insert85, align 8 ; 2 uses
  %i.p = mul i64 %i.o, %i.n
  %i.q = icmp ugt i64 %i.p, 9999
  %i.r = load i32, ptr @use_icount, align 4
  %i.s = icmp ne i32 %i.r, 0
  %or.cond = select i1 %i.q, i1 true, i1 %i.s
  %i.t = load i8, ptr @qtest_allowed, align 1, !range !9
  %i.u = trunc nuw i8 %i.t to i1
  %or.cond84 = select i1 %or.cond, i1 true, i1 %i.u
  br i1 %or.cond84, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = udiv i64 10000, %i.o
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.063 = phi i32 [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ 0, %bb.f ] ; 3 uses
  %.062 = phi i64 [ %i.n, %bb.d ], [ %i.n, %bb.e ], [ %i.v, %bb.f ] ; 3 uses
  %i.w = sub i64 %i.d, %i.b                       ; 2 uses
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.w, i1 true)
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.062, i1 false)
  %i.aa = trunc nuw nsw i64 %i.z to i32
  %i.ab = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.aa) ; 6 uses
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = shl i64 %i.w, %i.ac
  %i.ae = shl i64 %.062, %i.ac                    ; 2 uses
  %i.af = icmp samesign ugt i32 %i.ab, 31
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = zext i32 %.063 to i64
  %i.ah = add nsw i32 %i.ab, -32
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ag, %i.ai
  %i.ak = or i64 %i.aj, %i.ae
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %.not76 = icmp eq i32 %i.ab, 0
  %i.al = sub nuw nsw i32 32, %i.ab
  %i.am = lshr i32 %.063, %i.al
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = or i64 %i.ae, %i.an
  %.064 = select i1 %.not76, i64 %.062, i64 %i.ao
  %i.ap = shl i32 %.063, %i.ab
  %.not77 = icmp ne i32 %i.ap, 0
  %i.aq = zext i1 %.not77 to i64
  %spec.select = add i64 %.064, %i.aq
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.165 = phi i64 [ %i.ak, %bb.h ], [ %spec.select, %bb.i ]
  %i.ar = udiv i64 %i.ad, %.165                   ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = load i8, ptr %i.as, align 8             ; 5 uses
  %i.au = and i8 %i.at, 1
  %i.av = icmp eq i8 %i.au, 0
  %or.cond4 = select i1 %i.av, i1 true, i1 %i.j
  br i1 %or.cond4, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = load i64, ptr %.phi.trans.insert85, align 8 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = icmp eq i64 %i.aw, %i.ay
  br i1 %i.az, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.ba = icmp eq i64 %i.b, %i.f
  br i1 %i.ba, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bb = add i64 %i.aw, 1
  %i.bc = icmp eq i64 %i.ar, %i.bb
  br i1 %i.bc, label %.critedge82, label %.critedge

bb.n:                                             ; preds = %bb.l
  %i.bd = icmp eq i64 %i.ar, %i.aw
  br i1 %i.bd, label %.critedge82, label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.j, %bb.m, %bb.n, %bb.k
  %i.be = phi i8 [ %.pre, %..critedge_crit_edge ], [ %i.at, %bb.k ], [ %i.at, %bb.n ], [ %i.at, %bb.m ], [ %i.at, %bb.j ]
  %.066 = phi i64 [ 0, %..critedge_crit_edge ], [ %i.ar, %bb.k ], [ %i.ar, %bb.n ], [ %i.ar, %bb.m ], [ %i.ar, %bb.j ]
  %i.bf = and i8 %i.be, 16
  %.not78 = icmp ne i8 %i.bf, 0
  %.not79 = icmp ne i64 %i.b, %i.f
  %or.cond80.not = select i1 %.not78, i1 %.not79, i1 false
  %i.bg = zext i1 %or.cond80.not to i64
  %.167 = add i64 %.066, %i.bg
  br label %.critedge82

.critedge82:                                      ; preds = %bb.a, %bb.b, %bb.n, %bb.m, %.critedge
  %.371 = phi i64 [ 0, %bb.n ], [ %.167, %.critedge ], [ 0, %bb.m ], [ 0, %bb.b ], [ %.pre86, %bb.a ]
  ret i64 %.371
}

declare i64 @qemu_clock_get_ns(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @ptimer_set_count(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i8, ptr %i.a, align 8, !range !9, !noundef !10
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 298, ptr noundef nonnull @__PRETTY_FUNCTION__.ptimer_set_count) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.d, align 8
  %i.e = load i8, ptr %0, align 8
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 1, ptr %i.f, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @ptimer_run(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i8, ptr %i.a, align 8, !range !9, !noundef !10
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 309, ptr noundef nonnull @__PRETTY_FUNCTION__.ptimer_run) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 8
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = load i8, ptr @qtest_allowed, align 1, !range !9, !noundef !10
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr @stderr, align 8
  %i.n = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.m, i32 noundef 1, ptr noundef nonnull @.str.2) #7 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.e
  %.not8 = icmp eq i32 %1, 0
  %i.o = select i1 %.not8, i8 1, i8 2
  store i8 %i.o, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 1, ptr %i.p, align 1
  br label %bb.i

.critedge:                                        ; preds = %bb.c
  %.not8.c = icmp eq i32 %1, 0
  %i.q = select i1 %.not8.c, i8 1, i8 2
  store i8 %i.q, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge, %bb.f, %bb.g
  ret void
}

declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @ptimer_stop(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i8, ptr %i.a, align 8, !range !9, !noundef !10
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 327, ptr noundef nonnull @__PRETTY_FUNCTION__.ptimer_stop) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 8
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i64 @ptimer_get_count(ptr noundef nonnull %0)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @timer_del(ptr noundef %i.h) #7
  store i8 0, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 0, ptr %i.i, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  ret void
}

declare void @timer_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @ptimer_set_period(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i8, ptr %i.a, align 8, !range !9, !noundef !10
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 341, ptr noundef nonnull @__PRETTY_FUNCTION__.ptimer_set_period) #8
  unreachable
end_hunk_0
