begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"DSFRK \00", align 1

; Function Attrs: nounwind uwtable
define void @dsfrk_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 25 uses
  %i.b = alloca i32, align 4                      ; 40 uses
  %i.c = alloca i32, align 4                      ; 32 uses
  %i.d = alloca i32, align 4                      ; 63 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.e = load i32, ptr %7, align 4, !tbaa !8      ; 29 uses
  %narrow = xor i32 %i.e, -1
  %i.f = sext i32 %narrow to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %6, i64 %i.f ; 32 uses
  %i.h = getelementptr inbounds i8, ptr %9, i64 -8 ; 23 uses
  %i.i = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #5
  %i.j = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.1) #5
  %i.k = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str) #5
  %.not = icmp eq i32 %i.k, 0                     ; 10 uses
  %. = select i1 %.not, ptr %4, ptr %3
  %.0467 = load i32, ptr %., align 4, !tbaa !8
  %.not470 = icmp eq i32 %i.i, 0                  ; 4 uses
  br i1 %.not470, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.2) #5
  %.not471 = icmp eq i32 %i.l, 0
  br i1 %.not471, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not472 = icmp eq i32 %i.j, 0                  ; 4 uses
  br i1 %.not472, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.3) #5
  %.not473 = icmp eq i32 %i.m, 0
  br i1 %.not473, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str.2) #5
  %.not474 = icmp eq i32 %i.n, 0
  br i1 %.not474, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = load i32, ptr %3, align 4, !tbaa !8      ; 8 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load i32, ptr %4, align 4, !tbaa !8      ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load i32, ptr %7, align 4, !tbaa !8
  %i.t = tail call i32 @llvm.smax.i32(i32 %.0467, i32 1)
  %.not497 = icmp slt i32 %i.s, %i.t
  br i1 %.not497, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.b, %bb.d, %bb.h, %bb.g, %bb.f, %bb.i
  %.0469.neg486 = phi i32 [ 8, %bb.i ], [ 1, %bb.b ], [ 2, %bb.d ], [ 5, %bb.h ], [ 4, %bb.g ], [ 3, %bb.f ]
  store i32 %.0469.neg486, ptr %i.a, align 4, !tbaa !8
  %i.u = call i32 @xerbla_(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a, i32 noundef 6) #5 ; 0 uses
  br label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.v = icmp eq i32 %i.o, 0
  br i1 %i.v, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = load double, ptr %5, align 8, !tbaa !9
  %i.x = fcmp oeq double %i.w, 0.000000e+00
  br i1 %i.x, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = icmp eq i32 %i.q, 0
  br i1 %i.y, label %.thread488, label %.thread487

bb.m:                                             ; preds = %bb.k
  %i.z = load double, ptr %8, align 8, !tbaa !9   ; 2 uses
  %i.aa = fcmp oeq double %i.z, 1.000000e+00
  br i1 %i.aa, label %.loopexit, label %bb.n

.thread488:                                       ; preds = %bb.l
  %i.ab = load double, ptr %8, align 8, !tbaa !9
  %i.ac = fcmp oeq double %i.ab, 1.000000e+00
  br i1 %i.ac, label %.loopexit, label %.thread487

bb.n:                                             ; preds = %bb.m
  %i.ad = fcmp oeq double %i.z, 0.000000e+00
  br i1 %i.ad, label %.lr.ph.preheader, label %.thread487

.lr.ph.preheader:                                 ; preds = %bb.n
  %i.ae = add nuw nsw i32 %i.o, 1
  %i.af = mul nuw nsw i32 %i.ae, %i.o
  %i.ag = lshr i32 %i.af, 1
  %10 = add nsw i32 %i.ag, -1
  %i.ah = zext nneg i32 %10 to i64
  %i.ai = shl nuw nsw i64 %i.ah, 3
  %11 = add nuw nsw i64 %i.ai, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %9, i8 0, i64 %11, i1 false), !tbaa !9
  br label %.loopexit

.thread487:                                       ; preds = %.thread488, %bb.l, %bb.n
  %i.aj = and i32 %i.o, 1
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = lshr i32 %i.o, 1                        ; 8 uses
  br i1 %i.ak, label %bb.aa, label %bb.o

bb.o:                                             ; preds = %.thread487
  %i.am = sub nsw i32 %i.o, %i.al                 ; 5 uses
  br i1 %.not472, label %.thread492, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %i.al, ptr %i.c, align 4, !tbaa !8
  store i32 %i.am, ptr %i.b, align 4, !tbaa !8
  br i1 %.not470, label %bb.v, label %bb.q

.thread492:                                       ; preds = %bb.o
  store i32 %i.al, ptr %i.b, align 4, !tbaa !8
  store i32 %i.am, ptr %i.c, align 4, !tbaa !8
  br i1 %.not470, label %.thread495, label %.thread493

bb.q:                                             ; preds = %bb.p
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @dsyrk_(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, ptr noundef nonnull %i.b, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef %9, ptr noundef nonnull %3) #5
  %i.an = load i32, ptr %i.b, align 4, !tbaa !8
  %i.ao = add i32 %i.e, 1
  %i.ap = add i32 %i.ao, %i.an
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.aq
  %i.as = load i32, ptr %3, align 4, !tbaa !8
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr [8 x i8], ptr %i.h, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 8
  call void @dsyrk_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, ptr noundef nonnull %i.c, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %i.ar, ptr noundef nonnull %7, ptr noundef %8, ptr noundef %i.av, ptr noundef nonnull %3) #5
  %i.aw = load i32, ptr %i.b, align 4, !tbaa !8
  %i.ax = add nsw i32 %i.aw, 1                    ; 2 uses
  %i.ay = add nsw i32 %i.ax, %i.e
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.az
  %i.bb = sext i32 %i.ax to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.bb
  call void @dgemm_(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %i.ba, ptr noundef nonnull %7, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %i.bc, ptr noundef nonnull %3) #5
  br label %.loopexit

bb.s:                                             ; preds = %bb.q
  call void @dsyrk_(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef %9, ptr noundef nonnull %3) #5
  %i.bd = load i32, ptr %i.b, align 4, !tbaa !8
  %i.be = add nsw i32 %i.bd, 1
  %i.bf = mul nsw i32 %i.be, %i.e
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr [8 x i8], ptr %i.g, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %i.bj = load i32, ptr %3, align 4, !tbaa !8
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr [8 x i8], ptr %i.h, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  call void @dsyrk_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.c, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %i.bi, ptr noundef nonnull %7, ptr noundef %8, ptr noundef %i.bm, ptr noundef nonnull %3) #5
  %i.bn = load i32, ptr %i.b, align 4, !tbaa !8
  %i.bo = add nsw i32 %i.bn, 1                    ; 2 uses
  %i.bp = mul nsw i32 %i.bo, %i.e
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr [8 x i8], ptr %i.g, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 8
  %i.bt = sext i32 %i.bo to i64
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.bt
  call void @dgemm_(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %i.bs, ptr noundef nonnull %7, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %i.bu, ptr noundef nonnull %3) #5
  br label %.loopexit

.thread493:                                       ; preds = %.thread492
  %i.bv = sext i32 %i.am to i64
  %i.bw = getelementptr [8 x i8], ptr %i.h, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 8      ; 2 uses
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.thread493
  call void @dsyrk_(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, ptr noundef nonnull %i.b, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef %i.bx, ptr noundef nonnull %3) #5
  %i.by = load i32, ptr %i.c, align 4, !tbaa !8
  %i.bz = add nsw i32 %i.by, %i.e
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ca
  %i.cc = load i32, ptr %i.b, align 4, !tbaa !8
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr [8 x i8], ptr %i.h, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 8
  call void @dsyrk_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, ptr noundef nonnull %i.c, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %i.cb, ptr noundef nonnull %7, ptr noundef %8, ptr noundef %i.cf, ptr noundef nonnull %3) #5
  %i.cg = load i32, ptr %i.c, align 4, !tbaa !8
  %i.ch = add nsw i32 %i.cg, %i.e
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ci
  call void @dgemm_(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %i.cj, ptr noundef nonnull %7, ptr noundef %8, ptr noundef %9, ptr noundef nonnull %3) #5
  br label %.loopexit

bb.u:                                             ; preds = %.thread493
  call void @dsyrk_(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef %i.bx, ptr noundef nonnull %3) #5
  %i.ck = load i32, ptr %i.c, align 4, !tbaa !8
  %i.cl = mul nsw i32 %i.ck, %i.e
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr [8 x i8], ptr %i.g, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.cn, i64 8
  %i.cp = load i32, ptr %i.b, align 4, !tbaa !8
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr [8 x i8], ptr %i.h, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 8
  call void @dsyrk_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.c, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %i.co, ptr noundef nonnull %7, ptr noundef %8, ptr noundef %i.cs, ptr noundef nonnull %3) #5
  %i.ct = load i32, ptr %i.c, align 4, !tbaa !8
  %i.cu = mul nsw i32 %i.ct, %i.e
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr [8 x i8], ptr %i.g, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 8
  call void @dgemm_(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %i.cx, ptr noundef nonnull %7, ptr noundef %8, ptr noundef %9, ptr noundef nonnull %3) #5
  br label %.loopexit

bb.v:                                             ; preds = %bb.p
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @dsyrk_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, ptr noundef nonnull %i.b, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef %9, ptr noundef nonnull %i.b) #5
  %i.cy = load i32, ptr %i.b, align 4, !tbaa !8
  %i.cz = add i32 %i.e, 1                         ; 2 uses
  %i.da = add i32 %i.cz, %i.cy
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @dsyrk_(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, ptr noundef nonnull %i.c, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %i.dc, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %i.dd, ptr noundef nonnull %i.b) #5
  %i.de = load i32, ptr %i.b, align 4, !tbaa !8   ; 3 uses
  %i.df = add i32 %i.cz, %i.de
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.dg
  %i.di = mul nsw i32 %i.de, %i.de
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  call void @dgemm_(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %i.dh, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %i.dl, ptr noundef nonnull %i.b) #5
  br label %.loopexit

bb.x:                                             ; preds = %bb.v
  call void @dsyrk_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef %9, ptr noundef nonnull %i.b) #5
  %i.dm = load i32, ptr %i.b, align 4, !tbaa !8
  %i.dn = add nsw i32 %i.dm, 1
  %i.do = mul nsw i32 %i.dn, %i.e
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr [8 x i8], ptr %i.g, i64 %i.dp
  %i.dr = getelementptr i8, ptr %i.dq, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @dsyrk_(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.c, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %i.dr, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %i.ds, ptr noundef nonnull %i.b) #5
  %i.dt = load i32, ptr %i.b, align 4, !tbaa !8   ; 3 uses
  %i.du = add nsw i32 %i.dt, 1
  %i.dv = mul nsw i32 %i.du, %i.e
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr [8 x i8], ptr %i.g, i64 %i.dw
  %i.dy = getelementptr i8, ptr %i.dx, i64 8
  %i.dz = mul nsw i32 %i.dt, %i.dt
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  call void @dgemm_(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %i.dy, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %i.ec, ptr noundef nonnull %i.b) #5
  br label %.loopexit

.thread495:                                       ; preds = %.thread492
  %i.ed = mul nsw i32 %i.am, %i.am
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  br i1 %.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.thread495
  call void @dsyrk_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, ptr noundef nonnull %i.b, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %i.eg, ptr noundef nonnull %i.c) #5
  %i.eh = load i32, ptr %i.b, align 4, !tbaa !8   ; 2 uses
  %i.ei = add i32 %i.e, 1                         ; 2 uses
  %i.ej = add i32 %i.ei, %i.eh
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ek
  %i.em = load i32, ptr %i.c, align 4, !tbaa !8
  %i.en = mul nsw i32 %i.em, %i.eh
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr [8 x i8], ptr %i.h, i64 %i.eo
  %i.eq = getelementptr i8, ptr %i.ep, i64 8
  call void @dsyrk_(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, ptr noundef nonnull %i.c, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %i.el, ptr noundef nonnull %7, ptr noundef %8, ptr noundef %i.eq, ptr noundef nonnull %i.c) #5
  %i.er = load i32, ptr %i.b, align 4, !tbaa !8
  %i.es = add i32 %i.ei, %i.er
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.et
  call void @dgemm_(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %i.eu, ptr noundef nonnull %7, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef %9, ptr noundef nonnull %i.c) #5
  br label %.loopexit

bb.z:                                             ; preds = %.thread495
  call void @dsyrk_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %i.eg, ptr noundef nonnull %i.c) #5
  %i.ev = load i32, ptr %i.b, align 4, !tbaa !8   ; 2 uses
  %i.ew = add nsw i32 %i.ev, 1
  %i.ex = mul nsw i32 %i.ew, %i.e
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr [8 x i8], ptr %i.g, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.ez, i64 8
  %i.fb = load i32, ptr %i.c, align 4, !tbaa !8
  %i.fc = mul nsw i32 %i.fb, %i.ev
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr [8 x i8], ptr %i.h, i64 %i.fd
end_hunk_0
