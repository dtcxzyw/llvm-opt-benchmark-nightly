Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_arpack?download=true
inline.NumInlined: 114
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 48
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.1 = private unnamed_addr constant [3 x i8] c"SM\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"LA\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"REGULR\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"SHIFTI\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"BUCKLE\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"CAYLEY\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"Identity\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Notranspose\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"All\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"Transpose\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"General\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"f\00", align 1

; Function Attrs: mustprogress uwtable
define void @_Z7dsaupd_PiPKcS_S1_S_PdS2_S_S2_S_S_S_S2_S_S2_S_S_(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7, ptr noundef %8, ptr noundef %9, ptr nofree noundef captures(none) %10, ptr nofree noundef writeonly captures(none) %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr nofree noundef readonly captures(none) %15, ptr nofree noundef captures(none) %16) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = alloca double, align 8                   ; 6 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca i32, align 4                      ; 15 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca double, align 8                   ; 7 uses
  %i.g = alloca double, align 8                   ; 6 uses
  %i.h = alloca double, align 8                   ; 6 uses
  %i.i = alloca double, align 8                   ; 6 uses
  %i.j = alloca double, align 8                   ; 7 uses
  %i.k = alloca i32, align 4                      ; 15 uses
  %i.l = alloca i32, align 4                      ; 21 uses
  %i.m = alloca i32, align 4                      ; 13 uses
  %i.n = alloca i32, align 4                      ; 13 uses
  %i.o = alloca double, align 8                   ; 7 uses
  %i.p = alloca double, align 8                   ; 16 uses
  %i.q = alloca double, align 8                   ; 10 uses
  %i.r = alloca double, align 8                   ; 20 uses
  %i.s = alloca double, align 8                   ; 14 uses
  %i.t = alloca double, align 8                   ; 16 uses
  %i.u = alloca i32, align 4                      ; 8 uses
  %i.v = alloca double, align 8                   ; 8 uses
  %i.w = alloca double, align 8                   ; 8 uses
  %i.x = alloca double, align 8                   ; 8 uses
  %i.y = alloca double, align 8                   ; 8 uses
  %i.z = alloca double, align 8                   ; 9 uses
  %i.aa = alloca i32, align 4                     ; 8 uses
  %i.ab = alloca i32, align 4                     ; 5 uses
  %i.ac = alloca i32, align 4                     ; 26 uses
  %i.ad = alloca i32, align 4                     ; 4 uses
  %i.ae = alloca i32, align 4                     ; 8 uses
  %i.af = alloca i32, align 4                     ; 14 uses
  %i.ag = alloca [2 x i8], align 2                ; 10 uses
  %i.ah = getelementptr i8, ptr %14, i64 -8       ; 5 uses
  %i.ai = load i32, ptr %0, align 4, !tbaa !8
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.b, label %._crit_edge300

._crit_edge300:                                   ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %13, i64 24
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !8
  br label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 7 uses
  store i32 0, ptr %i.ak, align 4, !tbaa !8
  %i.al = load i32, ptr %10, align 4, !tbaa !8    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 %i.al, ptr %i.am, align 4, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !8  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 36
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !8  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 44 ; 2 uses
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 20
  store i32 1, ptr %i.at, align 4, !tbaa !8
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.av = load i32, ptr %i.au, align 4, !tbaa !8  ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !8
  %i.ax = load i32, ptr %2, align 4, !tbaa !8     ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 1
  br i1 %i.ay, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.az = load i32, ptr %4, align 4, !tbaa !8     ; 2 uses
  %i.ba = icmp slt i32 %i.az, 1
  br i1 %i.ba, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = load i32, ptr %7, align 4, !tbaa !8     ; 2 uses
  %.not = icmp sle i32 %i.bb, %i.az
  %i.bc = icmp sgt i32 %i.bb, %i.ax
  %or.cond = or i1 %.not, %i.bc
  br i1 %or.cond, label %.sink.split, label %bb.e

.sink.split:                                      ; preds = %bb.d, %bb.c, %bb.b
  %.sink = phi i32 [ -1, %bb.b ], [ -2, %bb.c ], [ -3, %bb.d ] ; 2 uses
  store i32 %.sink, ptr %i.ak, align 4, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d
  %.pr299 = phi i32 [ 0, %bb.d ], [ %.sink, %.sink.split ]
  %i.bd = load i32, ptr %7, align 4, !tbaa !8
  %i.be = load i32, ptr %4, align 4, !tbaa !8
  %i.bf = sub nsw i32 %i.bd, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 2 uses
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !8
  %i.bh = icmp slt i32 %i.ao, 1
  br i1 %i.bh, label %bb.f, label %sub_0

bb.f:                                             ; preds = %bb.e
  store i32 -4, ptr %i.ak, align 4, !tbaa !8
  br label %sub_0

sub_0:                                            ; preds = %bb.e, %bb.f
  %.pr298 = phi i32 [ %.pr299, %bb.e ], [ -4, %bb.f ] ; 5 uses
  %i.bi = load i8, ptr %3, align 1
  switch i8 %i.bi, label %.tail195.thread [
    i8 76, label %.tail
    i8 83, label %.tail183
    i8 66, label %.tail195
  ]

.tail:                                            ; preds = %sub_0
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = icmp eq i8 %i.bk, 77
  br i1 %i.bl, label %bb.g, label %.tail187

.tail183:                                         ; preds = %sub_0
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = icmp eq i8 %i.bn, 77
  br i1 %i.bo, label %bb.g, label %.tail191

.tail187:                                         ; preds = %.tail
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = icmp eq i8 %i.bq, 65
  br i1 %i.br, label %bb.g, label %.tail195.thread

.tail191:                                         ; preds = %.tail183
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = icmp eq i8 %i.bt, 65
  br i1 %i.bu, label %bb.g, label %.tail195.thread

.tail195:                                         ; preds = %sub_0
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = icmp eq i8 %i.bw, 69
  br i1 %i.bx, label %bb.g, label %.tail195.thread

.tail195.thread:                                  ; preds = %sub_0, %.tail187, %.tail191, %.tail195
  store i32 -5, ptr %i.ak, align 4, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %.tail195.thread, %.tail195, %.tail191, %.tail187, %.tail183, %.tail
  %.pr297 = phi i32 [ -5, %.tail195.thread ], [ %.pr298, %.tail195 ], [ %.pr298, %.tail191 ], [ %.pr298, %.tail187 ], [ %.pr298, %.tail183 ], [ %.pr298, %.tail ] ; 2 uses
  %i.by = load i8, ptr %1, align 1, !tbaa !9
  switch i8 %i.by, label %bb.h [
    i8 73, label %bb.i
    i8 71, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  store i32 -6, ptr %i.ak, align 4, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.g, %bb.h
  %.pr296 = phi i32 [ %.pr297, %bb.g ], [ %.pr297, %bb.g ], [ -6, %bb.h ]
  %i.bz = load i32, ptr %7, align 4, !tbaa !8     ; 2 uses
  %i.ca = load i32, ptr %15, align 4, !tbaa !8
  %i.cb = add i32 %i.bz, 8
  %i.cc = mul i32 %i.cb, %i.bz
  %i.cd = icmp slt i32 %i.ca, %i.cc
  br i1 %i.cd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 -7, ptr %i.ak, align 4, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pr = phi i32 [ -7, %bb.j ], [ %.pr296, %bb.i ] ; 2 uses
  %i.ce = add i32 %i.av, -6
  %or.cond176 = icmp ult i32 %i.ce, -5
  br i1 %or.cond176, label %.thread.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cf = icmp eq i32 %i.av, 1
  br i1 %i.cf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cg = load i8, ptr %1, align 1, !tbaa !9
  %i.ch = icmp eq i8 %i.cg, 71
  br i1 %i.ch, label %.thread.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %or.cond177 = icmp ugt i32 %i.al, 1
  br i1 %or.cond177, label %.thread.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = load i32, ptr %4, align 4, !tbaa !8
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %sub_0200, label %.tail199.thread

sub_0200:                                         ; preds = %bb.o
  %i.ck = load i8, ptr %3, align 1
  %.not253 = icmp eq i8 %i.ck, 66
  br i1 %.not253, label %.tail199, label %.tail199.thread

.tail199:                                         ; preds = %sub_0200
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = icmp eq i8 %i.cm, 69
  br i1 %i.cn, label %.thread.sink.split, label %.tail199.thread

.tail199.thread:                                  ; preds = %sub_0200, %bb.o, %.tail199
  %.not173 = icmp eq i32 %.pr, 0
  br i1 %.not173, label %bb.p, label %.thread

end_hunk_0
begin_hunk_1_@_Z7dsaupd_PiPKcS_S1_S_PdS2_S_S2_S_S_S_S2_S_S2_S_S_:bb.a
  %i.apk = sext i32 %i.apj to i64
  %i.apl = getelementptr inbounds [8 x i8], ptr %i.anq, i64 %i.apk ; 3 uses
  %i.apm = load double, ptr %i.apl, align 8, !tbaa !11
  %i.apn = load double, ptr %i.aov, align 8, !tbaa !11
  %i.apo = fsub double %i.apm, %i.apn
  store double %i.apo, ptr %i.g, align 8, !tbaa !11
  %i.app = add nsw i32 %.0.i.i, 1                 ; 3 uses
  %i.apq = add nsw i32 %i.app, %.val395.i
  %i.apr = sext i32 %i.apq to i64
  %i.aps = getelementptr inbounds [8 x i8], ptr %i.anq, i64 %i.apr ; 3 uses
  %i.apt = load double, ptr %i.aps, align 8, !tbaa !11
  store double %i.apt, ptr %i.h, align 8, !tbaa !11
  call void @dlartg_(ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.f, ptr noundef nonnull %i.j, ptr noundef nonnull %i.i)
  %i.apu = load double, ptr %i.f, align 8, !tbaa !11 ; 19 uses
  %i.apv = load double, ptr %i.apl, align 8, !tbaa !11 ; 2 uses
  %i.apw = load double, ptr %i.j, align 8, !tbaa !11 ; 14 uses
  %i.apx = load double, ptr %i.aps, align 8, !tbaa !11 ; 3 uses
  %i.apy = fmul double %i.apw, %i.apx             ; 2 uses
  %i.apz = call double @llvm.fmuladd.f64(double %i.apu, double %i.apv, double %i.apy)
  %i.aqa = add nsw i32 %i.app, %i.anz
  %i.aqb = sext i32 %i.aqa to i64
  %i.aqc = getelementptr inbounds [8 x i8], ptr %i.anq, i64 %i.aqb ; 2 uses
  %i.aqd = load double, ptr %i.aqc, align 8, !tbaa !11 ; 2 uses
  %i.aqe = fmul double %i.apw, %i.aqd
  %i.aqf = call double @llvm.fmuladd.f64(double %i.apu, double %i.apx, double %i.aqe)
  %i.aqg = fneg double %i.apy
  %i.aqh = call double @llvm.fmuladd.f64(double %i.apu, double %i.aqd, double %i.aqg) ; 2 uses
  %i.aqi = fneg double %i.apv
  %i.aqj = fmul double %i.apw, %i.aqi
  %i.aqk = call double @llvm.fmuladd.f64(double %i.apu, double %i.apx, double %i.aqj) ; 2 uses
  %i.aql = fmul double %i.apw, %i.aqf
  %i.aqm = call double @llvm.fmuladd.f64(double %i.apu, double %i.apz, double %i.aql)
  store double %i.aqm, ptr %i.apl, align 8, !tbaa !11
  %i.aqn = fneg double %i.aqk
  %i.aqo = fmul double %i.apw, %i.aqn
  %i.aqp = call double @llvm.fmuladd.f64(double %i.apu, double %i.aqh, double %i.aqo)
  store double %i.aqp, ptr %i.aqc, align 8, !tbaa !11
  %i.aqq = fmul double %i.apw, %i.aqh
  %i.aqr = call double @llvm.fmuladd.f64(double %i.apu, double %i.aqk, double %i.aqq)
  store double %i.aqr, ptr %i.aps, align 8, !tbaa !11
  %i.aqs = add i32 %.0.i.i, %indvars128.i
  %i.aqt = load i32, ptr %i.k, align 4, !tbaa !8  ; 3 uses
  %i.aqu = call i32 @llvm.smin.i32(i32 %i.aqs, i32 %i.aqt) ; 5 uses
  %.not3347.i.i = icmp slt i32 %i.aqu, 1
  br i1 %.not3347.i.i, label %._crit_edge.i.i, label %.lr.ph.i406.i

.lr.ph.i406.i:                                    ; preds = %bb.du
  %i.aqv = mul nsw i32 %.0.i.i, %i.anr
  %i.aqw = mul nsw i32 %i.app, %i.anr
  %i.aqx = fneg double %i.apw                     ; 6 uses
  %i.aqy = sext i32 %i.aqv to i64                 ; 2 uses
  %i.aqz = sext i32 %i.aqw to i64                 ; 2 uses
  %invariant.gep102.i.i = getelementptr [8 x i8], ptr %i.ant, i64 %i.aqy ; 6 uses
  %invariant.gep104.i.i = getelementptr [8 x i8], ptr %i.ant, i64 %i.aqz ; 6 uses
  %narrow.i = add nuw i32 %i.aqu, 1               ; 4 uses
  %i.ara = zext i32 %narrow.i to i64              ; 3 uses
  %i.arb = zext nneg i32 %i.aqu to i64            ; 2 uses
  %min.iters.check530 = icmp ult i32 %i.aqu, 8
  br i1 %min.iters.check530, label %scalar.ph529.preheader, label %vector.memcheck531

vector.memcheck531:                               ; preds = %.lr.ph.i406.i
  %i.arc = shl nsw i64 %i.aqz, 3                  ; 2 uses
  %i.ard = getelementptr i8, ptr %scevgep, i64 %i.arc
  %i.are = shl nuw nsw i64 %i.ara, 3              ; 2 uses
  %i.arf = getelementptr i8, ptr %i.ant, i64 %i.arc
  %i.arg = getelementptr i8, ptr %i.arf, i64 %i.are
  %i.arh = shl nsw i64 %i.aqy, 3                  ; 2 uses
  %i.ari = getelementptr i8, ptr %scevgep, i64 %i.arh
  %i.arj = getelementptr i8, ptr %i.ant, i64 %i.arh
  %i.ark = getelementptr i8, ptr %i.arj, i64 %i.are
  %bound0532 = icmp ult ptr %i.ard, %i.ark
  %bound1533 = icmp ult ptr %i.ari, %i.arg
  %found.conflict534 = and i1 %bound0532, %bound1533
  br i1 %found.conflict534, label %scalar.ph529.preheader, label %vector.ph535

vector.ph535:                                     ; preds = %vector.memcheck531
  %n.vec536 = and i64 %i.arb, 2147483640          ; 3 uses
  %i.arl = or disjoint i64 %n.vec536, 1
  %broadcast.splatinsert537 = insertelement <4 x double> poison, double %i.aqx, i64 0
  %broadcast.splat538 = shufflevector <4 x double> %broadcast.splatinsert537, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert539 = insertelement <4 x double> poison, double %i.apw, i64 0
  %broadcast.splat540 = shufflevector <4 x double> %broadcast.splatinsert539, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert541 = insertelement <4 x double> poison, double %i.apu, i64 0
  %broadcast.splat542 = shufflevector <4 x double> %broadcast.splatinsert541, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body543

vector.body543:                                   ; preds = %vector.body543, %vector.ph535
  %index544 = phi i64 [ 0, %vector.ph535 ], [ %index.next549, %vector.body543 ] ; 2 uses
  %i.arm = or disjoint i64 %index544, 1           ; 2 uses
  %i.arn = getelementptr [8 x i8], ptr %invariant.gep102.i.i, i64 %i.arm ; 3 uses
  %i.aro = getelementptr i8, ptr %i.arn, i64 32   ; 2 uses
  %wide.load545 = load <4 x double>, ptr %i.arn, align 8, !tbaa !11, !alias.scope !86 ; 2 uses
  %wide.load546 = load <4 x double>, ptr %i.aro, align 8, !tbaa !11, !alias.scope !86 ; 2 uses
  %i.arp = getelementptr [8 x i8], ptr %invariant.gep104.i.i, i64 %i.arm ; 3 uses
  %i.arq = getelementptr i8, ptr %i.arp, i64 32   ; 2 uses
  %wide.load547 = load <4 x double>, ptr %i.arp, align 8, !tbaa !11, !alias.scope !87, !noalias !86 ; 2 uses
  %wide.load548 = load <4 x double>, ptr %i.arq, align 8, !tbaa !11, !alias.scope !87, !noalias !86 ; 2 uses
  %i.arr = fmul <4 x double> %broadcast.splat540, %wide.load547
  %i.ars = fmul <4 x double> %broadcast.splat540, %wide.load548
  %i.art = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat542, <4 x double> %wide.load545, <4 x double> %i.arr)
  %i.aru = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat542, <4 x double> %wide.load546, <4 x double> %i.ars)
  %i.arv = fmul <4 x double> %broadcast.splat542, %wide.load547
  %i.arw = fmul <4 x double> %broadcast.splat542, %wide.load548
  %i.arx = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat538, <4 x double> %wide.load545, <4 x double> %i.arv)
  %i.ary = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat538, <4 x double> %wide.load546, <4 x double> %i.arw)
  store <4 x double> %i.arx, ptr %i.arp, align 8, !tbaa !11, !alias.scope !87, !noalias !86
  store <4 x double> %i.ary, ptr %i.arq, align 8, !tbaa !11, !alias.scope !87, !noalias !86
  store <4 x double> %i.art, ptr %i.arn, align 8, !tbaa !11, !alias.scope !86
  store <4 x double> %i.aru, ptr %i.aro, align 8, !tbaa !11, !alias.scope !86
  %index.next549 = add nuw i64 %index544, 8       ; 2 uses
  %i.arz = icmp eq i64 %index.next549, %n.vec536
  br i1 %i.arz, label %middle.block550, label %vector.body543, !llvm.loop !60

middle.block550:                                  ; preds = %vector.body543
  %cmp.n551 = icmp eq i64 %n.vec536, %i.arb
  br i1 %cmp.n551, label %._crit_edge.i.i, label %scalar.ph529.preheader

scalar.ph529.preheader:                           ; preds = %vector.memcheck531, %.lr.ph.i406.i, %middle.block550
  %indvars.iv49.i.i.ph = phi i64 [ 1, %vector.memcheck531 ], [ 1, %.lr.ph.i406.i ], [ %i.arl, %middle.block550 ] ; 4 uses
  %i.asa = sub nsw i64 %i.ara, %indvars.iv49.i.i.ph
  %i.asb = zext nneg i32 %i.aqu to i64
  %i.asc = sub nsw i64 %i.asb, %indvars.iv49.i.i.ph
  %xtraiter779 = and i64 %i.asa, 3                ; 2 uses
  %lcmp.mod780.not = icmp eq i64 %xtraiter779, 0
  br i1 %lcmp.mod780.not, label %scalar.ph529.prol.loopexit, label %scalar.ph529.prol

scalar.ph529.prol:                                ; preds = %scalar.ph529.preheader, %scalar.ph529.prol
  %indvars.iv49.i.i.prol = phi i64 [ %indvars.iv.next50.i.i.prol, %scalar.ph529.prol ], [ %indvars.iv49.i.i.ph, %scalar.ph529.preheader ] ; 3 uses
  %prol.iter781 = phi i64 [ %prol.iter781.next, %scalar.ph529.prol ], [ 0, %scalar.ph529.preheader ]
  %gep103.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep102.i.i, i64 %indvars.iv49.i.i.prol ; 2 uses
  %i.asd = load double, ptr %gep103.i.i.prol, align 8, !tbaa !11 ; 2 uses
  %gep105.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep104.i.i, i64 %indvars.iv49.i.i.prol ; 2 uses
  %i.ase = load double, ptr %gep105.i.i.prol, align 8, !tbaa !11 ; 2 uses
  %i.asf = fmul double %i.apw, %i.ase
  %i.asg = call double @llvm.fmuladd.f64(double %i.apu, double %i.asd, double %i.asf)
  %i.ash = fmul double %i.apu, %i.ase
  %i.asi = call double @llvm.fmuladd.f64(double %i.aqx, double %i.asd, double %i.ash)
  store double %i.asi, ptr %gep105.i.i.prol, align 8, !tbaa !11
  store double %i.asg, ptr %gep103.i.i.prol, align 8, !tbaa !11
  %indvars.iv.next50.i.i.prol = add nuw nsw i64 %indvars.iv49.i.i.prol, 1 ; 2 uses
  %prol.iter781.next = add i64 %prol.iter781, 1   ; 2 uses
  %prol.iter781.cmp.not = icmp eq i64 %prol.iter781.next, %xtraiter779
  br i1 %prol.iter781.cmp.not, label %scalar.ph529.prol.loopexit, label %scalar.ph529.prol, !llvm.loop !61

scalar.ph529.prol.loopexit:                       ; preds = %scalar.ph529.prol, %scalar.ph529.preheader
  %indvars.iv49.i.i.unr = phi i64 [ %indvars.iv49.i.i.ph, %scalar.ph529.preheader ], [ %indvars.iv.next50.i.i.prol, %scalar.ph529.prol ]
  %i.asj = icmp ult i64 %i.asc, 3
  br i1 %i.asj, label %._crit_edge.i.i, label %scalar.ph529

scalar.ph529:                                     ; preds = %scalar.ph529.prol.loopexit, %scalar.ph529
  %indvars.iv49.i.i = phi i64 [ %indvars.iv.next50.i.i.3, %scalar.ph529 ], [ %indvars.iv49.i.i.unr, %scalar.ph529.prol.loopexit ] ; 6 uses
  %gep103.i.i = getelementptr [8 x i8], ptr %invariant.gep102.i.i, i64 %indvars.iv49.i.i ; 2 uses
  %i.ask = load double, ptr %gep103.i.i, align 8, !tbaa !11 ; 2 uses
  %gep105.i.i = getelementptr [8 x i8], ptr %invariant.gep104.i.i, i64 %indvars.iv49.i.i ; 2 uses
  %i.asl = load double, ptr %gep105.i.i, align 8, !tbaa !11 ; 2 uses
  %i.asm = fmul double %i.apw, %i.asl
  %i.asn = call double @llvm.fmuladd.f64(double %i.apu, double %i.ask, double %i.asm)
  %i.aso = fmul double %i.apu, %i.asl
  %i.asp = call double @llvm.fmuladd.f64(double %i.aqx, double %i.ask, double %i.aso)
  store double %i.asp, ptr %gep105.i.i, align 8, !tbaa !11
  store double %i.asn, ptr %gep103.i.i, align 8, !tbaa !11
  %indvars.iv.next50.i.i = add nuw nsw i64 %indvars.iv49.i.i, 1 ; 2 uses
  %gep103.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep102.i.i, i64 %indvars.iv.next50.i.i ; 2 uses
  %i.asq = load double, ptr %gep103.i.i.1, align 8, !tbaa !11 ; 2 uses
  %gep105.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep104.i.i, i64 %indvars.iv.next50.i.i ; 2 uses
  %i.asr = load double, ptr %gep105.i.i.1, align 8, !tbaa !11 ; 2 uses
  %i.ass = fmul double %i.apw, %i.asr
  %i.ast = call double @llvm.fmuladd.f64(double %i.apu, double %i.asq, double %i.ass)
  %i.asu = fmul double %i.apu, %i.asr
  %i.asv = call double @llvm.fmuladd.f64(double %i.aqx, double %i.asq, double %i.asu)
  store double %i.asv, ptr %gep105.i.i.1, align 8, !tbaa !11
  store double %i.ast, ptr %gep103.i.i.1, align 8, !tbaa !11
  %indvars.iv.next50.i.i.1 = add nuw nsw i64 %indvars.iv49.i.i, 2 ; 2 uses
  %gep103.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep102.i.i, i64 %indvars.iv.next50.i.i.1 ; 2 uses
  %i.asw = load double, ptr %gep103.i.i.2, align 8, !tbaa !11 ; 2 uses
  %gep105.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep104.i.i, i64 %indvars.iv.next50.i.i.1 ; 2 uses
  %i.asx = load double, ptr %gep105.i.i.2, align 8, !tbaa !11 ; 2 uses
  %i.asy = fmul double %i.apw, %i.asx
  %i.asz = call double @llvm.fmuladd.f64(double %i.apu, double %i.asw, double %i.asy)
  %i.ata = fmul double %i.apu, %i.asx
  %i.atb = call double @llvm.fmuladd.f64(double %i.aqx, double %i.asw, double %i.ata)
  store double %i.atb, ptr %gep105.i.i.2, align 8, !tbaa !11
  store double %i.asz, ptr %gep103.i.i.2, align 8, !tbaa !11
  %indvars.iv.next50.i.i.2 = add nuw nsw i64 %indvars.iv49.i.i, 3 ; 2 uses
  %gep103.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep102.i.i, i64 %indvars.iv.next50.i.i.2 ; 2 uses
  %i.atc = load double, ptr %gep103.i.i.3, align 8, !tbaa !11 ; 2 uses
  %gep105.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep104.i.i, i64 %indvars.iv.next50.i.i.2 ; 2 uses
  %i.atd = load double, ptr %gep105.i.i.3, align 8, !tbaa !11 ; 2 uses
  %i.ate = fmul double %i.apw, %i.atd
  %i.atf = call double @llvm.fmuladd.f64(double %i.apu, double %i.atc, double %i.ate)
  %i.atg = fmul double %i.apu, %i.atd
  %i.ath = call double @llvm.fmuladd.f64(double %i.aqx, double %i.atc, double %i.atg)
  store double %i.ath, ptr %gep105.i.i.3, align 8, !tbaa !11
  store double %i.atf, ptr %gep103.i.i.3, align 8, !tbaa !11
  %indvars.iv.next50.i.i.3 = add nuw nsw i64 %indvars.iv49.i.i, 4 ; 2 uses
  %exitcond124.not.i.3 = icmp eq i64 %indvars.iv.next50.i.i.3, %i.ara
  br i1 %exitcond124.not.i.3, label %._crit_edge.i.i, label %scalar.ph529, !llvm.loop !62

._crit_edge.i.i:                                  ; preds = %scalar.ph529.prol.loopexit, %scalar.ph529, %middle.block550, %bb.du
  %.0320.lcssa.i.i = phi i32 [ 1, %bb.du ], [ %narrow.i, %middle.block550 ], [ %narrow.i, %scalar.ph529 ], [ %narrow.i, %scalar.ph529.prol.loopexit ]
  %i.ati = add nsw i32 %.0318.i.i, -1             ; 2 uses
  store i32 %i.ati, ptr %i.e, align 4, !tbaa !8
  %.not33514.not.i.i = icmp slt i32 %.0.i.i, %i.ati
  br i1 %.not33514.not.i.i, label %.lr.ph18.preheader.i.i, label %.loopexit1.i.i

.lr.ph18.preheader.i.i:                           ; preds = %._crit_edge.i.i
  %i.atj = add nsw i64 %i.aox, 1                  ; 2 uses
  %17 = sext i32 %.0318.i.i to i64
  %i.atk = mul i64 %i.aog, %i.atj                 ; 2 uses
  %i.atl = add nsw i64 %i.aox, 2
  %i.atm = mul i64 %i.aoh, %i.atl                 ; 2 uses
  %i.atn = getelementptr i8, ptr %i.aom, i64 %i.atm
  %i.ato = getelementptr i8, ptr %i.aop, i64 %i.atm
  %i.atp = getelementptr i8, ptr %i.aor, i64 %i.atk
  %i.atq = getelementptr i8, ptr %i.aou, i64 %i.atk
  br label %.lr.ph18.i.i

.loopexit.i.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block515, %bb.dw
  %.2.lcssa.i.i = phi i32 [ 1, %bb.dw ], [ %narrow184.i, %middle.block515 ], [ %narrow184.i, %scalar.ph ], [ %narrow184.i, %scalar.ph.prol.loopexit ]
  %exitcond127.not.i = icmp eq i64 %indvars.iv.next56.i.i, %17
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond127.not.i, label %.loopexit1.i.i, label %.lr.ph18.i.i, !llvm.loop !63

.lr.ph18.i.i:                                     ; preds = %.loopexit.i.i, %.lr.ph18.preheader.i.i
  %indvar = phi i64 [ %indvar.next, %.loopexit.i.i ], [ 0, %.lr.ph18.preheader.i.i ] ; 2 uses
  %i.atr = phi double [ %i.aud, %.loopexit.i.i ], [ %i.apu, %.lr.ph18.preheader.i.i ]
  %i.ats = phi double [ %i.auc, %.loopexit.i.i ], [ %i.apw, %.lr.ph18.preheader.i.i ]
  %indvars.iv55.i.i = phi i64 [ %indvars.iv.next56.i.i, %.loopexit.i.i ], [ %i.atj, %.lr.ph18.preheader.i.i ] ; 4 uses
  %.132116.i.i = phi i32 [ %.2.lcssa.i.i, %.loopexit.i.i ], [ %.0320.lcssa.i.i, %.lr.ph18.preheader.i.i ]
  %gep111.i.i.a = getelementptr [8 x i8], ptr %invariant.gep110.i.i.a, i64 %indvars.iv55.i.i ; 2 uses
  %i.att = load double, ptr %gep111.i.i.a, align 8, !tbaa !11
  store double %i.att, ptr %i.g, align 8, !tbaa !11
  %indvars.iv.next56.i.i = add nsw i64 %indvars.iv55.i.i, 1 ; 5 uses
  %gep113.i.i = getelementptr [8 x i8], ptr %invariant.gep110.i.i.a, i64 %indvars.iv.next56.i.i ; 4 uses
  %i.atu = load double, ptr %gep113.i.i, align 8, !tbaa !11 ; 2 uses
  %i.atv = fmul double %i.ats, %i.atu
  store double %i.atv, ptr %i.h, align 8, !tbaa !11
  %i.atw = fmul double %i.atr, %i.atu
  store double %i.atw, ptr %gep113.i.i, align 8, !tbaa !11
  call void @dlartg_(ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.f, ptr noundef nonnull %i.j, ptr noundef nonnull %i.i)
  %i.atx = load double, ptr %i.i, align 8, !tbaa !11 ; 3 uses
  %i.aty = fcmp olt double %i.atx, 0.000000e+00
  %.pre76.i.i = load double, ptr %i.f, align 8, !tbaa !11 ; 2 uses
  %.pre77.i.i = load double, ptr %i.j, align 8, !tbaa !11 ; 2 uses
  br i1 %i.aty, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %.lr.ph18.i.i
  %i.atz = fneg double %i.atx                     ; 2 uses
  store double %i.atz, ptr %i.i, align 8, !tbaa !11
  %i.aua = fneg double %.pre76.i.i                ; 2 uses
  store double %i.aua, ptr %i.f, align 8, !tbaa !11
  %i.aub = fneg double %.pre77.i.i                ; 2 uses
  store double %i.aub, ptr %i.j, align 8, !tbaa !11
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %.lr.ph18.i.i
  %i.auc = phi double [ %i.aub, %bb.dv ], [ %.pre77.i.i, %.lr.ph18.i.i ] ; 14 uses
  %i.aud = phi double [ %i.aua, %bb.dv ], [ %.pre76.i.i, %.lr.ph18.i.i ] ; 19 uses
  %i.aue = phi double [ %i.atz, %bb.dv ], [ %i.atx, %.lr.ph18.i.i ]
  store double %i.aue, ptr %gep111.i.i.a, align 8, !tbaa !11
  %gep115.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv55.i.i ; 2 uses
  %i.auf = load double, ptr %gep115.i.i, align 8, !tbaa !11 ; 2 uses
  %i.aug = load double, ptr %gep113.i.i, align 8, !tbaa !11 ; 3 uses
  %i.auh = fmul double %i.auc, %i.aug             ; 2 uses
  %i.aui = call double @llvm.fmuladd.f64(double %i.aud, double %i.auf, double %i.auh)
  %gep117.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.next56.i.i ; 2 uses
  %i.auj = load double, ptr %gep117.i.i, align 8, !tbaa !11 ; 2 uses
  %i.auk = fmul double %i.auc, %i.auj
  %i.aul = call double @llvm.fmuladd.f64(double %i.aud, double %i.aug, double %i.auk)
  %i.aum = fneg double %i.auf
  %i.aun = fmul double %i.auc, %i.aum
  %i.auo = call double @llvm.fmuladd.f64(double %i.aud, double %i.aug, double %i.aun) ; 2 uses
  %i.aup = fneg double %i.auh
  %i.auq = call double @llvm.fmuladd.f64(double %i.aud, double %i.auj, double %i.aup) ; 2 uses
  %i.aur = fmul double %i.auc, %i.aul
  %i.aus = call double @llvm.fmuladd.f64(double %i.aud, double %i.aui, double %i.aur)
  store double %i.aus, ptr %gep115.i.i, align 8, !tbaa !11
  %i.aut = fneg double %i.auo
  %i.auu = fmul double %i.auc, %i.aut
  %i.auv = call double @llvm.fmuladd.f64(double %i.aud, double %i.auq, double %i.auu)
  store double %i.auv, ptr %gep117.i.i, align 8, !tbaa !11
  %i.auw = fmul double %i.auc, %i.auq
  %i.aux = call double @llvm.fmuladd.f64(double %i.aud, double %i.auo, double %i.auw)
  store double %i.aux, ptr %gep113.i.i, align 8, !tbaa !11
  %i.auy = add i32 %.132116.i.i, %indvars128.i
  %i.auz = load i32, ptr %i.k, align 4, !tbaa !8  ; 3 uses
  %i.ava = call i32 @llvm.smin.i32(i32 %i.auy, i32 %i.auz) ; 5 uses
  %.not3379.i.i = icmp slt i32 %i.ava, 1
  br i1 %.not3379.i.i, label %.loopexit.i.i, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.dw
  %i.avb = mul nsw i64 %indvars.iv55.i.i, %i.aoc
  %i.avc = mul nsw i64 %indvars.iv.next56.i.i, %i.aoc
  %i.avd = fneg double %i.auc                     ; 6 uses
  %invariant.gep106.i.i = getelementptr [8 x i8], ptr %i.ant, i64 %i.avb ; 6 uses
  %invariant.gep108.i.i = getelementptr [8 x i8], ptr %i.ant, i64 %i.avc ; 6 uses
  %narrow184.i = add nuw i32 %i.ava, 1            ; 4 uses
  %i.ave = zext i32 %narrow184.i to i64           ; 3 uses
  %i.avf = zext nneg i32 %i.ava to i64            ; 2 uses
  %min.iters.check495 = icmp ult i32 %i.ava, 8
  br i1 %min.iters.check495, label %scalar.ph.preheader, label %vector.memcheck496

vector.memcheck496:                               ; preds = %.lr.ph12.i.i
  %i.avg = mul i64 %indvar, %i.aoi                ; 4 uses
  %i.avh = getelementptr i8, ptr %i.atn, i64 %i.avg
  %i.avi = shl nuw nsw i64 %i.ave, 3              ; 2 uses
  %i.avj = getelementptr i8, ptr %i.ato, i64 %i.avg
  %i.avk = getelementptr i8, ptr %i.avj, i64 %i.avi
  %i.avl = getelementptr i8, ptr %i.atp, i64 %i.avg
  %i.avm = getelementptr i8, ptr %i.atq, i64 %i.avg
  %i.avn = getelementptr i8, ptr %i.avm, i64 %i.avi
  %bound0497 = icmp ult ptr %i.avh, %i.avn
  %bound1498 = icmp ult ptr %i.avl, %i.avk
  %found.conflict499 = and i1 %bound0497, %bound1498
  br i1 %found.conflict499, label %scalar.ph.preheader, label %vector.ph500

vector.ph500:                                     ; preds = %vector.memcheck496
  %n.vec501 = and i64 %i.avf, 2147483640          ; 3 uses
  %i.avo = or disjoint i64 %n.vec501, 1
  %broadcast.splatinsert502 = insertelement <4 x double> poison, double %i.avd, i64 0
  %broadcast.splat503 = shufflevector <4 x double> %broadcast.splatinsert502, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert504 = insertelement <4 x double> poison, double %i.auc, i64 0
  %broadcast.splat505 = shufflevector <4 x double> %broadcast.splatinsert504, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert506 = insertelement <4 x double> poison, double %i.aud, i64 0
  %broadcast.splat507 = shufflevector <4 x double> %broadcast.splatinsert506, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body508

vector.body508:                                   ; preds = %vector.body508, %vector.ph500
  %index509 = phi i64 [ 0, %vector.ph500 ], [ %index.next514, %vector.body508 ] ; 2 uses
  %i.avp = or disjoint i64 %index509, 1           ; 2 uses
  %i.avq = getelementptr [8 x i8], ptr %invariant.gep106.i.i, i64 %i.avp ; 3 uses
  %i.avr = getelementptr i8, ptr %i.avq, i64 32   ; 2 uses
  %wide.load510 = load <4 x double>, ptr %i.avq, align 8, !tbaa !11, !alias.scope !88 ; 2 uses
  %wide.load511 = load <4 x double>, ptr %i.avr, align 8, !tbaa !11, !alias.scope !88 ; 2 uses
  %i.avs = getelementptr [8 x i8], ptr %invariant.gep108.i.i, i64 %i.avp ; 3 uses
  %i.avt = getelementptr i8, ptr %i.avs, i64 32   ; 2 uses
  %wide.load512 = load <4 x double>, ptr %i.avs, align 8, !tbaa !11, !alias.scope !89, !noalias !88 ; 2 uses
  %wide.load513 = load <4 x double>, ptr %i.avt, align 8, !tbaa !11, !alias.scope !89, !noalias !88 ; 2 uses
  %i.avu = fmul <4 x double> %broadcast.splat505, %wide.load512
  %i.avv = fmul <4 x double> %broadcast.splat505, %wide.load513
  %i.avw = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat507, <4 x double> %wide.load510, <4 x double> %i.avu)
  %i.avx = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat507, <4 x double> %wide.load511, <4 x double> %i.avv)
  %i.avy = fmul <4 x double> %broadcast.splat507, %wide.load512
  %i.avz = fmul <4 x double> %broadcast.splat507, %wide.load513
  %i.awa = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat503, <4 x double> %wide.load510, <4 x double> %i.avy)
  %i.awb = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat503, <4 x double> %wide.load511, <4 x double> %i.avz)
  store <4 x double> %i.awa, ptr %i.avs, align 8, !tbaa !11, !alias.scope !89, !noalias !88
  store <4 x double> %i.awb, ptr %i.avt, align 8, !tbaa !11, !alias.scope !89, !noalias !88
  store <4 x double> %i.avw, ptr %i.avq, align 8, !tbaa !11, !alias.scope !88
  store <4 x double> %i.avx, ptr %i.avr, align 8, !tbaa !11, !alias.scope !88
  %index.next514 = add nuw i64 %index509, 8       ; 2 uses
  %i.awc = icmp eq i64 %index.next514, %n.vec501
  br i1 %i.awc, label %middle.block515, label %vector.body508, !llvm.loop !67

middle.block515:                                  ; preds = %vector.body508
  %cmp.n516 = icmp eq i64 %n.vec501, %i.avf
  br i1 %cmp.n516, label %.loopexit.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck496, %.lr.ph12.i.i, %middle.block515
  %indvars.iv52.i.i.ph = phi i64 [ 1, %vector.memcheck496 ], [ 1, %.lr.ph12.i.i ], [ %i.avo, %middle.block515 ] ; 4 uses
  %i.awd = sub nsw i64 %i.ave, %indvars.iv52.i.i.ph
  %i.awe = zext nneg i32 %i.ava to i64
  %i.awf = sub nsw i64 %i.awe, %indvars.iv52.i.i.ph
  %xtraiter782 = and i64 %i.awd, 3                ; 2 uses
  %lcmp.mod783.not = icmp eq i64 %xtraiter782, 0
  br i1 %lcmp.mod783.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv52.i.i.prol = phi i64 [ %indvars.iv.next53.i.i.prol, %scalar.ph.prol ], [ %indvars.iv52.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter784 = phi i64 [ %prol.iter784.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep107.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep106.i.i, i64 %indvars.iv52.i.i.prol ; 2 uses
  %i.awg = load double, ptr %gep107.i.i.prol, align 8, !tbaa !11 ; 2 uses
  %gep109.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep108.i.i, i64 %indvars.iv52.i.i.prol ; 2 uses
  %i.awh = load double, ptr %gep109.i.i.prol, align 8, !tbaa !11 ; 2 uses
  %i.awi = fmul double %i.auc, %i.awh
  %i.awj = call double @llvm.fmuladd.f64(double %i.aud, double %i.awg, double %i.awi)
  %i.awk = fmul double %i.aud, %i.awh
  %i.awl = call double @llvm.fmuladd.f64(double %i.avd, double %i.awg, double %i.awk)
  store double %i.awl, ptr %gep109.i.i.prol, align 8, !tbaa !11
  store double %i.awj, ptr %gep107.i.i.prol, align 8, !tbaa !11
  %indvars.iv.next53.i.i.prol = add nuw nsw i64 %indvars.iv52.i.i.prol, 1 ; 2 uses
  %prol.iter784.next = add i64 %prol.iter784, 1   ; 2 uses
  %prol.iter784.cmp.not = icmp eq i64 %prol.iter784.next, %xtraiter782
  br i1 %prol.iter784.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !68

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv52.i.i.unr = phi i64 [ %indvars.iv52.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next53.i.i.prol, %scalar.ph.prol ]
  %i.awm = icmp ult i64 %i.awf, 3
  br i1 %i.awm, label %.loopexit.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv52.i.i = phi i64 [ %indvars.iv.next53.i.i.3, %scalar.ph ], [ %indvars.iv52.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep107.i.i = getelementptr [8 x i8], ptr %invariant.gep106.i.i, i64 %indvars.iv52.i.i ; 2 uses
  %i.awn = load double, ptr %gep107.i.i, align 8, !tbaa !11 ; 2 uses
  %gep109.i.i = getelementptr [8 x i8], ptr %invariant.gep108.i.i, i64 %indvars.iv52.i.i ; 2 uses
  %i.awo = load double, ptr %gep109.i.i, align 8, !tbaa !11 ; 2 uses
  %i.awp = fmul double %i.auc, %i.awo
  %i.awq = call double @llvm.fmuladd.f64(double %i.aud, double %i.awn, double %i.awp)
  %i.awr = fmul double %i.aud, %i.awo
  %i.aws = call double @llvm.fmuladd.f64(double %i.avd, double %i.awn, double %i.awr)
  store double %i.aws, ptr %gep109.i.i, align 8, !tbaa !11
  store double %i.awq, ptr %gep107.i.i, align 8, !tbaa !11
  %indvars.iv.next53.i.i = add nuw nsw i64 %indvars.iv52.i.i, 1 ; 2 uses
  %gep107.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep106.i.i, i64 %indvars.iv.next53.i.i ; 2 uses
  %i.awt = load double, ptr %gep107.i.i.1, align 8, !tbaa !11 ; 2 uses
  %gep109.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep108.i.i, i64 %indvars.iv.next53.i.i ; 2 uses
  %i.awu = load double, ptr %gep109.i.i.1, align 8, !tbaa !11 ; 2 uses
  %i.awv = fmul double %i.auc, %i.awu
  %i.aww = call double @llvm.fmuladd.f64(double %i.aud, double %i.awt, double %i.awv)
  %i.awx = fmul double %i.aud, %i.awu
  %i.awy = call double @llvm.fmuladd.f64(double %i.avd, double %i.awt, double %i.awx)
  store double %i.awy, ptr %gep109.i.i.1, align 8, !tbaa !11
  store double %i.aww, ptr %gep107.i.i.1, align 8, !tbaa !11
  %indvars.iv.next53.i.i.1 = add nuw nsw i64 %indvars.iv52.i.i, 2 ; 2 uses
  %gep107.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep106.i.i, i64 %indvars.iv.next53.i.i.1 ; 2 uses
  %i.awz = load double, ptr %gep107.i.i.2, align 8, !tbaa !11 ; 2 uses
  %gep109.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep108.i.i, i64 %indvars.iv.next53.i.i.1 ; 2 uses
  %i.axa = load double, ptr %gep109.i.i.2, align 8, !tbaa !11 ; 2 uses
  %i.axb = fmul double %i.auc, %i.axa
  %i.axc = call double @llvm.fmuladd.f64(double %i.aud, double %i.awz, double %i.axb)
  %i.axd = fmul double %i.aud, %i.axa
  %i.axe = call double @llvm.fmuladd.f64(double %i.avd, double %i.awz, double %i.axd)
  store double %i.axe, ptr %gep109.i.i.2, align 8, !tbaa !11
  store double %i.axc, ptr %gep107.i.i.2, align 8, !tbaa !11
  %indvars.iv.next53.i.i.2 = add nuw nsw i64 %indvars.iv52.i.i, 3 ; 2 uses
  %gep107.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep106.i.i, i64 %indvars.iv.next53.i.i.2 ; 2 uses
  %i.axf = load double, ptr %gep107.i.i.3, align 8, !tbaa !11 ; 2 uses
  %gep109.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep108.i.i, i64 %indvars.iv.next53.i.i.2 ; 2 uses
  %i.axg = load double, ptr %gep109.i.i.3, align 8, !tbaa !11 ; 2 uses
  %i.axh = fmul double %i.auc, %i.axg
  %i.axi = call double @llvm.fmuladd.f64(double %i.aud, double %i.axf, double %i.axh)
  %i.axj = fmul double %i.aud, %i.axg
  %i.axk = call double @llvm.fmuladd.f64(double %i.avd, double %i.axf, double %i.axj)
  store double %i.axk, ptr %gep109.i.i.3, align 8, !tbaa !11
  store double %i.axi, ptr %gep107.i.i.3, align 8, !tbaa !11
  %indvars.iv.next53.i.i.3 = add nuw nsw i64 %indvars.iv52.i.i, 4 ; 2 uses
  %exitcond126.not.i.3 = icmp eq i64 %indvars.iv.next53.i.i.3, %i.ave
  br i1 %exitcond126.not.i.3, label %.loopexit.i.i, label %scalar.ph, !llvm.loop !69

.loopexit1.i.i:                                   ; preds = %.loopexit.i.i, %._crit_edge.i.i, %.loopexit2.i.i
  %.pre83.i.i.a = phi i32 [ %.pre84.i.i.a, %.loopexit2.i.i ], [ %i.aqt, %._crit_edge.i.i ], [ %i.auz, %.loopexit.i.i ]
  %i.axl = phi i32 [ %i.aow, %.loopexit2.i.i ], [ %i.aqt, %._crit_edge.i.i ], [ %i.auz, %.loopexit.i.i ]
  %i.axm = add nsw i32 %.0318.i.i, 1
  %i.axn = add nsw i32 %.0318.i.i, %.val395.i
  %i.axo = sext i32 %i.axn to i64
  %i.axp = getelementptr inbounds [8 x i8], ptr %i.anq, i64 %i.axo ; 2 uses
  %i.axq = load double, ptr %i.axp, align 8, !tbaa !11 ; 2 uses
  %i.axr = fcmp olt double %i.axq, 0.000000e+00
  br i1 %i.axr, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %.loopexit1.i.i
  %i.axs = fneg double %i.axq
  store double %i.axs, ptr %i.axp, align 8, !tbaa !11
  %i.axt = mul nsw i32 %.0318.i.i, %i.anr
  %i.axu = sext i32 %i.axt to i64
  %i.axv = getelementptr [8 x i8], ptr %i.ant, i64 %i.axu
  %i.axw = getelementptr i8, ptr %i.axv, i64 8
  call void @dscal_(ptr noundef nonnull %i.k, ptr noundef nonnull %i.c, ptr noundef %i.axw, ptr noundef nonnull %i.d)
  %.pre78.i.i = load i32, ptr %i.k, align 4, !tbaa !8 ; 2 uses
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %.loopexit1.i.i
  %.pre82.i.i = phi i32 [ %.pre78.i.i, %bb.dx ], [ %.pre83.i.i.a, %.loopexit1.i.i ] ; 2 uses
  %i.axx = phi i32 [ %.pre78.i.i, %bb.dx ], [ %i.axl, %.loopexit1.i.i ] ; 7 uses
  %i.axy = icmp slt i32 %.0318.i.i, %i.axx
  br i1 %i.axy, label %bb.dr, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %18 = add nsw i32 %i.axx, -1
  store i32 %18, ptr %i.e, align 4, !tbaa !8
  %.not336.not19.i.i = icmp slt i32 %.031730.i.i, %i.axx
  br i1 %.not336.not19.i.i, label %.lr.ph23.preheader.i.i, label %._crit_edge24.i.i

.lr.ph23.preheader.i.i:                           ; preds = %bb.dz
  %i.axz = sext i32 %.031730.i.i to i64
  %i.aya = sext i32 %i.axx to i64
  br label %.lr.ph23.i.i

.lr.ph23.i.i:                                     ; preds = %bb.ea, %.lr.ph23.preheader.i.i
  %indvars.iv58.i.i = phi i64 [ %i.axz, %.lr.ph23.preheader.i.i ], [ %indvars.iv.next59.i.i, %bb.ea ] ; 2 uses
  %indvars.iv.next59.i.i = add nsw i64 %indvars.iv58.i.i, 1 ; 3 uses
  %gep121.i.i = getelementptr [8 x i8], ptr %invariant.gep110.i.i.a, i64 %indvars.iv.next59.i.i
  %i.ayb = load double, ptr %gep121.i.i, align 8, !tbaa !11
  %i.ayc = fcmp ogt double %i.ayb, 0.000000e+00
  br i1 %i.ayc, label %._crit_edge24.loopexit.split.loop.exit.i.i, label %bb.ea

bb.ea:                                            ; preds = %.lr.ph23.i.i
  %exitcond64.not.i.i = icmp eq i64 %indvars.iv.next59.i.i, %i.aya
  br i1 %exitcond64.not.i.i, label %._crit_edge24.i.i, label %.lr.ph23.i.i, !llvm.loop !70

._crit_edge24.loopexit.split.loop.exit.i.i:       ; preds = %.lr.ph23.i.i
  %indvars61.le.i.i = trunc i64 %indvars.iv58.i.i to i32
  br label %._crit_edge24.i.i

._crit_edge24.i.i:                                ; preds = %bb.ea, %._crit_edge24.loopexit.split.loop.exit.i.i, %bb.dz
  %.1.lcssa.i.i = phi i32 [ %.031730.i.i, %bb.dz ], [ %indvars61.le.i.i, %._crit_edge24.loopexit.split.loop.exit.i.i ], [ %i.axx, %bb.ea ] ; 2 uses
  %indvars.iv.next66.i.i = add nuw nsw i64 %indvars.iv65.i.i, 1 ; 2 uses
  %exitcond69.not.i.i = icmp eq i64 %indvars.iv.next66.i.i, %wide.trip.count68.i.i
  br i1 %exitcond69.not.i.i, label %._crit_edge31.i.i, label %.preheader.i.i, !llvm.loop !71

._crit_edge31.i.i:                                ; preds = %._crit_edge24.i.i, %.preheader3.._crit_edge31_crit_edge.i.i
  %i.ayd = phi i32 [ %.pre79.i.i.a, %.preheader3.._crit_edge31_crit_edge.i.i ], [ %i.axx, %._crit_edge24.i.i ] ; 2 uses
  %.0317.lcssa.i.i = phi i32 [ 1, %.preheader3.._crit_edge31_crit_edge.i.i ], [ %.1.lcssa.i.i, %._crit_edge24.i.i ] ; 2 uses
  %.not330.not33.i.i = icmp slt i32 %.0317.lcssa.i.i, %i.ayd
  br i1 %.not330.not33.i.i, label %iter.check596, label %._crit_edge37.i.i

iter.check596:                                    ; preds = %._crit_edge31.i.i
  %i.aye = shl nsw i32 %.val395.i, 1
  %i.ayf = sext i32 %.0317.lcssa.i.i to i64       ; 8 uses
  %i.ayg = sext i32 %i.aye to i64                 ; 3 uses
  %i.ayh = sext i32 %.val395.i to i64             ; 3 uses
  %wide.trip.count73.i.i = sext i32 %i.ayd to i64 ; 5 uses
  %invariant.gep122.i.i = getelementptr [8 x i8], ptr %i.anq, i64 %i.ayg ; 7 uses
  %invariant.gep126.i.i = getelementptr [8 x i8], ptr %i.anq, i64 %i.ayh ; 5 uses
  %i.ayi = sub nsw i64 %wide.trip.count73.i.i, %i.ayf ; 7 uses
  %min.iters.check567 = icmp ult i64 %i.ayi, 4
  br i1 %min.iters.check567, label %vec.epilog.scalar.ph598.preheader, label %vector.memcheck568

vector.memcheck568:                               ; preds = %iter.check596
  %i.ayj = add nsw i64 %i.ayf, %i.ep              ; 2 uses
  %i.ayk = add nsw i64 %i.ayj, %i.ayh
  %i.ayl = add nsw i64 %i.ayk, %i.anp
  %i.aym = shl nsw i64 %i.ayl, 3
  %i.ayn = getelementptr i8, ptr %14, i64 %i.aym  ; 2 uses
  %i.ayo = add nsw i64 %wide.trip.count73.i.i, %i.ep ; 2 uses
  %i.ayp = add nsw i64 %i.ayo, %i.ayh
  %i.ayq = add nsw i64 %i.ayp, %i.anp
  %i.ayr = shl nsw i64 %i.ayq, 3
  %i.ays = getelementptr i8, ptr %14, i64 %i.ayr  ; 2 uses
  %i.ayt = add nsw i64 %i.ayj, %i.ayg
  %i.ayu = add nsw i64 %i.ayt, %i.anp
  %i.ayv = shl nsw i64 %i.ayu, 3                  ; 2 uses
  %i.ayw = getelementptr i8, ptr %14, i64 %i.ayv
  %i.ayx = getelementptr i8, ptr %i.ayw, i64 -8
  %i.ayy = add nsw i64 %i.ayo, %i.ayg
  %i.ayz = add nsw i64 %i.ayy, %i.anp
  %i.aza = shl nsw i64 %i.ayz, 3                  ; 2 uses
  %i.azb = getelementptr i8, ptr %14, i64 %i.aza
  %i.azc = getelementptr i8, ptr %i.azb, i64 -8
  %i.azd = getelementptr i8, ptr %14, i64 %i.ayv
  %i.aze = getelementptr i8, ptr %14, i64 %i.aza
  %bound0569 = icmp ult ptr %i.ayn, %i.azc
  %bound1570 = icmp ult ptr %i.ayx, %i.ays
  %found.conflict571 = and i1 %bound0569, %bound1570
  %bound0572 = icmp ult ptr %i.ayn, %i.aze
  %bound1573 = icmp ult ptr %i.azd, %i.ays
  %found.conflict574 = and i1 %bound0572, %bound1573
  %conflict.rdx = or i1 %found.conflict571, %found.conflict574
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph598.preheader, label %vector.main.loop.iter.check575

vector.main.loop.iter.check575:                   ; preds = %vector.memcheck568
  %min.iters.check576 = icmp ult i64 %i.ayi, 16
  br i1 %min.iters.check576, label %vec.epilog.ph600, label %vector.ph577

vector.ph577:                                     ; preds = %vector.main.loop.iter.check575
  %i.azf = and i64 %i.ayi, 12
  %n.vec578 = and i64 %i.ayi, -16                 ; 4 uses
  %i.azg = add nsw i64 %n.vec578, %i.ayf
  br label %vector.body579

vector.body579:                                   ; preds = %vector.ph577, %vector.body579
  %index580 = phi i64 [ 0, %vector.ph577 ], [ %index.next593, %vector.body579 ] ; 2 uses
  %i.azh = add i64 %index580, %i.ayf              ; 2 uses
  %i.azi = getelementptr [8 x i8], ptr %invariant.gep122.i.i, i64 %i.azh ; 4 uses
  %i.azj = getelementptr i8, ptr %i.azi, i64 32
  %i.azk = getelementptr i8, ptr %i.azi, i64 64
  %i.azl = getelementptr i8, ptr %i.azi, i64 96
  %wide.load581 = load <4 x double>, ptr %i.azi, align 8, !tbaa !11, !alias.scope !90
  %wide.load582 = load <4 x double>, ptr %i.azj, align 8, !tbaa !11, !alias.scope !90
  %wide.load583 = load <4 x double>, ptr %i.azk, align 8, !tbaa !11, !alias.scope !90
  %wide.load584 = load <4 x double>, ptr %i.azl, align 8, !tbaa !11, !alias.scope !90
  %i.azm = call <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load581)
  %i.azn = call <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load582)
  %i.azo = call <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load583)
  %i.azp = call <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load584)
  %i.azq = add i64 %i.azh, 1                      ; 2 uses
  %i.azr = getelementptr [8 x i8], ptr %invariant.gep122.i.i, i64 %i.azq ; 4 uses
  %i.azs = getelementptr i8, ptr %i.azr, i64 32
  %i.azt = getelementptr i8, ptr %i.azr, i64 64
  %i.azu = getelementptr i8, ptr %i.azr, i64 96
  %wide.load585 = load <4 x double>, ptr %i.azr, align 8, !tbaa !11, !alias.scope !91
  %wide.load586 = load <4 x double>, ptr %i.azs, align 8, !tbaa !11, !alias.scope !91
  %wide.load587 = load <4 x double>, ptr %i.azt, align 8, !tbaa !11, !alias.scope !91
  %wide.load588 = load <4 x double>, ptr %i.azu, align 8, !tbaa !11, !alias.scope !91
  %i.azv = call <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load585)
  %i.azw = call <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load586)
  %i.azx = call <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load587)
  %i.azy = call <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load588)
  %i.azz = fadd <4 x double> %i.azm, %i.azv
  %i.baa = fadd <4 x double> %i.azn, %i.azw
  %i.bab = fadd <4 x double> %i.azo, %i.azx
  %i.bac = fadd <4 x double> %i.azp, %i.azy
  %i.bad = getelementptr [8 x i8], ptr %invariant.gep126.i.i, i64 %i.azq ; 5 uses
  %i.bae = getelementptr i8, ptr %i.bad, i64 32   ; 2 uses
  %i.baf = getelementptr i8, ptr %i.bad, i64 64   ; 2 uses
  %i.bag = getelementptr i8, ptr %i.bad, i64 96   ; 2 uses
  %wide.load589 = load <4 x double>, ptr %i.bad, align 8, !tbaa !11, !alias.scope !92, !noalias !93
  %wide.load590 = load <4 x double>, ptr %i.bae, align 8, !tbaa !11, !alias.scope !92, !noalias !93
  %wide.load591 = load <4 x double>, ptr %i.baf, align 8, !tbaa !11, !alias.scope !92, !noalias !93
  %wide.load592 = load <4 x double>, ptr %i.bag, align 8, !tbaa !11, !alias.scope !92, !noalias !93
  %i.bah = fmul <4 x double> %i.azz, splat (double f0x3CB0000000000000)
  %i.bai = fmul <4 x double> %i.baa, splat (double f0x3CB0000000000000)
  %i.baj = fmul <4 x double> %i.bab, splat (double f0x3CB0000000000000)
  %i.bak = fmul <4 x double> %i.bac, splat (double f0x3CB0000000000000)
  %i.bal = fcmp ole <4 x double> %wide.load589, %i.bah
  %i.bam = fcmp ole <4 x double> %wide.load590, %i.bai
  %i.ban = fcmp ole <4 x double> %wide.load591, %i.baj
  %i.bao = fcmp ole <4 x double> %wide.load592, %i.bak
  call void @llvm.masked.store.v4f64.p0(<4 x double> zeroinitializer, ptr align 8 %i.bad, <4 x i1> %i.bal), !tbaa !11, !alias.scope !92, !noalias !93
  call void @llvm.masked.store.v4f64.p0(<4 x double> zeroinitializer, ptr align 8 %i.bae, <4 x i1> %i.bam), !tbaa !11, !alias.scope !92, !noalias !93
  call void @llvm.masked.store.v4f64.p0(<4 x double> zeroinitializer, ptr align 8 %i.baf, <4 x i1> %i.ban), !tbaa !11, !alias.scope !92, !noalias !93
  call void @llvm.masked.store.v4f64.p0(<4 x double> zeroinitializer, ptr align 8 %i.bag, <4 x i1> %i.bao), !tbaa !11, !alias.scope !92, !noalias !93
  %index.next593 = add nuw i64 %index580, 16      ; 2 uses
  %i.bap = icmp eq i64 %index.next593, %n.vec578
  br i1 %i.bap, label %middle.block594, label %vector.body579, !llvm.loop !76

middle.block594:                                  ; preds = %vector.body579
  %cmp.n595 = icmp eq i64 %i.ayi, %n.vec578
  br i1 %cmp.n595, label %._crit_edge37.i.i, label %vec.epilog.iter.check597

vec.epilog.iter.check597:                         ; preds = %middle.block594
  %min.epilog.iters.check599 = icmp eq i64 %i.azf, 0
  br i1 %min.epilog.iters.check599, label %vec.epilog.scalar.ph598.preheader, label %vec.epilog.ph600, !prof !17

vec.epilog.ph600:                                 ; preds = %vector.main.loop.iter.check575, %vec.epilog.iter.check597
  %vec.epilog.resume.val601 = phi i64 [ %n.vec578, %vec.epilog.iter.check597 ], [ 0, %vector.main.loop.iter.check575 ]
  %n.vec602 = and i64 %i.ayi, -4                  ; 3 uses
  %i.baq = add nsw i64 %n.vec602, %i.ayf
  br label %vec.epilog.vector.body603

vec.epilog.vector.body603:                        ; preds = %vec.epilog.vector.body603, %vec.epilog.ph600
  %index604 = phi i64 [ %vec.epilog.resume.val601, %vec.epilog.ph600 ], [ %index.next608, %vec.epilog.vector.body603 ] ; 2 uses
  %i.bar = add i64 %index604, %i.ayf              ; 2 uses
  %i.bas = getelementptr [8 x i8], ptr %invariant.gep122.i.i, i64 %i.bar
  %wide.load605 = load <4 x double>, ptr %i.bas, align 8, !tbaa !11, !alias.scope !90
  %i.bat = call <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load605)
  %i.bau = add i64 %i.bar, 1                      ; 2 uses
  %i.bav = getelementptr [8 x i8], ptr %invariant.gep122.i.i, i64 %i.bau
  %wide.load606 = load <4 x double>, ptr %i.bav, align 8, !tbaa !11, !alias.scope !91
  %i.baw = call <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load606)
  %i.bax = fadd <4 x double> %i.bat, %i.baw
  %i.bay = getelementptr [8 x i8], ptr %invariant.gep126.i.i, i64 %i.bau ; 2 uses
  %wide.load607 = load <4 x double>, ptr %i.bay, align 8, !tbaa !11, !alias.scope !92, !noalias !93
  %i.baz = fmul <4 x double> %i.bax, splat (double f0x3CB0000000000000)
  %i.bba = fcmp ole <4 x double> %wide.load607, %i.baz
  call void @llvm.masked.store.v4f64.p0(<4 x double> zeroinitializer, ptr align 8 %i.bay, <4 x i1> %i.bba), !tbaa !11, !alias.scope !92, !noalias !93
  %index.next608 = add nuw i64 %index604, 4       ; 2 uses
  %i.bbb = icmp eq i64 %index.next608, %n.vec602
  br i1 %i.bbb, label %vec.epilog.middle.block609, label %vec.epilog.vector.body603, !llvm.loop !77

vec.epilog.middle.block609:                       ; preds = %vec.epilog.vector.body603
  %cmp.n610 = icmp eq i64 %i.ayi, %n.vec602
  br i1 %cmp.n610, label %._crit_edge37.i.i, label %vec.epilog.scalar.ph598.preheader

vec.epilog.scalar.ph598.preheader:                ; preds = %iter.check596, %vector.memcheck568, %vec.epilog.iter.check597, %vec.epilog.middle.block609
  %indvars.iv70.i.i.ph = phi i64 [ %i.ayf, %iter.check596 ], [ %i.ayf, %vector.memcheck568 ], [ %i.azg, %vec.epilog.iter.check597 ], [ %i.baq, %vec.epilog.middle.block609 ] ; 5 uses
  %i.bbc = sub nsw i64 %wide.trip.count73.i.i, %indvars.iv70.i.i.ph
  %xtraiter785 = and i64 %i.bbc, 1
  %lcmp.mod786.not = icmp eq i64 %xtraiter785, 0
  br i1 %lcmp.mod786.not, label %vec.epilog.scalar.ph598.prol.loopexit, label %vec.epilog.scalar.ph598.prol

vec.epilog.scalar.ph598.prol:                     ; preds = %vec.epilog.scalar.ph598.preheader
  %gep123.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep122.i.i, i64 %indvars.iv70.i.i.ph
  %indvars.iv.next71.i.i.prol = add nsw i64 %indvars.iv70.i.i.ph, 1 ; 3 uses
  %i.bbd = load <2 x double>, ptr %gep123.i.i.prol, align 8, !tbaa !11
  %i.bbe = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.bbd) ; 2 uses
  %shift704.prol = shufflevector <2 x double> %i.bbe, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop705.prol = fadd <2 x double> %i.bbe, %shift704.prol
  %i.bbf = extractelement <2 x double> %foldExtExtBinop705.prol, i64 0
  %gep127.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep126.i.i, i64 %indvars.iv.next71.i.i.prol ; 2 uses
  %i.bbg = load double, ptr %gep127.i.i.prol, align 8, !tbaa !11
  %i.bbh = fmul double %i.bbf, f0x3CB0000000000000
  %i.bbi = fcmp ugt double %i.bbg, %i.bbh
  br i1 %i.bbi, label %vec.epilog.scalar.ph598.prol.loopexit, label %bb.eb

bb.eb:                                            ; preds = %vec.epilog.scalar.ph598.prol
  store double 0.000000e+00, ptr %gep127.i.i.prol, align 8, !tbaa !11
  br label %vec.epilog.scalar.ph598.prol.loopexit

vec.epilog.scalar.ph598.prol.loopexit:            ; preds = %vec.epilog.scalar.ph598.prol, %bb.eb, %vec.epilog.scalar.ph598.preheader
  %indvars.iv70.i.i.unr = phi i64 [ %indvars.iv70.i.i.ph, %vec.epilog.scalar.ph598.preheader ], [ %indvars.iv.next71.i.i.prol, %bb.eb ], [ %indvars.iv.next71.i.i.prol, %vec.epilog.scalar.ph598.prol ]
  %i.bbj = add nsw i64 %wide.trip.count73.i.i, -1
  %i.bbk = icmp eq i64 %indvars.iv70.i.i.ph, %i.bbj
  br i1 %i.bbk, label %._crit_edge37.i.i, label %vec.epilog.scalar.ph598

vec.epilog.scalar.ph598:                          ; preds = %vec.epilog.scalar.ph598.prol.loopexit, %bb.ee
  %indvars.iv70.i.i = phi i64 [ %indvars.iv.next71.i.i.1, %bb.ee ], [ %indvars.iv70.i.i.unr, %vec.epilog.scalar.ph598.prol.loopexit ] ; 3 uses
  %gep123.i.i = getelementptr [8 x i8], ptr %invariant.gep122.i.i, i64 %indvars.iv70.i.i
  %indvars.iv.next71.i.i = add nsw i64 %indvars.iv70.i.i, 1 ; 2 uses
  %i.bbl = load <2 x double>, ptr %gep123.i.i, align 8, !tbaa !11
  %i.bbm = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.bbl) ; 2 uses
  %shift704 = shufflevector <2 x double> %i.bbm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop705 = fadd <2 x double> %i.bbm, %shift704
  %i.bbn = extractelement <2 x double> %foldExtExtBinop705, i64 0
  %gep127.i.i = getelementptr [8 x i8], ptr %invariant.gep126.i.i, i64 %indvars.iv.next71.i.i ; 2 uses
  %i.bbo = load double, ptr %gep127.i.i, align 8, !tbaa !11
  %i.bbp = fmul double %i.bbn, f0x3CB0000000000000
  %i.bbq = fcmp ugt double %i.bbo, %i.bbp
  br i1 %i.bbq, label %vec.epilog.scalar.ph598.1, label %bb.ec

bb.ec:                                            ; preds = %vec.epilog.scalar.ph598
  store double 0.000000e+00, ptr %gep127.i.i, align 8, !tbaa !11
  br label %vec.epilog.scalar.ph598.1

vec.epilog.scalar.ph598.1:                        ; preds = %bb.ec, %vec.epilog.scalar.ph598
  %gep123.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep122.i.i, i64 %indvars.iv.next71.i.i
  %indvars.iv.next71.i.i.1 = add nsw i64 %indvars.iv70.i.i, 2 ; 3 uses
  %i.bbr = load <2 x double>, ptr %gep123.i.i.1, align 8, !tbaa !11
  %i.bbs = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.bbr) ; 2 uses
  %shift704.1 = shufflevector <2 x double> %i.bbs, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop705.1 = fadd <2 x double> %i.bbs, %shift704.1
  %i.bbt = extractelement <2 x double> %foldExtExtBinop705.1, i64 0
end_hunk_1
begin_hunk_2_@_ZL7dsortr_PKcPiS1_PdS2_:sub_0
  br i1 %i.he, label %._crit_edge.split42.1, label %.lr.ph39.1

._crit_edge.split42.1:                            ; preds = %bb.p, %.lr.ph39.1
  %i.hf = add nsw i32 %.217244, 2                 ; 2 uses
  %exitcond89.not.1 = icmp eq i32 %i.hf, %.0.val1
  br i1 %exitcond89.not.1, label %._crit_edge46.split, label %.lr.ph39.preheader, !llvm.loop !165

._crit_edge46.split:                              ; preds = %.lr.ph39.preheader.prol.loopexit, %._crit_edge.split42.1, %.preheader22
  %i.hg = sdiv i32 %.247, 2
  %.247.off = add nsw i32 %.247, 1
  %i.hh = icmp ult i32 %.247.off, 3
  br i1 %i.hh, label %.loopexit, label %.preheader22

.tail11:                                          ; preds = %.tail7
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.hj = load i8, ptr %i.hi, align 1
  %i.hk = icmp ne i8 %i.hj, 77
  %.off = add i32 %.0.val1, 1
  %i.hl = icmp ult i32 %.off, 3
  %or.cond = select i1 %i.hk, i1 true, i1 %i.hl
  br i1 %or.cond, label %.loopexit, label %.preheader26

.preheader26:                                     ; preds = %.tail11
  %.not189 = icmp eq i32 %.0.val.fr, 0
  br i1 %.not189, label %.preheader26.split.us, label %.preheader26.split

.preheader26.split.us:                            ; preds = %.preheader26, %._crit_edge35.split.us.us
  %.3.us = phi i32 [ %i.iv, %._crit_edge35.split.us.us ], [ %i.a, %.preheader26 ] ; 13 uses
  %.not188.not32.us = icmp slt i32 %.3.us, %.0.val1
  br i1 %.not188.not32.us, label %.lr.ph.us.us.preheader.preheader, label %._crit_edge35.split.us.us

.lr.ph.us.us.preheader.preheader:                 ; preds = %.preheader26.split.us
  %i.hm = sub i32 %.0.val1, %.3.us
  %.neg = add nsw i32 %.3.us, 1
  %xtraiter = and i32 %i.hm, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.us.us.preheader.prol.loopexit, label %.lr.ph.us.us.prol

.lr.ph.us.us.prol:                                ; preds = %.lr.ph.us.us.preheader.preheader, %bb.q
  %.316930.us.us.us.prol = phi i32 [ %.3169.us.us.us.prol, %bb.q ], [ 0, %.lr.ph.us.us.preheader.preheader ] ; 3 uses
  %.3173.pn29.us.us.us.prol = phi i32 [ %.316930.us.us.us.prol, %bb.q ], [ %.3.us, %.lr.ph.us.us.preheader.preheader ]
  %i.hn = zext nneg i32 %.316930.us.us.us.prol to i64
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.hn ; 2 uses
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !11 ; 2 uses
  %i.hq = tail call noundef double @llvm.fabs.f64(double %i.hp)
  %i.hr = sext i32 %.3173.pn29.us.us.us.prol to i64
  %i.hs = getelementptr inbounds [8 x i8], ptr %1, i64 %i.hr ; 2 uses
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !11 ; 2 uses
  %i.hu = tail call noundef double @llvm.fabs.f64(double %i.ht)
  %i.hv = fcmp ogt double %i.hq, %i.hu
  br i1 %i.hv, label %bb.q, label %._crit_edge31.split.us.us.us.prol

bb.q:                                             ; preds = %.lr.ph.us.us.prol
  store double %i.ht, ptr %i.ho, align 8, !tbaa !11
  store double %i.hp, ptr %i.hs, align 8, !tbaa !11
  %.3169.us.us.us.prol = sub nsw i32 %.316930.us.us.us.prol, %.3.us ; 2 uses
  %i.hw = icmp slt i32 %.3169.us.us.us.prol, 0
  br i1 %i.hw, label %._crit_edge31.split.us.us.us.prol, label %.lr.ph.us.us.prol

._crit_edge31.split.us.us.us.prol:                ; preds = %bb.q, %.lr.ph.us.us.prol
  %i.hx = add nsw i32 %.3.us, 1
  br label %.lr.ph.us.us.preheader.prol.loopexit

.lr.ph.us.us.preheader.prol.loopexit:             ; preds = %._crit_edge31.split.us.us.us.prol, %.lr.ph.us.us.preheader.preheader
  %.317333.us.us.unr = phi i32 [ %.3.us, %.lr.ph.us.us.preheader.preheader ], [ %i.hx, %._crit_edge31.split.us.us.us.prol ]
  %i.hy = icmp eq i32 %.0.val1, %.neg
  br i1 %i.hy, label %._crit_edge35.split.us.us, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph.us.us.preheader.prol.loopexit, %._crit_edge31.split.us.us.us.1
  %.317333.us.us = phi i32 [ %i.iu, %._crit_edge31.split.us.us.us.1 ], [ %.317333.us.us.unr, %.lr.ph.us.us.preheader.prol.loopexit ] ; 4 uses
  %.316928.us.us = sub nsw i32 %.317333.us.us, %.3.us
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %bb.r
  %.316930.us.us.us = phi i32 [ %.3169.us.us.us, %bb.r ], [ %.316928.us.us, %.lr.ph.us.us.preheader ] ; 3 uses
  %.3173.pn29.us.us.us = phi i32 [ %.316930.us.us.us, %bb.r ], [ %.317333.us.us, %.lr.ph.us.us.preheader ]
  %i.hz = zext nneg i32 %.316930.us.us.us to i64
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.hz ; 2 uses
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !11 ; 2 uses
  %i.ic = tail call noundef double @llvm.fabs.f64(double %i.ib)
  %i.id = sext i32 %.3173.pn29.us.us.us to i64
  %i.ie = getelementptr inbounds [8 x i8], ptr %1, i64 %i.id ; 2 uses
  %i.if = load double, ptr %i.ie, align 8, !tbaa !11 ; 2 uses
  %i.ig = tail call noundef double @llvm.fabs.f64(double %i.if)
  %i.ih = fcmp ogt double %i.ic, %i.ig
  br i1 %i.ih, label %bb.r, label %._crit_edge31.split.us.us.us

bb.r:                                             ; preds = %.lr.ph.us.us
  store double %i.if, ptr %i.ia, align 8, !tbaa !11
  store double %i.ib, ptr %i.ie, align 8, !tbaa !11
  %.3169.us.us.us = sub nsw i32 %.316930.us.us.us, %.3.us ; 2 uses
  %i.ii = icmp slt i32 %.3169.us.us.us, 0
  br i1 %i.ii, label %._crit_edge31.split.us.us.us, label %.lr.ph.us.us

._crit_edge31.split.us.us.us:                     ; preds = %bb.r, %.lr.ph.us.us
  %i.ij = add nsw i32 %.317333.us.us, 1           ; 2 uses
  %.316928.us.us.1 = sub nsw i32 %i.ij, %.3.us
  br label %.lr.ph.us.us.1

.lr.ph.us.us.1:                                   ; preds = %bb.s, %._crit_edge31.split.us.us.us
  %.316930.us.us.us.1 = phi i32 [ %.3169.us.us.us.1, %bb.s ], [ %.316928.us.us.1, %._crit_edge31.split.us.us.us ] ; 3 uses
  %.3173.pn29.us.us.us.1 = phi i32 [ %.316930.us.us.us.1, %bb.s ], [ %i.ij, %._crit_edge31.split.us.us.us ]
  %i.ik = zext nneg i32 %.316930.us.us.us.1 to i64
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ik ; 2 uses
  %i.im = load double, ptr %i.il, align 8, !tbaa !11 ; 2 uses
  %i.in = tail call noundef double @llvm.fabs.f64(double %i.im)
  %i.io = sext i32 %.3173.pn29.us.us.us.1 to i64
  %i.ip = getelementptr inbounds [8 x i8], ptr %1, i64 %i.io ; 2 uses
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !11 ; 2 uses
  %i.ir = tail call noundef double @llvm.fabs.f64(double %i.iq)
  %i.is = fcmp ogt double %i.in, %i.ir
  br i1 %i.is, label %bb.s, label %._crit_edge31.split.us.us.us.1

bb.s:                                             ; preds = %.lr.ph.us.us.1
  store double %i.iq, ptr %i.il, align 8, !tbaa !11
  store double %i.im, ptr %i.ip, align 8, !tbaa !11
  %.3169.us.us.us.1 = sub nsw i32 %.316930.us.us.us.1, %.3.us ; 2 uses
  %i.it = icmp slt i32 %.3169.us.us.us.1, 0
  br i1 %i.it, label %._crit_edge31.split.us.us.us.1, label %.lr.ph.us.us.1

._crit_edge31.split.us.us.us.1:                   ; preds = %bb.s, %.lr.ph.us.us.1
  %i.iu = add nsw i32 %.317333.us.us, 2           ; 2 uses
  %exitcond88.not.1 = icmp eq i32 %i.iu, %.0.val1
  br i1 %exitcond88.not.1, label %._crit_edge35.split.us.us, label %.lr.ph.us.us.preheader, !llvm.loop !166

._crit_edge35.split.us.us:                        ; preds = %.lr.ph.us.us.preheader.prol.loopexit, %._crit_edge31.split.us.us.us.1, %.preheader26.split.us
  %i.iv = sdiv i32 %.3.us, 2
  %.3.off.us = add nsw i32 %.3.us, 1
  %.old1.us = icmp ult i32 %.3.off.us, 3
  br i1 %.old1.us, label %.loopexit, label %.preheader26.split.us

.preheader26.split:                               ; preds = %.preheader26, %._crit_edge35.split
  %.3 = phi i32 [ %i.jl, %._crit_edge35.split ], [ %i.a, %.preheader26 ] ; 6 uses
  %.not188.not32 = icmp slt i32 %.3, %.0.val1
  br i1 %.not188.not32, label %.lr.ph.preheader, label %._crit_edge35.split

.lr.ph.preheader:                                 ; preds = %.preheader26.split, %._crit_edge.split
  %.317333 = phi i32 [ %i.jk, %._crit_edge.split ], [ %.3, %.preheader26.split ] ; 3 uses
  %.316928 = sub nsw i32 %.317333, %.3
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.t
  %.316930 = phi i32 [ %.3169, %bb.t ], [ %.316928, %.lr.ph.preheader ] ; 3 uses
  %.3173.pn29 = phi i32 [ %.316930, %bb.t ], [ %.317333, %.lr.ph.preheader ]
  %i.iw = zext nneg i32 %.316930 to i64           ; 2 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.iw ; 2 uses
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !11 ; 2 uses
  %i.iz = tail call noundef double @llvm.fabs.f64(double %i.iy)
  %i.ja = sext i32 %.3173.pn29 to i64             ; 2 uses
  %i.jb = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ja ; 2 uses
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !11 ; 2 uses
  %i.jd = tail call noundef double @llvm.fabs.f64(double %i.jc)
  %i.je = fcmp ogt double %i.iz, %i.jd
  br i1 %i.je, label %bb.t, label %._crit_edge.split

bb.t:                                             ; preds = %.lr.ph
  store double %i.jc, ptr %i.ix, align 8, !tbaa !11
  store double %i.iy, ptr %i.jb, align 8, !tbaa !11
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.iw ; 2 uses
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !11
  %i.jh = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ja ; 2 uses
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !11
  store double %i.ji, ptr %i.jf, align 8, !tbaa !11
  store double %i.jg, ptr %i.jh, align 8, !tbaa !11
  %.3169 = sub nsw i32 %.316930, %.3              ; 2 uses
  %i.jj = icmp slt i32 %.3169, 0
  br i1 %i.jj, label %._crit_edge.split, label %.lr.ph

._crit_edge.split:                                ; preds = %.lr.ph, %bb.t
  %i.jk = add nsw i32 %.317333, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.jk, %.0.val1
  br i1 %exitcond.not, label %._crit_edge35.split, label %.lr.ph.preheader, !llvm.loop !166

._crit_edge35.split:                              ; preds = %._crit_edge.split, %.preheader26.split
  %i.jl = sdiv i32 %.3, 2
  %.3.off = add nsw i32 %.3, 1
  %.old1 = icmp ult i32 %.3.off, 3
  br i1 %.old1, label %.loopexit, label %.preheader26.split

.loopexit:                                        ; preds = %._crit_edge35.split, %._crit_edge35.split.us.us, %._crit_edge46.split, %._crit_edge46.split.us.us, %._crit_edge59.split, %._crit_edge59.split.us.us, %._crit_edge72.split, %._crit_edge72.split.us.us, %sub_0, %.tail3, %.preheader23, %.preheader16, %.tail11
  ret void
}

declare void @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dgeqr2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dorm2r_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlacpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dger_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_Z7ssaupd_PiPKcS_S1_S_PfS2_S_S2_S_S_S_S2_S_S2_S_S_(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7, ptr noundef %8, ptr noundef %9, ptr nofree noundef captures(none) %10, ptr nofree noundef writeonly captures(none) %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr nofree noundef readonly captures(none) %15, ptr nofree noundef captures(none) %16) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 6 uses
  %i.b = alloca float, align 4                    ; 6 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca i32, align 4                      ; 15 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca float, align 4                    ; 7 uses
  %i.g = alloca float, align 4                    ; 6 uses
  %i.h = alloca float, align 4                    ; 6 uses
  %i.i = alloca float, align 4                    ; 6 uses
  %i.j = alloca float, align 4                    ; 7 uses
  %i.k = alloca i32, align 4                      ; 15 uses
  %i.l = alloca i32, align 4                      ; 21 uses
  %i.m = alloca i32, align 4                      ; 13 uses
  %i.n = alloca i32, align 4                      ; 13 uses
  %i.o = alloca float, align 4                    ; 7 uses
  %i.p = alloca float, align 4                    ; 16 uses
  %i.q = alloca float, align 4                    ; 10 uses
  %i.r = alloca float, align 4                    ; 20 uses
  %i.s = alloca float, align 4                    ; 14 uses
  %i.t = alloca float, align 4                    ; 16 uses
  %i.u = alloca i32, align 4                      ; 8 uses
  %i.v = alloca float, align 4                    ; 8 uses
  %i.w = alloca float, align 4                    ; 8 uses
  %i.x = alloca float, align 4                    ; 8 uses
  %i.y = alloca float, align 4                    ; 8 uses
  %i.z = alloca float, align 4                    ; 9 uses
  %i.aa = alloca i32, align 4                     ; 8 uses
  %i.ab = alloca i32, align 4                     ; 5 uses
  %i.ac = alloca i32, align 4                     ; 26 uses
  %i.ad = alloca i32, align 4                     ; 4 uses
  %i.ae = alloca i32, align 4                     ; 8 uses
  %i.af = alloca i32, align 4                     ; 14 uses
  %i.ag = alloca [2 x i8], align 2                ; 10 uses
  %i.ah = getelementptr i8, ptr %14, i64 -4       ; 5 uses
  %i.ai = load i32, ptr %0, align 4, !tbaa !8
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.b, label %._crit_edge300

._crit_edge300:                                   ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %13, i64 24
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !8
  br label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 7 uses
  store i32 0, ptr %i.ak, align 4, !tbaa !8
  %i.al = load i32, ptr %10, align 4, !tbaa !8    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 %i.al, ptr %i.am, align 4, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !8  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 36
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !8  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 44 ; 2 uses
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 20
  store i32 1, ptr %i.at, align 4, !tbaa !8
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.av = load i32, ptr %i.au, align 4, !tbaa !8  ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !8
  %i.ax = load i32, ptr %2, align 4, !tbaa !8     ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 1
  br i1 %i.ay, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.az = load i32, ptr %4, align 4, !tbaa !8     ; 2 uses
  %i.ba = icmp slt i32 %i.az, 1
  br i1 %i.ba, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = load i32, ptr %7, align 4, !tbaa !8     ; 2 uses
  %.not = icmp sle i32 %i.bb, %i.az
  %i.bc = icmp sgt i32 %i.bb, %i.ax
  %or.cond = or i1 %.not, %i.bc
  br i1 %or.cond, label %.sink.split, label %bb.e

.sink.split:                                      ; preds = %bb.d, %bb.c, %bb.b
  %.sink = phi i32 [ -1, %bb.b ], [ -2, %bb.c ], [ -3, %bb.d ] ; 2 uses
  store i32 %.sink, ptr %i.ak, align 4, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d
  %.pr299 = phi i32 [ 0, %bb.d ], [ %.sink, %.sink.split ]
  %i.bd = load i32, ptr %7, align 4, !tbaa !8
  %i.be = load i32, ptr %4, align 4, !tbaa !8
  %i.bf = sub nsw i32 %i.bd, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 2 uses
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !8
  %i.bh = icmp slt i32 %i.ao, 1
  br i1 %i.bh, label %bb.f, label %sub_0

bb.f:                                             ; preds = %bb.e
  store i32 -4, ptr %i.ak, align 4, !tbaa !8
  br label %sub_0

sub_0:                                            ; preds = %bb.e, %bb.f
  %.pr298 = phi i32 [ %.pr299, %bb.e ], [ -4, %bb.f ] ; 5 uses
  %i.bi = load i8, ptr %3, align 1
  switch i8 %i.bi, label %.tail195.thread [
    i8 76, label %.tail
    i8 83, label %.tail183
    i8 66, label %.tail195
  ]

.tail:                                            ; preds = %sub_0
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = icmp eq i8 %i.bk, 77
  br i1 %i.bl, label %bb.g, label %.tail187

.tail183:                                         ; preds = %sub_0
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = icmp eq i8 %i.bn, 77
  br i1 %i.bo, label %bb.g, label %.tail191

.tail187:                                         ; preds = %.tail
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = icmp eq i8 %i.bq, 65
  br i1 %i.br, label %bb.g, label %.tail195.thread

.tail191:                                         ; preds = %.tail183
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = icmp eq i8 %i.bt, 65
  br i1 %i.bu, label %bb.g, label %.tail195.thread

.tail195:                                         ; preds = %sub_0
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = icmp eq i8 %i.bw, 69
  br i1 %i.bx, label %bb.g, label %.tail195.thread

.tail195.thread:                                  ; preds = %sub_0, %.tail187, %.tail191, %.tail195
  store i32 -5, ptr %i.ak, align 4, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %.tail195.thread, %.tail195, %.tail191, %.tail187, %.tail183, %.tail
  %.pr297 = phi i32 [ -5, %.tail195.thread ], [ %.pr298, %.tail195 ], [ %.pr298, %.tail191 ], [ %.pr298, %.tail187 ], [ %.pr298, %.tail183 ], [ %.pr298, %.tail ] ; 2 uses
  %i.by = load i8, ptr %1, align 1, !tbaa !9
  switch i8 %i.by, label %bb.h [
    i8 73, label %bb.i
    i8 71, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  store i32 -6, ptr %i.ak, align 4, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.g, %bb.h
  %.pr296 = phi i32 [ %.pr297, %bb.g ], [ %.pr297, %bb.g ], [ -6, %bb.h ]
  %i.bz = load i32, ptr %7, align 4, !tbaa !8     ; 2 uses
  %i.ca = load i32, ptr %15, align 4, !tbaa !8
  %i.cb = add i32 %i.bz, 8
  %i.cc = mul i32 %i.cb, %i.bz
  %i.cd = icmp slt i32 %i.ca, %i.cc
  br i1 %i.cd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 -7, ptr %i.ak, align 4, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pr = phi i32 [ -7, %bb.j ], [ %.pr296, %bb.i ] ; 2 uses
  %i.ce = add i32 %i.av, -6
  %or.cond176 = icmp ult i32 %i.ce, -5
  br i1 %or.cond176, label %.thread.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cf = icmp eq i32 %i.av, 1
  br i1 %i.cf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cg = load i8, ptr %1, align 1, !tbaa !9
  %i.ch = icmp eq i8 %i.cg, 71
  br i1 %i.ch, label %.thread.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %or.cond177 = icmp ugt i32 %i.al, 1
  br i1 %or.cond177, label %.thread.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = load i32, ptr %4, align 4, !tbaa !8
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %sub_0200, label %.tail199.thread

sub_0200:                                         ; preds = %bb.o
  %i.ck = load i8, ptr %3, align 1
  %.not253 = icmp eq i8 %i.ck, 66
  br i1 %.not253, label %.tail199, label %.tail199.thread

.tail199:                                         ; preds = %sub_0200
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = icmp eq i8 %i.cm, 69
  br i1 %i.cn, label %.thread.sink.split, label %.tail199.thread

.tail199.thread:                                  ; preds = %sub_0200, %bb.o, %.tail199
  %.not173 = icmp eq i32 %.pr, 0
  br i1 %.not173, label %bb.p, label %.thread

end_hunk_2
begin_hunk_3_@_Z7ssaupd_PiPKcS_S1_S_PfS2_S_S2_S_S_S_S2_S_S2_S_S_:bb.a
  %i.arm = call i32 @llvm.smin.i32(i32 %i.ark, i32 %i.arl) ; 6 uses
  %.not3327.i.i = icmp slt i32 %i.arm, 1
  br i1 %.not3327.i.i, label %._crit_edge.i.i, label %iter.check575

iter.check575:                                    ; preds = %bb.du
  %i.arn = mul nsw i32 %.0.i.i, %i.aoj
  %i.aro = mul nsw i32 %i.aqh, %i.aoj
  %i.arp = fneg float %i.aqo                      ; 7 uses
  %i.arq = sext i32 %i.arn to i64                 ; 2 uses
  %i.arr = sext i32 %i.aro to i64                 ; 2 uses
  %invariant.gep102.i.i = getelementptr [4 x i8], ptr %i.aol, i64 %i.arq ; 7 uses
  %invariant.gep104.i.i = getelementptr [4 x i8], ptr %i.aol, i64 %i.arr ; 7 uses
  %narrow.i = add nuw i32 %i.arm, 1               ; 5 uses
  %i.ars = zext i32 %narrow.i to i64              ; 3 uses
  %i.art = zext nneg i32 %i.arm to i64            ; 5 uses
  %min.iters.check551 = icmp ult i32 %i.arm, 4
  br i1 %min.iters.check551, label %vec.epilog.scalar.ph577.preheader, label %vector.memcheck552

vector.memcheck552:                               ; preds = %iter.check575
  %i.aru = shl nsw i64 %i.arr, 2                  ; 2 uses
  %i.arv = getelementptr i8, ptr %scevgep, i64 %i.aru
  %i.arw = shl nuw nsw i64 %i.ars, 2              ; 2 uses
  %i.arx = getelementptr i8, ptr %i.aol, i64 %i.aru
  %i.ary = getelementptr i8, ptr %i.arx, i64 %i.arw
  %i.arz = shl nsw i64 %i.arq, 2                  ; 2 uses
  %i.asa = getelementptr i8, ptr %scevgep, i64 %i.arz
  %i.asb = getelementptr i8, ptr %i.aol, i64 %i.arz
  %i.asc = getelementptr i8, ptr %i.asb, i64 %i.arw
  %bound0553 = icmp ult ptr %i.arv, %i.asc
  %bound1554 = icmp ult ptr %i.asa, %i.ary
  %found.conflict555 = and i1 %bound0553, %bound1554
  br i1 %found.conflict555, label %vec.epilog.scalar.ph577.preheader, label %vector.main.loop.iter.check556

vector.main.loop.iter.check556:                   ; preds = %vector.memcheck552
  %min.iters.check557 = icmp ult i32 %i.arm, 16
  br i1 %min.iters.check557, label %vec.epilog.ph579, label %vector.ph558

vector.ph558:                                     ; preds = %vector.main.loop.iter.check556
  %i.asd = and i64 %i.art, 12
  %n.vec559 = and i64 %i.art, 2147483632          ; 4 uses
  %i.ase = or disjoint i64 %n.vec559, 1
  %broadcast.splatinsert560 = insertelement <8 x float> poison, float %i.arp, i64 0
  %broadcast.splat561 = shufflevector <8 x float> %broadcast.splatinsert560, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert562 = insertelement <8 x float> poison, float %i.aqo, i64 0
  %broadcast.splat563 = shufflevector <8 x float> %broadcast.splatinsert562, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert564 = insertelement <8 x float> poison, float %i.aqm, i64 0
  %broadcast.splat565 = shufflevector <8 x float> %broadcast.splatinsert564, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body566

vector.body566:                                   ; preds = %vector.ph558, %vector.body566
  %index567 = phi i64 [ 0, %vector.ph558 ], [ %index.next572, %vector.body566 ] ; 2 uses
  %i.asf = or disjoint i64 %index567, 1           ; 2 uses
  %i.asg = getelementptr [4 x i8], ptr %invariant.gep102.i.i, i64 %i.asf ; 3 uses
  %i.ash = getelementptr i8, ptr %i.asg, i64 32   ; 2 uses
  %wide.load568 = load <8 x float>, ptr %i.asg, align 4, !tbaa !19, !alias.scope !233 ; 2 uses
  %wide.load569 = load <8 x float>, ptr %i.ash, align 4, !tbaa !19, !alias.scope !233 ; 2 uses
  %i.asi = getelementptr [4 x i8], ptr %invariant.gep104.i.i, i64 %i.asf ; 3 uses
  %i.asj = getelementptr i8, ptr %i.asi, i64 32   ; 2 uses
  %wide.load570 = load <8 x float>, ptr %i.asi, align 4, !tbaa !19, !alias.scope !234, !noalias !233 ; 2 uses
  %wide.load571 = load <8 x float>, ptr %i.asj, align 4, !tbaa !19, !alias.scope !234, !noalias !233 ; 2 uses
  %i.ask = fmul <8 x float> %broadcast.splat563, %wide.load570
  %i.asl = fmul <8 x float> %broadcast.splat563, %wide.load571
  %i.asm = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat565, <8 x float> %wide.load568, <8 x float> %i.ask)
  %i.asn = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat565, <8 x float> %wide.load569, <8 x float> %i.asl)
  %i.aso = fmul <8 x float> %broadcast.splat565, %wide.load570
  %i.asp = fmul <8 x float> %broadcast.splat565, %wide.load571
  %i.asq = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat561, <8 x float> %wide.load568, <8 x float> %i.aso)
  %i.asr = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat561, <8 x float> %wide.load569, <8 x float> %i.asp)
  store <8 x float> %i.asq, ptr %i.asi, align 4, !tbaa !19, !alias.scope !234, !noalias !233
  store <8 x float> %i.asr, ptr %i.asj, align 4, !tbaa !19, !alias.scope !234, !noalias !233
  store <8 x float> %i.asm, ptr %i.asg, align 4, !tbaa !19, !alias.scope !233
  store <8 x float> %i.asn, ptr %i.ash, align 4, !tbaa !19, !alias.scope !233
  %index.next572 = add nuw i64 %index567, 16      ; 2 uses
  %i.ass = icmp eq i64 %index.next572, %n.vec559
  br i1 %i.ass, label %middle.block573, label %vector.body566, !llvm.loop !205

middle.block573:                                  ; preds = %vector.body566
  %cmp.n574 = icmp eq i64 %n.vec559, %i.art
  br i1 %cmp.n574, label %._crit_edge.i.i, label %vec.epilog.iter.check576

vec.epilog.iter.check576:                         ; preds = %middle.block573
  %min.epilog.iters.check578 = icmp eq i64 %i.asd, 0
  br i1 %min.epilog.iters.check578, label %vec.epilog.scalar.ph577.preheader, label %vec.epilog.ph579, !prof !17

vec.epilog.ph579:                                 ; preds = %vector.main.loop.iter.check556, %vec.epilog.iter.check576
  %vec.epilog.resume.val580 = phi i64 [ %n.vec559, %vec.epilog.iter.check576 ], [ 0, %vector.main.loop.iter.check556 ]
  %n.vec581 = and i64 %i.art, 2147483644          ; 3 uses
  %i.ast = or disjoint i64 %n.vec581, 1
  %broadcast.splatinsert582 = insertelement <4 x float> poison, float %i.arp, i64 0
  %broadcast.splat583 = shufflevector <4 x float> %broadcast.splatinsert582, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert584 = insertelement <4 x float> poison, float %i.aqo, i64 0
  %broadcast.splat585 = shufflevector <4 x float> %broadcast.splatinsert584, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert586 = insertelement <4 x float> poison, float %i.aqm, i64 0
  %broadcast.splat587 = shufflevector <4 x float> %broadcast.splatinsert586, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vec.epilog.vector.body588

vec.epilog.vector.body588:                        ; preds = %vec.epilog.vector.body588, %vec.epilog.ph579
  %index589 = phi i64 [ %vec.epilog.resume.val580, %vec.epilog.ph579 ], [ %index.next592, %vec.epilog.vector.body588 ] ; 2 uses
  %i.asu = or disjoint i64 %index589, 1           ; 2 uses
  %i.asv = getelementptr [4 x i8], ptr %invariant.gep102.i.i, i64 %i.asu ; 2 uses
  %wide.load590 = load <4 x float>, ptr %i.asv, align 4, !tbaa !19, !alias.scope !233 ; 2 uses
  %i.asw = getelementptr [4 x i8], ptr %invariant.gep104.i.i, i64 %i.asu ; 2 uses
  %wide.load591 = load <4 x float>, ptr %i.asw, align 4, !tbaa !19, !alias.scope !234, !noalias !233 ; 2 uses
  %i.asx = fmul <4 x float> %broadcast.splat585, %wide.load591
  %i.asy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat587, <4 x float> %wide.load590, <4 x float> %i.asx)
  %i.asz = fmul <4 x float> %broadcast.splat587, %wide.load591
  %i.ata = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat583, <4 x float> %wide.load590, <4 x float> %i.asz)
  store <4 x float> %i.ata, ptr %i.asw, align 4, !tbaa !19, !alias.scope !234, !noalias !233
  store <4 x float> %i.asy, ptr %i.asv, align 4, !tbaa !19, !alias.scope !233
  %index.next592 = add nuw i64 %index589, 4       ; 2 uses
  %i.atb = icmp eq i64 %index.next592, %n.vec581
  br i1 %i.atb, label %vec.epilog.middle.block593, label %vec.epilog.vector.body588, !llvm.loop !206

vec.epilog.middle.block593:                       ; preds = %vec.epilog.vector.body588
  %cmp.n594 = icmp eq i64 %n.vec581, %i.art
  br i1 %cmp.n594, label %._crit_edge.i.i, label %vec.epilog.scalar.ph577.preheader

vec.epilog.scalar.ph577.preheader:                ; preds = %iter.check575, %vector.memcheck552, %vec.epilog.iter.check576, %vec.epilog.middle.block593
  %indvars.iv49.i.i.ph = phi i64 [ 1, %iter.check575 ], [ 1, %vector.memcheck552 ], [ %i.ase, %vec.epilog.iter.check576 ], [ %i.ast, %vec.epilog.middle.block593 ] ; 4 uses
  %i.atc = sub nsw i64 %i.ars, %indvars.iv49.i.i.ph
  %i.atd = zext nneg i32 %i.arm to i64
  %i.ate = sub nsw i64 %i.atd, %indvars.iv49.i.i.ph
  %xtraiter819 = and i64 %i.atc, 3                ; 2 uses
  %lcmp.mod820.not = icmp eq i64 %xtraiter819, 0
  br i1 %lcmp.mod820.not, label %vec.epilog.scalar.ph577.prol.loopexit, label %vec.epilog.scalar.ph577.prol

vec.epilog.scalar.ph577.prol:                     ; preds = %vec.epilog.scalar.ph577.preheader, %vec.epilog.scalar.ph577.prol
  %indvars.iv49.i.i.prol = phi i64 [ %indvars.iv.next50.i.i.prol, %vec.epilog.scalar.ph577.prol ], [ %indvars.iv49.i.i.ph, %vec.epilog.scalar.ph577.preheader ] ; 3 uses
  %prol.iter821 = phi i64 [ %prol.iter821.next, %vec.epilog.scalar.ph577.prol ], [ 0, %vec.epilog.scalar.ph577.preheader ]
  %gep103.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep102.i.i, i64 %indvars.iv49.i.i.prol ; 2 uses
  %i.atf = load float, ptr %gep103.i.i.prol, align 4, !tbaa !19 ; 2 uses
  %gep105.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep104.i.i, i64 %indvars.iv49.i.i.prol ; 2 uses
  %i.atg = load float, ptr %gep105.i.i.prol, align 4, !tbaa !19 ; 2 uses
  %i.ath = fmul float %i.aqo, %i.atg
  %i.ati = call float @llvm.fmuladd.f32(float %i.aqm, float %i.atf, float %i.ath)
  %i.atj = fmul float %i.aqm, %i.atg
  %i.atk = call float @llvm.fmuladd.f32(float %i.arp, float %i.atf, float %i.atj)
  store float %i.atk, ptr %gep105.i.i.prol, align 4, !tbaa !19
  store float %i.ati, ptr %gep103.i.i.prol, align 4, !tbaa !19
  %indvars.iv.next50.i.i.prol = add nuw nsw i64 %indvars.iv49.i.i.prol, 1 ; 2 uses
  %prol.iter821.next = add i64 %prol.iter821, 1   ; 2 uses
  %prol.iter821.cmp.not = icmp eq i64 %prol.iter821.next, %xtraiter819
  br i1 %prol.iter821.cmp.not, label %vec.epilog.scalar.ph577.prol.loopexit, label %vec.epilog.scalar.ph577.prol, !llvm.loop !207

vec.epilog.scalar.ph577.prol.loopexit:            ; preds = %vec.epilog.scalar.ph577.prol, %vec.epilog.scalar.ph577.preheader
  %indvars.iv49.i.i.unr = phi i64 [ %indvars.iv49.i.i.ph, %vec.epilog.scalar.ph577.preheader ], [ %indvars.iv.next50.i.i.prol, %vec.epilog.scalar.ph577.prol ]
  %i.atl = icmp ult i64 %i.ate, 3
  br i1 %i.atl, label %._crit_edge.i.i, label %vec.epilog.scalar.ph577

vec.epilog.scalar.ph577:                          ; preds = %vec.epilog.scalar.ph577.prol.loopexit, %vec.epilog.scalar.ph577
  %indvars.iv49.i.i = phi i64 [ %indvars.iv.next50.i.i.3, %vec.epilog.scalar.ph577 ], [ %indvars.iv49.i.i.unr, %vec.epilog.scalar.ph577.prol.loopexit ] ; 6 uses
  %gep103.i.i = getelementptr [4 x i8], ptr %invariant.gep102.i.i, i64 %indvars.iv49.i.i ; 2 uses
  %i.atm = load float, ptr %gep103.i.i, align 4, !tbaa !19 ; 2 uses
  %gep105.i.i = getelementptr [4 x i8], ptr %invariant.gep104.i.i, i64 %indvars.iv49.i.i ; 2 uses
  %i.atn = load float, ptr %gep105.i.i, align 4, !tbaa !19 ; 2 uses
  %i.ato = fmul float %i.aqo, %i.atn
  %i.atp = call float @llvm.fmuladd.f32(float %i.aqm, float %i.atm, float %i.ato)
  %i.atq = fmul float %i.aqm, %i.atn
  %i.atr = call float @llvm.fmuladd.f32(float %i.arp, float %i.atm, float %i.atq)
  store float %i.atr, ptr %gep105.i.i, align 4, !tbaa !19
  store float %i.atp, ptr %gep103.i.i, align 4, !tbaa !19
  %indvars.iv.next50.i.i = add nuw nsw i64 %indvars.iv49.i.i, 1 ; 2 uses
  %gep103.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep102.i.i, i64 %indvars.iv.next50.i.i ; 2 uses
  %i.ats = load float, ptr %gep103.i.i.1, align 4, !tbaa !19 ; 2 uses
  %gep105.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep104.i.i, i64 %indvars.iv.next50.i.i ; 2 uses
  %i.att = load float, ptr %gep105.i.i.1, align 4, !tbaa !19 ; 2 uses
  %i.atu = fmul float %i.aqo, %i.att
  %i.atv = call float @llvm.fmuladd.f32(float %i.aqm, float %i.ats, float %i.atu)
  %i.atw = fmul float %i.aqm, %i.att
  %i.atx = call float @llvm.fmuladd.f32(float %i.arp, float %i.ats, float %i.atw)
  store float %i.atx, ptr %gep105.i.i.1, align 4, !tbaa !19
  store float %i.atv, ptr %gep103.i.i.1, align 4, !tbaa !19
  %indvars.iv.next50.i.i.1 = add nuw nsw i64 %indvars.iv49.i.i, 2 ; 2 uses
  %gep103.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep102.i.i, i64 %indvars.iv.next50.i.i.1 ; 2 uses
  %i.aty = load float, ptr %gep103.i.i.2, align 4, !tbaa !19 ; 2 uses
  %gep105.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep104.i.i, i64 %indvars.iv.next50.i.i.1 ; 2 uses
  %i.atz = load float, ptr %gep105.i.i.2, align 4, !tbaa !19 ; 2 uses
  %i.aua = fmul float %i.aqo, %i.atz
  %i.aub = call float @llvm.fmuladd.f32(float %i.aqm, float %i.aty, float %i.aua)
  %i.auc = fmul float %i.aqm, %i.atz
  %i.aud = call float @llvm.fmuladd.f32(float %i.arp, float %i.aty, float %i.auc)
  store float %i.aud, ptr %gep105.i.i.2, align 4, !tbaa !19
  store float %i.aub, ptr %gep103.i.i.2, align 4, !tbaa !19
  %indvars.iv.next50.i.i.2 = add nuw nsw i64 %indvars.iv49.i.i, 3 ; 2 uses
  %gep103.i.i.3 = getelementptr [4 x i8], ptr %invariant.gep102.i.i, i64 %indvars.iv.next50.i.i.2 ; 2 uses
  %i.aue = load float, ptr %gep103.i.i.3, align 4, !tbaa !19 ; 2 uses
  %gep105.i.i.3 = getelementptr [4 x i8], ptr %invariant.gep104.i.i, i64 %indvars.iv.next50.i.i.2 ; 2 uses
  %i.auf = load float, ptr %gep105.i.i.3, align 4, !tbaa !19 ; 2 uses
  %i.aug = fmul float %i.aqo, %i.auf
  %i.auh = call float @llvm.fmuladd.f32(float %i.aqm, float %i.aue, float %i.aug)
  %i.aui = fmul float %i.aqm, %i.auf
  %i.auj = call float @llvm.fmuladd.f32(float %i.arp, float %i.aue, float %i.aui)
  store float %i.auj, ptr %gep105.i.i.3, align 4, !tbaa !19
  store float %i.auh, ptr %gep103.i.i.3, align 4, !tbaa !19
  %indvars.iv.next50.i.i.3 = add nuw nsw i64 %indvars.iv49.i.i, 4 ; 2 uses
  %exitcond124.not.i.3 = icmp eq i64 %indvars.iv.next50.i.i.3, %i.ars
  br i1 %exitcond124.not.i.3, label %._crit_edge.i.i, label %vec.epilog.scalar.ph577, !llvm.loop !208

._crit_edge.i.i:                                  ; preds = %vec.epilog.scalar.ph577.prol.loopexit, %vec.epilog.scalar.ph577, %middle.block573, %vec.epilog.middle.block593, %bb.du
  %.0320.lcssa.i.i = phi i32 [ 1, %bb.du ], [ %narrow.i, %middle.block573 ], [ %narrow.i, %vec.epilog.middle.block593 ], [ %narrow.i, %vec.epilog.scalar.ph577 ], [ %narrow.i, %vec.epilog.scalar.ph577.prol.loopexit ]
  %i.auk = add nsw i32 %.0318.i.i, -1             ; 2 uses
  store i32 %i.auk, ptr %i.e, align 4, !tbaa !8
  %.not33314.not.i.i = icmp slt i32 %.0.i.i, %i.auk
  br i1 %.not33314.not.i.i, label %.lr.ph18.preheader.i.i, label %.loopexit1.i.i

.lr.ph18.preheader.i.i:                           ; preds = %._crit_edge.i.i
  %i.aul = add nsw i64 %i.app, 1                  ; 2 uses
  %17 = sext i32 %.0318.i.i to i64
  %i.aum = mul i64 %i.aoy, %i.aul                 ; 2 uses
  %i.aun = add nsw i64 %i.app, 2
  %i.auo = mul i64 %i.aoz, %i.aun                 ; 2 uses
  %i.aup = getelementptr i8, ptr %i.ape, i64 %i.auo
  %i.auq = getelementptr i8, ptr %i.aph, i64 %i.auo
  %i.aur = getelementptr i8, ptr %i.apj, i64 %i.aum
  %i.aus = getelementptr i8, ptr %i.apm, i64 %i.aum
  br label %.lr.ph18.i.i

.loopexit.i.i:                                    ; preds = %vec.epilog.scalar.ph521.prol.loopexit, %vec.epilog.scalar.ph521, %middle.block517, %vec.epilog.middle.block537, %bb.dw
  %.2.lcssa.i.i = phi i32 [ 1, %bb.dw ], [ %narrow184.i, %middle.block517 ], [ %narrow184.i, %vec.epilog.middle.block537 ], [ %narrow184.i, %vec.epilog.scalar.ph521 ], [ %narrow184.i, %vec.epilog.scalar.ph521.prol.loopexit ]
  %exitcond127.not.i = icmp eq i64 %indvars.iv.next56.i.i, %17
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond127.not.i, label %.loopexit1.i.i, label %.lr.ph18.i.i, !llvm.loop !209

.lr.ph18.i.i:                                     ; preds = %.loopexit.i.i, %.lr.ph18.preheader.i.i
  %indvar = phi i64 [ %indvar.next, %.loopexit.i.i ], [ 0, %.lr.ph18.preheader.i.i ] ; 2 uses
  %i.aut = phi float [ %i.avf, %.loopexit.i.i ], [ %i.aqm, %.lr.ph18.preheader.i.i ]
  %i.auu = phi float [ %i.ave, %.loopexit.i.i ], [ %i.aqo, %.lr.ph18.preheader.i.i ]
  %indvars.iv55.i.i = phi i64 [ %indvars.iv.next56.i.i, %.loopexit.i.i ], [ %i.aul, %.lr.ph18.preheader.i.i ] ; 4 uses
  %.132116.i.i = phi i32 [ %.2.lcssa.i.i, %.loopexit.i.i ], [ %.0320.lcssa.i.i, %.lr.ph18.preheader.i.i ]
  %gep111.i.i.a = getelementptr [4 x i8], ptr %invariant.gep110.i.i.a, i64 %indvars.iv55.i.i ; 2 uses
  %i.auv = load float, ptr %gep111.i.i.a, align 4, !tbaa !19
  store float %i.auv, ptr %i.g, align 4, !tbaa !19
  %indvars.iv.next56.i.i = add nsw i64 %indvars.iv55.i.i, 1 ; 5 uses
  %gep113.i.i = getelementptr [4 x i8], ptr %invariant.gep110.i.i.a, i64 %indvars.iv.next56.i.i ; 4 uses
  %i.auw = load float, ptr %gep113.i.i, align 4, !tbaa !19 ; 2 uses
  %i.aux = fmul float %i.auu, %i.auw
  store float %i.aux, ptr %i.h, align 4, !tbaa !19
  %i.auy = fmul float %i.aut, %i.auw
  store float %i.auy, ptr %gep113.i.i, align 4, !tbaa !19
  call void @slartg_(ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.f, ptr noundef nonnull %i.j, ptr noundef nonnull %i.i)
  %i.auz = load float, ptr %i.i, align 4, !tbaa !19 ; 3 uses
  %i.ava = fcmp olt float %i.auz, 0.000000e+00
  %.pre76.i.i = load float, ptr %i.f, align 4, !tbaa !19 ; 2 uses
  %.pre77.i.i = load float, ptr %i.j, align 4, !tbaa !19 ; 2 uses
  br i1 %i.ava, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %.lr.ph18.i.i
  %i.avb = fneg float %i.auz                      ; 2 uses
  store float %i.avb, ptr %i.i, align 4, !tbaa !19
  %i.avc = fneg float %.pre76.i.i                 ; 2 uses
  store float %i.avc, ptr %i.f, align 4, !tbaa !19
  %i.avd = fneg float %.pre77.i.i                 ; 2 uses
  store float %i.avd, ptr %i.j, align 4, !tbaa !19
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %.lr.ph18.i.i
  %i.ave = phi float [ %i.avd, %bb.dv ], [ %.pre77.i.i, %.lr.ph18.i.i ] ; 15 uses
  %i.avf = phi float [ %i.avc, %bb.dv ], [ %.pre76.i.i, %.lr.ph18.i.i ] ; 20 uses
  %i.avg = phi float [ %i.avb, %bb.dv ], [ %i.auz, %.lr.ph18.i.i ]
  store float %i.avg, ptr %gep111.i.i.a, align 4, !tbaa !19
  %gep115.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv55.i.i ; 2 uses
  %i.avh = load float, ptr %gep115.i.i, align 4, !tbaa !19 ; 2 uses
  %i.avi = load float, ptr %gep113.i.i, align 4, !tbaa !19 ; 3 uses
  %i.avj = fmul float %i.ave, %i.avi              ; 2 uses
  %i.avk = call float @llvm.fmuladd.f32(float %i.avf, float %i.avh, float %i.avj)
  %gep117.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.next56.i.i ; 2 uses
  %i.avl = load float, ptr %gep117.i.i, align 4, !tbaa !19 ; 2 uses
  %i.avm = fmul float %i.ave, %i.avl
  %i.avn = call float @llvm.fmuladd.f32(float %i.avf, float %i.avi, float %i.avm)
  %i.avo = fneg float %i.avh
  %i.avp = fmul float %i.ave, %i.avo
  %i.avq = call float @llvm.fmuladd.f32(float %i.avf, float %i.avi, float %i.avp) ; 2 uses
  %i.avr = fneg float %i.avj
  %i.avs = call float @llvm.fmuladd.f32(float %i.avf, float %i.avl, float %i.avr) ; 2 uses
  %i.avt = fmul float %i.ave, %i.avn
  %i.avu = call float @llvm.fmuladd.f32(float %i.avf, float %i.avk, float %i.avt)
  store float %i.avu, ptr %gep115.i.i, align 4, !tbaa !19
  %i.avv = fneg float %i.avq
  %i.avw = fmul float %i.ave, %i.avv
  %i.avx = call float @llvm.fmuladd.f32(float %i.avf, float %i.avs, float %i.avw)
  store float %i.avx, ptr %gep117.i.i, align 4, !tbaa !19
  %i.avy = fmul float %i.ave, %i.avs
  %i.avz = call float @llvm.fmuladd.f32(float %i.avf, float %i.avq, float %i.avy)
  store float %i.avz, ptr %gep113.i.i, align 4, !tbaa !19
  %i.awa = add i32 %.132116.i.i, %indvars128.i
  %i.awb = load i32, ptr %i.k, align 4, !tbaa !8  ; 3 uses
  %i.awc = call i32 @llvm.smin.i32(i32 %i.awa, i32 %i.awb) ; 6 uses
  %.not3359.i.i = icmp slt i32 %i.awc, 1
  br i1 %.not3359.i.i, label %.loopexit.i.i, label %iter.check519

iter.check519:                                    ; preds = %bb.dw
  %i.awd = mul nsw i64 %indvars.iv55.i.i, %i.aou
  %i.awe = mul nsw i64 %indvars.iv.next56.i.i, %i.aou
  %i.awf = fneg float %i.ave                      ; 7 uses
  %invariant.gep106.i.i = getelementptr [4 x i8], ptr %i.aol, i64 %i.awd ; 7 uses
  %invariant.gep108.i.i = getelementptr [4 x i8], ptr %i.aol, i64 %i.awe ; 7 uses
  %narrow184.i = add nuw i32 %i.awc, 1            ; 5 uses
  %i.awg = zext i32 %narrow184.i to i64           ; 3 uses
  %i.awh = zext nneg i32 %i.awc to i64            ; 5 uses
  %min.iters.check495 = icmp ult i32 %i.awc, 4
  br i1 %min.iters.check495, label %vec.epilog.scalar.ph521.preheader, label %vector.memcheck496

vector.memcheck496:                               ; preds = %iter.check519
  %i.awi = mul i64 %indvar, %i.apa                ; 4 uses
  %i.awj = getelementptr i8, ptr %i.aup, i64 %i.awi
  %i.awk = shl nuw nsw i64 %i.awg, 2              ; 2 uses
  %i.awl = getelementptr i8, ptr %i.auq, i64 %i.awi
  %i.awm = getelementptr i8, ptr %i.awl, i64 %i.awk
  %i.awn = getelementptr i8, ptr %i.aur, i64 %i.awi
  %i.awo = getelementptr i8, ptr %i.aus, i64 %i.awi
  %i.awp = getelementptr i8, ptr %i.awo, i64 %i.awk
  %bound0497 = icmp ult ptr %i.awj, %i.awp
  %bound1498 = icmp ult ptr %i.awn, %i.awm
  %found.conflict499 = and i1 %bound0497, %bound1498
  br i1 %found.conflict499, label %vec.epilog.scalar.ph521.preheader, label %vector.main.loop.iter.check500

vector.main.loop.iter.check500:                   ; preds = %vector.memcheck496
  %min.iters.check501 = icmp ult i32 %i.awc, 16
  br i1 %min.iters.check501, label %vec.epilog.ph523, label %vector.ph502

vector.ph502:                                     ; preds = %vector.main.loop.iter.check500
  %i.awq = and i64 %i.awh, 12
  %n.vec503 = and i64 %i.awh, 2147483632          ; 4 uses
  %i.awr = or disjoint i64 %n.vec503, 1
  %broadcast.splatinsert504 = insertelement <8 x float> poison, float %i.awf, i64 0
  %broadcast.splat505 = shufflevector <8 x float> %broadcast.splatinsert504, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert506 = insertelement <8 x float> poison, float %i.ave, i64 0
  %broadcast.splat507 = shufflevector <8 x float> %broadcast.splatinsert506, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert508 = insertelement <8 x float> poison, float %i.avf, i64 0
  %broadcast.splat509 = shufflevector <8 x float> %broadcast.splatinsert508, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body510

vector.body510:                                   ; preds = %vector.ph502, %vector.body510
  %index511 = phi i64 [ 0, %vector.ph502 ], [ %index.next516, %vector.body510 ] ; 2 uses
  %i.aws = or disjoint i64 %index511, 1           ; 2 uses
  %i.awt = getelementptr [4 x i8], ptr %invariant.gep106.i.i, i64 %i.aws ; 3 uses
  %i.awu = getelementptr i8, ptr %i.awt, i64 32   ; 2 uses
  %wide.load512 = load <8 x float>, ptr %i.awt, align 4, !tbaa !19, !alias.scope !235 ; 2 uses
  %wide.load513 = load <8 x float>, ptr %i.awu, align 4, !tbaa !19, !alias.scope !235 ; 2 uses
  %i.awv = getelementptr [4 x i8], ptr %invariant.gep108.i.i, i64 %i.aws ; 3 uses
  %i.aww = getelementptr i8, ptr %i.awv, i64 32   ; 2 uses
  %wide.load514 = load <8 x float>, ptr %i.awv, align 4, !tbaa !19, !alias.scope !236, !noalias !235 ; 2 uses
  %wide.load515 = load <8 x float>, ptr %i.aww, align 4, !tbaa !19, !alias.scope !236, !noalias !235 ; 2 uses
  %i.awx = fmul <8 x float> %broadcast.splat507, %wide.load514
  %i.awy = fmul <8 x float> %broadcast.splat507, %wide.load515
  %i.awz = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat509, <8 x float> %wide.load512, <8 x float> %i.awx)
  %i.axa = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat509, <8 x float> %wide.load513, <8 x float> %i.awy)
  %i.axb = fmul <8 x float> %broadcast.splat509, %wide.load514
  %i.axc = fmul <8 x float> %broadcast.splat509, %wide.load515
  %i.axd = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat505, <8 x float> %wide.load512, <8 x float> %i.axb)
  %i.axe = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat505, <8 x float> %wide.load513, <8 x float> %i.axc)
  store <8 x float> %i.axd, ptr %i.awv, align 4, !tbaa !19, !alias.scope !236, !noalias !235
  store <8 x float> %i.axe, ptr %i.aww, align 4, !tbaa !19, !alias.scope !236, !noalias !235
  store <8 x float> %i.awz, ptr %i.awt, align 4, !tbaa !19, !alias.scope !235
  store <8 x float> %i.axa, ptr %i.awu, align 4, !tbaa !19, !alias.scope !235
  %index.next516 = add nuw i64 %index511, 16      ; 2 uses
  %i.axf = icmp eq i64 %index.next516, %n.vec503
  br i1 %i.axf, label %middle.block517, label %vector.body510, !llvm.loop !213

middle.block517:                                  ; preds = %vector.body510
  %cmp.n518 = icmp eq i64 %n.vec503, %i.awh
  br i1 %cmp.n518, label %.loopexit.i.i, label %vec.epilog.iter.check520

vec.epilog.iter.check520:                         ; preds = %middle.block517
  %min.epilog.iters.check522 = icmp eq i64 %i.awq, 0
  br i1 %min.epilog.iters.check522, label %vec.epilog.scalar.ph521.preheader, label %vec.epilog.ph523, !prof !17

vec.epilog.ph523:                                 ; preds = %vector.main.loop.iter.check500, %vec.epilog.iter.check520
  %vec.epilog.resume.val524 = phi i64 [ %n.vec503, %vec.epilog.iter.check520 ], [ 0, %vector.main.loop.iter.check500 ]
  %n.vec525 = and i64 %i.awh, 2147483644          ; 3 uses
  %i.axg = or disjoint i64 %n.vec525, 1
  %broadcast.splatinsert526 = insertelement <4 x float> poison, float %i.awf, i64 0
  %broadcast.splat527 = shufflevector <4 x float> %broadcast.splatinsert526, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert528 = insertelement <4 x float> poison, float %i.ave, i64 0
  %broadcast.splat529 = shufflevector <4 x float> %broadcast.splatinsert528, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert530 = insertelement <4 x float> poison, float %i.avf, i64 0
  %broadcast.splat531 = shufflevector <4 x float> %broadcast.splatinsert530, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vec.epilog.vector.body532

vec.epilog.vector.body532:                        ; preds = %vec.epilog.vector.body532, %vec.epilog.ph523
  %index533 = phi i64 [ %vec.epilog.resume.val524, %vec.epilog.ph523 ], [ %index.next536, %vec.epilog.vector.body532 ] ; 2 uses
  %i.axh = or disjoint i64 %index533, 1           ; 2 uses
  %i.axi = getelementptr [4 x i8], ptr %invariant.gep106.i.i, i64 %i.axh ; 2 uses
  %wide.load534 = load <4 x float>, ptr %i.axi, align 4, !tbaa !19, !alias.scope !235 ; 2 uses
  %i.axj = getelementptr [4 x i8], ptr %invariant.gep108.i.i, i64 %i.axh ; 2 uses
  %wide.load535 = load <4 x float>, ptr %i.axj, align 4, !tbaa !19, !alias.scope !236, !noalias !235 ; 2 uses
  %i.axk = fmul <4 x float> %broadcast.splat529, %wide.load535
  %i.axl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat531, <4 x float> %wide.load534, <4 x float> %i.axk)
  %i.axm = fmul <4 x float> %broadcast.splat531, %wide.load535
  %i.axn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat527, <4 x float> %wide.load534, <4 x float> %i.axm)
  store <4 x float> %i.axn, ptr %i.axj, align 4, !tbaa !19, !alias.scope !236, !noalias !235
  store <4 x float> %i.axl, ptr %i.axi, align 4, !tbaa !19, !alias.scope !235
  %index.next536 = add nuw i64 %index533, 4       ; 2 uses
  %i.axo = icmp eq i64 %index.next536, %n.vec525
  br i1 %i.axo, label %vec.epilog.middle.block537, label %vec.epilog.vector.body532, !llvm.loop !214

vec.epilog.middle.block537:                       ; preds = %vec.epilog.vector.body532
  %cmp.n538 = icmp eq i64 %n.vec525, %i.awh
  br i1 %cmp.n538, label %.loopexit.i.i, label %vec.epilog.scalar.ph521.preheader

vec.epilog.scalar.ph521.preheader:                ; preds = %iter.check519, %vector.memcheck496, %vec.epilog.iter.check520, %vec.epilog.middle.block537
  %indvars.iv52.i.i.ph = phi i64 [ 1, %iter.check519 ], [ 1, %vector.memcheck496 ], [ %i.awr, %vec.epilog.iter.check520 ], [ %i.axg, %vec.epilog.middle.block537 ] ; 4 uses
  %i.axp = sub nsw i64 %i.awg, %indvars.iv52.i.i.ph
  %i.axq = zext nneg i32 %i.awc to i64
  %i.axr = sub nsw i64 %i.axq, %indvars.iv52.i.i.ph
  %xtraiter822 = and i64 %i.axp, 3                ; 2 uses
  %lcmp.mod823.not = icmp eq i64 %xtraiter822, 0
  br i1 %lcmp.mod823.not, label %vec.epilog.scalar.ph521.prol.loopexit, label %vec.epilog.scalar.ph521.prol

vec.epilog.scalar.ph521.prol:                     ; preds = %vec.epilog.scalar.ph521.preheader, %vec.epilog.scalar.ph521.prol
  %indvars.iv52.i.i.prol = phi i64 [ %indvars.iv.next53.i.i.prol, %vec.epilog.scalar.ph521.prol ], [ %indvars.iv52.i.i.ph, %vec.epilog.scalar.ph521.preheader ] ; 3 uses
  %prol.iter824 = phi i64 [ %prol.iter824.next, %vec.epilog.scalar.ph521.prol ], [ 0, %vec.epilog.scalar.ph521.preheader ]
  %gep107.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep106.i.i, i64 %indvars.iv52.i.i.prol ; 2 uses
  %i.axs = load float, ptr %gep107.i.i.prol, align 4, !tbaa !19 ; 2 uses
  %gep109.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep108.i.i, i64 %indvars.iv52.i.i.prol ; 2 uses
  %i.axt = load float, ptr %gep109.i.i.prol, align 4, !tbaa !19 ; 2 uses
  %i.axu = fmul float %i.ave, %i.axt
  %i.axv = call float @llvm.fmuladd.f32(float %i.avf, float %i.axs, float %i.axu)
  %i.axw = fmul float %i.avf, %i.axt
  %i.axx = call float @llvm.fmuladd.f32(float %i.awf, float %i.axs, float %i.axw)
  store float %i.axx, ptr %gep109.i.i.prol, align 4, !tbaa !19
  store float %i.axv, ptr %gep107.i.i.prol, align 4, !tbaa !19
  %indvars.iv.next53.i.i.prol = add nuw nsw i64 %indvars.iv52.i.i.prol, 1 ; 2 uses
  %prol.iter824.next = add i64 %prol.iter824, 1   ; 2 uses
  %prol.iter824.cmp.not = icmp eq i64 %prol.iter824.next, %xtraiter822
  br i1 %prol.iter824.cmp.not, label %vec.epilog.scalar.ph521.prol.loopexit, label %vec.epilog.scalar.ph521.prol, !llvm.loop !215

vec.epilog.scalar.ph521.prol.loopexit:            ; preds = %vec.epilog.scalar.ph521.prol, %vec.epilog.scalar.ph521.preheader
  %indvars.iv52.i.i.unr = phi i64 [ %indvars.iv52.i.i.ph, %vec.epilog.scalar.ph521.preheader ], [ %indvars.iv.next53.i.i.prol, %vec.epilog.scalar.ph521.prol ]
  %i.axy = icmp ult i64 %i.axr, 3
  br i1 %i.axy, label %.loopexit.i.i, label %vec.epilog.scalar.ph521

vec.epilog.scalar.ph521:                          ; preds = %vec.epilog.scalar.ph521.prol.loopexit, %vec.epilog.scalar.ph521
  %indvars.iv52.i.i = phi i64 [ %indvars.iv.next53.i.i.3, %vec.epilog.scalar.ph521 ], [ %indvars.iv52.i.i.unr, %vec.epilog.scalar.ph521.prol.loopexit ] ; 6 uses
  %gep107.i.i = getelementptr [4 x i8], ptr %invariant.gep106.i.i, i64 %indvars.iv52.i.i ; 2 uses
  %i.axz = load float, ptr %gep107.i.i, align 4, !tbaa !19 ; 2 uses
  %gep109.i.i = getelementptr [4 x i8], ptr %invariant.gep108.i.i, i64 %indvars.iv52.i.i ; 2 uses
  %i.aya = load float, ptr %gep109.i.i, align 4, !tbaa !19 ; 2 uses
  %i.ayb = fmul float %i.ave, %i.aya
  %i.ayc = call float @llvm.fmuladd.f32(float %i.avf, float %i.axz, float %i.ayb)
  %i.ayd = fmul float %i.avf, %i.aya
  %i.aye = call float @llvm.fmuladd.f32(float %i.awf, float %i.axz, float %i.ayd)
  store float %i.aye, ptr %gep109.i.i, align 4, !tbaa !19
  store float %i.ayc, ptr %gep107.i.i, align 4, !tbaa !19
  %indvars.iv.next53.i.i = add nuw nsw i64 %indvars.iv52.i.i, 1 ; 2 uses
  %gep107.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep106.i.i, i64 %indvars.iv.next53.i.i ; 2 uses
  %i.ayf = load float, ptr %gep107.i.i.1, align 4, !tbaa !19 ; 2 uses
  %gep109.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep108.i.i, i64 %indvars.iv.next53.i.i ; 2 uses
  %i.ayg = load float, ptr %gep109.i.i.1, align 4, !tbaa !19 ; 2 uses
  %i.ayh = fmul float %i.ave, %i.ayg
  %i.ayi = call float @llvm.fmuladd.f32(float %i.avf, float %i.ayf, float %i.ayh)
  %i.ayj = fmul float %i.avf, %i.ayg
  %i.ayk = call float @llvm.fmuladd.f32(float %i.awf, float %i.ayf, float %i.ayj)
  store float %i.ayk, ptr %gep109.i.i.1, align 4, !tbaa !19
  store float %i.ayi, ptr %gep107.i.i.1, align 4, !tbaa !19
  %indvars.iv.next53.i.i.1 = add nuw nsw i64 %indvars.iv52.i.i, 2 ; 2 uses
  %gep107.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep106.i.i, i64 %indvars.iv.next53.i.i.1 ; 2 uses
  %i.ayl = load float, ptr %gep107.i.i.2, align 4, !tbaa !19 ; 2 uses
  %gep109.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep108.i.i, i64 %indvars.iv.next53.i.i.1 ; 2 uses
  %i.aym = load float, ptr %gep109.i.i.2, align 4, !tbaa !19 ; 2 uses
  %i.ayn = fmul float %i.ave, %i.aym
  %i.ayo = call float @llvm.fmuladd.f32(float %i.avf, float %i.ayl, float %i.ayn)
  %i.ayp = fmul float %i.avf, %i.aym
  %i.ayq = call float @llvm.fmuladd.f32(float %i.awf, float %i.ayl, float %i.ayp)
  store float %i.ayq, ptr %gep109.i.i.2, align 4, !tbaa !19
  store float %i.ayo, ptr %gep107.i.i.2, align 4, !tbaa !19
  %indvars.iv.next53.i.i.2 = add nuw nsw i64 %indvars.iv52.i.i, 3 ; 2 uses
  %gep107.i.i.3 = getelementptr [4 x i8], ptr %invariant.gep106.i.i, i64 %indvars.iv.next53.i.i.2 ; 2 uses
  %i.ayr = load float, ptr %gep107.i.i.3, align 4, !tbaa !19 ; 2 uses
  %gep109.i.i.3 = getelementptr [4 x i8], ptr %invariant.gep108.i.i, i64 %indvars.iv.next53.i.i.2 ; 2 uses
  %i.ays = load float, ptr %gep109.i.i.3, align 4, !tbaa !19 ; 2 uses
  %i.ayt = fmul float %i.ave, %i.ays
  %i.ayu = call float @llvm.fmuladd.f32(float %i.avf, float %i.ayr, float %i.ayt)
  %i.ayv = fmul float %i.avf, %i.ays
  %i.ayw = call float @llvm.fmuladd.f32(float %i.awf, float %i.ayr, float %i.ayv)
  store float %i.ayw, ptr %gep109.i.i.3, align 4, !tbaa !19
  store float %i.ayu, ptr %gep107.i.i.3, align 4, !tbaa !19
  %indvars.iv.next53.i.i.3 = add nuw nsw i64 %indvars.iv52.i.i, 4 ; 2 uses
  %exitcond126.not.i.3 = icmp eq i64 %indvars.iv.next53.i.i.3, %i.awg
  br i1 %exitcond126.not.i.3, label %.loopexit.i.i, label %vec.epilog.scalar.ph521, !llvm.loop !216

.loopexit1.i.i:                                   ; preds = %.loopexit.i.i, %._crit_edge.i.i, %.loopexit2.i.i
  %.pre83.i.i.a = phi i32 [ %.pre84.i.i.a, %.loopexit2.i.i ], [ %i.arl, %._crit_edge.i.i ], [ %i.awb, %.loopexit.i.i ]
  %i.ayx = phi i32 [ %i.apo, %.loopexit2.i.i ], [ %i.arl, %._crit_edge.i.i ], [ %i.awb, %.loopexit.i.i ]
  %i.ayy = add nsw i32 %.0318.i.i, 1
  %i.ayz = add nsw i32 %.0318.i.i, %.val395.i
  %i.aza = sext i32 %i.ayz to i64
  %i.azb = getelementptr inbounds [4 x i8], ptr %i.aoi, i64 %i.aza ; 2 uses
  %i.azc = load float, ptr %i.azb, align 4, !tbaa !19 ; 2 uses
  %i.azd = fcmp olt float %i.azc, 0.000000e+00
  br i1 %i.azd, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %.loopexit1.i.i
  %i.aze = fneg float %i.azc
  store float %i.aze, ptr %i.azb, align 4, !tbaa !19
  %i.azf = mul nsw i32 %.0318.i.i, %i.aoj
  %i.azg = sext i32 %i.azf to i64
  %i.azh = getelementptr [4 x i8], ptr %i.aol, i64 %i.azg
  %i.azi = getelementptr i8, ptr %i.azh, i64 4
  call void @sscal_(ptr noundef nonnull %i.k, ptr noundef nonnull %i.c, ptr noundef %i.azi, ptr noundef nonnull %i.d)
  %.pre78.i.i = load i32, ptr %i.k, align 4, !tbaa !8 ; 2 uses
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %.loopexit1.i.i
  %.pre82.i.i = phi i32 [ %.pre78.i.i, %bb.dx ], [ %.pre83.i.i.a, %.loopexit1.i.i ] ; 2 uses
  %i.azj = phi i32 [ %.pre78.i.i, %bb.dx ], [ %i.ayx, %.loopexit1.i.i ] ; 7 uses
  %i.azk = icmp slt i32 %.0318.i.i, %i.azj
  br i1 %i.azk, label %bb.dr, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %18 = add nsw i32 %i.azj, -1
  store i32 %18, ptr %i.e, align 4, !tbaa !8
  %.not334.not19.i.i = icmp slt i32 %.031730.i.i, %i.azj
  br i1 %.not334.not19.i.i, label %.lr.ph23.preheader.i.i, label %._crit_edge24.i.i

.lr.ph23.preheader.i.i:                           ; preds = %bb.dz
  %i.azl = sext i32 %.031730.i.i to i64
  %i.azm = sext i32 %i.azj to i64
  br label %.lr.ph23.i.i

.lr.ph23.i.i:                                     ; preds = %bb.ea, %.lr.ph23.preheader.i.i
  %indvars.iv58.i.i = phi i64 [ %i.azl, %.lr.ph23.preheader.i.i ], [ %indvars.iv.next59.i.i, %bb.ea ] ; 2 uses
  %indvars.iv.next59.i.i = add nsw i64 %indvars.iv58.i.i, 1 ; 3 uses
  %gep121.i.i = getelementptr [4 x i8], ptr %invariant.gep110.i.i.a, i64 %indvars.iv.next59.i.i
  %i.azn = load float, ptr %gep121.i.i, align 4, !tbaa !19
  %i.azo = fcmp ogt float %i.azn, 0.000000e+00
  br i1 %i.azo, label %._crit_edge24.loopexit.split.loop.exit.i.i, label %bb.ea

bb.ea:                                            ; preds = %.lr.ph23.i.i
  %exitcond64.not.i.i = icmp eq i64 %indvars.iv.next59.i.i, %i.azm
  br i1 %exitcond64.not.i.i, label %._crit_edge24.i.i, label %.lr.ph23.i.i, !llvm.loop !217

._crit_edge24.loopexit.split.loop.exit.i.i:       ; preds = %.lr.ph23.i.i
  %indvars61.le.i.i = trunc i64 %indvars.iv58.i.i to i32
  br label %._crit_edge24.i.i

._crit_edge24.i.i:                                ; preds = %bb.ea, %._crit_edge24.loopexit.split.loop.exit.i.i, %bb.dz
  %.1.lcssa.i.i = phi i32 [ %.031730.i.i, %bb.dz ], [ %indvars61.le.i.i, %._crit_edge24.loopexit.split.loop.exit.i.i ], [ %i.azj, %bb.ea ] ; 2 uses
  %indvars.iv.next66.i.i = add nuw nsw i64 %indvars.iv65.i.i, 1 ; 2 uses
  %exitcond69.not.i.i = icmp eq i64 %indvars.iv.next66.i.i, %wide.trip.count68.i.i
  br i1 %exitcond69.not.i.i, label %._crit_edge31.i.i, label %.preheader.i.i, !llvm.loop !218

._crit_edge31.i.i:                                ; preds = %._crit_edge24.i.i, %.preheader3.._crit_edge31_crit_edge.i.i
  %i.azp = phi i32 [ %.pre79.i.i.a, %.preheader3.._crit_edge31_crit_edge.i.i ], [ %i.azj, %._crit_edge24.i.i ] ; 2 uses
  %.0317.lcssa.i.i = phi i32 [ 1, %.preheader3.._crit_edge31_crit_edge.i.i ], [ %.1.lcssa.i.i, %._crit_edge24.i.i ] ; 2 uses
  %.not328.not33.i.i = icmp slt i32 %.0317.lcssa.i.i, %i.azp
  br i1 %.not328.not33.i.i, label %iter.check638, label %._crit_edge37.i.i

iter.check638:                                    ; preds = %._crit_edge31.i.i
  %i.azq = shl nsw i32 %.val395.i, 1
  %i.azr = sext i32 %.0317.lcssa.i.i to i64       ; 8 uses
  %i.azs = sext i32 %i.azq to i64                 ; 3 uses
  %i.azt = sext i32 %.val395.i to i64             ; 3 uses
  %wide.trip.count73.i.i = sext i32 %i.azp to i64 ; 5 uses
  %invariant.gep122.i.i = getelementptr [4 x i8], ptr %i.aoi, i64 %i.azs ; 7 uses
  %invariant.gep126.i.i = getelementptr [4 x i8], ptr %i.aoi, i64 %i.azt ; 5 uses
  %i.azu = sub nsw i64 %wide.trip.count73.i.i, %i.azr ; 7 uses
  %min.iters.check609 = icmp ult i64 %i.azu, 8
  br i1 %min.iters.check609, label %vec.epilog.scalar.ph640.preheader, label %vector.memcheck610

vector.memcheck610:                               ; preds = %iter.check638
  %i.azv = add nsw i64 %i.azr, %i.ep              ; 2 uses
  %i.azw = add nsw i64 %i.azv, %i.azt
  %i.azx = add nsw i64 %i.azw, %i.aoh
  %i.azy = shl nsw i64 %i.azx, 2
  %i.azz = getelementptr i8, ptr %14, i64 %i.azy  ; 2 uses
  %i.baa = add nsw i64 %wide.trip.count73.i.i, %i.ep ; 2 uses
  %i.bab = add nsw i64 %i.baa, %i.azt
  %i.bac = add nsw i64 %i.bab, %i.aoh
  %i.bad = shl nsw i64 %i.bac, 2
  %i.bae = getelementptr i8, ptr %14, i64 %i.bad  ; 2 uses
  %i.baf = add nsw i64 %i.azv, %i.azs
  %i.bag = add nsw i64 %i.baf, %i.aoh
  %i.bah = shl nsw i64 %i.bag, 2                  ; 2 uses
  %i.bai = getelementptr i8, ptr %14, i64 %i.bah
  %i.baj = getelementptr i8, ptr %i.bai, i64 -4
  %i.bak = add nsw i64 %i.baa, %i.azs
  %i.bal = add nsw i64 %i.bak, %i.aoh
  %i.bam = shl nsw i64 %i.bal, 2                  ; 2 uses
  %i.ban = getelementptr i8, ptr %14, i64 %i.bam
  %i.bao = getelementptr i8, ptr %i.ban, i64 -4
  %i.bap = getelementptr i8, ptr %14, i64 %i.bah
  %i.baq = getelementptr i8, ptr %14, i64 %i.bam
  %bound0611 = icmp ult ptr %i.azz, %i.bao
  %bound1612 = icmp ult ptr %i.baj, %i.bae
  %found.conflict613 = and i1 %bound0611, %bound1612
  %bound0614 = icmp ult ptr %i.azz, %i.baq
  %bound1615 = icmp ult ptr %i.bap, %i.bae
  %found.conflict616 = and i1 %bound0614, %bound1615
  %conflict.rdx = or i1 %found.conflict613, %found.conflict616
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph640.preheader, label %vector.main.loop.iter.check617

vector.main.loop.iter.check617:                   ; preds = %vector.memcheck610
  %min.iters.check618 = icmp ult i64 %i.azu, 32
  br i1 %min.iters.check618, label %vec.epilog.ph642, label %vector.ph619

vector.ph619:                                     ; preds = %vector.main.loop.iter.check617
  %i.bar = and i64 %i.azu, 24
  %n.vec620 = and i64 %i.azu, -32                 ; 4 uses
  %i.bas = add nsw i64 %n.vec620, %i.azr
  br label %vector.body621

vector.body621:                                   ; preds = %vector.ph619, %vector.body621
  %index622 = phi i64 [ 0, %vector.ph619 ], [ %index.next635, %vector.body621 ] ; 2 uses
  %i.bat = add i64 %index622, %i.azr              ; 2 uses
  %i.bau = getelementptr [4 x i8], ptr %invariant.gep122.i.i, i64 %i.bat ; 4 uses
  %i.bav = getelementptr i8, ptr %i.bau, i64 32
  %i.baw = getelementptr i8, ptr %i.bau, i64 64
  %i.bax = getelementptr i8, ptr %i.bau, i64 96
  %wide.load623 = load <8 x float>, ptr %i.bau, align 4, !tbaa !19, !alias.scope !237
  %wide.load624 = load <8 x float>, ptr %i.bav, align 4, !tbaa !19, !alias.scope !237
  %wide.load625 = load <8 x float>, ptr %i.baw, align 4, !tbaa !19, !alias.scope !237
  %wide.load626 = load <8 x float>, ptr %i.bax, align 4, !tbaa !19, !alias.scope !237
  %i.bay = call <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load623)
  %i.baz = call <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load624)
  %i.bba = call <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load625)
  %i.bbb = call <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load626)
  %i.bbc = add i64 %i.bat, 1                      ; 2 uses
  %i.bbd = getelementptr [4 x i8], ptr %invariant.gep122.i.i, i64 %i.bbc ; 4 uses
  %i.bbe = getelementptr i8, ptr %i.bbd, i64 32
  %i.bbf = getelementptr i8, ptr %i.bbd, i64 64
  %i.bbg = getelementptr i8, ptr %i.bbd, i64 96
  %wide.load627 = load <8 x float>, ptr %i.bbd, align 4, !tbaa !19, !alias.scope !238
  %wide.load628 = load <8 x float>, ptr %i.bbe, align 4, !tbaa !19, !alias.scope !238
  %wide.load629 = load <8 x float>, ptr %i.bbf, align 4, !tbaa !19, !alias.scope !238
  %wide.load630 = load <8 x float>, ptr %i.bbg, align 4, !tbaa !19, !alias.scope !238
  %i.bbh = call <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load627)
  %i.bbi = call <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load628)
  %i.bbj = call <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load629)
  %i.bbk = call <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load630)
  %i.bbl = fadd <8 x float> %i.bay, %i.bbh
  %i.bbm = fadd <8 x float> %i.baz, %i.bbi
  %i.bbn = fadd <8 x float> %i.bba, %i.bbj
  %i.bbo = fadd <8 x float> %i.bbb, %i.bbk
  %i.bbp = getelementptr [4 x i8], ptr %invariant.gep126.i.i, i64 %i.bbc ; 5 uses
  %i.bbq = getelementptr i8, ptr %i.bbp, i64 32   ; 2 uses
  %i.bbr = getelementptr i8, ptr %i.bbp, i64 64   ; 2 uses
  %i.bbs = getelementptr i8, ptr %i.bbp, i64 96   ; 2 uses
  %wide.load631 = load <8 x float>, ptr %i.bbp, align 4, !tbaa !19, !alias.scope !239, !noalias !240
  %wide.load632 = load <8 x float>, ptr %i.bbq, align 4, !tbaa !19, !alias.scope !239, !noalias !240
  %wide.load633 = load <8 x float>, ptr %i.bbr, align 4, !tbaa !19, !alias.scope !239, !noalias !240
  %wide.load634 = load <8 x float>, ptr %i.bbs, align 4, !tbaa !19, !alias.scope !239, !noalias !240
  %i.bbt = fmul <8 x float> %i.bbl, splat (float f0x34000000)
  %i.bbu = fmul <8 x float> %i.bbm, splat (float f0x34000000)
  %i.bbv = fmul <8 x float> %i.bbn, splat (float f0x34000000)
  %i.bbw = fmul <8 x float> %i.bbo, splat (float f0x34000000)
  %i.bbx = fcmp ole <8 x float> %wide.load631, %i.bbt
  %i.bby = fcmp ole <8 x float> %wide.load632, %i.bbu
  %i.bbz = fcmp ole <8 x float> %wide.load633, %i.bbv
  %i.bca = fcmp ole <8 x float> %wide.load634, %i.bbw
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr align 4 %i.bbp, <8 x i1> %i.bbx), !tbaa !19, !alias.scope !239, !noalias !240
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr align 4 %i.bbq, <8 x i1> %i.bby), !tbaa !19, !alias.scope !239, !noalias !240
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr align 4 %i.bbr, <8 x i1> %i.bbz), !tbaa !19, !alias.scope !239, !noalias !240
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr align 4 %i.bbs, <8 x i1> %i.bca), !tbaa !19, !alias.scope !239, !noalias !240
  %index.next635 = add nuw i64 %index622, 32      ; 2 uses
  %i.bcb = icmp eq i64 %index.next635, %n.vec620
  br i1 %i.bcb, label %middle.block636, label %vector.body621, !llvm.loop !223

middle.block636:                                  ; preds = %vector.body621
  %cmp.n637 = icmp eq i64 %i.azu, %n.vec620
  br i1 %cmp.n637, label %._crit_edge37.i.i, label %vec.epilog.iter.check639

vec.epilog.iter.check639:                         ; preds = %middle.block636
  %min.epilog.iters.check641 = icmp eq i64 %i.bar, 0
  br i1 %min.epilog.iters.check641, label %vec.epilog.scalar.ph640.preheader, label %vec.epilog.ph642, !prof !21

vec.epilog.ph642:                                 ; preds = %vector.main.loop.iter.check617, %vec.epilog.iter.check639
  %vec.epilog.resume.val643 = phi i64 [ %n.vec620, %vec.epilog.iter.check639 ], [ 0, %vector.main.loop.iter.check617 ]
  %n.vec644 = and i64 %i.azu, -8                  ; 3 uses
  %i.bcc = add nsw i64 %n.vec644, %i.azr
  br label %vec.epilog.vector.body645

vec.epilog.vector.body645:                        ; preds = %vec.epilog.vector.body645, %vec.epilog.ph642
  %index646 = phi i64 [ %vec.epilog.resume.val643, %vec.epilog.ph642 ], [ %index.next650, %vec.epilog.vector.body645 ] ; 2 uses
  %i.bcd = add i64 %index646, %i.azr              ; 2 uses
  %i.bce = getelementptr [4 x i8], ptr %invariant.gep122.i.i, i64 %i.bcd
  %wide.load647 = load <8 x float>, ptr %i.bce, align 4, !tbaa !19, !alias.scope !237
  %i.bcf = call <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load647)
  %i.bcg = add i64 %i.bcd, 1                      ; 2 uses
  %i.bch = getelementptr [4 x i8], ptr %invariant.gep122.i.i, i64 %i.bcg
  %wide.load648 = load <8 x float>, ptr %i.bch, align 4, !tbaa !19, !alias.scope !238
  %i.bci = call <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load648)
  %i.bcj = fadd <8 x float> %i.bcf, %i.bci
  %i.bck = getelementptr [4 x i8], ptr %invariant.gep126.i.i, i64 %i.bcg ; 2 uses
  %wide.load649 = load <8 x float>, ptr %i.bck, align 4, !tbaa !19, !alias.scope !239, !noalias !240
  %i.bcl = fmul <8 x float> %i.bcj, splat (float f0x34000000)
  %i.bcm = fcmp ole <8 x float> %wide.load649, %i.bcl
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr align 4 %i.bck, <8 x i1> %i.bcm), !tbaa !19, !alias.scope !239, !noalias !240
  %index.next650 = add nuw i64 %index646, 8       ; 2 uses
  %i.bcn = icmp eq i64 %index.next650, %n.vec644
  br i1 %i.bcn, label %vec.epilog.middle.block651, label %vec.epilog.vector.body645, !llvm.loop !224

vec.epilog.middle.block651:                       ; preds = %vec.epilog.vector.body645
  %cmp.n652 = icmp eq i64 %i.azu, %n.vec644
  br i1 %cmp.n652, label %._crit_edge37.i.i, label %vec.epilog.scalar.ph640.preheader

vec.epilog.scalar.ph640.preheader:                ; preds = %iter.check638, %vector.memcheck610, %vec.epilog.iter.check639, %vec.epilog.middle.block651
  %indvars.iv70.i.i.ph = phi i64 [ %i.azr, %iter.check638 ], [ %i.azr, %vector.memcheck610 ], [ %i.bas, %vec.epilog.iter.check639 ], [ %i.bcc, %vec.epilog.middle.block651 ] ; 5 uses
  %i.bco = sub nsw i64 %wide.trip.count73.i.i, %indvars.iv70.i.i.ph
  %xtraiter825 = and i64 %i.bco, 1
  %lcmp.mod826.not = icmp eq i64 %xtraiter825, 0
  br i1 %lcmp.mod826.not, label %vec.epilog.scalar.ph640.prol.loopexit, label %vec.epilog.scalar.ph640.prol

vec.epilog.scalar.ph640.prol:                     ; preds = %vec.epilog.scalar.ph640.preheader
  %gep123.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep122.i.i, i64 %indvars.iv70.i.i.ph
  %indvars.iv.next71.i.i.prol = add nsw i64 %indvars.iv70.i.i.ph, 1 ; 3 uses
  %i.bcp = load <2 x float>, ptr %gep123.i.i.prol, align 4, !tbaa !19
  %i.bcq = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bcp) ; 2 uses
  %shift744.prol = shufflevector <2 x float> %i.bcq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop745.prol = fadd <2 x float> %i.bcq, %shift744.prol
  %i.bcr = extractelement <2 x float> %foldExtExtBinop745.prol, i64 0
  %gep127.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep126.i.i, i64 %indvars.iv.next71.i.i.prol ; 2 uses
  %i.bcs = load float, ptr %gep127.i.i.prol, align 4, !tbaa !19
  %i.bct = fmul float %i.bcr, f0x34000000
  %i.bcu = fcmp ugt float %i.bcs, %i.bct
  br i1 %i.bcu, label %vec.epilog.scalar.ph640.prol.loopexit, label %bb.eb

bb.eb:                                            ; preds = %vec.epilog.scalar.ph640.prol
  store float 0.000000e+00, ptr %gep127.i.i.prol, align 4, !tbaa !19
  br label %vec.epilog.scalar.ph640.prol.loopexit

vec.epilog.scalar.ph640.prol.loopexit:            ; preds = %vec.epilog.scalar.ph640.prol, %bb.eb, %vec.epilog.scalar.ph640.preheader
  %indvars.iv70.i.i.unr = phi i64 [ %indvars.iv70.i.i.ph, %vec.epilog.scalar.ph640.preheader ], [ %indvars.iv.next71.i.i.prol, %bb.eb ], [ %indvars.iv.next71.i.i.prol, %vec.epilog.scalar.ph640.prol ]
  %i.bcv = add nsw i64 %wide.trip.count73.i.i, -1
  %i.bcw = icmp eq i64 %indvars.iv70.i.i.ph, %i.bcv
  br i1 %i.bcw, label %._crit_edge37.i.i, label %vec.epilog.scalar.ph640

vec.epilog.scalar.ph640:                          ; preds = %vec.epilog.scalar.ph640.prol.loopexit, %bb.ee
  %indvars.iv70.i.i = phi i64 [ %indvars.iv.next71.i.i.1, %bb.ee ], [ %indvars.iv70.i.i.unr, %vec.epilog.scalar.ph640.prol.loopexit ] ; 3 uses
  %gep123.i.i = getelementptr [4 x i8], ptr %invariant.gep122.i.i, i64 %indvars.iv70.i.i
  %indvars.iv.next71.i.i = add nsw i64 %indvars.iv70.i.i, 1 ; 2 uses
  %i.bcx = load <2 x float>, ptr %gep123.i.i, align 4, !tbaa !19
  %i.bcy = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bcx) ; 2 uses
  %shift744 = shufflevector <2 x float> %i.bcy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop745 = fadd <2 x float> %i.bcy, %shift744
  %i.bcz = extractelement <2 x float> %foldExtExtBinop745, i64 0
  %gep127.i.i = getelementptr [4 x i8], ptr %invariant.gep126.i.i, i64 %indvars.iv.next71.i.i ; 2 uses
  %i.bda = load float, ptr %gep127.i.i, align 4, !tbaa !19
  %i.bdb = fmul float %i.bcz, f0x34000000
  %i.bdc = fcmp ugt float %i.bda, %i.bdb
  br i1 %i.bdc, label %vec.epilog.scalar.ph640.1, label %bb.ec

bb.ec:                                            ; preds = %vec.epilog.scalar.ph640
  store float 0.000000e+00, ptr %gep127.i.i, align 4, !tbaa !19
  br label %vec.epilog.scalar.ph640.1

vec.epilog.scalar.ph640.1:                        ; preds = %bb.ec, %vec.epilog.scalar.ph640
  %gep123.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep122.i.i, i64 %indvars.iv.next71.i.i
  %indvars.iv.next71.i.i.1 = add nsw i64 %indvars.iv70.i.i, 2 ; 3 uses
  %i.bdd = load <2 x float>, ptr %gep123.i.i.1, align 4, !tbaa !19
  %i.bde = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bdd) ; 2 uses
  %shift744.1 = shufflevector <2 x float> %i.bde, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop745.1 = fadd <2 x float> %i.bde, %shift744.1
  %i.bdf = extractelement <2 x float> %foldExtExtBinop745.1, i64 0
end_hunk_3
