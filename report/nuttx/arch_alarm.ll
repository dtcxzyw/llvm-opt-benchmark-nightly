Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/arch_alarm?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@g_oneshot_lower = internal unnamed_addr global ptr null, align 8
@g_oneshot_maxticks = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [31 x i8] c"/include/nuttx/timers/clkcnt.h\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"/include/nuttx/timers/oneshot.h\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"delta <= lower->frequency\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"cnt < freq && ts->tv_nsec < 1000000000L\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"time <= 18446744073709551615ul / freq\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @memcpy, ptr @memset], section "llvm.metadata"

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memset(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noredzone nounwind optsize uwtable
define weak dso_local void @up_mdelay(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = mul i32 %0, 1000
  tail call void @up_udelay(i32 noundef %i.a) #7
  ret void
}

; Function Attrs: noredzone nounwind optsize uwtable
define weak dso_local void @up_udelay(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = mul nuw nsw i64 %i.a, 1000
  tail call void @up_ndelay(i64 noundef %i.b) #7
  ret void
}

; Function Attrs: noredzone nounwind optsize uwtable
define weak dso_local void @up_ndelay(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 22 uses
  %i.b = load ptr, ptr @g_oneshot_lower, align 8  ; 8 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i64 %i.d(ptr noundef nonnull %i.b) #8, !inline_history !14 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load i32, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.k = load i8, ptr %i.j, align 8
  %1 = zext i64 %i.e to i128
  %2 = zext i64 %i.i to i128
  %3 = mul nuw i128 %2, %1
  %4 = lshr i128 %3, 64
  %5 = trunc nuw i128 %4 to i64                   ; 2 uses
  %i.l = sub i64 %i.e, %5
  %i.m = lshr i64 %i.l, 1
  %i.n = add i64 %i.m, %5
  %i.o = zext nneg i8 %i.k to i64
  %i.p = lshr i64 %i.n, %i.o                      ; 3 uses
  %i.q = zext i32 %i.g to i64                     ; 3 uses
  %i.r = mul i64 %i.p, %i.q
  %i.s = sub i64 %i.e, %i.r                       ; 3 uses
  %.not.i.i = icmp ugt i64 %i.s, %i.q
  br i1 %.not.i.i, label %bb.c, label %oneshot_delta_cnt2nsec.exit.i, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void @__assert(ptr noundef nonnull @.str.2, i32 noundef 335, ptr noundef nonnull @.str.3) #9
  unreachable

oneshot_delta_cnt2nsec.exit.i:                    ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.u = load i32, ptr %i.t, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.w = load i32, ptr %i.v, align 8
  %i.x = zext i32 %i.u to i64
  %i.y = mul nuw i64 %i.s, %i.x
  %i.z = and i32 %i.w, 255
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = lshr i64 %i.y, %i.aa
  %i.ac = and i64 %i.ab, 4294967295               ; 3 uses
  %i.ad = icmp samesign uge i64 %i.s, %i.q
  %i.ae = icmp samesign ugt i64 %i.ac, 999999999
  %or.cond.i = select i1 %i.ad, i1 true, i1 %i.ae, !prof !10
  br i1 %or.cond.i, label %.critedge.i16.i, label %oneshot_current.exit17.i, !prof !10

.critedge.i16.i:                                  ; preds = %oneshot_delta_cnt2nsec.exit.i
  tail call void @__assert(ptr noundef nonnull @.str.2, i32 noundef 425, ptr noundef nonnull @.str.4) #9
  unreachable

oneshot_current.exit17.i:                         ; preds = %oneshot_delta_cnt2nsec.exit.i
  %i.af = sdiv i64 %0, 1000000000                 ; 2 uses
  %.neg.i = mul nsw i64 %i.af, -1000000000
  %i.ag = add i64 %.neg.i, %0
  %i.ah = add nsw i64 %i.p, %i.af
  %i.ai = add nsw i64 %i.ag, %i.ac                ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, 999999999           ; 2 uses
  %i.ak = add nsw i64 %i.ai, -1000000000
  %i.al = zext i1 %i.aj to i64
  %.013.i = add nsw i64 %i.ah, %i.al              ; 2 uses
  %.0.i = select i1 %i.aj, i64 %i.ak, i64 %i.ai
  br label %oneshot_current.exit.i

oneshot_current.exit.i:                           ; preds = %oneshot_delta_cnt2nsec.exit19.i, %oneshot_current.exit17.i
  %.sroa.6.0.i = phi i64 [ %i.ac, %oneshot_current.exit17.i ], [ %i.bs, %oneshot_delta_cnt2nsec.exit19.i ]
  %.sroa.0.0.i = phi i64 [ %i.p, %oneshot_current.exit17.i ], [ %i.bf, %oneshot_delta_cnt2nsec.exit19.i ] ; 2 uses
  %i.am = icmp slt i64 %.sroa.0.0.i, %.013.i
  %i.an = icmp sle i64 %.sroa.0.0.i, %.013.i
  %i.ao = icmp slt i64 %.sroa.6.0.i, %.0.i
  %i.ap = select i1 %i.an, i1 %i.ao, i1 false
  %i.aq = select i1 %i.am, i1 true, i1 %i.ap
  br i1 %i.aq, label %bb.d, label %ndelay_accurate.exit

bb.d:                                             ; preds = %oneshot_current.exit.i
  %i.ar = load ptr, ptr @g_oneshot_lower, align 8 ; 7 uses
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call i64 %i.at(ptr noundef nonnull %i.ar) #8, !inline_history !14 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.ba = load i8, ptr %i.az, align 8
  %6 = zext i64 %i.au to i128
  %7 = zext i64 %i.ay to i128
  %8 = mul nuw i128 %7, %6
  %9 = lshr i128 %8, 64
  %10 = trunc nuw i128 %9 to i64                  ; 2 uses
  %i.bb = sub i64 %i.au, %10
  %i.bc = lshr i64 %i.bb, 1
  %i.bd = add i64 %i.bc, %10
  %i.be = zext nneg i8 %i.ba to i64
  %i.bf = lshr i64 %i.bd, %i.be                   ; 2 uses
  %i.bg = zext i32 %i.aw to i64                   ; 3 uses
  %i.bh = mul i64 %i.bf, %i.bg
  %i.bi = sub i64 %i.au, %i.bh                    ; 3 uses
  %.not.i18.i = icmp ugt i64 %i.bi, %i.bg
  br i1 %.not.i18.i, label %bb.e, label %oneshot_delta_cnt2nsec.exit19.i, !prof !9

bb.e:                                             ; preds = %bb.d
  tail call void @__assert(ptr noundef nonnull @.str.2, i32 noundef 335, ptr noundef nonnull @.str.3) #9
  unreachable

oneshot_delta_cnt2nsec.exit19.i:                  ; preds = %bb.d
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ar, i64 28
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = zext i32 %i.bk to i64
  %i.bo = mul nuw i64 %i.bi, %i.bn
  %i.bp = and i32 %i.bm, 255
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = lshr i64 %i.bo, %i.bq
  %i.bs = and i64 %i.br, 4294967295               ; 2 uses
  %i.bt = icmp samesign uge i64 %i.bi, %i.bg
  %i.bu = icmp samesign ugt i64 %i.bs, 999999999
  %or.cond24.i = select i1 %i.bt, i1 true, i1 %i.bu, !prof !10
  br i1 %or.cond24.i, label %.critedge.i.i, label %oneshot_current.exit.i, !prof !10, !llvm.loop !15

.critedge.i.i:                                    ; preds = %oneshot_delta_cnt2nsec.exit19.i
  tail call void @__assert(ptr noundef nonnull @.str.2, i32 noundef 425, ptr noundef nonnull @.str.4) #9
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.bv = add i64 %0, 999
  %i.bw = udiv i64 %i.bv, 1000
  %i.bx = trunc i64 %i.bw to i32                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.by = icmp ugt i32 %i.bx, 1000
  br i1 %i.by, label %.lr.ph21.i, label %.preheader17.i

.preheader17.i:                                   ; preds = %._crit_edge.i, %bb.f
  %.0.lcssa.i = phi i32 [ %i.bx, %bb.f ], [ %i.cd, %._crit_edge.i ] ; 3 uses
  %i.bz = icmp samesign ugt i32 %.0.lcssa.i, 100
  br i1 %i.bz, label %.lr.ph27.i, label %.preheader16.i

.lr.ph21.i:                                       ; preds = %bb.f, %._crit_edge.i
  %.019.i = phi i32 [ %i.cd, %._crit_edge.i ], [ %i.bx, %bb.f ]
  store volatile i32 0, ptr %i.a, align 4
  %.0..0..0..0..0..0.18.i = load volatile i32, ptr %i.a, align 4
  %i.ca = icmp slt i32 %.0..0..0..0..0..0.18.i, 999
  br i1 %i.ca, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph21.i, %.lr.ph.i
  %.0..0..0..0..0..0.1.i = load volatile i32, ptr %i.a, align 4
  %i.cb = add nsw i32 %.0..0..0..0..0..0.1.i, 1
  store volatile i32 %i.cb, ptr %i.a, align 4
  %.0..0..0..0..0..0..i = load volatile i32, ptr %i.a, align 4
  %i.cc = icmp slt i32 %.0..0..0..0..0..0..i, 999
  br i1 %i.cc, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !16

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph21.i
  %i.cd = add i32 %.019.i, -1000                  ; 3 uses
  %i.ce = icmp ugt i32 %i.cd, 1000
  br i1 %i.ce, label %.lr.ph21.i, label %.preheader17.i, !llvm.loop !17

.preheader16.i:                                   ; preds = %._crit_edge25.i, %.preheader17.i
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader17.i ], [ %i.cj, %._crit_edge25.i ] ; 4 uses
  %i.cf = icmp samesign ugt i32 %.1.lcssa.i, 10
  br i1 %i.cf, label %.lr.ph34.i, label %.preheader.i

.lr.ph27.i:                                       ; preds = %.preheader17.i, %._crit_edge25.i
  %.126.i = phi i32 [ %i.cj, %._crit_edge25.i ], [ %.0.lcssa.i, %.preheader17.i ]
  store volatile i32 0, ptr %i.a, align 4
  %.0..0..0..0..0..0.222.i = load volatile i32, ptr %i.a, align 4
  %i.cg = icmp slt i32 %.0..0..0..0..0..0.222.i, 100
  br i1 %i.cg, label %.lr.ph24.i, label %._crit_edge25.i

.lr.ph24.i:                                       ; preds = %.lr.ph27.i, %.lr.ph24.i
  %.0..0..0..0..0..0.3.i = load volatile i32, ptr %i.a, align 4
  %i.ch = add nsw i32 %.0..0..0..0..0..0.3.i, 1
  store volatile i32 %i.ch, ptr %i.a, align 4
  %.0..0..0..0..0..0.2.i = load volatile i32, ptr %i.a, align 4
  %i.ci = icmp slt i32 %.0..0..0..0..0..0.2.i, 100
  br i1 %i.ci, label %.lr.ph24.i, label %._crit_edge25.i, !llvm.loop !18

._crit_edge25.i:                                  ; preds = %.lr.ph24.i, %.lr.ph27.i
  %i.cj = add nsw i32 %.126.i, -100               ; 3 uses
  %i.ck = icmp ugt i32 %i.cj, 100
  br i1 %i.ck, label %.lr.ph27.i, label %.preheader16.i, !llvm.loop !19

.preheader.i:                                     ; preds = %.preheader16.i
  %.not40.i = icmp eq i32 %.1.lcssa.i, 0
  br i1 %.not40.i, label %udelay_coarse.exit, label %.lr.ph42.i.preheader

.lr.ph34.i:                                       ; preds = %.preheader16.i, %._crit_edge32.i
  %.233.i = phi i32 [ %i.co, %._crit_edge32.i ], [ %.1.lcssa.i, %.preheader16.i ]
  store volatile i32 0, ptr %i.a, align 4
  %.0..0..0..0..0..0.429.i = load volatile i32, ptr %i.a, align 4
  %i.cl = icmp slt i32 %.0..0..0..0..0..0.429.i, 10
  br i1 %i.cl, label %.lr.ph31.i, label %._crit_edge32.i

.lr.ph31.i:                                       ; preds = %.lr.ph34.i, %.lr.ph31.i
  %.0..0..0..0..0..0.5.i = load volatile i32, ptr %i.a, align 4
  %i.cm = add nsw i32 %.0..0..0..0..0..0.5.i, 1
  store volatile i32 %i.cm, ptr %i.a, align 4
  %.0..0..0..0..0..0.4.i = load volatile i32, ptr %i.a, align 4
  %i.cn = icmp slt i32 %.0..0..0..0..0..0.4.i, 10
  br i1 %i.cn, label %.lr.ph31.i, label %._crit_edge32.i, !llvm.loop !20

._crit_edge32.i:                                  ; preds = %.lr.ph31.i, %.lr.ph34.i
  %i.co = add nsw i32 %.233.i, -10                ; 3 uses
  %i.cp = icmp ugt i32 %i.co, 10
  br i1 %i.cp, label %.lr.ph34.i, label %.lr.ph42.i.preheader, !llvm.loop !21

.lr.ph42.i.preheader:                             ; preds = %._crit_edge32.i, %.preheader.i
  %.341.i.ph = phi i32 [ %.1.lcssa.i, %.preheader.i ], [ %i.co, %._crit_edge32.i ]
  br label %.lr.ph42.i

.lr.ph42.i:                                       ; preds = %.lr.ph42.i.preheader, %._crit_edge39.i
  %.341.i = phi i32 [ %i.ct, %._crit_edge39.i ], [ %.341.i.ph, %.lr.ph42.i.preheader ]
  store volatile i32 0, ptr %i.a, align 4
  %.0..0..0..0..0..0.636.i = load volatile i32, ptr %i.a, align 4
  %i.cq = icmp slt i32 %.0..0..0..0..0..0.636.i, 1
  br i1 %i.cq, label %.lr.ph38.i, label %._crit_edge39.i

.lr.ph38.i:                                       ; preds = %.lr.ph42.i, %.lr.ph38.i
  %.0..0..0..0..0..0.7.i = load volatile i32, ptr %i.a, align 4
  %i.cr = add nsw i32 %.0..0..0..0..0..0.7.i, 1
  store volatile i32 %i.cr, ptr %i.a, align 4
  %.0..0..0..0..0..0.6.i = load volatile i32, ptr %i.a, align 4
  %i.cs = icmp slt i32 %.0..0..0..0..0..0.6.i, 1
  br i1 %i.cs, label %.lr.ph38.i, label %._crit_edge39.i, !llvm.loop !22

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %.lr.ph42.i
  %i.ct = add nsw i32 %.341.i, -1                 ; 2 uses
  %.not.i = icmp eq i32 %i.ct, 0
  br i1 %.not.i, label %udelay_coarse.exit, label %.lr.ph42.i, !llvm.loop !23

udelay_coarse.exit:                               ; preds = %._crit_edge39.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %ndelay_accurate.exit

ndelay_accurate.exit:                             ; preds = %oneshot_current.exit.i, %udelay_coarse.exit
  ret void
}

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local void @up_alarm_set_lowerhalf(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  store ptr %0, ptr @g_oneshot_lower, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @oneshot_callback, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %0, ptr %i.b, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i64 %i.e(ptr noundef nonnull %0) #8, !inline_history !0 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8
  %i.i = zext i32 %i.h to i64                     ; 3 uses
  %i.j = udiv i64 %i.f, %i.i
  %i.k = mul i64 %i.j, 1000000
  %i.l = urem i64 %i.f, %i.i
  %i.m = mul nuw nsw i64 %i.l, 1000000
  %i.n = udiv i64 %i.m, %i.i
  %i.o = add i64 %i.n, %i.k
  %i.p = tail call i64 @llvm.smax.i64(i64 %i.o, i64 -1)
  %i.q = tail call i64 @llvm.smin.i64(i64 %i.p, i64 4294967295)
  %i.r = trunc i64 %i.q to i32
  store i32 %i.r, ptr @g_oneshot_maxticks, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: noredzone nounwind optsize uwtable
define internal void @oneshot_callback(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  tail call void @nxsched_process_timer() #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: noredzone nounwind optsize uwtable
define weak dso_local void @up_timer_getmask(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  store i64 0, ptr %0, align 8
  %i.a = load ptr, ptr @g_oneshot_lower, align 8  ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i64 %i.d(ptr noundef nonnull %i.a) #8, !inline_history !0 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load i32, ptr %i.f, align 8
  %i.h = zext i32 %i.g to i64                     ; 3 uses
  %i.i = udiv i64 %i.e, %i.h
  %i.j = mul i64 %i.i, 1000000
  %i.k = urem i64 %i.e, %i.h
  %i.l = mul nuw nsw i64 %i.k, 1000000
  %i.m = udiv i64 %i.l, %i.h
  %i.n = add i64 %i.m, %i.j                       ; 2 uses
  %i.o = icmp sgt i64 %i.n, -1
  %i.p = select i1 %i.o, i64 %i.n, i64 9223372036854775807 ; 2 uses
  %.promoted = load i64, ptr %0, align 8
  %i.q = shl i64 %.promoted, 1                    ; 2 uses
  %.not68 = icmp slt i64 %i.q, %i.p
  br i1 %.not68, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %i.r = phi i64 [ %i.t, %.lr.ph ], [ %i.q, %bb.b ]
  %i.s = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.t = shl i64 %i.s, 1                          ; 2 uses
  %.not6 = icmp slt i64 %i.t, %i.p
  br i1 %.not6, label %.lr.ph, label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %.lr.ph
  store i64 %i.s, ptr %0, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %..loopexit_crit_edge, %bb.a
  ret void
}

; Function Attrs: noredzone nounwind optsize uwtable
define weak dso_local i32 @up_timer_gettick(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @g_oneshot_lower, align 8  ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i64 %i.c(ptr noundef nonnull %i.a) #8, !inline_history !1 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = load i32, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.j = load i8, ptr %i.i, align 8
  %1 = zext i64 %i.d to i128
  %2 = zext i64 %i.h to i128
  %3 = mul nuw i128 %2, %1
  %4 = lshr i128 %3, 64
  %5 = trunc nuw i128 %4 to i64                   ; 2 uses
  %i.k = sub i64 %i.d, %5
  %i.l = lshr i64 %i.k, 1
  %i.m = add i64 %i.l, %5
  %i.n = zext nneg i8 %i.j to i64
  %i.o = lshr i64 %i.m, %i.n                      ; 2 uses
  %i.p = zext i32 %i.f to i64                     ; 2 uses
  %i.q = mul i64 %i.o, %i.p
  %i.r = sub i64 %i.d, %i.q                       ; 2 uses
  %.not.i = icmp ugt i64 %i.r, %i.p
  br i1 %.not.i, label %bb.c, label %oneshot_delta_cnt2tick.exit, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void @__assert(ptr noundef nonnull @.str.2, i32 noundef 356, ptr noundef nonnull @.str.3) #9
  unreachable

oneshot_delta_cnt2tick.exit:                      ; preds = %bb.b
  %i.s = mul i64 %i.o, 1000000
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.u = load i32, ptr %i.t, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.w = load i32, ptr %i.v, align 8
  %i.x = zext i32 %i.u to i64
  %i.y = mul nuw i64 %i.r, %i.x
  %i.z = and i32 %i.w, 255
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = lshr i64 %i.y, %i.aa
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = udiv i32 %i.ac, 1000
  %.zext = zext nneg i32 %i.ad to i64
  %i.ae = add i64 %i.s, %.zext
  store i64 %i.ae, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %oneshot_delta_cnt2tick.exit, %bb.a
  %.0 = phi i32 [ 0, %oneshot_delta_cnt2tick.exit ], [ -11, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noredzone nounwind optsize uwtable
define weak dso_local i32 @up_timer_gettime(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @g_oneshot_lower, align 8  ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %oneshot_current.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i64 %i.c(ptr noundef nonnull %i.a) #8, !inline_history !25 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = load i32, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.j = load i8, ptr %i.i, align 8
  %1 = zext i64 %i.d to i128
  %2 = zext i64 %i.h to i128
  %3 = mul nuw i128 %2, %1
  %4 = lshr i128 %3, 64
  %5 = trunc nuw i128 %4 to i64                   ; 2 uses
  %i.k = sub i64 %i.d, %5
  %i.l = lshr i64 %i.k, 1
  %i.m = add i64 %i.l, %5
  %i.n = zext nneg i8 %i.j to i64
  %i.o = lshr i64 %i.m, %i.n                      ; 2 uses
  %i.p = zext i32 %i.f to i64                     ; 3 uses
  %i.q = mul i64 %i.o, %i.p
  %i.r = sub i64 %i.d, %i.q                       ; 3 uses
  %.not.i = icmp ugt i64 %i.r, %i.p
  br i1 %.not.i, label %bb.c, label %oneshot_delta_cnt2nsec.exit, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void @__assert(ptr noundef nonnull @.str.2, i32 noundef 335, ptr noundef nonnull @.str.3) #9
  unreachable

oneshot_delta_cnt2nsec.exit:                      ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.t = load i32, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.v = load i32, ptr %i.u, align 8
  %i.w = zext i32 %i.t to i64
  %i.x = mul nuw i64 %i.r, %i.w
  %i.y = and i32 %i.v, 255
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = lshr i64 %i.x, %i.z
  %i.ab = and i64 %i.aa, 4294967295               ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ab, ptr %i.ac, align 8
  store i64 %i.o, ptr %0, align 8
  %i.ad = icmp samesign uge i64 %i.r, %i.p
  %i.ae = icmp samesign ugt i64 %i.ab, 999999999
  %or.cond = select i1 %i.ad, i1 true, i1 %i.ae, !prof !10
  br i1 %or.cond, label %.critedge.i, label %oneshot_current.exit, !prof !10

.critedge.i:                                      ; preds = %oneshot_delta_cnt2nsec.exit
  tail call void @__assert(ptr noundef nonnull @.str.2, i32 noundef 425, ptr noundef nonnull @.str.4) #9
  unreachable

oneshot_current.exit:                             ; preds = %oneshot_delta_cnt2nsec.exit, %bb.a
  %.0 = phi i32 [ -11, %bb.a ], [ 0, %oneshot_delta_cnt2nsec.exit ]
  ret i32 %.0
}

; Function Attrs: noredzone nounwind optsize uwtable
define weak dso_local i32 @up_alarm_cancel(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @g_oneshot_lower, align 8  ; 10 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %oneshot_cancel.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull %i.a) #8, !inline_history !26
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i64 %i.f(ptr noundef nonnull %i.a) #8, !inline_history !26 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = load i32, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.m = load i8, ptr %i.l, align 8
  %1 = zext i64 %i.g to i128
  %2 = zext i64 %i.k to i128
  %3 = mul nuw i128 %2, %1
  %4 = lshr i128 %3, 64
  %5 = trunc nuw i128 %4 to i64                   ; 2 uses
  %i.n = sub i64 %i.g, %5
  %i.o = lshr i64 %i.n, 1
  %i.p = add i64 %i.o, %5
  %i.q = zext nneg i8 %i.m to i64
  %i.r = lshr i64 %i.p, %i.q                      ; 2 uses
  %i.s = zext i32 %i.i to i64                     ; 3 uses
  %i.t = mul i64 %i.r, %i.s
  %i.u = sub i64 %i.g, %i.t                       ; 3 uses
  %.not.i = icmp ugt i64 %i.u, %i.s
  br i1 %.not.i, label %bb.c, label %oneshot_delta_cnt2nsec.exit, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void @__assert(ptr noundef nonnull @.str.2, i32 noundef 335, ptr noundef nonnull @.str.3) #9
  unreachable

oneshot_delta_cnt2nsec.exit:                      ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.w = load i32, ptr %i.v, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.y = load i32, ptr %i.x, align 8
  %i.z = zext i32 %i.w to i64
  %i.aa = mul nuw i64 %i.u, %i.z
  %i.ab = and i32 %i.y, 255
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = lshr i64 %i.aa, %i.ac
  %i.ae = and i64 %i.ad, 4294967295               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ae, ptr %i.af, align 8
  store i64 %i.r, ptr %0, align 8
  %i.ag = icmp samesign uge i64 %i.u, %i.s
  %i.ah = icmp samesign ugt i64 %i.ae, 999999999
  %or.cond = select i1 %i.ag, i1 true, i1 %i.ah, !prof !10
  br i1 %or.cond, label %.critedge.i.i, label %oneshot_cancel.exit, !prof !10

.critedge.i.i:                                    ; preds = %oneshot_delta_cnt2nsec.exit
  tail call void @__assert(ptr noundef nonnull @.str.2, i32 noundef 425, ptr noundef nonnull @.str.4) #9
  unreachable

oneshot_cancel.exit:                              ; preds = %oneshot_delta_cnt2nsec.exit, %bb.a
  %.0 = phi i32 [ -11, %bb.a ], [ 0, %oneshot_delta_cnt2nsec.exit ]
  ret i32 %.0
}

; Function Attrs: noredzone nounwind optsize uwtable
define weak dso_local i32 @up_alarm_tick_cancel(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @g_oneshot_lower, align 8  ; 10 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull %i.a) #8, !inline_history !27
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i64 %i.f(ptr noundef nonnull %i.a) #8, !inline_history !27 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = load i32, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.m = load i8, ptr %i.l, align 8
  %1 = zext i64 %i.g to i128
  %2 = zext i64 %i.k to i128
  %3 = mul nuw i128 %2, %1
  %4 = lshr i128 %3, 64
  %5 = trunc nuw i128 %4 to i64                   ; 2 uses
  %i.n = sub i64 %i.g, %5
  %i.o = lshr i64 %i.n, 1
  %i.p = add i64 %i.o, %5
  %i.q = zext nneg i8 %i.m to i64
  %i.r = lshr i64 %i.p, %i.q                      ; 2 uses
  %i.s = zext i32 %i.i to i64                     ; 2 uses
  %i.t = mul i64 %i.r, %i.s
  %i.u = sub i64 %i.g, %i.t                       ; 2 uses
  %.not.i = icmp ugt i64 %i.u, %i.s
  br i1 %.not.i, label %bb.c, label %oneshot_delta_cnt2tick.exit, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void @__assert(ptr noundef nonnull @.str.2, i32 noundef 356, ptr noundef nonnull @.str.3) #9
  unreachable

oneshot_delta_cnt2tick.exit:                      ; preds = %bb.b
  %i.v = mul i64 %i.r, 1000000
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.x = load i32, ptr %i.w, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = zext i32 %i.x to i64
  %i.ab = mul nuw i64 %i.u, %i.aa
  %i.ac = and i32 %i.z, 255
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = lshr i64 %i.ab, %i.ad
  %i.af = trunc i64 %i.ae to i32
  %i.ag = udiv i32 %i.af, 1000
  %.zext = zext nneg i32 %i.ag to i64
  %i.ah = add i64 %i.v, %.zext
  store i64 %i.ah, ptr %0, align 8
  %i.ai = load ptr, ptr @g_oneshot_lower, align 8 ; 7 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call i64 %i.ak(ptr noundef nonnull %i.ai) #8, !inline_history !1 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ar = load i8, ptr %i.aq, align 8
  %6 = zext i64 %i.al to i128
  %7 = zext i64 %i.ap to i128
  %8 = mul nuw i128 %7, %6
  %9 = lshr i128 %8, 64
  %10 = trunc nuw i128 %9 to i64                  ; 2 uses
  %i.as = sub i64 %i.al, %10
  %i.at = lshr i64 %i.as, 1
  %i.au = add i64 %i.at, %10
  %i.av = zext nneg i8 %i.ar to i64
  %i.aw = lshr i64 %i.au, %i.av                   ; 2 uses
  %i.ax = zext i32 %i.an to i64                   ; 2 uses
  %i.ay = mul i64 %i.aw, %i.ax
  %i.az = sub i64 %i.al, %i.ay                    ; 2 uses
  %.not.i3 = icmp ugt i64 %i.az, %i.ax
  br i1 %.not.i3, label %bb.d, label %oneshot_delta_cnt2tick.exit4, !prof !9

bb.d:                                             ; preds = %oneshot_delta_cnt2tick.exit
  tail call void @__assert(ptr noundef nonnull @.str.2, i32 noundef 356, ptr noundef nonnull @.str.3) #9
  unreachable

oneshot_delta_cnt2tick.exit4:                     ; preds = %oneshot_delta_cnt2tick.exit
  %i.ba = mul i64 %i.aw, 1000000
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = zext i32 %i.bc to i64
  %i.bg = mul nuw i64 %i.az, %i.bf
  %i.bh = and i32 %i.be, 255
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = lshr i64 %i.bg, %i.bi
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = udiv i32 %i.bk, 1000
  %.zext6 = zext nneg i32 %i.bl to i64
  %i.bm = add i64 %i.ba, %.zext6
  store i64 %i.bm, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %oneshot_delta_cnt2tick.exit4, %bb.a
  %.0 = phi i32 [ 0, %oneshot_delta_cnt2tick.exit4 ], [ -11, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noredzone nounwind optsize uwtable
define weak dso_local i32 @up_alarm_start(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load ptr, ptr @g_oneshot_lower, align 8  ; 8 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %oneshot_start_absolute.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 8
  %i.e = zext i32 %i.d to i64                     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %mul.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.e, i64 %i.g)
  %mul.ov.i = extractvalue { i64, i1 } %mul.i, 1
  br i1 %mul.ov.i, label %bb.c, label %clkcnt_delta_time2cnt.exit, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void @__assert(ptr noundef nonnull @.str, i32 noundef 179, ptr noundef nonnull @.str.5) #9
  unreachable

clkcnt_delta_time2cnt.exit:                       ; preds = %bb.b
  %i.h = load i64, ptr %0, align 8
  %i.i = mul nsw i64 %i.h, %i.e
  %i.j = mul i64 %i.g, %i.e
  %i.k = udiv i64 %i.j, 1000000000
  %i.l = add i64 %i.i, %i.k                       ; 2 uses
  %i.m = load ptr, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %clkcnt_delta_time2cnt.exit
  tail call void %i.o(ptr noundef nonnull %i.b, i64 noundef %i.l) #8, !inline_history !28
  br label %oneshot_start_absolute.exit

bb.e:                                             ; preds = %clkcnt_delta_time2cnt.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void asm sideeffect "\09pushfq\0A\09popq $0\0A", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.a) #10, !srcloc !11
  %i.p = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !12
  %i.q = load ptr, ptr %i.b, align 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call i64 %i.r(ptr noundef nonnull %i.b) #8, !inline_history !28
  %i.t = sub i64 %i.l, %i.s
  %i.u = load ptr, ptr %i.b, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull %i.b, i64 noundef %i.t) #8, !inline_history !28
  %i.x = and i64 %i.p, 512
  %.not2 = icmp eq i64 %i.x, 0
  br i1 %.not2, label %oneshot_start_absolute.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !13
  br label %oneshot_start_absolute.exit

oneshot_start_absolute.exit:                      ; preds = %bb.d, %bb.e, %bb.f, %bb.a
  %.0 = phi i32 [ -11, %bb.a ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: noredzone nounwind optsize uwtable
define weak dso_local i32 @up_alarm_tick_start(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load ptr, ptr @g_oneshot_lower, align 8  ; 8 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %oneshot_tick_absolute.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 8
  %i.e = udiv i64 %0, 1000000                     ; 2 uses
  %.neg.i = mul i64 %i.e, -1000000
  %i.f = add i64 %.neg.i, %0                      ; 2 uses
  %i.g = zext i32 %i.d to i64                     ; 3 uses
  %mul.i.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.g, i64 %i.f)
  %mul.ov.i.i = extractvalue { i64, i1 } %mul.i.i, 1
  br i1 %mul.ov.i.i, label %bb.c, label %clkcnt_delta_time2cnt.exit.i, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void @__assert(ptr noundef nonnull @.str, i32 noundef 179, ptr noundef nonnull @.str.5) #9
  unreachable

clkcnt_delta_time2cnt.exit.i:                     ; preds = %bb.b
  %i.h = mul i64 %i.e, %i.g
  %i.i = mul i64 %i.f, %i.g
  %i.j = udiv i64 %i.i, 1000000
  %i.k = add i64 %i.j, %i.h                       ; 2 uses
  %i.l = load ptr, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %clkcnt_delta_time2cnt.exit.i
  tail call void %i.n(ptr noundef nonnull %i.b, i64 noundef %i.k) #8, !inline_history !29
  br label %oneshot_tick_absolute.exit

bb.e:                                             ; preds = %clkcnt_delta_time2cnt.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void asm sideeffect "\09pushfq\0A\09popq $0\0A", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.a) #10, !srcloc !11
  %i.o = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !12
  %i.p = load ptr, ptr %i.b, align 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = call i64 %i.q(ptr noundef nonnull %i.b) #8, !inline_history !29
  %i.s = sub i64 %i.k, %i.r
  %i.t = load ptr, ptr %i.b, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull %i.b, i64 noundef %i.s) #8, !inline_history !29
  %i.w = and i64 %i.o, 512
  %.not3 = icmp eq i64 %i.w, 0
  br i1 %.not3, label %oneshot_tick_absolute.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !13
  br label %oneshot_tick_absolute.exit

oneshot_tick_absolute.exit:                       ; preds = %bb.d, %bb.e, %bb.f, %bb.a
  %.0 = phi i32 [ -11, %bb.a ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: noredzone optsize
declare dso_local void @nxsched_process_timer() local_unnamed_addr #4

; Function Attrs: noredzone noreturn optsize
declare dso_local void @__assert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

attributes #0 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memset" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noredzone nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noredzone noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { noredzone optsize }
attributes #8 = { noredzone nounwind optsize }
attributes #9 = { noredzone noreturn nounwind optsize }
attributes #10 = { nounwind }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"Code Model", i32 4}
!5 = !{i32 1, !"Large Data Threshold", i64 0}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 4001, i32 4000000}
!11 = !{i64 606823, i64 606841}
!12 = !{i64 607473}
!13 = !{i64 607607}
!14 = distinct !{null}
!15 = distinct !{!15, !24}
!16 = distinct !{!16, !24}
!17 = distinct !{!17, !24}
!18 = distinct !{!18, !24}
!19 = distinct !{!19, !24}
!20 = distinct !{!20, !24}
!21 = distinct !{!21, !24}
!22 = distinct !{!22, !24}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = distinct !{null}
!26 = distinct !{null}
!27 = distinct !{null}
!28 = distinct !{null}
!29 = distinct !{null}
end_hunk_0
