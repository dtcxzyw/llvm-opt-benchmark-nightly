Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgejsv?download=true
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"DGEJSV\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"Epsilon\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"SafeMinimum\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@c__1 = internal global i32 1, align 4
@c_b34 = internal global double 0.000000e+00, align 8
@c_b35 = internal global double 1.000000e+00, align 8
@c__0 = internal global i32 0, align 4
@.str.17 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"NoU\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"NoV\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"Upper\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"Lower\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"Transpose\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"All\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"No Tr\00", align 1
@c_n1 = internal global i32 -1, align 4
@.str.26 = private unnamed_addr constant [6 x i8] c"No_Tr\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"NoTrans\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"No UD\00", align 1

; Function Attrs: nounwind uwtable
define void @dgejsv_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef initializes((0, 4)) %18) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %11 to i64                 ; 2 uses
  %i.b = ptrtoaddr ptr %15 to i64                 ; 4 uses
  %i.c = ptrtoaddr ptr %13 to i64                 ; 2 uses
  %i.d = alloca i32, align 4                      ; 219 uses
  %i.e = alloca i32, align 4                      ; 97 uses
  %i.f = alloca double, align 8                   ; 30 uses
  %i.g = alloca double, align 8                   ; 13 uses
  %i.h = alloca double, align 8                   ; 17 uses
  %i.i = alloca i32, align 4                      ; 32 uses
  %i.j = alloca double, align 8                   ; 54 uses
  %i.k = alloca i32, align 4                      ; 129 uses
  %i.l = alloca i32, align 4                      ; 24 uses
  %i.m = alloca double, align 8                   ; 5 uses
  %i.n = alloca double, align 8                   ; 5 uses
  %i.o = alloca i32, align 4                      ; 183 uses
  %i.p = alloca double, align 8                   ; 21 uses
  %i.q = alloca double, align 8                   ; 33 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #7
  %i.r = getelementptr inbounds i8, ptr %10, i64 -8 ; 27 uses
  %i.s = load i32, ptr %9, align 4, !tbaa !114    ; 28 uses
  %narrow = xor i32 %i.s, -1
  %i.t = sext i32 %narrow to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %8, i64 %i.t ; 45 uses
  %i.v = load i32, ptr %12, align 4, !tbaa !114   ; 32 uses
  %narrow2282 = xor i32 %i.v, -1
  %i.w = sext i32 %narrow2282 to i64              ; 3 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %11, i64 %i.w ; 40 uses
  %i.y = load i32, ptr %14, align 4, !tbaa !114   ; 50 uses
  %narrow2283 = xor i32 %i.y, -1
  %i.z = sext i32 %narrow2283 to i64              ; 3 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %13, i64 %i.z ; 65 uses
  %i.ab = getelementptr inbounds i8, ptr %15, i64 -8 ; 161 uses
  %i.ac = getelementptr inbounds i8, ptr %17, i64 -4 ; 38 uses
  %i.ad = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str) #7
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ae = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.1) #7
  %i.af = icmp ne i32 %i.ae, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ag = phi i1 [ true, %bb.a ], [ %i.af, %bb.b ] ; 12 uses
  %i.ah = zext i1 %i.ag to i32                    ; 7 uses
  %i.ai = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str.2) #7 ; 4 uses
  %i.aj = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str.3) #7
  %i.ak = icmp ne i32 %i.aj, 0
  %i.al = icmp ne i32 %i.ai, 0                    ; 3 uses
  %i.am = select i1 %i.ak, i1 true, i1 %i.al      ; 10 uses
  %i.an = zext i1 %i.am to i32                    ; 5 uses
  %i.ao = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #7
  %.not2100 = icmp eq i32 %i.ao, 0
  br i1 %.not2100, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ap = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.4) #7
  %i.aq = icmp ne i32 %i.ap, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ar = phi i1 [ true, %bb.c ], [ %i.aq, %bb.d ] ; 7 uses
  %i.as = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.5) #7
  %i.at = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.6) #7
  %i.au = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.7) #7
  %.not2101 = icmp eq i32 %i.au, 0
  br i1 %.not2101, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.av = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.4) #7
  %i.aw = icmp ne i32 %i.av, 0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ax = phi i1 [ true, %bb.e ], [ %i.aw, %bb.f ] ; 7 uses
  %i.ay = tail call i32 @lsame_(ptr noundef %4, ptr noundef nonnull @.str.8) #7
  %i.az = tail call i32 @lsame_(ptr noundef %3, ptr noundef nonnull @.str.5) #7
  %i.ba = tail call i32 @lsame_(ptr noundef %3, ptr noundef nonnull @.str.9) #7
  %i.bb = tail call i32 @lsame_(ptr noundef %5, ptr noundef nonnull @.str.10) #7
  %i.bc = icmp ne i32 %i.as, 0                    ; 2 uses
  %or.cond = select i1 %i.ar, i1 true, i1 %i.bc
  %i.bd = icmp ne i32 %i.at, 0                    ; 2 uses
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.bd
  %or.cond5 = select i1 %or.cond3, i1 true, i1 %i.ax
  br i1 %or.cond5, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.11) #7
  %.not2102 = icmp eq i32 %i.be, 0
  br i1 %.not2102, label %bb.am, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %i.ag, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.9) #7
  %.not2103 = icmp eq i32 %i.bf, 0
  br i1 %.not2103, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bg = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.12) #7
  %.not2104 = icmp eq i32 %i.bg, 0
  br i1 %.not2104, label %bb.am, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  br i1 %i.am, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str.9) #7
  %.not2105 = icmp eq i32 %i.bh, 0
  br i1 %.not2105, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.bi = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str.12) #7
  %.not2106.not = icmp eq i32 %i.bi, 0
  br i1 %.not2106.not, label %bb.am, label %.thread

bb.o:                                             ; preds = %bb.l
  %.old = icmp eq i32 %i.ai, 0
  %or.cond7.old = select i1 %.old, i1 true, i1 %i.ag
  br i1 %or.cond7.old, label %.thread, label %bb.am

.thread:                                          ; preds = %bb.m, %bb.n, %bb.o
  %i.bj = icmp ne i32 %i.az, 0                    ; 2 uses
  %i.bk = icmp ne i32 %i.ba, 0
  %or.cond9 = select i1 %i.bj, i1 true, i1 %i.bk
  br i1 %or.cond9, label %bb.p, label %bb.am

bb.p:                                             ; preds = %.thread
  %.not2107 = icmp eq i32 %i.ay, 0                ; 4 uses
  br i1 %.not2107, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bl = tail call i32 @lsame_(ptr noundef %4, ptr noundef nonnull @.str.9) #7
  %.not2108 = icmp eq i32 %i.bl, 0
  br i1 %.not2108, label %bb.am, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.not2109 = icmp eq i32 %i.bb, 0                ; 2 uses
  br i1 %.not2109, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bm = tail call i32 @lsame_(ptr noundef %5, ptr noundef nonnull @.str.9) #7
  %.not2110 = icmp eq i32 %i.bm, 0
  br i1 %.not2110, label %bb.am, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bn = load i32, ptr %6, align 4, !tbaa !114   ; 5 uses
  %i.bo = icmp slt i32 %i.bn, 0
  br i1 %i.bo, label %bb.am, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = load i32, ptr %7, align 4, !tbaa !114   ; 8 uses
  %or.cond2288 = icmp ugt i32 %i.bp, %i.bn
  br i1 %or.cond2288, label %bb.am, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = load i32, ptr %9, align 4, !tbaa !114
  %i.br = icmp slt i32 %i.bq, %i.bn
  br i1 %i.br, label %bb.am, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %i.ag, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bs = load i32, ptr %12, align 4, !tbaa !114
  %i.bt = icmp slt i32 %i.bs, %i.bn
  br i1 %i.bt, label %bb.am, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  br i1 %i.am, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bu = load i32, ptr %14, align 4, !tbaa !114
  %i.bv = icmp slt i32 %i.bu, %i.bp
  br i1 %i.bv, label %bb.am, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bw = shl i32 %i.bp, 2                        ; 2 uses
  %i.bx = or disjoint i32 %i.bw, 1                ; 3 uses
  %i.by = shl nuw i32 %i.bn, 1
  %i.bz = add nsw i32 %i.bp, %i.by                ; 5 uses
  store i32 %i.bz, ptr %i.e, align 4, !tbaa !114
  %i.ca = mul nuw nsw i32 %i.bp, %i.bp            ; 2 uses
  %i.cb = add nsw i32 %i.bw, %i.ca
  %i.cc = tail call i32 @llvm.smax.i32(i32 %i.bz, i32 7) ; 2 uses
  %i.cd = shl nuw i32 %i.bp, 1
  %i.ce = add i32 %i.cd, 6                        ; 2 uses
  %i.cf = mul i32 %i.ce, %i.bp
  %i.cg = tail call i32 @llvm.smax.i32(i32 %i.bz, i32 %i.cb) ; 2 uses
  %i.ch = add i32 %i.ce, %i.ca
  %or.cond11 = select i1 %i.ag, i1 true, i1 %i.am ; 2 uses
  %or.cond13 = select i1 %or.cond11, i1 true, i1 %i.ax
  br i1 %or.cond13, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ci = load i32, ptr %16, align 4, !tbaa !114
  %i.cj = tail call i32 @llvm.smax.i32(i32 %i.bx, i32 %i.bz)
end_hunk_0
begin_hunk_1_@dgejsv_:bb.a
  store double 1.000000e+00, ptr %13, align 8, !tbaa !116
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.hu = load double, ptr %10, align 8, !tbaa !116 ; 2 uses
  %i.hv = load double, ptr %i.p, align 8, !tbaa !116 ; 3 uses
  %i.hw = fmul double %i.dp, %i.hv
  %i.hx = fcmp olt double %i.hu, %i.hw
  br i1 %i.hx, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.hy = fdiv double %i.hu, %i.hv
  store double %i.hy, ptr %10, align 8, !tbaa !116
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.hz = phi double [ 1.000000e+00, %bb.bz ], [ %i.hv, %bb.by ] ; 2 uses
  %i.ia = fdiv double 1.000000e+00, %i.hz
  store double %i.ia, ptr %15, align 8, !tbaa !116
  %i.ib = getelementptr inbounds nuw i8, ptr %15, i64 8
  store double 1.000000e+00, ptr %i.ib, align 8, !tbaa !116
  %i.ic = load double, ptr %10, align 8, !tbaa !116 ; 2 uses
  %i.id = fcmp une double %i.ic, 0.000000e+00
  br i1 %i.id, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  store i32 1, ptr %17, align 4, !tbaa !114
  %i.ie = fdiv double %i.ic, %i.hz
  %i.if = fcmp ult double %i.ie, %i.dn
  %i.ig = getelementptr inbounds nuw i8, ptr %17, i64 4 ; 2 uses
  br i1 %i.if, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  store i32 1, ptr %i.ig, align 4, !tbaa !114
  br label %bb.cf

bb.cd:                                            ; preds = %bb.cb
  store i32 0, ptr %i.ig, align 4, !tbaa !114
  br label %bb.cf

bb.ce:                                            ; preds = %bb.ca
  store i32 0, ptr %17, align 4, !tbaa !114
  %i.ih = getelementptr inbounds nuw i8, ptr %17, i64 4
  store i32 0, ptr %i.ih, align 4, !tbaa !114
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cc, %bb.cd, %bb.ce
  %i.ii = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 0, ptr %i.ii, align 4, !tbaa !114
  br i1 %i.ax, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.ij = getelementptr inbounds nuw i8, ptr %15, i64 16
  store double 1.000000e+00, ptr %i.ij, align 8, !tbaa !116
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  br i1 %or.cond23, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.ik = getelementptr inbounds nuw i8, ptr %15, i64 24
  store <2 x double> splat (double 1.000000e+00), ptr %i.ik, align 8, !tbaa !116
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  br i1 %.not2107, label %bb.lq, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.il = getelementptr inbounds nuw i8, ptr %15, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.il, i8 0, i64 16, i1 false)
  br label %bb.lq

bb.cl:                                            ; preds = %bb.bs
  br i1 %.not2107, label %.thread2326, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.im = load i32, ptr %6, align 4, !tbaa !114   ; 2 uses
  %i.in = icmp eq i32 %i.im, %i.ez                ; 2 uses
  %or.cond37 = select i1 %i.ar, i1 true, i1 %i.in
  br i1 %or.cond37, label %bb.cn, label %.thread2329

.thread2326:                                      ; preds = %bb.cl
  br i1 %i.ar, label %.thread2326..thread2328_crit_edge, label %.thread2329

.thread2326..thread2328_crit_edge:                ; preds = %.thread2326
  %.pre3133 = load i32, ptr %6, align 4, !tbaa !114
  br label %.thread2328

bb.cn:                                            ; preds = %bb.cm
  br i1 %i.in, label %bb.co, label %.thread2328

bb.co:                                            ; preds = %bb.cn
  store i32 %i.ez, ptr %i.d, align 4, !tbaa !114
  store i32 1, ptr %i.k, align 4, !tbaa !114
  br label %.lr.ph2383

.lr.ph2383:                                       ; preds = %bb.co, %bb.cq
  %.019342381 = phi double [ %i.jk, %bb.cq ], [ -1.000000e+00, %bb.co ] ; 3 uses
  %.019372380 = phi double [ %.11938, %bb.cq ], [ %i.dp, %bb.co ] ; 4 uses
  %storemerge21272379 = phi i32 [ %i.jo, %bb.cq ], [ 1, %bb.co ]
  store double 0.000000e+00, ptr %i.q, align 8, !tbaa !116
  store double 1.000000e+00, ptr %i.j, align 8, !tbaa !116
  %i.io = add nsw i32 %storemerge21272379, %i.s
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.ip
  call void @dlassq_(ptr noundef nonnull %7, ptr noundef %i.iq, ptr noundef nonnull %9, ptr noundef nonnull %i.q, ptr noundef nonnull %i.j) #7
  %i.ir = load double, ptr %i.q, align 8, !tbaa !116 ; 2 uses
  %i.is = load double, ptr %i.p, align 8, !tbaa !116 ; 2 uses
  %i.it = fmul double %i.ir, %i.is
  %i.iu = load i32, ptr %6, align 4, !tbaa !114
  %i.iv = load i32, ptr %7, align 4, !tbaa !114
  %i.iw = add nsw i32 %i.iv, %i.iu
  %i.ix = load i32, ptr %i.k, align 4, !tbaa !114 ; 4 uses
  %i.iy = add nsw i32 %i.iw, %i.ix
  %i.iz = sext i32 %i.iy to i64
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.iz
  store double %i.it, ptr %i.ja, align 8, !tbaa !116
  %i.jb = load double, ptr %i.j, align 8, !tbaa !116
  %i.jc = call double @sqrt(double noundef %i.jb) #7
  %i.jd = fmul double %i.is, %i.jc
  %i.je = fmul double %i.ir, %i.jd                ; 6 uses
  %i.jf = load i32, ptr %7, align 4, !tbaa !114
  %i.jg = add nsw i32 %i.jf, %i.ix
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.jh
  store double %i.je, ptr %i.ji, align 8, !tbaa !116
  store double %.019342381, ptr %i.f, align 8, !tbaa !116
  %i.jj = fcmp oge double %.019342381, %i.je
  %i.jk = select i1 %i.jj, double %.019342381, double %i.je ; 2 uses
  %i.jl = fcmp une double %i.je, 0.000000e+00
  br i1 %i.jl, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %.lr.ph2383
  store double %.019372380, ptr %i.f, align 8, !tbaa !116
  %i.jm = fcmp ole double %.019372380, %i.je
  %i.jn = select i1 %i.jm, double %.019372380, double %i.je
  br label %bb.cq

bb.cq:                                            ; preds = %.lr.ph2383, %bb.cp
  %.11938 = phi double [ %i.jn, %bb.cp ], [ %.019372380, %.lr.ph2383 ] ; 2 uses
  %i.jo = add nsw i32 %i.ix, 1                    ; 2 uses
  store i32 %i.jo, ptr %i.k, align 4, !tbaa !114
  %i.jp = load i32, ptr %i.d, align 4, !tbaa !114
  %.not2128.not = icmp slt i32 %i.ix, %i.jp
  br i1 %.not2128.not, label %.lr.ph2383, label %.loopexit2365.thread, !llvm.loop !11

.thread2328:                                      ; preds = %.thread2326..thread2328_crit_edge, %bb.cn
  %i.jq = phi i32 [ %.pre3133, %.thread2326..thread2328_crit_edge ], [ %i.im, %bb.cn ] ; 2 uses
  store i32 %i.jq, ptr %i.d, align 4, !tbaa !114
  store i32 1, ptr %i.k, align 4, !tbaa !114
  %.not21262419 = icmp slt i32 %i.jq, 1
  br i1 %.not21262419, label %.thread2329, label %.lr.ph2423

.lr.ph2423:                                       ; preds = %.thread2328, %.lr.ph2423
  %.219392421 = phi double [ %i.kn, %.lr.ph2423 ], [ %i.dp, %.thread2328 ] ; 3 uses
  %storemerge21252420 = phi i32 [ %i.ko, %.lr.ph2423 ], [ 1, %.thread2328 ] ; 2 uses
  %i.jr = load double, ptr %i.p, align 8, !tbaa !116
  %i.js = add nsw i32 %storemerge21252420, %i.s
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.jt
  %i.jv = call i32 @idamax_(ptr noundef nonnull %7, ptr noundef %i.ju, ptr noundef nonnull %9) #7
  %i.jw = mul nsw i32 %i.jv, %i.s
  %i.jx = add nsw i32 %i.jw, %storemerge21252420
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.jy
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !116 ; 3 uses
  %i.kb = fcmp oge double %i.ka, 0.000000e+00
  %i.kc = fneg double %i.ka
  %i.kd = select i1 %i.kb, double %i.ka, double %i.kc
  %i.ke = fmul double %i.jr, %i.kd                ; 3 uses
  %i.kf = load i32, ptr %6, align 4, !tbaa !114
  %i.kg = load i32, ptr %7, align 4, !tbaa !114
  %i.kh = add nsw i32 %i.kg, %i.kf
  %i.ki = load i32, ptr %i.k, align 4, !tbaa !114 ; 3 uses
  %i.kj = add nsw i32 %i.kh, %i.ki
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.kk
  store double %i.ke, ptr %i.kl, align 8, !tbaa !116
  store double %.219392421, ptr %i.f, align 8, !tbaa !116
  %i.km = fcmp ole double %.219392421, %i.ke
  %i.kn = select i1 %i.km, double %.219392421, double %i.ke
  %i.ko = add nsw i32 %i.ki, 1                    ; 2 uses
  store i32 %i.ko, ptr %i.k, align 4, !tbaa !114
  %i.kp = load i32, ptr %i.d, align 4, !tbaa !114
  %.not2126.not = icmp slt i32 %i.ki, %i.kp
  br i1 %.not2126.not, label %.lr.ph2423, label %.thread2329, !llvm.loop !12

.loopexit2365.thread:                             ; preds = %bb.cq
  store double 0.000000e+00, ptr %i.q, align 8, !tbaa !116
  store double 1.000000e+00, ptr %i.j, align 8, !tbaa !116
  call void @dlassq_(ptr noundef nonnull %7, ptr noundef %10, ptr noundef nonnull @c__1, ptr noundef nonnull %i.q, ptr noundef nonnull %i.j) #7
  %i.kq = load double, ptr %i.j, align 8, !tbaa !116
  %i.kr = fdiv double 1.000000e+00, %i.kq         ; 3 uses
  store double %i.kr, ptr %i.j, align 8, !tbaa !116
  %i.ks = load i32, ptr %7, align 4, !tbaa !114   ; 3 uses
  %.not21302386 = icmp slt i32 %i.ks, 1
  br i1 %.not21302386, label %bb.cu, label %.lr.ph2390

.lr.ph2390:                                       ; preds = %.loopexit2365.thread
  %i.kt = load double, ptr %i.q, align 8, !tbaa !116
  %i.ku = add nuw i32 %i.ks, 1                    ; 2 uses
  %wide.trip.count2923 = zext i32 %i.ku to i64
  br label %bb.cr

bb.cr:                                            ; preds = %.lr.ph2390, %bb.ct
  %indvars.iv2920 = phi i64 [ 1, %.lr.ph2390 ], [ %indvars.iv.next2921, %bb.ct ] ; 2 uses
  %.019532388 = phi double [ 0.000000e+00, %.lr.ph2390 ], [ %.11954, %bb.ct ] ; 2 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv2920
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !116
  %i.kx = fdiv double %i.kw, %i.kt                ; 3 uses
  %i.ky = fmul double %i.kx, %i.kx
  %i.kz = fmul double %i.kr, %i.ky                ; 3 uses
  %i.la = fcmp une double %i.kz, 0.000000e+00
  br i1 %i.la, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.lb = call double @log(double noundef %i.kz) #7
  %i.lc = call double @llvm.fmuladd.f64(double %i.kz, double %i.lb, double %.019532388)
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cr, %bb.cs
  %.11954 = phi double [ %i.lc, %bb.cs ], [ %.019532388, %bb.cr ] ; 2 uses
  %indvars.iv.next2921 = add nuw nsw i64 %indvars.iv2920, 1 ; 2 uses
  %exitcond2924.not = icmp eq i64 %indvars.iv.next2921, %wide.trip.count2923
  br i1 %exitcond2924.not, label %._crit_edge2391, label %bb.cr, !llvm.loop !13

._crit_edge2391:                                  ; preds = %bb.ct
  store double %i.kx, ptr %i.f, align 8, !tbaa !116
  %.pre3131 = load i32, ptr %7, align 4, !tbaa !114
  br label %bb.cu

bb.cu:                                            ; preds = %._crit_edge2391, %.loopexit2365.thread
  %i.ld = phi i32 [ %.pre3131, %._crit_edge2391 ], [ %i.ks, %.loopexit2365.thread ]
  %storemerge2129.lcssa = phi i32 [ %i.ku, %._crit_edge2391 ], [ 1, %.loopexit2365.thread ]
  %.01953.lcssa = phi double [ %.11954, %._crit_edge2391 ], [ 0.000000e+00, %.loopexit2365.thread ]
  store i32 %storemerge2129.lcssa, ptr %i.k, align 4, !tbaa !114
  %i.le = fneg double %.01953.lcssa
  %i.lf = sitofp i32 %i.ld to double
  %i.lg = call double @log(double noundef %i.lf) #7
  %i.lh = fdiv double %i.le, %i.lg                ; 4 uses
  %i.li = load i32, ptr %7, align 4, !tbaa !114   ; 2 uses
  %i.lj = load i32, ptr %6, align 4, !tbaa !114   ; 3 uses
  %i.lk = add nsw i32 %i.lj, %i.li                ; 2 uses
  store i32 %i.lk, ptr %i.d, align 4, !tbaa !114
  %.not2132.not2396 = icmp sgt i32 %i.lj, 0
  br i1 %.not2132.not2396, label %.lr.ph2400, label %bb.cy

.lr.ph2400:                                       ; preds = %bb.cu
  %storemerge21312395 = add i32 %i.li, 1
  %i.ll = load double, ptr %i.q, align 8, !tbaa !116
  %i.lm = sext i32 %storemerge21312395 to i64
  %i.ln = sext i32 %i.lk to i64
  br label %bb.cv

bb.cv:                                            ; preds = %.lr.ph2400, %bb.cx
  %indvars.iv2925 = phi i64 [ %i.lm, %.lr.ph2400 ], [ %indvars.iv.next2926, %bb.cx ] ; 3 uses
  %.019292397 = phi double [ 0.000000e+00, %.lr.ph2400 ], [ %.11930, %bb.cx ] ; 2 uses
  %i.lo = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %indvars.iv2925
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !116
  %i.lq = fdiv double %i.lp, %i.ll                ; 3 uses
  %i.lr = fmul double %i.lq, %i.lq
  %i.ls = fmul double %i.kr, %i.lr                ; 3 uses
  %i.lt = fcmp une double %i.ls, 0.000000e+00
  br i1 %i.lt, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.lu = call double @log(double noundef %i.ls) #7
  %i.lv = call double @llvm.fmuladd.f64(double %i.ls, double %i.lu, double %.019292397)
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cv, %bb.cw
  %.11930 = phi double [ %i.lv, %bb.cw ], [ %.019292397, %bb.cv ] ; 2 uses
  %indvars.iv.next2926 = add nsw i64 %indvars.iv2925, 1
  %.not2132.not = icmp slt i64 %indvars.iv2925, %i.ln
  br i1 %.not2132.not, label %bb.cv, label %._crit_edge2401, !llvm.loop !14

._crit_edge2401:                                  ; preds = %bb.cx
  store double %i.lq, ptr %i.f, align 8, !tbaa !116
  %.pre3132 = load i32, ptr %6, align 4, !tbaa !114
  br label %bb.cy

bb.cy:                                            ; preds = %._crit_edge2401, %bb.cu
  %i.lw = phi i32 [ %.pre3132, %._crit_edge2401 ], [ %i.lj, %bb.cu ]
  %.01929.lcssa = phi double [ %.11930, %._crit_edge2401 ], [ 0.000000e+00, %bb.cu ]
  %i.lx = fneg double %.01929.lcssa
  %i.ly = sitofp i32 %i.lw to double
  %i.lz = call double @log(double noundef %i.ly) #7
  %i.ma = fdiv double %i.lx, %i.lz                ; 4 uses
  %i.mb = fcmp olt double %i.ma, %i.lh
  br i1 %i.mb, label %bb.cz, label %.thread2329

bb.cz:                                            ; preds = %bb.cy
  %i.mc = load i32, ptr %7, align 4, !tbaa !114   ; 14 uses
  %.not2134.not2407 = icmp sgt i32 %i.mc, 1
  br i1 %.not2134.not2407, label %.lr.ph2410, label %._crit_edge2411

.lr.ph2410:                                       ; preds = %bb.cz
  store i32 %i.mc, ptr %i.e, align 4, !tbaa !114
  %i.md = sext i32 %i.s to i64                    ; 6 uses
  %wide.trip.count2936 = zext nneg i32 %i.mc to i64 ; 5 uses
  %ident.check.not = icmp eq i32 %i.s, 1
  br label %bb.da

bb.da:                                            ; preds = %.lr.ph2410, %.loopexit3816
  %indvar = phi i64 [ 0, %.lr.ph2410 ], [ %indvar.next, %.loopexit3816 ] ; 2 uses
  %indvars.iv2928 = phi i64 [ 1, %.lr.ph2410 ], [ %indvars.iv.next2929, %.loopexit3816 ] ; 6 uses
  %i.me = xor i64 %indvar, -1
  %i.mf = add i64 %i.me, %wide.trip.count2936     ; 3 uses
  %i.mg = mul nsw i64 %indvars.iv2928, %i.md
  %invariant.gep = getelementptr [8 x i8], ptr %i.u, i64 %i.mg ; 6 uses
  %invariant.gep3431 = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv2928 ; 6 uses
  %min.iters.check = icmp ugt i64 %i.mf, 7
  %or.cond3817 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond3817, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %bb.da
  %n.vec = and i64 %i.mf, -8                      ; 3 uses
  %i.mh = add i64 %indvars.iv2928, %n.vec
  %invariant.op4041 = add nuw i64 %indvars.iv2928, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass4042 = add nuw i64 %index, %invariant.op4041 ; 2 uses
  %i.mi = getelementptr [8 x i8], ptr %invariant.gep, i64 %.reass4042 ; 3 uses
  %i.mj = getelementptr i8, ptr %i.mi, i64 32     ; 2 uses
  %wide.load = load <4 x double>, ptr %i.mi, align 8, !tbaa !116
  %wide.load3541 = load <4 x double>, ptr %i.mj, align 8, !tbaa !116
  %i.mk = getelementptr [8 x i8], ptr %invariant.gep3431, i64 %.reass4042 ; 3 uses
  %i.ml = getelementptr i8, ptr %i.mk, i64 32     ; 2 uses
  %wide.load3542 = load <4 x double>, ptr %i.mk, align 8, !tbaa !116
  %wide.load3543 = load <4 x double>, ptr %i.ml, align 8, !tbaa !116
  store <4 x double> %wide.load3542, ptr %i.mi, align 8, !tbaa !116
  store <4 x double> %wide.load3543, ptr %i.mj, align 8, !tbaa !116
  store <4 x double> %wide.load, ptr %i.mk, align 8, !tbaa !116
  store <4 x double> %wide.load3541, ptr %i.ml, align 8, !tbaa !116
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.mm = icmp eq i64 %index.next, %n.vec
  br i1 %i.mm, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.mf, %n.vec
  br i1 %cmp.n, label %.loopexit3816, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.da, %middle.block
  %indvars.iv2930.ph = phi i64 [ %indvars.iv2928, %bb.da ], [ %i.mh, %middle.block ] ; 4 uses
  %i.mn = sub i64 %wide.trip.count2936, %indvars.iv2930.ph
  %xtraiter3875 = and i64 %i.mn, 3                ; 2 uses
  %lcmp.mod3876.not = icmp eq i64 %xtraiter3875, 0
  br i1 %lcmp.mod3876.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv2930.prol = phi i64 [ %indvars.iv.next2931.prol, %scalar.ph.prol ], [ %indvars.iv2930.ph, %scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %indvars.iv.next2931.prol = add nuw nsw i64 %indvars.iv2930.prol, 1 ; 4 uses
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next2931.prol ; 2 uses
  %i.mo = load double, ptr %gep.prol, align 8, !tbaa !116
  %i.mp = mul nsw i64 %indvars.iv.next2931.prol, %i.md
  %gep3432.prol = getelementptr [8 x i8], ptr %invariant.gep3431, i64 %i.mp ; 2 uses
  %i.mq = load double, ptr %gep3432.prol, align 8, !tbaa !116
  store double %i.mq, ptr %gep.prol, align 8, !tbaa !116
  store double %i.mo, ptr %gep3432.prol, align 8, !tbaa !116
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter3875
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !16

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv2930.unr = phi i64 [ %indvars.iv2930.ph, %scalar.ph.preheader ], [ %indvars.iv.next2931.prol, %scalar.ph.prol ]
  %i.mr = sub i64 %indvars.iv2930.ph, %wide.trip.count2936
  %i.ms = icmp ugt i64 %i.mr, -4
  br i1 %i.ms, label %.loopexit3816, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv2930 = phi i64 [ %indvars.iv.next2931.3, %scalar.ph ], [ %indvars.iv2930.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %indvars.iv.next2931 = add nuw nsw i64 %indvars.iv2930, 1 ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next2931 ; 2 uses
  %i.mt = load double, ptr %gep, align 8, !tbaa !116
  %i.mu = mul nsw i64 %indvars.iv.next2931, %i.md
  %gep3432 = getelementptr [8 x i8], ptr %invariant.gep3431, i64 %i.mu ; 2 uses
  %i.mv = load double, ptr %gep3432, align 8, !tbaa !116
  store double %i.mv, ptr %gep, align 8, !tbaa !116
  store double %i.mt, ptr %gep3432, align 8, !tbaa !116
  %indvars.iv.next2931.1 = add nuw nsw i64 %indvars.iv2930, 2 ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next2931.1 ; 2 uses
  %i.mw = load double, ptr %gep.1, align 8, !tbaa !116
  %i.mx = mul nsw i64 %indvars.iv.next2931.1, %i.md
  %gep3432.1 = getelementptr [8 x i8], ptr %invariant.gep3431, i64 %i.mx ; 2 uses
  %i.my = load double, ptr %gep3432.1, align 8, !tbaa !116
  store double %i.my, ptr %gep.1, align 8, !tbaa !116
  store double %i.mw, ptr %gep3432.1, align 8, !tbaa !116
  %indvars.iv.next2931.2 = add nuw nsw i64 %indvars.iv2930, 3 ; 2 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next2931.2 ; 2 uses
  %i.mz = load double, ptr %gep.2, align 8, !tbaa !116
  %i.na = mul nsw i64 %indvars.iv.next2931.2, %i.md
  %gep3432.2 = getelementptr [8 x i8], ptr %invariant.gep3431, i64 %i.na ; 2 uses
  %i.nb = load double, ptr %gep3432.2, align 8, !tbaa !116
  store double %i.nb, ptr %gep.2, align 8, !tbaa !116
  store double %i.mz, ptr %gep3432.2, align 8, !tbaa !116
  %indvars.iv.next2931.3 = add nuw nsw i64 %indvars.iv2930, 4 ; 4 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next2931.3 ; 2 uses
  %i.nc = load double, ptr %gep.3, align 8, !tbaa !116
  %i.nd = mul nsw i64 %indvars.iv.next2931.3, %i.md
  %gep3432.3 = getelementptr [8 x i8], ptr %invariant.gep3431, i64 %i.nd ; 2 uses
  %i.ne = load double, ptr %gep3432.3, align 8, !tbaa !116
  store double %i.ne, ptr %gep.3, align 8, !tbaa !116
  store double %i.nc, ptr %gep3432.3, align 8, !tbaa !116
  %exitcond2934.not.3 = icmp eq i64 %indvars.iv.next2931.3, %wide.trip.count2936
  br i1 %exitcond2934.not.3, label %.loopexit3816, label %scalar.ph, !llvm.loop !17

.loopexit3816:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next2929 = add nuw nsw i64 %indvars.iv2928, 1 ; 2 uses
  %exitcond2937.not = icmp eq i64 %indvars.iv.next2929, %wide.trip.count2936
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond2937.not, label %._crit_edge2411, label %bb.da, !llvm.loop !18

._crit_edge2411:                                  ; preds = %.loopexit3816, %bb.cz
  store i32 %i.mc, ptr %i.d, align 4, !tbaa !114
  %.not21362413 = icmp slt i32 %i.mc, 1
  br i1 %.not21362413, label %._crit_edge2417, label %.lr.ph2416

.lr.ph2416:                                       ; preds = %._crit_edge2411
  %i.nf = load i32, ptr %6, align 4, !tbaa !114   ; 3 uses
  %invariant.op = add i32 %i.mc, %i.nf            ; 6 uses
  %i.ng = zext nneg i32 %i.mc to i64              ; 2 uses
  %i.nh = add nuw i32 %i.mc, 1                    ; 4 uses
  %wide.trip.count2941 = zext i32 %i.nh to i64    ; 4 uses
  %invariant.gep3433 = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ng ; 6 uses
  %i.ni = zext nneg i32 %i.mc to i64              ; 2 uses
  %min.iters.check3557 = icmp ult i32 %i.mc, 40
  br i1 %min.iters.check3557, label %scalar.ph3556.preheader, label %vector.scevcheck3544

vector.scevcheck3544:                             ; preds = %.lr.ph2416
  %i.nj = add nsw i64 %wide.trip.count2941, -2    ; 2 uses
  %i.nk = add i32 %i.mc, %i.nf
  %i.nl = add i32 %i.nk, 1                        ; 2 uses
  %i.nm = trunc i64 %i.nj to i32
  %i.nn = add i32 %i.nl, %i.nm
  %i.no = icmp slt i32 %i.nn, %i.nl
  %i.np = icmp ugt i64 %i.nj, 4294967295
  %i.nq = or i1 %i.no, %i.np
  br i1 %i.nq, label %scalar.ph3556.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck3544
  %i.nr = add i32 %i.mc, %i.nf
  %i.ns = add i32 %i.nr, 1
  %i.nt = sext i32 %i.ns to i64
  %i.nu = shl nsw i64 %i.nt, 3                    ; 2 uses
  %i.nv = getelementptr i8, ptr %15, i64 %i.nu
  %scevgep = getelementptr i8, ptr %i.nv, i64 -8  ; 2 uses
  %i.nw = shl nuw nsw i64 %wide.trip.count2941, 3 ; 3 uses
  %i.nx = getelementptr i8, ptr %15, i64 %i.nu
  %i.ny = getelementptr i8, ptr %i.nx, i64 %i.nw
  %scevgep3545 = getelementptr i8, ptr %i.ny, i64 -16 ; 2 uses
  %i.nz = getelementptr i8, ptr %10, i64 %i.nw
  %scevgep3546 = getelementptr i8, ptr %i.nz, i64 -8 ; 2 uses
  %i.oa = shl nuw nsw i64 %i.ng, 3                ; 2 uses
  %scevgep3547 = getelementptr i8, ptr %15, i64 %i.oa ; 2 uses
  %i.ob = getelementptr i8, ptr %15, i64 %i.oa
  %i.oc = getelementptr i8, ptr %i.ob, i64 %i.nw
  %scevgep3548 = getelementptr i8, ptr %i.oc, i64 -8 ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep3546
  %bound1 = icmp ult ptr %10, %scevgep3545
  %found.conflict = and i1 %bound0, %bound1
  %bound03549 = icmp ult ptr %scevgep, %scevgep3548
  %bound13550 = icmp ult ptr %scevgep3547, %scevgep3545
  %found.conflict3551 = and i1 %bound03549, %bound13550
  %conflict.rdx = or i1 %found.conflict, %found.conflict3551
  %bound03552 = icmp ult ptr %10, %scevgep3548
  %bound13553 = icmp ult ptr %scevgep3547, %scevgep3546
  %found.conflict3554 = and i1 %bound03552, %bound13553
  %conflict.rdx3555 = or i1 %conflict.rdx, %found.conflict3554
  br i1 %conflict.rdx3555, label %scalar.ph3556.preheader, label %vector.ph3558

vector.ph3558:                                    ; preds = %vector.memcheck
  %n.vec3559 = and i64 %i.ni, 2147483640          ; 3 uses
  %i.od = or disjoint i64 %n.vec3559, 1
  br label %vector.body3560

vector.body3560:                                  ; preds = %vector.body3560, %vector.ph3558
  %index3561 = phi i64 [ 0, %vector.ph3558 ], [ %index.next3566, %vector.body3560 ] ; 3 uses
  %i.oe = or disjoint i64 %index3561, 1           ; 2 uses
  %i.of = getelementptr [8 x i8], ptr %10, i64 %index3561 ; 3 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 32 ; 2 uses
  %wide.load3562 = load <4 x double>, ptr %i.of, align 8, !tbaa !116, !alias.scope !121, !noalias !122
end_hunk_1
begin_hunk_2_@dgejsv_:bb.a
  %storemerge2135.lcssa = phi i32 [ 1, %._crit_edge2411 ], [ %i.nh, %middle.block3567 ], [ %i.nh, %scalar.ph3556 ], [ %i.nh, %scalar.ph3556.prol.loopexit ]
  store i32 %storemerge2135.lcssa, ptr %i.k, align 4, !tbaa !114
  %i.px = load double, ptr %i.g, align 8, !tbaa !116
  store double %i.px, ptr %i.j, align 8, !tbaa !116
  store double %i.jk, ptr %i.g, align 8, !tbaa !116
  store double %.11938, ptr %i.h, align 8, !tbaa !116
  br i1 %i.am, label %bb.db, label %.thread2329

bb.db:                                            ; preds = %._crit_edge2417
  store i32 %i.mc, ptr %i.l, align 4, !tbaa !114
  br label %.thread2329

.thread2329:                                      ; preds = %.lr.ph2423, %bb.cm, %.thread2328, %.thread2326, %._crit_edge2417, %bb.db, %bb.cy
  %i.py = phi i1 [ false, %bb.cm ], [ true, %bb.cy ], [ true, %bb.db ], [ true, %._crit_edge2417 ], [ false, %.thread2326 ], [ false, %.thread2328 ], [ false, %.lr.ph2423 ]
  %.21955 = phi double [ 0.000000e+00, %bb.cm ], [ %i.lh, %bb.cy ], [ %i.lh, %bb.db ], [ %i.lh, %._crit_edge2417 ], [ 0.000000e+00, %.thread2326 ], [ 0.000000e+00, %.thread2328 ], [ 0.000000e+00, %.lr.ph2423 ]
  %.01952 = phi i32 [ %i.ah, %bb.cm ], [ %i.ah, %bb.cy ], [ 1, %bb.db ], [ 0, %._crit_edge2417 ], [ %i.ah, %.thread2326 ], [ %i.ah, %.thread2328 ], [ %i.ah, %.lr.ph2423 ] ; 4 uses
  %.01951 = phi i32 [ %i.an, %bb.cm ], [ %i.an, %bb.cy ], [ %i.ah, %bb.db ], [ %i.ah, %._crit_edge2417 ], [ %i.an, %.thread2326 ], [ %i.an, %.thread2328 ], [ %i.an, %.lr.ph2423 ] ; 4 uses
  %.21931 = phi double [ 0.000000e+00, %bb.cm ], [ %i.ma, %bb.cy ], [ %i.ma, %bb.db ], [ %i.ma, %._crit_edge2417 ], [ 0.000000e+00, %.thread2326 ], [ 0.000000e+00, %.thread2328 ], [ 0.000000e+00, %.lr.ph2423 ]
  %.01926.shrunk = phi i1 [ false, %bb.cm ], [ false, %bb.cy ], [ true, %bb.db ], [ true, %._crit_edge2417 ], [ false, %.thread2326 ], [ false, %.thread2328 ], [ false, %.lr.ph2423 ] ; 3 uses
  %.01925.shrunk = phi i1 [ %i.ar, %bb.cm ], [ %i.ar, %bb.cy ], [ true, %bb.db ], [ true, %._crit_edge2417 ], [ false, %.thread2326 ], [ %i.ar, %.thread2328 ], [ %i.ar, %.lr.ph2423 ] ; 5 uses
  %i.pz = call double @sqrt(double noundef %i.dp) #7
  %i.qa = load i32, ptr %7, align 4, !tbaa !114
  %i.qb = sitofp i32 %i.qa to double
  %i.qc = fdiv double %i.dp, %i.qb
  %i.qd = call double @sqrt(double noundef %i.qc) #7
  store double %i.qd, ptr %i.j, align 8, !tbaa !116
  call void @dlascl_(ptr noundef nonnull @.str.4, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.g, ptr noundef nonnull %i.j, ptr noundef nonnull %7, ptr noundef nonnull @c__1, ptr noundef %10, ptr noundef nonnull %7, ptr noundef nonnull %i.i) #7
  %i.qe = load double, ptr %i.h, align 8, !tbaa !116 ; 3 uses
  %i.qf = load double, ptr %i.g, align 8, !tbaa !116 ; 3 uses
  %i.qg = fmul double %i.dn, %i.qf
  %i.qh = fcmp ogt double %i.qe, %i.qg
  br i1 %i.qh, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %.thread2329
  %i.qi = fdiv double %i.qe, %i.qf
  %i.qj = load double, ptr %i.j, align 8, !tbaa !116 ; 2 uses
  %i.qk = fmul double %i.qi, %i.qj
  br label %bb.de

bb.dd:                                            ; preds = %.thread2329
  %i.ql = load double, ptr %i.j, align 8, !tbaa !116 ; 2 uses
  %i.qm = fmul double %i.qe, %i.ql
  %i.qn = fdiv double %i.qm, %i.qf
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.qo = phi double [ %i.ql, %bb.dd ], [ %i.qj, %bb.dc ]
  %storemerge2137 = phi double [ %i.qn, %bb.dd ], [ %i.qk, %bb.dc ]
  store double %storemerge2137, ptr %i.h, align 8, !tbaa !116
  %i.qp = load double, ptr %i.p, align 8, !tbaa !116
  %i.qq = fmul double %i.qp, %i.qo
  store double %i.qq, ptr %i.j, align 8, !tbaa !116
  call void @dlascl_(ptr noundef nonnull @.str.4, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.g, ptr noundef nonnull %i.j, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef nonnull %i.i) #7
  %i.qr = load double, ptr %i.j, align 8, !tbaa !116
  store double %i.qr, ptr %i.m, align 8, !tbaa !116
  %i.qs = load double, ptr %i.g, align 8, !tbaa !116
  store double %i.qs, ptr %i.n, align 8, !tbaa !116
  %.not2138.not2341 = or i1 %i.hf, %i.bj          ; 3 uses
  br i1 %.not2138.not2341, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.qt = call double @sqrt(double noundef %i.dn) #7
  %.pre3134 = load double, ptr %i.h, align 8, !tbaa !116
  br label %bb.dh

bb.dg:                                            ; preds = %bb.de
  %i.qu = load double, ptr %i.h, align 8, !tbaa !116 ; 2 uses
  %i.qv = call double @sqrt(double noundef %i.dn) #7
  %i.qw = fcmp olt double %i.qu, %i.qv
  %i.qx = icmp ne i32 %.01952, 0
  %or.cond39 = select i1 %i.qw, i1 %i.qx, i1 false
  %i.qy = icmp ne i32 %.01951, 0
  %or.cond41 = select i1 %or.cond39, i1 %i.qy, i1 false
  %spec.select = select i1 %or.cond41, i32 1, i32 %i.ai
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.qz = phi double [ %.pre3134, %bb.df ], [ %i.qu, %bb.dg ]
  %.pre3136 = phi double [ %i.qt, %bb.df ], [ %i.do, %bb.dg ] ; 3 uses
  %.01956 = phi i32 [ %i.ai, %bb.df ], [ %spec.select, %bb.dg ]
  store double %.pre3136, ptr %i.q, align 8, !tbaa !116
  %i.ra = fcmp olt double %i.qz, %.pre3136
  br i1 %i.ra, label %bb.di, label %.loopexit2364

bb.di:                                            ; preds = %bb.dh
  %i.rb = load i32, ptr %7, align 4, !tbaa !114   ; 3 uses
  store i32 %i.rb, ptr %i.d, align 4, !tbaa !114
  store i32 1, ptr %i.k, align 4, !tbaa !114
  %.not21402424 = icmp slt i32 %i.rb, 1
  br i1 %.not21402424, label %.loopexit2364, label %.lr.ph2427

.lr.ph2427:                                       ; preds = %bb.di, %bb.dk
  %i.rc = phi i32 [ %i.rp, %bb.dk ], [ %i.rb, %bb.di ]
  %i.rd = phi double [ %i.rr, %bb.dk ], [ %.pre3136, %bb.di ] ; 2 uses
  %storemerge21392425 = phi i32 [ %i.rs, %bb.dk ], [ 1, %bb.di ] ; 3 uses
  %i.re = sext i32 %storemerge21392425 to i64
  %i.rf = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.re
  %i.rg = load double, ptr %i.rf, align 8, !tbaa !116
  %i.rh = fcmp olt double %i.rg, %i.rd
  br i1 %i.rh, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %.lr.ph2427
  %i.ri = mul nsw i32 %storemerge21392425, %i.s
  %i.rj = sext i32 %i.ri to i64
  %i.rk = getelementptr [8 x i8], ptr %i.u, i64 %i.rj
  %i.rl = getelementptr i8, ptr %i.rk, i64 8
  call void @dlaset_(ptr noundef nonnull @.str.6, ptr noundef nonnull %6, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b34, ptr noundef nonnull @c_b34, ptr noundef %i.rl, ptr noundef nonnull %9) #7
  %i.rm = load i32, ptr %i.k, align 4, !tbaa !114 ; 2 uses
  %i.rn = sext i32 %i.rm to i64
  %i.ro = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.rn
  store double 0.000000e+00, ptr %i.ro, align 8, !tbaa !116
  %.pre3135 = load double, ptr %i.q, align 8, !tbaa !116
  %.pre3137 = load i32, ptr %i.d, align 4, !tbaa !114
  br label %bb.dk

bb.dk:                                            ; preds = %.lr.ph2427, %bb.dj
  %i.rp = phi i32 [ %i.rc, %.lr.ph2427 ], [ %.pre3137, %bb.dj ] ; 2 uses
  %i.rq = phi i32 [ %storemerge21392425, %.lr.ph2427 ], [ %i.rm, %bb.dj ] ; 2 uses
  %i.rr = phi double [ %i.rd, %.lr.ph2427 ], [ %.pre3135, %bb.dj ]
  %i.rs = add nsw i32 %i.rq, 1                    ; 2 uses
  store i32 %i.rs, ptr %i.k, align 4, !tbaa !114
  %.not2140.not = icmp slt i32 %i.rq, %i.rp
  br i1 %.not2140.not, label %.lr.ph2427, label %.loopexit2364, !llvm.loop !26

.loopexit2364:                                    ; preds = %bb.dk, %bb.di, %bb.dh
  br i1 %.01925.shrunk, label %bb.dl, label %bb.do

bb.dl:                                            ; preds = %.loopexit2364
  %i.rt = load i32, ptr %6, align 4, !tbaa !114   ; 2 uses
  %i.ru = add nsw i32 %i.rt, -1                   ; 2 uses
  store i32 %i.ru, ptr %i.d, align 4, !tbaa !114
  store i32 1, ptr %i.k, align 4, !tbaa !114
  %.not21422428 = icmp slt i32 %i.rt, 2
  br i1 %.not21422428, label %._crit_edge2432, label %.lr.ph2431

.lr.ph2431:                                       ; preds = %bb.dl, %bb.dn
  %storemerge21412429 = phi i32 [ %i.sw, %bb.dn ], [ 1, %bb.dl ] ; 2 uses
  %i.rv = load i32, ptr %6, align 4, !tbaa !114   ; 2 uses
  %reass.sub = sub i32 %i.rv, %storemerge21412429
  %i.rw = add i32 %reass.sub, 1
  store i32 %i.rw, ptr %i.e, align 4, !tbaa !114
  %i.rx = load i32, ptr %7, align 4, !tbaa !114
  %i.ry = add i32 %i.rv, %storemerge21412429
  %i.rz = add i32 %i.ry, %i.rx
  %i.sa = sext i32 %i.rz to i64
  %i.sb = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.sa
  %i.sc = call i32 @idamax_(ptr noundef nonnull %i.e, ptr noundef nonnull %i.sb, ptr noundef nonnull @c__1) #7
  %i.sd = load i32, ptr %i.k, align 4, !tbaa !114 ; 5 uses
  %i.se = add i32 %i.sc, -1                       ; 2 uses
  %i.sf = add i32 %i.se, %i.sd                    ; 2 uses
  %i.sg = load i32, ptr %7, align 4, !tbaa !114
  %i.sh = shl i32 %i.sg, 1
  %i.si = add nsw i32 %i.sh, %i.sd
  %i.sj = sext i32 %i.si to i64
  %i.sk = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.sj
  store i32 %i.sf, ptr %i.sk, align 4, !tbaa !114
  %.not2278 = icmp eq i32 %i.se, 0
  br i1 %.not2278, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %.lr.ph2431
  %i.sl = load i32, ptr %6, align 4, !tbaa !114
  %i.sm = load i32, ptr %7, align 4, !tbaa !114
  %i.sn = add nsw i32 %i.sm, %i.sl                ; 2 uses
  %i.so = add nsw i32 %i.sn, %i.sd
  %i.sp = sext i32 %i.so to i64
  %i.sq = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.sp ; 2 uses
  %i.sr = load double, ptr %i.sq, align 8, !tbaa !116 ; 2 uses
  store double %i.sr, ptr %i.j, align 8, !tbaa !116
  %i.ss = add nsw i32 %i.sn, %i.sf
  %i.st = sext i32 %i.ss to i64
  %i.su = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.st ; 2 uses
  %i.sv = load double, ptr %i.su, align 8, !tbaa !116
  store double %i.sv, ptr %i.sq, align 8, !tbaa !116
  store double %i.sr, ptr %i.su, align 8, !tbaa !116
  br label %bb.dn

bb.dn:                                            ; preds = %.lr.ph2431, %bb.dm
  %i.sw = add nsw i32 %i.sd, 1                    ; 2 uses
  store i32 %i.sw, ptr %i.k, align 4, !tbaa !114
  %i.sx = load i32, ptr %i.d, align 4, !tbaa !114
  %.not2142.not = icmp slt i32 %i.sd, %i.sx
  br i1 %.not2142.not, label %.lr.ph2431, label %._crit_edge2432.loopexit, !llvm.loop !27

._crit_edge2432.loopexit:                         ; preds = %bb.dn
  %.pre3138 = load i32, ptr %6, align 4, !tbaa !114
  %.pre3176 = add nsw i32 %.pre3138, -1
  br label %._crit_edge2432

._crit_edge2432:                                  ; preds = %._crit_edge2432.loopexit, %bb.dl
  %.pre-phi = phi i32 [ %.pre3176, %._crit_edge2432.loopexit ], [ %i.ru, %bb.dl ]
  store i32 %.pre-phi, ptr %i.d, align 4, !tbaa !114
  %i.sy = load i32, ptr %7, align 4, !tbaa !114
  %i.sz = shl i32 %i.sy, 1
  %i.ta = sext i32 %i.sz to i64
  %i.tb = getelementptr [4 x i8], ptr %i.ac, i64 %i.ta
  %i.tc = getelementptr i8, ptr %i.tb, i64 4
  %i.td = call i32 @dlaswp_(ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef nonnull @c__1, ptr noundef nonnull %i.d, ptr noundef %i.tc, ptr noundef nonnull @c__1) #7 ; 0 uses
  br label %bb.do

bb.do:                                            ; preds = %._crit_edge2432, %.loopexit2364
  %i.te = load i32, ptr %7, align 4, !tbaa !114   ; 3 uses
  %.not21442434 = icmp slt i32 %i.te, 1
  br i1 %.not21442434, label %._crit_edge2438, label %.lr.ph2437.preheader

.lr.ph2437.preheader:                             ; preds = %bb.do
  %i.tf = zext nneg i32 %i.te to i64
  %i.tg = shl nuw nsw i64 %i.tf, 2
  call void @llvm.memset.p0.i64(ptr align 4 %17, i8 0, i64 %i.tg, i1 false), !tbaa !114
  %.pre3139 = load i32, ptr %7, align 4, !tbaa !114
  br label %._crit_edge2438

._crit_edge2438:                                  ; preds = %.lr.ph2437.preheader, %bb.do
  %i.th = phi i32 [ %i.te, %bb.do ], [ %.pre3139, %.lr.ph2437.preheader ] ; 2 uses
  %i.ti = load i32, ptr %16, align 4, !tbaa !114
  %i.tj = sub nsw i32 %i.ti, %i.th
  store i32 %i.tj, ptr %i.d, align 4, !tbaa !114
  %i.tk = sext i32 %i.th to i64
  %i.tl = getelementptr [8 x i8], ptr %i.ab, i64 %i.tk
  %i.tm = getelementptr i8, ptr %i.tl, i64 8
  call void @dgeqp3_(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %17, ptr noundef %15, ptr noundef %i.tm, ptr noundef nonnull %i.d, ptr noundef nonnull %i.i) #7
  store i32 1, ptr %i.o, align 4, !tbaa !114
  br i1 %i.bd, label %bb.dp, label %bb.ds

bb.dp:                                            ; preds = %._crit_edge2438
  %i.tn = load i32, ptr %7, align 4, !tbaa !114
  %i.to = sitofp i32 %i.tn to double
  %i.tp = call double @sqrt(double noundef %i.to) #7
  %i.tq = fmul double %i.dm, %i.tp                ; 2 uses
  store double %i.tq, ptr %i.j, align 8, !tbaa !116
  %i.tr = load i32, ptr %7, align 4, !tbaa !114   ; 6 uses
  store i32 %i.tr, ptr %i.d, align 4, !tbaa !114
  %i.ts = add i32 %i.s, 1
  %.not21512477 = icmp slt i32 %i.tr, 2
  br i1 %.not21512477, label %.loopexit2361, label %.lr.ph2480

.lr.ph2480:                                       ; preds = %bb.dp
  %i.tt = load double, ptr %8, align 8, !tbaa !116 ; 4 uses
  store double %i.tt, ptr %i.f, align 8, !tbaa !116
  %i.tu = fcmp oge double %i.tt, 0.000000e+00
  %i.tv = fneg double %i.tt
  %i.tw = select i1 %i.tu, double %i.tt, double %i.tv
  %i.tx = fmul double %i.tq, %i.tw
  %i.ty = add nuw i32 %i.tr, 1                    ; 2 uses
  %wide.trip.count2966 = zext i32 %i.ty to i64
  br label %bb.dq

bb.dq:                                            ; preds = %.lr.ph2480, %bb.dr
  %indvars.iv2963 = phi i64 [ 2, %.lr.ph2480 ], [ %indvars.iv.next2964, %bb.dr ] ; 2 uses
  %i.tz = phi i32 [ 1, %.lr.ph2480 ], [ %i.uh, %bb.dr ] ; 2 uses
  %i.ua = trunc nuw nsw i64 %indvars.iv2963 to i32 ; 2 uses
  %i.ub = mul i32 %i.ts, %i.ua
  %i.uc = sext i32 %i.ub to i64
  %i.ud = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.uc
  %i.ue = load double, ptr %i.ud, align 8, !tbaa !116
  %i.uf = call double @llvm.fabs.f64(double %i.ue)
  %i.ug = fcmp ult double %i.uf, %i.tx
  br i1 %i.ug, label %.loopexit2361, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.uh = add nuw nsw i32 %i.tz, 1                ; 3 uses
  store i32 %i.uh, ptr %i.o, align 4, !tbaa !114
  %indvars.iv.next2964 = add nuw nsw i64 %indvars.iv2963, 1 ; 2 uses
  %exitcond2967.not = icmp eq i64 %indvars.iv.next2964, %wide.trip.count2966
  br i1 %exitcond2967.not, label %.loopexit2361, label %bb.dq, !llvm.loop !28

bb.ds:                                            ; preds = %._crit_edge2438
  %.not2145.not = select i1 %i.hf, i1 true, i1 %i.bc
  %i.ui = call double @sqrt(double noundef %i.dn) #7 ; 3 uses
  store double %i.ui, ptr %i.j, align 8, !tbaa !116
  %i.uj = load i32, ptr %7, align 4, !tbaa !114   ; 9 uses
  store i32 %i.uj, ptr %i.d, align 4, !tbaa !114
  %i.uk = add i32 %i.s, 1                         ; 5 uses
  %.not21492456 = icmp slt i32 %i.uj, 2           ; 2 uses
  br i1 %.not2145.not, label %bb.dt, label %bb.dx

bb.dt:                                            ; preds = %bb.ds
  br i1 %.not21492456, label %.loopexit2361, label %.lr.ph2459

.lr.ph2459:                                       ; preds = %bb.dt
  %i.ul = add nuw i32 %i.uj, 1
  %wide.trip.count2961 = zext i32 %i.ul to i64    ; 2 uses
  br i1 %.not2138.not2341, label %.lr.ph2459.split, label %.lr.ph2459.split.us

.lr.ph2459.split.us:                              ; preds = %.lr.ph2459, %bb.du
  %indvars.iv2953 = phi i64 [ %indvars.iv.next2954, %bb.du ], [ 2, %.lr.ph2459 ] ; 3 uses
  %i.um = phi i32 [ %i.vf, %bb.du ], [ 1, %.lr.ph2459 ] ; 2 uses
  %i.un = trunc nuw nsw i64 %indvars.iv2953 to i32 ; 2 uses
  %i.uo = mul i32 %i.uk, %i.un
  %i.up = sext i32 %i.uo to i64
  %i.uq = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.up
  %i.ur = load double, ptr %i.uq, align 8, !tbaa !116
  %i.us = call double @llvm.fabs.f64(double %i.ur) ; 2 uses
  %i.ut = trunc i64 %indvars.iv2953 to i32
  %i.uu = add i32 %i.ut, -1
  %i.uv = mul i32 %i.uu, %i.uk
  %i.uw = sext i32 %i.uv to i64
  %i.ux = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.uw
  %i.uy = load double, ptr %i.ux, align 8, !tbaa !116 ; 5 uses
  %i.uz = fcmp oge double %i.uy, 0.000000e+00
  %i.va = fneg double %i.uy
  %i.vb = select i1 %i.uz, double %i.uy, double %i.va
  %i.vc = fmul double %i.dm, %i.vb
  %i.vd = fcmp olt double %i.us, %i.vc
  %i.ve = fcmp olt double %i.us, %i.do
  %or.cond3487 = select i1 %i.vd, i1 true, i1 %i.ve
  br i1 %or.cond3487, label %.loopexit2361.sink.split, label %bb.du

bb.du:                                            ; preds = %.lr.ph2459.split.us
  %i.vf = add nuw nsw i32 %i.um, 1                ; 3 uses
  store i32 %i.vf, ptr %i.o, align 4, !tbaa !114
  %indvars.iv.next2954 = add nuw nsw i64 %indvars.iv2953, 1 ; 2 uses
  %exitcond2957.not = icmp eq i64 %indvars.iv.next2954, %wide.trip.count2961
  br i1 %exitcond2957.not, label %..loopexit2362_crit_edge2463, label %.lr.ph2459.split.us, !llvm.loop !29

.lr.ph2459.split:                                 ; preds = %.lr.ph2459, %bb.dw
  %indvars.iv2958 = phi i64 [ %indvars.iv.next2959, %bb.dw ], [ 2, %.lr.ph2459 ] ; 3 uses
  %i.vg = phi i32 [ %i.wd, %bb.dw ], [ 1, %.lr.ph2459 ] ; 3 uses
  %i.vh = trunc nuw nsw i64 %indvars.iv2958 to i32 ; 3 uses
  %i.vi = mul i32 %i.uk, %i.vh
  %i.vj = sext i32 %i.vi to i64
  %i.vk = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.vj
  %i.vl = load double, ptr %i.vk, align 8, !tbaa !116 ; 4 uses
  %i.vm = call double @llvm.fabs.f64(double %i.vl)
  %i.vn = trunc i64 %indvars.iv2958 to i32
  %i.vo = add i32 %i.vn, -1
  %i.vp = mul i32 %i.vo, %i.uk
  %i.vq = sext i32 %i.vp to i64
  %i.vr = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.vq
  %i.vs = load double, ptr %i.vr, align 8, !tbaa !116 ; 6 uses
  %i.vt = fcmp oge double %i.vs, 0.000000e+00
  %i.vu = fneg double %i.vs
  %i.vv = select i1 %i.vt, double %i.vs, double %i.vu
  %i.vw = fmul double %i.dm, %i.vv
  %i.vx = fcmp olt double %i.vm, %i.vw
  br i1 %i.vx, label %.loopexit2361.sink.split, label %bb.dv

bb.dv:                                            ; preds = %.lr.ph2459.split
  %i.vy = fcmp oge double %i.vl, 0.000000e+00
  %i.vz = fneg double %i.vl
  %i.wa = select i1 %i.vy, double %i.vl, double %i.vz ; 2 uses
  %i.wb = fcmp olt double %i.wa, %i.do
  %i.wc = fcmp olt double %i.wa, %i.ui
  %or.cond3489 = select i1 %i.wb, i1 true, i1 %i.wc
  br i1 %or.cond3489, label %.loopexit2361.sink.split, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.wd = add nuw nsw i32 %i.vg, 1                ; 3 uses
  store i32 %i.wd, ptr %i.o, align 4, !tbaa !114
  %indvars.iv.next2959 = add nuw nsw i64 %indvars.iv2958, 1 ; 2 uses
  %exitcond2962.not = icmp eq i64 %indvars.iv.next2959, %wide.trip.count2961
  br i1 %exitcond2962.not, label %..loopexit2362_crit_edge2463, label %.lr.ph2459.split, !llvm.loop !29

bb.dx:                                            ; preds = %bb.ds
  br i1 %.not21492456, label %.loopexit2361, label %.lr.ph2445

.lr.ph2445:                                       ; preds = %bb.dx
  %narrow3349 = add nuw i32 %i.uj, 1
  %i.we = add nuw i32 %i.uj, 1
  %wide.trip.count2951 = zext i32 %i.we to i64
  br label %bb.dy

bb.dy:                                            ; preds = %.lr.ph2445, %bb.dz
  %indvars.iv2948 = phi i64 [ 2, %.lr.ph2445 ], [ %indvars.iv.next2949, %bb.dz ] ; 2 uses
  %i.wf = phi i32 [ 1, %.lr.ph2445 ], [ %i.wo, %bb.dz ] ; 2 uses
  %i.wg = trunc nuw nsw i64 %indvars.iv2948 to i32 ; 2 uses
  %i.wh = mul i32 %i.uk, %i.wg
  %i.wi = sext i32 %i.wh to i64
  %i.wj = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.wi
  %i.wk = load double, ptr %i.wj, align 8, !tbaa !116 ; 3 uses
  %i.wl = call double @llvm.fabs.f64(double %i.wk) ; 2 uses
  %i.wm = fcmp olt double %i.wl, %i.do
  %i.wn = fcmp olt double %i.wl, %i.ui
  %or.cond3476 = select i1 %.not2138.not2341, i1 %i.wn, i1 false
  %or.cond3491 = select i1 %i.wm, i1 true, i1 %or.cond3476
  br i1 %or.cond3491, label %.loopexit2361.sink.split, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.wo = add nuw nsw i32 %i.wf, 1                ; 3 uses
  store i32 %i.wo, ptr %i.o, align 4, !tbaa !114
  %indvars.iv.next2949 = add nuw nsw i64 %indvars.iv2948, 1 ; 2 uses
  %exitcond2952.not = icmp eq i64 %indvars.iv.next2949, %wide.trip.count2951
  br i1 %exitcond2952.not, label %.loopexit2361.sink.split, label %bb.dy, !llvm.loop !30

..loopexit2362_crit_edge2463:                     ; preds = %bb.du, %bb.dw
  %i.wp = phi i32 [ %i.wd, %bb.dw ], [ %i.vf, %bb.du ]
  %.us-phi2474 = phi double [ %i.vs, %bb.dw ], [ %i.uy, %bb.du ]
  %.us-phi2475 = add nuw i32 %i.uj, 1
  br label %.loopexit2361.sink.split

.loopexit2361.sink.split:                         ; preds = %bb.dy, %bb.dz, %.lr.ph2459.split.us, %bb.dv, %.lr.ph2459.split, %..loopexit2362_crit_edge2463
  %.lcssa3417.sink.sink = phi double [ %i.vs, %bb.dv ], [ %i.uy, %.lr.ph2459.split.us ], [ %.us-phi2474, %..loopexit2362_crit_edge2463 ], [ %i.vs, %.lr.ph2459.split ], [ %i.wk, %bb.dz ], [ %i.wk, %bb.dy ]
  %storemerge2146.lcssa.sink.ph = phi i32 [ %i.vh, %bb.dv ], [ %i.un, %.lr.ph2459.split.us ], [ %.us-phi2475, %..loopexit2362_crit_edge2463 ], [ %i.vh, %.lr.ph2459.split ], [ %i.wg, %bb.dy ], [ %narrow3349, %bb.dz ]
  %.ph3485 = phi i32 [ %i.vg, %bb.dv ], [ %i.um, %.lr.ph2459.split.us ], [ %i.wp, %..loopexit2362_crit_edge2463 ], [ %i.vg, %.lr.ph2459.split ], [ %i.wf, %bb.dy ], [ %i.wo, %bb.dz ]
  store double %.lcssa3417.sink.sink, ptr %i.f, align 8, !tbaa !116
  br label %.loopexit2361

.loopexit2361:                                    ; preds = %bb.dr, %bb.dq, %.loopexit2361.sink.split, %bb.dx, %bb.dt, %bb.dp
  %storemerge2146.lcssa.sink = phi i32 [ 2, %bb.dx ], [ 2, %bb.dt ], [ 2, %bb.dp ], [ %storemerge2146.lcssa.sink.ph, %.loopexit2361.sink.split ], [ %i.ua, %bb.dq ], [ %i.ty, %bb.dr ]
  %i.wq = phi i32 [ %i.uj, %bb.dx ], [ %i.uj, %bb.dt ], [ %i.tr, %bb.dp ], [ %i.uj, %.loopexit2361.sink.split ], [ %i.tr, %bb.dq ], [ %i.tr, %bb.dr ] ; 8 uses
  %i.wr = phi i32 [ 1, %bb.dx ], [ 1, %bb.dt ], [ 1, %bb.dp ], [ %.ph3485, %.loopexit2361.sink.split ], [ %i.tz, %bb.dq ], [ %i.uh, %bb.dr ]
  store i32 %storemerge2146.lcssa.sink, ptr %i.k, align 4, !tbaa !114
  %i.ws = icmp eq i32 %i.wr, %i.wq
  br i1 %i.ws, label %bb.ea, label %.thread2336

bb.ea:                                            ; preds = %.loopexit2361
  store i32 %i.wq, ptr %i.d, align 4, !tbaa !114
  %.not21532484 = icmp slt i32 %i.wq, 2
  br i1 %.not21532484, label %bb.ed, label %.lr.ph2488

.lr.ph2488:                                       ; preds = %bb.ea
  %i.wt = add i32 %i.s, 1                         ; 5 uses
  %i.wu = zext nneg i32 %i.wq to i64
  %i.wv = add nsw i64 %i.wu, -1                   ; 2 uses
end_hunk_2
