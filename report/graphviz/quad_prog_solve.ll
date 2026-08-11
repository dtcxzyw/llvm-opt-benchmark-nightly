inline.NumInlined: 28
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { %union.anon, ptr, i32 }
%union.anon = type { %struct.list_t_ }
%struct.list_t_ = type { ptr, i64, i64, i64 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [67 x i8] c"list element type is not a pointer, but `free` used as destructor\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"integer overflow when trying to allocate %zu * %zu bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"out of memory when trying to allocate %zu bytes\0A\00", align 1

; Function Attrs: nounwind uwtable
define hidden noundef ptr @unpackMatrix(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 3 uses
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %.preheader42, label %bb.b

bb.b:                                             ; preds = %bb.a
  %mul.ov.i = icmp slt i32 %1, 0
  br i1 %mul.ov.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.1, i64 noundef range(i64 -2147483648, 2147483648) %i.a, i64 noundef 8) #14 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.a, i64 noundef 8) #16 ; 13 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.g = shl nuw nsw i64 %i.a, 3
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.2, i64 noundef %i.g) #14 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.i = mul nuw nsw i32 %1, %1                   ; 2 uses
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.j, i64 noundef 4) #16 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.g, label %gv_calloc.exit40

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.n = shl nuw nsw i64 %i.j, 2
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str.2, i64 noundef %i.n) #14 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

gv_calloc.exit40:                                 ; preds = %bb.f
  store ptr %i.k, ptr %i.d, align 8, !tbaa !11
  tail call void @set_vector_valf(i32 noundef %i.i, float noundef 0.000000e+00, ptr noundef nonnull %i.k) #17
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %.preheader.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %gv_calloc.exit40
  %i.p = zext nneg i32 %1 to i64                  ; 6 uses
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !11  ; 5 uses
  %i.q = add nsw i64 %i.p, -1                     ; 2 uses
  %xtraiter = and i64 %i.q, 3                     ; 3 uses
  %i.r = add nsw i32 %1, -2
  %i.s = icmp ult i32 %i.r, 3
  br i1 %i.s, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.q, -4
  br label %.lr.ph

.preheader42:                                     ; preds = %bb.a
  %i.t = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #16 ; 2 uses
  %i.u = mul nuw nsw i32 %1, %1
  %i.v = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16 ; 2 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !11
  tail call void @set_vector_valf(i32 noundef %i.u, float noundef 0.000000e+00, ptr noundef %i.v) #17
  br label %._crit_edge

.preheader.preheader.loopexit.unr-lcssa:          ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.preheader.preheader.loopexit.unr-lcssa ]
  %lcmp.mod65 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod65)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.w = mul nuw nsw i64 %indvars.iv.epil, %i.p
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.w
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.epil
  store ptr %i.x, ptr %i.y, align 8, !tbaa !11
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.preheader, label %.lr.ph.epil, !llvm.loop !13

.preheader.preheader:                             ; preds = %.preheader.preheader.loopexit.unr-lcssa, %.lr.ph.epil, %gv_calloc.exit40
  %wide.trip.count61 = zext nneg i32 %1 to i64    ; 4 uses
  %i.z = add nsw i64 %wide.trip.count61, -1
  br label %.preheader

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.aa = mul nuw nsw i64 %indvars.iv, %i.p
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.aa
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ad = mul nuw nsw i64 %indvars.iv.next, %i.p
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ad
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !11
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ag = mul nuw nsw i64 %indvars.iv.next.1, %i.p
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ag
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.1
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !11
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.aj = mul nuw nsw i64 %indvars.iv.next.2, %i.p
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.aj
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.2
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !11
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !15

.preheader:                                       ; preds = %.preheader.preheader, %.unr-lcssa
  %indvars.iv51.a = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next56, %.unr-lcssa ] ; 11 uses
  %indvars.iv51 = phi i32 [ 0, %.preheader.preheader ], [ %indvars.iv.next52, %.unr-lcssa ] ; 2 uses
  %indvars.iv49 = phi i32 [ %1, %.preheader.preheader ], [ %indvars.iv.next50, %.unr-lcssa ] ; 2 uses
  %i.am = sub nsw i64 %wide.trip.count61, %indvars.iv51.a
  %2 = sext i32 %indvars.iv51 to i64              ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv51.a
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !11 ; 3 uses
  %xtraiter66 = and i64 %i.am, 1
  %lcmp.mod67.not = icmp eq i64 %xtraiter66, 0
  br i1 %lcmp.mod67.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader
  %i.ap = getelementptr inbounds [4 x i8], ptr %0, i64 %2
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !17 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv51.a
  store float %i.aq, ptr %i.ar, align 4, !tbaa !17
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv51.a
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !11
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv51.a
  store float %i.aq, ptr %i.au, align 4, !tbaa !17
  %indvars.iv.next54.prol.a = add nuw nsw i64 %indvars.iv51.a, 1
  %indvars.iv.next50.prol = add nsw i64 %2, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.preheader
  %indvars.iv53.unr.a = phi i64 [ %indvars.iv51.a, %.preheader ], [ %indvars.iv.next54.prol.a, %.prol.loopexit.unr-lcssa ]
  %indvars.iv49.unr = phi i64 [ %2, %.preheader ], [ %indvars.iv.next50.prol, %.prol.loopexit.unr-lcssa ]
  %i.av = icmp eq i64 %indvars.iv51.a, %i.z
  br i1 %i.av, label %.unr-lcssa, label %.preheader.new

.preheader.new:                                   ; preds = %.prol.loopexit, %.preheader.new
  %indvars.iv53.a = phi i64 [ %indvars.iv.next54.1.a, %.preheader.new ], [ %indvars.iv53.unr.a, %.prol.loopexit ] ; 4 uses
  %indvars.iv49.a = phi i64 [ %indvars.iv.next50.1, %.preheader.new ], [ %indvars.iv49.unr, %.prol.loopexit ] ; 3 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv49.a
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !17 ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv53.a
  store float %i.ax, ptr %i.ay, align 4, !tbaa !17
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv53.a
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !11
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv51.a
  store float %i.ax, ptr %i.bb, align 4, !tbaa !17
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53.a, 1 ; 2 uses
  %i.bc = getelementptr [4 x i8], ptr %0, i64 %indvars.iv49.a
  %i.bd = getelementptr i8, ptr %i.bc, i64 4
  %i.be = load float, ptr %i.bd, align 4, !tbaa !17 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.next54
  store float %i.be, ptr %i.bf, align 4, !tbaa !17
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next54
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !11
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv51.a
  store float %i.be, ptr %i.bi, align 4, !tbaa !17
  %indvars.iv.next54.1.a = add nuw nsw i64 %indvars.iv53.a, 2 ; 2 uses
  %indvars.iv.next50.1 = add nsw i64 %indvars.iv49.a, 2
  %exitcond59.not.1 = icmp eq i64 %indvars.iv.next54.1.a, %wide.trip.count61
  br i1 %exitcond59.not.1, label %.unr-lcssa, label %.preheader.new, !llvm.loop !19

.unr-lcssa:                                       ; preds = %.preheader.new, %.prol.loopexit
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv51.a, 1 ; 2 uses
  %indvars.iv.next50 = add i32 %indvars.iv49, -1
  %indvars.iv.next52 = add i32 %indvars.iv51, %indvars.iv49
  %exitcond62.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count61
  br i1 %exitcond62.not, label %._crit_edge, label %.preheader, !llvm.loop !20

._crit_edge:                                      ; preds = %.unr-lcssa, %.preheader42
  %i.bj = phi ptr [ %i.t, %.preheader42 ], [ %i.d, %.unr-lcssa ]
  ret ptr %i.bj
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare hidden void @set_vector_valf(i32 noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden void @constrained_majorization_new_with_gaps(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.anon, align 8               ; 51 uses
  %i.a = sext i32 %3 to i64
  %i.b = getelementptr inbounds [8 x i8], ptr %2, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 19 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 21 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !26     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27   ; 22 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28   ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i32, ptr %i.k, align 8, !tbaa !29   ; 9 uses
  %i.m = icmp slt i32 %4, 1
  br i1 %i.m, label %bb.br, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = icmp sgt i32 %i.e, 0                     ; 3 uses
  br i1 %i.n, label %bb.c, label %ensureMonotonicOrderingWithGaps.exit

bb.c:                                             ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %i.e to i64
  %i.o = icmp eq i32 %i.l, 0
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %i.j, align 4, !tbaa !30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.128.peel.i = phi i32 [ %i.p, %bb.d ], [ %i.e, %bb.c ] ; 2 uses
  %i.q = add nsw i32 %.128.peel.i, -1
  tail call void @quicksort_placef(ptr noundef %i.c, ptr noundef %i.h, i32 noundef 0, i32 noundef %i.q) #17
  %i.r = load i32, ptr %i.h, align 4, !tbaa !30
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.s ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !17
  %i.v = fcmp olt float %i.u, -1.000000e+09
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store float -1.000000e+09, ptr %i.t, align 4, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %exitcond.peel.not.i = icmp eq i32 %i.e, 1
  br i1 %exitcond.peel.not.i, label %.thread633, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.m
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.m ], [ 1, %bb.g ] ; 5 uses
  %.038.i = phi float [ %.1.i, %bb.m ], [ -1.000000e+09, %bb.g ]
  %.02737.i = phi i32 [ %.2.i, %bb.m ], [ %.128.peel.i, %bb.g ] ; 2 uses
  %.02936.i = phi i32 [ %.130.i, %bb.m ], [ 0, %bb.g ] ; 2 uses
  %i.w = sext i32 %.02737.i to i64
  %.not.i = icmp slt i64 %indvars.iv.i, %i.w
  br i1 %.not.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.x = add nsw i32 %.02936.i, 1                 ; 3 uses
  %i.y = icmp eq i32 %i.x, %i.l
  br i1 %i.y, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !30
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.128.i = phi i32 [ %i.ab, %bb.i ], [ %i.e, %bb.h ] ; 2 uses
  %i.ac = getelementptr [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !30
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.af
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !17
  %i.ai = fadd float %5, %i.ah
  %i.aj = add nsw i32 %.128.i, -1
  %i.ak = trunc nuw nsw i64 %indvars.iv.i to i32
  tail call void @quicksort_placef(ptr noundef nonnull %i.c, ptr noundef nonnull %i.h, i32 noundef %i.ak, i32 noundef %i.aj) #17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  %.130.i = phi i32 [ %i.x, %bb.j ], [ %.02936.i, %.lr.ph.i ]
  %.2.i = phi i32 [ %.128.i, %bb.j ], [ %.02737.i, %.lr.ph.i ]
  %.1.i = phi float [ %i.ai, %bb.j ], [ %.038.i, %.lr.ph.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.am = load i32, ptr %i.al, align 4, !tbaa !30
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.an ; 2 uses
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !17
  %i.aq = fcmp olt float %i.ap, %.1.i
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store float %.1.i, ptr %i.ao, align 4, !tbaa !17
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ensureMonotonicOrderingWithGaps.exit, label %.lr.ph.i, !llvm.loop !31

ensureMonotonicOrderingWithGaps.exit:             ; preds = %bb.m, %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !33
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !34
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 48, i1 false)
  %i.ax = sext i32 %i.e to i64                    ; 4 uses
  %.not.i441 = icmp eq i32 %i.e, 0
  br i1 %.not.i441, label %gv_calloc.exit.thread, label %bb.n

gv_calloc.exit.thread:                            ; preds = %ensureMonotonicOrderingWithGaps.exit
  %i.ay = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  br label %.preheader448

bb.n:                                             ; preds = %ensureMonotonicOrderingWithGaps.exit
  %mul.ov.i = icmp slt i32 %i.e, 0
  br i1 %mul.ov.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.az = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.ba = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.az, ptr noundef nonnull @.str.1, i64 noundef range(i64 -2147483648, 2147483648) %i.ax, i64 noundef 4) #14 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bb = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.ax, i64 noundef 4) #16 ; 3 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.q, label %gv_calloc.exit

.thread633:                                       ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !33
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !34
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 48, i1 false)
  %i.bj = tail call noalias dereferenceable_or_null(4) ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) 1, i64 noundef 4) #16 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.q, label %.lr.ph.preheader

bb.q:                                             ; preds = %.thread633, %bb.p
  %i.bl = phi i64 [ 1, %.thread633 ], [ %i.ax, %bb.p ]
  %i.bm = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.bn = shl nuw nsw i64 %i.bl, 2
  %i.bo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bm, ptr noundef nonnull @.str.2, i64 noundef %i.bn) #14 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

gv_calloc.exit:                                   ; preds = %bb.p
  br i1 %i.n, label %.lr.ph.preheader, label %.preheader448

.lr.ph.preheader:                                 ; preds = %.thread633, %gv_calloc.exit
  %i.bp = phi ptr [ %i.bb, %gv_calloc.exit ], [ %i.bj, %.thread633 ] ; 14 uses
  %i.bq = phi ptr [ %i.as, %gv_calloc.exit ], [ %i.be, %.thread633 ] ; 6 uses
  %i.br = phi ptr [ %i.au, %gv_calloc.exit ], [ %i.bg, %.thread633 ] ; 4 uses
  %i.bs = phi ptr [ %i.aw, %gv_calloc.exit ], [ %i.bi, %.thread633 ] ; 5 uses
  %i.bt = phi i64 [ %i.ax, %gv_calloc.exit ], [ 1, %.thread633 ] ; 2 uses
  %wide.trip.count = zext i32 %i.e to i64         ; 5 uses
  %i.bu = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph

.preheader448.lr.ph.unr-lcssa:                    ; preds = %bb.bm
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader448.lr.ph, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader448.lr.ph.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.preheader448.lr.ph.unr-lcssa ] ; 2 uses
  %.0384453.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.1385.1, %.preheader448.lr.ph.unr-lcssa ]
end_hunk_0
