inline.NumInlined: 53
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pixman_color = type { i16, i16, i16, i16 }
%union.QemuVT100Head = type { %struct.QTailQLink }
%struct.QTailQLink = type { ptr, ptr }
%struct.pixman_rectangle16 = type { i16, i16, i16, i16 }

@color_table_rgb = internal unnamed_addr constant [2 x [8 x %struct.pixman_color]] [[8 x %struct.pixman_color] [%struct.pixman_color { i16 0, i16 0, i16 0, i16 -1 }, %struct.pixman_color { i16 0, i16 0, i16 -22016, i16 -1 }, %struct.pixman_color { i16 0, i16 -22016, i16 0, i16 -1 }, %struct.pixman_color { i16 0, i16 -22016, i16 -22016, i16 -1 }, %struct.pixman_color { i16 -22016, i16 0, i16 0, i16 -1 }, %struct.pixman_color { i16 -22016, i16 0, i16 -22016, i16 -1 }, %struct.pixman_color { i16 -22016, i16 -22016, i16 0, i16 -1 }, %struct.pixman_color { i16 -22016, i16 -22016, i16 -22016, i16 -1 }], [8 x %struct.pixman_color] [%struct.pixman_color { i16 0, i16 0, i16 0, i16 -1 }, %struct.pixman_color { i16 0, i16 0, i16 -256, i16 -1 }, %struct.pixman_color { i16 0, i16 -256, i16 0, i16 -1 }, %struct.pixman_color { i16 0, i16 -256, i16 -256, i16 -1 }, %struct.pixman_color { i16 -256, i16 0, i16 0, i16 -1 }, %struct.pixman_color { i16 -256, i16 0, i16 -256, i16 -1 }, %struct.pixman_color { i16 -256, i16 -256, i16 0, i16 -1 }, %struct.pixman_color { i16 -256, i16 -256, i16 -256, i16 -1 }]], align 16
@.str = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@cursor_visible_phase = internal unnamed_addr global i8 0, align 1
@vt100s = internal global %union.QemuVT100Head { %struct.QTailQLink { ptr null, ptr @vt100s } }, align 8
@cursor_timer = internal unnamed_addr global ptr null, align 8
@vt100_putcharxy.glyphs = internal unnamed_addr global [256 x ptr] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [10 x i8] c"vt->image\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"../ui/vt100.c\00", align 1
@__PRETTY_FUNCTION__.vt100_putcharxy = private unnamed_addr constant [71 x i8] c"void vt100_putcharxy(QemuVT100 *, int, int, uint8_t, TextAttributes *)\00", align 1
@vgafont16 = external constant [4096 x i8], align 16
@.str.3 = private unnamed_addr constant [5 x i8] c"\1B[0n\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"\1B[%d;%dR\00", align 1
@bh_utf8_decode.utf8d = internal unnamed_addr constant [364 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\0A\03\03\03\03\03\03\03\03\03\03\03\03\04\03\03\0B\06\06\06\05\08\08\08\08\08\08\08\08\08\08\08\00\0C\18$<`T\0C\0C\0C0H\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\00\0C\0C\0C\0C\0C\00\0C\00\0C\0C\0C\18\0C\0C\0C\0C\0C\18\0C\18\0C\0C\0C\0C\0C\0C\0C\0C\0C\18\0C\0C\0C\0C\0C\18\0C\0C\0C\0C\0C\0C\0C\18\0C\0C\0C\0C\0C\0C\0C\0C\0C$\0C$\0C\0C\0C$\0C\0C\0C\0C\0C$\0C$\0C\0C\0C$\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C", align 16
@trace_events_enabled_count = external local_unnamed_addr global i32, align 4
@_TRACE_CONSOLE_PUTCHAR_CSI_DSTATE = external local_unnamed_addr global i16, align 2
@.str.5 = private unnamed_addr constant [63 x i8] c"console_putchar_csi escape sequence CSI%d;%d%c, %d parameters\0A\00", align 1
@qemu_loglevel = external local_unnamed_addr global i32, align 4
@_TRACE_CONSOLE_PUTCHAR_UNHANDLED_DSTATE = external local_unnamed_addr global i16, align 2
@.str.6 = private unnamed_addr constant [59 x i8] c"console_putchar_unhandled unhandled escape character '%c'\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @vt100_refresh(ptr noundef initializes((64, 84)) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.pixman_color, align 8       ; 4 uses
  %2 = alloca %struct.pixman_color, align 8       ; 4 uses
  %3 = alloca %struct.pixman_color, align 8       ; 4 uses
  %4 = alloca %struct.pixman_rectangle16, align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call i32 @pixman_image_get_width(ptr noundef %i.a) #10 ; 2 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = tail call i32 @pixman_image_get_height(ptr noundef %i.c) #10 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = add i32 %i.h, -1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.i, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = add i32 %i.l, -1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.m, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1, ptr %i.o, align 8
  %i.p = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 -281474976710656, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store i64 0, ptr %4, align 8, !annotation !7
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.r = trunc i32 %i.b to i16
  store i16 %i.r, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.t = trunc i32 %i.d to i16
  store i16 %i.t, ptr %i.s, align 2
  %i.u = call i32 @pixman_image_fill_rectangles(i32 noundef 1, ptr noundef %i.p, ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %4) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.v = load i32, ptr %i.k, align 8              ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph41, label %._crit_edge42

.lr.ph41:                                         ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.z = load i32, ptr %i.g, align 4              ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph41.split.preheader, label %._crit_edge42

.lr.ph41.split.preheader:                         ; preds = %.lr.ph41
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ac = load i32, ptr %i.ab, align 4
  br label %.lr.ph41.split

.lr.ph41.split:                                   ; preds = %.lr.ph41.split.preheader, %._crit_edge
  %i.ad = phi i32 [ %i.bl, %._crit_edge ], [ %i.v, %.lr.ph41.split.preheader ]
  %i.ae = phi i32 [ %i.bm, %._crit_edge ], [ %i.z, %.lr.ph41.split.preheader ] ; 3 uses
  %.03439 = phi i32 [ %spec.store.select, %._crit_edge ], [ %i.ac, %.lr.ph41.split.preheader ] ; 2 uses
  %.03538 = phi i32 [ %i.bq, %._crit_edge ], [ 0, %.lr.ph41.split.preheader ] ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph41.split
  %i.ag = load ptr, ptr %i.x, align 8
  %i.ah = mul i32 %i.ae, %.03439
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [3 x i8], ptr %i.ag, i64 %i.ai
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %vt100_putcharxy.exit
  %.037 = phi ptr [ %i.bh, %vt100_putcharxy.exit ], [ %i.aj, %.lr.ph.preheader ] ; 3 uses
  %.03336 = phi i32 [ %i.bi, %vt100_putcharxy.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.ak = load i8, ptr %.037, align 1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.al = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  call void @__assert_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 70, ptr noundef nonnull @__PRETTY_FUNCTION__.vt100_putcharxy) #11
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.am = getelementptr inbounds nuw i8, ptr %.037, i64 1
  %i.an = load i16, ptr %i.am, align 1            ; 4 uses
  %i.ao = and i16 %i.an, 2048
  %.not16.i = icmp eq i16 %i.ao, 0                ; 2 uses
  %i.ap = lshr i16 %i.an, 8
  %i.aq = and i16 %i.ap, 1
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = getelementptr inbounds nuw [64 x i8], ptr @color_table_rgb, i64 %i.ar ; 2 uses
  %i.at = and i16 %i.an, 15
  %i.au = zext nneg i16 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.au ; 2 uses
  %i.aw = lshr i16 %i.an, 4
  %i.ax = and i16 %i.aw, 15
  %i.ay = zext nneg i16 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ay ; 2 uses
  %..i = select i1 %.not16.i, ptr %i.av, ptr %i.az
  %.20.i = select i1 %.not16.i, ptr %i.az, ptr %i.av
  %.sink.i = load i64, ptr %.20.i, align 8
  %.sink18.i = load i64, ptr %..i, align 8
  store i64 %.sink18.i, ptr %1, align 8
  store i64 %.sink.i, ptr %2, align 8
  %i.ba = zext i8 %i.ak to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @vt100_putcharxy.glyphs, i64 %i.ba ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %.not17.i = icmp eq ptr %i.bc, null
  br i1 %.not17.i, label %bb.d, label %vt100_putcharxy.exit

bb.d:                                             ; preds = %bb.c
  %i.bd = zext i8 %i.ak to i32
  %i.be = call ptr @qemu_pixman_glyph_from_vgafont(i32 noundef 16, ptr noundef nonnull @vgafont16, i32 noundef %i.bd) #10 ; 2 uses
  store ptr %i.be, ptr %i.bb, align 8
  %.pre.i = load ptr, ptr %0, align 8
  br label %vt100_putcharxy.exit

vt100_putcharxy.exit:                             ; preds = %bb.c, %bb.d
  %i.bf = phi ptr [ %.pre.i, %bb.d ], [ %i.al, %bb.c ]
  %i.bg = phi ptr [ %i.be, %bb.d ], [ %i.bc, %bb.c ]
  call void @qemu_pixman_glyph_render(ptr noundef %i.bg, ptr noundef %i.bf, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %.03336, i32 noundef %.03538, i32 noundef 8, i32 noundef 16) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  %i.bh = getelementptr inbounds nuw i8, ptr %.037, i64 3
  %i.bi = add nuw nsw i32 %.03336, 1              ; 2 uses
  %i.bj = load i32, ptr %i.g, align 4             ; 2 uses
  %i.bk = icmp slt i32 %i.bi, %i.bj
  br i1 %i.bk, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !8

._crit_edge.loopexit:                             ; preds = %vt100_putcharxy.exit
  %.pre = load i32, ptr %i.k, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph41.split
  %i.bl = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.ad, %.lr.ph41.split ] ; 2 uses
  %i.bm = phi i32 [ %i.bj, %._crit_edge.loopexit ], [ %i.ae, %.lr.ph41.split ]
  %i.bn = add i32 %.03439, 1                      ; 2 uses
  %i.bo = load i32, ptr %i.y, align 4
  %i.bp = icmp eq i32 %i.bn, %i.bo
  %spec.store.select = select i1 %i.bp, i32 0, i32 %i.bn
  %i.bq = add nuw nsw i32 %.03538, 1              ; 2 uses
  %i.br = icmp slt i32 %i.bq, %i.bl
  br i1 %i.br, label %.lr.ph41.split, label %._crit_edge42, !llvm.loop !10

._crit_edge42:                                    ; preds = %._crit_edge, %.lr.ph41, %bb.a
  call fastcc void @vt100_show_cursor(ptr noundef nonnull %0, i32 noundef 1)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.b, i32 noundef %i.d) #10, !inline_history !12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @pixman_image_get_width(ptr noundef) local_unnamed_addr #2

declare i32 @pixman_image_get_height(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @vt100_show_cursor(ptr nofree noundef captures(none) initializes((80, 84)) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.pixman_color, align 8       ; 4 uses
  %3 = alloca %struct.pixman_color, align 8       ; 4 uses
  %4 = alloca %struct.pixman_color, align 8       ; 4 uses
  %5 = alloca %struct.pixman_color, align 8       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4              ; 3 uses
  %.not = icmp slt i32 %i.b, %i.e
  %i.f = add i32 %i.e, -1
  %spec.select = select i1 %.not, i32 %i.b, i32 %i.f ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i32, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i32, ptr %i.i, align 8
  %i.k = add i32 %i.j, %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = srem i32 %i.k, %i.m                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.p = load i32, ptr %i.o, align 4
  %i.q = sub i32 %i.n, %i.p                       ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  %i.s = select i1 %i.r, i32 %i.m, i32 0
  %.032 = add i32 %i.s, %i.q                      ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load i32, ptr %i.t, align 8
  %i.v = icmp slt i32 %.032, %i.u
  br i1 %i.v, label %bb.b, label %vt100_invalidate_xy.exit

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = mul i32 %i.n, %i.e
  %i.z = add i32 %i.y, %spec.select
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [3 x i8], ptr %i.x, i64 %i.aa ; 2 uses
  %i.ac = icmp ne i32 %1, 0
  %i.ad = load i8, ptr @cursor_visible_phase, align 1, !range !13
  %i.ae = trunc nuw i8 %i.ad to i1
  %or.cond = select i1 %i.ac, i1 %i.ae, i1 false
  %6 = load i8, ptr %i.ab, align 1                ; 4 uses
  br i1 %or.cond, label %7, label %19

7:                                                ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %8 = load ptr, ptr %0, align 8                  ; 2 uses
  %.not.i = icmp eq ptr %8, null
  br i1 %.not.i, label %9, label %10

9:                                                ; preds = %7
  tail call void @__assert_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 70, ptr noundef nonnull @__PRETTY_FUNCTION__.vt100_putcharxy) #11
  unreachable

10:                                               ; preds = %7
  store i64 -281474976710656, ptr %4, align 8
  store i64 -94555147818496, ptr %5, align 8
  %11 = zext i8 %6 to i64
  %12 = getelementptr inbounds nuw [8 x i8], ptr @vt100_putcharxy.glyphs, i64 %11 ; 2 uses
  %13 = load ptr, ptr %12, align 8                ; 2 uses
  %.not17.i = icmp eq ptr %13, null
  br i1 %.not17.i, label %14, label %bb.c

14:                                               ; preds = %10
  %15 = zext i8 %6 to i32
  %16 = tail call ptr @qemu_pixman_glyph_from_vgafont(i32 noundef 16, ptr noundef nonnull @vgafont16, i32 noundef %15) #10 ; 2 uses
  store ptr %16, ptr %12, align 8
  %.pre.i = load ptr, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %10, %14
  %17 = phi ptr [ %.pre.i, %14 ], [ %8, %10 ]
  %18 = phi ptr [ %16, %14 ], [ %13, %10 ]
  call void @qemu_pixman_glyph_render(ptr noundef %18, ptr noundef %17, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %spec.select, i32 noundef %.032, i32 noundef 8, i32 noundef 16) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.e

19:                                               ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %20 = load ptr, ptr %0, align 8                 ; 2 uses
  %.not.i36 = icmp eq ptr %20, null
  br i1 %.not.i36, label %21, label %22

21:                                               ; preds = %19
  tail call void @__assert_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 70, ptr noundef nonnull @__PRETTY_FUNCTION__.vt100_putcharxy) #11
  unreachable

22:                                               ; preds = %19
  %23 = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %24 = load i16, ptr %23, align 1                ; 4 uses
  %25 = and i16 %24, 2048
  %.not16.i37 = icmp eq i16 %25, 0                ; 2 uses
  %26 = lshr i16 %24, 8
  %27 = and i16 %26, 1
  %28 = zext nneg i16 %27 to i64
  %29 = getelementptr inbounds nuw [64 x i8], ptr @color_table_rgb, i64 %28 ; 2 uses
  %30 = and i16 %24, 15
  %31 = zext nneg i16 %30 to i64
  %32 = getelementptr inbounds nuw [8 x i8], ptr %29, i64 %31 ; 2 uses
  %33 = lshr i16 %24, 4
  %34 = and i16 %33, 15
  %35 = zext nneg i16 %34 to i64
  %36 = getelementptr inbounds nuw [8 x i8], ptr %29, i64 %35 ; 2 uses
  %..i38 = select i1 %.not16.i37, ptr %32, ptr %36
  %.20.i39 = select i1 %.not16.i37, ptr %36, ptr %32
  %.sink.i40 = load i64, ptr %.20.i39, align 8
  %.sink18.i41 = load i64, ptr %..i38, align 8
  store i64 %.sink18.i41, ptr %2, align 8
  store i64 %.sink.i40, ptr %3, align 8
  %37 = zext i8 %6 to i64
  %38 = getelementptr inbounds nuw [8 x i8], ptr @vt100_putcharxy.glyphs, i64 %37 ; 2 uses
  %39 = load ptr, ptr %38, align 8                ; 2 uses
  %.not17.i42 = icmp eq ptr %39, null
  br i1 %.not17.i42, label %40, label %bb.d

40:                                               ; preds = %22
  %41 = zext i8 %6 to i32
  %42 = tail call ptr @qemu_pixman_glyph_from_vgafont(i32 noundef 16, ptr noundef nonnull @vgafont16, i32 noundef %41) #10 ; 2 uses
  store ptr %42, ptr %38, align 8
  %.pre.i43 = load ptr, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %22, %40
  %43 = phi ptr [ %.pre.i43, %40 ], [ %20, %22 ]
  %44 = phi ptr [ %42, %40 ], [ %39, %22 ]
  call void @qemu_pixman_glyph_render(ptr noundef %44, ptr noundef %43, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef %spec.select, i32 noundef %.032, i32 noundef 8, i32 noundef 16) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = shl i32 %spec.select, 3                 ; 3 uses
  %i.ai = icmp sgt i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.ah, ptr %i.af, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = shl i32 %.032, 4                        ; 3 uses
  %i.am = icmp sgt i32 %i.ak, %i.al
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.al, ptr %i.aj, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = add i32 %i.ah, 8                        ; 2 uses
  %i.aq = icmp slt i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.ap, ptr %i.an, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = add i32 %i.al, 16                       ; 2 uses
  %i.au = icmp slt i32 %i.as, %i.at
  br i1 %i.au, label %bb.l, label %vt100_invalidate_xy.exit

bb.l:                                             ; preds = %bb.k
  store i32 %i.at, ptr %i.ar, align 4
  br label %vt100_invalidate_xy.exit

vt100_invalidate_xy.exit:                         ; preds = %bb.l, %bb.k, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @vt100_set_image(ptr nofree noundef captures(none) initializes((0, 8)) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = tail call i32 @pixman_image_get_width(ptr noundef %1) #10
  %i.b = sdiv i32 %i.a, 8                         ; 4 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = tail call i32 @pixman_image_get_height(ptr noundef %i.c) #10
  %i.e = sdiv i32 %i.d, 16                        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4              ; 4 uses
  %i.h = icmp eq i32 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp eq i32 %i.e, %i.j
  br i1 %i.k, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i32 %i.b, ptr %i.f, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.e, ptr %i.l, align 8
  %i.m = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %i.g) ; 17 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = mul i32 %i.o, %i.b
  %i.q = add i32 %i.p, 1
  %i.r = sext i32 %i.q to i64
  %i.s = tail call noalias ptr @g_malloc_n(i64 noundef %i.r, i64 noundef 3) #12 ; 4 uses
  %i.t = load i32, ptr %i.n, align 4              ; 3 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph77, label %._crit_edge78

.lr.ph77:                                         ; preds = %bb.c
  %i.v = icmp sgt i32 %i.m, 0
  br i1 %i.v, label %.lr.ph77.split.us, label %.lr.ph77.split

.lr.ph77.split.us:                                ; preds = %.lr.ph77
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = load i32, ptr %i.f, align 4              ; 6 uses
  %i.y = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.z = icmp slt i32 %i.m, %i.x
  %wide.trip.count102 = zext nneg i32 %i.t to i64 ; 2 uses
  br i1 %i.z, label %.lr.ph77.split.us.split.us.preheader, label %.lr.ph77.split.us.split.preheader

.lr.ph77.split.us.split.preheader:                ; preds = %.lr.ph77.split.us
  %xtraiter118 = and i32 %i.m, 3                  ; 3 uses
  %i.aa = icmp ult i32 %i.m, 4
  %unroll_iter = and i32 %i.m, 2147483644
  %lcmp.mod119.not = icmp eq i32 %xtraiter118, 0
  %lcmp.mod120 = icmp ne i32 %xtraiter118, 0
  br label %.lr.ph77.split.us.split

.lr.ph77.split.us.split.us.preheader:             ; preds = %.lr.ph77.split.us
  %i.ab = sub i32 %i.x, %i.m
  %xtraiter122 = and i32 %i.m, 3                  ; 3 uses
  %i.ac = icmp ult i32 %i.m, 4
  %unroll_iter127 = and i32 %i.m, 2147483644
  %lcmp.mod124.not = icmp eq i32 %xtraiter122, 0
  %lcmp.mod126 = icmp ne i32 %xtraiter122, 0
  %xtraiter129 = and i32 %i.ab, 7                 ; 2 uses
  %lcmp.mod130.not = icmp eq i32 %xtraiter129, 0
  %i.ad = sub i32 %i.m, %i.x
  %i.ae = icmp ugt i32 %i.ad, -8
  br label %.lr.ph77.split.us.split.us

.lr.ph77.split.us.split.us:                       ; preds = %.lr.ph77.split.us.split.us.preheader, %._crit_edge.us.us
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %._crit_edge.us.us ], [ 0, %.lr.ph77.split.us.split.us.preheader ] ; 2 uses
  %i.af = trunc nuw nsw i64 %indvars.iv98 to i32  ; 2 uses
  %i.ag = mul i32 %i.x, %i.af
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [3 x i8], ptr %i.s, i64 %i.ah ; 2 uses
  %i.aj = mul i32 %i.g, %i.af
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [3 x i8], ptr %i.y, i64 %i.ak ; 2 uses
  br i1 %i.ac, label %.epil.preheader121, label %.lr.ph77.split.us.split.us.new

.lr.ph77.split.us.split.us.new:                   ; preds = %.lr.ph77.split.us.split.us, %.lr.ph77.split.us.split.us.new
  %.072.us.us = phi ptr [ %i.as, %.lr.ph77.split.us.split.us.new ], [ %i.ai, %.lr.ph77.split.us.split.us ] ; 5 uses
  %.06571.us.us = phi ptr [ %i.at, %.lr.ph77.split.us.split.us.new ], [ %i.al, %.lr.ph77.split.us.split.us ] ; 5 uses
  %niter128 = phi i32 [ %niter128.next.3, %.lr.ph77.split.us.split.us.new ], [ 0, %.lr.ph77.split.us.split.us ]
  %i.am = getelementptr inbounds nuw i8, ptr %.072.us.us, i64 3
  %i.an = getelementptr inbounds nuw i8, ptr %.06571.us.us, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.072.us.us, ptr noundef nonnull align 1 dereferenceable(3) %.06571.us.us, i64 3, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %.072.us.us, i64 6
  %i.ap = getelementptr inbounds nuw i8, ptr %.06571.us.us, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.am, ptr noundef nonnull align 1 dereferenceable(3) %i.an, i64 3, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %.072.us.us, i64 9
  %i.ar = getelementptr inbounds nuw i8, ptr %.06571.us.us, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ao, ptr noundef nonnull align 1 dereferenceable(3) %i.ap, i64 3, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %.072.us.us, i64 12 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.06571.us.us, i64 12 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aq, ptr noundef nonnull align 1 dereferenceable(3) %i.ar, i64 3, i1 false)
  %niter128.next.3 = add i32 %niter128, 4         ; 2 uses
  %niter128.ncmp.3 = icmp eq i32 %niter128.next.3, %unroll_iter127
  br i1 %niter128.ncmp.3, label %.loopexit.us.us.preheader.unr-lcssa, label %.lr.ph77.split.us.split.us.new, !llvm.loop !14

.loopexit.us.us.preheader.unr-lcssa:              ; preds = %.lr.ph77.split.us.split.us.new
  br i1 %lcmp.mod124.not, label %.loopexit.us.us.preheader, label %.epil.preheader121

.epil.preheader121:                               ; preds = %.loopexit.us.us.preheader.unr-lcssa, %.lr.ph77.split.us.split.us
  %.072.us.us.epil.init = phi ptr [ %i.ai, %.lr.ph77.split.us.split.us ], [ %i.as, %.loopexit.us.us.preheader.unr-lcssa ]
  %.06571.us.us.epil.init = phi ptr [ %i.al, %.lr.ph77.split.us.split.us ], [ %i.at, %.loopexit.us.us.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod126)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader121
  %.072.us.us.epil = phi ptr [ %.072.us.us.epil.init, %.epil.preheader121 ], [ %i.au, %bb.d ] ; 2 uses
  %.06571.us.us.epil = phi ptr [ %.06571.us.us.epil.init, %.epil.preheader121 ], [ %i.av, %bb.d ] ; 2 uses
  %epil.iter123 = phi i32 [ 0, %.epil.preheader121 ], [ %epil.iter123.next, %bb.d ]
  %i.au = getelementptr inbounds nuw i8, ptr %.072.us.us.epil, i64 3 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.06571.us.us.epil, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.072.us.us.epil, ptr noundef nonnull align 1 dereferenceable(3) %.06571.us.us.epil, i64 3, i1 false)
  %epil.iter123.next = add i32 %epil.iter123, 1   ; 2 uses
  %epil.iter123.cmp.not = icmp eq i32 %epil.iter123.next, %xtraiter122
  br i1 %epil.iter123.cmp.not, label %.loopexit.us.us.preheader, label %bb.d, !llvm.loop !15

.loopexit.us.us.preheader:                        ; preds = %bb.d, %.loopexit.us.us.preheader.unr-lcssa
  %.lcssa = phi ptr [ %i.as, %.loopexit.us.us.preheader.unr-lcssa ], [ %i.au, %bb.d ] ; 2 uses
  br i1 %lcmp.mod130.not, label %.loopexit.us.us.prol.loopexit, label %.loopexit.us.us.prol

.loopexit.us.us.prol:                             ; preds = %.loopexit.us.us.preheader, %.loopexit.us.us.prol
  %.274.us.us.prol = phi ptr [ %i.ax, %.loopexit.us.us.prol ], [ %.lcssa, %.loopexit.us.us.preheader ] ; 3 uses
  %.16773.us.us.prol = phi i32 [ %i.ay, %.loopexit.us.us.prol ], [ %i.m, %.loopexit.us.us.preheader ]
  %prol.iter131 = phi i32 [ %prol.iter131.next, %.loopexit.us.us.prol ], [ 0, %.loopexit.us.us.preheader ]
  store i8 32, ptr %.274.us.us.prol, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.274.us.us.prol, i64 1
  store i16 7, ptr %i.aw, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.274.us.us.prol, i64 3 ; 2 uses
  %i.ay = add nuw nsw i32 %.16773.us.us.prol, 1   ; 2 uses
  %prol.iter131.next = add i32 %prol.iter131, 1   ; 2 uses
  %prol.iter131.cmp.not = icmp eq i32 %prol.iter131.next, %xtraiter129
  br i1 %prol.iter131.cmp.not, label %.loopexit.us.us.prol.loopexit, label %.loopexit.us.us.prol, !llvm.loop !17

.loopexit.us.us.prol.loopexit:                    ; preds = %.loopexit.us.us.prol, %.loopexit.us.us.preheader
  %.274.us.us.unr = phi ptr [ %.lcssa, %.loopexit.us.us.preheader ], [ %i.ax, %.loopexit.us.us.prol ]
  %.16773.us.us.unr = phi i32 [ %i.m, %.loopexit.us.us.preheader ], [ %i.ay, %.loopexit.us.us.prol ]
  br i1 %i.ae, label %._crit_edge.us.us, label %.loopexit.us.us

.loopexit.us.us:                                  ; preds = %.loopexit.us.us.prol.loopexit, %.loopexit.us.us
  %.274.us.us = phi ptr [ %i.bo, %.loopexit.us.us ], [ %.274.us.us.unr, %.loopexit.us.us.prol.loopexit ] ; 17 uses
  %.16773.us.us = phi i32 [ %i.bp, %.loopexit.us.us ], [ %.16773.us.us.unr, %.loopexit.us.us.prol.loopexit ]
  store i8 32, ptr %.274.us.us, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %.274.us.us, i64 1
  store i16 7, ptr %i.az, align 1
end_hunk_0
begin_hunk_1_@vt100_fini:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not13 = icmp eq ptr %i.d, null
  br i1 %.not13, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store ptr %i.c, ptr %i.e, align 8
  %.pre = load ptr, ptr %i.a, align 8
  %.pre14 = load ptr, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store ptr %i.c, ptr getelementptr inbounds nuw (i8, ptr @vt100s, i64 8), align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = phi ptr [ %i.c, %bb.d ], [ %.pre14, %bb.c ]
  %i.g = phi ptr [ null, %bb.d ], [ %.pre, %bb.c ]
  store ptr %i.g, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  tail call void @fifo8_destroy(ptr noundef nonnull %i.h) #10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8
  tail call void @g_free(ptr noundef %i.j) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

declare void @fifo8_destroy(ptr noundef) local_unnamed_addr #2

declare i32 @pixman_image_fill_rectangles(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare ptr @qemu_pixman_glyph_from_vgafont(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @qemu_pixman_glyph_render(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @unicode_to_cp437(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @vt100_put_lf(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.pixman_color, align 8       ; 4 uses
  %2 = alloca %struct.pixman_rectangle16, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %.not = icmp slt i32 %i.c, %i.e
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.f, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %._crit_edge71

._crit_edge71:                                    ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = add i32 %i.h, 1                          ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = icmp eq i32 %i.l, %i.n
  %spec.store.select = select i1 %i.o, i32 0, i32 %i.l ; 2 uses
  store i32 %spec.store.select, ptr %i.g, align 4
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge71, %bb.c
  %i.p = phi i32 [ %i.h, %._crit_edge71 ], [ %spec.store.select, %bb.c ]
  %i.q = phi i32 [ %.pre, %._crit_edge71 ], [ %i.n, %bb.c ] ; 3 uses
  %i.r = add i32 %i.j, 1                          ; 2 uses
  %i.s = icmp eq i32 %i.r, %i.q
  %spec.store.select64 = select i1 %i.s, i32 0, i32 %i.r ; 3 uses
  store i32 %spec.store.select64, ptr %i.i, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp slt i32 %i.u, %i.q
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = add nsw i32 %i.u, 1
  store i32 %i.w, ptr %i.t, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.y = load i32, ptr %i.x, align 4              ; 3 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = add i32 %i.f, %spec.store.select64
  %i.ad = srem i32 %i.ac, %i.q
  %i.ae = mul i32 %i.y, %i.ad
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [3 x i8], ptr %i.ab, i64 %i.af
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.069 = phi ptr [ %i.ai, %.lr.ph ], [ %i.ag, %.lr.ph.preheader ] ; 3 uses
  %.06068 = phi i32 [ %i.aj, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  store i8 32, ptr %.069, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %.069, i64 1
  store i16 7, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.069, i64 3
  %i.aj = add nuw nsw i32 %.06068, 1              ; 2 uses
  %i.ak = load i32, ptr %i.x, align 4             ; 2 uses
  %i.al = icmp slt i32 %i.aj, %i.ak
  br i1 %i.al, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !41

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre72 = load i32, ptr %i.g, align 4
  %.pre73 = load i32, ptr %i.i, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %i.am = phi i32 [ %spec.store.select64, %bb.f ], [ %.pre73, %._crit_edge.loopexit ]
  %i.an = phi i32 [ %i.p, %bb.f ], [ %.pre72, %._crit_edge.loopexit ]
  %.lcssa = phi i32 [ %i.y, %bb.f ], [ %i.ak, %._crit_edge.loopexit ] ; 2 uses
  %i.ao = icmp eq i32 %i.an, %i.am
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.aq, align 8
  %i.ar = add i32 %.lcssa, -1
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.ar, ptr %i.as, align 4
  %i.at = load i32, ptr %i.d, align 8             ; 2 uses
  %i.au = add i32 %i.at, -1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.au, ptr %i.av, align 4
  %i.aw = load ptr, ptr %0, align 8               ; 2 uses
  %.tr = trunc i32 %.lcssa to i16
  %i.ax = shl i16 %.tr, 3
  %.tr65 = trunc i32 %i.at to i16
  %i.ay = shl i16 %.tr65, 4
  %i.az = add i16 %i.ay, -16
  tail call void @pixman_image_composite(i32 noundef 1, ptr noundef %i.aw, ptr noundef null, ptr noundef %i.aw, i16 noundef signext 0, i16 noundef signext 16, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0, i16 noundef zeroext %i.ax, i16 noundef zeroext %i.az) #10
  %i.ba = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 -281474976710656, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store i64 4503599627370496, ptr %2, align 8, !annotation !7
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.bc = load <2 x i32>, ptr %i.x, align 4
  %i.bd = trunc <2 x i32> %i.bc to <2 x i16>
  %i.be = shl <2 x i16> %i.bd, <i16 3, i16 4>
  %i.bf = add <2 x i16> %i.be, <i16 0, i16 -16>
  %i.bg = shufflevector <2 x i16> %i.bf, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %i.bg, ptr %i.bb, align 2
  %i.bh = call i32 @pixman_image_fill_rectangles(i32 noundef 1, ptr noundef %i.ba, ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull %2) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %i.bj, align 4
  %i.bk = load i32, ptr %i.x, align 4
  %i.bl = shl i32 %i.bk, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.bl, ptr %i.bm, align 8
  %i.bn = load i32, ptr %i.d, align 8
  %i.bo = shl i32 %i.bn, 4
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.bo, ptr %i.bp, align 4
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g, %bb.a
  ret void
}

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @vt100_update_xy(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.pixman_color, align 8       ; 4 uses
  %4 = alloca %struct.pixman_color, align 8       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %1)
  store i32 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = tail call i32 @llvm.smax.i32(i32 %i.e, i32 %1)
  store i32 %i.f, ptr %i.d, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = tail call i32 @llvm.smin.i32(i32 %i.h, i32 %2)
  store i32 %i.i, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = tail call i32 @llvm.smax.i32(i32 %i.k, i32 %2)
  store i32 %i.l, ptr %i.j, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load i32, ptr %i.m, align 8
  %i.o = add i32 %i.n, %2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %i.r = srem i32 %i.o, %i.q                      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.t = load i32, ptr %i.s, align 4
  %i.u = sub i32 %i.r, %i.t                       ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  %i.w = select i1 %i.v, i32 %i.q, i32 0
  %spec.select = add i32 %i.w, %i.u               ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i32, ptr %i.x, align 8
  %i.z = icmp slt i32 %spec.select, %i.y
  br i1 %i.z, label %bb.b, label %vt100_invalidate_xy.exit

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ab = load i32, ptr %i.aa, align 4            ; 3 uses
  %.not = icmp slt i32 %1, %i.ab
  %i.ac = add i32 %i.ab, -1
  %spec.select60 = select i1 %.not, i32 %1, i32 %i.ac ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = mul i32 %i.ab, %i.r
  %i.ag = add i32 %spec.select60, %i.af
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [3 x i8], ptr %i.ae, i64 %i.ah ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %5 = load ptr, ptr %0, align 8                  ; 2 uses
  %.not.i = icmp eq ptr %5, null
  br i1 %.not.i, label %6, label %7

6:                                                ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 70, ptr noundef nonnull @__PRETTY_FUNCTION__.vt100_putcharxy) #11
  unreachable

7:                                                ; preds = %bb.b
  %8 = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %9 = load i16, ptr %8, align 1                  ; 4 uses
  %10 = and i16 %9, 2048
  %.not16.i = icmp eq i16 %10, 0                  ; 2 uses
  %11 = lshr i16 %9, 8
  %12 = and i16 %11, 1
  %13 = zext nneg i16 %12 to i64
  %14 = getelementptr inbounds nuw [64 x i8], ptr @color_table_rgb, i64 %13 ; 2 uses
  %15 = and i16 %9, 15
  %16 = zext nneg i16 %15 to i64
  %17 = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %16 ; 2 uses
  %18 = lshr i16 %9, 4
  %19 = and i16 %18, 15
  %20 = zext nneg i16 %19 to i64
  %21 = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %20 ; 2 uses
  %..i = select i1 %.not16.i, ptr %17, ptr %21
  %.20.i = select i1 %.not16.i, ptr %21, ptr %17
  %.sink.i = load i64, ptr %.20.i, align 8
  %.sink18.i = load i64, ptr %..i, align 8
  store i64 %.sink18.i, ptr %3, align 8
  store i64 %.sink.i, ptr %4, align 8
  %22 = zext i8 %i.aj to i64
  %23 = getelementptr inbounds nuw [8 x i8], ptr @vt100_putcharxy.glyphs, i64 %22 ; 2 uses
  %24 = load ptr, ptr %23, align 8                ; 2 uses
  %.not17.i = icmp eq ptr %24, null
  br i1 %.not17.i, label %25, label %vt100_putcharxy.exit

25:                                               ; preds = %7
  %26 = zext i8 %i.aj to i32
  %27 = tail call ptr @qemu_pixman_glyph_from_vgafont(i32 noundef 16, ptr noundef nonnull @vgafont16, i32 noundef %26) #10 ; 2 uses
  store ptr %27, ptr %23, align 8
  %.pre.i = load ptr, ptr %0, align 8
  br label %vt100_putcharxy.exit

vt100_putcharxy.exit:                             ; preds = %7, %25
  %28 = phi ptr [ %.pre.i, %25 ], [ %5, %7 ]
  %29 = phi ptr [ %27, %25 ], [ %24, %7 ]
  call void @qemu_pixman_glyph_render(ptr noundef %29, ptr noundef %28, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %spec.select60, i32 noundef %spec.select, i32 noundef 8, i32 noundef 16) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %31 = load i32, ptr %30, align 8
  %32 = shl i32 %spec.select60, 3                 ; 3 uses
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %bb.c, label %bb.d

bb.c:                                             ; preds = %vt100_putcharxy.exit
  store i32 %32, ptr %30, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %vt100_putcharxy.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = shl i32 %spec.select, 4                 ; 3 uses
  %i.an = icmp sgt i32 %i.al, %i.am
  br i1 %i.an, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.am, ptr %i.ak, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = add i32 %32, 8                          ; 2 uses
  %i.ar = icmp slt i32 %i.ap, %i.aq
  br i1 %i.ar, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %i.aq, ptr %i.ao, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4
  %i.au = add i32 %i.am, 16                       ; 2 uses
  %i.av = icmp slt i32 %i.at, %i.au
  br i1 %i.av, label %bb.i, label %vt100_invalidate_xy.exit

bb.i:                                             ; preds = %bb.h
  store i32 %i.au, ptr %i.as, align 4
  br label %vt100_invalidate_xy.exit

vt100_invalidate_xy.exit:                         ; preds = %bb.i, %bb.h, %bb.a
  ret void
}

declare void @pixman_image_composite(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #2

declare i32 @fifo8_num_free(ptr noundef) local_unnamed_addr #2

declare void @fifo8_push_all(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @qemu_clock_get_ns(i32 noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #7

declare void @timer_init_full(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #8

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"auto-init"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9, !11}
!11 = !{!"llvm.loop.unswitch.partial.disable"}
!12 = distinct !{null}
!13 = !{i8 0, i8 2}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !9}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}
!22 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9, !11}
!25 = distinct !{!25, !9}
!26 = distinct !{!26, !9, !11}
!27 = distinct !{!27, !9}
!28 = distinct !{!28, !9, !11}
!29 = distinct !{!29, !9}
!30 = distinct !{!30, !9}
!31 = distinct !{!31, !9}
!32 = distinct !{!32, !9}
!33 = distinct !{!33, !9}
!34 = distinct !{!34, !9}
!35 = distinct !{null}
!36 = distinct !{!36, !9}
!37 = distinct !{!37, !9}
!38 = distinct !{!38, !9}
!39 = !{}
!40 = distinct !{!40, !9}
!41 = distinct !{!41, !9}
end_hunk_1
