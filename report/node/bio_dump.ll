inline.NumInlined: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"%*s%04x - \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%02x%c\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%02X:\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @BIO_dump_cb(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @BIO_dump_indent_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BIO_dump_indent_cb(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [289 x i8], align 16              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = tail call i32 @llvm.smax.i32(i32 %4, i32 0) ; 2 uses
  %.075 = tail call i32 @llvm.umin.i32(i32 %i.b, i32 64) ; 2 uses
  %i.c = tail call i32 @llvm.umin.i32(i32 %i.b, i32 6)
  %reass.sub = sub nsw i32 %.075, %i.c
  %i.d = add nsw i32 %reass.sub, 3                ; 2 uses
  %i.e = lshr i32 %i.d, 2
  %i.f = sub nsw i32 16, %i.e                     ; 5 uses
  %i.g = sdiv i32 %3, %i.f                        ; 2 uses
  %i.h = mul nsw i32 %i.g, %i.f
  %i.i = icmp slt i32 %i.h, %3
  %i.j = zext i1 %i.i to i32
  %.070 = add nsw i32 %i.g, %i.j                  ; 2 uses
  %i.k = icmp sgt i32 %.070, 0
  br i1 %i.k, label %.lr.ph99, label %._crit_edge100

.lr.ph99:                                         ; preds = %bb.a
  %i.l = icmp ult i32 %i.d, 64                    ; 2 uses
  %i.m = sext i32 %i.f to i64
  %wide.trip.count113 = zext nneg i32 %.070 to i64
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph99, %bb.p
  %indvars.iv110 = phi i64 [ 0, %.lr.ph99 ], [ %indvars.iv.next111, %bb.p ] ; 2 uses
  %.07496 = phi i32 [ 0, %.lr.ph99 ], [ %i.bi, %bb.p ]
  %i.n = trunc nuw nsw i64 %indvars.iv110 to i32
  %i.o = mul nsw i32 %i.f, %i.n                   ; 6 uses
  %i.p = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.a, i64 noundef 289, ptr noundef nonnull @.str, i32 noundef %.075, ptr noundef nonnull @.str.1, i32 noundef %i.o) #6 ; 3 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %._crit_edge100, label %.preheader

.preheader:                                       ; preds = %bb.b
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.r = zext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.r
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %.06987 = phi i32 [ %i.p, %.lr.ph ], [ %.1, %bb.h ] ; 4 uses
  %i.t = zext nneg i32 %.06987 to i64             ; 2 uses
  %i.u = add nsw i32 %.06987, -290
  %i.v = icmp ult i32 %i.u, -4
  br i1 %i.v, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.w = trunc i64 %indvars.iv to i32
  %i.x = add i32 %i.o, %i.w
  %.not83 = icmp slt i32 %i.x, %3
  br i1 %.not83, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.t
  store i32 2105376, ptr %i.y, align 1
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.t
  %i.ac = zext i8 %i.aa to i32
  %i.ad = icmp eq i64 %indvars.iv, 7
  %i.ae = select i1 %i.ad, i32 45, i32 32
  %i.af = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.ab, i64 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %i.ac, i32 noundef %i.ae) #6 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ag = add nuw nsw i32 %.06987, 3
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g
  %.1 = phi i32 [ %i.ag, %bb.g ], [ %.06987, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %.069.lcssa = phi i32 [ %i.p, %.preheader ], [ %.1, %bb.h ] ; 4 uses
  %i.ah = add nsw i32 %.069.lcssa, -290
  %i.ai = icmp ult i32 %i.ah, -3
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.aj = zext nneg i32 %.069.lcssa to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ak, ptr noundef nonnull align 1 dereferenceable(3) @.str.4, i64 3, i1 false) #6
  %i.al = add nuw nsw i32 %.069.lcssa, 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.2 = phi i32 [ %i.al, %bb.i ], [ %.069.lcssa, %._crit_edge ] ; 2 uses
  %.not88 = icmp slt i32 %i.o, %3
  %or.cond8489 = and i1 %i.l, %.not88
  br i1 %or.cond8489, label %.lr.ph93, label %._crit_edge94

.lr.ph93:                                         ; preds = %bb.j
  %i.am = zext i32 %i.o to i64
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %i.am
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph93, %bb.m
  %indvars.iv107 = phi i64 [ 0, %.lr.ph93 ], [ %indvars.iv.next108, %bb.m ] ; 2 uses
  %.391 = phi i32 [ %.2, %.lr.ph93 ], [ %.4, %bb.m ] ; 3 uses
  %i.ao = zext nneg i32 %.391 to i64              ; 2 uses
  %i.ap = and i64 %i.ao, 2147483646
  %.not81 = icmp eq i64 %i.ap, 288
  br i1 %.not81, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv107
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !10  ; 2 uses
  %i.as = add i8 %i.ar, -32
  %or.cond = icmp ult i8 %i.as, 95
  %narrow = select i1 %or.cond, i8 %i.ar, i8 46
  %i.at = add nuw nsw i32 %.391, 1                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ao
  store i8 %narrow, ptr %i.au, align 1, !tbaa !10
  %i.av = zext nneg i32 %i.at to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.av
  store i8 0, ptr %i.aw, align 1, !tbaa !10
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.4 = phi i32 [ %i.at, %bb.l ], [ %.391, %bb.k ] ; 2 uses
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 3 uses
  %i.ax = icmp slt i64 %indvars.iv.next108, %i.m
  %i.ay = trunc i64 %indvars.iv.next108 to i32
  %i.az = add i32 %i.o, %i.ay
  %.not = icmp slt i32 %i.az, %3
  %or.cond84 = and i1 %i.ax, %.not
  br i1 %or.cond84, label %bb.k, label %._crit_edge94, !llvm.loop !13

._crit_edge94:                                    ; preds = %bb.m, %bb.j
  %.3.lcssa = phi i32 [ %.2, %bb.j ], [ %.4, %bb.m ] ; 2 uses
  %i.ba = zext nneg i32 %.3.lcssa to i64          ; 3 uses
  %i.bb = and i64 %i.ba, 2147483646
  %.not82 = icmp eq i64 %i.bb, 288
  br i1 %.not82, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge94
  %i.bc = add nuw nsw i32 %.3.lcssa, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ba
  store i8 10, ptr %i.bd, align 1, !tbaa !10
  %i.be = zext nneg i32 %i.bc to i64              ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.be
  store i8 0, ptr %i.bf, align 1, !tbaa !10
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge94
  %.pre-phi = phi i64 [ %i.be, %bb.n ], [ %i.ba, %._crit_edge94 ]
  %i.bg = call i32 %0(ptr noundef nonnull %i.a, i64 noundef %.pre-phi, ptr noundef %1) #6 ; 3 uses
  %i.bh = icmp slt i32 %i.bg, 0
  br i1 %i.bh, label %._crit_edge100, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = add nuw nsw i32 %i.bg, %.07496          ; 2 uses
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count113
  br i1 %exitcond114.not, label %._crit_edge100, label %bb.b, !llvm.loop !14

._crit_edge100:                                   ; preds = %bb.b, %bb.o, %bb.p, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.bi, %bb.p ], [ %i.bg, %bb.o ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @BIO_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @BIO_dump_fp(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [289 x i8], align 16              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = sdiv i32 %2, 16                          ; 2 uses
  %i.c = shl nsw i32 %i.b, 4
  %i.d = icmp slt i32 %i.c, %2
  %i.e = zext i1 %i.d to i32
  %.070.i = add nsw i32 %i.b, %i.e                ; 2 uses
  %i.f = icmp sgt i32 %.070.i, 0
  br i1 %i.f, label %.lr.ph99.i, label %BIO_dump_indent_cb.exit

.lr.ph99.i:                                       ; preds = %bb.a
  %wide.trip.count113.i = zext nneg i32 %.070.i to i64
  %i.g = add i32 %2, -1
  br label %bb.b

bb.b:                                             ; preds = %bb.o, %.lr.ph99.i
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.o ], [ %i.g, %.lr.ph99.i ] ; 2 uses
  %indvars.iv110.i = phi i64 [ %indvars.iv.next111.i, %bb.o ], [ 0, %.lr.ph99.i ] ; 2 uses
  %.07496.i = phi i32 [ %i.ba, %bb.o ], [ 0, %.lr.ph99.i ]
  %i.h = call i32 @llvm.umin.i32(i32 %indvars.iv, i32 15)
  %narrow = add nuw nsw i32 %i.h, 1
  %i.i = zext nneg i32 %narrow to i64
  %i.j = trunc nuw nsw i64 %indvars.iv110.i to i32
  %i.k = shl nsw i32 %i.j, 4                      ; 4 uses
  %i.l = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.a, i64 noundef 289, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef %i.k) #6 ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %BIO_dump_indent_cb.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.n = zext i32 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.n ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %bb.h ] ; 4 uses
  %.06987.i = phi i32 [ %i.l, %.preheader.i ], [ %.1.i, %bb.h ] ; 4 uses
  %i.p = zext nneg i32 %.06987.i to i64           ; 2 uses
  %i.q = add nsw i32 %.06987.i, -290
  %i.r = icmp ult i32 %i.q, -4
  br i1 %i.r, label %bb.d, label %bb.h

end_hunk_0
