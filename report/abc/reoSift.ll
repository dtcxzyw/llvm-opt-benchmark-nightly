Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/reoSift?download=true
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@str.1 = private unnamed_addr constant [70 x i8] c"reoReorderSift(): Error! On the return move, the costs are different.\00", align 1
@str.2 = private unnamed_addr constant [72 x i8] c"reoReorderSift(): Error! On the backward move, the costs are different.\00", align 1
@str.3 = private unnamed_addr constant [71 x i8] c"reoReorderSift():  Error! On the return move, the costs are different.\00", align 1

; Function Attrs: nounwind uwtable
define void @reoReorderSift(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.c = load i32, ptr %i.b, align 4, !tbaa !21
  %i.d = sitofp i32 %i.c to double
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !22
  %.not338 = icmp eq i32 %i.f, 0
  br i1 %.not338, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load double, ptr %i.g, align 8, !tbaa !23
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.j = load i32, ptr %i.i, align 4, !tbaa !24
  %i.k = sitofp i32 %i.j to double
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.0305 = phi double [ %i.d, %bb.b ], [ %i.h, %bb.d ], [ %i.k, %bb.e ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 5 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !25   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.preheader367.lr.ph, label %._crit_edge507

.preheader367.lr.ph:                              ; preds = %bb.f
  %i.o = fmul double %.0305, 1.150000e+00
  %i.p = fptosi double %i.o to i32
  %i.q = add nsw i32 %i.p, 1
  %i.r = sitofp i32 %i.q to double
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %.preheader367

.preheader367:                                    ; preds = %.preheader367.lr.ph, %bb.bm
  %i.z = phi i32 [ %i.m, %.preheader367.lr.ph ], [ %i.pa, %bb.bm ] ; 11 uses
  %.0268503 = phi i32 [ 0, %.preheader367.lr.ph ], [ %i.oz, %bb.bm ]
  %.0295502 = phi double [ %i.r, %.preheader367.lr.ph ], [ %.9304, %bb.bm ] ; 4 uses
  %.1306501 = phi double [ %.0305, %.preheader367.lr.ph ], [ %.12, %bb.bm ] ; 9 uses
  %i.aa = icmp sgt i32 %i.z, 0
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !26  ; 37 uses
  %.pre558 = load ptr, ptr %i.s, align 8, !tbaa !27 ; 4 uses
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader367
  %wide.trip.count = zext nneg i32 %i.z to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ab = icmp eq i32 %i.z, 1
  br i1 %i.ab, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.g

.preheader:                                       ; preds = %bb.bm
  %i.ac = icmp sgt i32 %i.pa, 0
  br i1 %i.ac, label %.lr.ph506, label %._crit_edge507

.lr.ph506:                                        ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !26 ; 5 uses
  %wide.trip.count556 = zext nneg i32 %i.pa to i64 ; 2 uses
  %xtraiter691 = and i64 %wide.trip.count556, 3   ; 3 uses
  %i.af = icmp ult i32 %i.pa, 4
  br i1 %i.af, label %.epil.preheader690, label %.lr.ph506.new

.lr.ph506.new:                                    ; preds = %.lr.ph506
  %unroll_iter695 = and i64 %wide.trip.count556, 2147483644
  br label %bb.bn

bb.g:                                             ; preds = %bb.m, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.m ] ; 5 uses
  %.0275369 = phi i32 [ -1, %.lr.ph.new ], [ %.1276.1, %bb.m ] ; 2 uses
  %.0285368 = phi double [ -1.000000e+00, %.lr.ph.new ], [ %.1286.1, %bb.m ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.m ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.pre558, i64 %indvars.iv
  store double 1.000000e+07, ptr %i.ag, align 8, !tbaa !28
  %i.ah = getelementptr inbounds nuw [56 x i8], ptr %.pre, i64 %indvars.iv ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !29
  %.not362 = icmp eq i32 %i.ai, 0
  br i1 %.not362, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !31
  %i.al = sitofp i32 %i.ak to double              ; 2 uses
  %i.am = fcmp olt double %.0285368, %i.al
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h
  %.1286 = phi double [ %.0285368, %bb.g ], [ %i.al, %bb.i ], [ %.0285368, %bb.h ] ; 3 uses
  %.1276 = phi i32 [ %.0275369, %bb.g ], [ %i.an, %bb.i ], [ %.0275369, %bb.h ] ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.pre558, i64 %indvars.iv.next
  store double 1.000000e+07, ptr %i.ao, align 8, !tbaa !28
  %i.ap = getelementptr inbounds nuw [56 x i8], ptr %.pre, i64 %indvars.iv.next ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !29
  %.not362.1 = icmp eq i32 %i.aq, 0
  br i1 %.not362.1, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !31
  %i.at = sitofp i32 %i.as to double              ; 2 uses
  %i.au = fcmp olt double %.1286, %i.at
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.av = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.1286.1 = phi double [ %.1286, %bb.j ], [ %i.at, %bb.l ], [ %.1286, %bb.k ] ; 2 uses
  %.1276.1 = phi i32 [ %.1276, %bb.j ], [ %i.av, %bb.l ], [ %.1276, %bb.k ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.g, !llvm.loop !32

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.0275369.epil.init = phi i32 [ -1, %.lr.ph ], [ %.1276.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.0285368.epil.init = phi double [ -1.000000e+00, %.lr.ph ], [ %.1286.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod672 = trunc i32 %i.z to i1
  tail call void @llvm.assume(i1 %lcmp.mod672)
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.pre558, i64 %indvars.iv.epil.init
  store double 1.000000e+07, ptr %i.aw, align 8, !tbaa !28
  %i.ax = getelementptr inbounds nuw [56 x i8], ptr %.pre, i64 %indvars.iv.epil.init ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !29
  %.not362.epil = icmp eq i32 %i.ay, 0
  br i1 %.not362.epil, label %bb.n, label %._crit_edge

bb.n:                                             ; preds = %.epil.preheader
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !31
  %i.bb = sitofp i32 %i.ba to double
  %i.bc = fcmp olt double %.0285368.epil.init, %i.bb
  br i1 %i.bc, label %1, label %._crit_edge

1:                                                ; preds = %bb.n
  %2 = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %1, %bb.n, %.epil.preheader, %.preheader367
  %.0275.lcssa = phi i32 [ -1, %.preheader367 ], [ %.1276.1, %._crit_edge.loopexit.unr-lcssa ], [ %.0275369.epil.init, %.epil.preheader ], [ %2, %1 ], [ %.0275369.epil.init, %bb.n ] ; 18 uses
  %i.bd = sext i32 %.0275.lcssa to i64            ; 9 uses
  %i.be = getelementptr inbounds [56 x i8], ptr %.pre, i64 %i.bd
  store i32 1, ptr %i.be, align 8, !tbaa !29
  %i.bf = getelementptr inbounds [8 x i8], ptr %.pre558, i64 %i.bd
  store double %.1306501, ptr %i.bf, align 8, !tbaa !28
  %i.bg = sdiv i32 %i.z, 2
  %i.bh = icmp slt i32 %.0275.lcssa, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  store double 0.000000e+00, ptr %i.bi, align 8, !tbaa !34
  %.not349436 = icmp slt i32 %.0275.lcssa, 1      ; 2 uses
  br i1 %i.bh, label %bb.o, label %bb.al

bb.o:                                             ; preds = %._crit_edge
  br i1 %.not349436, label %._crit_edge440, label %.lr.ph439.preheader

.lr.ph439.preheader:                              ; preds = %bb.o
  %i.bj = zext nneg i32 %.0275.lcssa to i64       ; 2 uses
  %xtraiter680 = and i64 %i.bj, 3                 ; 3 uses
  %i.bk = icmp ult i32 %.0275.lcssa, 4
  br i1 %i.bk, label %.lr.ph439.epil.preheader, label %.lr.ph439.preheader.new

.lr.ph439.preheader.new:                          ; preds = %.lr.ph439.preheader
  %unroll_iter684 = and i64 %i.bj, 2147483644
  br label %.lr.ph439

.lr.ph439:                                        ; preds = %.lr.ph439, %.lr.ph439.preheader.new
  %indvars.iv536 = phi i64 [ 1, %.lr.ph439.preheader.new ], [ %indvars.iv.next537.3, %.lr.ph439 ] ; 5 uses
  %niter685 = phi i64 [ 0, %.lr.ph439.preheader.new ], [ %niter685.next.3, %.lr.ph439 ]
  %i.bl = getelementptr [56 x i8], ptr %.pre, i64 %indvars.iv536 ; 3 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 -24
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !34
  %i.bo = getelementptr i8, ptr %i.bl, i64 -32
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !35
  %i.bq = fadd double %i.bn, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  store double %i.bq, ptr %i.br, align 8, !tbaa !34
  %i.bs = getelementptr [56 x i8], ptr %.pre, i64 %indvars.iv536 ; 3 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 32
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !34
  %i.bv = getelementptr i8, ptr %i.bs, i64 24
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !35
  %i.bx = fadd double %i.bu, %i.bw
  %i.by = getelementptr i8, ptr %i.bs, i64 88
  store double %i.bx, ptr %i.by, align 8, !tbaa !34
  %i.bz = getelementptr [56 x i8], ptr %.pre, i64 %indvars.iv536 ; 3 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 88
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !34
  %i.cc = getelementptr i8, ptr %i.bz, i64 80
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !35
  %i.ce = fadd double %i.cb, %i.cd
  %i.cf = getelementptr i8, ptr %i.bz, i64 144
  store double %i.ce, ptr %i.cf, align 8, !tbaa !34
  %i.cg = getelementptr [56 x i8], ptr %.pre, i64 %indvars.iv536 ; 3 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 144
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !34
  %i.cj = getelementptr i8, ptr %i.cg, i64 136
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !35
  %i.cl = fadd double %i.ci, %i.ck
  %i.cm = getelementptr i8, ptr %i.cg, i64 200
  store double %i.cl, ptr %i.cm, align 8, !tbaa !34
  %indvars.iv.next537.3 = add nuw nsw i64 %indvars.iv536, 4 ; 2 uses
  %niter685.next.3 = add i64 %niter685, 4         ; 2 uses
  %niter685.ncmp.3 = icmp eq i64 %niter685.next.3, %unroll_iter684
  br i1 %niter685.ncmp.3, label %._crit_edge440.loopexit.unr-lcssa, label %.lr.ph439, !llvm.loop !36

._crit_edge440.loopexit.unr-lcssa:                ; preds = %.lr.ph439
  %lcmp.mod682.not = icmp eq i64 %xtraiter680, 0
  br i1 %lcmp.mod682.not, label %._crit_edge440, label %.lr.ph439.epil.preheader

.lr.ph439.epil.preheader:                         ; preds = %._crit_edge440.loopexit.unr-lcssa, %.lr.ph439.preheader
  %indvars.iv536.epil.init = phi i64 [ 1, %.lr.ph439.preheader ], [ %indvars.iv.next537.3, %._crit_edge440.loopexit.unr-lcssa ]
  %lcmp.mod683 = icmp ne i64 %xtraiter680, 0
  tail call void @llvm.assume(i1 %lcmp.mod683)
  br label %.lr.ph439.epil

.lr.ph439.epil:                                   ; preds = %.lr.ph439.epil, %.lr.ph439.epil.preheader
  %indvars.iv536.epil = phi i64 [ %indvars.iv536.epil.init, %.lr.ph439.epil.preheader ], [ %indvars.iv.next537.epil, %.lr.ph439.epil ] ; 2 uses
  %epil.iter681 = phi i64 [ 0, %.lr.ph439.epil.preheader ], [ %epil.iter681.next, %.lr.ph439.epil ]
  %i.cn = getelementptr [56 x i8], ptr %.pre, i64 %indvars.iv536.epil ; 3 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 -24
  %i.cp = load double, ptr %i.co, align 8, !tbaa !34
  %i.cq = getelementptr i8, ptr %i.cn, i64 -32
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !35
  %i.cs = fadd double %i.cp, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  store double %i.cs, ptr %i.ct, align 8, !tbaa !34
  %indvars.iv.next537.epil = add nuw nsw i64 %indvars.iv536.epil, 1
  %epil.iter681.next = add i64 %epil.iter681, 1   ; 2 uses
  %epil.iter681.cmp.not = icmp eq i64 %epil.iter681.next, %xtraiter680
  br i1 %epil.iter681.cmp.not, label %._crit_edge440, label %.lr.ph439.epil, !llvm.loop !37

._crit_edge440:                                   ; preds = %._crit_edge440.loopexit.unr-lcssa, %.lr.ph439.epil, %bb.o
  %i.cu = sext i32 %i.z to i64                    ; 5 uses
  %i.cv = getelementptr inbounds [56 x i8], ptr %.pre, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  store double 0.000000e+00, ptr %i.cw, align 8, !tbaa !39
  %.not350.not441 = icmp sgt i32 %i.z, %.0275.lcssa
  br i1 %.not350.not441, label %.lr.ph444.preheader, label %.preheader364

.lr.ph444.preheader:                              ; preds = %._crit_edge440
  %i.cx = sub nsw i64 %i.cu, %i.bd
  %xtraiter686 = and i64 %i.cx, 3                 ; 2 uses
  %lcmp.mod687.not = icmp eq i64 %xtraiter686, 0
  br i1 %lcmp.mod687.not, label %.lr.ph444.prol.loopexit, label %.lr.ph444.prol

.lr.ph444.prol:                                   ; preds = %.lr.ph444.preheader, %.lr.ph444.prol
  %i.cy = phi double [ %i.dc, %.lr.ph444.prol ], [ 0.000000e+00, %.lr.ph444.preheader ]
  %indvars.iv541.prol = phi i64 [ %indvars.iv.next542.prol, %.lr.ph444.prol ], [ %i.cu, %.lr.ph444.preheader ] ; 2 uses
  %prol.iter688 = phi i64 [ %prol.iter688.next, %.lr.ph444.prol ], [ 0, %.lr.ph444.preheader ]
  %indvars.iv.next542.prol = add nsw i64 %indvars.iv541.prol, -1 ; 3 uses
  %i.cz = getelementptr inbounds [56 x i8], ptr %.pre, i64 %indvars.iv541.prol
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load double, ptr %i.da, align 8, !tbaa !35
  %i.dc = fadd double %i.cy, %i.db                ; 3 uses
  %i.dd = getelementptr inbounds [56 x i8], ptr %.pre, i64 %indvars.iv.next542.prol
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  store double %i.dc, ptr %i.de, align 8, !tbaa !39
  %prol.iter688.next = add i64 %prol.iter688, 1   ; 2 uses
  %prol.iter688.cmp.not = icmp eq i64 %prol.iter688.next, %xtraiter686
  br i1 %prol.iter688.cmp.not, label %.lr.ph444.prol.loopexit, label %.lr.ph444.prol, !llvm.loop !40

.lr.ph444.prol.loopexit:                          ; preds = %.lr.ph444.prol, %.lr.ph444.preheader
  %.unr689 = phi double [ 0.000000e+00, %.lr.ph444.preheader ], [ %i.dc, %.lr.ph444.prol ]
  %indvars.iv541.unr = phi i64 [ %i.cu, %.lr.ph444.preheader ], [ %indvars.iv.next542.prol, %.lr.ph444.prol ]
  %i.df = sub nsw i64 %i.bd, %i.cu
  %i.dg = icmp ugt i64 %i.df, -4
  br i1 %i.dg, label %.preheader364, label %.lr.ph444

.preheader364:                                    ; preds = %.lr.ph444.prol.loopexit, %.lr.ph444, %._crit_edge440
  %i.dh = icmp sgt i32 %.0275.lcssa, 0
  br i1 %i.dh, label %.lr.ph452.preheader, label %._crit_edge453

.lr.ph452.preheader:                              ; preds = %.preheader364
  %i.di = zext nneg i32 %.0275.lcssa to i64
  br label %.lr.ph452

.lr.ph444:                                        ; preds = %.lr.ph444.prol.loopexit, %.lr.ph444
  %i.dj = phi double [ %i.ef, %.lr.ph444 ], [ %.unr689, %.lr.ph444.prol.loopexit ]
  %indvars.iv541 = phi i64 [ %indvars.iv.next542.3, %.lr.ph444 ], [ %indvars.iv541.unr, %.lr.ph444.prol.loopexit ] ; 5 uses
  %indvars.iv.next542 = add nsw i64 %indvars.iv541, -1 ; 2 uses
  %i.dk = getelementptr inbounds [56 x i8], ptr %.pre, i64 %indvars.iv541
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !35
  %i.dn = fadd double %i.dj, %i.dm                ; 2 uses
  %i.do = getelementptr inbounds [56 x i8], ptr %.pre, i64 %indvars.iv.next542
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  store double %i.dn, ptr %i.dp, align 8, !tbaa !39
  %indvars.iv.next542.1 = add nsw i64 %indvars.iv541, -2 ; 2 uses
  %i.dq = getelementptr inbounds [56 x i8], ptr %.pre, i64 %indvars.iv.next542
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !35
  %i.dt = fadd double %i.dn, %i.ds                ; 2 uses
  %i.du = getelementptr inbounds [56 x i8], ptr %.pre, i64 %indvars.iv.next542.1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  store double %i.dt, ptr %i.dv, align 8, !tbaa !39
  %indvars.iv.next542.2 = add nsw i64 %indvars.iv541, -3 ; 2 uses
  %i.dw = getelementptr inbounds [56 x i8], ptr %.pre, i64 %indvars.iv.next542.1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !35
  %i.dz = fadd double %i.dt, %i.dy                ; 2 uses
  %i.ea = getelementptr inbounds [56 x i8], ptr %.pre, i64 %indvars.iv.next542.2
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  store double %i.dz, ptr %i.eb, align 8, !tbaa !39
  %indvars.iv.next542.3 = add nsw i64 %indvars.iv541, -4 ; 3 uses
  %i.ec = getelementptr inbounds [56 x i8], ptr %.pre, i64 %indvars.iv.next542.2
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !35
  %i.ef = fadd double %i.dz, %i.ee                ; 2 uses
  %i.eg = getelementptr inbounds [56 x i8], ptr %.pre, i64 %indvars.iv.next542.3
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 40
  store double %i.ef, ptr %i.eh, align 8, !tbaa !39
  %.not350.not.3 = icmp sgt i64 %indvars.iv.next542.3, %i.bd
  br i1 %.not350.not.3, label %.lr.ph444, label %.preheader364, !llvm.loop !41

.lr.ph452:                                        ; preds = %.lr.ph452.preheader, %bb.w
  %indvars.iv544 = phi i64 [ %i.di, %.lr.ph452.preheader ], [ %indvars.iv.next545, %bb.w ] ; 5 uses
  %.0277449 = phi i32 [ %.0275.lcssa, %.lr.ph452.preheader ], [ %.1278, %bb.w ] ; 3 uses
  %.2287448 = phi double [ %.1306501, %.lr.ph452.preheader ], [ %.3288, %bb.w ] ; 5 uses
  %.1296447 = phi double [ %.0295502, %.lr.ph452.preheader ], [ %.2297, %bb.w ] ; 6 uses
  %.2307446 = phi double [ %.1306501, %.lr.ph452.preheader ], [ %i.ek, %bb.w ]
  %indvars.iv.next545 = add nsw i64 %indvars.iv544, -1 ; 4 uses
  %i.ei = trunc nuw nsw i64 %indvars.iv.next545 to i32 ; 2 uses
  %i.ej = tail call double @reoReorderSwapAdjacentVars(ptr noundef nonnull %0, i32 noundef %i.ei, i32 noundef 1) #6
  %i.ek = fsub double %.2307446, %i.ej            ; 7 uses
  %i.el = load ptr, ptr %i.s, align 8, !tbaa !27
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv.next545
  store double %i.ek, ptr %i.em, align 8, !tbaa !28
  %i.en = load ptr, ptr %i.t, align 8, !tbaa !26  ; 2 uses
  %i.eo = getelementptr inbounds nuw [56 x i8], ptr %i.en, i64 %indvars.iv544 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !39
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.es = load double, ptr %i.er, align 8, !tbaa !35
  %i.et = fadd double %i.eq, %i.es                ; 2 uses
  %i.eu = getelementptr inbounds nuw [56 x i8], ptr %i.en, i64 %indvars.iv.next545 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  store double %i.et, ptr %i.ev, align 8, !tbaa !39
  %i.ew = fcmp ult double %i.ek, %.1296447
  br i1 %i.ew, label %bb.p, label %._crit_edge453.loopexit.split.loop.exit600

end_hunk_0
