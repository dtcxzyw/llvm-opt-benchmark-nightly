inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [329 x i8] c"MZ\90\00\02\00\00\00\04\00\0F\00\FF\FF\00\00\B0\00\00\00\00\00\00\00@\00\1A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\D0\00\00\00\0E\1F\B4\09\BA\0D\00\CD!\B4L\CD!This file was created by ClamAV for internal use and should not be run.\0D\0AClamAV - A GPL virus scanner - http://www.clamav.net\0D\0A$\00\00\00PE\00\00L\01\FF\FFCLAM\00\00\00\00\00\00\00\00\E0\00\83\8F\0B\01\00\00\00\10\00\00\00\10\00\00\00\00\00\00\FF\FF\FF\FF\00\10\00\00\00\10\00\00\FF\FF\FF\FF\00\10\00\00\00\02\00\00\01\00\00\00\00\00\00\00\03\00\0A\00\00\00\00\00\00\10\00\00\00\04\00\00\00\00\00\00\02\00\00\00\00\00\10\00\00\10\00\00\00\00\10\00\00\10\00\00\00\00\00\00\10\00\00\00\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c".clam%.2d\00", align 1
@.str.3 = private unnamed_addr constant [98 x i8] c"More sections than expect (%d). The section number in the rebuilt pe section name was truncated.\0A\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @cli_rebuildpe(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @cli_rebuildpe_align(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @cli_rebuildpe_align(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = mul nsw i32 %2, 40                       ; 2 uses
  %i.b = add nsw i32 %i.a, 456                    ; 2 uses
  %i.c = sdiv i32 %i.b, 512
  %i.d = and i32 %i.b, 504
  %i.e = icmp ne i32 %i.d, 0
  %i.f = zext i1 %i.e to i32
  %i.g = add nsw i32 %i.c, %i.f                   ; 2 uses
  %i.h = shl nsw i32 %i.g, 9                      ; 2 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !8
  %i.j = and i32 %i.g, 7
  %.not = icmp eq i32 %i.j, 0
  %i.k = select i1 %.not, i32 0, i32 4096
  %i.l = add i32 %i.k, %i.h
  %i.m = and i32 %i.l, -4096
  %i.n = icmp ugt i32 %i.i, %i.m                  ; 3 uses
  %i.o = zext i1 %i.n to i32
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = add i32 %i.a, 496                        ; 2 uses
  %i.q = sdiv i32 %i.p, 512
  %i.r = and i32 %i.p, 504
  %i.s = icmp ne i32 %i.r, 0
  %i.t = zext i1 %i.s to i32
  %i.u = add nsw i32 %i.q, %i.t
  %i.v = shl nsw i32 %i.u, 9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0190 = phi i32 [ %i.v, %bb.b ], [ %i.h, %bb.a ] ; 7 uses
  %i.w = add nsw i32 %2, %i.o                     ; 2 uses
  %i.x = icmp sgt i32 %i.w, 96
  br i1 %i.x, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not204 = icmp eq i32 %8, 0                    ; 2 uses
  %i.y = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %.not204, label %.preheader, label %.preheader221

.preheader221:                                    ; preds = %bb.d
  br i1 %i.y, label %.lr.ph, label %.loopexit.thread

.lr.ph:                                           ; preds = %.preheader221
  %i.z = zext i32 %8 to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.e

.preheader:                                       ; preds = %bb.d
  br i1 %i.y, label %.lr.ph227.preheader, label %.loopexit.thread

.lr.ph227.preheader:                              ; preds = %.preheader
  %wide.trip.count244 = zext nneg i32 %2 to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph227.preheader273, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph227.preheader
  %n.vec = and i64 %wide.trip.count244, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %36, %vector.body ]
  %vec.phi271 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %37, %vector.body ]
  %9 = getelementptr inbounds nuw [36 x i8], ptr %1, i64 %index
  %10 = getelementptr inbounds nuw [36 x i8], ptr %1, i64 %index
  %11 = getelementptr inbounds nuw [36 x i8], ptr %1, i64 %index
  %i.aa = getelementptr inbounds nuw [36 x i8], ptr %1, i64 %index
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 12
  %12 = getelementptr inbounds nuw i8, ptr %10, i64 48
  %13 = getelementptr inbounds nuw i8, ptr %11, i64 84
  %14 = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  %15 = load i32, ptr %i.ab, align 4, !tbaa !10
  %16 = load i32, ptr %12, align 4, !tbaa !10
  %17 = insertelement <2 x i32> poison, i32 %15, i64 0
  %18 = insertelement <2 x i32> %17, i32 %16, i64 1 ; 2 uses
  %i.ac = load i32, ptr %13, align 4, !tbaa !10
  %19 = load i32, ptr %14, align 4, !tbaa !10
  %20 = insertelement <2 x i32> poison, i32 %i.ac, i64 0
  %21 = insertelement <2 x i32> %20, i32 %19, i64 1 ; 2 uses
  %22 = lshr <2 x i32> %18, splat (i32 9)
  %23 = lshr <2 x i32> %21, splat (i32 9)
  %24 = zext nneg <2 x i32> %22 to <2 x i64>
  %25 = zext nneg <2 x i32> %23 to <2 x i64>
  %26 = and <2 x i32> %18, splat (i32 511)
  %27 = and <2 x i32> %21, splat (i32 511)
  %28 = icmp ne <2 x i32> %26, zeroinitializer
  %29 = icmp ne <2 x i32> %27, zeroinitializer
  %30 = zext <2 x i1> %28 to <2 x i64>
  %31 = zext <2 x i1> %29 to <2 x i64>
  %32 = add nuw nsw <2 x i64> %30, %24
  %33 = add nuw nsw <2 x i64> %31, %25
  %34 = shl nuw nsw <2 x i64> %32, splat (i64 9)
  %35 = shl nuw nsw <2 x i64> %33, splat (i64 9)
  %36 = add <2 x i64> %34, %vec.phi               ; 2 uses
  %37 = add <2 x i64> %35, %vec.phi271            ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %37, %36
  %38 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count244
  br i1 %cmp.n, label %.loopexit, label %.lr.ph227.preheader273

.lr.ph227.preheader273:                           ; preds = %.lr.ph227.preheader, %middle.block
  %indvars.iv241.ph = phi i64 [ 0, %.lr.ph227.preheader ], [ %n.vec, %middle.block ]
  %.0195225.ph = phi i64 [ 0, %.lr.ph227.preheader ], [ %38, %middle.block ]
  br label %.lr.ph227

.lr.ph227:                                        ; preds = %.lr.ph227.preheader273, %.lr.ph227
  %indvars.iv241 = phi i64 [ %indvars.iv.next242, %.lr.ph227 ], [ %indvars.iv241.ph, %.lr.ph227.preheader273 ] ; 2 uses
  %.0195225.a = phi i64 [ %i.ak, %.lr.ph227 ], [ %.0195225.ph, %.lr.ph227.preheader273 ]
  %i.ae = getelementptr inbounds nuw [36 x i8], ptr %1, i64 %indvars.iv241
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !10 ; 2 uses
  %39 = lshr i32 %i.ag, 9
  %.zext = zext nneg i32 %39 to i64
  %40 = and i32 %i.ag, 511
  %i.ah = icmp ne i32 %40, 0
  %i.ai = zext i1 %i.ah to i64
  %i.aj = add nuw nsw i64 %i.ai, %.zext
  %41 = shl nuw nsw i64 %i.aj, 9
  %i.ak = add i64 %41, %.0195225.a                ; 2 uses
  %indvars.iv.next242 = add nuw nsw i64 %indvars.iv241, 1 ; 2 uses
  %exitcond245.not = icmp eq i64 %indvars.iv.next242, %wide.trip.count244
  br i1 %exitcond245.not, label %.loopexit, label %.lr.ph227, !llvm.loop !14

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.1196223 = phi i64 [ 0, %.lr.ph ], [ %i.as, %bb.e ]
  %i.al = getelementptr inbounds nuw [36 x i8], ptr %1, i64 %indvars.iv
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !10 ; 2 uses
  %42 = udiv i32 %i.an, %8
  %.zext216 = zext i32 %42 to i64
  %43 = urem i32 %i.an, %8
  %44 = icmp ne i32 %43, 0
  %i.ao = zext i1 %44 to i64
  %i.ap = add nuw nsw i64 %i.ao, %.zext216
  %45 = mul nuw i64 %i.ap, %i.z                   ; 2 uses
  %i.aq = and i64 %45, 511
  %.not220 = icmp eq i64 %i.aq, 0
  %46 = select i1 %.not220, i64 0, i64 512
  %i.ar = add nuw i64 %46, %45
  %47 = and i64 %i.ar, -512
  %i.as = add i64 %47, %.1196223                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %bb.e, %.lr.ph227, %middle.block
  %.2197 = phi i64 [ %i.ak, %.lr.ph227 ], [ %38, %middle.block ], [ %i.as, %bb.e ] ; 2 uses
  %i.at = icmp ugt i64 %.2197, 1073741824
  br i1 %i.at, label %bb.n, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.preheader221, %.preheader, %.loopexit
  %.2197264 = phi i64 [ %.2197, %.loopexit ], [ 0, %.preheader ], [ 0, %.preheader221 ]
  %i.au = zext i32 %.0190 to i64
  %i.av = add nuw nsw i64 %.2197264, %i.au        ; 2 uses
  %i.aw = icmp samesign ugt i64 %i.av, 1073741824
  br i1 %i.aw, label %bb.n, label %bb.f

bb.f:                                             ; preds = %.loopexit.thread
  %i.ax = tail call ptr @cli_max_calloc(i64 noundef %i.av, i64 noundef 1) #7 ; 19 uses
  %.not205 = icmp eq ptr %i.ax, null
  br i1 %.not205, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(328) %i.ax, ptr noundef nonnull align 1 dereferenceable(328) @.str, i64 328, i1 false)
  %i.ay = and i32 %.0190, 3584
  %.not206 = icmp eq i32 %i.ay, 0
  %i.az = select i1 %.not206, i32 0, i32 4096
  %i.ba = add i32 %i.az, %.0190
  %i.bb = and i32 %i.ba, -4096                    ; 5 uses
  %i.bc = trunc i32 %i.w to i16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 214
  store i16 %i.bc, ptr %i.bd, align 2, !tbaa !15
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 248
  store i32 %4, ptr %i.be, align 4, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 260
  store i32 %3, ptr %i.bf, align 4, !tbaa !19
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 292
  store i32 %.0190, ptr %i.bg, align 4, !tbaa !20
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 328
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.bh, i8 0, i64 128, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 344
  store i32 %5, ptr %i.bi, align 4, !tbaa !21
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 348
  store i32 %6, ptr %i.bj, align 4, !tbaa !21
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 456 ; 2 uses
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bk, ptr noundef nonnull align 1 dereferenceable(6) @.str.1, i64 6, i1 false)
  %i.bl = load i32, ptr %1, align 4, !tbaa !8
  %i.bm = sub i32 %i.bl, %i.bb
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 464
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !21
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ax, i64 468
  store i32 %i.bb, ptr %i.bo, align 4, !tbaa !21
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 492
  store i32 -1, ptr %i.bp, align 4, !tbaa !21
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ax, i64 496
  %i.br = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  %i.bs = sub i32 %i.br, %i.bb
  %i.bt = and i32 %i.br, 4095
  %.not207 = icmp eq i32 %i.bt, 0
  %i.bu = select i1 %.not207, i32 0, i32 4096
  %i.bv = add i32 %i.bs, %i.bu
  %i.bw = and i32 %i.bv, -4096
  %i.bx = add i32 %i.bw, %i.bb
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0193 = phi ptr [ %i.bq, %bb.h ], [ %i.bk, %bb.g ] ; 2 uses
  %.0186 = phi i32 [ %i.bx, %bb.h ], [ %i.bb, %bb.g ] ; 3 uses
  %i.by = icmp sgt i32 %2, 0
  br i1 %i.by, label %.lr.ph233, label %._crit_edge

.lr.ph233:                                        ; preds = %bb.i
  %wide.trip.count254 = zext nneg i32 %2 to i64   ; 2 uses
  br i1 %.not204, label %.lr.ph233.split.us, label %.lr.ph233.split

.lr.ph233.split.us:                               ; preds = %.lr.ph233, %bb.k
  %indvars.iv251 = phi i64 [ %indvars.iv.next252, %bb.k ], [ 0, %.lr.ph233 ] ; 3 uses
  %.1232.us = phi i32 [ %.2.us, %bb.k ], [ %.0186, %.lr.ph233 ]
  %.1191230.us = phi i32 [ %.2192.us, %bb.k ], [ %.0190, %.lr.ph233 ] ; 3 uses
  %.1194229.us = phi ptr [ %i.de, %bb.k ], [ %.0193, %.lr.ph233 ] ; 7 uses
  %indvars.iv.next252 = add nuw nsw i64 %indvars.iv251, 1 ; 3 uses
  %i.bz = trunc nuw nsw i64 %indvars.iv.next252 to i32
  %i.ca = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.1194229.us, i64 noundef 8, ptr noundef nonnull @.str.2, i32 noundef %i.bz) #7
  %i.cb = icmp slt i32 %i.ca, 0
  br i1 %i.cb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph233.split.us
  %i.cc = trunc nuw nsw i64 %indvars.iv251 to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3, i32 noundef %i.cc) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph233.split.us
  %i.cd = getelementptr inbounds nuw [36 x i8], ptr %1, i64 %indvars.iv251 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !22
  %i.cg = getelementptr inbounds nuw i8, ptr %.1194229.us, i64 8
  store i32 %i.cf, ptr %i.cg, align 1, !tbaa !21
  %i.ch = load i32, ptr %i.cd, align 4, !tbaa !8
  %i.ci = getelementptr inbounds nuw i8, ptr %.1194229.us, i64 12
  store i32 %i.ch, ptr %i.ci, align 1, !tbaa !21
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 12 ; 3 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !10
  %i.cl = getelementptr inbounds nuw i8, ptr %.1194229.us, i64 16
  store i32 %i.ck, ptr %i.cl, align 1, !tbaa !21
  %i.cm = getelementptr inbounds nuw i8, ptr %.1194229.us, i64 20
  store i32 %.1191230.us, ptr %i.cm, align 1, !tbaa !21
  %i.cn = getelementptr inbounds nuw i8, ptr %.1194229.us, i64 36
  store i32 -1, ptr %i.cn, align 1, !tbaa !21
  %i.co = zext i32 %.1191230.us to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !23
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 %i.cs
  %i.cu = load i32, ptr %i.cj, align 4, !tbaa !10
  %i.cv = zext i32 %i.cu to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cp, ptr align 1 %i.ct, i64 %i.cv, i1 false)
  %i.cw = load i32, ptr %i.cj, align 4, !tbaa !10 ; 2 uses
  %i.cx = and i32 %i.cw, 511
  %.not208.us = icmp eq i32 %i.cx, 0
  %i.cy = select i1 %.not208.us, i32 0, i32 512
  %i.cz = add i32 %i.cy, %i.cw
  %i.da = load i32, ptr %i.ce, align 4, !tbaa !22 ; 2 uses
  %i.db = and i32 %i.da, 4095
  %.not209.us = icmp eq i32 %i.db, 0
  %i.dc = select i1 %.not209.us, i32 0, i32 4096
  %i.dd = add i32 %i.dc, %i.da
  %i.de = getelementptr inbounds nuw i8, ptr %.1194229.us, i64 40
  %.pn212.us = and i32 %i.dd, -4096
  %.2.us = add i32 %.pn212.us, %.1232.us          ; 2 uses
  %.pn.us = and i32 %i.cz, -512
  %.2192.us = add i32 %.pn.us, %.1191230.us       ; 2 uses
  %exitcond255.not = icmp eq i64 %indvars.iv.next252, %wide.trip.count254
  br i1 %exitcond255.not, label %._crit_edge, label %.lr.ph233.split.us

.lr.ph233.split:                                  ; preds = %.lr.ph233, %bb.m
  %indvars.iv246 = phi i64 [ %indvars.iv.next247, %bb.m ], [ 0, %.lr.ph233 ] ; 3 uses
  %.1232 = phi i32 [ %.2, %bb.m ], [ %.0186, %.lr.ph233 ]
  %.1191230 = phi i32 [ %.2192, %bb.m ], [ %.0190, %.lr.ph233 ] ; 3 uses
  %.1194229 = phi ptr [ %i.fo, %bb.m ], [ %.0193, %.lr.ph233 ] ; 7 uses
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1 ; 3 uses
  %i.df = trunc nuw nsw i64 %indvars.iv.next247 to i32
  %i.dg = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.1194229, i64 noundef 8, ptr noundef nonnull @.str.2, i32 noundef %i.df) #7
  %i.dh = icmp slt i32 %i.dg, 0
  br i1 %i.dh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph233.split
  %i.di = trunc nuw nsw i64 %indvars.iv246 to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3, i32 noundef %i.di) #7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph233.split
  %i.dj = getelementptr inbounds nuw [36 x i8], ptr %1, i64 %indvars.iv246 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !22 ; 2 uses
  %i.dm = udiv i32 %i.dl, %8
  %i.dn = urem i32 %i.dl, %8
  %i.do = icmp ne i32 %i.dn, 0
  %i.dp = zext i1 %i.do to i32
  %i.dq = add i32 %i.dm, %i.dp
  %i.dr = mul i32 %i.dq, %8
  %i.ds = getelementptr inbounds nuw i8, ptr %.1194229, i64 8
  store i32 %i.dr, ptr %i.ds, align 1, !tbaa !21
  %i.dt = load i32, ptr %i.dj, align 4, !tbaa !8  ; 2 uses
  %i.du = udiv i32 %i.dt, %8
  %i.dv = urem i32 %i.dt, %8
  %i.dw = icmp ne i32 %i.dv, 0
  %i.dx = zext i1 %i.dw to i32
  %i.dy = add i32 %i.du, %i.dx
  %i.dz = mul i32 %i.dy, %8
  %i.ea = getelementptr inbounds nuw i8, ptr %.1194229, i64 12
  store i32 %i.dz, ptr %i.ea, align 1, !tbaa !21
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dj, i64 12 ; 3 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !10 ; 2 uses
  %i.ed = udiv i32 %i.ec, %8
  %i.ee = urem i32 %i.ec, %8
  %i.ef = icmp ne i32 %i.ee, 0
  %i.eg = zext i1 %i.ef to i32
  %i.eh = add i32 %i.ed, %i.eg
  %i.ei = mul i32 %i.eh, %8
  %i.ej = getelementptr inbounds nuw i8, ptr %.1194229, i64 16
  store i32 %i.ei, ptr %i.ej, align 1, !tbaa !21
  %i.ek = getelementptr inbounds nuw i8, ptr %.1194229, i64 20
  store i32 %.1191230, ptr %i.ek, align 1, !tbaa !21
  %i.el = getelementptr inbounds nuw i8, ptr %.1194229, i64 36
  store i32 -1, ptr %i.el, align 1, !tbaa !21
  %i.em = zext i32 %.1191230 to i64
  %i.en = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !23
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 %i.eq
  %i.es = load i32, ptr %i.eb, align 4, !tbaa !10
  %i.et = zext i32 %i.es to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.en, ptr align 1 %i.er, i64 %i.et, i1 false)
  %i.eu = load i32, ptr %i.eb, align 4, !tbaa !10 ; 2 uses
  %i.ev = udiv i32 %i.eu, %8
  %i.ew = urem i32 %i.eu, %8
  %i.ex = icmp ne i32 %i.ew, 0
  %i.ey = zext i1 %i.ex to i32
  %i.ez = add i32 %i.ev, %i.ey
  %i.fa = mul i32 %i.ez, %8                       ; 2 uses
  %i.fb = and i32 %i.fa, 511
  %.not210 = icmp eq i32 %i.fb, 0
  %i.fc = select i1 %.not210, i32 0, i32 512
  %i.fd = add i32 %i.fc, %i.fa
  %i.fe = load i32, ptr %i.dk, align 4, !tbaa !22 ; 2 uses
  %i.ff = udiv i32 %i.fe, %8
  %i.fg = urem i32 %i.fe, %8
  %i.fh = icmp ne i32 %i.fg, 0
  %i.fi = zext i1 %i.fh to i32
  %i.fj = add i32 %i.ff, %i.fi
  %i.fk = mul i32 %i.fj, %8                       ; 2 uses
  %i.fl = and i32 %i.fk, 4095
  %.not211 = icmp eq i32 %i.fl, 0
  %i.fm = select i1 %.not211, i32 0, i32 4096
  %i.fn = add i32 %i.fm, %i.fk
  %i.fo = getelementptr inbounds nuw i8, ptr %.1194229, i64 40
  %.pn212 = and i32 %i.fn, -4096
  %.2 = add i32 %.pn212, %.1232                   ; 2 uses
  %.pn = and i32 %i.fd, -512
  %.2192 = add i32 %.pn, %.1191230                ; 2 uses
  %exitcond250.not = icmp eq i64 %indvars.iv.next247, %wide.trip.count254
  br i1 %exitcond250.not, label %._crit_edge, label %.lr.ph233.split

._crit_edge:                                      ; preds = %bb.m, %bb.k, %bb.i
  %.1191.lcssa = phi i32 [ %.0190, %bb.i ], [ %.2192.us, %bb.k ], [ %.2192, %bb.m ]
  %.1.lcssa = phi i32 [ %.0186, %bb.i ], [ %.2.us, %bb.k ], [ %.2, %bb.m ]
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ax, i64 288
  store i32 %.1.lcssa, ptr %i.fp, align 4, !tbaa !24
  %i.fq = zext i32 %.1191.lcssa to i64
  %i.fr = tail call i64 @cli_writen(i32 noundef %7, ptr noundef nonnull %i.ax, i64 noundef %i.fq) #7
  %i.fs = icmp ne i64 %i.fr, -1
  %i.ft = zext i1 %i.fs to i32
  tail call void @free(ptr noundef %i.ax) #7
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %.loopexit.thread, %.loopexit, %bb.c, %._crit_edge
  %.0 = phi i32 [ 0, %.loopexit.thread ], [ 0, %bb.c ], [ 0, %.loopexit ], [ %i.ft, %._crit_edge ], [ 0, %bb.f ]
  ret i32 %.0
}

declare ptr @cli_max_calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #1

declare i64 @cli_writen(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"cli_exe_section", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32}
!10 = !{!9, !5, i64 12}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !13, !12}
!15 = !{!16, !17, i64 6}
!16 = !{!"IMAGE_PE_HEADER", !5, i64 0, !17, i64 4, !17, i64 6, !5, i64 8, !5, i64 12, !5, i64 16, !17, i64 20, !17, i64 22, !17, i64 24, !6, i64 26, !6, i64 27, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !17, i64 64, !17, i64 66, !17, i64 68, !17, i64 70, !17, i64 72, !17, i64 74, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !17, i64 92, !17, i64 94, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116}
!17 = !{!"short", !6, i64 0}
!18 = !{!16, !5, i64 40}
!19 = !{!16, !5, i64 52}
!20 = !{!16, !5, i64 84}
!21 = !{!6, !6, i64 0}
!22 = !{!9, !5, i64 4}
!23 = !{!9, !5, i64 8}
!24 = !{!16, !5, i64 80}
end_hunk_0
