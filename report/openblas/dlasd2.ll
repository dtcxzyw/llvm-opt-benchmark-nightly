Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlasd2?download=true
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"DLASD2\00", align 1
@c__1 = internal global i32 1, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Epsilon\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@c_b30 = internal global double 0.000000e+00, align 8

; Function Attrs: nounwind uwtable
define void @dlasd2_(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr nofree noundef captures(none) %17, ptr noundef %18, ptr nofree noundef captures(none) %19, ptr nofree noundef captures(none) %20, ptr nofree noundef captures(none) %21, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %22) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 18 uses
  %i.b = alloca [4 x i32], align 16               ; 16 uses
  %i.c = alloca double, align 8                   ; 12 uses
  %i.d = alloca i32, align 4                      ; 12 uses
  %i.e = alloca i32, align 4                      ; 14 uses
  %i.f = alloca double, align 8                   ; 12 uses
  %i.g = alloca double, align 8                   ; 5 uses
  %i.h = alloca [4 x i32], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  %i.i = getelementptr inbounds i8, ptr %4, i64 -8 ; 14 uses
  %i.j = getelementptr inbounds i8, ptr %5, i64 -8 ; 15 uses
  %i.k = load i32, ptr %9, align 4, !tbaa !53     ; 5 uses
  %narrow = xor i32 %i.k, -1
  %i.l = sext i32 %narrow to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %8, i64 %i.l ; 4 uses
  %i.n = load i32, ptr %11, align 4, !tbaa !53    ; 13 uses
  %narrow466 = xor i32 %i.n, -1
  %i.o = sext i32 %narrow466 to i64               ; 5 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %10, i64 %i.o ; 12 uses
  %i.q = getelementptr inbounds i8, ptr %12, i64 -8 ; 11 uses
  %i.r = load i32, ptr %14, align 4, !tbaa !53    ; 11 uses
  %narrow485 = xor i32 %i.r, -1
  %i.s = sext i32 %narrow485 to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %13, i64 %i.s ; 10 uses
  %i.u = load i32, ptr %16, align 4, !tbaa !53    ; 8 uses
  %narrow486 = xor i32 %i.u, -1
  %i.v = sext i32 %narrow486 to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %15, i64 %i.v ; 15 uses
  %i.x = getelementptr inbounds i8, ptr %17, i64 -4 ; 11 uses
  %i.y = getelementptr inbounds i8, ptr %18, i64 -4 ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %19, i64 -4 ; 13 uses
  %i.aa = getelementptr inbounds i8, ptr %20, i64 -4 ; 12 uses
  %i.ab = getelementptr inbounds i8, ptr %21, i64 -4 ; 28 uses
  store i32 0, ptr %22, align 4, !tbaa !53
  %i.ac = load i32, ptr %0, align 4, !tbaa !53
  %i.ad = icmp slt i32 %i.ac, 1
  br i1 %i.ad, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = load i32, ptr %1, align 4, !tbaa !53
  %i.af = icmp slt i32 %i.ae, 1
  br i1 %i.af, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = load i32, ptr %2, align 4, !tbaa !53
  %switch = icmp ult i32 %i.ag, 2
  br i1 %switch, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.sink = phi i32 [ -1, %bb.a ], [ -2, %bb.b ], [ -3, %bb.c ]
  %.pr.neg.ph = phi i32 [ 1, %bb.a ], [ 2, %bb.b ], [ 3, %bb.c ]
  store i32 %.sink, ptr %22, align 4, !tbaa !53
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c
  %.not470 = phi i1 [ true, %bb.c ], [ false, %.sink.split ]
  %.pr.neg = phi i32 [ 0, %bb.c ], [ %.pr.neg.ph, %.sink.split ]
  %i.ah = load i32, ptr %0, align 4, !tbaa !53    ; 9 uses
  %i.ai = load i32, ptr %1, align 4, !tbaa !53    ; 2 uses
  %i.aj = add i32 %i.ai, %i.ah                    ; 12 uses
  %i.ak = add nsw i32 %i.aj, 1                    ; 10 uses
  store i32 %i.ak, ptr %i.e, align 4, !tbaa !53
  %i.al = load i32, ptr %2, align 4, !tbaa !53
  %i.am = add nsw i32 %i.ak, %i.al                ; 5 uses
  store i32 %i.am, ptr %i.d, align 4, !tbaa !53
  %i.an = load i32, ptr %9, align 4, !tbaa !53
  %.not468 = icmp sgt i32 %i.an, %i.aj
  br i1 %.not468, label %bb.e, label %.thread.sink.split

bb.e:                                             ; preds = %bb.d
  %i.ao = load i32, ptr %11, align 4, !tbaa !53
  %i.ap = icmp slt i32 %i.ao, %i.am
  br i1 %i.ap, label %.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = load i32, ptr %14, align 4, !tbaa !53
  %.not469 = icmp sgt i32 %i.aq, %i.aj
  br i1 %.not469, label %bb.g, label %.thread.sink.split

bb.g:                                             ; preds = %bb.f
  %i.ar = load i32, ptr %16, align 4, !tbaa !53
  %i.as = icmp slt i32 %i.ar, %i.am
  br i1 %i.as, label %.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not470, label %bb.i, label %.thread

.thread.sink.split:                               ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.sink688 = phi i32 [ -10, %bb.d ], [ -12, %bb.e ], [ -15, %bb.f ], [ -17, %bb.g ]
  %.neg.ph = phi i32 [ 10, %bb.d ], [ 12, %bb.e ], [ 15, %bb.f ], [ 17, %bb.g ]
  store i32 %.sink688, ptr %22, align 4, !tbaa !53
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.h
  %.neg = phi i32 [ %.pr.neg, %bb.h ], [ %.neg.ph, %.thread.sink.split ]
  store i32 %.neg, ptr %i.a, align 4, !tbaa !53
  %i.at = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i32 noundef 6) #6 ; 0 uses
  br label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.au = add nsw i32 %i.ah, 1                    ; 11 uses
  %i.av = add i32 %i.ah, 2                        ; 11 uses
  %i.aw = load double, ptr %6, align 8, !tbaa !55
  %i.ax = mul nsw i32 %i.au, %i.n                 ; 2 uses
  %i.ay = add nsw i32 %i.ax, %i.au
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.az
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !55
  %i.bc = fmul double %i.aw, %i.bb                ; 4 uses
  store double %i.bc, ptr %i.g, align 8, !tbaa !55
  store double %i.bc, ptr %5, align 8, !tbaa !55
  %i.bd = icmp sgt i32 %i.ah, 0
  br i1 %i.bd, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.be = zext nneg i32 %i.ah to i64              ; 8 uses
  %i.bf = sext i32 %i.ax to i64                   ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.p, i64 %i.bf ; 2 uses
  %min.iters.check = icmp ult i32 %i.ah, 28
  br i1 %min.iters.check, label %.lr.ph.preheader909, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %5, i64 8      ; 3 uses
  %i.bg = shl nuw nsw i64 %i.be, 3
  %i.bh = add nuw nsw i64 %i.bg, 8                ; 2 uses
  %scevgep696 = getelementptr i8, ptr %5, i64 %i.bh ; 3 uses
  %scevgep697 = getelementptr i8, ptr %4, i64 %i.bh ; 3 uses
  %scevgep698 = getelementptr i8, ptr %6, i64 8   ; 2 uses
  %i.bi = add nsw i64 %i.bf, %i.o
  %i.bj = shl nsw i64 %i.bi, 3
  %i.bk = getelementptr i8, ptr %10, i64 %i.bj
  %scevgep699 = getelementptr i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bl = add nsw i64 %i.bf, %i.o
  %i.bm = add nsw i64 %i.bl, %i.be
  %i.bn = shl nsw i64 %i.bm, 3
  %i.bo = getelementptr i8, ptr %10, i64 %i.bn
  %scevgep700 = getelementptr i8, ptr %i.bo, i64 8 ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep697
  %bound1 = icmp ult ptr %4, %scevgep696
  %found.conflict = and i1 %bound0, %bound1
  %bound0701 = icmp ult ptr %scevgep, %scevgep698
  %bound1702 = icmp ult ptr %6, %scevgep696
  %found.conflict703 = and i1 %bound0701, %bound1702
  %conflict.rdx = or i1 %found.conflict, %found.conflict703
  %bound0704 = icmp ult ptr %scevgep, %scevgep700
  %bound1705 = icmp ult ptr %scevgep699, %scevgep696
  %found.conflict706 = and i1 %bound0704, %bound1705
  %conflict.rdx707 = or i1 %conflict.rdx, %found.conflict706
  %bound0708 = icmp ult ptr %4, %scevgep698
  %bound1709 = icmp ult ptr %6, %scevgep697
  %found.conflict710 = and i1 %bound0708, %bound1709
  %conflict.rdx711 = or i1 %conflict.rdx707, %found.conflict710
  %bound0712 = icmp ult ptr %4, %scevgep700
  %bound1713 = icmp ult ptr %scevgep699, %scevgep697
  %found.conflict714 = and i1 %bound0712, %bound1713
  %conflict.rdx715 = or i1 %conflict.rdx711, %found.conflict714
  br i1 %conflict.rdx715, label %.lr.ph.preheader909, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.be, 2147483644              ; 2 uses
  %i.bp = and i64 %i.be, 3
  %i.bq = load double, ptr %6, align 8, !tbaa !55, !alias.scope !56
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.bq, i64 0
  %i.br = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bs = sub i64 %i.be, %index                   ; 6 uses
  %i.bt = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 -24
  %wide.load = load <4 x double>, ptr %i.bu, align 8, !tbaa !55, !alias.scope !57
  %i.bv = getelementptr [8 x i8], ptr %5, i64 %i.bs
  %i.bw = getelementptr i8, ptr %i.bv, i64 -24
  %reverse716 = fmul <4 x double> %i.br, %wide.load
  store <4 x double> %reverse716, ptr %i.bw, align 8, !tbaa !55, !alias.scope !58, !noalias !59
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.bs
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -24
  %wide.load717 = load <4 x double>, ptr %i.by, align 8, !tbaa !55, !alias.scope !60, !noalias !61
  %i.bz = getelementptr [8 x i8], ptr %4, i64 %i.bs
  %i.ca = getelementptr i8, ptr %i.bz, i64 -24
  store <4 x double> %wide.load717, ptr %i.ca, align 8, !tbaa !55, !alias.scope !60, !noalias !61
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bs
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -12
  %wide.load718 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !53, !alias.scope !62
  %i.cd = add nsw <4 x i32> %wide.load718, splat (i32 1)
  %i.ce = getelementptr [4 x i8], ptr %20, i64 %i.bs
  %i.cf = getelementptr i8, ptr %i.ce, i64 -12
  store <4 x i32> %i.cd, ptr %i.cf, align 4, !tbaa !53, !alias.scope !62
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.be
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader909

.lr.ph.preheader909:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.be, %vector.memcheck ], [ %i.be, %.lr.ph.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader909, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader909 ] ; 8 uses
  %i.ch = load double, ptr %6, align 8, !tbaa !55
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ci = load double, ptr %gep, align 8, !tbaa !55
  %i.cj = fmul double %i.ch, %i.ci
  %i.ck = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  store double %i.cj, ptr %i.ck, align 8, !tbaa !55
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !55
  %i.cn = getelementptr [8 x i8], ptr %4, i64 %indvars.iv
  store double %i.cm, ptr %i.cn, align 8, !tbaa !55
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !53
  %i.cq = add nsw i32 %i.cp, 1
  %i.cr = getelementptr [4 x i8], ptr %20, i64 %indvars.iv
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !53
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.cs = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.cs, label %.lr.ph, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.i
  %.not471497 = icmp sgt i32 %i.av, %i.am
  br i1 %.not471497, label %._crit_edge501, label %iter.check

iter.check:                                       ; preds = %._crit_edge
  %i.ct = mul nsw i32 %i.av, %i.n
  %i.cu = sext i32 %i.av to i64                   ; 10 uses
  %i.cv = sext i32 %i.ct to i64                   ; 3 uses
  %i.cw = sext i32 %i.am to i64                   ; 3 uses
  %invariant.gep676 = getelementptr [8 x i8], ptr %i.p, i64 %i.cv ; 3 uses
  %i.cx = add nsw i64 %i.cw, 1
  %i.cy = sub nsw i64 %i.cx, %i.cu                ; 7 uses
  %min.iters.check734 = icmp ult i64 %i.cy, 4
  br i1 %min.iters.check734, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck719

vector.memcheck719:                               ; preds = %iter.check
  %i.cz = shl nsw i64 %i.cu, 3
  %i.da = getelementptr i8, ptr %5, i64 %i.cz
  %scevgep720 = getelementptr i8, ptr %i.da, i64 -8 ; 2 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %i.cw, i64 %i.cu) ; 2 uses
  %i.db = shl nsw i64 %smax, 3
  %scevgep721 = getelementptr i8, ptr %5, i64 %i.db ; 2 uses
  %scevgep722 = getelementptr i8, ptr %7, i64 8
  %i.dc = add nsw i64 %i.cv, %i.o
  %i.dd = add nsw i64 %i.dc, %i.cu
  %i.de = shl nsw i64 %i.dd, 3
  %scevgep723 = getelementptr i8, ptr %10, i64 %i.de
  %i.df = add i64 %smax, %i.cv
  %i.dg = add i64 %i.df, %i.o
  %i.dh = shl nsw i64 %i.dg, 3
  %i.di = getelementptr i8, ptr %10, i64 %i.dh
  %scevgep724 = getelementptr i8, ptr %i.di, i64 8
  %bound0725 = icmp ult ptr %scevgep720, %scevgep722
  %bound1726 = icmp ult ptr %7, %scevgep721
  %found.conflict727 = and i1 %bound0725, %bound1726
  %bound0728 = icmp ult ptr %scevgep720, %scevgep724
end_hunk_0
begin_hunk_1_@dlasd2_:bb.a
  %i.te = getelementptr i8, ptr %i.td, i64 -4     ; 2 uses
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !53 ; 2 uses
  %i.tg = sext i32 %i.tf to i64
  %i.th = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.tg
  %i.ti = trunc i64 %indvars.iv614 to i32
  %i.tj = or disjoint i32 %i.ti, 1
  store i32 %i.tj, ptr %i.th, align 4, !tbaa !53
  %i.tk = add nsw i32 %i.tf, 1
  store i32 %i.tk, ptr %i.te, align 4, !tbaa !53
  %indvars.iv.next615.1 = add nuw nsw i64 %indvars.iv614, 2 ; 2 uses
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next615.1
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !53
  %i.tn = sext i32 %i.tm to i64
  %i.to = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.tn
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !53
  %i.tq = sext i32 %i.tp to i64
  %i.tr = getelementptr [4 x i8], ptr %i.h, i64 %i.tq
  %i.ts = getelementptr i8, ptr %i.tr, i64 -4     ; 2 uses
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !53 ; 2 uses
  %i.tu = sext i32 %i.tt to i64
  %i.tv = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.tu
  %i.tw = trunc nuw nsw i64 %indvars.iv.next615.1 to i32
  store i32 %i.tw, ptr %i.tv, align 4, !tbaa !53
  %i.tx = add nsw i32 %i.tt, 1
  store i32 %i.tx, ptr %i.ts, align 4, !tbaa !53
  %indvars.iv.next615.2 = add nuw nsw i64 %indvars.iv614, 3 ; 2 uses
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next615.2
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !53
  %i.ua = sext i32 %i.tz to i64
  %i.ub = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ua
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !53
  %i.ud = sext i32 %i.uc to i64
  %i.ue = getelementptr [4 x i8], ptr %i.h, i64 %i.ud
  %i.uf = getelementptr i8, ptr %i.ue, i64 -4     ; 2 uses
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !53 ; 2 uses
  %i.uh = sext i32 %i.ug to i64
  %i.ui = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.uh
  %i.uj = trunc nuw nsw i64 %indvars.iv.next615.2 to i32
  store i32 %i.uj, ptr %i.ui, align 4, !tbaa !53
  %i.uk = add nsw i32 %i.ug, 1
  store i32 %i.uk, ptr %i.uf, align 4, !tbaa !53
  %indvars.iv.next615.3 = add nuw nsw i64 %indvars.iv614, 4 ; 2 uses
  %niter928.next.3 = add i64 %niter928, 4         ; 2 uses
  %niter928.ncmp.3 = icmp eq i64 %niter928.next.3, %unroll_iter927
  br i1 %niter928.ncmp.3, label %.lr.ph558.preheader.unr-lcssa, label %.lr.ph553, !llvm.loop !37

.lr.ph558.preheader.unr-lcssa:                    ; preds = %.lr.ph553
  %lcmp.mod925.not = icmp eq i64 %xtraiter923, 0
  br i1 %lcmp.mod925.not, label %.lr.ph558.preheader, label %.lr.ph553.epil.preheader

.lr.ph553.epil.preheader:                         ; preds = %.lr.ph558.preheader.unr-lcssa, %._crit_edge549.loopexit
  %indvars.iv614.epil.init = phi i64 [ 2, %._crit_edge549.loopexit ], [ %indvars.iv.next615.3, %.lr.ph558.preheader.unr-lcssa ]
  %lcmp.mod926 = icmp ne i64 %xtraiter923, 0
  call void @llvm.assume(i1 %lcmp.mod926)
  br label %.lr.ph553.epil

.lr.ph553.epil:                                   ; preds = %.lr.ph553.epil, %.lr.ph553.epil.preheader
  %indvars.iv614.epil = phi i64 [ %indvars.iv614.epil.init, %.lr.ph553.epil.preheader ], [ %indvars.iv.next615.epil, %.lr.ph553.epil ] ; 3 uses
  %epil.iter924 = phi i64 [ 0, %.lr.ph553.epil.preheader ], [ %epil.iter924.next, %.lr.ph553.epil ]
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv614.epil
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !53
  %i.un = sext i32 %i.um to i64
  %i.uo = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.un
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !53
  %i.uq = sext i32 %i.up to i64
  %i.ur = getelementptr [4 x i8], ptr %i.h, i64 %i.uq
  %i.us = getelementptr i8, ptr %i.ur, i64 -4     ; 2 uses
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !53 ; 2 uses
  %i.uu = sext i32 %i.ut to i64
  %i.uv = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.uu
  %i.uw = trunc nuw nsw i64 %indvars.iv614.epil to i32
  store i32 %i.uw, ptr %i.uv, align 4, !tbaa !53
  %i.ux = add nsw i32 %i.ut, 1
  store i32 %i.ux, ptr %i.us, align 4, !tbaa !53
  %indvars.iv.next615.epil = add nuw nsw i64 %indvars.iv614.epil, 1
  %epil.iter924.next = add i64 %epil.iter924, 1   ; 2 uses
  %epil.iter924.cmp.not = icmp eq i64 %epil.iter924.next, %xtraiter923
  br i1 %epil.iter924.cmp.not, label %.lr.ph558.preheader, label %.lr.ph553.epil, !llvm.loop !38

.lr.ph558.preheader:                              ; preds = %.lr.ph553.epil, %.lr.ph558.preheader.unr-lcssa
  store i32 %i.ph, ptr %i.a, align 4, !tbaa !53
  %i.uy = sext i32 %i.r to i64
  %i.uz = sext i32 %i.u to i64
  %invariant.gep680 = getelementptr [8 x i8], ptr %i.w, i64 %i.uz
  br label %.lr.ph558

.lr.ph558:                                        ; preds = %.lr.ph558.preheader, %.lr.ph558
  %indvars.iv619 = phi i64 [ 2, %.lr.ph558.preheader ], [ %indvars.iv.next620, %.lr.ph558 ] ; 7 uses
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv619
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !53
  %i.vc = sext i32 %i.vb to i64
  %i.vd = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.vc
  %i.ve = load double, ptr %i.vd, align 8, !tbaa !55
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv619
  store double %i.ve, ptr %i.vf, align 8, !tbaa !55
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv619
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !53
  %i.vi = sext i32 %i.vh to i64
  %i.vj = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.vi
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !53
  %i.vl = sext i32 %i.vk to i64
  %i.vm = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.vl
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !53
  %i.vo = sext i32 %i.vn to i64
  %i.vp = getelementptr [4 x i8], ptr %i.aa, i64 %i.vo
  %i.vq = getelementptr i8, ptr %i.vp, i64 4
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !53 ; 2 uses
  %.not489 = icmp sle i32 %i.vr, %i.au
  %i.vs = sext i1 %.not489 to i32
  %spec.select490 = add nsw i32 %i.vr, %i.vs      ; 2 uses
  %i.vt = mul nsw i32 %spec.select490, %i.k
  %i.vu = sext i32 %i.vt to i64
  %i.vv = getelementptr [8 x i8], ptr %i.m, i64 %i.vu
  %i.vw = getelementptr i8, ptr %i.vv, i64 8
  %i.vx = mul nsw i64 %indvars.iv619, %i.uy
  %i.vy = getelementptr [8 x i8], ptr %i.t, i64 %i.vx
  %i.vz = getelementptr i8, ptr %i.vy, i64 8
  call void @dcopy_(ptr noundef nonnull %i.e, ptr noundef %i.vw, ptr noundef nonnull @c__1, ptr noundef %i.vz, ptr noundef nonnull @c__1) #6
  %i.wa = add nsw i32 %spec.select490, %i.n
  %i.wb = sext i32 %i.wa to i64
  %i.wc = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.wb
  %gep681 = getelementptr [8 x i8], ptr %invariant.gep680, i64 %indvars.iv619
  call void @dcopy_(ptr noundef nonnull %i.d, ptr noundef %i.wc, ptr noundef nonnull %11, ptr noundef %gep681, ptr noundef nonnull %16) #6
  %indvars.iv.next620 = add nuw nsw i64 %indvars.iv619, 1
  %i.wd = load i32, ptr %i.a, align 4, !tbaa !53
  %i.we = sext i32 %i.wd to i64
  %.not484.not = icmp slt i64 %indvars.iv619, %i.we
  br i1 %.not484.not, label %.lr.ph558, label %._crit_edge559, !llvm.loop !39

._crit_edge559:                                   ; preds = %.lr.ph558, %._crit_edge554.thread.critedge
  store double 0.000000e+00, ptr %12, align 8, !tbaa !55
  %i.wf = fmul double %i.lf, 5.000000e-01         ; 2 uses
  %i.wg = load double, ptr %i.kk, align 8, !tbaa !55
  %i.wh = call double @llvm.fabs.f64(double %i.wg)
  %i.wi = fcmp ugt double %i.wh, %i.wf
  br i1 %i.wi, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge559
  store double %i.wf, ptr %i.kk, align 8, !tbaa !55
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge559
  %i.wj = load i32, ptr %i.d, align 4, !tbaa !53  ; 2 uses
  %i.wk = load i32, ptr %i.e, align 4, !tbaa !53
  %i.wl = icmp sgt i32 %i.wj, %i.wk
  br i1 %i.wl, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.wm = sext i32 %i.wj to i64
  %i.wn = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.wm
  %i.wo = call double @dlapy2_(ptr noundef nonnull %i.g, ptr noundef nonnull %i.wn) #6 ; 4 uses
  store double %i.wo, ptr %5, align 8, !tbaa !55
  %i.wp = fcmp ugt double %i.wo, %i.lf
  br i1 %i.wp, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store double 1.000000e+00, ptr %i.c, align 8, !tbaa !55
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !55
  store double %i.lf, ptr %5, align 8, !tbaa !55
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.wq = load double, ptr %i.g, align 8, !tbaa !55
  %i.wr = fdiv double %i.wq, %i.wo
  store double %i.wr, ptr %i.c, align 8, !tbaa !55
  %i.ws = load i32, ptr %i.d, align 4, !tbaa !53
  %i.wt = sext i32 %i.ws to i64
  %i.wu = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.wt
  %i.wv = load double, ptr %i.wu, align 8, !tbaa !55
  %i.ww = fdiv double %i.wv, %i.wo
  store double %i.ww, ptr %i.f, align 8, !tbaa !55
  br label %bb.z

bb.w:                                             ; preds = %bb.s
  %i.wx = call double @llvm.fabs.f64(double %i.bc)
  %i.wy = fcmp ugt double %i.wx, %i.lf
  br i1 %i.wy, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store double %i.lf, ptr %5, align 8, !tbaa !55
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  store double %i.bc, ptr %5, align 8, !tbaa !55
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.u, %bb.v
  %i.wz = load i32, ptr %3, align 4, !tbaa !53
  %i.xa = add nsw i32 %i.wz, -1
  store i32 %i.xa, ptr %i.a, align 4, !tbaa !53
  %i.xb = sext i32 %i.r to i64
  %i.xc = getelementptr [8 x i8], ptr %i.t, i64 %i.xb
  %i.xd = getelementptr i8, ptr %i.xc, i64 16
  %i.xe = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @dcopy_(ptr noundef nonnull %i.a, ptr noundef %i.xd, ptr noundef nonnull @c__1, ptr noundef nonnull %i.xe, ptr noundef nonnull @c__1) #6
  call void @dlaset_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.e, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b30, ptr noundef nonnull @c_b30, ptr noundef %13, ptr noundef nonnull %14) #6
  %i.xf = add nsw i32 %i.au, %i.r
  %i.xg = sext i32 %i.xf to i64
  %i.xh = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.xg
  store double 1.000000e+00, ptr %i.xh, align 8, !tbaa !55
  %i.xi = load i32, ptr %i.d, align 4, !tbaa !53  ; 13 uses
  %i.xj = load i32, ptr %i.e, align 4, !tbaa !53  ; 5 uses
  %i.xk = icmp sgt i32 %i.xi, %i.xj
  br i1 %i.xk, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %.not487560 = icmp slt i32 %i.ah, 0
  br i1 %.not487560, label %._crit_edge564, label %.lr.ph563

.lr.ph563:                                        ; preds = %bb.aa
  %i.xl = load double, ptr %i.f, align 8, !tbaa !55
  %i.xm = fneg double %i.xl                       ; 6 uses
  %i.xn = load double, ptr %i.c, align 8, !tbaa !55 ; 6 uses
  %i.xo = sext i32 %i.n to i64                    ; 5 uses
  %i.xp = zext nneg i32 %i.au to i64              ; 2 uses
  %i.xq = sext i32 %i.xi to i64                   ; 2 uses
  %i.xr = sext i32 %i.u to i64                    ; 5 uses
  %wide.trip.count625 = zext i32 %i.av to i64     ; 5 uses
  %invariant.gep682 = getelementptr [8 x i8], ptr %i.p, i64 %i.xp ; 6 uses
  %invariant.gep684 = getelementptr [8 x i8], ptr %i.p, i64 %i.xq ; 6 uses
  %i.xs = add nsw i64 %wide.trip.count625, -1     ; 2 uses
  %min.iters.check861 = icmp ult i32 %i.av, 33
  br i1 %min.iters.check861, label %scalar.ph860.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph563
  %ident.check = icmp ne i32 %i.n, 1
  %ident.check842 = icmp ne i32 %i.u, 1
  %i.xt = or i1 %ident.check, %ident.check842
  br i1 %i.xt, label %scalar.ph860.preheader, label %vector.memcheck843

vector.memcheck843:                               ; preds = %vector.scevcheck
  %i.xu = shl nsw i64 %i.xq, 3                    ; 2 uses
  %i.xv = getelementptr i8, ptr %10, i64 %i.xu
  %scevgep844 = getelementptr i8, ptr %i.xv, i64 -8 ; 2 uses
  %i.xw = shl nuw nsw i64 %wide.trip.count625, 3  ; 3 uses
  %i.xx = getelementptr i8, ptr %10, i64 %i.xu
  %i.xy = getelementptr i8, ptr %i.xx, i64 %i.xw
  %scevgep845 = getelementptr i8, ptr %i.xy, i64 -16 ; 2 uses
  %i.xz = getelementptr i8, ptr %15, i64 %i.xw
  %scevgep846 = getelementptr i8, ptr %i.xz, i64 -8 ; 2 uses
  %i.ya = shl nuw nsw i64 %i.xp, 3                ; 2 uses
  %i.yb = getelementptr i8, ptr %10, i64 %i.ya
  %scevgep847 = getelementptr i8, ptr %i.yb, i64 -8 ; 2 uses
  %i.yc = getelementptr i8, ptr %10, i64 %i.xw
  %i.yd = getelementptr i8, ptr %i.yc, i64 %i.ya
  %scevgep848 = getelementptr i8, ptr %i.yd, i64 -16 ; 2 uses
  %bound0849 = icmp ult ptr %scevgep844, %scevgep846
  %bound1850 = icmp ult ptr %15, %scevgep845
  %found.conflict851 = and i1 %bound0849, %bound1850
  %bound0852 = icmp ult ptr %scevgep844, %scevgep848
  %bound1853 = icmp ult ptr %scevgep847, %scevgep845
  %found.conflict854 = and i1 %bound0852, %bound1853
  %conflict.rdx855 = or i1 %found.conflict851, %found.conflict854
  %bound0856 = icmp ult ptr %15, %scevgep848
  %bound1857 = icmp ult ptr %scevgep847, %scevgep846
  %found.conflict858 = and i1 %bound0856, %bound1857
  %conflict.rdx859 = or i1 %conflict.rdx855, %found.conflict858
  br i1 %conflict.rdx859, label %scalar.ph860.preheader, label %vector.ph862

vector.ph862:                                     ; preds = %vector.memcheck843
  %n.vec863 = and i64 %i.xs, -8                   ; 3 uses
  %i.ye = or disjoint i64 %n.vec863, 1
  %broadcast.splatinsert864 = insertelement <4 x double> poison, double %i.xm, i64 0
  %broadcast.splat865 = shufflevector <4 x double> %broadcast.splatinsert864, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert866 = insertelement <4 x double> poison, double %i.xn, i64 0
  %broadcast.splat867 = shufflevector <4 x double> %broadcast.splatinsert866, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body868

vector.body868:                                   ; preds = %vector.body868, %vector.ph862
  %index869 = phi i64 [ 0, %vector.ph862 ], [ %index.next874, %vector.body868 ] ; 2 uses
  %i.yf = or disjoint i64 %index869, 1            ; 3 uses
  %i.yg = getelementptr [8 x i8], ptr %invariant.gep682, i64 %i.yf ; 3 uses
  %i.yh = getelementptr i8, ptr %i.yg, i64 32     ; 2 uses
  %wide.load870 = load <4 x double>, ptr %i.yg, align 8, !tbaa !55, !alias.scope !73
  %wide.load871 = load <4 x double>, ptr %i.yh, align 8, !tbaa !55, !alias.scope !73
  %i.yi = fmul <4 x double> %wide.load870, %broadcast.splat865
  %i.yj = fmul <4 x double> %wide.load871, %broadcast.splat865
  %i.yk = getelementptr [8 x i8], ptr %invariant.gep684, i64 %i.yf ; 2 uses
  %i.yl = getelementptr i8, ptr %i.yk, i64 32
  store <4 x double> %i.yi, ptr %i.yk, align 8, !tbaa !55, !alias.scope !74, !noalias !75
  store <4 x double> %i.yj, ptr %i.yl, align 8, !tbaa !55, !alias.scope !74, !noalias !75
  %wide.load872 = load <4 x double>, ptr %i.yg, align 8, !tbaa !55, !alias.scope !73
  %wide.load873 = load <4 x double>, ptr %i.yh, align 8, !tbaa !55, !alias.scope !73
  %i.ym = fmul <4 x double> %broadcast.splat867, %wide.load872
  %i.yn = fmul <4 x double> %broadcast.splat867, %wide.load873
  %i.yo = getelementptr [8 x i8], ptr %i.w, i64 %i.yf ; 2 uses
  %i.yp = getelementptr i8, ptr %i.yo, i64 8
  %i.yq = getelementptr i8, ptr %i.yo, i64 40
  store <4 x double> %i.ym, ptr %i.yp, align 8, !tbaa !55, !alias.scope !76, !noalias !73
  store <4 x double> %i.yn, ptr %i.yq, align 8, !tbaa !55, !alias.scope !76, !noalias !73
  %index.next874 = add nuw i64 %index869, 8       ; 2 uses
  %i.yr = icmp eq i64 %index.next874, %n.vec863
  br i1 %i.yr, label %middle.block875, label %vector.body868, !llvm.loop !44

middle.block875:                                  ; preds = %vector.body868
  %cmp.n876 = icmp eq i64 %i.xs, %n.vec863
  br i1 %cmp.n876, label %._crit_edge564, label %scalar.ph860.preheader

scalar.ph860.preheader:                           ; preds = %vector.memcheck843, %vector.scevcheck, %.lr.ph563, %middle.block875
  %indvars.iv622.ph = phi i64 [ 1, %vector.memcheck843 ], [ 1, %vector.scevcheck ], [ 1, %.lr.ph563 ], [ %i.ye, %middle.block875 ] ; 4 uses
  %i.ys = sub nsw i64 %wide.trip.count625, %indvars.iv622.ph
  %xtraiter929 = and i64 %i.ys, 3                 ; 2 uses
  %lcmp.mod930.not = icmp eq i64 %xtraiter929, 0
  br i1 %lcmp.mod930.not, label %scalar.ph860.prol.loopexit, label %scalar.ph860.prol

scalar.ph860.prol:                                ; preds = %scalar.ph860.preheader, %scalar.ph860.prol
  %indvars.iv622.prol = phi i64 [ %indvars.iv.next623.prol, %scalar.ph860.prol ], [ %indvars.iv622.ph, %scalar.ph860.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph860.prol ], [ 0, %scalar.ph860.preheader ]
  %i.yt = mul nsw i64 %indvars.iv622.prol, %i.xo  ; 2 uses
  %gep683.prol = getelementptr [8 x i8], ptr %invariant.gep682, i64 %i.yt ; 2 uses
  %i.yu = load double, ptr %gep683.prol, align 8, !tbaa !55
  %i.yv = fmul double %i.yu, %i.xm
  %gep685.prol = getelementptr [8 x i8], ptr %invariant.gep684, i64 %i.yt
  store double %i.yv, ptr %gep685.prol, align 8, !tbaa !55
  %i.yw = load double, ptr %gep683.prol, align 8, !tbaa !55
  %i.yx = fmul double %i.xn, %i.yw
  %i.yy = mul nsw i64 %indvars.iv622.prol, %i.xr
  %i.yz = getelementptr [8 x i8], ptr %i.w, i64 %i.yy
  %i.za = getelementptr i8, ptr %i.yz, i64 8
  store double %i.yx, ptr %i.za, align 8, !tbaa !55
  %indvars.iv.next623.prol = add nuw nsw i64 %indvars.iv622.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter929
  br i1 %prol.iter.cmp.not, label %scalar.ph860.prol.loopexit, label %scalar.ph860.prol, !llvm.loop !45

scalar.ph860.prol.loopexit:                       ; preds = %scalar.ph860.prol, %scalar.ph860.preheader
  %indvars.iv622.unr = phi i64 [ %indvars.iv622.ph, %scalar.ph860.preheader ], [ %indvars.iv.next623.prol, %scalar.ph860.prol ]
  %i.zb = sub nsw i64 %indvars.iv622.ph, %wide.trip.count625
  %i.zc = icmp ugt i64 %i.zb, -4
  br i1 %i.zc, label %._crit_edge564, label %scalar.ph860

scalar.ph860:                                     ; preds = %scalar.ph860.prol.loopexit, %scalar.ph860
  %indvars.iv622 = phi i64 [ %indvars.iv.next623.3, %scalar.ph860 ], [ %indvars.iv622.unr, %scalar.ph860.prol.loopexit ] ; 6 uses
  %i.zd = mul nsw i64 %indvars.iv622, %i.xo       ; 2 uses
  %gep683 = getelementptr [8 x i8], ptr %invariant.gep682, i64 %i.zd ; 2 uses
  %i.ze = load double, ptr %gep683, align 8, !tbaa !55
  %i.zf = fmul double %i.ze, %i.xm
  %gep685 = getelementptr [8 x i8], ptr %invariant.gep684, i64 %i.zd
  store double %i.zf, ptr %gep685, align 8, !tbaa !55
  %i.zg = load double, ptr %gep683, align 8, !tbaa !55
  %i.zh = fmul double %i.xn, %i.zg
  %i.zi = mul nsw i64 %indvars.iv622, %i.xr
  %i.zj = getelementptr [8 x i8], ptr %i.w, i64 %i.zi
  %i.zk = getelementptr i8, ptr %i.zj, i64 8
  store double %i.zh, ptr %i.zk, align 8, !tbaa !55
  %indvars.iv.next623 = add nuw nsw i64 %indvars.iv622, 1 ; 2 uses
  %i.zl = mul nsw i64 %indvars.iv.next623, %i.xo  ; 2 uses
  %gep683.1 = getelementptr [8 x i8], ptr %invariant.gep682, i64 %i.zl ; 2 uses
  %i.zm = load double, ptr %gep683.1, align 8, !tbaa !55
  %i.zn = fmul double %i.zm, %i.xm
  %gep685.1 = getelementptr [8 x i8], ptr %invariant.gep684, i64 %i.zl
  store double %i.zn, ptr %gep685.1, align 8, !tbaa !55
  %i.zo = load double, ptr %gep683.1, align 8, !tbaa !55
  %i.zp = fmul double %i.xn, %i.zo
  %i.zq = mul nsw i64 %indvars.iv.next623, %i.xr
  %i.zr = getelementptr [8 x i8], ptr %i.w, i64 %i.zq
  %i.zs = getelementptr i8, ptr %i.zr, i64 8
  store double %i.zp, ptr %i.zs, align 8, !tbaa !55
  %indvars.iv.next623.1 = add nuw nsw i64 %indvars.iv622, 2 ; 2 uses
  %i.zt = mul nsw i64 %indvars.iv.next623.1, %i.xo ; 2 uses
  %gep683.2 = getelementptr [8 x i8], ptr %invariant.gep682, i64 %i.zt ; 2 uses
  %i.zu = load double, ptr %gep683.2, align 8, !tbaa !55
  %i.zv = fmul double %i.zu, %i.xm
  %gep685.2 = getelementptr [8 x i8], ptr %invariant.gep684, i64 %i.zt
  store double %i.zv, ptr %gep685.2, align 8, !tbaa !55
  %i.zw = load double, ptr %gep683.2, align 8, !tbaa !55
  %i.zx = fmul double %i.xn, %i.zw
  %i.zy = mul nsw i64 %indvars.iv.next623.1, %i.xr
  %i.zz = getelementptr [8 x i8], ptr %i.w, i64 %i.zy
  %i.aaa = getelementptr i8, ptr %i.zz, i64 8
  store double %i.zx, ptr %i.aaa, align 8, !tbaa !55
  %indvars.iv.next623.2 = add nuw nsw i64 %indvars.iv622, 3 ; 2 uses
  %i.aab = mul nsw i64 %indvars.iv.next623.2, %i.xo ; 2 uses
  %gep683.3 = getelementptr [8 x i8], ptr %invariant.gep682, i64 %i.aab ; 2 uses
  %i.aac = load double, ptr %gep683.3, align 8, !tbaa !55
  %i.aad = fmul double %i.aac, %i.xm
  %gep685.3 = getelementptr [8 x i8], ptr %invariant.gep684, i64 %i.aab
  store double %i.aad, ptr %gep685.3, align 8, !tbaa !55
  %i.aae = load double, ptr %gep683.3, align 8, !tbaa !55
  %i.aaf = fmul double %i.xn, %i.aae
  %i.aag = mul nsw i64 %indvars.iv.next623.2, %i.xr
  %i.aah = getelementptr [8 x i8], ptr %i.w, i64 %i.aag
  %i.aai = getelementptr i8, ptr %i.aah, i64 8
  store double %i.aaf, ptr %i.aai, align 8, !tbaa !55
  %indvars.iv.next623.3 = add nuw nsw i64 %indvars.iv622, 4 ; 2 uses
  %exitcond626.3 = icmp eq i64 %indvars.iv.next623.3, %wide.trip.count625
  br i1 %exitcond626.3, label %._crit_edge564, label %scalar.ph860, !llvm.loop !46

._crit_edge564:                                   ; preds = %scalar.ph860.prol.loopexit, %scalar.ph860, %middle.block875, %bb.aa
  store i32 %i.xi, ptr %i.a, align 4, !tbaa !53
  %.not488565 = icmp sgt i32 %i.av, %i.xi
  br i1 %.not488565, label %.loopexit492, label %.lr.ph568

.lr.ph568:                                        ; preds = %._crit_edge564
  %i.aaj = load double, ptr %i.f, align 8, !tbaa !55 ; 6 uses
  %i.aak = load double, ptr %i.c, align 8, !tbaa !55 ; 6 uses
  %i.aal = sext i32 %i.av to i64                  ; 7 uses
  %i.aam = sext i32 %i.n to i64                   ; 5 uses
  %i.aan = sext i32 %i.xi to i64                  ; 2 uses
  %i.aao = sext i32 %i.u to i64                   ; 5 uses
  %i.aap = add i32 %i.xi, 1
  %invariant.gep686 = getelementptr [8 x i8], ptr %i.p, i64 %i.aan ; 6 uses
  %i.aaq = add i32 %i.xi, -2
  %i.aar = sub i32 %i.aaq, %i.ah                  ; 2 uses
  %i.aas = zext i32 %i.aar to i64                 ; 2 uses
  %i.aat = add nuw nsw i64 %i.aas, 1              ; 2 uses
  %min.iters.check890 = icmp ult i32 %i.aar, 23
  br i1 %min.iters.check890, label %scalar.ph889.preheader, label %vector.scevcheck878

vector.scevcheck878:                              ; preds = %.lr.ph568
  %ident.check879 = icmp ne i32 %i.n, 1
  %ident.check880 = icmp ne i32 %i.u, 1
  %i.aau = or i1 %ident.check879, %ident.check880
  br i1 %i.aau, label %scalar.ph889.preheader, label %vector.memcheck881

vector.memcheck881:                               ; preds = %vector.scevcheck878
  %i.aav = shl nsw i64 %i.aal, 3                  ; 2 uses
  %i.aaw = getelementptr i8, ptr %15, i64 %i.aav
  %scevgep882 = getelementptr i8, ptr %i.aaw, i64 -8
  %i.aax = shl nuw nsw i64 %i.aas, 3              ; 2 uses
  %i.aay = getelementptr i8, ptr %15, i64 %i.aav
  %scevgep883 = getelementptr i8, ptr %i.aay, i64 %i.aax
  %i.aaz = add nsw i64 %i.aan, %i.aal
  %i.aba = shl nsw i64 %i.aaz, 3                  ; 2 uses
  %i.abb = getelementptr i8, ptr %10, i64 %i.aba
  %scevgep884 = getelementptr i8, ptr %i.abb, i64 -16
  %i.abc = getelementptr i8, ptr %10, i64 %i.aba
  %i.abd = getelementptr i8, ptr %i.abc, i64 %i.aax
  %scevgep885 = getelementptr i8, ptr %i.abd, i64 -8
  %bound0886 = icmp ult ptr %scevgep882, %scevgep885
  %bound1887 = icmp ult ptr %scevgep884, %scevgep883
  %found.conflict888 = and i1 %bound0886, %bound1887
  br i1 %found.conflict888, label %scalar.ph889.preheader, label %vector.ph891

vector.ph891:                                     ; preds = %vector.memcheck881
  %n.vec892 = and i64 %i.aat, 8589934584          ; 3 uses
  %i.abe = add nsw i64 %n.vec892, %i.aal
  %broadcast.splatinsert893 = insertelement <4 x double> poison, double %i.aaj, i64 0
  %broadcast.splat894 = shufflevector <4 x double> %broadcast.splatinsert893, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert895 = insertelement <4 x double> poison, double %i.aak, i64 0
  %broadcast.splat896 = shufflevector <4 x double> %broadcast.splatinsert895, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body897

vector.body897:                                   ; preds = %vector.body897, %vector.ph891
  %index898 = phi i64 [ 0, %vector.ph891 ], [ %index.next903, %vector.body897 ] ; 2 uses
  %i.abf = add i64 %index898, %i.aal              ; 2 uses
  %i.abg = getelementptr [8 x i8], ptr %invariant.gep686, i64 %i.abf ; 4 uses
  %i.abh = getelementptr i8, ptr %i.abg, i64 32   ; 3 uses
  %wide.load899 = load <4 x double>, ptr %i.abg, align 8, !tbaa !55, !alias.scope !77
  %wide.load900 = load <4 x double>, ptr %i.abh, align 8, !tbaa !55, !alias.scope !77
  %i.abi = fmul <4 x double> %broadcast.splat894, %wide.load899
  %i.abj = fmul <4 x double> %broadcast.splat894, %wide.load900
  %i.abk = getelementptr [8 x i8], ptr %i.w, i64 %i.abf ; 2 uses
  %i.abl = getelementptr i8, ptr %i.abk, i64 8
  %i.abm = getelementptr i8, ptr %i.abk, i64 40
  store <4 x double> %i.abi, ptr %i.abl, align 8, !tbaa !55, !alias.scope !78, !noalias !77
  store <4 x double> %i.abj, ptr %i.abm, align 8, !tbaa !55, !alias.scope !78, !noalias !77
  %wide.load901 = load <4 x double>, ptr %i.abg, align 8, !tbaa !55, !alias.scope !77
  %wide.load902 = load <4 x double>, ptr %i.abh, align 8, !tbaa !55, !alias.scope !77
  %i.abn = fmul <4 x double> %broadcast.splat896, %wide.load901
  %i.abo = fmul <4 x double> %broadcast.splat896, %wide.load902
  store <4 x double> %i.abn, ptr %i.abg, align 8, !tbaa !55, !alias.scope !77
  store <4 x double> %i.abo, ptr %i.abh, align 8, !tbaa !55, !alias.scope !77
  %index.next903 = add nuw i64 %index898, 8       ; 2 uses
  %i.abp = icmp eq i64 %index.next903, %n.vec892
  br i1 %i.abp, label %middle.block904, label %vector.body897, !llvm.loop !50

middle.block904:                                  ; preds = %vector.body897
  %cmp.n905 = icmp eq i64 %i.aat, %n.vec892
  br i1 %cmp.n905, label %.loopexit492, label %scalar.ph889.preheader

scalar.ph889.preheader:                           ; preds = %vector.memcheck881, %vector.scevcheck878, %.lr.ph568, %middle.block904
  %indvars.iv627.ph = phi i64 [ %i.aal, %vector.memcheck881 ], [ %i.aal, %vector.scevcheck878 ], [ %i.aal, %.lr.ph568 ], [ %i.abe, %middle.block904 ] ; 3 uses
  %i.abq = add i32 %i.xi, 1
  %i.abr = trunc i64 %indvars.iv627.ph to i32     ; 2 uses
  %i.abs = sub i32 %i.abq, %i.abr
  %i.abt = sub i32 %i.xi, %i.abr
  %xtraiter931 = and i32 %i.abs, 3                ; 2 uses
  %lcmp.mod932.not = icmp eq i32 %xtraiter931, 0
  br i1 %lcmp.mod932.not, label %scalar.ph889.prol.loopexit, label %scalar.ph889.prol

scalar.ph889.prol:                                ; preds = %scalar.ph889.preheader, %scalar.ph889.prol
  %indvars.iv627.prol = phi i64 [ %indvars.iv.next628.prol, %scalar.ph889.prol ], [ %indvars.iv627.ph, %scalar.ph889.preheader ] ; 3 uses
  %prol.iter933 = phi i32 [ %prol.iter933.next, %scalar.ph889.prol ], [ 0, %scalar.ph889.preheader ]
  %i.abu = mul nsw i64 %indvars.iv627.prol, %i.aam
  %gep687.prol = getelementptr [8 x i8], ptr %invariant.gep686, i64 %i.abu ; 3 uses
  %i.abv = load double, ptr %gep687.prol, align 8, !tbaa !55
  %i.abw = fmul double %i.aaj, %i.abv
  %i.abx = mul nsw i64 %indvars.iv627.prol, %i.aao
  %i.aby = getelementptr [8 x i8], ptr %i.w, i64 %i.abx
  %i.abz = getelementptr i8, ptr %i.aby, i64 8
  store double %i.abw, ptr %i.abz, align 8, !tbaa !55
  %i.aca = load double, ptr %gep687.prol, align 8, !tbaa !55
  %i.acb = fmul double %i.aak, %i.aca
  store double %i.acb, ptr %gep687.prol, align 8, !tbaa !55
  %indvars.iv.next628.prol = add nsw i64 %indvars.iv627.prol, 1 ; 2 uses
  %prol.iter933.next = add i32 %prol.iter933, 1   ; 2 uses
  %prol.iter933.cmp.not = icmp eq i32 %prol.iter933.next, %xtraiter931
  br i1 %prol.iter933.cmp.not, label %scalar.ph889.prol.loopexit, label %scalar.ph889.prol, !llvm.loop !51

scalar.ph889.prol.loopexit:                       ; preds = %scalar.ph889.prol, %scalar.ph889.preheader
  %indvars.iv627.unr = phi i64 [ %indvars.iv627.ph, %scalar.ph889.preheader ], [ %indvars.iv.next628.prol, %scalar.ph889.prol ]
  %i.acc = icmp ult i32 %i.abt, 3
  br i1 %i.acc, label %.loopexit492, label %scalar.ph889

scalar.ph889:                                     ; preds = %scalar.ph889.prol.loopexit, %scalar.ph889
  %indvars.iv627 = phi i64 [ %indvars.iv.next628.3, %scalar.ph889 ], [ %indvars.iv627.unr, %scalar.ph889.prol.loopexit ] ; 6 uses
  %i.acd = mul nsw i64 %indvars.iv627, %i.aam
  %gep687 = getelementptr [8 x i8], ptr %invariant.gep686, i64 %i.acd ; 3 uses
  %i.ace = load double, ptr %gep687, align 8, !tbaa !55
  %i.acf = fmul double %i.aaj, %i.ace
  %i.acg = mul nsw i64 %indvars.iv627, %i.aao
  %i.ach = getelementptr [8 x i8], ptr %i.w, i64 %i.acg
  %i.aci = getelementptr i8, ptr %i.ach, i64 8
  store double %i.acf, ptr %i.aci, align 8, !tbaa !55
  %i.acj = load double, ptr %gep687, align 8, !tbaa !55
  %i.ack = fmul double %i.aak, %i.acj
  store double %i.ack, ptr %gep687, align 8, !tbaa !55
  %indvars.iv.next628 = add nsw i64 %indvars.iv627, 1 ; 2 uses
  %i.acl = mul nsw i64 %indvars.iv.next628, %i.aam
  %gep687.1 = getelementptr [8 x i8], ptr %invariant.gep686, i64 %i.acl ; 3 uses
  %i.acm = load double, ptr %gep687.1, align 8, !tbaa !55
  %i.acn = fmul double %i.aaj, %i.acm
  %i.aco = mul nsw i64 %indvars.iv.next628, %i.aao
  %i.acp = getelementptr [8 x i8], ptr %i.w, i64 %i.aco
  %i.acq = getelementptr i8, ptr %i.acp, i64 8
  store double %i.acn, ptr %i.acq, align 8, !tbaa !55
  %i.acr = load double, ptr %gep687.1, align 8, !tbaa !55
  %i.acs = fmul double %i.aak, %i.acr
  store double %i.acs, ptr %gep687.1, align 8, !tbaa !55
  %indvars.iv.next628.1 = add nsw i64 %indvars.iv627, 2 ; 2 uses
  %i.act = mul nsw i64 %indvars.iv.next628.1, %i.aam
  %gep687.2 = getelementptr [8 x i8], ptr %invariant.gep686, i64 %i.act ; 3 uses
  %i.acu = load double, ptr %gep687.2, align 8, !tbaa !55
  %i.acv = fmul double %i.aaj, %i.acu
  %i.acw = mul nsw i64 %indvars.iv.next628.1, %i.aao
  %i.acx = getelementptr [8 x i8], ptr %i.w, i64 %i.acw
  %i.acy = getelementptr i8, ptr %i.acx, i64 8
  store double %i.acv, ptr %i.acy, align 8, !tbaa !55
  %i.acz = load double, ptr %gep687.2, align 8, !tbaa !55
  %i.ada = fmul double %i.aak, %i.acz
  store double %i.ada, ptr %gep687.2, align 8, !tbaa !55
  %indvars.iv.next628.2 = add nsw i64 %indvars.iv627, 3 ; 2 uses
  %i.adb = mul nsw i64 %indvars.iv.next628.2, %i.aam
  %gep687.3 = getelementptr [8 x i8], ptr %invariant.gep686, i64 %i.adb ; 3 uses
  %i.adc = load double, ptr %gep687.3, align 8, !tbaa !55
  %i.add = fmul double %i.aaj, %i.adc
  %i.ade = mul nsw i64 %indvars.iv.next628.2, %i.aao
  %i.adf = getelementptr [8 x i8], ptr %i.w, i64 %i.ade
  %i.adg = getelementptr i8, ptr %i.adf, i64 8
  store double %i.add, ptr %i.adg, align 8, !tbaa !55
  %i.adh = load double, ptr %gep687.3, align 8, !tbaa !55
  %i.adi = fmul double %i.aak, %i.adh
  store double %i.adi, ptr %gep687.3, align 8, !tbaa !55
  %indvars.iv.next628.3 = add nsw i64 %indvars.iv627, 4 ; 2 uses
  %lftr.wideiv630.3 = trunc i64 %indvars.iv.next628.3 to i32
  %exitcond631.not.3 = icmp eq i32 %i.aap, %lftr.wideiv630.3
  br i1 %exitcond631.not.3, label %.loopexit492, label %scalar.ph889, !llvm.loop !52

bb.ab:                                            ; preds = %bb.z
  %i.adj = add nsw i32 %i.au, %i.n
  %i.adk = sext i32 %i.adj to i64
  %i.adl = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.adk
  call void @dcopy_(ptr noundef nonnull %i.d, ptr noundef %i.adl, ptr noundef nonnull %11, ptr noundef %15, ptr noundef nonnull %16) #6
  %.pre640 = load i32, ptr %i.d, align 4, !tbaa !53
  %.pre641 = load i32, ptr %i.e, align 4, !tbaa !53
  br label %.loopexit492

.loopexit492:                                     ; preds = %scalar.ph889.prol.loopexit, %scalar.ph889, %middle.block904, %._crit_edge564, %bb.ab
  %i.adm = phi i32 [ %.pre641, %bb.ab ], [ %i.xj, %._crit_edge564 ], [ %i.xj, %middle.block904 ], [ %i.xj, %scalar.ph889 ], [ %i.xj, %scalar.ph889.prol.loopexit ] ; 2 uses
  %i.adn = phi i32 [ %.pre640, %bb.ab ], [ %i.xi, %._crit_edge564 ], [ %i.xi, %middle.block904 ], [ %i.xi, %scalar.ph889 ], [ %i.xi, %scalar.ph889.prol.loopexit ] ; 3 uses
  %i.ado = icmp sgt i32 %i.adn, %i.adm
  br i1 %i.ado, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.loopexit492
  %i.adp = add nsw i32 %i.adn, %i.n
  %i.adq = sext i32 %i.adp to i64
  %i.adr = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.adq
  %i.ads = add nsw i32 %i.adn, %i.u
  %i.adt = sext i32 %i.ads to i64
  %i.adu = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.adt
  call void @dcopy_(ptr noundef nonnull %i.d, ptr noundef %i.adr, ptr noundef nonnull %11, ptr noundef %i.adu, ptr noundef nonnull %16) #6
  %.pre642 = load i32, ptr %i.e, align 4, !tbaa !53
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.loopexit492
  %i.adv = phi i32 [ %.pre642, %bb.ac ], [ %i.adm, %.loopexit492 ] ; 2 uses
  %i.adw = load i32, ptr %3, align 4, !tbaa !53   ; 3 uses
  %i.adx = icmp sgt i32 %i.adv, %i.adw
  br i1 %i.adx, label %bb.ae, label %.loopexit.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.ady = sub nsw i32 %i.adv, %i.adw
  store i32 %i.ady, ptr %i.a, align 4, !tbaa !53
  %i.adz = add nsw i32 %i.adw, 1
  %i.aea = sext i32 %i.adz to i64                 ; 2 uses
  %i.aeb = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.aea
  %i.aec = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.aea
  call void @dcopy_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.aeb, ptr noundef nonnull @c__1, ptr noundef nonnull %i.aec, ptr noundef nonnull @c__1) #6
  %i.aed = load i32, ptr %i.e, align 4, !tbaa !53
  %i.aee = load i32, ptr %3, align 4, !tbaa !53   ; 2 uses
  %i.aef = sub nsw i32 %i.aed, %i.aee
  store i32 %i.aef, ptr %i.a, align 4, !tbaa !53
  %i.aeg = add nsw i32 %i.aee, 1                  ; 2 uses
  %i.aeh = mul nsw i32 %i.aeg, %i.r
  %i.aei = sext i32 %i.aeh to i64
  %i.aej = getelementptr [8 x i8], ptr %i.t, i64 %i.aei
  %i.aek = getelementptr i8, ptr %i.aej, i64 8
  %i.ael = mul nsw i32 %i.aeg, %i.k
  %i.aem = sext i32 %i.ael to i64
  %i.aen = getelementptr [8 x i8], ptr %i.m, i64 %i.aem
  %i.aeo = getelementptr i8, ptr %i.aen, i64 8
  call void @dlacpy_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef %i.aek, ptr noundef nonnull %14, ptr noundef %i.aeo, ptr noundef nonnull %9) #6
  %i.aep = load i32, ptr %i.e, align 4, !tbaa !53
  %i.aeq = load i32, ptr %3, align 4, !tbaa !53   ; 2 uses
  %i.aer = sub nsw i32 %i.aep, %i.aeq
  store i32 %i.aer, ptr %i.a, align 4, !tbaa !53
  %i.aes = add nsw i32 %i.aeq, 1                  ; 2 uses
  %i.aet = add nsw i32 %i.aes, %i.u
  %i.aeu = sext i32 %i.aet to i64
end_hunk_1
