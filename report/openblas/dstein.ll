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
  %i.a = ptrtoaddr ptr %9 to i64
  %i.b = ptrtoaddr ptr %7 to i64
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
  %13 = add i64 %i.br, %i.b
  %14 = sub i64 %13, %i.a
  %invariant.op501 = add i64 %14, -1
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
  %.1357 = phi double [ %.0375, %.lr.ph359 ], [ %i.qa, %._crit_edge351 ] ; 6 uses
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
end_hunk_0
begin_hunk_1_@dstein_:bb.a
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
  %i.mu = mul i32 %i.q, %i.fz
  %i.mv = add i32 %i.fx, %i.mu
  %i.mw = sext i32 %i.mv to i64
  %i.mx = shl nsw i64 %i.mw, 3
  %.reass502 = add i64 %i.mx, %invariant.op501
  %diff.check = icmp ult i64 %.reass502, 127
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check470 = icmp ult i32 %i.mi, 16
  br i1 %min.iters.check470, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.my = and i64 %i.mn, 12
  %n.vec = and i64 %i.mn, 2147483632              ; 4 uses
  %i.mz = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.na = getelementptr [8 x i8], ptr %9, i64 %index ; 4 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 32
  %i.nc = getelementptr inbounds nuw i8, ptr %i.na, i64 64
  %i.nd = getelementptr inbounds nuw i8, ptr %i.na, i64 96
  %wide.load = load <4 x double>, ptr %i.na, align 8, !tbaa !19
  %wide.load471 = load <4 x double>, ptr %i.nb, align 8, !tbaa !19
  %wide.load472 = load <4 x double>, ptr %i.nc, align 8, !tbaa !19
  %wide.load473 = load <4 x double>, ptr %i.nd, align 8, !tbaa !19
  %i.ne = trunc i64 %index to i32
  %i.nf = or disjoint i32 %i.ne, 1
  %i.ng = add i32 %i.ml, %i.nf
  %i.nh = sext i32 %i.ng to i64
  %i.ni = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.nh ; 4 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 32
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ni, i64 64
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ni, i64 96
  store <4 x double> %wide.load, ptr %i.ni, align 8, !tbaa !19
  store <4 x double> %wide.load471, ptr %i.nj, align 8, !tbaa !19
  store <4 x double> %wide.load472, ptr %i.nk, align 8, !tbaa !19
  store <4 x double> %wide.load473, ptr %i.nl, align 8, !tbaa !19
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.nm = icmp eq i64 %index.next, %n.vec
  br i1 %i.nm, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.mn
  br i1 %cmp.n, label %._crit_edge351, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.my, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec474 = and i64 %i.mn, 2147483644           ; 3 uses
  %i.nn = or disjoint i64 %n.vec474, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index475 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next477, %vec.epilog.vector.body ] ; 3 uses
  %i.no = getelementptr [8 x i8], ptr %9, i64 %index475
  %wide.load476 = load <4 x double>, ptr %i.no, align 8, !tbaa !19
  %i.np = trunc i64 %index475 to i32
  %i.nq = or disjoint i32 %i.np, 1
  %i.nr = add i32 %i.ml, %i.nq
  %i.ns = sext i32 %i.nr to i64
  %i.nt = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ns
  store <4 x double> %wide.load476, ptr %i.nt, align 8, !tbaa !19
  %index.next477 = add nuw i64 %index475, 4       ; 2 uses
  %i.nu = icmp eq i64 %index.next477, %n.vec474
  br i1 %i.nu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !12

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n478 = icmp eq i64 %n.vec474, %i.mn
  br i1 %cmp.n478, label %._crit_edge351, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv406.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.scevcheck ], [ 1, %vector.memcheck ], [ %i.mz, %vec.epilog.iter.check ], [ %i.nn, %vec.epilog.middle.block ] ; 4 uses
  %i.nv = sub i64 %wide.trip.count409, %indvars.iv406.ph
  %i.nw = zext nneg i32 %i.mi to i64
  %i.nx = sub i64 %i.nw, %indvars.iv406.ph
  %xtraiter490 = and i64 %i.nv, 7                 ; 2 uses
  %lcmp.mod491.not = icmp eq i64 %xtraiter490, 0
  br i1 %lcmp.mod491.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv406.prol = phi i64 [ %indvars.iv.next407.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv406.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv406.prol
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !19
  %i.oa = trunc nuw nsw i64 %indvars.iv406.prol to i32
  %i.ob = add i32 %i.ml, %i.oa
  %i.oc = sext i32 %i.ob to i64
  %i.od = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.oc
  store double %i.nz, ptr %i.od, align 8, !tbaa !19
  %indvars.iv.next407.prol = add nuw nsw i64 %indvars.iv406.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter490
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !13

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv406.unr = phi i64 [ %indvars.iv406.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next407.prol, %vec.epilog.scalar.ph.prol ]
  %i.oe = icmp ult i64 %i.nx, 7
  br i1 %i.oe, label %._crit_edge351, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op = add i32 1, %i.ml
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %indvars.iv406 = phi i64 [ %indvars.iv406.unr, %vec.epilog.scalar.ph.preheader.new ], [ %indvars.iv.next407.7, %vec.epilog.scalar.ph ] ; 11 uses
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv406
  %i.og = load double, ptr %i.of, align 8, !tbaa !19
  %i.oh = trunc nuw nsw i64 %indvars.iv406 to i32
  %i.oi = add i32 %i.ml, %i.oh
  %i.oj = sext i32 %i.oi to i64
  %i.ok = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.oj
  store double %i.og, ptr %i.ok, align 8, !tbaa !19
  %i.ol = getelementptr [8 x i8], ptr %9, i64 %indvars.iv406
  %i.om = load double, ptr %i.ol, align 8, !tbaa !19
  %i.on = trunc i64 %indvars.iv406 to i32
  %.reass = add i32 %i.on, %invariant.op
  %i.oo = sext i32 %.reass to i64
  %i.op = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.oo
  store double %i.om, ptr %i.op, align 8, !tbaa !19
  %indvars.iv.next407.1 = add nuw nsw i64 %indvars.iv406, 2 ; 2 uses
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next407.1
  %i.or = load double, ptr %i.oq, align 8, !tbaa !19
  %i.os = trunc nuw nsw i64 %indvars.iv.next407.1 to i32
  %i.ot = add i32 %i.ml, %i.os
  %i.ou = sext i32 %i.ot to i64
  %i.ov = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ou
  store double %i.or, ptr %i.ov, align 8, !tbaa !19
  %indvars.iv.next407.2 = add nuw nsw i64 %indvars.iv406, 3 ; 2 uses
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next407.2
  %i.ox = load double, ptr %i.ow, align 8, !tbaa !19
  %i.oy = trunc nuw nsw i64 %indvars.iv.next407.2 to i32
  %i.oz = add i32 %i.ml, %i.oy
  %i.pa = sext i32 %i.oz to i64
  %i.pb = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.pa
  store double %i.ox, ptr %i.pb, align 8, !tbaa !19
  %indvars.iv.next407.3 = add nuw nsw i64 %indvars.iv406, 4 ; 2 uses
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next407.3
  %i.pd = load double, ptr %i.pc, align 8, !tbaa !19
  %i.pe = trunc nuw nsw i64 %indvars.iv.next407.3 to i32
  %i.pf = add i32 %i.ml, %i.pe
  %i.pg = sext i32 %i.pf to i64
  %i.ph = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.pg
  store double %i.pd, ptr %i.ph, align 8, !tbaa !19
  %indvars.iv.next407.4 = add nuw nsw i64 %indvars.iv406, 5 ; 2 uses
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next407.4
  %i.pj = load double, ptr %i.pi, align 8, !tbaa !19
  %i.pk = trunc nuw nsw i64 %indvars.iv.next407.4 to i32
  %i.pl = add i32 %i.ml, %i.pk
  %i.pm = sext i32 %i.pl to i64
  %i.pn = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.pm
  store double %i.pj, ptr %i.pn, align 8, !tbaa !19
  %indvars.iv.next407.5 = add nuw nsw i64 %indvars.iv406, 6 ; 2 uses
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next407.5
  %i.pp = load double, ptr %i.po, align 8, !tbaa !19
  %i.pq = trunc nuw nsw i64 %indvars.iv.next407.5 to i32
  %i.pr = add i32 %i.ml, %i.pq
  %i.ps = sext i32 %i.pr to i64
  %i.pt = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ps
  store double %i.pp, ptr %i.pt, align 8, !tbaa !19
  %indvars.iv.next407.6 = add nuw nsw i64 %indvars.iv406, 7 ; 2 uses
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next407.6
  %i.pv = load double, ptr %i.pu, align 8, !tbaa !19
  %i.pw = trunc nuw nsw i64 %indvars.iv.next407.6 to i32
  %i.px = add i32 %i.ml, %i.pw
  %i.py = sext i32 %i.px to i64
  %i.pz = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.py
  store double %i.pv, ptr %i.pz, align 8, !tbaa !19
  %indvars.iv.next407.7 = add nuw nsw i64 %indvars.iv406, 8 ; 2 uses
  %exitcond410.not.7 = icmp eq i64 %indvars.iv.next407.7, %wide.trip.count409
  br i1 %exitcond410.not.7, label %._crit_edge351, label %vec.epilog.scalar.ph, !llvm.loop !14

._crit_edge351:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge346
  %i.qa = load double, ptr %i.g, align 8, !tbaa !19 ; 2 uses
  %indvars.iv.next412 = add nsw i64 %indvars.iv411, 1
  %exitcond419.not = icmp eq i64 %indvars.iv.next414, %wide.trip.count418
  br i1 %exitcond419.not, label %._crit_edge360, label %bb.q, !llvm.loop !15

._crit_edge360:                                   ; preds = %._crit_edge351, %bb.q, %bb.p
  %.2287.lcssa = phi i32 [ %.1286, %bb.p ], [ %.2287356, %bb.q ], [ %.7, %._crit_edge351 ]
  %.1.lcssa = phi double [ %.0375, %bb.p ], [ %.1357, %bb.q ], [ %i.qa, %._crit_edge351 ]
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
end_hunk_1
