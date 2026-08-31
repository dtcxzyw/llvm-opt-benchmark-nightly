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
  br label %bb.at

bb.e:                                             ; preds = %bb.a
  %i.i = zext nneg i32 %0 to i64                  ; 2 uses
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %3, i8 -1, i64 %i.j, i1 false)
  %i.k = sext i32 %1 to i64                       ; 2 uses
  %i.l = shl nsw i64 %i.k, 2                      ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %4, i8 -1, i64 %i.l, i1 false)
  %i.m = tail call ptr @xmalloc(i64 noundef %i.j) #8 ; 25 uses
  %i.n = ptrtoaddr ptr %i.m to i64                ; 3 uses
  %i.o = icmp sgt i32 %1, 1
  %i.p = zext nneg i32 %0 to i64                  ; 9 uses
  %wide.trip.count = zext i32 %1 to i64
  %i.q = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %i.q, 1
  %i.r = icmp eq i32 %1, 2
  %unroll_iter = and i64 %i.q, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod600 = trunc i64 %i.q to i1
  br label %.preheader387

.preheader387:                                    ; preds = %bb.e, %bb.i
  %indvars.iv474 = phi i64 [ %i.p, %bb.e ], [ %indvars.iv.next475, %bb.i ] ; 2 uses
  %indvars.iv.next475 = add nsw i64 %indvars.iv474, -1 ; 7 uses
  br i1 %i.o, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader387
  %i.s = getelementptr [4 x i8], ptr %2, i64 %indvars.iv.next475 ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %indvars.iv.next475 ; 3 uses
  br i1 %i.r, label %.lr.ph.epil.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 4 uses
  %.0282399 = phi i32 [ %spec.select.1, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.t = mul nuw nsw i32 %.0282399, %0
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr [4 x i8], ptr %i.s, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !12
  %i.x = mul nuw nsw i64 %indvars.iv, %i.p
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.x
  %i.y = load i32, ptr %gep, align 4, !tbaa !12
  %i.z = icmp sgt i32 %i.w, %i.y
  %i.aa = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %i.z, i32 %i.aa, i32 %.0282399 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = mul nuw nsw i32 %spec.select, %0
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr [4 x i8], ptr %i.s, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !12
  %i.af = mul nuw nsw i64 %indvars.iv.next, %i.p
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.af
  %i.ag = load i32, ptr %gep.1, align 4, !tbaa !12
  %i.ah = icmp sgt i32 %i.ae, %i.ag
  %i.ai = trunc nuw nsw i64 %indvars.iv.next to i32
  %spec.select.1 = select i1 %i.ah, i32 %i.ai, i32 %spec.select ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !13

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.0282399.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod600)
  %i.aj = mul nuw nsw i32 %.0282399.epil.init, %0
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr [4 x i8], ptr %i.s, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !12
  %i.an = mul nuw nsw i64 %indvars.iv.epil.init, %i.p
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.an
  %i.ao = load i32, ptr %gep.epil, align 4, !tbaa !12
  %i.ap = icmp sgt i32 %i.am, %i.ao
  %i.aq = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %spec.select.epil = select i1 %i.ap, i32 %i.aq, i32 %.0282399.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader387
  %.0282.lcssa = phi i32 [ 0, %.preheader387 ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %.lr.ph.epil.preheader ] ; 3 uses
  %i.ar = mul nuw nsw i32 %.0282.lcssa, %0
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr [4 x i8], ptr %2, i64 %indvars.iv.next475
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.as
  %i.av = load i32, ptr %i.au, align 4, !tbaa !12
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next475
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !12
  %i.ax = zext nneg i32 %.0282.lcssa to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !12 ; 3 uses
  %i.ba = icmp eq i32 %i.az, -1
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.bb = trunc nuw nsw i64 %indvars.iv.next475 to i32
  br label %.sink.split

bb.g:                                             ; preds = %._crit_edge
  %i.bc = icmp sgt i32 %i.az, -1
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bd = sub nuw nsw i32 -2, %i.az
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.h
  %.sink562 = phi i32 [ %i.bd, %bb.h ], [ %i.bb, %bb.f ]
  %.sink.ph = phi i32 [ -1, %bb.h ], [ %.0282.lcssa, %bb.f ]
  store i32 %.sink562, ptr %i.ay, align 4, !tbaa !12
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.g
  %.sink = phi i32 [ -1, %bb.g ], [ %.sink.ph, %.sink.split ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next475
  store i32 %.sink, ptr %i.be, align 4, !tbaa !12
  %i.bf = icmp samesign ugt i64 %indvars.iv474, 1
  br i1 %i.bf, label %.preheader387, label %bb.j, !llvm.loop !15

bb.j:                                             ; preds = %bb.i
  %i.bg = icmp slt i32 %1, 0
  br i1 %i.bg, label %bb.k, label %st_mult.exit361

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.2, i64 noundef 4, i64 noundef range(i64 -2147483648, 2147483648) %i.k) #7
  unreachable

st_mult.exit361:                                  ; preds = %bb.j
  %i.bh = tail call ptr @xmalloc(i64 noundef %i.l) #8 ; 8 uses
  %.not460 = icmp eq i32 %1, 0
  br i1 %.not460, label %._crit_edge411, label %.lr.ph410

.lr.ph410:                                        ; preds = %st_mult.exit361
  %wide.trip.count485 = zext nneg i32 %1 to i64
  %i.bi = add nsw i64 %i.p, -1                    ; 3 uses
  %xtraiter601 = and i64 %i.bi, 1
  %i.bj = icmp eq i32 %0, 2
  %unroll_iter605 = and i64 %i.bi, -2
  %lcmp.mod602.not = icmp eq i64 %xtraiter601, 0
  %lcmp.mod604 = trunc i64 %i.bi to i1
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph410, %bb.t
  %indvars.iv482 = phi i64 [ 0, %.lr.ph410 ], [ %indvars.iv.next483, %bb.t ] ; 4 uses
  %.0409 = phi i32 [ 0, %.lr.ph410 ], [ %.1, %bb.t ] ; 4 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv482 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !12 ; 5 uses
  %i.bm = icmp eq i32 %i.bl, -1
  br i1 %i.bm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bn = add nsw i32 %.0409, 1
  %i.bo = sext i32 %.0409 to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.bo
  %i.bq = trunc nuw nsw i64 %indvars.iv482 to i32
  store i32 %i.bq, ptr %i.bp, align 4, !tbaa !12
  br label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.br = icmp slt i32 %i.bl, -1
  br i1 %i.br, label %bb.o, label %.lr.ph405.preheader

bb.o:                                             ; preds = %bb.n
  %i.bs = sub nuw nsw i32 -2, %i.bl
  store i32 %i.bs, ptr %i.bk, align 4, !tbaa !12
  br label %bb.t

.lr.ph405.preheader:                              ; preds = %bb.n
  %i.bt = mul nuw nsw i64 %indvars.iv482, %i.i    ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bt
  %.not353 = icmp eq i32 %i.bl, 0                 ; 2 uses
  %i.bv = zext i1 %.not353 to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !12
  %i.by = zext i1 %.not353 to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !12
  %i.cb = sub nsw i32 %i.bx, %i.ca                ; 2 uses
  %i.cc = zext nneg i32 %i.bl to i64              ; 5 uses
  %invariant.gep553 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bt ; 3 uses
  br i1 %i.bj, label %.lr.ph405.epil.preheader, label %.lr.ph405

.lr.ph405:                                        ; preds = %.lr.ph405.preheader, %bb.r
  %indvars.iv477 = phi i64 [ %indvars.iv.next478.1, %bb.r ], [ 1, %.lr.ph405.preheader ] ; 5 uses
  %.0280403 = phi i32 [ %.1281.1, %bb.r ], [ %i.cb, %.lr.ph405.preheader ] ; 2 uses
  %niter606 = phi i64 [ %niter606.next.1, %bb.r ], [ 0, %.lr.ph405.preheader ]
  %.not354 = icmp eq i64 %indvars.iv477, %i.cc
  br i1 %.not354, label %.lr.ph405.1, label %bb.p

bb.p:                                             ; preds = %.lr.ph405
  %gep554 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep553, i64 %indvars.iv477
  %i.cd = load i32, ptr %gep554, align 4, !tbaa !12
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv477
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !12
  %i.cg = sub nsw i32 %i.cd, %i.cf
  %spec.select355 = tail call i32 @llvm.smin.i32(i32 %.0280403, i32 %i.cg)
  br label %.lr.ph405.1

.lr.ph405.1:                                      ; preds = %bb.p, %.lr.ph405
  %.1281 = phi i32 [ %.0280403, %.lr.ph405 ], [ %spec.select355, %bb.p ] ; 2 uses
  %indvars.iv.next478 = add nuw nsw i64 %indvars.iv477, 1 ; 3 uses
  %.not354.1 = icmp eq i64 %indvars.iv.next478, %i.cc
  br i1 %.not354.1, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph405.1
  %gep554.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep553, i64 %indvars.iv.next478
  %i.ch = load i32, ptr %gep554.1, align 4, !tbaa !12
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next478
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !12
  %i.ck = sub nsw i32 %i.ch, %i.cj
  %spec.select355.1 = tail call i32 @llvm.smin.i32(i32 %.1281, i32 %i.ck)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph405.1
  %.1281.1 = phi i32 [ %.1281, %.lr.ph405.1 ], [ %spec.select355.1, %bb.q ] ; 3 uses
  %indvars.iv.next478.1 = add nuw nsw i64 %indvars.iv477, 2 ; 2 uses
  %niter606.next.1 = add i64 %niter606, 2         ; 2 uses
  %niter606.ncmp.1 = icmp eq i64 %niter606.next.1, %unroll_iter605
  br i1 %niter606.ncmp.1, label %._crit_edge406.unr-lcssa, label %.lr.ph405, !llvm.loop !16

._crit_edge406.unr-lcssa:                         ; preds = %bb.r
  br i1 %lcmp.mod602.not, label %._crit_edge406, label %.lr.ph405.epil.preheader

.lr.ph405.epil.preheader:                         ; preds = %._crit_edge406.unr-lcssa, %.lr.ph405.preheader
  %indvars.iv477.epil.init = phi i64 [ 1, %.lr.ph405.preheader ], [ %indvars.iv.next478.1, %._crit_edge406.unr-lcssa ] ; 3 uses
  %.0280403.epil.init = phi i32 [ %i.cb, %.lr.ph405.preheader ], [ %.1281.1, %._crit_edge406.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod604)
  %.not354.epil = icmp eq i64 %indvars.iv477.epil.init, %i.cc
  br i1 %.not354.epil, label %._crit_edge406, label %bb.s

bb.s:                                             ; preds = %.lr.ph405.epil.preheader
  %gep554.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep553, i64 %indvars.iv477.epil.init
  %i.cl = load i32, ptr %gep554.epil, align 4, !tbaa !12
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv477.epil.init
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !12
  %i.co = sub nsw i32 %i.cl, %i.cn
  %spec.select355.epil = tail call i32 @llvm.smin.i32(i32 %.0280403.epil.init, i32 %i.co)
  br label %._crit_edge406

._crit_edge406:                                   ; preds = %.lr.ph405.epil.preheader, %bb.s, %._crit_edge406.unr-lcssa
  %.1281.lcssa = phi i32 [ %.1281.1, %._crit_edge406.unr-lcssa ], [ %.0280403.epil.init, %.lr.ph405.epil.preheader ], [ %spec.select355.epil, %bb.s ]
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.cc
  %.pre525 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !12
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.cc
  %i.cq = sub nsw i32 %.pre525, %.1281.lcssa
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !12
  br label %bb.t

bb.t:                                             ; preds = %bb.o, %._crit_edge406, %bb.m
  %.1 = phi i32 [ %i.bn, %bb.m ], [ %.0409, %bb.o ], [ %.0409, %._crit_edge406 ] ; 2 uses
  %indvars.iv.next483 = add nuw nsw i64 %indvars.iv482, 1 ; 2 uses
  %exitcond486.not = icmp eq i64 %indvars.iv.next483, %wide.trip.count485
  br i1 %exitcond486.not, label %._crit_edge411, label %bb.l, !llvm.loop !17

._crit_edge411:                                   ; preds = %bb.t, %st_mult.exit361
  %.0.lcssa = phi i32 [ 0, %st_mult.exit361 ], [ %.1, %bb.t ] ; 3 uses
  %i.cr = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  %i.cs = sub nsw i32 %1, %i.cr
  %i.ct = icmp eq i32 %.0.lcssa, %i.cs
  br i1 %i.ct, label %bb.ag, label %.preheader385.us.preheader

.preheader385.us.preheader:                       ; preds = %._crit_edge411
  %smax = tail call i32 @llvm.smax.i32(i32 %0, i32 2) ; 2 uses
  %i.cu = icmp sgt i32 %.0.lcssa, 0
  br i1 %i.cu, label %.lr.ph419.us.us.preheader, label %.split.us

.lr.ph419.us.us.preheader:                        ; preds = %.preheader385.us.preheader
  %wide.trip.count490 = zext nneg i32 %smax to i64
  br label %.lr.ph419.us.us

._crit_edge428.split.us.us:                       ; preds = %.thread.us.us
  %i.cv = icmp sgt i32 %.4.us.us, 0
  br i1 %i.cv, label %.lr.ph419.us.us.preheader.1, label %.split.us

.lr.ph419.us.us.preheader.1:                      ; preds = %._crit_edge428.split.us.us
  %wide.trip.count490.1 = zext nneg i32 %smax to i64
  br label %.lr.ph419.us.us.1

.lr.ph419.us.us.1:                                ; preds = %.thread.us.us.1, %.lr.ph419.us.us.preheader.1
  %.3426.us.us.1 = phi i32 [ %.4.us.us.1, %.thread.us.us.1 ], [ 0, %.lr.ph419.us.us.preheader.1 ] ; 6 uses
  %.0278425.us.us.1 = phi i32 [ %.1279.us.us.1, %.thread.us.us.1 ], [ 0, %.lr.ph419.us.us.preheader.1 ] ; 3 uses
  %i.cw = sext i32 %.0278425.us.us.1 to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.cw ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !12 ; 3 uses
  %i.cz = mul nsw i32 %i.cy, %0
  %i.da = sext i32 %i.cz to i64                   ; 2 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %2, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !12
  %i.dd = load i32, ptr %i.m, align 4, !tbaa !12
  %i.de = sub nsw i32 %i.dc, %i.dd
  %invariant.gep557 = getelementptr [4 x i8], ptr %2, i64 %i.da
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %.lr.ph419.us.us.1
  %indvars.iv487.1 = phi i64 [ %indvars.iv.next488.1, %bb.w ], [ 1, %.lr.ph419.us.us.1 ] ; 4 uses
  %.0267417.us.us.1 = phi i32 [ %.1268.us.us.1, %bb.w ], [ -1, %.lr.ph419.us.us.1 ]
  %.0270416.us.us.1 = phi i32 [ %.1271.us.us.1, %bb.w ], [ 0, %.lr.ph419.us.us.1 ] ; 3 uses
  %.0273415.us.us.1 = phi i32 [ %.1274.us.us.1, %bb.w ], [ 2147483647, %.lr.ph419.us.us.1 ] ; 2 uses
  %.0276414.us.us.1 = phi i32 [ %.1277.us.us.1, %bb.w ], [ %i.de, %.lr.ph419.us.us.1 ] ; 4 uses
  %gep558 = getelementptr [4 x i8], ptr %invariant.gep557, i64 %indvars.iv487.1
  %i.df = load i32, ptr %gep558, align 4, !tbaa !12
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv487.1
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !12
  %i.di = sub nsw i32 %i.df, %i.dh                ; 4 uses
  %i.dj = icmp sgt i32 %.0273415.us.us.1, %i.di
  br i1 %i.dj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dk = icmp slt i32 %.0276414.us.us.1, %i.di   ; 2 uses
  %.0276..us.us.1 = tail call i32 @llvm.smin.i32(i32 %.0276414.us.us.1, i32 %i.di)
  %..0276.us.us.1 = tail call i32 @llvm.smax.i32(i32 %.0276414.us.us.1, i32 %i.di)
  %i.dl = trunc nuw nsw i64 %indvars.iv487.1 to i32 ; 2 uses
  %.0270..2333.us.us.1 = select i1 %i.dk, i32 %.0270416.us.us.1, i32 %i.dl
  %.2333..0270.us.us.1 = select i1 %i.dk, i32 %i.dl, i32 %.0270416.us.us.1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.1277.us.us.1 = phi i32 [ %.0276..us.us.1, %bb.v ], [ %.0276414.us.us.1, %bb.u ] ; 4 uses
  %.1274.us.us.1 = phi i32 [ %..0276.us.us.1, %bb.v ], [ %.0273415.us.us.1, %bb.u ] ; 2 uses
  %.1271.us.us.1 = phi i32 [ %.0270..2333.us.us.1, %bb.v ], [ %.0270416.us.us.1, %bb.u ] ; 6 uses
  %.1268.us.us.1 = phi i32 [ %.2333..0270.us.us.1, %bb.v ], [ %.0267417.us.us.1, %bb.u ] ; 3 uses
  %indvars.iv.next488.1 = add nuw nsw i64 %indvars.iv487.1, 1 ; 2 uses
  %exitcond491.1.not = icmp eq i64 %indvars.iv.next488.1, %wide.trip.count490.1
  br i1 %exitcond491.1.not, label %._crit_edge420.us.us.1, label %bb.u, !llvm.loop !18

._crit_edge420.us.us.1:                           ; preds = %bb.w
  %i.dm = add nsw i32 %.0278425.us.us.1, 1        ; 4 uses
  %i.dn = icmp slt i32 %.1268.us.us.1, 0          ; 2 uses
  %spec.select356.us.us.1 = select i1 %i.dn, i32 %.1277.us.us.1, i32 %.1274.us.us.1 ; 2 uses
  %spec.select357.us.us.1 = select i1 %i.dn, i32 %.1271.us.us.1, i32 %.1268.us.us.1 ; 3 uses
  %i.do = sext i32 %.1271.us.us.1 to i64          ; 5 uses
  %i.dp = getelementptr inbounds [4 x i8], ptr %3, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !12 ; 3 uses
  %i.dr = icmp slt i32 %.1277.us.us.1, %spec.select356.us.us.1
  br i1 %i.dr, label %bb.y, label %bb.x

bb.x:                                             ; preds = %._crit_edge420.us.us.1
  %i.ds = icmp sgt i32 %i.dq, -1
  br i1 %i.ds, label %.thread365.us.us.1, label %.thread.us.us.1

.thread365.us.us.1:                               ; preds = %bb.x
  %i.dt = sext i32 %spec.select357.us.us.1 to i64 ; 3 uses
  %i.du = getelementptr inbounds [4 x i8], ptr %3, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !12 ; 2 uses
  %i.dw = icmp sgt i32 %i.dv, -1
  br i1 %i.dw, label %.thread370.us.us.1, label %.thread.us.us.1

.thread370.us.us.1:                               ; preds = %.thread365.us.us.1
  %i.dx = add nsw i32 %.3426.us.us.1, 1
  %i.dy = sext i32 %.3426.us.us.1 to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.dy
  store i32 %i.dv, ptr %i.dz, align 4, !tbaa !12
  br label %.thread.us.us.1

bb.y:                                             ; preds = %._crit_edge420.us.us.1
  %.neg352.us.us.1 = sub i32 %.1277.us.us.1, %spec.select356.us.us.1
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.do ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !12
  %i.ec = add i32 %.neg352.us.us.1, %i.eb
  store i32 %i.ec, ptr %i.ea, align 4, !tbaa !12
  %i.ed = icmp sgt i32 %i.dq, -1
  br i1 %i.ed, label %bb.z, label %.thread.us.us.1

bb.z:                                             ; preds = %bb.y
  store i32 %i.dq, ptr %i.cx, align 4, !tbaa !12
  br label %.thread.us.us.1

.thread.us.us.1:                                  ; preds = %bb.z, %bb.y, %.thread370.us.us.1, %.thread365.us.us.1, %bb.x
  %.pre-phi527 = phi i64 [ %i.do, %bb.z ], [ %i.do, %bb.y ], [ %i.dt, %.thread370.us.us.1 ], [ %i.dt, %.thread365.us.us.1 ], [ %i.do, %bb.x ]
  %.2272364.us.us.1 = phi i32 [ %.1271.us.us.1, %bb.z ], [ %.1271.us.us.1, %bb.y ], [ %spec.select357.us.us.1, %.thread370.us.us.1 ], [ %spec.select357.us.us.1, %.thread365.us.us.1 ], [ %.1271.us.us.1, %bb.x ]
  %.1279.us.us.1 = phi i32 [ %.0278425.us.us.1, %bb.z ], [ %i.dm, %bb.y ], [ %i.dm, %.thread370.us.us.1 ], [ %i.dm, %.thread365.us.us.1 ], [ %i.dm, %bb.x ] ; 2 uses
  %.4.us.us.1 = phi i32 [ %.3426.us.us.1, %bb.z ], [ %.3426.us.us.1, %bb.y ], [ %i.dx, %.thread370.us.us.1 ], [ %.3426.us.us.1, %.thread365.us.us.1 ], [ %.3426.us.us.1, %bb.x ] ; 2 uses
  %i.ee = sext i32 %i.cy to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ee
  store i32 %.2272364.us.us.1, ptr %i.ef, align 4, !tbaa !12
  %i.eg = getelementptr inbounds [4 x i8], ptr %3, i64 %.pre-phi527
  store i32 %i.cy, ptr %i.eg, align 4, !tbaa !12
  %i.eh = icmp slt i32 %.1279.us.us.1, %.4.us.us
  br i1 %i.eh, label %.lr.ph419.us.us.1, label %.split.us, !llvm.loop !19

.lr.ph419.us.us:                                  ; preds = %.lr.ph419.us.us.preheader, %.thread.us.us
  %.3426.us.us = phi i32 [ %.4.us.us, %.thread.us.us ], [ 0, %.lr.ph419.us.us.preheader ] ; 6 uses
  %.0278425.us.us = phi i32 [ %.1279.us.us, %.thread.us.us ], [ 0, %.lr.ph419.us.us.preheader ] ; 3 uses
  %i.ei = sext i32 %.0278425.us.us to i64
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.ei ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !12 ; 3 uses
  %i.el = mul nsw i32 %i.ek, %0
  %i.em = sext i32 %i.el to i64                   ; 2 uses
  %i.en = getelementptr inbounds [4 x i8], ptr %2, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !12
  %i.ep = load i32, ptr %i.m, align 4, !tbaa !12
  %i.eq = sub nsw i32 %i.eo, %i.ep
  %invariant.gep555 = getelementptr [4 x i8], ptr %2, i64 %i.em
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %.lr.ph419.us.us
  %indvars.iv487 = phi i64 [ %indvars.iv.next488, %bb.ac ], [ 1, %.lr.ph419.us.us ] ; 4 uses
  %.0267417.us.us = phi i32 [ %.1268.us.us, %bb.ac ], [ -1, %.lr.ph419.us.us ]
  %.0270416.us.us = phi i32 [ %.1271.us.us, %bb.ac ], [ 0, %.lr.ph419.us.us ] ; 3 uses
  %.0273415.us.us = phi i32 [ %.1274.us.us, %bb.ac ], [ 2147483647, %.lr.ph419.us.us ] ; 2 uses
  %.0276414.us.us = phi i32 [ %.1277.us.us, %bb.ac ], [ %i.eq, %.lr.ph419.us.us ] ; 4 uses
  %gep556 = getelementptr [4 x i8], ptr %invariant.gep555, i64 %indvars.iv487
  %i.er = load i32, ptr %gep556, align 4, !tbaa !12
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv487
  %i.et = load i32, ptr %i.es, align 4, !tbaa !12
  %i.eu = sub nsw i32 %i.er, %i.et                ; 4 uses
  %i.ev = icmp sgt i32 %.0273415.us.us, %i.eu
  br i1 %i.ev, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ew = icmp slt i32 %.0276414.us.us, %i.eu     ; 2 uses
  %.0276..us.us = tail call i32 @llvm.smin.i32(i32 %.0276414.us.us, i32 %i.eu)
  %..0276.us.us = tail call i32 @llvm.smax.i32(i32 %.0276414.us.us, i32 %i.eu)
  %i.ex = trunc nuw nsw i64 %indvars.iv487 to i32 ; 2 uses
  %.0270..2333.us.us = select i1 %i.ew, i32 %.0270416.us.us, i32 %i.ex
  %.2333..0270.us.us = select i1 %i.ew, i32 %i.ex, i32 %.0270416.us.us
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.1277.us.us = phi i32 [ %.0276..us.us, %bb.ab ], [ %.0276414.us.us, %bb.aa ] ; 4 uses
  %.1274.us.us = phi i32 [ %..0276.us.us, %bb.ab ], [ %.0273415.us.us, %bb.aa ] ; 2 uses
  %.1271.us.us = phi i32 [ %.0270..2333.us.us, %bb.ab ], [ %.0270416.us.us, %bb.aa ] ; 6 uses
  %.1268.us.us = phi i32 [ %.2333..0270.us.us, %bb.ab ], [ %.0267417.us.us, %bb.aa ] ; 3 uses
  %indvars.iv.next488 = add nuw nsw i64 %indvars.iv487, 1 ; 2 uses
  %exitcond491.not = icmp eq i64 %indvars.iv.next488, %wide.trip.count490
  br i1 %exitcond491.not, label %._crit_edge420.us.us, label %bb.aa, !llvm.loop !18

bb.ad:                                            ; preds = %._crit_edge420.us.us
  %i.ey = icmp sgt i32 %i.fs, -1
  br i1 %i.ey, label %.thread365.us.us, label %.thread.us.us

.thread365.us.us:                                 ; preds = %bb.ad
  %i.ez = sext i32 %spec.select357.us.us to i64   ; 3 uses
  %i.fa = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !12 ; 2 uses
  %i.fc = icmp sgt i32 %i.fb, -1
  br i1 %i.fc, label %.thread370.us.us, label %.thread.us.us

.thread370.us.us:                                 ; preds = %.thread365.us.us
  %i.fd = add nsw i32 %.3426.us.us, 1
  %i.fe = sext i32 %.3426.us.us to i64
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.fe
  store i32 %i.fb, ptr %i.ff, align 4, !tbaa !12
  br label %.thread.us.us

bb.ae:                                            ; preds = %._crit_edge420.us.us
  %.neg352.us.us = sub i32 %.1277.us.us, %spec.select356.us.us
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.fq ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !12
  %i.fi = add i32 %.neg352.us.us, %i.fh
  store i32 %i.fi, ptr %i.fg, align 4, !tbaa !12
  %i.fj = icmp sgt i32 %i.fs, -1
  br i1 %i.fj, label %bb.af, label %.thread.us.us

bb.af:                                            ; preds = %bb.ae
  store i32 %i.fs, ptr %i.ej, align 4, !tbaa !12
  br label %.thread.us.us

.thread.us.us:                                    ; preds = %bb.af, %bb.ae, %.thread370.us.us, %.thread365.us.us, %bb.ad
  %.pre-phi526 = phi i64 [ %i.fq, %bb.af ], [ %i.fq, %bb.ae ], [ %i.ez, %.thread370.us.us ], [ %i.ez, %.thread365.us.us ], [ %i.fq, %bb.ad ]
  %.2272364.us.us = phi i32 [ %.1271.us.us, %bb.af ], [ %.1271.us.us, %bb.ae ], [ %spec.select357.us.us, %.thread370.us.us ], [ %spec.select357.us.us, %.thread365.us.us ], [ %.1271.us.us, %bb.ad ]
  %.1279.us.us = phi i32 [ %.0278425.us.us, %bb.af ], [ %i.fo, %bb.ae ], [ %i.fo, %.thread370.us.us ], [ %i.fo, %.thread365.us.us ], [ %i.fo, %bb.ad ] ; 2 uses
  %.4.us.us = phi i32 [ %.3426.us.us, %bb.af ], [ %.3426.us.us, %bb.ae ], [ %i.fd, %.thread370.us.us ], [ %.3426.us.us, %.thread365.us.us ], [ %.3426.us.us, %bb.ad ] ; 3 uses
  %i.fk = sext i32 %i.ek to i64
  %i.fl = getelementptr inbounds [4 x i8], ptr %4, i64 %i.fk
  store i32 %.2272364.us.us, ptr %i.fl, align 4, !tbaa !12
  %i.fm = getelementptr inbounds [4 x i8], ptr %3, i64 %.pre-phi526
  store i32 %i.ek, ptr %i.fm, align 4, !tbaa !12
  %i.fn = icmp slt i32 %.1279.us.us, %.0.lcssa
  br i1 %i.fn, label %.lr.ph419.us.us, label %._crit_edge428.split.us.us, !llvm.loop !19

._crit_edge420.us.us:                             ; preds = %bb.ac
  %i.fo = add nsw i32 %.0278425.us.us, 1          ; 4 uses
  %i.fp = icmp slt i32 %.1268.us.us, 0            ; 2 uses
  %spec.select356.us.us = select i1 %i.fp, i32 %.1277.us.us, i32 %.1274.us.us ; 2 uses
  %spec.select357.us.us = select i1 %i.fp, i32 %.1271.us.us, i32 %.1268.us.us ; 3 uses
  %i.fq = sext i32 %.1271.us.us to i64            ; 5 uses
  %i.fr = getelementptr inbounds [4 x i8], ptr %3, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !12 ; 3 uses
  %i.ft = icmp slt i32 %.1277.us.us, %spec.select356.us.us
  br i1 %i.ft, label %bb.ae, label %bb.ad

bb.ag:                                            ; preds = %._crit_edge411
  tail call void @free(ptr noundef %i.m) #8
  tail call void @free(ptr noundef %i.bh) #8
  br label %bb.at

.split.us:                                        ; preds = %.thread.us.us.1, %.preheader385.us.preheader, %._crit_edge428.split.us.us
  %.3.lcssa.us.1 = phi i32 [ 0, %._crit_edge428.split.us.us ], [ 0, %.preheader385.us.preheader ], [ %.4.us.us.1, %.thread.us.us.1 ] ; 2 uses
  %i.fu = tail call ptr @xmalloc(i64 noundef %i.j) #8 ; 12 uses
  %i.fv = tail call ptr @xmalloc(i64 noundef %i.j) #8 ; 8 uses
  %i.fw = tail call ptr @xmalloc(i64 noundef %i.j) #8 ; 16 uses
  %i.fx = icmp sgt i32 %.3.lcssa.us.1, 0
  br i1 %i.fx, label %.lr.ph458, label %._crit_edge459

.lr.ph458:                                        ; preds = %.split.us
  %i.fy = ptrtoaddr ptr %i.fw to i64              ; 4 uses
  %i.fz = ptrtoaddr ptr %i.fv to i64              ; 4 uses
  %i.ga = ptrtoaddr ptr %i.fu to i64              ; 4 uses
  %wide.trip.count523 = zext nneg i32 %.3.lcssa.us.1 to i64
  %wide.trip.count496 = zext nneg i32 %0 to i64
  %min.iters.check = icmp ult i32 %0, 20
  %i.gb = sub i64 %i.ga, %i.fz
  %diff.check = icmp ugt i64 %i.gb, -32
  %i.gc = sub i64 %i.ga, %i.fy
  %diff.check572 = icmp ugt i64 %i.gc, -32
  %conflict.rdx = or i1 %diff.check, %diff.check572
  %invariant.op = sub i64 %i.a, %i.ga
  %i.gd = sub i64 %i.n, %i.ga
  %diff.check575 = icmp ugt i64 %i.gd, -32
  %invariant.op622 = or i1 %conflict.rdx, %diff.check575
  %i.ge = sub i64 %i.fz, %i.fy
  %diff.check577 = icmp ugt i64 %i.ge, -32
  %invariant.op623 = or i1 %invariant.op622, %diff.check577
  %invariant.op624 = sub i64 %i.a, %i.fz
  %i.gf = sub i64 %i.n, %i.fz
  %diff.check581 = icmp ugt i64 %i.gf, -32
  %invariant.op626 = sub i64 %i.a, %i.fy
  %i.gg = sub i64 %i.n, %i.fy
  %diff.check585 = icmp ugt i64 %i.gg, -32
  %n.vec = and i64 %i.p, 2147483640               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.p
  %xtraiter607 = and i64 %i.p, 1
  %lcmp.mod608.not = icmp eq i64 %xtraiter607, 0
  %i.gh = add nsw i64 %i.p, -1
  br label %.lr.ph435

.lr.ph435:                                        ; preds = %bb.as, %.lr.ph458
  %indvars.iv520 = phi i64 [ 0, %.lr.ph458 ], [ %indvars.iv.next521, %bb.as ] ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv520
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !12 ; 6 uses
  %i.gk = mul nsw i32 %i.gj, %0
  %i.gl = sext i32 %i.gk to i64                   ; 2 uses
  %invariant.gep559 = getelementptr [4 x i8], ptr %2, i64 %i.gl ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph435
  %i.gm = shl nsw i64 %i.gl, 2                    ; 3 uses
  %.reass = add i64 %i.gm, %invariant.op
  %diff.check573 = icmp ugt i64 %.reass, -32
  %conflict.rdx578.reass = or i1 %diff.check573, %invariant.op623
  %.reass625 = add i64 %i.gm, %invariant.op624
  %diff.check579 = icmp ugt i64 %.reass625, -32
  %conflict.rdx580 = or i1 %conflict.rdx578.reass, %diff.check579
  %conflict.rdx582 = or i1 %conflict.rdx580, %diff.check581
  %.reass627 = add i64 %i.gm, %invariant.op626
  %diff.check583 = icmp ugt i64 %.reass627, -32
  %conflict.rdx584 = or i1 %conflict.rdx582, %diff.check583
  %conflict.rdx586 = or i1 %conflict.rdx584, %diff.check585
  br i1 %conflict.rdx586, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.gj, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.gn = getelementptr [4 x i8], ptr %invariant.gep559, i64 %index ; 2 uses
  %i.go = getelementptr i8, ptr %i.gn, i64 16
  %wide.load = load <4 x i32>, ptr %i.gn, align 4, !tbaa !12
  %wide.load587 = load <4 x i32>, ptr %i.go, align 4, !tbaa !12
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %wide.load588 = load <4 x i32>, ptr %i.gp, align 4, !tbaa !12
  %wide.load589 = load <4 x i32>, ptr %i.gq, align 4, !tbaa !12
  %i.gr = sub nsw <4 x i32> %wide.load, %wide.load588
  %i.gs = sub nsw <4 x i32> %wide.load587, %wide.load589
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %index ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  store <4 x i32> %i.gr, ptr %i.gt, align 4, !tbaa !12
  store <4 x i32> %i.gs, ptr %i.gu, align 4, !tbaa !12
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %index ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.gv, align 4, !tbaa !12
  store <4 x i32> %broadcast.splat, ptr %i.gw, align 4, !tbaa !12
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %index ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  store <4 x i32> %vec.ind, ptr %i.gx, align 4, !tbaa !12
  store <4 x i32> %step.add, ptr %i.gy, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.gz = icmp eq i64 %index.next, %n.vec
  br i1 %i.gz, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.preheader384.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph435, %middle.block
  %indvars.iv492.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph435 ], [ %n.vec, %middle.block ] ; 9 uses
  br i1 %lcmp.mod608.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %gep560.prol = getelementptr [4 x i8], ptr %invariant.gep559, i64 %indvars.iv492.ph
  %i.ha = load i32, ptr %gep560.prol, align 4, !tbaa !12
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv492.ph
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !12
  %i.hd = sub nsw i32 %i.ha, %i.hc
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv492.ph
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !12
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv492.ph
  store i32 %i.gj, ptr %i.hf, align 4, !tbaa !12
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %indvars.iv492.ph
  %i.hh = trunc nuw nsw i64 %indvars.iv492.ph to i32
  store i32 %i.hh, ptr %i.hg, align 4, !tbaa !12
  %indvars.iv.next493.prol = or disjoint i64 %indvars.iv492.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv492.unr = phi i64 [ %indvars.iv492.ph, %scalar.ph.preheader ], [ %indvars.iv.next493.prol, %scalar.ph.prol ]
  %i.hi = icmp eq i64 %indvars.iv492.ph, %i.gh
  br i1 %i.hi, label %.preheader384.preheader, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv492 = phi i64 [ %indvars.iv.next493.1, %scalar.ph ], [ %indvars.iv492.unr, %scalar.ph.prol.loopexit ] ; 8 uses
  %gep560 = getelementptr [4 x i8], ptr %invariant.gep559, i64 %indvars.iv492
  %i.hj = load i32, ptr %gep560, align 4, !tbaa !12
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv492
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !12
  %i.hm = sub nsw i32 %i.hj, %i.hl
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv492
  store i32 %i.hm, ptr %i.hn, align 4, !tbaa !12
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv492
  store i32 %i.gj, ptr %i.ho, align 4, !tbaa !12
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %indvars.iv492
  %i.hq = trunc nuw nsw i64 %indvars.iv492 to i32
  store i32 %i.hq, ptr %i.hp, align 4, !tbaa !12
  %indvars.iv.next493 = add nuw nsw i64 %indvars.iv492, 1 ; 6 uses
  %gep560.1 = getelementptr [4 x i8], ptr %invariant.gep559, i64 %indvars.iv.next493
  %i.hr = load i32, ptr %gep560.1, align 4, !tbaa !12
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next493
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !12
  %i.hu = sub nsw i32 %i.hr, %i.ht
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv.next493
  store i32 %i.hu, ptr %i.hv, align 4, !tbaa !12
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv.next493
  store i32 %i.gj, ptr %i.hw, align 4, !tbaa !12
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %indvars.iv.next493
  %i.hy = trunc nuw nsw i64 %indvars.iv.next493 to i32
  store i32 %i.hy, ptr %i.hx, align 4, !tbaa !12
  %indvars.iv.next493.1 = add nuw nsw i64 %indvars.iv492, 2 ; 2 uses
  %exitcond497.not.1 = icmp eq i64 %indvars.iv.next493.1, %wide.trip.count496
  br i1 %exitcond497.not.1, label %.preheader384.preheader, label %scalar.ph, !llvm.loop !23

.preheader384.preheader:                          ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  br label %.preheader384

.loopexit380:                                     ; preds = %._crit_edge450
  br label %.preheader384, !llvm.loop !24

.preheader384:                                    ; preds = %.preheader384.preheader, %.loopexit380
  %.4335 = phi i32 [ %.7.lcssa, %.loopexit380 ], [ -1, %.preheader384.preheader ]
  %.0264 = phi i32 [ %.5263.lcssa, %.loopexit380 ], [ 0, %.preheader384.preheader ] ; 8 uses
  %i.hz = add nsw i32 %.0264, 1                   ; 3 uses
  %i.ia = sext i32 %.0264 to i64                  ; 4 uses
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !12
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.fu, i64 %i.id
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !12 ; 2 uses
  %i.ig = icmp slt i32 %i.hz, %0
  br i1 %i.ig, label %.lr.ph440.preheader, label %.preheader381

.lr.ph440.preheader:                              ; preds = %.preheader384
  %i.ih = add nsw i64 %i.ia, 1
  br label %.lr.ph440

.preheader381:                                    ; preds = %bb.ai, %.preheader384
  %.5336.lcssa = phi i32 [ %.4335, %.preheader384 ], [ %i.ik, %bb.ai ] ; 2 uses
  %.1259.lcssa = phi i32 [ %i.hz, %.preheader384 ], [ %.3261, %bb.ai ] ; 3 uses
  %.0251.lcssa = phi i32 [ %i.if, %.preheader384 ], [ %.2253, %bb.ai ] ; 5 uses
  %i.ii = icmp slt i32 %.0264, %.1259.lcssa
  br i1 %i.ii, label %.lr.ph445, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.aj, %.preheader381
  br label %.preheader

.lr.ph440:                                        ; preds = %.lr.ph440.preheader, %bb.ai
  %indvars.iv498 = phi i64 [ %i.ih, %.lr.ph440.preheader ], [ %indvars.iv.next499, %bb.ai ] ; 2 uses
  %.0251438 = phi i32 [ %i.if, %.lr.ph440.preheader ], [ %.2253, %bb.ai ] ; 3 uses
  %.1259436 = phi i32 [ %i.hz, %.lr.ph440.preheader ], [ %.3261, %bb.ai ] ; 2 uses
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %indvars.iv498 ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !12 ; 3 uses
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [4 x i8], ptr %i.fu, i64 %i.il
  %i.in = load i32, ptr %i.im, align 4, !tbaa !12 ; 3 uses
  %.not351 = icmp sgt i32 %i.in, %.0251438
  br i1 %.not351, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph440
  %i.io = icmp slt i32 %i.in, %.0251438
  %spec.select358 = select i1 %i.io, i32 %.0264, i32 %.1259436 ; 2 uses
  %i.ip = sext i32 %spec.select358 to i64
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.ip ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !12
  store i32 %i.ir, ptr %i.ij, align 4, !tbaa !12
  %i.is = add nsw i32 %spec.select358, 1
  store i32 %i.ik, ptr %i.iq, align 4, !tbaa !12
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph440, %bb.ah
  %.3261 = phi i32 [ %i.is, %bb.ah ], [ %.1259436, %.lr.ph440 ] ; 2 uses
  %.2253 = phi i32 [ %i.in, %bb.ah ], [ %.0251438, %.lr.ph440 ] ; 2 uses
  %indvars.iv.next499 = add nsw i64 %indvars.iv498, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next499 to i32
  %exitcond501.not = icmp eq i32 %0, %lftr.wideiv
  br i1 %exitcond501.not, label %.preheader381, label %.lr.ph440, !llvm.loop !25

bb.aj:                                            ; preds = %.lr.ph445
  %indvars.iv.next503 = add nsw i64 %indvars.iv502, 1 ; 2 uses
  %lftr.wideiv505 = trunc i64 %indvars.iv.next503 to i32
  %exitcond506.not = icmp eq i32 %.1259.lcssa, %lftr.wideiv505
  br i1 %exitcond506.not, label %.preheader.preheader, label %.lr.ph445, !llvm.loop !26

.lr.ph445:                                        ; preds = %.preheader381, %bb.aj
  %indvars.iv502 = phi i64 [ %indvars.iv.next503, %bb.aj ], [ %i.ia, %.preheader381 ] ; 2 uses
  %i.it = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %indvars.iv502
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !12
  %i.iv = sext i32 %i.iu to i64
  %i.iw = getelementptr inbounds [4 x i8], ptr %3, i64 %i.iv
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !12
  %i.iy = icmp eq i32 %i.ix, -1
  br i1 %i.iy, label %.loopexit, label %bb.aj
end_hunk_0
