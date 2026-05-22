inline.NumInlined: 31
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.winsize = type { i16, i16, i16, i16 }

@.str = private unnamed_addr constant [8 x i8] c"\1B[H\1B[2J\00", align 1
@ws = internal global %struct.winsize zeroinitializer, align 2
@.str.3 = private unnamed_addr constant [79 x i8] c"Also check http://www.memtest86.com/ and http://pyropus.ca/software/memtester/\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"\1B[H\1B[2K\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%s [%d]\0A\00", align 1
@progress_printed = dso_local local_unnamed_addr global i64 0, align 8
@progress_full = dso_local local_unnamed_addr global i64 0, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [47 x i8] c"\0A*** MEMORY ADDRESSING ERROR: %p contains %lu\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"(bytes & 4095) == 0\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"memtest.c\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"\0A*** MEMORY ERROR DETECTED: %p != %p (%lu vs %lu)\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Compare\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"Addressing test\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"Random fill\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"Solid fill\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"Checkerboard fill\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [37 x i8] c"Unable to allocate %zu megabytes: %s\00", align 1
@str = private unnamed_addr constant [63 x i8] c"Please keep the test running several minutes per GB of memory.\00", align 1
@str.1 = private unnamed_addr constant [31 x i8] c"\0AYour memory passed this test.\00", align 1
@str.2 = private unnamed_addr constant [62 x i8] c"Please if you are still in doubt use the following two tools:\00", align 1
@str.3 = private unnamed_addr constant [40 x i8] c"1) memtest86: http://www.memtest86.com/\00", align 1
@str.4 = private unnamed_addr constant [52 x i8] c"2) memtester: http://pyropus.ca/software/memtester/\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @memtest_progress_start(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) ; 0 uses
  %i.b = load i16, ptr getelementptr inbounds nuw (i8, ptr @ws, i64 2), align 2, !tbaa !13
  %i.c = zext i16 %i.b to i32
  %i.d = load i16, ptr @ws, align 2, !tbaa !16
  %i.e = zext i16 %i.d to i32
  %i.f = add nsw i32 %i.e, -2
  %i.g = mul nsw i32 %i.f, %i.c
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.03 = phi i32 [ %i.i, %.lr.ph ], [ 0, %bb.a ]
  %putchar = tail call i32 @putchar(i32 46)       ; 0 uses
  %i.i = add nuw nsw i32 %.03, 1                  ; 2 uses
  %i.j = load i16, ptr getelementptr inbounds nuw (i8, ptr @ws, i64 2), align 2, !tbaa !13
  %i.k = zext i16 %i.j to i32
  %i.l = load i16, ptr @ws, align 2, !tbaa !16
  %i.m = zext i16 %i.l to i32
  %i.n = add nsw i32 %i.m, -2
  %i.o = mul nsw i32 %i.n, %i.k
  %i.p = icmp slt i32 %i.i, %i.o
  br i1 %i.p, label %.lr.ph, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3) ; 0 uses
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4) ; 0 uses
  %i.s = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef %0, i32 noundef %1) ; 0 uses
  store i64 0, ptr @progress_printed, align 8, !tbaa !19
  %i.t = load i16, ptr getelementptr inbounds nuw (i8, ptr @ws, i64 2), align 2, !tbaa !13
  %i.u = zext i16 %i.t to i64
  %i.v = load i16, ptr @ws, align 2, !tbaa !16
  %i.w = zext i16 %i.v to i64
  %i.x = add nsw i64 %i.w, -3
  %i.y = mul nsw i64 %i.x, %i.u
  store i64 %i.y, ptr @progress_full, align 8, !tbaa !19
  %i.z = load ptr, ptr @stdout, align 8, !tbaa !21
  %i.aa = tail call i32 @fflush(ptr noundef %i.z) ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @memtest_progress_end() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @memtest_progress_step(i64 noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @progress_full, align 8, !tbaa !19
  %i.b = mul i64 %i.a, %0
  %i.c = udiv i64 %i.b, %1                        ; 3 uses
  %i.d = load i64, ptr @progress_printed, align 8, !tbaa !19
  %.not = icmp eq i64 %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = sext i8 %2 to i32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.07 = phi i64 [ 0, %.lr.ph ], [ %i.f, %bb.b ]
  %putchar = tail call i32 @putchar(i32 %i.e)     ; 0 uses
  %i.f = add nuw i64 %.07, 1                      ; 2 uses
  %i.g = load i64, ptr @progress_printed, align 8, !tbaa !19
  %i.h = sub i64 %i.c, %i.g
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.b, %bb.a
  store i64 %i.c, ptr @progress_printed, align 8, !tbaa !19
  %i.j = load ptr, ptr @stdout, align 8, !tbaa !21
  %i.k = tail call i32 @fflush(ptr noundef %i.j)  ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 0, 2) i32 @memtest_addressing(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %1, 3                           ; 10 uses
  %.not49 = icmp eq i64 %i.a, 0
  br i1 %.not49, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not50 = icmp eq i32 %2, 0                     ; 2 uses
  %i.b = shl nuw nsw i64 %i.a, 1
  br i1 %.not50, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %min.iters.check = icmp ult i64 %1, 32
  br i1 %min.iters.check, label %.lr.ph.split.us.preheader92, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us.preheader
  %n.vec = and i64 %i.a, 2305843009213693948      ; 4 uses
  %i.c = shl nuw i64 %n.vec, 3
  %i.d = getelementptr i8, ptr %0, i64 %i.c
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %0, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <2 x i64> <i64 0, i64 8> ; 3 uses
  %i.e = extractelement <2 x ptr> %vector.gep, i64 0 ; 2 uses
  %step.add89 = getelementptr i8, <2 x ptr> %vector.gep, i64 16
  %i.f = ptrtoint <2 x ptr> %vector.gep to <2 x i64>
  %i.g = ptrtoint <2 x ptr> %step.add89 to <2 x i64>
  %i.h = getelementptr i8, ptr %i.e, i64 16
  store <2 x i64> %i.f, ptr %i.e, align 8, !tbaa !19
  store <2 x i64> %i.g, ptr %i.h, align 8, !tbaa !19
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 32
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %.lr.ph47.split.us.preheader, label %.lr.ph.split.us.preheader92

.lr.ph.split.us.preheader92:                      ; preds = %.lr.ph.split.us.preheader, %middle.block
  %.044.us.ph = phi ptr [ %0, %.lr.ph.split.us.preheader ], [ %i.d, %middle.block ]
  %.03043.us.ph = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split.us

.lr.ph47.split.us.preheader:                      ; preds = %.lr.ph.split.us, %middle.block
  br label %.lr.ph47.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader92, %.lr.ph.split.us
  %.044.us = phi ptr [ %i.k, %.lr.ph.split.us ], [ %.044.us.ph, %.lr.ph.split.us.preheader92 ] ; 3 uses
  %.03043.us = phi i64 [ %i.l, %.lr.ph.split.us ], [ %.03043.us.ph, %.lr.ph.split.us.preheader92 ]
  %i.j = ptrtoint ptr %.044.us to i64
  store i64 %i.j, ptr %.044.us, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %.044.us, i64 8
  %i.l = add nuw nsw i64 %.03043.us, 1            ; 2 uses
  %exitcond61.not = icmp eq i64 %i.l, %i.a
  br i1 %exitcond61.not, label %.lr.ph47.split.us.preheader, label %.lr.ph.split.us, !llvm.loop !28

.lr.ph47:                                         ; preds = %bb.d
  %i.m = shl nuw nsw i64 %i.a, 1
  br label %.lr.ph47.split

.lr.ph47.split.us:                                ; preds = %.lr.ph47.split.us.preheader, %bb.b
  %.146.us = phi ptr [ %i.p, %bb.b ], [ %0, %.lr.ph47.split.us.preheader ] ; 4 uses
  %.13145.us = phi i64 [ %i.q, %bb.b ], [ 0, %.lr.ph47.split.us.preheader ]
  %i.n = load i64, ptr %.146.us, align 8, !tbaa !19 ; 2 uses
  %i.o = ptrtoint ptr %.146.us to i64
  %.not.us = icmp eq i64 %i.n, %i.o
  br i1 %.not.us, label %bb.b, label %.split.us

bb.b:                                             ; preds = %.lr.ph47.split.us
  %i.p = getelementptr inbounds nuw i8, ptr %.146.us, i64 8
  %i.q = add nuw nsw i64 %.13145.us, 1            ; 2 uses
  %exitcond63.not = icmp eq i64 %i.q, %i.a
  br i1 %exitcond63.not, label %.loopexit, label %.lr.ph47.split.us, !llvm.loop !29

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.d
  %.044 = phi ptr [ %i.s, %bb.d ], [ %0, %.lr.ph ] ; 3 uses
  %.03043 = phi i64 [ %i.af, %bb.d ], [ 0, %.lr.ph ] ; 3 uses
  %i.r = ptrtoint ptr %.044 to i64
  store i64 %i.r, ptr %.044, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %.044, i64 8
  %i.t = and i64 %.03043, 65535
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.split
  %i.v = load i64, ptr @progress_full, align 8, !tbaa !19
  %i.w = mul i64 %i.v, %.03043
  %i.x = udiv i64 %i.w, %i.b                      ; 3 uses
  %i.y = load i64, ptr @progress_printed, align 8, !tbaa !19
  %.not.i = icmp eq i64 %i.x, %i.y
  br i1 %.not.i, label %memtest_progress_step.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.07.i = phi i64 [ %i.z, %.lr.ph.i ], [ 0, %bb.c ]
  %putchar.i = tail call i32 @putchar(i32 65)     ; 0 uses
  %i.z = add nuw i64 %.07.i, 1                    ; 2 uses
  %i.aa = load i64, ptr @progress_printed, align 8, !tbaa !19
  %i.ab = sub i64 %i.x, %i.aa
  %i.ac = icmp ult i64 %i.z, %i.ab
  br i1 %i.ac, label %.lr.ph.i, label %memtest_progress_step.exit, !llvm.loop !24

memtest_progress_step.exit:                       ; preds = %.lr.ph.i, %bb.c
  store i64 %i.x, ptr @progress_printed, align 8, !tbaa !19
  %i.ad = load ptr, ptr @stdout, align 8, !tbaa !21
  %i.ae = tail call i32 @fflush(ptr noundef %i.ad) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.split, %memtest_progress_step.exit
  %i.af = add nuw nsw i64 %.03043, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.a
  br i1 %exitcond.not, label %.lr.ph47, label %.lr.ph.split, !llvm.loop !30

.lr.ph47.split:                                   ; preds = %.lr.ph47, %bb.h
  %.146 = phi ptr [ %i.aj, %bb.h ], [ %0, %.lr.ph47 ] ; 4 uses
  %.13145 = phi i64 [ %i.ax, %bb.h ], [ 0, %.lr.ph47 ] ; 3 uses
  %i.ag = load i64, ptr %.146, align 8, !tbaa !19 ; 2 uses
  %i.ah = ptrtoint ptr %.146 to i64
  %.not = icmp eq i64 %i.ag, %i.ah
  br i1 %.not, label %bb.f, label %.split.us

.split.us:                                        ; preds = %.lr.ph47.split, %.lr.ph47.split.us
  %.us-phi = phi i64 [ %i.n, %.lr.ph47.split.us ], [ %i.ag, %.lr.ph47.split ]
  %.us-phi48 = phi ptr [ %.146.us, %.lr.ph47.split.us ], [ %.146, %.lr.ph47.split ]
  br i1 %.not50, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.split.us
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull %.us-phi48, i64 noundef %.us-phi) ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

bb.f:                                             ; preds = %.lr.ph47.split
  %i.aj = getelementptr inbounds nuw i8, ptr %.146, i64 8
  %i.ak = and i64 %.13145, 65535
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.am = add nuw nsw i64 %.13145, %i.a
  %i.an = load i64, ptr @progress_full, align 8, !tbaa !19
  %i.ao = mul i64 %i.an, %i.am
  %i.ap = udiv i64 %i.ao, %i.m                    ; 3 uses
  %i.aq = load i64, ptr @progress_printed, align 8, !tbaa !19
  %.not.i37 = icmp eq i64 %i.ap, %i.aq
  br i1 %.not.i37, label %memtest_progress_step.exit41, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %bb.g, %.lr.ph.i38
  %.07.i39 = phi i64 [ %i.ar, %.lr.ph.i38 ], [ 0, %bb.g ]
  %putchar.i40 = tail call i32 @putchar(i32 65)   ; 0 uses
  %i.ar = add nuw i64 %.07.i39, 1                 ; 2 uses
  %i.as = load i64, ptr @progress_printed, align 8, !tbaa !19
  %i.at = sub i64 %i.ap, %i.as
  %i.au = icmp ult i64 %i.ar, %i.at
  br i1 %i.au, label %.lr.ph.i38, label %memtest_progress_step.exit41, !llvm.loop !24

memtest_progress_step.exit41:                     ; preds = %.lr.ph.i38, %bb.g
  store i64 %i.ap, ptr @progress_printed, align 8, !tbaa !19
  %i.av = load ptr, ptr @stdout, align 8, !tbaa !21
  %i.aw = tail call i32 @fflush(ptr noundef %i.av) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %memtest_progress_step.exit41
  %i.ax = add nuw nsw i64 %.13145, 1              ; 2 uses
  %exitcond62.not = icmp eq i64 %i.ax, %i.a
  br i1 %exitcond62.not, label %.loopexit, label %.lr.ph47.split, !llvm.loop !29

.loopexit:                                        ; preds = %bb.h, %bb.b, %bb.a, %.split.us
  %.032 = phi i32 [ 1, %.split.us ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.h ]
  ret i32 %.032
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @memtest_fill_random(ptr noundef writeonly captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = lshr i64 %1, 4                           ; 3 uses
  %i.b = lshr i64 %1, 13                          ; 6 uses
  %i.c = and i64 %1, 4095
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.preheader, label %bb.e, !prof !31

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.split.us, label %.preheader.split.us

.preheader.split.us:                              ; preds = %.preheader
  %.not52 = icmp eq i32 %2, 0
  br i1 %.not52, label %.lr.ph.us.preheader, label %.lr.ph.us.us

.lr.ph.us.preheader:                              ; preds = %.preheader.split.us
  %i.e = icmp eq i64 %i.b, 1
  %unroll_iter = and i64 %i.b, 2251799813685246
  %i.f = and i64 %1, 8192
  %lcmp.mod.not = icmp eq i64 %i.f, 0
  %lcmp.mod70 = trunc i64 %i.b to i1
  br label %.lr.ph.us

.lr.ph.us.us:                                     ; preds = %.preheader.split.us, %._crit_edge.split.us49.us
  %.044.us.us = phi i64 [ %i.o, %._crit_edge.split.us49.us ], [ -3372857614747716250, %.preheader.split.us ]
  %.03743.us.us = phi i64 [ %i.ag, %._crit_edge.split.us49.us ], [ 0, %.preheader.split.us ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.03743.us.us ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.a
  %i.i = mul nuw nsw i64 %.03743.us.us, %i.b
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us.us, %bb.d
  %.142.us45.us = phi i64 [ %.044.us.us, %.lr.ph.us.us ], [ %i.o, %bb.d ] ; 2 uses
  %.03441.us46.us = phi ptr [ %i.h, %.lr.ph.us.us ], [ %i.r, %bb.d ] ; 2 uses
  %.03540.us47.us = phi ptr [ %i.g, %.lr.ph.us.us ], [ %i.q, %bb.d ] ; 2 uses
  %.03639.us48.us = phi i64 [ 0, %.lr.ph.us.us ], [ %i.af, %bb.d ] ; 3 uses
  %i.j = lshr i64 %.142.us45.us, 12
  %i.k = xor i64 %i.j, %.142.us45.us              ; 2 uses
  %i.l = shl i64 %i.k, 25
  %i.m = xor i64 %i.l, %i.k                       ; 2 uses
  %i.n = lshr i64 %i.m, 27
  %i.o = xor i64 %i.n, %i.m                       ; 3 uses
  %i.p = mul i64 %i.o, 2685821657736338717        ; 2 uses
  store i64 %i.p, ptr %.03441.us46.us, align 8, !tbaa !19
  store i64 %i.p, ptr %.03540.us47.us, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %.03540.us47.us, i64 4096
  %i.r = getelementptr inbounds nuw i8, ptr %.03441.us46.us, i64 4096
  %i.s = and i64 %.03639.us48.us, 65535
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = add nuw nsw i64 %.03639.us48.us, %i.i
  %i.v = load i64, ptr @progress_full, align 8, !tbaa !19
  %i.w = mul i64 %i.v, %i.u
  %i.x = udiv i64 %i.w, %i.a                      ; 3 uses
  %i.y = load i64, ptr @progress_printed, align 8, !tbaa !19
  %.not.i.us.us = icmp eq i64 %i.x, %i.y
  br i1 %.not.i.us.us, label %memtest_progress_step.exit.us.us, label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %bb.c, %.lr.ph.i.us.us
  %.07.i.us.us = phi i64 [ %i.z, %.lr.ph.i.us.us ], [ 0, %bb.c ]
  %putchar.i.us.us = tail call i32 @putchar(i32 82) ; 0 uses
  %i.z = add nuw i64 %.07.i.us.us, 1              ; 2 uses
  %i.aa = load i64, ptr @progress_printed, align 8, !tbaa !19
  %i.ab = sub i64 %i.x, %i.aa
  %i.ac = icmp ult i64 %i.z, %i.ab
  br i1 %i.ac, label %.lr.ph.i.us.us, label %memtest_progress_step.exit.us.us, !llvm.loop !24

memtest_progress_step.exit.us.us:                 ; preds = %.lr.ph.i.us.us, %bb.c
  store i64 %i.x, ptr @progress_printed, align 8, !tbaa !19
  %i.ad = load ptr, ptr @stdout, align 8, !tbaa !21
  %i.ae = tail call i32 @fflush(ptr noundef %i.ad) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %memtest_progress_step.exit.us.us, %bb.b
  %i.af = add nuw nsw i64 %.03639.us48.us, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.b
  br i1 %exitcond.not, label %._crit_edge.split.us49.us, label %bb.b, !llvm.loop !32

._crit_edge.split.us49.us:                        ; preds = %bb.d
  %i.ag = add nuw nsw i64 %.03743.us.us, 1        ; 2 uses
  %exitcond56.not = icmp eq i64 %i.ag, 512
  br i1 %exitcond56.not, label %.split.us, label %.lr.ph.us.us, !llvm.loop !33

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.split.us.us
  %.044.us = phi i64 [ %.lcssa, %._crit_edge.split.us.us ], [ -3372857614747716250, %.lr.ph.us.preheader ] ; 2 uses
  %.03743.us = phi i64 [ %i.bi, %._crit_edge.split.us.us ], [ 0, %.lr.ph.us.preheader ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.03743.us ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.a ; 2 uses
  br i1 %i.e, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.lr.ph.us.new
  %.142.us.us = phi i64 [ %i.ax, %.lr.ph.us.new ], [ %.044.us, %.lr.ph.us ] ; 2 uses
  %.03441.us.us = phi ptr [ %i.ba, %.lr.ph.us.new ], [ %i.ai, %.lr.ph.us ] ; 3 uses
  %.03540.us.us = phi ptr [ %i.az, %.lr.ph.us.new ], [ %i.ah, %.lr.ph.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.new ], [ 0, %.lr.ph.us ]
  %i.aj = lshr i64 %.142.us.us, 12
  %i.ak = xor i64 %i.aj, %.142.us.us              ; 2 uses
  %i.al = shl i64 %i.ak, 25
  %i.am = xor i64 %i.al, %i.ak                    ; 2 uses
  %i.an = lshr i64 %i.am, 27
  %i.ao = xor i64 %i.an, %i.am                    ; 3 uses
  %i.ap = mul i64 %i.ao, 2685821657736338717      ; 2 uses
  store i64 %i.ap, ptr %.03441.us.us, align 8, !tbaa !19
  store i64 %i.ap, ptr %.03540.us.us, align 8, !tbaa !19
  %i.aq = getelementptr inbounds nuw i8, ptr %.03540.us.us, i64 4096
  %i.ar = getelementptr inbounds nuw i8, ptr %.03441.us.us, i64 4096
  %i.as = lshr i64 %i.ao, 12
  %i.at = xor i64 %i.as, %i.ao                    ; 2 uses
  %i.au = shl i64 %i.at, 25
  %i.av = xor i64 %i.au, %i.at                    ; 2 uses
  %i.aw = lshr i64 %i.av, 27
  %i.ax = xor i64 %i.aw, %i.av                    ; 4 uses
  %i.ay = mul i64 %i.ax, 2685821657736338717      ; 2 uses
  store i64 %i.ay, ptr %i.ar, align 8, !tbaa !19
  store i64 %i.ay, ptr %i.aq, align 8, !tbaa !19
  %i.az = getelementptr inbounds nuw i8, ptr %.03540.us.us, i64 8192 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.03441.us.us, i64 8192 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.split.us.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !32

._crit_edge.split.us.us.unr-lcssa:                ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.split.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.split.us.us.unr-lcssa, %.lr.ph.us
  %.142.us.us.epil.init = phi i64 [ %.044.us, %.lr.ph.us ], [ %i.ax, %._crit_edge.split.us.us.unr-lcssa ] ; 2 uses
  %.03441.us.us.epil.init = phi ptr [ %i.ai, %.lr.ph.us ], [ %i.ba, %._crit_edge.split.us.us.unr-lcssa ]
  %.03540.us.us.epil.init = phi ptr [ %i.ah, %.lr.ph.us ], [ %i.az, %._crit_edge.split.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod70)
  %i.bb = lshr i64 %.142.us.us.epil.init, 12
  %i.bc = xor i64 %i.bb, %.142.us.us.epil.init    ; 2 uses
  %i.bd = shl i64 %i.bc, 25
  %i.be = xor i64 %i.bd, %i.bc                    ; 2 uses
  %i.bf = lshr i64 %i.be, 27
  %i.bg = xor i64 %i.bf, %i.be                    ; 2 uses
  %i.bh = mul i64 %i.bg, 2685821657736338717      ; 2 uses
  store i64 %i.bh, ptr %.03441.us.us.epil.init, align 8, !tbaa !19
  store i64 %i.bh, ptr %.03540.us.us.epil.init, align 8, !tbaa !19
  br label %._crit_edge.split.us.us

._crit_edge.split.us.us:                          ; preds = %._crit_edge.split.us.us.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.ax, %._crit_edge.split.us.us.unr-lcssa ], [ %i.bg, %.epil.preheader ]
  %i.bi = add nuw nsw i64 %.03743.us, 1           ; 2 uses
  %exitcond58.not = icmp eq i64 %i.bi, 512
  br i1 %exitcond58.not, label %.split.us, label %.lr.ph.us, !llvm.loop !33

bb.e:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 126) #16
  tail call void @abort() #17
  unreachable

.split.us:                                        ; preds = %._crit_edge.split.us49.us, %._crit_edge.split.us.us, %.preheader
  ret void
}

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @memtest_fill_value(ptr noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef signext %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = lshr i64 %1, 4                           ; 3 uses
  %i.b = lshr i64 %1, 13                          ; 5 uses
  %i.c = and i64 %1, 4095
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.preheader, label %bb.f, !prof !31

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %i.b, 0
  %i.e = sext i8 %4 to i32
  br i1 %.not, label %.split.us, label %.preheader.split.us

.preheader.split.us:                              ; preds = %.preheader
  %.not47 = icmp eq i32 %5, 0
  br i1 %.not47, label %.lr.ph.us.preheader, label %.lr.ph.us.us

.lr.ph.us.preheader:                              ; preds = %.preheader.split.us
  %xtraiter = and i64 %i.b, 7                     ; 3 uses
  %i.f = icmp ult i64 %1, 65536
  %unroll_iter = and i64 %i.b, 2251799813685240
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod60 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us.us:                                     ; preds = %.preheader.split.us, %._crit_edge.split.us45.us
  %.041.us.us = phi i64 [ %i.ah, %._crit_edge.split.us45.us ], [ 0, %.preheader.split.us ] ; 4 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.041.us.us ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.a
end_hunk_0
begin_hunk_1_@memtest_compare_times:bb.a
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  br i1 %.not, label %.lr.ph.split.us, label %memtest_compare.exit.thread15

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.d = and i64 %1, 4095
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.split.us.split, label %.split21.us, !prof !31

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  br i1 %.not38.i, label %._crit_edge, label %.split.us

.split.us:                                        ; preds = %.lr.ph.split.us.split, %memtest_compare.exit.us
  %.019.us = phi i32 [ %i.w, %memtest_compare.exit.us ], [ 0, %.lr.ph.split.us.split ]
  %.01018.us = phi i32 [ %i.x, %memtest_compare.exit.us ], [ 0, %.lr.ph.split.us.split ]
  br label %.lr.ph.split.us.i.us

.lr.ph.split.us.i.us:                             ; preds = %bb.b, %.split.us
  %.034.us.i.us = phi ptr [ %i.c, %.split.us ], [ %i.u, %bb.b ] ; 5 uses
  %.02233.us.i.us = phi ptr [ %0, %.split.us ], [ %i.t, %bb.b ] ; 5 uses
  %.02332.us.i.us = phi i64 [ 0, %.split.us ], [ %i.v, %bb.b ]
  %i.f = load i64, ptr %.02233.us.i.us, align 8, !tbaa !19
  %i.g = load i64, ptr %.034.us.i.us, align 8, !tbaa !19
  %.not.us.i.us = icmp eq i64 %i.f, %i.g
  br i1 %.not.us.i.us, label %.lr.ph.split.us.i.us.1, label %memtest_compare.exit.us

.lr.ph.split.us.i.us.1:                           ; preds = %.lr.ph.split.us.i.us
  %i.h = getelementptr inbounds nuw i8, ptr %.02233.us.i.us, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.034.us.i.us, i64 8
  %i.j = load i64, ptr %i.h, align 8, !tbaa !19
  %i.k = load i64, ptr %i.i, align 8, !tbaa !19
  %.not.us.i.us.1 = icmp eq i64 %i.j, %i.k
  br i1 %.not.us.i.us.1, label %.lr.ph.split.us.i.us.2, label %memtest_compare.exit.us

.lr.ph.split.us.i.us.2:                           ; preds = %.lr.ph.split.us.i.us.1
  %i.l = getelementptr inbounds nuw i8, ptr %.02233.us.i.us, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %.034.us.i.us, i64 16
  %i.n = load i64, ptr %i.l, align 8, !tbaa !19
  %i.o = load i64, ptr %i.m, align 8, !tbaa !19
  %.not.us.i.us.2 = icmp eq i64 %i.n, %i.o
  br i1 %.not.us.i.us.2, label %.lr.ph.split.us.i.us.3, label %memtest_compare.exit.us

.lr.ph.split.us.i.us.3:                           ; preds = %.lr.ph.split.us.i.us.2
  %i.p = getelementptr inbounds nuw i8, ptr %.02233.us.i.us, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %.034.us.i.us, i64 24
  %i.r = load i64, ptr %i.p, align 8, !tbaa !19
  %i.s = load i64, ptr %i.q, align 8, !tbaa !19
  %.not.us.i.us.3 = icmp eq i64 %i.r, %i.s
  br i1 %.not.us.i.us.3, label %bb.b, label %memtest_compare.exit.us

bb.b:                                             ; preds = %.lr.ph.split.us.i.us.3
  %i.t = getelementptr inbounds nuw i8, ptr %.02233.us.i.us, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %.034.us.i.us, i64 32
  %i.v = add nuw nsw i64 %.02332.us.i.us, 4       ; 2 uses
  %exitcond53.not.i.us.3 = icmp eq i64 %i.v, %i.b
  br i1 %exitcond53.not.i.us.3, label %memtest_compare.exit.us, label %.lr.ph.split.us.i.us, !llvm.loop !38

memtest_compare.exit.us:                          ; preds = %bb.b, %.lr.ph.split.us.i.us.3, %.lr.ph.split.us.i.us.2, %.lr.ph.split.us.i.us.1, %.lr.ph.split.us.i.us
  %phi.call.us = phi i32 [ 1, %.lr.ph.split.us.i.us ], [ 0, %bb.b ], [ 1, %.lr.ph.split.us.i.us.1 ], [ 1, %.lr.ph.split.us.i.us.3 ], [ 1, %.lr.ph.split.us.i.us.2 ]
  %i.w = add nuw nsw i32 %phi.call.us, %.019.us   ; 2 uses
  %i.x = add nuw nsw i32 %.01018.us, 1            ; 2 uses
  %exitcond26.not = icmp eq i32 %i.x, %3
  br i1 %exitcond26.not, label %._crit_edge, label %.split.us, !llvm.loop !39

memtest_compare.exit.thread15:                    ; preds = %.lr.ph, %memtest_compare.exit.thread15
  %.019 = phi i32 [ %i.z, %memtest_compare.exit.thread15 ], [ 0, %.lr.ph ]
  %.01018 = phi i32 [ %i.ab, %memtest_compare.exit.thread15 ], [ 0, %.lr.ph ]
  tail call void @memtest_progress_start(ptr noundef nonnull @.str.11, i32 noundef %2)
  %i.y = tail call i32 @memtest_compare(ptr noundef %0, i64 noundef %1, i32 noundef %4)
  %i.z = add nuw nsw i32 %i.y, %.019              ; 2 uses
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) ; 0 uses
  %i.ab = add nuw nsw i32 %.01018, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ab, %3
  br i1 %exitcond.not, label %._crit_edge, label %memtest_compare.exit.thread15, !llvm.loop !39

.split21.us:                                      ; preds = %.lr.ph.split.us
  tail call void @_serverAssert(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 178) #16
  tail call void @abort() #17
  unreachable

._crit_edge:                                      ; preds = %memtest_compare.exit.thread15, %memtest_compare.exit.us, %.lr.ph.split.us.split, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.w, %memtest_compare.exit.us ], [ 0, %.lr.ph.split.us.split ], [ %i.z, %memtest_compare.exit.thread15 ]
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local i32 @memtest_test(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %.not149 = icmp eq i32 %2, 0
  br i1 %.not149, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not68 = icmp eq i32 %3, 0
  %i.a = lshr i64 %1, 3                           ; 7 uses
  %.not49.i = icmp eq i64 %i.a, 0                 ; 2 uses
  %i.b = lshr i64 %1, 4                           ; 14 uses
  %i.c = lshr i64 %1, 13                          ; 8 uses
  %.not.i = icmp eq i64 %i.c, 0                   ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b ; 12 uses
  %.not38.i.i = icmp eq i64 %1, 0
  %i.e = lshr exact i64 %1, 1                     ; 2 uses
  br i1 %.not68, label %.lr.ph.split.us, label %memtest_addressing.exit.thread134

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.f = and i64 %1, 4095
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %.split.us.us.preheader, label %.split.us, !prof !31

.split.us.us.preheader:                           ; preds = %.lr.ph.split.us
  %min.iters.check190 = icmp ult i64 %1, 32
  %i.h = icmp eq i64 %i.c, 1
  %unroll_iter = and i64 %i.c, 2251799813685246
  %i.i = and i64 %1, 8192
  %lcmp.mod.not = icmp eq i64 %i.i, 0
  %lcmp.mod214 = trunc i64 %i.c to i1
  %xtraiter234 = and i64 %i.c, 7                  ; 3 uses
  %i.j = icmp ult i64 %1, 65536
  %unroll_iter237 = and i64 %i.c, 2251799813685240
  %lcmp.mod235.not = icmp eq i64 %xtraiter234, 0
  %lcmp.mod236 = icmp ne i64 %xtraiter234, 0
  %xtraiter258 = and i64 %i.c, 7                  ; 3 uses
  %i.k = icmp ult i64 %1, 65536
  %unroll_iter262 = and i64 %i.c, 2251799813685240
  %lcmp.mod260.not = icmp eq i64 %xtraiter258, 0
  %lcmp.mod261 = icmp ne i64 %xtraiter258, 0
  br label %.split.us.us

.split.us.us:                                     ; preds = %.split.us.us.preheader, %memtest_compare_times.exit132.us.us
  %.0151.us.us = phi i32 [ %i.lz, %memtest_compare_times.exit132.us.us ], [ 0, %.split.us.us.preheader ] ; 2 uses
  %.043150.us.us = phi i32 [ %i.l, %memtest_compare_times.exit132.us.us ], [ 0, %.split.us.us.preheader ]
  %i.l = add nuw nsw i32 %.043150.us.us, 1        ; 2 uses
  br i1 %.not49.i, label %.split46.us.us, label %.lr.ph.split.us.i.us.us.preheader

.lr.ph.split.us.i.us.us.preheader:                ; preds = %.split.us.us
  br i1 %min.iters.check190, label %.lr.ph.split.us.i.us.us, label %vector.body194

vector.body194:                                   ; preds = %.lr.ph.split.us.i.us.us.preheader, %vector.body194
  %index195 = phi i64 [ %index.next199, %vector.body194 ], [ 0, %.lr.ph.split.us.i.us.us.preheader ]
  %pointer.phi196 = phi ptr [ %ptr.ind200, %vector.body194 ], [ %0, %.lr.ph.split.us.i.us.us.preheader ] ; 2 uses
  %vector.gep197 = getelementptr i8, ptr %pointer.phi196, <2 x i64> <i64 0, i64 8> ; 3 uses
  %i.m = extractelement <2 x ptr> %vector.gep197, i64 0 ; 2 uses
  %step.add198206 = getelementptr i8, <2 x ptr> %vector.gep197, i64 16
  %i.n = ptrtoint <2 x ptr> %vector.gep197 to <2 x i64>
  %i.o = ptrtoint <2 x ptr> %step.add198206 to <2 x i64>
  %i.p = getelementptr i8, ptr %i.m, i64 16
  store <2 x i64> %i.n, ptr %i.m, align 8, !tbaa !19
  store <2 x i64> %i.o, ptr %i.p, align 8, !tbaa !19
  %index.next199 = add nuw i64 %index195, 4       ; 2 uses
  %ptr.ind200 = getelementptr i8, ptr %pointer.phi196, i64 32
  %i.q = icmp eq i64 %index.next199, %i.a
  br i1 %i.q, label %.lr.ph47.split.us.i.us.us.preheader, label %vector.body194, !llvm.loop !40

.lr.ph.split.us.i.us.us:                          ; preds = %.lr.ph.split.us.i.us.us.preheader, %.lr.ph.split.us.i.us.us
  %.044.us.i.us.us = phi ptr [ %i.s, %.lr.ph.split.us.i.us.us ], [ %0, %.lr.ph.split.us.i.us.us.preheader ] ; 3 uses
  %.03043.us.i.us.us = phi i64 [ %i.t, %.lr.ph.split.us.i.us.us ], [ 0, %.lr.ph.split.us.i.us.us.preheader ]
  %i.r = ptrtoint ptr %.044.us.i.us.us to i64
  store i64 %i.r, ptr %.044.us.i.us.us, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %.044.us.i.us.us, i64 8
  %i.t = add nuw nsw i64 %.03043.us.i.us.us, 1    ; 2 uses
  %exitcond61.not.i.us.us = icmp eq i64 %i.t, %i.a
  br i1 %exitcond61.not.i.us.us, label %.lr.ph47.split.us.i.us.us.preheader, label %.lr.ph.split.us.i.us.us, !llvm.loop !41

.lr.ph47.split.us.i.us.us.preheader:              ; preds = %vector.body194, %.lr.ph.split.us.i.us.us
  br label %.lr.ph47.split.us.i.us.us

.lr.ph47.split.us.i.us.us:                        ; preds = %bb.b, %.lr.ph47.split.us.i.us.us.preheader
  %.146.us.i.us.us = phi ptr [ %0, %.lr.ph47.split.us.i.us.us.preheader ], [ %i.af, %bb.b ] ; 6 uses
  %.13145.us.i.us.us = phi i64 [ 0, %.lr.ph47.split.us.i.us.us.preheader ], [ %i.ag, %bb.b ]
  %i.u = load i64, ptr %.146.us.i.us.us, align 8, !tbaa !19
  %i.v = ptrtoint ptr %.146.us.i.us.us to i64
  %.not.us.i.us.us = icmp eq i64 %i.u, %i.v
  br i1 %.not.us.i.us.us, label %.lr.ph47.split.us.i.us.us.1, label %memtest_addressing.exit.us.us

.lr.ph47.split.us.i.us.us.1:                      ; preds = %.lr.ph47.split.us.i.us.us
  %i.w = getelementptr inbounds nuw i8, ptr %.146.us.i.us.us, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !19
  %i.y = ptrtoint ptr %i.w to i64
  %.not.us.i.us.us.1 = icmp eq i64 %i.x, %i.y
  br i1 %.not.us.i.us.us.1, label %.lr.ph47.split.us.i.us.us.2, label %memtest_addressing.exit.us.us

.lr.ph47.split.us.i.us.us.2:                      ; preds = %.lr.ph47.split.us.i.us.us.1
  %i.z = getelementptr inbounds nuw i8, ptr %.146.us.i.us.us, i64 16 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !19
  %i.ab = ptrtoint ptr %i.z to i64
  %.not.us.i.us.us.2 = icmp eq i64 %i.aa, %i.ab
  br i1 %.not.us.i.us.us.2, label %.lr.ph47.split.us.i.us.us.3, label %memtest_addressing.exit.us.us

.lr.ph47.split.us.i.us.us.3:                      ; preds = %.lr.ph47.split.us.i.us.us.2
  %i.ac = getelementptr inbounds nuw i8, ptr %.146.us.i.us.us, i64 24 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !19
  %i.ae = ptrtoint ptr %i.ac to i64
  %.not.us.i.us.us.3 = icmp eq i64 %i.ad, %i.ae
  br i1 %.not.us.i.us.us.3, label %bb.b, label %memtest_addressing.exit.us.us

bb.b:                                             ; preds = %.lr.ph47.split.us.i.us.us.3
  %i.af = getelementptr inbounds nuw i8, ptr %.146.us.i.us.us, i64 32
  %i.ag = add nuw nsw i64 %.13145.us.i.us.us, 4   ; 2 uses
  %exitcond63.not.i.us.us.3 = icmp eq i64 %i.ag, %i.a
  br i1 %exitcond63.not.i.us.us.3, label %memtest_addressing.exit.us.us, label %.lr.ph47.split.us.i.us.us, !llvm.loop !29

memtest_addressing.exit.us.us:                    ; preds = %bb.b, %.lr.ph47.split.us.i.us.us.3, %.lr.ph47.split.us.i.us.us.2, %.lr.ph47.split.us.i.us.us.1, %.lr.ph47.split.us.i.us.us
  %phi.call.us.us = phi i32 [ 0, %bb.b ], [ 1, %.lr.ph47.split.us.i.us.us ], [ 1, %.lr.ph47.split.us.i.us.us.1 ], [ 1, %.lr.ph47.split.us.i.us.us.3 ], [ 1, %.lr.ph47.split.us.i.us.us.2 ]
  %i.ah = add nsw i32 %phi.call.us.us, %.0151.us.us
  br label %.split46.us.us

.split46.us.us:                                   ; preds = %memtest_addressing.exit.us.us, %.split.us.us
  %i.ai = phi i32 [ %i.ah, %memtest_addressing.exit.us.us ], [ %.0151.us.us, %.split.us.us ] ; 2 uses
  br i1 %.not.i, label %.split49.us.us, label %.lr.ph.us.i.us.us

.lr.ph.us.i.us.us:                                ; preds = %.split46.us.us, %._crit_edge.split.us.us.i.us.us
  %.044.us.i69.us.us = phi i64 [ %.lcssa, %._crit_edge.split.us.us.i.us.us ], [ -3372857614747716250, %.split46.us.us ] ; 2 uses
  %.03743.us.i.us.us = phi i64 [ %i.bk, %._crit_edge.split.us.us.i.us.us ], [ 0, %.split46.us.us ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.03743.us.i.us.us ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.b ; 2 uses
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.us.i.us.us.new

.lr.ph.us.i.us.us.new:                            ; preds = %.lr.ph.us.i.us.us, %.lr.ph.us.i.us.us.new
  %.142.us.us.i.us.us = phi i64 [ %i.az, %.lr.ph.us.i.us.us.new ], [ %.044.us.i69.us.us, %.lr.ph.us.i.us.us ] ; 2 uses
  %.03441.us.us.i.us.us = phi ptr [ %i.bc, %.lr.ph.us.i.us.us.new ], [ %i.ak, %.lr.ph.us.i.us.us ] ; 3 uses
  %.03540.us.us.i.us.us = phi ptr [ %i.bb, %.lr.ph.us.i.us.us.new ], [ %i.aj, %.lr.ph.us.i.us.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.i.us.us.new ], [ 0, %.lr.ph.us.i.us.us ]
  %i.al = lshr i64 %.142.us.us.i.us.us, 12
  %i.am = xor i64 %i.al, %.142.us.us.i.us.us      ; 2 uses
  %i.an = shl i64 %i.am, 25
  %i.ao = xor i64 %i.an, %i.am                    ; 2 uses
  %i.ap = lshr i64 %i.ao, 27
  %i.aq = xor i64 %i.ap, %i.ao                    ; 3 uses
  %i.ar = mul i64 %i.aq, 2685821657736338717      ; 2 uses
  store i64 %i.ar, ptr %.03441.us.us.i.us.us, align 8, !tbaa !19
  store i64 %i.ar, ptr %.03540.us.us.i.us.us, align 8, !tbaa !19
  %i.as = getelementptr inbounds nuw i8, ptr %.03540.us.us.i.us.us, i64 4096
  %i.at = getelementptr inbounds nuw i8, ptr %.03441.us.us.i.us.us, i64 4096
  %i.au = lshr i64 %i.aq, 12
  %i.av = xor i64 %i.au, %i.aq                    ; 2 uses
  %i.aw = shl i64 %i.av, 25
  %i.ax = xor i64 %i.aw, %i.av                    ; 2 uses
  %i.ay = lshr i64 %i.ax, 27
  %i.az = xor i64 %i.ay, %i.ax                    ; 4 uses
  %i.ba = mul i64 %i.az, 2685821657736338717      ; 2 uses
  store i64 %i.ba, ptr %i.at, align 8, !tbaa !19
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !19
  %i.bb = getelementptr inbounds nuw i8, ptr %.03540.us.us.i.us.us, i64 8192 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.03441.us.us.i.us.us, i64 8192 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.split.us.us.i.us.us.unr-lcssa, label %.lr.ph.us.i.us.us.new, !llvm.loop !32

._crit_edge.split.us.us.i.us.us.unr-lcssa:        ; preds = %.lr.ph.us.i.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.split.us.us.i.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.split.us.us.i.us.us.unr-lcssa, %.lr.ph.us.i.us.us
  %.142.us.us.i.us.us.epil.init = phi i64 [ %.044.us.i69.us.us, %.lr.ph.us.i.us.us ], [ %i.az, %._crit_edge.split.us.us.i.us.us.unr-lcssa ] ; 2 uses
  %.03441.us.us.i.us.us.epil.init = phi ptr [ %i.ak, %.lr.ph.us.i.us.us ], [ %i.bc, %._crit_edge.split.us.us.i.us.us.unr-lcssa ]
  %.03540.us.us.i.us.us.epil.init = phi ptr [ %i.aj, %.lr.ph.us.i.us.us ], [ %i.bb, %._crit_edge.split.us.us.i.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod214)
  %i.bd = lshr i64 %.142.us.us.i.us.us.epil.init, 12
  %i.be = xor i64 %i.bd, %.142.us.us.i.us.us.epil.init ; 2 uses
  %i.bf = shl i64 %i.be, 25
  %i.bg = xor i64 %i.bf, %i.be                    ; 2 uses
  %i.bh = lshr i64 %i.bg, 27
  %i.bi = xor i64 %i.bh, %i.bg                    ; 2 uses
  %i.bj = mul i64 %i.bi, 2685821657736338717      ; 2 uses
  store i64 %i.bj, ptr %.03441.us.us.i.us.us.epil.init, align 8, !tbaa !19
  store i64 %i.bj, ptr %.03540.us.us.i.us.us.epil.init, align 8, !tbaa !19
  br label %._crit_edge.split.us.us.i.us.us

._crit_edge.split.us.us.i.us.us:                  ; preds = %._crit_edge.split.us.us.i.us.us.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.az, %._crit_edge.split.us.us.i.us.us.unr-lcssa ], [ %i.bi, %.epil.preheader ]
  %i.bk = add nuw nsw i64 %.03743.us.i.us.us, 1   ; 2 uses
  %exitcond58.not.i.us.us = icmp eq i64 %i.bk, 512
  br i1 %exitcond58.not.i.us.us, label %.split49.us.us, label %.lr.ph.us.i.us.us, !llvm.loop !33

.split49.us.us:                                   ; preds = %._crit_edge.split.us.us.i.us.us, %.split46.us.us
  br i1 %.not38.i.i, label %memtest_compare_times.exit132.us.us, label %.lr.ph.split.us.i.us.i.us.us

.lr.ph.split.us.i.us.i.us.us:                     ; preds = %.split49.us.us, %bb.c
  %.034.us.i.us.i.us.us = phi ptr [ %i.ca, %bb.c ], [ %i.d, %.split49.us.us ] ; 5 uses
  %.02233.us.i.us.i.us.us = phi ptr [ %i.bz, %bb.c ], [ %0, %.split49.us.us ] ; 5 uses
  %.02332.us.i.us.i.us.us = phi i64 [ %i.cb, %bb.c ], [ 0, %.split49.us.us ]
  %i.bl = load i64, ptr %.02233.us.i.us.i.us.us, align 8, !tbaa !19
  %i.bm = load i64, ptr %.034.us.i.us.i.us.us, align 8, !tbaa !19
  %.not.us.i.us.i.us.us = icmp eq i64 %i.bl, %i.bm
  br i1 %.not.us.i.us.i.us.us, label %.lr.ph.split.us.i.us.i.us.us.1219, label %memtest_compare.exit.us.i.us.us

.lr.ph.split.us.i.us.i.us.us.1219:                ; preds = %.lr.ph.split.us.i.us.i.us.us
  %i.bn = getelementptr inbounds nuw i8, ptr %.02233.us.i.us.i.us.us, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.034.us.i.us.i.us.us, i64 8
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !19
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !19
  %.not.us.i.us.i.us.us.1218 = icmp eq i64 %i.bp, %i.bq
  br i1 %.not.us.i.us.i.us.us.1218, label %.lr.ph.split.us.i.us.i.us.us.2225, label %memtest_compare.exit.us.i.us.us

.lr.ph.split.us.i.us.i.us.us.2225:                ; preds = %.lr.ph.split.us.i.us.i.us.us.1219
  %i.br = getelementptr inbounds nuw i8, ptr %.02233.us.i.us.i.us.us, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %.034.us.i.us.i.us.us, i64 16
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !19
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !19
  %.not.us.i.us.i.us.us.2224 = icmp eq i64 %i.bt, %i.bu
  br i1 %.not.us.i.us.i.us.us.2224, label %.lr.ph.split.us.i.us.i.us.us.3231, label %memtest_compare.exit.us.i.us.us

.lr.ph.split.us.i.us.i.us.us.3231:                ; preds = %.lr.ph.split.us.i.us.i.us.us.2225
  %i.bv = getelementptr inbounds nuw i8, ptr %.02233.us.i.us.i.us.us, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %.034.us.i.us.i.us.us, i64 24
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !19
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !19
  %.not.us.i.us.i.us.us.3230 = icmp eq i64 %i.bx, %i.by
  br i1 %.not.us.i.us.i.us.us.3230, label %bb.c, label %memtest_compare.exit.us.i.us.us

bb.c:                                             ; preds = %.lr.ph.split.us.i.us.i.us.us.3231
  %i.bz = getelementptr inbounds nuw i8, ptr %.02233.us.i.us.i.us.us, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %.034.us.i.us.i.us.us, i64 32
  %i.cb = add nuw nsw i64 %.02332.us.i.us.i.us.us, 4 ; 2 uses
  %exitcond53.not.i.us.i.us.us.3232 = icmp eq i64 %i.cb, %i.b
  br i1 %exitcond53.not.i.us.i.us.us.3232, label %memtest_compare.exit.us.i.us.us, label %.lr.ph.split.us.i.us.i.us.us, !llvm.loop !38

memtest_compare.exit.us.i.us.us:                  ; preds = %bb.c, %.lr.ph.split.us.i.us.i.us.us.3231, %.lr.ph.split.us.i.us.i.us.us.2225, %.lr.ph.split.us.i.us.i.us.us.1219, %.lr.ph.split.us.i.us.i.us.us
  %phi.call.us.i.us.us = phi i32 [ 1, %.lr.ph.split.us.i.us.i.us.us ], [ 0, %bb.c ], [ 1, %.lr.ph.split.us.i.us.i.us.us.1219 ], [ 1, %.lr.ph.split.us.i.us.i.us.us.3231 ], [ 1, %.lr.ph.split.us.i.us.i.us.us.2225 ]
  br label %.lr.ph.split.us.i.us.i.us.us.1

.lr.ph.split.us.i.us.i.us.us.1:                   ; preds = %bb.d, %memtest_compare.exit.us.i.us.us
  %.034.us.i.us.i.us.us.1 = phi ptr [ %i.d, %memtest_compare.exit.us.i.us.us ], [ %i.cr, %bb.d ] ; 5 uses
  %.02233.us.i.us.i.us.us.1 = phi ptr [ %0, %memtest_compare.exit.us.i.us.us ], [ %i.cq, %bb.d ] ; 5 uses
  %.02332.us.i.us.i.us.us.1 = phi i64 [ 0, %memtest_compare.exit.us.i.us.us ], [ %i.cs, %bb.d ]
  %i.cc = load i64, ptr %.02233.us.i.us.i.us.us.1, align 8, !tbaa !19
  %i.cd = load i64, ptr %.034.us.i.us.i.us.us.1, align 8, !tbaa !19
  %.not.us.i.us.i.us.us.1 = icmp eq i64 %i.cc, %i.cd
  br i1 %.not.us.i.us.i.us.us.1, label %.lr.ph.split.us.i.us.i.us.us.1.1, label %memtest_compare.exit.us.i.us.us.1

.lr.ph.split.us.i.us.i.us.us.1.1:                 ; preds = %.lr.ph.split.us.i.us.i.us.us.1
  %i.ce = getelementptr inbounds nuw i8, ptr %.02233.us.i.us.i.us.us.1, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %.034.us.i.us.i.us.us.1, i64 8
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !19
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !19
  %.not.us.i.us.i.us.us.1.1 = icmp eq i64 %i.cg, %i.ch
  br i1 %.not.us.i.us.i.us.us.1.1, label %.lr.ph.split.us.i.us.i.us.us.1.2, label %memtest_compare.exit.us.i.us.us.1

.lr.ph.split.us.i.us.i.us.us.1.2:                 ; preds = %.lr.ph.split.us.i.us.i.us.us.1.1
  %i.ci = getelementptr inbounds nuw i8, ptr %.02233.us.i.us.i.us.us.1, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %.034.us.i.us.i.us.us.1, i64 16
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !19
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !19
  %.not.us.i.us.i.us.us.1.2 = icmp eq i64 %i.ck, %i.cl
  br i1 %.not.us.i.us.i.us.us.1.2, label %.lr.ph.split.us.i.us.i.us.us.1.3, label %memtest_compare.exit.us.i.us.us.1

.lr.ph.split.us.i.us.i.us.us.1.3:                 ; preds = %.lr.ph.split.us.i.us.i.us.us.1.2
  %i.cm = getelementptr inbounds nuw i8, ptr %.02233.us.i.us.i.us.us.1, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %.034.us.i.us.i.us.us.1, i64 24
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !19
  %i.cp = load i64, ptr %i.cn, align 8, !tbaa !19
  %.not.us.i.us.i.us.us.1.3 = icmp eq i64 %i.co, %i.cp
  br i1 %.not.us.i.us.i.us.us.1.3, label %bb.d, label %memtest_compare.exit.us.i.us.us.1

bb.d:                                             ; preds = %.lr.ph.split.us.i.us.i.us.us.1.3
  %i.cq = getelementptr inbounds nuw i8, ptr %.02233.us.i.us.i.us.us.1, i64 32
  %i.cr = getelementptr inbounds nuw i8, ptr %.034.us.i.us.i.us.us.1, i64 32
  %i.cs = add nuw nsw i64 %.02332.us.i.us.i.us.us.1, 4 ; 2 uses
  %exitcond53.not.i.us.i.us.us.1.3 = icmp eq i64 %i.cs, %i.b
  br i1 %exitcond53.not.i.us.i.us.us.1.3, label %memtest_compare.exit.us.i.us.us.1, label %.lr.ph.split.us.i.us.i.us.us.1, !llvm.loop !38

memtest_compare.exit.us.i.us.us.1:                ; preds = %bb.d, %.lr.ph.split.us.i.us.i.us.us.1.3, %.lr.ph.split.us.i.us.i.us.us.1.2, %.lr.ph.split.us.i.us.i.us.us.1.1, %.lr.ph.split.us.i.us.i.us.us.1
  %phi.call.us.i.us.us.1 = phi i32 [ 1, %.lr.ph.split.us.i.us.i.us.us.1 ], [ 0, %bb.d ], [ 1, %.lr.ph.split.us.i.us.i.us.us.1.1 ], [ 1, %.lr.ph.split.us.i.us.i.us.us.1.3 ], [ 1, %.lr.ph.split.us.i.us.i.us.us.1.2 ]
  %i.ct = add nuw nsw i32 %phi.call.us.i.us.us.1, %phi.call.us.i.us.us
  br label %.lr.ph.split.us.i.us.i.us.us.2

.lr.ph.split.us.i.us.i.us.us.2:                   ; preds = %bb.e, %memtest_compare.exit.us.i.us.us.1
  %.034.us.i.us.i.us.us.2 = phi ptr [ %i.d, %memtest_compare.exit.us.i.us.us.1 ], [ %i.dj, %bb.e ] ; 5 uses
  %.02233.us.i.us.i.us.us.2 = phi ptr [ %0, %memtest_compare.exit.us.i.us.us.1 ], [ %i.di, %bb.e ] ; 5 uses
  %.02332.us.i.us.i.us.us.2 = phi i64 [ 0, %memtest_compare.exit.us.i.us.us.1 ], [ %i.dk, %bb.e ]
  %i.cu = load i64, ptr %.02233.us.i.us.i.us.us.2, align 8, !tbaa !19
  %i.cv = load i64, ptr %.034.us.i.us.i.us.us.2, align 8, !tbaa !19
  %.not.us.i.us.i.us.us.2 = icmp eq i64 %i.cu, %i.cv
  br i1 %.not.us.i.us.i.us.us.2, label %.lr.ph.split.us.i.us.i.us.us.2.1, label %memtest_compare.exit.us.i.us.us.2

.lr.ph.split.us.i.us.i.us.us.2.1:                 ; preds = %.lr.ph.split.us.i.us.i.us.us.2
  %i.cw = getelementptr inbounds nuw i8, ptr %.02233.us.i.us.i.us.us.2, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %.034.us.i.us.i.us.us.2, i64 8
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !19
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !19
  %.not.us.i.us.i.us.us.2.1 = icmp eq i64 %i.cy, %i.cz
  br i1 %.not.us.i.us.i.us.us.2.1, label %.lr.ph.split.us.i.us.i.us.us.2.2, label %memtest_compare.exit.us.i.us.us.2

.lr.ph.split.us.i.us.i.us.us.2.2:                 ; preds = %.lr.ph.split.us.i.us.i.us.us.2.1
  %i.da = getelementptr inbounds nuw i8, ptr %.02233.us.i.us.i.us.us.2, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %.034.us.i.us.i.us.us.2, i64 16
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !19
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !19
  %.not.us.i.us.i.us.us.2.2 = icmp eq i64 %i.dc, %i.dd
  br i1 %.not.us.i.us.i.us.us.2.2, label %.lr.ph.split.us.i.us.i.us.us.2.3, label %memtest_compare.exit.us.i.us.us.2

.lr.ph.split.us.i.us.i.us.us.2.3:                 ; preds = %.lr.ph.split.us.i.us.i.us.us.2.2
  %i.de = getelementptr inbounds nuw i8, ptr %.02233.us.i.us.i.us.us.2, i64 24
  %i.df = getelementptr inbounds nuw i8, ptr %.034.us.i.us.i.us.us.2, i64 24
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !19
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !19
  %.not.us.i.us.i.us.us.2.3 = icmp eq i64 %i.dg, %i.dh
  br i1 %.not.us.i.us.i.us.us.2.3, label %bb.e, label %memtest_compare.exit.us.i.us.us.2

bb.e:                                             ; preds = %.lr.ph.split.us.i.us.i.us.us.2.3
  %i.di = getelementptr inbounds nuw i8, ptr %.02233.us.i.us.i.us.us.2, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %.034.us.i.us.i.us.us.2, i64 32
  %i.dk = add nuw nsw i64 %.02332.us.i.us.i.us.us.2, 4 ; 2 uses
  %exitcond53.not.i.us.i.us.us.2.3 = icmp eq i64 %i.dk, %i.b
end_hunk_1
