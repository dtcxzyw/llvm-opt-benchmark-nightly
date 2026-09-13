Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/linear-assignment?download=true
inline.NumInlined: 7
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"linear-assignment.c\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"negative j: %d\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"size_t overflow: %lu * %lu\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @compute_assignment(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = icmp slt i32 %0, 2
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %0 to i64                       ; 2 uses
  %i.d = icmp slt i32 %0, 0
  br i1 %i.d, label %bb.c, label %st_mult.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.2, i64 noundef 4, i64 noundef range(i64 -2147483648, 2147483648) %i.c) #7
  unreachable

st_mult.exit:                                     ; preds = %bb.b
  %i.e = shl nuw nsw i64 %i.c, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %3, i8 0, i64 %i.e, i1 false)
  %i.f = sext i32 %1 to i64                       ; 2 uses
  %i.g = icmp slt i32 %1, 0
  br i1 %i.g, label %bb.d, label %st_mult.exit360

bb.d:                                             ; preds = %st_mult.exit
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.2, i64 noundef 4, i64 noundef range(i64 -2147483648, 2147483648) %i.f) #7
  unreachable

st_mult.exit360:                                  ; preds = %st_mult.exit
  %i.h = shl nuw nsw i64 %i.f, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 %i.h, i1 false)
  br label %bb.as

bb.e:                                             ; preds = %bb.a
  %i.i = zext nneg i32 %0 to i64                  ; 11 uses
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %3, i8 -1, i64 %i.j, i1 false)
  %i.k = sext i32 %1 to i64                       ; 2 uses
  %i.l = shl nsw i64 %i.k, 2                      ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %4, i8 -1, i64 %i.l, i1 false)
  %i.m = tail call ptr @xmalloc(i64 noundef %i.j) #8 ; 25 uses
  %i.n = ptrtoaddr ptr %i.m to i64                ; 3 uses
  %i.o = icmp sgt i32 %1, 1
  %wide.trip.count = zext i32 %1 to i64
  %i.p = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %i.p, 1
  %i.q = icmp eq i32 %1, 2
  %unroll_iter = and i64 %i.p, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod600 = trunc i64 %i.p to i1
  br label %.preheader387

.preheader387:                                    ; preds = %bb.e, %bb.h
  %indvars.iv474 = phi i64 [ %i.i, %bb.e ], [ %indvars.iv.next475, %bb.h ] ; 2 uses
  %indvars.iv.next475 = add nsw i64 %indvars.iv474, -1 ; 5 uses
  %5 = trunc nuw nsw i64 %indvars.iv.next475 to i32 ; 5 uses
  br i1 %i.o, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader387
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %indvars.iv.next475 ; 3 uses
  br i1 %i.q, label %.lr.ph.epil.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 4 uses
  %.0282399 = phi i32 [ %spec.select.1, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.r = mul nuw nsw i32 %.0282399, %0
  %6 = add nuw nsw i32 %i.r, %5
  %i.s = zext nneg i32 %6 to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !27
  %i.v = mul nuw nsw i64 %indvars.iv, %i.i
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.v
  %i.w = load i32, ptr %gep, align 4, !tbaa !27
  %i.x = icmp sgt i32 %i.u, %i.w
  %i.y = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %i.x, i32 %i.y, i32 %.0282399 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = mul nuw nsw i32 %spec.select, %0
  %7 = add nuw nsw i32 %i.z, %5
  %i.aa = zext nneg i32 %7 to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !27
  %i.ad = mul nuw nsw i64 %indvars.iv.next, %i.i
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ad
  %i.ae = load i32, ptr %gep.1, align 4, !tbaa !27
  %i.af = icmp sgt i32 %i.ac, %i.ae
  %i.ag = trunc nuw nsw i64 %indvars.iv.next to i32
  %spec.select.1 = select i1 %i.af, i32 %i.ag, i32 %spec.select ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !12

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.0282399.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod600)
  %i.ah = mul nuw nsw i32 %.0282399.epil.init, %0
  %8 = add nuw nsw i32 %i.ah, %5
  %i.ai = zext nneg i32 %8 to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !27
  %i.al = mul nuw nsw i64 %indvars.iv.epil.init, %i.i
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.al
  %i.am = load i32, ptr %gep.epil, align 4, !tbaa !27
  %i.an = icmp sgt i32 %i.ak, %i.am
  %i.ao = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %spec.select.epil = select i1 %i.an, i32 %i.ao, i32 %.0282399.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader387
  %.0282.lcssa = phi i32 [ 0, %.preheader387 ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %.lr.ph.epil.preheader ] ; 3 uses
  %i.ap = mul nuw nsw i32 %.0282.lcssa, %0
  %9 = add nuw nsw i32 %i.ap, %5
  %10 = zext nneg i32 %9 to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %10
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !27
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next475
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !27
  %i.at = zext nneg i32 %.0282.lcssa to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !27 ; 3 uses
  %i.aw = icmp eq i32 %i.av, -1
  br i1 %i.aw, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.ax = icmp sgt i32 %i.av, -1
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ay = sub nuw nsw i32 -2, %i.av
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge, %bb.g
  %.sink562 = phi i32 [ %i.ay, %bb.g ], [ %5, %._crit_edge ]
  %.sink.ph = phi i32 [ -1, %bb.g ], [ %.0282.lcssa, %._crit_edge ]
  store i32 %.sink562, ptr %i.au, align 4, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.f
  %.sink = phi i32 [ -1, %bb.f ], [ %.sink.ph, %.sink.split ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next475
  store i32 %.sink, ptr %i.az, align 4, !tbaa !27
  %i.ba = icmp samesign ugt i64 %indvars.iv474, 1
  br i1 %i.ba, label %.preheader387, label %bb.i, !llvm.loop !13

bb.i:                                             ; preds = %bb.h
  %i.bb = icmp slt i32 %1, 0
  br i1 %i.bb, label %bb.j, label %st_mult.exit361

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.2, i64 noundef 4, i64 noundef range(i64 -2147483648, 2147483648) %i.k) #7
  unreachable

st_mult.exit361:                                  ; preds = %bb.i
  %i.bc = tail call ptr @xmalloc(i64 noundef %i.l) #8 ; 8 uses
  %.not460 = icmp eq i32 %1, 0
  br i1 %.not460, label %._crit_edge411, label %.lr.ph410

.lr.ph410:                                        ; preds = %st_mult.exit361
  %wide.trip.count485 = zext nneg i32 %1 to i64
  %i.bd = add nsw i64 %i.i, -1                    ; 3 uses
  %xtraiter601 = and i64 %i.bd, 1
  %i.be = icmp eq i32 %0, 2
  %unroll_iter605 = and i64 %i.bd, -2
  %lcmp.mod602.not = icmp eq i64 %xtraiter601, 0
  %lcmp.mod604 = trunc i64 %i.bd to i1
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph410, %bb.s
  %indvars.iv482 = phi i64 [ 0, %.lr.ph410 ], [ %indvars.iv.next483, %bb.s ] ; 4 uses
  %.0409 = phi i32 [ 0, %.lr.ph410 ], [ %.1, %bb.s ] ; 4 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv482 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !27 ; 5 uses
  %i.bh = icmp eq i32 %i.bg, -1
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bi = add nsw i32 %.0409, 1
  %i.bj = sext i32 %.0409 to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bj
  %i.bl = trunc nuw nsw i64 %indvars.iv482 to i32
  store i32 %i.bl, ptr %i.bk, align 4, !tbaa !27
  br label %bb.s

bb.m:                                             ; preds = %bb.k
  %i.bm = icmp slt i32 %i.bg, -1
  br i1 %i.bm, label %bb.n, label %.lr.ph405.preheader

bb.n:                                             ; preds = %bb.m
  %i.bn = sub nuw nsw i32 -2, %i.bg
  store i32 %i.bn, ptr %i.bf, align 4, !tbaa !27
  br label %bb.s

.lr.ph405.preheader:                              ; preds = %bb.m
  %i.bo = mul nuw nsw i64 %indvars.iv482, %i.i    ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bo
  %.not353 = icmp eq i32 %i.bg, 0                 ; 2 uses
  %i.bq = zext i1 %.not353 to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !27
  %i.bt = zext i1 %.not353 to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !27
  %i.bw = sub nsw i32 %i.bs, %i.bv                ; 2 uses
  %i.bx = zext nneg i32 %i.bg to i64              ; 5 uses
  %invariant.gep553 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bo ; 3 uses
  br i1 %i.be, label %.lr.ph405.epil.preheader, label %.lr.ph405

.lr.ph405:                                        ; preds = %.lr.ph405.preheader, %bb.q
  %indvars.iv477 = phi i64 [ %indvars.iv.next478.1, %bb.q ], [ 1, %.lr.ph405.preheader ] ; 5 uses
  %.0280403 = phi i32 [ %.1281.1, %bb.q ], [ %i.bw, %.lr.ph405.preheader ] ; 2 uses
  %niter606 = phi i64 [ %niter606.next.1, %bb.q ], [ 0, %.lr.ph405.preheader ]
  %.not354 = icmp eq i64 %indvars.iv477, %i.bx
  br i1 %.not354, label %.lr.ph405.1, label %bb.o

bb.o:                                             ; preds = %.lr.ph405
  %gep554 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep553, i64 %indvars.iv477
  %i.by = load i32, ptr %gep554, align 4, !tbaa !27
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv477
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !27
  %i.cb = sub nsw i32 %i.by, %i.ca
  %spec.select355 = tail call i32 @llvm.smin.i32(i32 %.0280403, i32 %i.cb)
  br label %.lr.ph405.1

.lr.ph405.1:                                      ; preds = %bb.o, %.lr.ph405
  %.1281 = phi i32 [ %.0280403, %.lr.ph405 ], [ %spec.select355, %bb.o ] ; 2 uses
  %indvars.iv.next478 = add nuw nsw i64 %indvars.iv477, 1 ; 3 uses
  %.not354.1 = icmp eq i64 %indvars.iv.next478, %i.bx
  br i1 %.not354.1, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph405.1
  %gep554.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep553, i64 %indvars.iv.next478
  %i.cc = load i32, ptr %gep554.1, align 4, !tbaa !27
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next478
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !27
  %i.cf = sub nsw i32 %i.cc, %i.ce
  %spec.select355.1 = tail call i32 @llvm.smin.i32(i32 %.1281, i32 %i.cf)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph405.1
  %.1281.1 = phi i32 [ %.1281, %.lr.ph405.1 ], [ %spec.select355.1, %bb.p ] ; 3 uses
  %indvars.iv.next478.1 = add nuw nsw i64 %indvars.iv477, 2 ; 2 uses
  %niter606.next.1 = add i64 %niter606, 2         ; 2 uses
  %niter606.ncmp.1 = icmp eq i64 %niter606.next.1, %unroll_iter605
  br i1 %niter606.ncmp.1, label %._crit_edge406.unr-lcssa, label %.lr.ph405, !llvm.loop !14

._crit_edge406.unr-lcssa:                         ; preds = %bb.q
  br i1 %lcmp.mod602.not, label %._crit_edge406, label %.lr.ph405.epil.preheader

.lr.ph405.epil.preheader:                         ; preds = %._crit_edge406.unr-lcssa, %.lr.ph405.preheader
  %indvars.iv477.epil.init = phi i64 [ 1, %.lr.ph405.preheader ], [ %indvars.iv.next478.1, %._crit_edge406.unr-lcssa ] ; 3 uses
  %.0280403.epil.init = phi i32 [ %i.bw, %.lr.ph405.preheader ], [ %.1281.1, %._crit_edge406.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod604)
  %.not354.epil = icmp eq i64 %indvars.iv477.epil.init, %i.bx
  br i1 %.not354.epil, label %._crit_edge406, label %bb.r

bb.r:                                             ; preds = %.lr.ph405.epil.preheader
  %gep554.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep553, i64 %indvars.iv477.epil.init
  %i.cg = load i32, ptr %gep554.epil, align 4, !tbaa !27
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv477.epil.init
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !27
  %i.cj = sub nsw i32 %i.cg, %i.ci
  %spec.select355.epil = tail call i32 @llvm.smin.i32(i32 %.0280403.epil.init, i32 %i.cj)
  br label %._crit_edge406

._crit_edge406:                                   ; preds = %.lr.ph405.epil.preheader, %bb.r, %._crit_edge406.unr-lcssa
  %.1281.lcssa = phi i32 [ %.1281.1, %._crit_edge406.unr-lcssa ], [ %.0280403.epil.init, %.lr.ph405.epil.preheader ], [ %spec.select355.epil, %bb.r ]
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bx
  %.pre525 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !27
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bx
  %i.cl = sub nsw i32 %.pre525, %.1281.lcssa
  store i32 %i.cl, ptr %i.ck, align 4, !tbaa !27
  br label %bb.s

bb.s:                                             ; preds = %bb.n, %._crit_edge406, %bb.l
  %.1 = phi i32 [ %i.bi, %bb.l ], [ %.0409, %bb.n ], [ %.0409, %._crit_edge406 ] ; 2 uses
  %indvars.iv.next483 = add nuw nsw i64 %indvars.iv482, 1 ; 2 uses
  %exitcond486.not = icmp eq i64 %indvars.iv.next483, %wide.trip.count485
  br i1 %exitcond486.not, label %._crit_edge411, label %bb.k, !llvm.loop !15

._crit_edge411:                                   ; preds = %bb.s, %st_mult.exit361
  %.0.lcssa = phi i32 [ 0, %st_mult.exit361 ], [ %.1, %bb.s ] ; 3 uses
  %i.cm = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  %i.cn = sub nsw i32 %1, %i.cm
  %i.co = icmp eq i32 %.0.lcssa, %i.cn
  br i1 %i.co, label %bb.af, label %.preheader385.us.preheader

.preheader385.us.preheader:                       ; preds = %._crit_edge411
  %smax = tail call i32 @llvm.smax.i32(i32 %0, i32 2) ; 2 uses
  %i.cp = icmp sgt i32 %.0.lcssa, 0
  br i1 %i.cp, label %.lr.ph419.us.us.preheader, label %.split.us

.lr.ph419.us.us.preheader:                        ; preds = %.preheader385.us.preheader
  %wide.trip.count490 = zext nneg i32 %smax to i64
  br label %.lr.ph419.us.us

.lr.ph419.us.us:                                  ; preds = %.lr.ph419.us.us.preheader, %.thread.us.us
  %.3426.us.us = phi i32 [ %.4.us.us, %.thread.us.us ], [ 0, %.lr.ph419.us.us.preheader ] ; 6 uses
  %.0278425.us.us = phi i32 [ %.1279.us.us, %.thread.us.us ], [ 0, %.lr.ph419.us.us.preheader ] ; 3 uses
  %i.cq = sext i32 %.0278425.us.us to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.cq ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !27 ; 3 uses
  %i.ct = mul nsw i32 %i.cs, %0
  %i.cu = sext i32 %i.ct to i64                   ; 2 uses
  %i.cv = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !27
  %i.cx = load i32, ptr %i.m, align 4, !tbaa !27
  %i.cy = sub nsw i32 %i.cw, %i.cx
  %invariant.gep555 = getelementptr [4 x i8], ptr %2, i64 %i.cu
  br label %bb.t

bb.t:                                             ; preds = %bb.v, %.lr.ph419.us.us
  %indvars.iv487 = phi i64 [ %indvars.iv.next488, %bb.v ], [ 1, %.lr.ph419.us.us ] ; 4 uses
  %.0267417.us.us = phi i32 [ %.1268.us.us, %bb.v ], [ -1, %.lr.ph419.us.us ]
  %.0270416.us.us = phi i32 [ %.1271.us.us, %bb.v ], [ 0, %.lr.ph419.us.us ] ; 3 uses
  %.0273415.us.us = phi i32 [ %.1274.us.us, %bb.v ], [ 2147483647, %.lr.ph419.us.us ] ; 2 uses
  %.0276414.us.us = phi i32 [ %.1277.us.us, %bb.v ], [ %i.cy, %.lr.ph419.us.us ] ; 4 uses
  %gep556 = getelementptr [4 x i8], ptr %invariant.gep555, i64 %indvars.iv487
  %i.cz = load i32, ptr %gep556, align 4, !tbaa !27
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv487
  %i.db = load i32, ptr %i.da, align 4, !tbaa !27
  %i.dc = sub nsw i32 %i.cz, %i.db                ; 4 uses
  %i.dd = icmp sgt i32 %.0273415.us.us, %i.dc
  br i1 %i.dd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.de = icmp slt i32 %.0276414.us.us, %i.dc     ; 2 uses
  %.0276..us.us = tail call i32 @llvm.smin.i32(i32 %.0276414.us.us, i32 %i.dc)
  %..0276.us.us = tail call i32 @llvm.smax.i32(i32 %.0276414.us.us, i32 %i.dc)
  %i.df = trunc nuw nsw i64 %indvars.iv487 to i32 ; 2 uses
  %.0270..2333.us.us = select i1 %i.de, i32 %.0270416.us.us, i32 %i.df
  %.2333..0270.us.us = select i1 %i.de, i32 %i.df, i32 %.0270416.us.us
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
end_hunk_0
begin_hunk_1_@compute_assignment:bb.a
  %spec.select356.us.us = select i1 %i.dh, i32 %.1277.us.us, i32 %.1274.us.us ; 2 uses
  %spec.select357.us.us = select i1 %i.dh, i32 %.1271.us.us, i32 %.1268.us.us ; 3 uses
  %i.di = sext i32 %.1271.us.us to i64            ; 5 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr %3, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !27 ; 3 uses
  %i.dl = icmp slt i32 %.1277.us.us, %spec.select356.us.us
  br i1 %i.dl, label %bb.x, label %bb.w

bb.w:                                             ; preds = %._crit_edge420.us.us
  %i.dm = icmp sgt i32 %i.dk, -1
  br i1 %i.dm, label %.thread365.us.us, label %.thread.us.us

.thread365.us.us:                                 ; preds = %bb.w
  %i.dn = sext i32 %spec.select357.us.us to i64   ; 3 uses
  %i.do = getelementptr inbounds [4 x i8], ptr %3, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !27 ; 2 uses
  %i.dq = icmp sgt i32 %i.dp, -1
  br i1 %i.dq, label %.thread370.us.us, label %.thread.us.us

.thread370.us.us:                                 ; preds = %.thread365.us.us
  %i.dr = add nsw i32 %.3426.us.us, 1
  %i.ds = sext i32 %.3426.us.us to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.ds
  store i32 %i.dp, ptr %i.dt, align 4, !tbaa !27
  br label %.thread.us.us

bb.x:                                             ; preds = %._crit_edge420.us.us
  %.neg352.us.us = sub i32 %.1277.us.us, %spec.select356.us.us
  %i.du = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.di ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !27
  %i.dw = add i32 %.neg352.us.us, %i.dv
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !27
  %i.dx = icmp sgt i32 %i.dk, -1
  br i1 %i.dx, label %bb.y, label %.thread.us.us

bb.y:                                             ; preds = %bb.x
  store i32 %i.dk, ptr %i.cr, align 4, !tbaa !27
  br label %.thread.us.us

.thread.us.us:                                    ; preds = %bb.y, %bb.x, %.thread370.us.us, %.thread365.us.us, %bb.w
  %.pre-phi526 = phi i64 [ %i.di, %bb.y ], [ %i.di, %bb.x ], [ %i.dn, %.thread370.us.us ], [ %i.dn, %.thread365.us.us ], [ %i.di, %bb.w ]
  %.2272364.us.us = phi i32 [ %.1271.us.us, %bb.y ], [ %.1271.us.us, %bb.x ], [ %spec.select357.us.us, %.thread370.us.us ], [ %spec.select357.us.us, %.thread365.us.us ], [ %.1271.us.us, %bb.w ]
  %.1279.us.us = phi i32 [ %.0278425.us.us, %bb.y ], [ %i.dg, %bb.x ], [ %i.dg, %.thread370.us.us ], [ %i.dg, %.thread365.us.us ], [ %i.dg, %bb.w ] ; 2 uses
  %.4.us.us = phi i32 [ %.3426.us.us, %bb.y ], [ %.3426.us.us, %bb.x ], [ %i.dr, %.thread370.us.us ], [ %.3426.us.us, %.thread365.us.us ], [ %.3426.us.us, %bb.w ] ; 3 uses
  %i.dy = sext i32 %i.cs to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %4, i64 %i.dy
  store i32 %.2272364.us.us, ptr %i.dz, align 4, !tbaa !27
  %i.ea = getelementptr inbounds [4 x i8], ptr %3, i64 %.pre-phi526
  store i32 %i.cs, ptr %i.ea, align 4, !tbaa !27
  %i.eb = icmp slt i32 %.1279.us.us, %.0.lcssa
  br i1 %i.eb, label %.lr.ph419.us.us, label %._crit_edge428.split.us.us, !llvm.loop !17

._crit_edge428.split.us.us:                       ; preds = %.thread.us.us
  %i.ec = icmp sgt i32 %.4.us.us, 0
  br i1 %i.ec, label %.lr.ph419.us.us.preheader.1, label %.split.us

.lr.ph419.us.us.preheader.1:                      ; preds = %._crit_edge428.split.us.us
  %wide.trip.count490.1 = zext nneg i32 %smax to i64
  br label %.lr.ph419.us.us.1

.lr.ph419.us.us.1:                                ; preds = %.thread.us.us.1, %.lr.ph419.us.us.preheader.1
  %.3426.us.us.1 = phi i32 [ %.4.us.us.1, %.thread.us.us.1 ], [ 0, %.lr.ph419.us.us.preheader.1 ] ; 6 uses
  %.0278425.us.us.1 = phi i32 [ %.1279.us.us.1, %.thread.us.us.1 ], [ 0, %.lr.ph419.us.us.preheader.1 ] ; 3 uses
  %i.ed = sext i32 %.0278425.us.us.1 to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.ed ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !27 ; 3 uses
  %i.eg = mul nsw i32 %i.ef, %0
  %i.eh = sext i32 %i.eg to i64                   ; 2 uses
  %i.ei = getelementptr inbounds [4 x i8], ptr %2, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !27
  %i.ek = load i32, ptr %i.m, align 4, !tbaa !27
  %i.el = sub nsw i32 %i.ej, %i.ek
  %invariant.gep557 = getelementptr [4 x i8], ptr %2, i64 %i.eh
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %.lr.ph419.us.us.1
  %indvars.iv487.1 = phi i64 [ %indvars.iv.next488.1, %bb.ab ], [ 1, %.lr.ph419.us.us.1 ] ; 4 uses
  %.0267417.us.us.1 = phi i32 [ %.1268.us.us.1, %bb.ab ], [ -1, %.lr.ph419.us.us.1 ]
  %.0270416.us.us.1 = phi i32 [ %.1271.us.us.1, %bb.ab ], [ 0, %.lr.ph419.us.us.1 ] ; 3 uses
  %.0273415.us.us.1 = phi i32 [ %.1274.us.us.1, %bb.ab ], [ 2147483647, %.lr.ph419.us.us.1 ] ; 2 uses
  %.0276414.us.us.1 = phi i32 [ %.1277.us.us.1, %bb.ab ], [ %i.el, %.lr.ph419.us.us.1 ] ; 4 uses
  %gep558 = getelementptr [4 x i8], ptr %invariant.gep557, i64 %indvars.iv487.1
  %i.em = load i32, ptr %gep558, align 4, !tbaa !27
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv487.1
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !27
  %i.ep = sub nsw i32 %i.em, %i.eo                ; 4 uses
  %i.eq = icmp sgt i32 %.0273415.us.us.1, %i.ep
  br i1 %i.eq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.er = icmp slt i32 %.0276414.us.us.1, %i.ep   ; 2 uses
  %.0276..us.us.1 = tail call i32 @llvm.smin.i32(i32 %.0276414.us.us.1, i32 %i.ep)
  %..0276.us.us.1 = tail call i32 @llvm.smax.i32(i32 %.0276414.us.us.1, i32 %i.ep)
  %i.es = trunc nuw nsw i64 %indvars.iv487.1 to i32 ; 2 uses
  %.0270..2333.us.us.1 = select i1 %i.er, i32 %.0270416.us.us.1, i32 %i.es
  %.2333..0270.us.us.1 = select i1 %i.er, i32 %i.es, i32 %.0270416.us.us.1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.1277.us.us.1 = phi i32 [ %.0276..us.us.1, %bb.aa ], [ %.0276414.us.us.1, %bb.z ] ; 4 uses
  %.1274.us.us.1 = phi i32 [ %..0276.us.us.1, %bb.aa ], [ %.0273415.us.us.1, %bb.z ] ; 2 uses
  %.1271.us.us.1 = phi i32 [ %.0270..2333.us.us.1, %bb.aa ], [ %.0270416.us.us.1, %bb.z ] ; 6 uses
  %.1268.us.us.1 = phi i32 [ %.2333..0270.us.us.1, %bb.aa ], [ %.0267417.us.us.1, %bb.z ] ; 3 uses
  %indvars.iv.next488.1 = add nuw nsw i64 %indvars.iv487.1, 1 ; 2 uses
  %exitcond491.1.not = icmp eq i64 %indvars.iv.next488.1, %wide.trip.count490.1
  br i1 %exitcond491.1.not, label %._crit_edge420.us.us.1, label %bb.z, !llvm.loop !16

._crit_edge420.us.us.1:                           ; preds = %bb.ab
  %i.et = add nsw i32 %.0278425.us.us.1, 1        ; 4 uses
  %i.eu = icmp slt i32 %.1268.us.us.1, 0          ; 2 uses
  %spec.select356.us.us.1 = select i1 %i.eu, i32 %.1277.us.us.1, i32 %.1274.us.us.1 ; 2 uses
  %spec.select357.us.us.1 = select i1 %i.eu, i32 %.1271.us.us.1, i32 %.1268.us.us.1 ; 3 uses
  %i.ev = sext i32 %.1271.us.us.1 to i64          ; 5 uses
  %i.ew = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !27 ; 3 uses
  %i.ey = icmp slt i32 %.1277.us.us.1, %spec.select356.us.us.1
  br i1 %i.ey, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge420.us.us.1
  %i.ez = icmp sgt i32 %i.ex, -1
  br i1 %i.ez, label %.thread365.us.us.1, label %.thread.us.us.1

.thread365.us.us.1:                               ; preds = %bb.ac
  %i.fa = sext i32 %spec.select357.us.us.1 to i64 ; 3 uses
  %i.fb = getelementptr inbounds [4 x i8], ptr %3, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !27 ; 2 uses
  %i.fd = icmp sgt i32 %i.fc, -1
  br i1 %i.fd, label %.thread370.us.us.1, label %.thread.us.us.1

.thread370.us.us.1:                               ; preds = %.thread365.us.us.1
  %i.fe = add nsw i32 %.3426.us.us.1, 1
  %i.ff = sext i32 %.3426.us.us.1 to i64
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.ff
  store i32 %i.fc, ptr %i.fg, align 4, !tbaa !27
  br label %.thread.us.us.1

bb.ad:                                            ; preds = %._crit_edge420.us.us.1
  %.neg352.us.us.1 = sub i32 %.1277.us.us.1, %spec.select356.us.us.1
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.ev ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !27
  %i.fj = add i32 %.neg352.us.us.1, %i.fi
  store i32 %i.fj, ptr %i.fh, align 4, !tbaa !27
  %i.fk = icmp sgt i32 %i.ex, -1
  br i1 %i.fk, label %bb.ae, label %.thread.us.us.1

bb.ae:                                            ; preds = %bb.ad
  store i32 %i.ex, ptr %i.ee, align 4, !tbaa !27
  br label %.thread.us.us.1

.thread.us.us.1:                                  ; preds = %bb.ae, %bb.ad, %.thread370.us.us.1, %.thread365.us.us.1, %bb.ac
  %.pre-phi527 = phi i64 [ %i.ev, %bb.ae ], [ %i.ev, %bb.ad ], [ %i.fa, %.thread370.us.us.1 ], [ %i.fa, %.thread365.us.us.1 ], [ %i.ev, %bb.ac ]
  %.2272364.us.us.1 = phi i32 [ %.1271.us.us.1, %bb.ae ], [ %.1271.us.us.1, %bb.ad ], [ %spec.select357.us.us.1, %.thread370.us.us.1 ], [ %spec.select357.us.us.1, %.thread365.us.us.1 ], [ %.1271.us.us.1, %bb.ac ]
  %.1279.us.us.1 = phi i32 [ %.0278425.us.us.1, %bb.ae ], [ %i.et, %bb.ad ], [ %i.et, %.thread370.us.us.1 ], [ %i.et, %.thread365.us.us.1 ], [ %i.et, %bb.ac ] ; 2 uses
  %.4.us.us.1 = phi i32 [ %.3426.us.us.1, %bb.ae ], [ %.3426.us.us.1, %bb.ad ], [ %i.fe, %.thread370.us.us.1 ], [ %.3426.us.us.1, %.thread365.us.us.1 ], [ %.3426.us.us.1, %bb.ac ] ; 2 uses
  %i.fl = sext i32 %i.ef to i64
  %i.fm = getelementptr inbounds [4 x i8], ptr %4, i64 %i.fl
  store i32 %.2272364.us.us.1, ptr %i.fm, align 4, !tbaa !27
  %i.fn = getelementptr inbounds [4 x i8], ptr %3, i64 %.pre-phi527
  store i32 %i.ef, ptr %i.fn, align 4, !tbaa !27
  %i.fo = icmp slt i32 %.1279.us.us.1, %.4.us.us
  br i1 %i.fo, label %.lr.ph419.us.us.1, label %.split.us, !llvm.loop !17

bb.af:                                            ; preds = %._crit_edge411
  tail call void @free(ptr noundef %i.m) #8
  tail call void @free(ptr noundef %i.bc) #8
  br label %bb.as

.split.us:                                        ; preds = %.thread.us.us.1, %.preheader385.us.preheader, %._crit_edge428.split.us.us
  %.3.lcssa.us.1 = phi i32 [ 0, %._crit_edge428.split.us.us ], [ 0, %.preheader385.us.preheader ], [ %.4.us.us.1, %.thread.us.us.1 ] ; 2 uses
  %i.fp = tail call ptr @xmalloc(i64 noundef %i.j) #8 ; 12 uses
  %i.fq = tail call ptr @xmalloc(i64 noundef %i.j) #8 ; 8 uses
  %i.fr = tail call ptr @xmalloc(i64 noundef %i.j) #8 ; 16 uses
  %i.fs = icmp sgt i32 %.3.lcssa.us.1, 0
  br i1 %i.fs, label %.lr.ph458, label %._crit_edge459

.lr.ph458:                                        ; preds = %.split.us
  %i.ft = ptrtoaddr ptr %i.fr to i64              ; 4 uses
  %i.fu = ptrtoaddr ptr %i.fq to i64              ; 4 uses
  %i.fv = ptrtoaddr ptr %i.fp to i64              ; 4 uses
  %wide.trip.count523 = zext nneg i32 %.3.lcssa.us.1 to i64
  %wide.trip.count496 = zext nneg i32 %0 to i64
  %min.iters.check = icmp ult i32 %0, 20
  %i.fw = sub i64 %i.fv, %i.fu
  %diff.check = icmp ugt i64 %i.fw, -32
  %i.fx = sub i64 %i.fv, %i.ft
  %diff.check572 = icmp ugt i64 %i.fx, -32
  %conflict.rdx = or i1 %diff.check, %diff.check572
  %invariant.op = sub i64 %i.a, %i.fv
  %i.fy = sub i64 %i.n, %i.fv
  %diff.check575 = icmp ugt i64 %i.fy, -32
  %invariant.op622 = or i1 %conflict.rdx, %diff.check575
  %i.fz = sub i64 %i.fu, %i.ft
  %diff.check577 = icmp ugt i64 %i.fz, -32
  %invariant.op623 = or i1 %invariant.op622, %diff.check577
  %invariant.op624 = sub i64 %i.a, %i.fu
  %i.ga = sub i64 %i.n, %i.fu
  %diff.check581 = icmp ugt i64 %i.ga, -32
  %invariant.op626 = sub i64 %i.a, %i.ft
  %i.gb = sub i64 %i.n, %i.ft
  %diff.check585 = icmp ugt i64 %i.gb, -32
  %n.vec = and i64 %i.i, 2147483640               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.i
  %xtraiter607 = and i64 %i.i, 1
  %lcmp.mod608.not = icmp eq i64 %xtraiter607, 0
  %i.gc = add nsw i64 %i.i, -1
  br label %.lr.ph435

.lr.ph435:                                        ; preds = %bb.ar, %.lr.ph458
  %indvars.iv520 = phi i64 [ 0, %.lr.ph458 ], [ %indvars.iv.next521, %bb.ar ] ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv520
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !27 ; 6 uses
  %i.gf = mul nsw i32 %i.ge, %0
  %i.gg = sext i32 %i.gf to i64                   ; 2 uses
  %invariant.gep559 = getelementptr [4 x i8], ptr %2, i64 %i.gg ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph435
  %i.gh = shl nsw i64 %i.gg, 2                    ; 3 uses
  %.reass = add i64 %i.gh, %invariant.op
  %diff.check573 = icmp ugt i64 %.reass, -32
  %conflict.rdx578.reass = or i1 %diff.check573, %invariant.op623
  %.reass625 = add i64 %i.gh, %invariant.op624
  %diff.check579 = icmp ugt i64 %.reass625, -32
  %conflict.rdx580 = or i1 %conflict.rdx578.reass, %diff.check579
  %conflict.rdx582 = or i1 %conflict.rdx580, %diff.check581
  %.reass627 = add i64 %i.gh, %invariant.op626
  %diff.check583 = icmp ugt i64 %.reass627, -32
  %conflict.rdx584 = or i1 %conflict.rdx582, %diff.check583
  %conflict.rdx586 = or i1 %conflict.rdx584, %diff.check585
  br i1 %conflict.rdx586, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ge, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.gi = getelementptr [4 x i8], ptr %invariant.gep559, i64 %index ; 2 uses
  %i.gj = getelementptr i8, ptr %i.gi, i64 16
  %wide.load = load <4 x i32>, ptr %i.gi, align 4, !tbaa !27
  %wide.load587 = load <4 x i32>, ptr %i.gj, align 4, !tbaa !27
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %wide.load588 = load <4 x i32>, ptr %i.gk, align 4, !tbaa !27
  %wide.load589 = load <4 x i32>, ptr %i.gl, align 4, !tbaa !27
  %i.gm = sub nsw <4 x i32> %wide.load, %wide.load588
  %i.gn = sub nsw <4 x i32> %wide.load587, %wide.load589
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %index ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  store <4 x i32> %i.gm, ptr %i.go, align 4, !tbaa !27
  store <4 x i32> %i.gn, ptr %i.gp, align 4, !tbaa !27
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %index ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.gq, align 4, !tbaa !27
  store <4 x i32> %broadcast.splat, ptr %i.gr, align 4, !tbaa !27
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %index ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  store <4 x i32> %vec.ind, ptr %i.gs, align 4, !tbaa !27
  store <4 x i32> %step.add, ptr %i.gt, align 4, !tbaa !27
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.gu = icmp eq i64 %index.next, %n.vec
  br i1 %i.gu, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.preheader384.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph435, %middle.block
  %indvars.iv492.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph435 ], [ %n.vec, %middle.block ] ; 9 uses
  br i1 %lcmp.mod608.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %gep560.prol = getelementptr [4 x i8], ptr %invariant.gep559, i64 %indvars.iv492.ph
  %i.gv = load i32, ptr %gep560.prol, align 4, !tbaa !27
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv492.ph
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !27
  %i.gy = sub nsw i32 %i.gv, %i.gx
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv492.ph
  store i32 %i.gy, ptr %i.gz, align 4, !tbaa !27
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv492.ph
  store i32 %i.ge, ptr %i.ha, align 4, !tbaa !27
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv492.ph
  %i.hc = trunc nuw nsw i64 %indvars.iv492.ph to i32
  store i32 %i.hc, ptr %i.hb, align 4, !tbaa !27
  %indvars.iv.next493.prol = or disjoint i64 %indvars.iv492.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv492.unr = phi i64 [ %indvars.iv492.ph, %scalar.ph.preheader ], [ %indvars.iv.next493.prol, %scalar.ph.prol ]
  %i.hd = icmp eq i64 %indvars.iv492.ph, %i.gc
  br i1 %i.hd, label %.preheader384.preheader, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv492 = phi i64 [ %indvars.iv.next493.1, %scalar.ph ], [ %indvars.iv492.unr, %scalar.ph.prol.loopexit ] ; 8 uses
  %gep560 = getelementptr [4 x i8], ptr %invariant.gep559, i64 %indvars.iv492
  %i.he = load i32, ptr %gep560, align 4, !tbaa !27
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv492
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !27
  %i.hh = sub nsw i32 %i.he, %i.hg
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv492
  store i32 %i.hh, ptr %i.hi, align 4, !tbaa !27
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv492
  store i32 %i.ge, ptr %i.hj, align 4, !tbaa !27
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv492
  %i.hl = trunc nuw nsw i64 %indvars.iv492 to i32
  store i32 %i.hl, ptr %i.hk, align 4, !tbaa !27
  %indvars.iv.next493 = add nuw nsw i64 %indvars.iv492, 1 ; 6 uses
  %gep560.1 = getelementptr [4 x i8], ptr %invariant.gep559, i64 %indvars.iv.next493
  %i.hm = load i32, ptr %gep560.1, align 4, !tbaa !27
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next493
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !27
  %i.hp = sub nsw i32 %i.hm, %i.ho
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv.next493
  store i32 %i.hp, ptr %i.hq, align 4, !tbaa !27
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv.next493
  store i32 %i.ge, ptr %i.hr, align 4, !tbaa !27
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv.next493
  %i.ht = trunc nuw nsw i64 %indvars.iv.next493 to i32
  store i32 %i.ht, ptr %i.hs, align 4, !tbaa !27
  %indvars.iv.next493.1 = add nuw nsw i64 %indvars.iv492, 2 ; 2 uses
  %exitcond497.not.1 = icmp eq i64 %indvars.iv.next493.1, %wide.trip.count496
  br i1 %exitcond497.not.1, label %.preheader384.preheader, label %scalar.ph, !llvm.loop !19

.preheader384.preheader:                          ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  br label %.preheader384

.loopexit380:                                     ; preds = %._crit_edge450
  br label %.preheader384, !llvm.loop !20

.preheader384:                                    ; preds = %.preheader384.preheader, %.loopexit380
  %.4335 = phi i32 [ %.7.lcssa, %.loopexit380 ], [ -1, %.preheader384.preheader ]
  %.0264 = phi i32 [ %.5263.lcssa, %.loopexit380 ], [ 0, %.preheader384.preheader ] ; 8 uses
  %i.hu = add nsw i32 %.0264, 1                   ; 3 uses
  %i.hv = sext i32 %.0264 to i64                  ; 4 uses
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !27
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.hy
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !27 ; 2 uses
  %i.ib = icmp slt i32 %i.hu, %0
  br i1 %i.ib, label %.lr.ph440.preheader, label %.preheader381

.lr.ph440.preheader:                              ; preds = %.preheader384
  %i.ic = add nsw i64 %i.hv, 1
  br label %.lr.ph440

.preheader381:                                    ; preds = %bb.ah, %.preheader384
  %.5336.lcssa = phi i32 [ %.4335, %.preheader384 ], [ %i.if, %bb.ah ] ; 2 uses
  %.1259.lcssa = phi i32 [ %i.hu, %.preheader384 ], [ %.3261, %bb.ah ] ; 3 uses
  %.0251.lcssa = phi i32 [ %i.ia, %.preheader384 ], [ %.2253, %bb.ah ] ; 5 uses
  %i.id = icmp slt i32 %.0264, %.1259.lcssa
  br i1 %i.id, label %.lr.ph445, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.ai, %.preheader381
  br label %.preheader

.lr.ph440:                                        ; preds = %.lr.ph440.preheader, %bb.ah
  %indvars.iv498 = phi i64 [ %i.ic, %.lr.ph440.preheader ], [ %indvars.iv.next499, %bb.ah ] ; 2 uses
  %.0251438 = phi i32 [ %i.ia, %.lr.ph440.preheader ], [ %.2253, %bb.ah ] ; 3 uses
  %.1259436 = phi i32 [ %i.hu, %.lr.ph440.preheader ], [ %.3261, %bb.ah ] ; 2 uses
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %indvars.iv498 ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !27 ; 3 uses
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.ig
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !27 ; 3 uses
  %.not351 = icmp sgt i32 %i.ii, %.0251438
  br i1 %.not351, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph440
  %i.ij = icmp slt i32 %i.ii, %.0251438
  %spec.select358 = select i1 %i.ij, i32 %.0264, i32 %.1259436 ; 2 uses
  %i.ik = sext i32 %spec.select358 to i64
  %i.il = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.ik ; 2 uses
  %i.im = load i32, ptr %i.il, align 4, !tbaa !27
  store i32 %i.im, ptr %i.ie, align 4, !tbaa !27
  %i.in = add nsw i32 %spec.select358, 1
  store i32 %i.if, ptr %i.il, align 4, !tbaa !27
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph440, %bb.ag
  %.3261 = phi i32 [ %i.in, %bb.ag ], [ %.1259436, %.lr.ph440 ] ; 2 uses
  %.2253 = phi i32 [ %i.ii, %bb.ag ], [ %.0251438, %.lr.ph440 ] ; 2 uses
  %indvars.iv.next499 = add nsw i64 %indvars.iv498, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next499 to i32
  %exitcond501.not = icmp eq i32 %0, %lftr.wideiv
  br i1 %exitcond501.not, label %.preheader381, label %.lr.ph440, !llvm.loop !21

bb.ai:                                            ; preds = %.lr.ph445
  %indvars.iv.next503 = add nsw i64 %indvars.iv502, 1 ; 2 uses
  %lftr.wideiv505 = trunc i64 %indvars.iv.next503 to i32
  %exitcond506.not = icmp eq i32 %.1259.lcssa, %lftr.wideiv505
  br i1 %exitcond506.not, label %.preheader.preheader, label %.lr.ph445, !llvm.loop !22

.lr.ph445:                                        ; preds = %.preheader381, %bb.ai
  %indvars.iv502 = phi i64 [ %indvars.iv.next503, %bb.ai ], [ %i.hv, %.preheader381 ] ; 2 uses
  %i.io = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %indvars.iv502
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !27
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr inbounds [4 x i8], ptr %3, i64 %i.iq
end_hunk_1
