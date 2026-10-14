Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgbbrd?download=true
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"DGBBRD\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@c_b8 = internal global double 0.000000e+00, align 8
@c_b9 = internal global double 1.000000e+00, align 8
@c__1 = internal global i32 1, align 4

; Function Attrs: nounwind uwtable
define void @dgbbrd_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef writeonly captures(none) %8, ptr nofree noundef writeonly captures(none) %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr nofree noundef captures(none) initializes((0, 4)) %17) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 15 uses
  %i.c = alloca i32, align 4                      ; 15 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 9 uses
  %i.g = alloca double, align 8                   ; 10 uses
  %i.h = alloca double, align 8                   ; 5 uses
  %i.i = alloca double, align 8                   ; 9 uses
  %i.j = alloca i32, align 4                      ; 19 uses
  %i.k = alloca double, align 8                   ; 9 uses
  %i.l = alloca i32, align 4                      ; 16 uses
  %i.m = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #5
  %i.n = load i32, ptr %7, align 4, !tbaa !31     ; 21 uses
  %narrow = xor i32 %i.n, -1
  %i.o = sext i32 %narrow to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %6, i64 %i.o ; 37 uses
  %i.q = getelementptr inbounds i8, ptr %8, i64 -8 ; 19 uses
  %i.r = getelementptr inbounds i8, ptr %9, i64 -8 ; 10 uses
  %i.s = load i32, ptr %11, align 4, !tbaa !31    ; 4 uses
  %narrow596 = xor i32 %i.s, -1
  %i.t = sext i32 %narrow596 to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %10, i64 %i.t ; 4 uses
  %i.v = load i32, ptr %13, align 4, !tbaa !31    ; 5 uses
  %narrow597 = xor i32 %i.v, -1
  %i.w = sext i32 %narrow597 to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %12, i64 %i.w ; 4 uses
  %i.y = load i32, ptr %15, align 4, !tbaa !31    ; 5 uses
  %narrow593 = xor i32 %i.y, -1
  %i.z = sext i32 %narrow593 to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %14, i64 %i.z ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %16, i64 -8 ; 24 uses
  %i.ac = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #5
  %i.ad = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #5
  %i.ae = icmp ne i32 %i.ad, 0
  %i.af = icmp ne i32 %i.ac, 0                    ; 2 uses
  %i.ag = select i1 %i.ae, i1 true, i1 %i.af      ; 5 uses
  %i.ah = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.2) #5
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = select i1 %i.ai, i1 true, i1 %i.af      ; 5 uses
  %i.ak = load i32, ptr %3, align 4, !tbaa !31
  %i.al = icmp sgt i32 %i.ak, 0                   ; 3 uses
  %i.am = load i32, ptr %4, align 4, !tbaa !31
  %i.an = load i32, ptr %5, align 4, !tbaa !31
  %i.ao = add nsw i32 %i.an, %i.am                ; 2 uses
  %i.ap = add nsw i32 %i.ao, 1                    ; 2 uses
  store i32 0, ptr %17, align 4, !tbaa !31
  %or.cond = select i1 %i.ag, i1 true, i1 %i.aj
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aq = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.3) #5
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ar = load i32, ptr %1, align 4, !tbaa !31    ; 5 uses
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %.thread.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.at = load i32, ptr %2, align 4, !tbaa !31    ; 3 uses
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = load i32, ptr %3, align 4, !tbaa !31
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = load i32, ptr %4, align 4, !tbaa !31
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %.thread.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = load i32, ptr %5, align 4, !tbaa !31
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = load i32, ptr %7, align 4, !tbaa !31
  %.not594 = icmp sgt i32 %i.bb, %i.ao
  br i1 %.not594, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %bb.h
  %i.bc = load i32, ptr %11, align 4, !tbaa !31   ; 2 uses
  %i.bd = icmp slt i32 %i.bc, 1
  br i1 %i.bd, label %.thread.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.be = icmp samesign ugt i32 %i.ar, 1
  %i.bf = icmp samesign ult i32 %i.bc, %i.ar
  %spec.select = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %spec.select, label %.thread.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bg = load i32, ptr %13, align 4, !tbaa !31   ; 2 uses
  %i.bh = icmp slt i32 %i.bg, 1
  br i1 %i.bh, label %.thread.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.aj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bi = icmp samesign ugt i32 %i.at, 1
  %i.bj = icmp samesign ult i32 %i.bg, %i.at
  %spec.select623 = select i1 %i.bi, i1 %i.bj, i1 false
  br i1 %spec.select623, label %.thread.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bk = load i32, ptr %15, align 4, !tbaa !31   ; 2 uses
  %i.bl = icmp slt i32 %i.bk, 1
  br i1 %i.bl, label %.thread.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %i.al, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bm = icmp samesign ugt i32 %i.ar, 1
  %i.bn = icmp samesign ult i32 %i.bk, %i.ar
  %spec.select624 = select i1 %i.bm, i1 %i.bn, i1 false
  br i1 %spec.select624, label %.thread.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.pr = load i32, ptr %17, align 4, !tbaa !31    ; 2 uses
  %.not595 = icmp eq i32 %.pr, 0
  br i1 %.not595, label %bb.s, label %.thread

.thread.sink.split:                               ; preds = %bb.o, %bb.q, %bb.l, %bb.n, %bb.i, %bb.k, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sink = phi i32 [ -1, %bb.b ], [ -2, %bb.c ], [ -4, %bb.e ], [ -6, %bb.g ], [ -12, %bb.i ], [ -14, %bb.l ], [ -8, %bb.h ], [ -5, %bb.f ], [ -3, %bb.d ], [ -12, %bb.k ], [ -14, %bb.n ], [ -16, %bb.q ], [ -16, %bb.o ] ; 2 uses
  store i32 %.sink, ptr %17, align 4, !tbaa !31
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.r
  %i.bo = phi i32 [ %.pr, %bb.r ], [ %.sink, %.thread.sink.split ]
  %i.bp = sub nsw i32 0, %i.bo
  store i32 %i.bp, ptr %i.a, align 4, !tbaa !31
  %i.bq = call i32 @xerbla_(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a, i32 noundef 6) #5 ; 0 uses
  br label %.loopexit

bb.s:                                             ; preds = %bb.r
  br i1 %i.ag, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @dlaset_(ptr noundef nonnull @.str.5, ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef nonnull @c_b8, ptr noundef nonnull @c_b9, ptr noundef %10, ptr noundef nonnull %11) #5
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  br i1 %i.aj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @dlaset_(ptr noundef nonnull @.str.5, ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef nonnull @c_b8, ptr noundef nonnull @c_b9, ptr noundef %12, ptr noundef nonnull %13) #5
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.br = load i32, ptr %1, align 4, !tbaa !31    ; 7 uses
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = load i32, ptr %2, align 4, !tbaa !31    ; 4 uses
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %. = tail call i32 @llvm.smin.i32(i32 %i.br, i32 %i.bt) ; 19 uses
  %i.bv = load i32, ptr %4, align 4, !tbaa !31    ; 2 uses
  %i.bw = load i32, ptr %5, align 4, !tbaa !31    ; 6 uses
  %i.bx = add nsw i32 %i.bw, %i.bv
  %i.by = icmp sgt i32 %i.bx, 1
  br i1 %i.by, label %bb.z, label %thread-pre-split630

bb.z:                                             ; preds = %bb.y
  %i.bz = icmp sgt i32 %i.bw, 0                   ; 2 uses
  %.625 = select i1 %i.bz, i32 1, i32 2           ; 2 uses
  %.626 = select i1 %i.bz, i32 2, i32 1
  %i.ca = tail call i32 @llvm.smax.i32(i32 %i.br, i32 %i.bt) ; 7 uses
  %i.cb = add i32 %i.br, -1
  %i.cc = tail call i32 @llvm.smin.i32(i32 %i.cb, i32 %i.bv) ; 4 uses
  %i.cd = add i32 %i.bt, -1
  %i.ce = tail call i32 @llvm.smin.i32(i32 %i.cd, i32 %i.bw) ; 9 uses
  %i.cf = add i32 %i.ce, %i.cc                    ; 11 uses
  %i.cg = add i32 %i.cf, 1                        ; 2 uses
end_hunk_0
begin_hunk_1_@dgbbrd_:bb.a

bb.az:                                            ; preds = %thread-pre-split630
  %i.oj = load i32, ptr %4, align 4, !tbaa !31
  %i.ok = icmp sgt i32 %i.oj, 0
  br i1 %i.ok, label %bb.ba, label %.thread632

bb.ba:                                            ; preds = %bb.az
  %i.ol = add nsw i32 %i.og, -1
  %i.om = load i32, ptr %2, align 4, !tbaa !31    ; 2 uses
  %.628 = call i32 @llvm.smin.i32(i32 %i.ol, i32 %i.om) ; 2 uses
  %.not609704 = icmp slt i32 %.628, 1
  br i1 %.not609704, label %._crit_edge708, label %.lr.ph707

.lr.ph707:                                        ; preds = %bb.ba
  %i.on = add i32 %i.y, 1
  %i.oo = sext i32 %i.n to i64                    ; 2 uses
  %i.op = sext i32 %i.s to i64                    ; 2 uses
  %i.oq = sext i32 %i.y to i64
  %invariant.gep791 = getelementptr [8 x i8], ptr %i.aa, i64 %i.oq
  %i.or = zext nneg i32 %.628 to i64
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph707, %bb.bh
  %indvars.iv742 = phi i64 [ 1, %.lr.ph707 ], [ %indvars.iv.next743, %bb.bh ] ; 11 uses
  %i.os = mul nsw i64 %indvars.iv742, %i.oo
  %i.ot = getelementptr [8 x i8], ptr %i.p, i64 %i.os ; 2 uses
  %i.ou = getelementptr i8, ptr %i.ot, i64 8
  %i.ov = getelementptr i8, ptr %i.ot, i64 16
  call void @dlartg_(ptr noundef %i.ou, ptr noundef %i.ov, ptr noundef nonnull %i.i, ptr noundef nonnull %i.k, ptr noundef nonnull %i.g) #5
  %i.ow = load double, ptr %i.g, align 8, !tbaa !34
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv742
  store double %i.ow, ptr %i.ox, align 8, !tbaa !34
  %i.oy = load i32, ptr %2, align 4, !tbaa !31
  %i.oz = sext i32 %i.oy to i64
  %i.pa = icmp slt i64 %indvars.iv742, %i.oz
  br i1 %i.pa, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.pb = load double, ptr %i.k, align 8, !tbaa !34
  %i.pc = add nuw nsw i64 %indvars.iv742, 1
  %i.pd = mul nsw i64 %i.pc, %i.oo
  %i.pe = getelementptr [8 x i8], ptr %i.p, i64 %i.pd
  %i.pf = getelementptr i8, ptr %i.pe, i64 8      ; 3 uses
  %i.pg = load double, ptr %i.pf, align 8, !tbaa !34
  %i.ph = fmul double %i.pb, %i.pg
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv742
  store double %i.ph, ptr %i.pi, align 8, !tbaa !34
  %i.pj = load double, ptr %i.i, align 8, !tbaa !34
  %i.pk = load double, ptr %i.pf, align 8, !tbaa !34
  %i.pl = fmul double %i.pj, %i.pk
  store double %i.pl, ptr %i.pf, align 8, !tbaa !34
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  br i1 %i.ag, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.pm = mul nsw i64 %indvars.iv742, %i.op
  %i.pn = getelementptr [8 x i8], ptr %i.u, i64 %i.pm
  %i.po = getelementptr i8, ptr %i.pn, i64 8
  %i.pp = add nuw nsw i64 %indvars.iv742, 1
  %i.pq = mul nsw i64 %i.pp, %i.op
  %i.pr = getelementptr [8 x i8], ptr %i.u, i64 %i.pq
  %i.ps = getelementptr i8, ptr %i.pr, i64 8
  call void @drot_(ptr noundef nonnull %1, ptr noundef %i.po, ptr noundef nonnull @c__1, ptr noundef %i.ps, ptr noundef nonnull @c__1, ptr noundef nonnull %i.i, ptr noundef nonnull %i.k) #5
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  br i1 %i.al, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %gep792 = getelementptr [8 x i8], ptr %invariant.gep791, i64 %indvars.iv742
  %i.pt = trunc nuw nsw i64 %indvars.iv742 to i32
  %i.pu = add i32 %i.on, %i.pt
  %i.pv = sext i32 %i.pu to i64
  %i.pw = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.pv
  call void @drot_(ptr noundef nonnull %3, ptr noundef %gep792, ptr noundef nonnull %15, ptr noundef %i.pw, ptr noundef nonnull %15, ptr noundef nonnull %i.i, ptr noundef nonnull %i.k) #5
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %indvars.iv.next743 = add nuw nsw i64 %indvars.iv742, 1
  %.not609.not = icmp samesign ult i64 %indvars.iv742, %i.or
  br i1 %.not609.not, label %bb.bb, label %._crit_edge708.loopexit, !llvm.loop !17

._crit_edge708.loopexit:                          ; preds = %bb.bh
  %.pre753 = load i32, ptr %1, align 4, !tbaa !31
  %.pre754 = load i32, ptr %2, align 4, !tbaa !31
  br label %._crit_edge708

._crit_edge708:                                   ; preds = %._crit_edge708.loopexit, %bb.ba
  %i.px = phi i32 [ %.pre754, %._crit_edge708.loopexit ], [ %i.om, %bb.ba ]
  %i.py = phi i32 [ %.pre753, %._crit_edge708.loopexit ], [ %i.og, %bb.ba ] ; 3 uses
  %.not610 = icmp sgt i32 %i.py, %i.px
  br i1 %.not610, label %.loopexit, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge708
  %i.pz = mul nsw i32 %i.py, %i.n
  %i.qa = sext i32 %i.pz to i64
  %i.qb = getelementptr [8 x i8], ptr %i.p, i64 %i.qa
  %i.qc = getelementptr i8, ptr %i.qb, i64 8
  %i.qd = load double, ptr %i.qc, align 8, !tbaa !34
  %i.qe = sext i32 %i.py to i64
  %i.qf = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.qe
  store double %i.qd, ptr %i.qf, align 8, !tbaa !34
  br label %.loopexit

bb.bj:                                            ; preds = %thread-pre-split630
  %i.qg = icmp sgt i32 %i.oh, 0
  br i1 %i.qg, label %bb.bk, label %.thread632

bb.bk:                                            ; preds = %bb.bj
  %i.qh = load i32, ptr %2, align 4, !tbaa !31
  %i.qi = icmp slt i32 %i.og, %i.qh
  br i1 %i.qi, label %bb.bl, label %bb.br

bb.bl:                                            ; preds = %bb.bk
  %i.qj = add nsw i32 %i.og, 1
  %i.qk = mul nsw i32 %i.qj, %i.n
  %i.ql = add nsw i32 %i.qk, %i.oh
  %i.qm = sext i32 %i.ql to i64
  %i.qn = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.qm
  %i.qo = load double, ptr %i.qn, align 8, !tbaa !34
  store double %i.qo, ptr %i.h, align 8, !tbaa !34
  %i.qp = icmp sgt i32 %i.og, 0
  br i1 %i.qp, label %.lr.ph695, label %.loopexit

.lr.ph695:                                        ; preds = %bb.bl
  %i.qq = add i32 %i.v, 1
  %i.qr = zext nneg i32 %i.og to i64
  %i.qs = sext i32 %i.n to i64
  %i.qt = sext i32 %i.v to i64
  %invariant.gep789 = getelementptr [8 x i8], ptr %i.x, i64 %i.qt
  br label %bb.bm

bb.bm:                                            ; preds = %.lr.ph695, %bb.bq
  %indvars.iv731 = phi i64 [ %i.qr, %.lr.ph695 ], [ %indvars.iv.next732, %bb.bq ] ; 7 uses
  %i.qu = load i32, ptr %5, align 4, !tbaa !31
  %i.qv = mul nsw i64 %indvars.iv731, %i.qs       ; 2 uses
  %i.qw = trunc nsw i64 %i.qv to i32
  %i.qx = add i32 %i.qw, 1
  %i.qy = add i32 %i.qx, %i.qu
  %i.qz = sext i32 %i.qy to i64
  %i.ra = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.qz
  call void @dlartg_(ptr noundef %i.ra, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.k, ptr noundef nonnull %i.g) #5
  %i.rb = load double, ptr %i.g, align 8, !tbaa !34
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv731
  store double %i.rb, ptr %i.rc, align 8, !tbaa !34
  %.not607 = icmp eq i64 %indvars.iv731, 1
  br i1 %.not607, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.rd = load double, ptr %i.k, align 8, !tbaa !34
  %i.re = fneg double %i.rd
  %i.rf = load i32, ptr %5, align 4, !tbaa !31
  %i.rg = sext i32 %i.rf to i64
  %i.rh = getelementptr [8 x i8], ptr %i.p, i64 %i.qv
  %i.ri = getelementptr [8 x i8], ptr %i.rh, i64 %i.rg
  %i.rj = load double, ptr %i.ri, align 8, !tbaa !34 ; 2 uses
  %i.rk = fmul double %i.rj, %i.re
  store double %i.rk, ptr %i.h, align 8, !tbaa !34
  %i.rl = load double, ptr %i.i, align 8, !tbaa !34
  %i.rm = fmul double %i.rj, %i.rl
  %i.rn = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv731
  %i.ro = getelementptr i8, ptr %i.rn, i64 -8
  store double %i.rm, ptr %i.ro, align 8, !tbaa !34
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  br i1 %i.aj, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %gep790 = getelementptr [8 x i8], ptr %invariant.gep789, i64 %indvars.iv731
  %i.rp = load i32, ptr %1, align 4, !tbaa !31
  %i.rq = add i32 %i.qq, %i.rp
  %i.rr = sext i32 %i.rq to i64
  %i.rs = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.rr
  call void @drot_(ptr noundef nonnull %2, ptr noundef %gep790, ptr noundef nonnull %13, ptr noundef %i.rs, ptr noundef nonnull %13, ptr noundef nonnull %i.i, ptr noundef nonnull %i.k) #5
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %bb.bp
  %indvars.iv.next732 = add nsw i64 %indvars.iv731, -1
  %i.rt = icmp sgt i64 %indvars.iv731, 1
  br i1 %i.rt, label %bb.bm, label %.loopexit, !llvm.loop !18

bb.br:                                            ; preds = %bb.bk
  %.not605.not684 = icmp sgt i32 %., 1
  br i1 %.not605.not684, label %iter.check, label %._crit_edge688

iter.check:                                       ; preds = %bb.br
  %i.ru = sext i32 %i.n to i64                    ; 9 uses
  %i.rv = zext nneg i32 %i.oh to i64              ; 2 uses
  %wide.trip.count = zext nneg i32 %. to i64      ; 4 uses
  %invariant.gep785 = getelementptr [8 x i8], ptr %i.p, i64 %i.rv ; 11 uses
  %i.rw = add nsw i64 %wide.trip.count, -1        ; 5 uses
  %min.iters.check = icmp ugt i32 %., 4
  %ident.check.not = icmp eq i32 %i.n, 1
  %or.cond869 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond869, label %vector.memcheck, label %.lr.ph687.preheader

vector.memcheck:                                  ; preds = %iter.check
  %18 = ptrtoaddr ptr %9 to i64
  %19 = ptrtoaddr ptr %6 to i64
  %i.rx = shl nuw nsw i64 %i.rv, 3
  %i.ry = add i64 %i.rx, %19
  %i.rz = sub i64 %i.ry, %18
  %diff.check = icmp ugt i64 %i.rz, -128
  br i1 %diff.check, label %.lr.ph687.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check795 = icmp ult i32 %., 17
  br i1 %min.iters.check795, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.sa = and i64 %i.rw, 12
  %n.vec = and i64 %i.rw, -16                     ; 4 uses
  %i.sb = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.sc = getelementptr [8 x i8], ptr %invariant.gep785, i64 %index ; 4 uses
  %i.sd = getelementptr i8, ptr %i.sc, i64 16
  %i.se = getelementptr i8, ptr %i.sc, i64 48
  %i.sf = getelementptr i8, ptr %i.sc, i64 80
  %i.sg = getelementptr i8, ptr %i.sc, i64 112
  %wide.load = load <4 x double>, ptr %i.sd, align 8, !tbaa !34
  %wide.load796 = load <4 x double>, ptr %i.se, align 8, !tbaa !34
  %wide.load797 = load <4 x double>, ptr %i.sf, align 8, !tbaa !34
  %wide.load798 = load <4 x double>, ptr %i.sg, align 8, !tbaa !34
  %i.sh = getelementptr [8 x i8], ptr %9, i64 %index ; 4 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 32
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sh, i64 64
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sh, i64 96
  store <4 x double> %wide.load, ptr %i.sh, align 8, !tbaa !34
  store <4 x double> %wide.load796, ptr %i.si, align 8, !tbaa !34
  store <4 x double> %wide.load797, ptr %i.sj, align 8, !tbaa !34
  store <4 x double> %wide.load798, ptr %i.sk, align 8, !tbaa !34
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.sl = icmp eq i64 %index.next, %n.vec
  br i1 %i.sl, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.rw, %n.vec
  br i1 %cmp.n, label %iter.check824, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.sa, 0
  br i1 %min.epilog.iters.check, label %.lr.ph687.preheader, label %vec.epilog.ph, !prof !37

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec799 = and i64 %i.rw, -4                   ; 3 uses
  %i.sm = or disjoint i64 %n.vec799, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index800 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next802, %vec.epilog.vector.body ] ; 3 uses
  %i.sn = getelementptr [8 x i8], ptr %invariant.gep785, i64 %index800
  %i.so = getelementptr i8, ptr %i.sn, i64 16
  %wide.load801 = load <4 x double>, ptr %i.so, align 8, !tbaa !34
  %i.sp = getelementptr [8 x i8], ptr %9, i64 %index800
  store <4 x double> %wide.load801, ptr %i.sp, align 8, !tbaa !34
  %index.next802 = add nuw i64 %index800, 4       ; 2 uses
  %i.sq = icmp eq i64 %index.next802, %n.vec799
  br i1 %i.sq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !20

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n803 = icmp eq i64 %i.rw, %n.vec799
  br i1 %cmp.n803, label %iter.check824, label %.lr.ph687.preheader

.lr.ph687.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv722.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.sb, %vec.epilog.iter.check ], [ %i.sm, %vec.epilog.middle.block ] ; 4 uses
  %i.sr = sub nsw i64 %wide.trip.count, %indvars.iv722.ph
  %xtraiter = and i64 %i.sr, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph687.prol.loopexit, label %.lr.ph687.prol

.lr.ph687.prol:                                   ; preds = %.lr.ph687.preheader, %.lr.ph687.prol
  %indvars.iv722.prol = phi i64 [ %indvars.iv.next723.prol, %.lr.ph687.prol ], [ %indvars.iv722.ph, %.lr.ph687.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph687.prol ], [ 0, %.lr.ph687.preheader ]
  %indvars.iv.next723.prol = add nuw nsw i64 %indvars.iv722.prol, 1 ; 3 uses
  %i.ss = mul nsw i64 %indvars.iv.next723.prol, %i.ru
  %gep786.prol = getelementptr [8 x i8], ptr %invariant.gep785, i64 %i.ss
  %i.st = load double, ptr %gep786.prol, align 8, !tbaa !34
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv722.prol
  store double %i.st, ptr %i.su, align 8, !tbaa !34
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph687.prol.loopexit, label %.lr.ph687.prol, !llvm.loop !21

.lr.ph687.prol.loopexit:                          ; preds = %.lr.ph687.prol, %.lr.ph687.preheader
  %indvars.iv722.unr = phi i64 [ %indvars.iv722.ph, %.lr.ph687.preheader ], [ %indvars.iv.next723.prol, %.lr.ph687.prol ]
  %i.sv = sub nsw i64 %indvars.iv722.ph, %wide.trip.count
  %i.sw = icmp ugt i64 %i.sv, -8
  br i1 %i.sw, label %iter.check824, label %.lr.ph687

.lr.ph687:                                        ; preds = %.lr.ph687.prol.loopexit, %.lr.ph687
  %indvars.iv722 = phi i64 [ %indvars.iv.next723.7, %.lr.ph687 ], [ %indvars.iv722.unr, %.lr.ph687.prol.loopexit ] ; 10 uses
  %indvars.iv.next723 = add nuw nsw i64 %indvars.iv722, 1
  %i.sx = mul nsw i64 %indvars.iv.next723, %i.ru
  %gep786 = getelementptr [8 x i8], ptr %invariant.gep785, i64 %i.sx
  %i.sy = load double, ptr %gep786, align 8, !tbaa !34
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv722
  store double %i.sy, ptr %i.sz, align 8, !tbaa !34
  %indvars.iv.next723.1 = add nuw nsw i64 %indvars.iv722, 2 ; 2 uses
  %i.ta = mul nsw i64 %indvars.iv.next723.1, %i.ru
  %gep786.1 = getelementptr [8 x i8], ptr %invariant.gep785, i64 %i.ta
  %i.tb = load double, ptr %gep786.1, align 8, !tbaa !34
  %i.tc = getelementptr [8 x i8], ptr %9, i64 %indvars.iv722
  store double %i.tb, ptr %i.tc, align 8, !tbaa !34
  %indvars.iv.next723.2 = add nuw nsw i64 %indvars.iv722, 3 ; 2 uses
  %i.td = mul nsw i64 %indvars.iv.next723.2, %i.ru
  %gep786.2 = getelementptr [8 x i8], ptr %invariant.gep785, i64 %i.td
  %i.te = load double, ptr %gep786.2, align 8, !tbaa !34
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next723.1
  store double %i.te, ptr %i.tf, align 8, !tbaa !34
  %indvars.iv.next723.3 = add nuw nsw i64 %indvars.iv722, 4 ; 2 uses
  %i.tg = mul nsw i64 %indvars.iv.next723.3, %i.ru
  %gep786.3 = getelementptr [8 x i8], ptr %invariant.gep785, i64 %i.tg
  %i.th = load double, ptr %gep786.3, align 8, !tbaa !34
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next723.2
  store double %i.th, ptr %i.ti, align 8, !tbaa !34
  %indvars.iv.next723.4 = add nuw nsw i64 %indvars.iv722, 5 ; 2 uses
  %i.tj = mul nsw i64 %indvars.iv.next723.4, %i.ru
  %gep786.4 = getelementptr [8 x i8], ptr %invariant.gep785, i64 %i.tj
  %i.tk = load double, ptr %gep786.4, align 8, !tbaa !34
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next723.3
  store double %i.tk, ptr %i.tl, align 8, !tbaa !34
  %indvars.iv.next723.5 = add nuw nsw i64 %indvars.iv722, 6 ; 2 uses
  %i.tm = mul nsw i64 %indvars.iv.next723.5, %i.ru
  %gep786.5 = getelementptr [8 x i8], ptr %invariant.gep785, i64 %i.tm
  %i.tn = load double, ptr %gep786.5, align 8, !tbaa !34
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next723.4
  store double %i.tn, ptr %i.to, align 8, !tbaa !34
  %indvars.iv.next723.6 = add nuw nsw i64 %indvars.iv722, 7 ; 2 uses
  %i.tp = mul nsw i64 %indvars.iv.next723.6, %i.ru
  %gep786.6 = getelementptr [8 x i8], ptr %invariant.gep785, i64 %i.tp
  %i.tq = load double, ptr %gep786.6, align 8, !tbaa !34
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next723.5
  store double %i.tq, ptr %i.tr, align 8, !tbaa !34
  %indvars.iv.next723.7 = add nuw nsw i64 %indvars.iv722, 8 ; 3 uses
  %i.ts = mul nsw i64 %indvars.iv.next723.7, %i.ru
  %gep786.7 = getelementptr [8 x i8], ptr %invariant.gep785, i64 %i.ts
  %i.tt = load double, ptr %gep786.7, align 8, !tbaa !34
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next723.6
  store double %i.tt, ptr %i.tu, align 8, !tbaa !34
  %exitcond725.not.7 = icmp eq i64 %indvars.iv.next723.7, %wide.trip.count
  br i1 %exitcond725.not.7, label %iter.check824, label %.lr.ph687, !llvm.loop !22

._crit_edge688:                                   ; preds = %bb.br
  %.not606689.not = icmp eq i32 %., 1
  br i1 %.not606689.not, label %iter.check824, label %.loopexit

iter.check824:                                    ; preds = %.lr.ph687.prol.loopexit, %.lr.ph687, %middle.block, %vec.epilog.middle.block, %._crit_edge688
  %i.tv = sext i32 %i.n to i64                    ; 9 uses
  %i.tw = add i32 %., 1
  %wide.trip.count729 = zext i32 %i.tw to i64     ; 3 uses
  %i.tx = zext nneg i32 %i.oh to i64              ; 2 uses
  %invariant.gep787 = getelementptr [8 x i8], ptr %i.p, i64 %i.tx ; 11 uses
  %i.ty = zext i32 %. to i64                      ; 5 uses
  %min.iters.check809 = icmp ugt i32 %., 3
  %ident.check806.not = icmp eq i32 %i.n, 1
  %or.cond870 = select i1 %min.iters.check809, i1 %ident.check806.not, i1 false
  br i1 %or.cond870, label %vector.memcheck807, label %vec.epilog.scalar.ph825.preheader

vector.memcheck807:                               ; preds = %iter.check824
  %20 = ptrtoaddr ptr %8 to i64
  %21 = ptrtoaddr ptr %6 to i64
  %i.tz = shl nuw nsw i64 %i.tx, 3
  %i.ua = add i64 %i.tz, %21
  %i.ub = sub i64 %i.ua, %20
  %diff.check808 = icmp ugt i64 %i.ub, -128
  br i1 %diff.check808, label %vec.epilog.scalar.ph825.preheader, label %vector.main.loop.iter.check810

vector.main.loop.iter.check810:                   ; preds = %vector.memcheck807
  %min.iters.check811 = icmp ult i32 %., 16
  br i1 %min.iters.check811, label %vec.epilog.ph828, label %vector.ph812

vector.ph812:                                     ; preds = %vector.main.loop.iter.check810
  %i.uc = and i64 %i.ty, 12
  %n.vec813 = and i64 %i.ty, 4294967280           ; 4 uses
  %i.ud = or disjoint i64 %n.vec813, 1
  br label %vector.body814

vector.body814:                                   ; preds = %vector.ph812, %vector.body814
  %index815 = phi i64 [ 0, %vector.ph812 ], [ %index.next820, %vector.body814 ] ; 3 uses
  %i.ue = getelementptr [8 x i8], ptr %invariant.gep787, i64 %index815 ; 4 uses
  %i.uf = getelementptr i8, ptr %i.ue, i64 16
  %i.ug = getelementptr i8, ptr %i.ue, i64 48
  %i.uh = getelementptr i8, ptr %i.ue, i64 80
  %i.ui = getelementptr i8, ptr %i.ue, i64 112
  %wide.load816 = load <4 x double>, ptr %i.uf, align 8, !tbaa !34
  %wide.load817 = load <4 x double>, ptr %i.ug, align 8, !tbaa !34
  %wide.load818 = load <4 x double>, ptr %i.uh, align 8, !tbaa !34
  %wide.load819 = load <4 x double>, ptr %i.ui, align 8, !tbaa !34
  %i.uj = getelementptr [8 x i8], ptr %8, i64 %index815 ; 4 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 32
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uj, i64 64
  %i.um = getelementptr inbounds nuw i8, ptr %i.uj, i64 96
  store <4 x double> %wide.load816, ptr %i.uj, align 8, !tbaa !34
  store <4 x double> %wide.load817, ptr %i.uk, align 8, !tbaa !34
  store <4 x double> %wide.load818, ptr %i.ul, align 8, !tbaa !34
  store <4 x double> %wide.load819, ptr %i.um, align 8, !tbaa !34
  %index.next820 = add nuw i64 %index815, 16      ; 2 uses
  %i.un = icmp eq i64 %index.next820, %n.vec813
  br i1 %i.un, label %middle.block821, label %vector.body814, !llvm.loop !23

middle.block821:                                  ; preds = %vector.body814
  %cmp.n822 = icmp eq i64 %n.vec813, %i.ty
  br i1 %cmp.n822, label %.loopexit, label %vec.epilog.iter.check826

vec.epilog.iter.check826:                         ; preds = %middle.block821
  %min.epilog.iters.check827 = icmp eq i64 %i.uc, 0
  br i1 %min.epilog.iters.check827, label %vec.epilog.scalar.ph825.preheader, label %vec.epilog.ph828, !prof !37

vec.epilog.ph828:                                 ; preds = %vector.main.loop.iter.check810, %vec.epilog.iter.check826
  %vec.epilog.resume.val823 = phi i64 [ %n.vec813, %vec.epilog.iter.check826 ], [ 0, %vector.main.loop.iter.check810 ]
  %n.vec829 = and i64 %i.ty, 4294967292           ; 3 uses
  %i.uo = or disjoint i64 %n.vec829, 1
  br label %vec.epilog.vector.body830

vec.epilog.vector.body830:                        ; preds = %vec.epilog.vector.body830, %vec.epilog.ph828
  %index831 = phi i64 [ %vec.epilog.resume.val823, %vec.epilog.ph828 ], [ %index.next833, %vec.epilog.vector.body830 ] ; 3 uses
  %i.up = getelementptr [8 x i8], ptr %invariant.gep787, i64 %index831
  %i.uq = getelementptr i8, ptr %i.up, i64 16
  %wide.load832 = load <4 x double>, ptr %i.uq, align 8, !tbaa !34
  %i.ur = getelementptr [8 x i8], ptr %8, i64 %index831
  store <4 x double> %wide.load832, ptr %i.ur, align 8, !tbaa !34
  %index.next833 = add nuw i64 %index831, 4       ; 2 uses
  %i.us = icmp eq i64 %index.next833, %n.vec829
  br i1 %i.us, label %vec.epilog.middle.block834, label %vec.epilog.vector.body830, !llvm.loop !24

vec.epilog.middle.block834:                       ; preds = %vec.epilog.vector.body830
  %cmp.n835 = icmp eq i64 %n.vec829, %i.ty
  br i1 %cmp.n835, label %.loopexit, label %vec.epilog.scalar.ph825.preheader

vec.epilog.scalar.ph825.preheader:                ; preds = %iter.check824, %vector.memcheck807, %vec.epilog.iter.check826, %vec.epilog.middle.block834
  %indvars.iv726.ph = phi i64 [ 1, %iter.check824 ], [ 1, %vector.memcheck807 ], [ %i.ud, %vec.epilog.iter.check826 ], [ %i.uo, %vec.epilog.middle.block834 ] ; 4 uses
  %i.ut = sub nsw i64 %wide.trip.count729, %indvars.iv726.ph
  %xtraiter876 = and i64 %i.ut, 7                 ; 2 uses
  %lcmp.mod877.not = icmp eq i64 %xtraiter876, 0
  br i1 %lcmp.mod877.not, label %vec.epilog.scalar.ph825.prol.loopexit, label %vec.epilog.scalar.ph825.prol

vec.epilog.scalar.ph825.prol:                     ; preds = %vec.epilog.scalar.ph825.preheader, %vec.epilog.scalar.ph825.prol
  %indvars.iv726.prol = phi i64 [ %indvars.iv.next727.prol, %vec.epilog.scalar.ph825.prol ], [ %indvars.iv726.ph, %vec.epilog.scalar.ph825.preheader ] ; 3 uses
  %prol.iter878 = phi i64 [ %prol.iter878.next, %vec.epilog.scalar.ph825.prol ], [ 0, %vec.epilog.scalar.ph825.preheader ]
  %i.uu = mul nsw i64 %indvars.iv726.prol, %i.tv
  %gep788.prol = getelementptr [8 x i8], ptr %invariant.gep787, i64 %i.uu
  %i.uv = getelementptr i8, ptr %gep788.prol, i64 8
  %i.uw = load double, ptr %i.uv, align 8, !tbaa !34
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv726.prol
  store double %i.uw, ptr %i.ux, align 8, !tbaa !34
  %indvars.iv.next727.prol = add nuw nsw i64 %indvars.iv726.prol, 1 ; 2 uses
  %prol.iter878.next = add i64 %prol.iter878, 1   ; 2 uses
  %prol.iter878.cmp.not = icmp eq i64 %prol.iter878.next, %xtraiter876
  br i1 %prol.iter878.cmp.not, label %vec.epilog.scalar.ph825.prol.loopexit, label %vec.epilog.scalar.ph825.prol, !llvm.loop !25

vec.epilog.scalar.ph825.prol.loopexit:            ; preds = %vec.epilog.scalar.ph825.prol, %vec.epilog.scalar.ph825.preheader
  %indvars.iv726.unr = phi i64 [ %indvars.iv726.ph, %vec.epilog.scalar.ph825.preheader ], [ %indvars.iv.next727.prol, %vec.epilog.scalar.ph825.prol ]
  %i.uy = sub nsw i64 %indvars.iv726.ph, %wide.trip.count729
  %i.uz = icmp ugt i64 %i.uy, -8
  br i1 %i.uz, label %.loopexit, label %vec.epilog.scalar.ph825

vec.epilog.scalar.ph825:                          ; preds = %vec.epilog.scalar.ph825.prol.loopexit, %vec.epilog.scalar.ph825
  %indvars.iv726 = phi i64 [ %indvars.iv.next727.7, %vec.epilog.scalar.ph825 ], [ %indvars.iv726.unr, %vec.epilog.scalar.ph825.prol.loopexit ] ; 11 uses
  %i.va = mul nsw i64 %indvars.iv726, %i.tv
  %gep788 = getelementptr [8 x i8], ptr %invariant.gep787, i64 %i.va
  %i.vb = getelementptr i8, ptr %gep788, i64 8
  %i.vc = load double, ptr %i.vb, align 8, !tbaa !34
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv726
  store double %i.vc, ptr %i.vd, align 8, !tbaa !34
  %indvars.iv.next727 = add nuw nsw i64 %indvars.iv726, 1
  %i.ve = mul nsw i64 %indvars.iv.next727, %i.tv
  %gep788.1 = getelementptr [8 x i8], ptr %invariant.gep787, i64 %i.ve
  %i.vf = getelementptr i8, ptr %gep788.1, i64 8
  %i.vg = load double, ptr %i.vf, align 8, !tbaa !34
  %i.vh = getelementptr [8 x i8], ptr %8, i64 %indvars.iv726
  store double %i.vg, ptr %i.vh, align 8, !tbaa !34
  %indvars.iv.next727.1 = add nuw nsw i64 %indvars.iv726, 2 ; 2 uses
  %i.vi = mul nsw i64 %indvars.iv.next727.1, %i.tv
  %gep788.2 = getelementptr [8 x i8], ptr %invariant.gep787, i64 %i.vi
  %i.vj = getelementptr i8, ptr %gep788.2, i64 8
  %i.vk = load double, ptr %i.vj, align 8, !tbaa !34
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next727.1
  store double %i.vk, ptr %i.vl, align 8, !tbaa !34
  %indvars.iv.next727.2 = add nuw nsw i64 %indvars.iv726, 3 ; 2 uses
  %i.vm = mul nsw i64 %indvars.iv.next727.2, %i.tv
  %gep788.3 = getelementptr [8 x i8], ptr %invariant.gep787, i64 %i.vm
  %i.vn = getelementptr i8, ptr %gep788.3, i64 8
  %i.vo = load double, ptr %i.vn, align 8, !tbaa !34
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next727.2
  store double %i.vo, ptr %i.vp, align 8, !tbaa !34
  %indvars.iv.next727.3 = add nuw nsw i64 %indvars.iv726, 4 ; 2 uses
  %i.vq = mul nsw i64 %indvars.iv.next727.3, %i.tv
  %gep788.4 = getelementptr [8 x i8], ptr %invariant.gep787, i64 %i.vq
  %i.vr = getelementptr i8, ptr %gep788.4, i64 8
  %i.vs = load double, ptr %i.vr, align 8, !tbaa !34
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next727.3
  store double %i.vs, ptr %i.vt, align 8, !tbaa !34
  %indvars.iv.next727.4 = add nuw nsw i64 %indvars.iv726, 5 ; 2 uses
  %i.vu = mul nsw i64 %indvars.iv.next727.4, %i.tv
  %gep788.5 = getelementptr [8 x i8], ptr %invariant.gep787, i64 %i.vu
  %i.vv = getelementptr i8, ptr %gep788.5, i64 8
  %i.vw = load double, ptr %i.vv, align 8, !tbaa !34
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next727.4
  store double %i.vw, ptr %i.vx, align 8, !tbaa !34
  %indvars.iv.next727.5 = add nuw nsw i64 %indvars.iv726, 6 ; 2 uses
  %i.vy = mul nsw i64 %indvars.iv.next727.5, %i.tv
  %gep788.6 = getelementptr [8 x i8], ptr %invariant.gep787, i64 %i.vy
  %i.vz = getelementptr i8, ptr %gep788.6, i64 8
  %i.wa = load double, ptr %i.vz, align 8, !tbaa !34
  %i.wb = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next727.5
  store double %i.wa, ptr %i.wb, align 8, !tbaa !34
  %indvars.iv.next727.6 = add nuw nsw i64 %indvars.iv726, 7 ; 2 uses
  %i.wc = mul nsw i64 %indvars.iv.next727.6, %i.tv
  %gep788.7 = getelementptr [8 x i8], ptr %invariant.gep787, i64 %i.wc
  %i.wd = getelementptr i8, ptr %gep788.7, i64 8
  %i.we = load double, ptr %i.wd, align 8, !tbaa !34
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next727.6
  store double %i.we, ptr %i.wf, align 8, !tbaa !34
  %indvars.iv.next727.7 = add nuw nsw i64 %indvars.iv726, 8 ; 2 uses
  %exitcond730.not.7 = icmp eq i64 %indvars.iv.next727.7, %wide.trip.count729
  br i1 %exitcond730.not.7, label %.loopexit, label %vec.epilog.scalar.ph825, !llvm.loop !26

.thread632:                                       ; preds = %bb.az, %bb.bj
  %.not603.not696 = icmp sgt i32 %., 1
  br i1 %.not603.not696, label %._crit_edge699.thread, label %._crit_edge699

._crit_edge699.thread:                            ; preds = %.thread632
  %i.wg = add nsw i32 %., -1
  %i.wh = zext nneg i32 %i.wg to i64
  %i.wi = shl nuw nsw i64 %i.wh, 3
  call void @llvm.memset.p0.i64(ptr align 8 %9, i8 0, i64 %i.wi, i1 false), !tbaa !34
  br label %iter.check856

._crit_edge699:                                   ; preds = %.thread632
  %.not604700.not = icmp eq i32 %., 1
  br i1 %.not604700.not, label %iter.check856, label %.loopexit

iter.check856:                                    ; preds = %._crit_edge699.thread, %._crit_edge699
  %i.wj = sext i32 %i.n to i64                    ; 9 uses
  %i.wk = add i32 %., 1
  %wide.trip.count740 = zext i32 %i.wk to i64     ; 3 uses
  %i.wl = zext i32 %. to i64                      ; 5 uses
  %min.iters.check841 = icmp ult i32 %., 4
  %ident.check838.not = icmp ne i32 %i.n, 1
  %or.cond871.not873 = select i1 %min.iters.check841, i1 true, i1 %ident.check838.not
  %22 = ptrtoaddr ptr %8 to i64
  %23 = ptrtoaddr ptr %6 to i64
  %i.wm = sub i64 %23, %22
  %diff.check840 = icmp ugt i64 %i.wm, -128
  %or.cond872 = or i1 %or.cond871.not873, %diff.check840
  br i1 %or.cond872, label %.lr.ph703.preheader, label %vector.main.loop.iter.check842

vector.main.loop.iter.check842:                   ; preds = %iter.check856
  %min.iters.check843 = icmp ult i32 %., 16
  br i1 %min.iters.check843, label %vec.epilog.ph860, label %vector.ph844

vector.ph844:                                     ; preds = %vector.main.loop.iter.check842
  %i.wn = and i64 %i.wl, 12
  %n.vec845 = and i64 %i.wl, 4294967280           ; 4 uses
  %i.wo = or disjoint i64 %n.vec845, 1
  br label %vector.body846

vector.body846:                                   ; preds = %vector.ph844, %vector.body846
  %index847 = phi i64 [ 0, %vector.ph844 ], [ %index.next852, %vector.body846 ] ; 3 uses
  %i.wp = getelementptr [8 x i8], ptr %i.p, i64 %index847 ; 4 uses
  %i.wq = getelementptr i8, ptr %i.wp, i64 16
  %i.wr = getelementptr i8, ptr %i.wp, i64 48
  %i.ws = getelementptr i8, ptr %i.wp, i64 80
  %i.wt = getelementptr i8, ptr %i.wp, i64 112
  %wide.load848 = load <4 x double>, ptr %i.wq, align 8, !tbaa !34
  %wide.load849 = load <4 x double>, ptr %i.wr, align 8, !tbaa !34
  %wide.load850 = load <4 x double>, ptr %i.ws, align 8, !tbaa !34
  %wide.load851 = load <4 x double>, ptr %i.wt, align 8, !tbaa !34
  %i.wu = getelementptr [8 x i8], ptr %8, i64 %index847 ; 4 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 32
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wu, i64 64
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wu, i64 96
  store <4 x double> %wide.load848, ptr %i.wu, align 8, !tbaa !34
  store <4 x double> %wide.load849, ptr %i.wv, align 8, !tbaa !34
  store <4 x double> %wide.load850, ptr %i.ww, align 8, !tbaa !34
  store <4 x double> %wide.load851, ptr %i.wx, align 8, !tbaa !34
  %index.next852 = add nuw i64 %index847, 16      ; 2 uses
  %i.wy = icmp eq i64 %index.next852, %n.vec845
  br i1 %i.wy, label %middle.block853, label %vector.body846, !llvm.loop !27

middle.block853:                                  ; preds = %vector.body846
  %cmp.n854 = icmp eq i64 %n.vec845, %i.wl
  br i1 %cmp.n854, label %.loopexit, label %vec.epilog.iter.check858

vec.epilog.iter.check858:                         ; preds = %middle.block853
  %min.epilog.iters.check859 = icmp eq i64 %i.wn, 0
  br i1 %min.epilog.iters.check859, label %.lr.ph703.preheader, label %vec.epilog.ph860, !prof !37

vec.epilog.ph860:                                 ; preds = %vector.main.loop.iter.check842, %vec.epilog.iter.check858
  %vec.epilog.resume.val855 = phi i64 [ %n.vec845, %vec.epilog.iter.check858 ], [ 0, %vector.main.loop.iter.check842 ]
  %n.vec861 = and i64 %i.wl, 4294967292           ; 3 uses
  %i.wz = or disjoint i64 %n.vec861, 1
  br label %vec.epilog.vector.body862

vec.epilog.vector.body862:                        ; preds = %vec.epilog.vector.body862, %vec.epilog.ph860
  %index863 = phi i64 [ %vec.epilog.resume.val855, %vec.epilog.ph860 ], [ %index.next865, %vec.epilog.vector.body862 ] ; 3 uses
  %i.xa = getelementptr [8 x i8], ptr %i.p, i64 %index863
  %i.xb = getelementptr i8, ptr %i.xa, i64 16
  %wide.load864 = load <4 x double>, ptr %i.xb, align 8, !tbaa !34
  %i.xc = getelementptr [8 x i8], ptr %8, i64 %index863
  store <4 x double> %wide.load864, ptr %i.xc, align 8, !tbaa !34
  %index.next865 = add nuw i64 %index863, 4       ; 2 uses
  %i.xd = icmp eq i64 %index.next865, %n.vec861
  br i1 %i.xd, label %vec.epilog.middle.block866, label %vec.epilog.vector.body862, !llvm.loop !28

vec.epilog.middle.block866:                       ; preds = %vec.epilog.vector.body862
  %cmp.n867 = icmp eq i64 %n.vec861, %i.wl
  br i1 %cmp.n867, label %.loopexit, label %.lr.ph703.preheader

.lr.ph703.preheader:                              ; preds = %iter.check856, %vec.epilog.iter.check858, %vec.epilog.middle.block866
  %indvars.iv737.ph = phi i64 [ 1, %iter.check856 ], [ %i.wo, %vec.epilog.iter.check858 ], [ %i.wz, %vec.epilog.middle.block866 ] ; 4 uses
  %i.xe = sub nsw i64 %wide.trip.count740, %indvars.iv737.ph
  %xtraiter879 = and i64 %i.xe, 7                 ; 2 uses
  %lcmp.mod880.not = icmp eq i64 %xtraiter879, 0
  br i1 %lcmp.mod880.not, label %.lr.ph703.prol.loopexit, label %.lr.ph703.prol

.lr.ph703.prol:                                   ; preds = %.lr.ph703.preheader, %.lr.ph703.prol
  %indvars.iv737.prol = phi i64 [ %indvars.iv.next738.prol, %.lr.ph703.prol ], [ %indvars.iv737.ph, %.lr.ph703.preheader ] ; 3 uses
  %prol.iter881 = phi i64 [ %prol.iter881.next, %.lr.ph703.prol ], [ 0, %.lr.ph703.preheader ]
  %i.xf = mul nsw i64 %indvars.iv737.prol, %i.wj
  %i.xg = getelementptr [8 x i8], ptr %i.p, i64 %i.xf
  %i.xh = getelementptr i8, ptr %i.xg, i64 8
  %i.xi = load double, ptr %i.xh, align 8, !tbaa !34
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv737.prol
  store double %i.xi, ptr %i.xj, align 8, !tbaa !34
  %indvars.iv.next738.prol = add nuw nsw i64 %indvars.iv737.prol, 1 ; 2 uses
  %prol.iter881.next = add i64 %prol.iter881, 1   ; 2 uses
  %prol.iter881.cmp.not = icmp eq i64 %prol.iter881.next, %xtraiter879
  br i1 %prol.iter881.cmp.not, label %.lr.ph703.prol.loopexit, label %.lr.ph703.prol, !llvm.loop !29

.lr.ph703.prol.loopexit:                          ; preds = %.lr.ph703.prol, %.lr.ph703.preheader
  %indvars.iv737.unr = phi i64 [ %indvars.iv737.ph, %.lr.ph703.preheader ], [ %indvars.iv.next738.prol, %.lr.ph703.prol ]
  %i.xk = sub nsw i64 %indvars.iv737.ph, %wide.trip.count740
  %i.xl = icmp ugt i64 %i.xk, -8
  br i1 %i.xl, label %.loopexit, label %.lr.ph703

.lr.ph703:                                        ; preds = %.lr.ph703.prol.loopexit, %.lr.ph703
  %indvars.iv737 = phi i64 [ %indvars.iv.next738.7, %.lr.ph703 ], [ %indvars.iv737.unr, %.lr.ph703.prol.loopexit ] ; 11 uses
  %i.xm = mul nsw i64 %indvars.iv737, %i.wj
  %i.xn = getelementptr [8 x i8], ptr %i.p, i64 %i.xm
  %i.xo = getelementptr i8, ptr %i.xn, i64 8
  %i.xp = load double, ptr %i.xo, align 8, !tbaa !34
  %i.xq = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv737
  store double %i.xp, ptr %i.xq, align 8, !tbaa !34
  %indvars.iv.next738 = add nuw nsw i64 %indvars.iv737, 1
  %i.xr = mul nsw i64 %indvars.iv.next738, %i.wj
  %i.xs = getelementptr [8 x i8], ptr %i.p, i64 %i.xr
  %i.xt = getelementptr i8, ptr %i.xs, i64 8
  %i.xu = load double, ptr %i.xt, align 8, !tbaa !34
  %i.xv = getelementptr [8 x i8], ptr %8, i64 %indvars.iv737
  store double %i.xu, ptr %i.xv, align 8, !tbaa !34
  %indvars.iv.next738.1 = add nuw nsw i64 %indvars.iv737, 2 ; 2 uses
  %i.xw = mul nsw i64 %indvars.iv.next738.1, %i.wj
  %i.xx = getelementptr [8 x i8], ptr %i.p, i64 %i.xw
  %i.xy = getelementptr i8, ptr %i.xx, i64 8
  %i.xz = load double, ptr %i.xy, align 8, !tbaa !34
  %i.ya = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next738.1
  store double %i.xz, ptr %i.ya, align 8, !tbaa !34
  %indvars.iv.next738.2 = add nuw nsw i64 %indvars.iv737, 3 ; 2 uses
  %i.yb = mul nsw i64 %indvars.iv.next738.2, %i.wj
  %i.yc = getelementptr [8 x i8], ptr %i.p, i64 %i.yb
  %i.yd = getelementptr i8, ptr %i.yc, i64 8
  %i.ye = load double, ptr %i.yd, align 8, !tbaa !34
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next738.2
  store double %i.ye, ptr %i.yf, align 8, !tbaa !34
  %indvars.iv.next738.3 = add nuw nsw i64 %indvars.iv737, 4 ; 2 uses
  %i.yg = mul nsw i64 %indvars.iv.next738.3, %i.wj
  %i.yh = getelementptr [8 x i8], ptr %i.p, i64 %i.yg
  %i.yi = getelementptr i8, ptr %i.yh, i64 8
  %i.yj = load double, ptr %i.yi, align 8, !tbaa !34
  %i.yk = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next738.3
  store double %i.yj, ptr %i.yk, align 8, !tbaa !34
  %indvars.iv.next738.4 = add nuw nsw i64 %indvars.iv737, 5 ; 2 uses
  %i.yl = mul nsw i64 %indvars.iv.next738.4, %i.wj
  %i.ym = getelementptr [8 x i8], ptr %i.p, i64 %i.yl
  %i.yn = getelementptr i8, ptr %i.ym, i64 8
  %i.yo = load double, ptr %i.yn, align 8, !tbaa !34
  %i.yp = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next738.4
  store double %i.yo, ptr %i.yp, align 8, !tbaa !34
  %indvars.iv.next738.5 = add nuw nsw i64 %indvars.iv737, 6 ; 2 uses
  %i.yq = mul nsw i64 %indvars.iv.next738.5, %i.wj
  %i.yr = getelementptr [8 x i8], ptr %i.p, i64 %i.yq
  %i.ys = getelementptr i8, ptr %i.yr, i64 8
  %i.yt = load double, ptr %i.ys, align 8, !tbaa !34
  %i.yu = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next738.5
  store double %i.yt, ptr %i.yu, align 8, !tbaa !34
  %indvars.iv.next738.6 = add nuw nsw i64 %indvars.iv737, 7 ; 2 uses
  %i.yv = mul nsw i64 %indvars.iv.next738.6, %i.wj
  %i.yw = getelementptr [8 x i8], ptr %i.p, i64 %i.yv
  %i.yx = getelementptr i8, ptr %i.yw, i64 8
  %i.yy = load double, ptr %i.yx, align 8, !tbaa !34
  %i.yz = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next738.6
  store double %i.yy, ptr %i.yz, align 8, !tbaa !34
  %indvars.iv.next738.7 = add nuw nsw i64 %indvars.iv737, 8 ; 2 uses
  %exitcond741.not.7 = icmp eq i64 %indvars.iv.next738.7, %wide.trip.count740
  br i1 %exitcond741.not.7, label %.loopexit, label %.lr.ph703, !llvm.loop !30

.loopexit:                                        ; preds = %vec.epilog.scalar.ph825.prol.loopexit, %vec.epilog.scalar.ph825, %bb.bq, %.lr.ph703.prol.loopexit, %.lr.ph703, %middle.block821, %vec.epilog.middle.block834, %middle.block853, %vec.epilog.middle.block866, %._crit_edge688, %bb.bl, %._crit_edge699, %bb.bi, %._crit_edge708, %bb.w, %bb.x, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dlaset_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlargv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlartv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlartg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @drot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

end_hunk_1
