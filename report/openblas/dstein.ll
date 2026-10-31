Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dstein?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"DSTEIN\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Precision\00", align 1
@c__2 = internal global i32 2, align 4
@c__1 = internal global i32 1, align 4
@c_n1 = internal global i32 -1, align 4

; Function Attrs: nounwind uwtable
define void @dstein_(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7, ptr nofree noundef readonly captures(none) %8, ptr noundef %9, ptr noundef %10, ptr nofree noundef writeonly captures(none) %11, ptr nofree noundef captures(none) initializes((0, 4)) %12) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %7 to i64
  %i.b = ptrtoaddr ptr %9 to i64
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 13 uses
  %i.e = alloca [4 x i32], align 16               ; 4 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca double, align 8                   ; 9 uses
  %i.h = alloca i32, align 4                      ; 33 uses
  %i.i = alloca double, align 8                   ; 12 uses
  %i.j = alloca double, align 8                   ; 7 uses
  %i.k = alloca double, align 8                   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #6
  %i.l = getelementptr inbounds i8, ptr %1, i64 -8 ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %2, i64 -8 ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %4, i64 -8 ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %5, i64 -4 ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %6, i64 -4 ; 2 uses
  %i.q = load i32, ptr %8, align 4, !tbaa !17     ; 8 uses
  %narrow = xor i32 %i.q, -1
  %i.r = sext i32 %narrow to i64                  ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %7, i64 %i.r ; 14 uses
  %i.t = getelementptr inbounds i8, ptr %9, i64 -8 ; 22 uses
  %i.u = getelementptr inbounds i8, ptr %11, i64 -4
  store i32 0, ptr %12, align 4, !tbaa !17
  %i.v = load i32, ptr %3, align 4, !tbaa !17     ; 2 uses
  %.not324 = icmp slt i32 %i.v, 1
  br i1 %.not324, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %11, i8 0, i64 %i.x, i1 false), !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  %i.y = load i32, ptr %0, align 4, !tbaa !17     ; 5 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %.thread.sink.split, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.aa = load i32, ptr %3, align 4, !tbaa !17    ; 4 uses
  %or.cond = icmp ugt i32 %i.aa, %i.y
  br i1 %or.cond, label %.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i32, ptr %8, align 4, !tbaa !17
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.y, i32 1)
  %i.ac = icmp slt i32 %i.ab, %spec.select
  br i1 %i.ac, label %.thread.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not307326 = icmp samesign ult i32 %i.aa, 2
  br i1 %.not307326, label %._crit_edge330, label %.lr.ph329.preheader

.lr.ph329.preheader:                              ; preds = %bb.d
  %i.ad = add nuw i32 %i.aa, 1
  %wide.trip.count = zext i32 %i.ad to i64
  %.pre = load i32, ptr %5, align 4, !tbaa !17
  br label %.lr.ph329

.lr.ph329:                                        ; preds = %.lr.ph329.preheader, %bb.g
  %i.ae = phi i32 [ %.pre, %.lr.ph329.preheader ], [ %i.ag, %bb.g ] ; 2 uses
  %indvars.iv = phi i64 [ 2, %.lr.ph329.preheader ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !17 ; 3 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %.lr.ph329
  %i.ai = icmp eq i32 %i.ag, %i.ae
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !19
  %i.al = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.am = getelementptr i8, ptr %i.al, i64 -8
  %i.an = load double, ptr %i.am, align 8, !tbaa !19
  %i.ao = fcmp olt double %i.ak, %i.an
  br i1 %i.ao, label %.thread.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge330, label %.lr.ph329, !llvm.loop !8

._crit_edge330:                                   ; preds = %bb.g, %bb.d
  %.pr = load i32, ptr %12, align 4, !tbaa !17    ; 2 uses
  %.not308 = icmp eq i32 %.pr, 0
  br i1 %.not308, label %bb.h, label %.thread

.thread.sink.split:                               ; preds = %bb.f, %.lr.ph329, %bb.c, %bb.b, %._crit_edge
  %.sink = phi i32 [ -1, %._crit_edge ], [ -4, %bb.b ], [ -9, %bb.c ], [ -6, %.lr.ph329 ], [ -5, %bb.f ] ; 2 uses
  store i32 %.sink, ptr %12, align 4, !tbaa !17
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %._crit_edge330
  %i.ap = phi i32 [ %.pr, %._crit_edge330 ], [ %.sink, %.thread.sink.split ]
  %i.aq = sub nsw i32 0, %i.ap
  store i32 %i.aq, ptr %i.c, align 4, !tbaa !17
  %i.ar = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.c, i32 noundef 6) #6 ; 0 uses
  br label %.loopexit321

bb.h:                                             ; preds = %._crit_edge330
  %i.as = icmp eq i32 %i.y, 0
  %i.at = icmp eq i32 %i.aa, 0
  %or.cond452 = or i1 %i.as, %i.at
  br i1 %or.cond452, label %.loopexit321, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = icmp eq i32 %i.y, 1
  br i1 %i.au, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store double 1.000000e+00, ptr %7, align 8, !tbaa !19
  br label %.loopexit321

bb.k:                                             ; preds = %bb.i
  %i.av = tail call double @dlamch_(ptr noundef nonnull @.str.1) #6 ; 7 uses
  store <4 x i32> splat (i32 1), ptr %i.e, align 16, !tbaa !17
  %i.aw = load i32, ptr %0, align 4, !tbaa !17    ; 4 uses
  %i.ax = mul nsw i32 %i.aw, 3                    ; 4 uses
  %i.ay = load i32, ptr %3, align 4, !tbaa !17
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !17 ; 2 uses
  %.not309368 = icmp slt i32 %i.bb, 1
  br i1 %.not309368, label %.loopexit321, label %.lr.ph377

.lr.ph377:                                        ; preds = %bb.k
  %i.bc = shl nsw i32 %i.aw, 2
  %i.bd = shl nsw i32 %i.aw, 1
  %i.be = sext i32 %i.ax to i64
  %i.bf = getelementptr [8 x i8], ptr %i.t, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 8      ; 5 uses
  %i.bh = sext i32 %i.aw to i64
  %i.bi = getelementptr [8 x i8], ptr %i.t, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 16     ; 5 uses
  %i.bk = sext i32 %i.bd to i64
  %i.bl = getelementptr [8 x i8], ptr %i.t, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 8      ; 5 uses
  %i.bn = sext i32 %i.bc to i64
  %i.bo = getelementptr [8 x i8], ptr %i.t, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bo, i64 8      ; 4 uses
  %i.bq = sext i32 %i.q to i64                    ; 3 uses
  %i.br = shl nsw i64 %i.r, 3                     ; 2 uses
  %scevgep = getelementptr i8, ptr %7, i64 %i.br
  %i.bs = zext nneg i32 %i.bb to i64
  %invariant.op502 = add i64 %i.a, %i.br
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph377, %._crit_edge360
  %indvars.iv420 = phi i64 [ 1, %.lr.ph377 ], [ %indvars.iv.next421, %._crit_edge360 ] ; 6 uses
  %.0375 = phi double [ undef, %.lr.ph377 ], [ %.1.lcssa, %._crit_edge360 ] ; 2 uses
  %.0275374 = phi double [ undef, %.lr.ph377 ], [ %.1276, %._crit_edge360 ]
  %.0277373 = phi double [ undef, %.lr.ph377 ], [ %.2, %._crit_edge360 ]
  %.0280372 = phi double [ undef, %.lr.ph377 ], [ %.1281, %._crit_edge360 ]
  %.0282371 = phi i32 [ 1, %.lr.ph377 ], [ %.1283, %._crit_edge360 ] ; 8 uses
  %.0285370 = phi i32 [ undef, %.lr.ph377 ], [ %.2287.lcssa, %._crit_edge360 ]
  %i.bt = icmp eq i64 %indvars.iv420, 1
  br i1 %i.bt, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv420
  %i.bv = getelementptr i8, ptr %i.bu, i64 -4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !17
  %i.bx = add nsw i32 %i.bw, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.0284 = phi i32 [ %i.bx, %bb.m ], [ 1, %bb.l ] ; 7 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv420
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !17 ; 4 uses
  %i.ca = sub nsw i32 %i.bz, %.0284
  %i.cb = add nsw i32 %i.ca, 1                    ; 3 uses
  store i32 %i.cb, ptr %i.h, align 4, !tbaa !17
  %i.cc = icmp eq i32 %i.bz, %.0284
  br i1 %i.cc, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cd = sext i32 %.0284 to i64                  ; 8 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !19 ; 3 uses
  %i.cg = fcmp oge double %i.cf, 0.000000e+00
  %i.ch = fneg double %i.cf
  %i.ci = select i1 %i.cg, double %i.cf, double %i.ch
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.cd
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !19 ; 7 uses
  %i.cl = fcmp oge double %i.ck, 0.000000e+00
  %i.cm = fneg double %i.ck
  %i.cn = select i1 %i.cl, double %i.ck, double %i.cm
  %i.co = fadd double %i.ci, %i.cn                ; 2 uses
  %i.cp = sext i32 %i.bz to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.cp
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !19 ; 3 uses
  %i.cs = fcmp oge double %i.cr, 0.000000e+00
  %i.ct = fneg double %i.cr
  %i.cu = select i1 %i.cs, double %i.cr, double %i.ct
  %i.cv = add nsw i32 %i.bz, -1                   ; 2 uses
  %i.cw = sext i32 %i.cv to i64                   ; 4 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.cw
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !19 ; 3 uses
  %i.cz = fcmp oge double %i.cy, 0.000000e+00
  %i.da = fneg double %i.cy
  %i.db = select i1 %i.cz, double %i.cy, double %i.da
  %i.dc = fadd double %i.cu, %i.db                ; 2 uses
  %i.dd = fcmp oge double %i.co, %i.dc
  %i.de = select i1 %i.dd, double %i.co, double %i.dc ; 4 uses
  %.not310.not332 = icmp slt i32 %.0284, %i.cv
  br i1 %.not310.not332, label %.lr.ph336.preheader, label %._crit_edge337

.lr.ph336.preheader:                              ; preds = %bb.o
  %i.df = sub nsw i64 %i.cw, %i.cd
  %xtraiter = and i64 %i.df, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph336.prol.loopexit, label %.lr.ph336.prol

.lr.ph336.prol:                                   ; preds = %.lr.ph336.preheader
  %indvars.iv.next388.prol = add nsw i64 %i.cd, 1
  %i.dg = getelementptr [8 x i8], ptr %1, i64 %i.cd
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !19 ; 3 uses
  %i.di = fcmp oge double %i.dh, 0.000000e+00
  %i.dj = fneg double %i.dh
  %i.dk = select i1 %i.di, double %i.dh, double %i.dj
  %i.dl = fcmp oge double %i.ck, 0.000000e+00
  %i.dm = fneg double %i.ck
  %i.dn = select i1 %i.dl, double %i.ck, double %i.dm
  %i.do = fadd double %i.dk, %i.dn
  %i.dp = getelementptr [8 x i8], ptr %2, i64 %i.cd
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !19 ; 4 uses
  %i.dr = fcmp oge double %i.dq, 0.000000e+00
  %i.ds = fneg double %i.dq
  %i.dt = select i1 %i.dr, double %i.dq, double %i.ds
  %i.du = fadd double %i.do, %i.dt                ; 2 uses
  %i.dv = fcmp oge double %i.de, %i.du
  %i.dw = select i1 %i.dv, double %i.de, double %i.du ; 2 uses
  br label %.lr.ph336.prol.loopexit

.lr.ph336.prol.loopexit:                          ; preds = %.lr.ph336.prol, %.lr.ph336.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph336.preheader ], [ %i.dw, %.lr.ph336.prol ]
  %.unr = phi double [ %i.ck, %.lr.ph336.preheader ], [ %i.dq, %.lr.ph336.prol ]
  %indvars.iv387.unr = phi i64 [ %i.cd, %.lr.ph336.preheader ], [ %indvars.iv.next388.prol, %.lr.ph336.prol ]
  %.1278334.unr = phi double [ %i.de, %.lr.ph336.preheader ], [ %i.dw, %.lr.ph336.prol ]
  %i.dx = add nsw i64 %i.cw, -1
  %i.dy = icmp eq i64 %i.dx, %i.cd
  br i1 %i.dy, label %._crit_edge337, label %.lr.ph336

.lr.ph336:                                        ; preds = %.lr.ph336.prol.loopexit, %.lr.ph336
  %i.dz = phi double [ %i.fb, %.lr.ph336 ], [ %.unr, %.lr.ph336.prol.loopexit ] ; 3 uses
  %indvars.iv387 = phi i64 [ %indvars.iv.next388.1, %.lr.ph336 ], [ %indvars.iv387.unr, %.lr.ph336.prol.loopexit ] ; 4 uses
  %.1278334 = phi double [ %i.fh, %.lr.ph336 ], [ %.1278334.unr, %.lr.ph336.prol.loopexit ] ; 2 uses
  %indvars.iv.next388 = add nsw i64 %indvars.iv387, 1 ; 2 uses
  %i.ea = getelementptr [8 x i8], ptr %1, i64 %indvars.iv387
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !19 ; 3 uses
  %i.ec = fcmp oge double %i.eb, 0.000000e+00
  %i.ed = fneg double %i.eb
  %i.ee = select i1 %i.ec, double %i.eb, double %i.ed
  %i.ef = fcmp oge double %i.dz, 0.000000e+00
  %i.eg = fneg double %i.dz
  %i.eh = select i1 %i.ef, double %i.dz, double %i.eg
  %i.ei = fadd double %i.ee, %i.eh
  %i.ej = getelementptr [8 x i8], ptr %2, i64 %indvars.iv387
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !19 ; 6 uses
  %i.el = fcmp oge double %i.ek, 0.000000e+00
  %i.em = fneg double %i.ek
  %i.en = select i1 %i.el, double %i.ek, double %i.em
  %i.eo = fadd double %i.ei, %i.en                ; 2 uses
  %i.ep = fcmp oge double %.1278334, %i.eo
  %i.eq = select i1 %i.ep, double %.1278334, double %i.eo ; 2 uses
  %indvars.iv.next388.1 = add nsw i64 %indvars.iv387, 2 ; 2 uses
  %i.er = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next388
  %i.es = load double, ptr %i.er, align 8, !tbaa !19 ; 3 uses
  %i.et = fcmp oge double %i.es, 0.000000e+00
  %i.eu = fneg double %i.es
  %i.ev = select i1 %i.et, double %i.es, double %i.eu
  %i.ew = fcmp oge double %i.ek, 0.000000e+00
  %i.ex = fneg double %i.ek
  %i.ey = select i1 %i.ew, double %i.ek, double %i.ex
  %i.ez = fadd double %i.ev, %i.ey
  %i.fa = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.next388
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !19 ; 4 uses
  %i.fc = fcmp oge double %i.fb, 0.000000e+00
  %i.fd = fneg double %i.fb
  %i.fe = select i1 %i.fc, double %i.fb, double %i.fd
  %i.ff = fadd double %i.ez, %i.fe                ; 2 uses
  %i.fg = fcmp oge double %i.eq, %i.ff
  %i.fh = select i1 %i.fg, double %i.eq, double %i.ff ; 2 uses
  %exitcond391.not.1 = icmp eq i64 %indvars.iv.next388.1, %i.cw
  br i1 %exitcond391.not.1, label %._crit_edge337, label %.lr.ph336, !llvm.loop !9

._crit_edge337:                                   ; preds = %.lr.ph336.prol.loopexit, %.lr.ph336, %bb.o
  %.1278.lcssa = phi double [ %i.de, %bb.o ], [ %.lcssa.unr, %.lr.ph336.prol.loopexit ], [ %i.fh, %.lr.ph336 ] ; 2 uses
  %i.fi = fmul double %.1278.lcssa, 1.000000e-03
  %i.fj = sitofp i32 %i.cb to double
  %i.fk = fdiv double 1.000000e-01, %i.fj
  %i.fl = call double @sqrt(double noundef %i.fk) #6
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %._crit_edge337
  %.1286 = phi i32 [ %.0285370, %bb.n ], [ %.0282371, %._crit_edge337 ] ; 2 uses
  %.1281 = phi double [ %.0280372, %bb.n ], [ %i.fi, %._crit_edge337 ] ; 4 uses
  %.2 = phi double [ %.0277373, %bb.n ], [ %.1278.lcssa, %._crit_edge337 ] ; 4 uses
  %.1276 = phi double [ %.0275374, %bb.n ], [ %i.fl, %._crit_edge337 ] ; 4 uses
  %i.fm = load i32, ptr %3, align 4, !tbaa !17    ; 2 uses
  %.not311352 = icmp sgt i32 %.0282371, %i.fm
  br i1 %.not311352, label %._crit_edge360, label %.lr.ph359

.lr.ph359:                                        ; preds = %bb.p
  %i.fn = sext i32 %.0284 to i64                  ; 5 uses
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.fn
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.fn ; 2 uses
  %i.fq = add nsw i32 %.0284, -1
  %i.fr = mul i32 %i.q, %.0282371
  %i.fs = add i32 %i.fr, 1
  %i.ft = sext i32 %.0282371 to i64
  %i.fu = add i32 %i.fm, 1
  %i.fv = sub i32 %i.fu, %.0282371
  %wide.trip.count418 = zext i32 %i.fv to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.s, i64 %i.fn
  %invariant.gep448 = getelementptr [8 x i8], ptr %i.s, i64 %i.fn
  %invariant.gep450 = getelementptr [8 x i8], ptr %i.s, i64 %i.fn
  %i.fw = mul i32 %i.q, %.0282371
  %i.fx = add i32 %.0284, %i.fw                   ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph359, %._crit_edge351
  %i.fy = phi i32 [ %i.cb, %.lr.ph359 ], [ %i.mi, %._crit_edge351 ]
  %indvars.iv413 = phi i64 [ 0, %.lr.ph359 ], [ %indvars.iv.next414, %._crit_edge351 ] ; 5 uses
  %indvars.iv411 = phi i64 [ %i.ft, %.lr.ph359 ], [ %indvars.iv.next412, %._crit_edge351 ] ; 9 uses
  %.1357 = phi double [ %.0375, %.lr.ph359 ], [ %i.pw, %._crit_edge351 ] ; 6 uses
  %.2287356 = phi i32 [ %.1286, %.lr.ph359 ], [ %.7, %._crit_edge351 ] ; 3 uses
  %i.fz = trunc i64 %indvars.iv413 to i32
  %i.ga = trunc i64 %indvars.iv413 to i32
  %i.gb = mul i32 %i.q, %i.ga
  %i.gc = add i32 %i.gb, %i.fx                    ; 2 uses
  %i.gd = trunc nuw nsw i64 %indvars.iv413 to i32
  %i.ge = mul i32 %i.q, %i.gd
  %i.gf = add i32 %i.fs, %i.ge
  %i.gg = sext i32 %i.gf to i64
  %i.gh = shl nsw i64 %i.gg, 3
  %scevgep402 = getelementptr i8, ptr %scevgep, i64 %i.gh
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv411
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !17
  %i.gk = zext i32 %i.gj to i64
  %.not312 = icmp eq i64 %indvars.iv420, %i.gk
  %i.gl = trunc nsw i64 %indvars.iv411 to i32     ; 11 uses
  br i1 %.not312, label %bb.r, label %._crit_edge360

bb.r:                                             ; preds = %bb.q
  %indvars.iv.next414 = add nuw i64 %indvars.iv413, 1 ; 2 uses
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.n, i64 %indvars.iv411
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !19 ; 3 uses
  store double %i.gn, ptr %i.g, align 8, !tbaa !19
  %i.go = icmp eq i32 %i.fy, 1
  br i1 %i.go, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store double 1.000000e+00, ptr %9, align 8, !tbaa !19
  br label %bb.aj

bb.t:                                             ; preds = %bb.r
  %.not313 = icmp eq i64 %indvars.iv413, 0        ; 4 uses
  br i1 %.not313, label %.outer, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gp = fmul double %i.av, %i.gn                ; 3 uses
  %i.gq = fcmp oge double %i.gp, 0.000000e+00
  %i.gr = fneg double %i.gp
  %i.gs = select i1 %i.gq, double %i.gp, double %i.gr
  %i.gt = fmul double %i.gs, 1.000000e+01         ; 2 uses
  %i.gu = fsub double %i.gn, %.1357
  %i.gv = fcmp olt double %i.gu, %i.gt
  br i1 %i.gv, label %bb.v, label %.outer

bb.v:                                             ; preds = %bb.u
  %i.gw = fadd double %.1357, %i.gt
  store double %i.gw, ptr %i.g, align 8, !tbaa !19
  br label %.outer

.outer:                                           ; preds = %bb.u, %bb.v, %bb.t
  call void @dlarnv_(ptr noundef nonnull @c__2, ptr noundef nonnull %i.e, ptr noundef nonnull %i.h, ptr noundef %9) #6
  call void @dcopy_(ptr noundef nonnull %i.h, ptr noundef nonnull %i.fo, ptr noundef nonnull @c__1, ptr noundef %i.bg, ptr noundef nonnull @c__1) #6
  %i.gx = load i32, ptr %i.h, align 4, !tbaa !17
  %i.gy = add nsw i32 %i.gx, -1
  store i32 %i.gy, ptr %i.d, align 4, !tbaa !17
  call void @dcopy_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.fp, ptr noundef nonnull @c__1, ptr noundef %i.bj, ptr noundef nonnull @c__1) #6
  %i.gz = load i32, ptr %i.h, align 4, !tbaa !17
  %i.ha = add nsw i32 %i.gz, -1
  store i32 %i.ha, ptr %i.d, align 4, !tbaa !17
  call void @dcopy_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.fp, ptr noundef nonnull @c__1, ptr noundef %i.bm, ptr noundef nonnull @c__1) #6
  store double 0.000000e+00, ptr %i.j, align 8, !tbaa !19
  call void @dlagtf_(ptr noundef nonnull %i.h, ptr noundef %i.bg, ptr noundef nonnull %i.g, ptr noundef %i.bj, ptr noundef %i.bm, ptr noundef nonnull %i.j, ptr noundef %i.bp, ptr noundef %10, ptr noundef nonnull %i.f) #6
  %i.hb = add nsw i64 %indvars.iv411, -1          ; 3 uses
  %i.hc = trunc nsw i64 %i.hb to i32
  br label %bb.x

bb.w:                                             ; preds = %.loopexit
  %i.hd = add nuw nsw i32 %i.he, 1
  %exitcond395 = icmp eq i32 %i.he, 5
  br i1 %exitcond395, label %.loopexit397, label %bb.x

bb.x:                                             ; preds = %.outer, %bb.w
  %i.he = phi i32 [ 1, %.outer ], [ %i.hd, %bb.w ] ; 5 uses
  %.3463 = phi i32 [ %.2287356, %.outer ], [ %.5, %bb.w ] ; 2 uses
  %i.hf = call i32 @idamax_(ptr noundef nonnull %i.h, ptr noundef %9, ptr noundef nonnull @c__1) #6
  %i.hg = load i32, ptr %i.h, align 4, !tbaa !17  ; 2 uses
  %i.hh = add nsw i32 %i.hg, %i.ax
  %i.hi = sext i32 %i.hh to i64
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.hi
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !19 ; 3 uses
  %i.hl = fcmp oge double %i.hk, 0.000000e+00
  %i.hm = fneg double %i.hk
  %i.hn = select i1 %i.hl, double %i.hk, double %i.hm ; 2 uses
  %i.ho = sitofp i32 %i.hg to double
  %i.hp = fmul double %.2, %i.ho
  %i.hq = fcmp oge double %i.av, %i.hn
  %i.hr = select i1 %i.hq, double %i.av, double %i.hn
  %i.hs = fmul double %i.hp, %i.hr
  %i.ht = sext i32 %i.hf to i64
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ht
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !19 ; 3 uses
  %i.hw = fcmp oge double %i.hv, 0.000000e+00
  %i.hx = fneg double %i.hv
  %i.hy = select i1 %i.hw, double %i.hv, double %i.hx
  %i.hz = fdiv double %i.hs, %i.hy
  store double %i.hz, ptr %i.i, align 8, !tbaa !19
  call void @dscal_(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef %9, ptr noundef nonnull @c__1) #6
  call void @dlagts_(ptr noundef nonnull @c_n1, ptr noundef nonnull %i.h, ptr noundef %i.bg, ptr noundef %i.bj, ptr noundef %i.bm, ptr noundef %i.bp, ptr noundef %10, ptr noundef %9, ptr noundef nonnull %i.j, ptr noundef nonnull %i.f) #6
  br i1 %.not313, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ia = load double, ptr %i.g, align 8, !tbaa !19
  %i.ib = fsub double %i.ia, %.1357
  %i.ic = call double @llvm.fabs.f64(double %i.ib)
  %i.id = fcmp ogt double %i.ic, %.1281
  %spec.select318 = select i1 %i.id, i32 %i.gl, i32 %.3463 ; 4 uses
  %.not314 = icmp eq i32 %spec.select318, %i.gl
  br i1 %.not314, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 %i.hc, ptr %i.d, align 4, !tbaa !17
  %i.ie = sext i32 %spec.select318 to i64         ; 2 uses
  %.not315338.not = icmp sgt i64 %indvars.iv411, %i.ie
  br i1 %.not315338.not, label %.lr.ph341, label %.loopexit

.lr.ph341:                                        ; preds = %bb.z, %.lr.ph341
  %indvars.iv392 = phi i64 [ %indvars.iv.next393, %.lr.ph341 ], [ %i.ie, %bb.z ] ; 3 uses
  %i.if = mul nsw i64 %indvars.iv392, %i.bq
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.if ; 2 uses
  %i.ig = call double @ddot_(ptr noundef nonnull %i.h, ptr noundef nonnull %9, ptr noundef nonnull @c__1, ptr noundef %gep, ptr noundef nonnull @c__1) #6
  %i.ih = fneg double %i.ig
  store double %i.ih, ptr %i.k, align 8, !tbaa !19
  call void @daxpy_(ptr noundef nonnull %i.h, ptr noundef nonnull %i.k, ptr noundef %gep, ptr noundef nonnull @c__1, ptr noundef nonnull %9, ptr noundef nonnull @c__1) #6
  %indvars.iv.next393 = add nsw i64 %indvars.iv392, 1
  %i.ii = load i32, ptr %i.d, align 4, !tbaa !17
  %i.ij = sext i32 %i.ii to i64
  %.not315.not = icmp slt i64 %indvars.iv392, %i.ij
  br i1 %.not315.not, label %.lr.ph341, label %.loopexit, !llvm.loop !10

.loopexit:                                        ; preds = %.lr.ph341, %bb.z, %bb.y, %bb.x
  %.5 = phi i32 [ %.3463, %bb.x ], [ %i.gl, %bb.y ], [ %spec.select318, %bb.z ], [ %spec.select318, %.lr.ph341 ] ; 4 uses
  %i.ik = call i32 @idamax_(ptr noundef nonnull %i.h, ptr noundef nonnull %9, ptr noundef nonnull @c__1) #6
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.il
  %i.in = load double, ptr %i.im, align 8, !tbaa !19
  %i.io = call double @llvm.fabs.f64(double %i.in)
  %i.ip = fcmp olt double %i.io, %.1276
  br i1 %i.ip, label %bb.w, label %.outer.1

.outer.1:                                         ; preds = %.loopexit
  %smax.1 = call i32 @llvm.smax.i32(i32 %i.he, i32 5)
  %i.iq = trunc nsw i64 %i.hb to i32
  %exitcond395.1464 = icmp samesign ugt i32 %i.he, 4
  br i1 %exitcond395.1464, label %.loopexit397, label %.lr.ph

bb.aa:                                            ; preds = %.loopexit.1
  %exitcond395.1 = icmp eq i32 %i.ir, %smax.1
  br i1 %exitcond395.1, label %.loopexit397, label %.lr.ph

.lr.ph:                                           ; preds = %.outer.1, %bb.aa
  %.in = phi i32 [ %i.ir, %bb.aa ], [ %i.he, %.outer.1 ] ; 2 uses
  %.3.1465 = phi i32 [ %.5.1, %bb.aa ], [ %.5, %.outer.1 ] ; 2 uses
  %i.ir = add i32 %.in, 1                         ; 4 uses
  %i.is = call i32 @idamax_(ptr noundef nonnull %i.h, ptr noundef nonnull %9, ptr noundef nonnull @c__1) #6
  %i.it = load i32, ptr %i.h, align 4, !tbaa !17  ; 2 uses
  %i.iu = add nsw i32 %i.it, %i.ax
  %i.iv = sext i32 %i.iu to i64
  %i.iw = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.iv
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !19 ; 3 uses
  %i.iy = fcmp oge double %i.ix, 0.000000e+00
  %i.iz = fneg double %i.ix
  %i.ja = select i1 %i.iy, double %i.ix, double %i.iz ; 2 uses
  %i.jb = sitofp i32 %i.it to double
  %i.jc = fmul double %.2, %i.jb
  %i.jd = fcmp oge double %i.av, %i.ja
  %i.je = select i1 %i.jd, double %i.av, double %i.ja
  %i.jf = fmul double %i.jc, %i.je
  %i.jg = sext i32 %i.is to i64
  %i.jh = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.jg
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !19 ; 3 uses
  %i.jj = fcmp oge double %i.ji, 0.000000e+00
  %i.jk = fneg double %i.ji
  %i.jl = select i1 %i.jj, double %i.ji, double %i.jk
  %i.jm = fdiv double %i.jf, %i.jl
  store double %i.jm, ptr %i.i, align 8, !tbaa !19
  call void @dscal_(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %9, ptr noundef nonnull @c__1) #6
  call void @dlagts_(ptr noundef nonnull @c_n1, ptr noundef nonnull %i.h, ptr noundef %i.bg, ptr noundef %i.bj, ptr noundef %i.bm, ptr noundef %i.bp, ptr noundef %10, ptr noundef nonnull %9, ptr noundef nonnull %i.j, ptr noundef nonnull %i.f) #6
  br i1 %.not313, label %.loopexit.1, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph
  %i.jn = load double, ptr %i.g, align 8, !tbaa !19
  %i.jo = fsub double %i.jn, %.1357
  %i.jp = call double @llvm.fabs.f64(double %i.jo)
  %i.jq = fcmp ogt double %i.jp, %.1281
  %spec.select318.1 = select i1 %i.jq, i32 %i.gl, i32 %.3.1465 ; 4 uses
  %.not314.1 = icmp eq i32 %spec.select318.1, %i.gl
  br i1 %.not314.1, label %.loopexit.1, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i32 %i.iq, ptr %i.d, align 4, !tbaa !17
  %i.jr = sext i32 %spec.select318.1 to i64       ; 2 uses
  %.not315338.not.1 = icmp sgt i64 %indvars.iv411, %i.jr
  br i1 %.not315338.not.1, label %.lr.ph341.1, label %.loopexit.1

.lr.ph341.1:                                      ; preds = %bb.ac, %.lr.ph341.1
  %indvars.iv392.1 = phi i64 [ %indvars.iv.next393.1, %.lr.ph341.1 ], [ %i.jr, %bb.ac ] ; 3 uses
  %i.js = mul nsw i64 %indvars.iv392.1, %i.bq
  %gep449 = getelementptr [8 x i8], ptr %invariant.gep448, i64 %i.js ; 2 uses
  %i.jt = call double @ddot_(ptr noundef nonnull %i.h, ptr noundef nonnull %9, ptr noundef nonnull @c__1, ptr noundef %gep449, ptr noundef nonnull @c__1) #6
  %i.ju = fneg double %i.jt
  store double %i.ju, ptr %i.k, align 8, !tbaa !19
  call void @daxpy_(ptr noundef nonnull %i.h, ptr noundef nonnull %i.k, ptr noundef %gep449, ptr noundef nonnull @c__1, ptr noundef nonnull %9, ptr noundef nonnull @c__1) #6
  %indvars.iv.next393.1 = add nsw i64 %indvars.iv392.1, 1
  %i.jv = load i32, ptr %i.d, align 4, !tbaa !17
  %i.jw = sext i32 %i.jv to i64
  %.not315.not.1 = icmp slt i64 %indvars.iv392.1, %i.jw
  br i1 %.not315.not.1, label %.lr.ph341.1, label %.loopexit.1, !llvm.loop !10

.loopexit.1:                                      ; preds = %.lr.ph341.1, %bb.ac, %bb.ab, %.lr.ph
  %.5.1 = phi i32 [ %.3.1465, %.lr.ph ], [ %i.gl, %bb.ab ], [ %spec.select318.1, %bb.ac ], [ %spec.select318.1, %.lr.ph341.1 ] ; 4 uses
  %i.jx = call i32 @idamax_(ptr noundef nonnull %i.h, ptr noundef nonnull %9, ptr noundef nonnull @c__1) #6
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.jy
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !19
  %i.kb = call double @llvm.fabs.f64(double %i.ka)
  %i.kc = fcmp olt double %i.kb, %.1276
  br i1 %i.kc, label %bb.aa, label %.outer.2

.outer.2:                                         ; preds = %.loopexit.1
  %smax.2 = call i32 @llvm.smax.i32(i32 %i.ir, i32 5)
  %i.kd = trunc nsw i64 %i.hb to i32
  %exitcond395.2466 = icmp sgt i32 %i.ir, 4
  br i1 %exitcond395.2466, label %.loopexit397, label %.lr.ph468

.lr.ph468:                                        ; preds = %.outer.2
  %i.ke = add i32 %.in, 2
  br label %bb.ae

bb.ad:                                            ; preds = %.loopexit.2
  %i.kf = add i32 %i.kg, 1
  %exitcond395.2 = icmp eq i32 %i.kg, %smax.2
  br i1 %exitcond395.2, label %.loopexit397, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph468, %bb.ad
  %i.kg = phi i32 [ %i.ke, %.lr.ph468 ], [ %i.kf, %bb.ad ] ; 2 uses
  %.3.2467 = phi i32 [ %.5.1, %.lr.ph468 ], [ %.5.2, %bb.ad ] ; 2 uses
  %i.kh = call i32 @idamax_(ptr noundef nonnull %i.h, ptr noundef nonnull %9, ptr noundef nonnull @c__1) #6
  %i.ki = load i32, ptr %i.h, align 4, !tbaa !17  ; 2 uses
  %i.kj = add nsw i32 %i.ki, %i.ax
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.kk
  %i.km = load double, ptr %i.kl, align 8, !tbaa !19 ; 3 uses
  %i.kn = fcmp oge double %i.km, 0.000000e+00
  %i.ko = fneg double %i.km
  %i.kp = select i1 %i.kn, double %i.km, double %i.ko ; 2 uses
  %i.kq = sitofp i32 %i.ki to double
  %i.kr = fmul double %.2, %i.kq
  %i.ks = fcmp oge double %i.av, %i.kp
  %i.kt = select i1 %i.ks, double %i.av, double %i.kp
  %i.ku = fmul double %i.kr, %i.kt
  %i.kv = sext i32 %i.kh to i64
  %i.kw = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.kv
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !19 ; 3 uses
  %i.ky = fcmp oge double %i.kx, 0.000000e+00
  %i.kz = fneg double %i.kx
  %i.la = select i1 %i.ky, double %i.kx, double %i.kz
  %i.lb = fdiv double %i.ku, %i.la
  store double %i.lb, ptr %i.i, align 8, !tbaa !19
  call void @dscal_(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %9, ptr noundef nonnull @c__1) #6
  call void @dlagts_(ptr noundef nonnull @c_n1, ptr noundef nonnull %i.h, ptr noundef %i.bg, ptr noundef %i.bj, ptr noundef %i.bm, ptr noundef %i.bp, ptr noundef %10, ptr noundef nonnull %9, ptr noundef nonnull %i.j, ptr noundef nonnull %i.f) #6
  br i1 %.not313, label %.loopexit.2, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.lc = load double, ptr %i.g, align 8, !tbaa !19
  %i.ld = fsub double %i.lc, %.1357
  %i.le = call double @llvm.fabs.f64(double %i.ld)
  %i.lf = fcmp ogt double %i.le, %.1281
  %spec.select318.2 = select i1 %i.lf, i32 %i.gl, i32 %.3.2467 ; 4 uses
  %.not314.2 = icmp eq i32 %spec.select318.2, %i.gl
  br i1 %.not314.2, label %.loopexit.2, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i32 %i.kd, ptr %i.d, align 4, !tbaa !17
  %i.lg = sext i32 %spec.select318.2 to i64       ; 2 uses
  %.not315338.not.2 = icmp sgt i64 %indvars.iv411, %i.lg
  br i1 %.not315338.not.2, label %.lr.ph341.2, label %.loopexit.2

.lr.ph341.2:                                      ; preds = %bb.ag, %.lr.ph341.2
  %indvars.iv392.2 = phi i64 [ %indvars.iv.next393.2, %.lr.ph341.2 ], [ %i.lg, %bb.ag ] ; 3 uses
  %i.lh = mul nsw i64 %indvars.iv392.2, %i.bq
  %gep451 = getelementptr [8 x i8], ptr %invariant.gep450, i64 %i.lh ; 2 uses
  %i.li = call double @ddot_(ptr noundef nonnull %i.h, ptr noundef nonnull %9, ptr noundef nonnull @c__1, ptr noundef %gep451, ptr noundef nonnull @c__1) #6
  %i.lj = fneg double %i.li
  store double %i.lj, ptr %i.k, align 8, !tbaa !19
  call void @daxpy_(ptr noundef nonnull %i.h, ptr noundef nonnull %i.k, ptr noundef %gep451, ptr noundef nonnull @c__1, ptr noundef nonnull %9, ptr noundef nonnull @c__1) #6
  %indvars.iv.next393.2 = add nsw i64 %indvars.iv392.2, 1
  %i.lk = load i32, ptr %i.d, align 4, !tbaa !17
  %i.ll = sext i32 %i.lk to i64
  %.not315.not.2 = icmp slt i64 %indvars.iv392.2, %i.ll
  br i1 %.not315.not.2, label %.lr.ph341.2, label %.loopexit.2, !llvm.loop !10

.loopexit.2:                                      ; preds = %.lr.ph341.2, %bb.ag, %bb.af, %bb.ae
  %.5.2 = phi i32 [ %.3.2467, %bb.ae ], [ %i.gl, %bb.af ], [ %spec.select318.2, %bb.ag ], [ %spec.select318.2, %.lr.ph341.2 ] ; 3 uses
  %i.lm = call i32 @idamax_(ptr noundef nonnull %i.h, ptr noundef nonnull %9, ptr noundef nonnull @c__1) #6
  %i.ln = sext i32 %i.lm to i64
  %i.lo = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ln
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !19
  %i.lq = call double @llvm.fabs.f64(double %i.lp)
  %i.lr = fcmp olt double %i.lq, %.1276
  br i1 %i.lr, label %bb.ad, label %.loopexit320

.loopexit397:                                     ; preds = %bb.w, %bb.aa, %bb.ad, %.outer.1, %.outer.2
  %.3.lcssa = phi i32 [ %.5.2, %bb.ad ], [ %.5.1, %bb.aa ], [ %.5.1, %.outer.2 ], [ %.5, %.outer.1 ], [ %.5, %bb.w ]
  %i.ls = load i32, ptr %12, align 4, !tbaa !17
  %i.lt = add nsw i32 %i.ls, 1                    ; 2 uses
  store i32 %i.lt, ptr %12, align 4, !tbaa !17
  %i.lu = sext i32 %i.lt to i64
  %i.lv = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.lu
  store i32 %i.gl, ptr %i.lv, align 4, !tbaa !17
  br label %.loopexit320

.loopexit320:                                     ; preds = %.loopexit.2, %.loopexit397
  %.6 = phi i32 [ %.3.lcssa, %.loopexit397 ], [ %.5.2, %.loopexit.2 ]
  %i.lw = call double @dnrm2_(ptr noundef nonnull %i.h, ptr noundef %9, ptr noundef nonnull @c__1) #6
  %i.lx = fdiv double 1.000000e+00, %i.lw
  store double %i.lx, ptr %i.i, align 8, !tbaa !19
  %i.ly = call i32 @idamax_(ptr noundef nonnull %i.h, ptr noundef %9, ptr noundef nonnull @c__1) #6
  %i.lz = sext i32 %i.ly to i64
  %i.ma = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.lz
  %i.mb = load double, ptr %i.ma, align 8, !tbaa !19
  %i.mc = fcmp olt double %i.mb, 0.000000e+00
  br i1 %i.mc, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.loopexit320
  %i.md = load double, ptr %i.i, align 8, !tbaa !19
  %i.me = fneg double %i.md
  store double %i.me, ptr %i.i, align 8, !tbaa !19
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.loopexit320
  call void @dscal_(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %9, ptr noundef nonnull @c__1) #6
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.s
  %.7 = phi i32 [ %.2287356, %bb.s ], [ %.6, %bb.ai ] ; 2 uses
  %i.mf = load i32, ptr %0, align 4, !tbaa !17    ; 2 uses
  %.not316342 = icmp slt i32 %i.mf, 1
  br i1 %.not316342, label %._crit_edge346, label %.lr.ph345

.lr.ph345:                                        ; preds = %bb.aj
  %i.mg = zext nneg i32 %i.mf to i64
  %i.mh = shl nuw nsw i64 %i.mg, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep402, i8 0, i64 %i.mh, i1 false), !tbaa !19
  br label %._crit_edge346

._crit_edge346:                                   ; preds = %.lr.ph345, %bb.aj
  %i.mi = load i32, ptr %i.h, align 4, !tbaa !17  ; 8 uses
  store i32 %i.mi, ptr %i.d, align 4, !tbaa !17
  %.not317347 = icmp slt i32 %i.mi, 1
  br i1 %.not317347, label %._crit_edge351, label %iter.check

iter.check:                                       ; preds = %._crit_edge346
  %i.mj = trunc i64 %indvars.iv411 to i32
  %i.mk = mul i32 %i.q, %i.mj
  %i.ml = add i32 %i.fq, %i.mk                    ; 11 uses
  %i.mm = add nuw i32 %i.mi, 1
  %wide.trip.count409 = zext i32 %i.mm to i64     ; 3 uses
  %i.mn = zext nneg i32 %i.mi to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.mi, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.mo = add nsw i64 %wide.trip.count409, -2     ; 2 uses
  %i.mp = trunc i64 %i.mo to i32
  %i.mq = add i32 %i.gc, %i.mp
  %i.mr = icmp slt i32 %i.mq, %i.gc
  %i.ms = icmp ugt i64 %i.mo, 4294967295
  %i.mt = or i1 %i.mr, %i.ms
  br i1 %i.mt, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %13 = mul i32 %i.q, %i.fz
  %14 = add i32 %i.fx, %13
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 3
  %.reass502 = add i64 %16, %invariant.op502
  %17 = sub i64 %i.b, %.reass502
  %diff.check = icmp ugt i64 %17, -128
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check470 = icmp ult i32 %i.mi, 16
  br i1 %min.iters.check470, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.mu = and i64 %i.mn, 12
  %n.vec = and i64 %i.mn, 2147483632              ; 4 uses
  %i.mv = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.mw = getelementptr [8 x i8], ptr %9, i64 %index ; 4 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 32
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 64
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mw, i64 96
  %wide.load = load <4 x double>, ptr %i.mw, align 8, !tbaa !19
  %wide.load471 = load <4 x double>, ptr %i.mx, align 8, !tbaa !19
  %wide.load472 = load <4 x double>, ptr %i.my, align 8, !tbaa !19
  %wide.load473 = load <4 x double>, ptr %i.mz, align 8, !tbaa !19
  %i.na = trunc i64 %index to i32
  %i.nb = or disjoint i32 %i.na, 1
  %i.nc = add i32 %i.ml, %i.nb
  %i.nd = sext i32 %i.nc to i64
  %i.ne = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.nd ; 4 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 32
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ne, i64 64
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 96
  store <4 x double> %wide.load, ptr %i.ne, align 8, !tbaa !19
  store <4 x double> %wide.load471, ptr %i.nf, align 8, !tbaa !19
  store <4 x double> %wide.load472, ptr %i.ng, align 8, !tbaa !19
  store <4 x double> %wide.load473, ptr %i.nh, align 8, !tbaa !19
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ni = icmp eq i64 %index.next, %n.vec
  br i1 %i.ni, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.mn
  br i1 %cmp.n, label %._crit_edge351, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.mu, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec474 = and i64 %i.mn, 2147483644           ; 3 uses
  %i.nj = or disjoint i64 %n.vec474, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index475 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next477, %vec.epilog.vector.body ] ; 3 uses
  %i.nk = getelementptr [8 x i8], ptr %9, i64 %index475
  %wide.load476 = load <4 x double>, ptr %i.nk, align 8, !tbaa !19
  %i.nl = trunc i64 %index475 to i32
  %i.nm = or disjoint i32 %i.nl, 1
  %i.nn = add i32 %i.ml, %i.nm
  %i.no = sext i32 %i.nn to i64
  %i.np = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.no
  store <4 x double> %wide.load476, ptr %i.np, align 8, !tbaa !19
  %index.next477 = add nuw i64 %index475, 4       ; 2 uses
  %i.nq = icmp eq i64 %index.next477, %n.vec474
  br i1 %i.nq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !12

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n478 = icmp eq i64 %n.vec474, %i.mn
  br i1 %cmp.n478, label %._crit_edge351, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv406.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.scevcheck ], [ 1, %vector.memcheck ], [ %i.mv, %vec.epilog.iter.check ], [ %i.nj, %vec.epilog.middle.block ] ; 4 uses
  %i.nr = sub i64 %wide.trip.count409, %indvars.iv406.ph
  %i.ns = zext nneg i32 %i.mi to i64
  %i.nt = sub i64 %i.ns, %indvars.iv406.ph
  %xtraiter491 = and i64 %i.nr, 7                 ; 2 uses
  %lcmp.mod492.not = icmp eq i64 %xtraiter491, 0
  br i1 %lcmp.mod492.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv406.prol = phi i64 [ %indvars.iv.next407.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv406.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv406.prol
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !19
  %i.nw = trunc nuw nsw i64 %indvars.iv406.prol to i32
  %i.nx = add i32 %i.ml, %i.nw
  %i.ny = sext i32 %i.nx to i64
  %i.nz = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ny
  store double %i.nv, ptr %i.nz, align 8, !tbaa !19
  %indvars.iv.next407.prol = add nuw nsw i64 %indvars.iv406.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter491
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !13

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv406.unr = phi i64 [ %indvars.iv406.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next407.prol, %vec.epilog.scalar.ph.prol ]
  %i.oa = icmp ult i64 %i.nt, 7
  br i1 %i.oa, label %._crit_edge351, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op = add i32 1, %i.ml
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %indvars.iv406 = phi i64 [ %indvars.iv406.unr, %vec.epilog.scalar.ph.preheader.new ], [ %indvars.iv.next407.7, %vec.epilog.scalar.ph ] ; 11 uses
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv406
  %i.oc = load double, ptr %i.ob, align 8, !tbaa !19
  %i.od = trunc nuw nsw i64 %indvars.iv406 to i32
  %i.oe = add i32 %i.ml, %i.od
  %i.of = sext i32 %i.oe to i64
  %i.og = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.of
  store double %i.oc, ptr %i.og, align 8, !tbaa !19
  %i.oh = getelementptr [8 x i8], ptr %9, i64 %indvars.iv406
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !19
  %i.oj = trunc i64 %indvars.iv406 to i32
  %.reass = add i32 %i.oj, %invariant.op
  %i.ok = sext i32 %.reass to i64
  %i.ol = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ok
  store double %i.oi, ptr %i.ol, align 8, !tbaa !19
  %indvars.iv.next407.1 = add nuw nsw i64 %indvars.iv406, 2 ; 2 uses
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next407.1
  %i.on = load double, ptr %i.om, align 8, !tbaa !19
  %i.oo = trunc nuw nsw i64 %indvars.iv.next407.1 to i32
  %i.op = add i32 %i.ml, %i.oo
  %i.oq = sext i32 %i.op to i64
  %i.or = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.oq
  store double %i.on, ptr %i.or, align 8, !tbaa !19
  %indvars.iv.next407.2 = add nuw nsw i64 %indvars.iv406, 3 ; 2 uses
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next407.2
  %i.ot = load double, ptr %i.os, align 8, !tbaa !19
  %i.ou = trunc nuw nsw i64 %indvars.iv.next407.2 to i32
  %i.ov = add i32 %i.ml, %i.ou
  %i.ow = sext i32 %i.ov to i64
  %i.ox = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ow
  store double %i.ot, ptr %i.ox, align 8, !tbaa !19
  %indvars.iv.next407.3 = add nuw nsw i64 %indvars.iv406, 4 ; 2 uses
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next407.3
  %i.oz = load double, ptr %i.oy, align 8, !tbaa !19
  %i.pa = trunc nuw nsw i64 %indvars.iv.next407.3 to i32
  %i.pb = add i32 %i.ml, %i.pa
  %i.pc = sext i32 %i.pb to i64
  %i.pd = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.pc
  store double %i.oz, ptr %i.pd, align 8, !tbaa !19
  %indvars.iv.next407.4 = add nuw nsw i64 %indvars.iv406, 5 ; 2 uses
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next407.4
  %i.pf = load double, ptr %i.pe, align 8, !tbaa !19
  %i.pg = trunc nuw nsw i64 %indvars.iv.next407.4 to i32
  %i.ph = add i32 %i.ml, %i.pg
  %i.pi = sext i32 %i.ph to i64
  %i.pj = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.pi
  store double %i.pf, ptr %i.pj, align 8, !tbaa !19
  %indvars.iv.next407.5 = add nuw nsw i64 %indvars.iv406, 6 ; 2 uses
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next407.5
  %i.pl = load double, ptr %i.pk, align 8, !tbaa !19
  %i.pm = trunc nuw nsw i64 %indvars.iv.next407.5 to i32
  %i.pn = add i32 %i.ml, %i.pm
  %i.po = sext i32 %i.pn to i64
  %i.pp = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.po
  store double %i.pl, ptr %i.pp, align 8, !tbaa !19
  %indvars.iv.next407.6 = add nuw nsw i64 %indvars.iv406, 7 ; 2 uses
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next407.6
  %i.pr = load double, ptr %i.pq, align 8, !tbaa !19
  %i.ps = trunc nuw nsw i64 %indvars.iv.next407.6 to i32
  %i.pt = add i32 %i.ml, %i.ps
  %i.pu = sext i32 %i.pt to i64
  %i.pv = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.pu
  store double %i.pr, ptr %i.pv, align 8, !tbaa !19
  %indvars.iv.next407.7 = add nuw nsw i64 %indvars.iv406, 8 ; 2 uses
  %exitcond410.not.7 = icmp eq i64 %indvars.iv.next407.7, %wide.trip.count409
  br i1 %exitcond410.not.7, label %._crit_edge351, label %vec.epilog.scalar.ph, !llvm.loop !14

._crit_edge351:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge346
  %i.pw = load double, ptr %i.g, align 8, !tbaa !19 ; 2 uses
  %indvars.iv.next412 = add nsw i64 %indvars.iv411, 1
  %exitcond419.not = icmp eq i64 %indvars.iv.next414, %wide.trip.count418
  br i1 %exitcond419.not, label %._crit_edge360, label %bb.q, !llvm.loop !15

._crit_edge360:                                   ; preds = %._crit_edge351, %bb.q, %bb.p
  %.2287.lcssa = phi i32 [ %.1286, %bb.p ], [ %.2287356, %bb.q ], [ %.7, %._crit_edge351 ]
  %.1.lcssa = phi double [ %.0375, %bb.p ], [ %.1357, %bb.q ], [ %i.pw, %._crit_edge351 ]
  %.1283 = phi i32 [ %.0282371, %bb.p ], [ %i.gl, %bb.q ], [ %.0282371, %._crit_edge351 ]
  %indvars.iv.next421 = add nuw nsw i64 %indvars.iv420, 1
  %.not309.not = icmp samesign ult i64 %indvars.iv420, %i.bs
  br i1 %.not309.not, label %bb.l, label %.loopexit321, !llvm.loop !16

.loopexit321:                                     ; preds = %._crit_edge360, %bb.k, %bb.h, %bb.j, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare double @dlamch_(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

declare void @dlarnv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlagtf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @idamax_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlagts_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @ddot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @daxpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @dnrm2_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !20}
!9 = distinct !{!9, !20}
!10 = distinct !{!10, !20}
!11 = distinct !{!11, !20, !21, !22}
!12 = distinct !{!12, !20, !21, !22}
!13 = distinct !{!13, !24}
!14 = distinct !{!14, !20, !21}
!15 = distinct !{!15, !20}
!16 = distinct !{!16, !20}
!17 = !{!5, !5, i64 0}
!18 = !{!"double", !4, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"llvm.loop.isvectorized", i32 1}
end_hunk_0
