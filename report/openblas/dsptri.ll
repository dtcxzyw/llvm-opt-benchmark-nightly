Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsptri?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"DSPTRI\00", align 1
@c__1 = internal global i32 1, align 4
@c_b11 = internal global double -1.000000e+00, align 8
@c_b13 = internal global double 0.000000e+00, align 8

; Function Attrs: nounwind uwtable
define void @dsptri_(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr nofree noundef captures(none) initializes((0, 4)) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 52 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = getelementptr inbounds i8, ptr %3, i64 -4 ; 4 uses
  %i.c = getelementptr inbounds i8, ptr %2, i64 -8 ; 46 uses
  store i32 0, ptr %5, align 4, !tbaa !14
  %i.d = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #5
  %.not = icmp eq i32 %i.d, 0                     ; 3 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #5
  %.not429 = icmp eq i32 %i.e, 0
  br i1 %.not429, label %.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load i32, ptr %1, align 4, !tbaa !14     ; 6 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %.thread.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.pr = load i32, ptr %5, align 4, !tbaa !14     ; 2 uses
  %.not430 = icmp eq i32 %.pr, 0
  br i1 %.not430, label %bb.e, label %.thread

.thread.sink.split:                               ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ -1, %bb.b ], [ -2, %bb.c ]   ; 2 uses
  store i32 %.sink, ptr %5, align 4, !tbaa !14
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.d
  %i.h = phi i32 [ %.pr, %bb.d ], [ %.sink, %.thread.sink.split ]
  %i.i = sub nsw i32 0, %i.h
  store i32 %i.i, ptr %i.a, align 4, !tbaa !14
  %i.j = call i32 @xerbla_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a, i32 noundef 6) #5 ; 0 uses
  br label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.k = icmp eq i32 %i.f, 0
  br i1 %i.k, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = add nuw i32 %i.f, 1                      ; 2 uses
  br i1 %.not, label %.lr.ph453.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  store i32 %i.f, ptr %5, align 4, !tbaa !14
  %i.m = mul nuw nsw i32 %i.l, %i.f
  %i.n = lshr i32 %i.m, 1
  %i.o = zext nneg i32 %i.f to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %indvars.iv = phi i64 [ %i.o, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %.0411449 = phi i32 [ %i.n, %.lr.ph.preheader ], [ %i.x, %bb.h ] ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !14
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.s = sext i32 %.0411449 to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.s
  %i.u = load double, ptr %i.t, align 8, !tbaa !16
  %i.v = fcmp oeq double %i.u, 0.000000e+00
  br i1 %i.v, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %i.w = trunc nuw nsw i64 %indvars.iv to i32
  %i.x = sub nsw i32 %.0411449, %i.w
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.y = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.y, ptr %5, align 4, !tbaa !14
  %i.z = icmp sgt i64 %indvars.iv, 1
  br i1 %i.z, label %.lr.ph, label %.loopexit444, !llvm.loop !8

.lr.ph453.preheader:                              ; preds = %bb.f
  store i32 1, ptr %5, align 4, !tbaa !14
  %wide.trip.count = zext i32 %i.l to i64
  br label %.lr.ph453

.lr.ph453:                                        ; preds = %.lr.ph453.preheader, %bb.j
  %indvars.iv480 = phi i64 [ 1, %.lr.ph453.preheader ], [ %indvars.iv.next481, %bb.j ] ; 3 uses
  %.1412452 = phi i32 [ 1, %.lr.ph453.preheader ], [ %i.ak, %bb.j ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv480
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !14
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph453
  %i.ad = sext i32 %.1412452 to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ad
  %i.af = load double, ptr %i.ae, align 8, !tbaa !16
  %i.ag = fcmp oeq double %i.af, 0.000000e+00
  br i1 %i.ag, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph453
  %i.ah = load i32, ptr %1, align 4, !tbaa !14
  %i.ai = trunc nuw nsw i64 %indvars.iv480 to i32
  %reass.sub = sub i32 %.1412452, %i.ai
  %i.aj = add i32 %reass.sub, 1
  %i.ak = add i32 %i.aj, %i.ah
  %indvars.iv.next481 = add nuw nsw i64 %indvars.iv480, 1 ; 3 uses
  %i.al = trunc nuw i64 %indvars.iv.next481 to i32
  store i32 %i.al, ptr %5, align 4, !tbaa !14
  %exitcond.not = icmp eq i64 %indvars.iv.next481, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit444, label %.lr.ph453, !llvm.loop !9

.loopexit444:                                     ; preds = %bb.h, %bb.j
  store i32 0, ptr %5, align 4, !tbaa !14
  %i.am = load i32, ptr %1, align 4, !tbaa !14    ; 5 uses
  br i1 %.not, label %bb.t, label %.preheader

.preheader:                                       ; preds = %.loopexit444
  %i.an = icmp slt i32 %i.am, 1
  br i1 %i.an, label %.loopexit, label %.lr.ph460

.lr.ph460:                                        ; preds = %.preheader, %bb.s
  %.0413459 = phi i32 [ %.0, %bb.s ], [ 1, %.preheader ] ; 9 uses
  %.0417458 = phi i32 [ %i.fv, %bb.s ], [ 1, %.preheader ] ; 13 uses
  %i.ao = add nsw i32 %.0413459, %.0417458        ; 8 uses
  %i.ap = zext nneg i32 %.0417458 to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !14
  %i.as = icmp slt i32 %i.ar, 1                   ; 2 uses
  br i1 %i.as, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.lr.ph460
  %i.at = sext i32 %i.ao to i64
  %i.au = getelementptr [8 x i8], ptr %i.c, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 -8     ; 4 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !16
  %i.ax = fdiv double 1.000000e+00, %i.aw
  store double %i.ax, ptr %i.av, align 8, !tbaa !16
  %i.ay = icmp samesign ugt i32 %.0417458, 1
  br i1 %i.ay, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.az = add nsw i32 %.0417458, -1               ; 3 uses
  store i32 %i.az, ptr %i.a, align 4, !tbaa !14
  %i.ba = sext i32 %.0413459 to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ba ; 3 uses
  call void @dcopy_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.bb, ptr noundef nonnull @c__1, ptr noundef %4, ptr noundef nonnull @c__1) #5
  store i32 %i.az, ptr %i.a, align 4, !tbaa !14
  call void @dspmv_(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull @c_b11, ptr noundef nonnull %2, ptr noundef %4, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b13, ptr noundef nonnull %i.bb, ptr noundef nonnull @c__1) #5
  store i32 %i.az, ptr %i.a, align 4, !tbaa !14
  %i.bc = call double @ddot_(ptr noundef nonnull %i.a, ptr noundef %4, ptr noundef nonnull @c__1, ptr noundef nonnull %i.bb, ptr noundef nonnull @c__1) #5
  %i.bd = load double, ptr %i.av, align 8, !tbaa !16
  %i.be = fsub double %i.bd, %i.bc
  store double %i.be, ptr %i.av, align 8, !tbaa !16
  br label %bb.p

bb.m:                                             ; preds = %.lr.ph460
  %i.bf = add nsw i32 %i.ao, %.0417458            ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr [8 x i8], ptr %i.c, i64 %i.bg ; 4 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 -8     ; 4 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !16 ; 3 uses
  %i.bk = fcmp oge double %i.bj, 0.000000e+00
  %i.bl = fneg double %i.bj                       ; 2 uses
  %i.bm = select i1 %i.bk, double %i.bj, double %i.bl ; 3 uses
  %i.bn = sext i32 %i.ao to i64
  %i.bo = getelementptr [8 x i8], ptr %i.c, i64 %i.bn ; 5 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 -8     ; 4 uses
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !16
  %i.br = load double, ptr %i.bh, align 8, !tbaa !16
  %6 = fdiv double %i.br, %i.bm                   ; 2 uses
  %i.bs = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.bt = insertelement <2 x double> %i.bs, double %i.bq, i64 1
  %i.bu = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.bv = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bw = fdiv <2 x double> %i.bt, %i.bv          ; 2 uses
  %i.bx = extractelement <2 x double> %i.bw, i64 1
  %i.by = call double @llvm.fmuladd.f64(double %i.bx, double %6, double -1.000000e+00)
  %i.bz = fmul double %i.bm, %i.by                ; 2 uses
  %7 = fdiv double %6, %i.bz
  store double %7, ptr %i.bp, align 8, !tbaa !16
  %8 = insertelement <2 x double> poison, double %i.bz, i64 0
  %9 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %10 = fdiv <2 x double> %i.bw, %9
  store <2 x double> %10, ptr %i.bi, align 8, !tbaa !16
  %i.ca = icmp samesign ugt i32 %.0417458, 1
  br i1 %i.ca, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cb = add nsw i32 %.0417458, -1               ; 7 uses
  store i32 %i.cb, ptr %i.a, align 4, !tbaa !14
  %i.cc = sext i32 %.0413459 to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.cc ; 4 uses
  call void @dcopy_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.cd, ptr noundef nonnull @c__1, ptr noundef %4, ptr noundef nonnull @c__1) #5
  store i32 %i.cb, ptr %i.a, align 4, !tbaa !14
  call void @dspmv_(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull @c_b11, ptr noundef nonnull %2, ptr noundef %4, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b13, ptr noundef nonnull %i.cd, ptr noundef nonnull @c__1) #5
  store i32 %i.cb, ptr %i.a, align 4, !tbaa !14
  %i.ce = call double @ddot_(ptr noundef nonnull %i.a, ptr noundef %4, ptr noundef nonnull @c__1, ptr noundef nonnull %i.cd, ptr noundef nonnull @c__1) #5
  %i.cf = load double, ptr %i.bp, align 8, !tbaa !16
  %i.cg = fsub double %i.cf, %i.ce
  store double %i.cg, ptr %i.bp, align 8, !tbaa !16
  store i32 %i.cb, ptr %i.a, align 4, !tbaa !14
  %i.ch = call double @ddot_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.cd, ptr noundef nonnull @c__1, ptr noundef nonnull %i.bo, ptr noundef nonnull @c__1) #5
  %i.ci = load double, ptr %i.bi, align 8, !tbaa !16
  %i.cj = fsub double %i.ci, %i.ch
  store double %i.cj, ptr %i.bi, align 8, !tbaa !16
  store i32 %i.cb, ptr %i.a, align 4, !tbaa !14
  call void @dcopy_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.bo, ptr noundef nonnull @c__1, ptr noundef %4, ptr noundef nonnull @c__1) #5
  store i32 %i.cb, ptr %i.a, align 4, !tbaa !14
  call void @dspmv_(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull @c_b11, ptr noundef nonnull %2, ptr noundef %4, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b13, ptr noundef nonnull %i.bo, ptr noundef nonnull @c__1) #5
  store i32 %i.cb, ptr %i.a, align 4, !tbaa !14
  %i.ck = call double @ddot_(ptr noundef nonnull %i.a, ptr noundef %4, ptr noundef nonnull @c__1, ptr noundef nonnull %i.bo, ptr noundef nonnull @c__1) #5
  %i.cl = load double, ptr %i.bh, align 8, !tbaa !16
  %i.cm = fsub double %i.cl, %i.ck
  store double %i.cm, ptr %i.bh, align 8, !tbaa !16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cn = add nsw i32 %i.bf, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %bb.l, %bb.o
  %.0415 = phi i32 [ 2, %bb.o ], [ 1, %bb.l ], [ 1, %bb.k ]
  %.0 = phi i32 [ %i.cn, %bb.o ], [ %i.ao, %bb.l ], [ %i.ao, %bb.k ]
  %i.co = load i32, ptr %i.aq, align 4, !tbaa !14 ; 3 uses
  store i32 %i.co, ptr %i.a, align 4, !tbaa !14
  %i.cp = call i32 @llvm.abs.i32(i32 %i.co, i1 true) ; 9 uses
  %.not439 = icmp eq i32 %i.cp, %.0417458
  br i1 %.not439, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cq = add nsw i32 %i.cp, -1                   ; 2 uses
  %i.cr = mul nsw i32 %i.cq, %i.cp
  %i.cs = sdiv i32 %i.cr, 2                       ; 2 uses
  store i32 %i.cq, ptr %i.a, align 4, !tbaa !14
  %i.ct = sext i32 %.0413459 to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ct
  %i.cv = sext i32 %i.cs to i64
  %i.cw = getelementptr [8 x i8], ptr %i.c, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 8
  call void @dswap_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.cu, ptr noundef nonnull @c__1, ptr noundef nonnull %i.cx, ptr noundef nonnull @c__1) #5
  %i.cy = add i32 %i.cs, %i.cp                    ; 3 uses
  %i.cz = add nsw i32 %.0417458, -1               ; 3 uses
  store i32 %i.cz, ptr %i.a, align 4, !tbaa !14
  %.not440.not454 = icmp slt i32 %i.cp, %i.cz
  br i1 %.not440.not454, label %.lr.ph457.preheader, label %._crit_edge

.lr.ph457.preheader:                              ; preds = %bb.q
  %i.da = call i32 @llvm.abs.i32(i32 %i.co, i1 true) ; 2 uses
  %smax = zext nneg i32 %i.da to i64              ; 2 uses
  %i.db = add nuw i32 %i.cz, %i.da
  %i.dc = sub i32 %i.db, %i.cp
  %i.dd = xor i32 %i.cp, -1
  %i.de = add nsw i32 %.0417458, %i.dd
  %i.df = add nsw i32 %.0417458, -2
  %i.dg = sub i32 %i.df, %i.cp
  %xtraiter = and i32 %i.de, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph457.prol.loopexit, label %.lr.ph457.prol

.lr.ph457.prol:                                   ; preds = %.lr.ph457.preheader, %.lr.ph457.prol
  %indvars.iv483.prol = phi i64 [ %indvars.iv.next484.prol, %.lr.ph457.prol ], [ %smax, %.lr.ph457.preheader ] ; 2 uses
  %.0409456.prol = phi i32 [ %i.di, %.lr.ph457.prol ], [ %i.cy, %.lr.ph457.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph457.prol ], [ 0, %.lr.ph457.preheader ]
  %indvars.iv.next484.prol = add nuw nsw i64 %indvars.iv483.prol, 1 ; 2 uses
  %i.dh = trunc nsw i64 %indvars.iv483.prol to i32 ; 2 uses
  %i.di = add i32 %.0409456.prol, %i.dh           ; 3 uses
  %i.dj = add i32 %.0413459, %i.dh
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.dk ; 2 uses
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !16
  %i.dn = sext i32 %i.di to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.dn ; 2 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !16
  store double %i.dp, ptr %i.dl, align 8, !tbaa !16
  store double %i.dm, ptr %i.do, align 8, !tbaa !16
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph457.prol.loopexit, label %.lr.ph457.prol, !llvm.loop !10

.lr.ph457.prol.loopexit:                          ; preds = %.lr.ph457.prol, %.lr.ph457.preheader
  %indvars.iv483.unr = phi i64 [ %smax, %.lr.ph457.preheader ], [ %indvars.iv.next484.prol, %.lr.ph457.prol ]
  %.0409456.unr = phi i32 [ %i.cy, %.lr.ph457.preheader ], [ %i.di, %.lr.ph457.prol ]
  %i.dq = icmp ult i32 %i.dg, 3
  br i1 %i.dq, label %._crit_edge, label %.lr.ph457

.lr.ph457:                                        ; preds = %.lr.ph457.prol.loopexit, %.lr.ph457
  %indvars.iv483 = phi i64 [ %indvars.iv.next484.3, %.lr.ph457 ], [ %indvars.iv483.unr, %.lr.ph457.prol.loopexit ] ; 5 uses
  %.0409456 = phi i32 [ %i.ew, %.lr.ph457 ], [ %.0409456.unr, %.lr.ph457.prol.loopexit ]
  %i.dr = trunc nsw i64 %indvars.iv483 to i32     ; 2 uses
  %i.ds = add i32 %.0409456, %i.dr                ; 2 uses
  %i.dt = add i32 %.0413459, %i.dr
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.du ; 2 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !16
  %i.dx = sext i32 %i.ds to i64
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.dx ; 2 uses
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !16
  store double %i.dz, ptr %i.dv, align 8, !tbaa !16
  store double %i.dw, ptr %i.dy, align 8, !tbaa !16
  %i.ea = trunc i64 %indvars.iv483 to i32
  %i.eb = add i32 %i.ea, 1                        ; 2 uses
  %i.ec = add i32 %i.ds, %i.eb                    ; 2 uses
  %i.ed = add i32 %.0413459, %i.eb
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ee ; 2 uses
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !16
  %i.eh = sext i32 %i.ec to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.eh ; 2 uses
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !16
  store double %i.ej, ptr %i.ef, align 8, !tbaa !16
  store double %i.eg, ptr %i.ei, align 8, !tbaa !16
  %i.ek = trunc i64 %indvars.iv483 to i32
  %i.el = add i32 %i.ek, 2                        ; 2 uses
  %i.em = add i32 %i.ec, %i.el                    ; 2 uses
  %i.en = add i32 %.0413459, %i.el
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.eo ; 2 uses
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !16
  %i.er = sext i32 %i.em to i64
  %i.es = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.er ; 2 uses
  %i.et = load double, ptr %i.es, align 8, !tbaa !16
  store double %i.et, ptr %i.ep, align 8, !tbaa !16
  store double %i.eq, ptr %i.es, align 8, !tbaa !16
  %indvars.iv.next484.3 = add nuw nsw i64 %indvars.iv483, 4 ; 2 uses
  %i.eu = trunc i64 %indvars.iv483 to i32
  %i.ev = add i32 %i.eu, 3                        ; 2 uses
  %i.ew = add i32 %i.em, %i.ev                    ; 2 uses
  %i.ex = add i32 %.0413459, %i.ev
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ey ; 2 uses
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !16
  %i.fb = sext i32 %i.ew to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.fb ; 2 uses
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !16
  store double %i.fd, ptr %i.ez, align 8, !tbaa !16
  store double %i.fa, ptr %i.fc, align 8, !tbaa !16
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next484.3 to i32
  %exitcond485.not.3 = icmp eq i32 %i.dc, %lftr.wideiv.3
  br i1 %exitcond485.not.3, label %._crit_edge, label %.lr.ph457, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph457.prol.loopexit, %.lr.ph457, %bb.q
  %i.fe = sext i32 %i.ao to i64
  %i.ff = getelementptr [8 x i8], ptr %i.c, i64 %i.fe
  %i.fg = getelementptr i8, ptr %i.ff, i64 -8     ; 2 uses
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !16
  %i.fi = sext i32 %i.cy to i64
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.fi ; 2 uses
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !16
  store double %i.fk, ptr %i.fg, align 8, !tbaa !16
  store double %i.fh, ptr %i.fj, align 8, !tbaa !16
  br i1 %i.as, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge
  %i.fl = add nsw i32 %i.ao, %.0417458
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr [8 x i8], ptr %i.c, i64 %i.fm
  %i.fo = getelementptr i8, ptr %i.fn, i64 -8     ; 2 uses
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !16
  %i.fq = add nsw i32 %i.cp, %i.ao
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr [8 x i8], ptr %i.c, i64 %i.fr
  %i.ft = getelementptr i8, ptr %i.fs, i64 -8     ; 2 uses
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !16
  store double %i.fu, ptr %i.fo, align 8, !tbaa !16
  store double %i.fp, ptr %i.ft, align 8, !tbaa !16
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %bb.r, %bb.p
  %i.fv = add nuw nsw i32 %.0415, %.0417458       ; 2 uses
  %i.fw = load i32, ptr %1, align 4, !tbaa !14
  %i.fx = icmp sgt i32 %i.fv, %i.fw
  br i1 %i.fx, label %.loopexit, label %.lr.ph460

bb.t:                                             ; preds = %.loopexit444
  %i.fy = add nsw i32 %i.am, 1
  %i.fz = mul nsw i32 %i.fy, %i.am
  %i.ga = sdiv i32 %i.fz, 2                       ; 2 uses
  %i.gb = icmp slt i32 %i.am, 1
  br i1 %i.gb, label %.loopexit, label %.lr.ph474

.lr.ph474:                                        ; preds = %bb.t, %bb.ae
  %.1414470 = phi i32 [ %.1, %bb.ae ], [ %i.ga, %bb.t ] ; 10 uses
  %.1418468 = phi i32 [ %i.nh, %bb.ae ], [ %i.am, %bb.t ] ; 23 uses
  %i.gc = load i32, ptr %1, align 4, !tbaa !14    ; 6 uses
end_hunk_0
