Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlaed2?download=true
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"DLAED2\00", align 1
@c_b3 = internal global double -1.000000e+00, align 8
@c__1 = internal global i32 1, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Epsilon\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"A\00", align 1

; Function Attrs: nounwind uwtable
define void @dlaed2_(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7, ptr noundef %8, ptr noundef %9, ptr nofree noundef writeonly captures(none) %10, ptr noundef %11, ptr nofree noundef captures(none) %12, ptr noundef %13, ptr nofree noundef captures(none) %14, ptr nofree noundef captures(none) %15, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %16) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 20 uses
  %i.b = alloca [4 x i32], align 16               ; 20 uses
  %i.c = alloca double, align 8                   ; 8 uses
  %i.d = alloca double, align 8                   ; 8 uses
  %i.e = alloca double, align 8                   ; 6 uses
  %i.f = alloca i32, align 4                      ; 9 uses
  %i.g = alloca [4 x i32], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  %i.h = getelementptr inbounds i8, ptr %3, i64 -8 ; 20 uses
  %i.i = load i32, ptr %5, align 4, !tbaa !35     ; 9 uses
  %narrow = xor i32 %i.i, -1
  %i.j = sext i32 %narrow to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %4, i64 %i.j ; 9 uses
  %i.l = getelementptr inbounds i8, ptr %6, i64 -4 ; 25 uses
  %i.m = getelementptr inbounds i8, ptr %8, i64 -8 ; 12 uses
  %i.n = getelementptr inbounds i8, ptr %9, i64 -8 ; 11 uses
  %i.o = getelementptr inbounds i8, ptr %10, i64 -8 ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %11, i64 -8 ; 7 uses
  %i.q = getelementptr inbounds i8, ptr %12, i64 -4 ; 18 uses
  %i.r = getelementptr inbounds i8, ptr %13, i64 -4 ; 13 uses
  %i.s = getelementptr inbounds i8, ptr %14, i64 -4 ; 10 uses
  %i.t = getelementptr inbounds i8, ptr %15, i64 -4 ; 19 uses
  store i32 0, ptr %16, align 4, !tbaa !35
  %i.u = load i32, ptr %1, align 4, !tbaa !35     ; 6 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = load i32, ptr %5, align 4, !tbaa !35
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.u, i32 1)
  %i.x = icmp slt i32 %i.w, %spec.select
  br i1 %i.x, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.a, align 4, !tbaa !35
  %i.y = lshr i32 %i.u, 1
  %i.z = icmp samesign ugt i32 %i.u, 1
  %i.aa = zext i1 %i.z to i32
  %i.ab = load i32, ptr %2, align 4, !tbaa !35    ; 11 uses
  %i.ac = icmp slt i32 %i.ab, %i.aa
  %i.ad = icmp slt i32 %i.y, %i.ab
  %or.cond = or i1 %i.ac, %i.ad
  br i1 %or.cond, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c, %bb.b, %bb.a
  %.sink = phi i32 [ -2, %bb.a ], [ -6, %bb.b ], [ -3, %bb.c ]
  %.neg = phi i32 [ 2, %bb.a ], [ 6, %bb.b ], [ 3, %bb.c ]
  store i32 %.sink, ptr %16, align 4, !tbaa !35
  store i32 %.neg, ptr %i.a, align 4, !tbaa !35
  %i.ae = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i32 noundef 6) #6 ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.af = icmp eq i32 %i.u, 0
  br i1 %i.af, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = sub nsw i32 %i.u, %i.ab
  store i32 %i.ag, ptr %i.f, align 4, !tbaa !35
  %i.ah = load double, ptr %7, align 8, !tbaa !37
  %i.ai = fcmp olt double %i.ah, 0.000000e+00
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = zext nneg i32 %i.ab to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @dscal_(ptr noundef nonnull %i.f, ptr noundef nonnull @c_b3, ptr noundef nonnull %i.al, ptr noundef nonnull @c__1) #6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store double f0x3FE6A09E667F3BCC, ptr %i.e, align 8, !tbaa !37
  call void @dscal_(ptr noundef nonnull %1, ptr noundef nonnull %i.e, ptr noundef %8, ptr noundef nonnull @c__1) #6
  %i.am = load double, ptr %7, align 8, !tbaa !37
  %i.an = fmul double %i.am, 2.000000e+00         ; 3 uses
  %i.ao = fcmp oge double %i.an, 0.000000e+00
  %i.ap = fneg double %i.an
  %i.aq = select i1 %i.ao, double %i.an, double %i.ap
  store double %i.aq, ptr %7, align 8, !tbaa !37
  %i.ar = load i32, ptr %1, align 4, !tbaa !35    ; 7 uses
  %.not437460.not = icmp slt i32 %i.ab, %i.ar
  br i1 %.not437460.not, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.g
  %i.as = zext i32 %i.ab to i64                   ; 5 uses
  %i.at = add nuw nsw i64 %i.as, 1                ; 4 uses
  %i.au = add nuw i32 %i.ar, 1
  %i.av = xor i32 %i.ab, -1
  %i.aw = add i32 %i.ar, %i.av                    ; 3 uses
  %i.ax = zext i32 %i.aw to i64
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.aw, 3
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.az = shl nuw nsw i64 %i.as, 2
  %i.ba = getelementptr i8, ptr %6, i64 %i.az
  %i.bb = xor i32 %i.ab, -1
  %i.bc = add i32 %i.ar, %i.bb
  %i.bd = zext i32 %i.bc to i64
  %i.be = add nuw nsw i64 %i.as, %i.bd
  %i.bf = shl nuw nsw i64 %i.be, 2
  %i.bg = getelementptr i8, ptr %6, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 4
  %i.bi = getelementptr i8, ptr %2, i64 4
  %bound0 = icmp ult ptr %i.ba, %i.bi
  %bound1 = icmp ult ptr %2, %i.bh
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check704 = icmp ult i32 %i.aw, 31
  br i1 %min.iters.check704, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bj = and i64 %i.ay, 28
  %n.vec = and i64 %i.ay, 8589934560              ; 4 uses
  %i.bk = add nuw nsw i64 %i.at, %n.vec
  %i.bl = load i32, ptr %2, align 4, !tbaa !35, !alias.scope !38
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.bl, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.bm = getelementptr [4 x i8], ptr %6, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %index ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 64 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 96 ; 2 uses
  %wide.load = load <8 x i32>, ptr %i.bn, align 4, !tbaa !35, !alias.scope !39, !noalias !38
  %wide.load705 = load <8 x i32>, ptr %i.bo, align 4, !tbaa !35, !alias.scope !39, !noalias !38
  %wide.load706 = load <8 x i32>, ptr %i.bp, align 4, !tbaa !35, !alias.scope !39, !noalias !38
  %wide.load707 = load <8 x i32>, ptr %i.bq, align 4, !tbaa !35, !alias.scope !39, !noalias !38
  %i.br = add nsw <8 x i32> %wide.load, %broadcast.splat
  %i.bs = add nsw <8 x i32> %wide.load705, %broadcast.splat
  %i.bt = add nsw <8 x i32> %wide.load706, %broadcast.splat
  %i.bu = add nsw <8 x i32> %wide.load707, %broadcast.splat
  store <8 x i32> %i.br, ptr %i.bn, align 4, !tbaa !35, !alias.scope !39, !noalias !38
  store <8 x i32> %i.bs, ptr %i.bo, align 4, !tbaa !35, !alias.scope !39, !noalias !38
  store <8 x i32> %i.bt, ptr %i.bp, align 4, !tbaa !35, !alias.scope !39, !noalias !38
  store <8 x i32> %i.bu, ptr %i.bq, align 4, !tbaa !35, !alias.scope !39, !noalias !38
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !43

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec708 = and i64 %i.ay, 8589934588           ; 3 uses
  %i.bw = add nuw nsw i64 %i.at, %n.vec708
  %i.bx = load i32, ptr %2, align 4, !tbaa !35, !alias.scope !38
  %broadcast.splatinsert711 = insertelement <4 x i32> poison, i32 %i.bx, i64 0
  %broadcast.splat712 = shufflevector <4 x i32> %broadcast.splatinsert711, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.by = getelementptr [4 x i8], ptr %6, i64 %i.as
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index709 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next713, %vec.epilog.vector.body ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %index709 ; 2 uses
  %wide.load710 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !35, !alias.scope !39, !noalias !38
  %i.ca = add nsw <4 x i32> %wide.load710, %broadcast.splat712
  store <4 x i32> %i.ca, ptr %i.bz, align 4, !tbaa !35, !alias.scope !39, !noalias !38
  %index.next713 = add nuw i64 %index709, 4       ; 2 uses
  %i.cb = icmp eq i64 %index.next713, %n.vec708
  br i1 %i.cb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !12

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n714 = icmp eq i64 %i.ay, %n.vec708
  br i1 %cmp.n714, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.at, %iter.check ], [ %i.at, %vector.memcheck ], [ %i.bk, %vec.epilog.iter.check ], [ %i.bw, %vec.epilog.middle.block ] ; 3 uses
  %i.cc = add i32 %i.ar, 1
  %i.cd = trunc i64 %indvars.iv.ph to i32         ; 2 uses
  %i.ce = sub i32 %i.cc, %i.cd
  %i.cf = sub i32 %i.ar, %i.cd
  %xtraiter = and i32 %i.ce, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.cg = load i32, ptr %2, align 4, !tbaa !35
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.prol ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !35
  %i.cj = add nsw i32 %i.ci, %i.cg
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !35
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !13

end_hunk_0
begin_hunk_1_@dlaed2_:bb.a
  %indvars.iv600 = phi i64 [ %indvars.iv.next601, %bb.q ], [ 1, %bb.p ] ; 2 uses
  %i.oq = phi i32 [ %i.pa, %bb.q ], [ %.1412506, %bb.p ]
  %i.or = sext i32 %i.oq to i64
  %i.os = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.or ; 3 uses
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !35 ; 2 uses
  %i.ou = sext i32 %i.ot to i64
  %i.ov = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ou
  %i.ow = load double, ptr %i.ov, align 8, !tbaa !37
  %i.ox = fcmp olt double %i.ol, %i.ow
  %i.oy = getelementptr i8, ptr %i.os, i64 -4     ; 2 uses
  br i1 %i.ox, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph502
  store i32 %i.ot, ptr %i.oy, align 4, !tbaa !35
  store i32 %.0408507, ptr %i.os, align 4, !tbaa !35
  %indvars.iv.next601 = add nuw nsw i64 %indvars.iv600, 1
  %i.oz = trunc nuw nsw i64 %indvars.iv600 to i32
  %i.pa = add i32 %.1412506, %i.oz                ; 3 uses
  %i.pb = load i32, ptr %1, align 4, !tbaa !35
  %.not445 = icmp sgt i32 %i.pa, %i.pb
  br i1 %.not445, label %._crit_edge503, label %.lr.ph502

bb.r:                                             ; preds = %.lr.ph502
  store i32 %.0408507, ptr %i.oy, align 4, !tbaa !35
  br label %bb.t

._crit_edge503:                                   ; preds = %bb.q, %bb.p
  %.lcssa = phi i32 [ %.1412506, %bb.p ], [ %i.pa, %bb.q ]
  %i.pc = sext i32 %.lcssa to i64
  %i.pd = getelementptr [4 x i8], ptr %i.s, i64 %i.pc
  %i.pe = getelementptr i8, ptr %i.pd, i64 -4
  store i32 %.0408507, ptr %i.pe, align 4, !tbaa !35
  br label %bb.t

bb.s:                                             ; preds = %bb.m
  %i.pf = load i32, ptr %0, align 4, !tbaa !35
  %i.pg = add nsw i32 %i.pf, 1                    ; 2 uses
  store i32 %i.pg, ptr %0, align 4, !tbaa !35
  %i.ph = sext i32 %i.pg to i64                   ; 3 uses
  %i.pi = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ph
  store double %i.nh, ptr %i.pi, align 8, !tbaa !37
  %i.pj = load double, ptr %i.nb, align 8, !tbaa !37
  %i.pk = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ph
  store double %i.pj, ptr %i.pk, align 8, !tbaa !37
  %i.pl = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ph
  store i32 %.0408507, ptr %i.pl, align 4, !tbaa !35
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %._crit_edge503, %bb.s, %bb.l
  %.2413 = phi i32 [ %i.mw, %bb.l ], [ %.1412506, %bb.s ], [ %i.oo, %._crit_edge503 ], [ %i.oo, %bb.r ]
  %.1409 = phi i32 [ %.0408507, %bb.l ], [ %i.mm, %bb.s ], [ %i.mm, %._crit_edge503 ], [ %i.mm, %bb.r ] ; 2 uses
  %i.pm = load i32, ptr %1, align 4, !tbaa !35
  %i.pn = sext i32 %i.pm to i64
  %.not443 = icmp slt i64 %indvars.iv.next604, %i.pn
  br i1 %.not443, label %.lr.ph508, label %.loopexit454

.loopexit454:                                     ; preds = %bb.j, %bb.t, %._crit_edge487, %.preheader
  %.2410 = phi i32 [ %.1409, %bb.t ], [ %i.mb, %.preheader ], [ undef, %._crit_edge487 ], [ undef, %bb.j ] ; 2 uses
  %i.po = load i32, ptr %0, align 4, !tbaa !35
  %i.pp = add nsw i32 %i.po, 1                    ; 2 uses
  store i32 %i.pp, ptr %0, align 4, !tbaa !35
  %i.pq = sext i32 %.2410 to i64                  ; 2 uses
  %i.pr = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.pq
  %i.ps = load double, ptr %i.pr, align 8, !tbaa !37
  %i.pt = sext i32 %i.pp to i64                   ; 3 uses
  %i.pu = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.pt
  store double %i.ps, ptr %i.pu, align 8, !tbaa !37
  %i.pv = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.pq
  %i.pw = load double, ptr %i.pv, align 8, !tbaa !37
  %i.px = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.pt
  store double %i.pw, ptr %i.px, align 8, !tbaa !37
  %i.py = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.pt
  store i32 %.2410, ptr %i.py, align 4, !tbaa !35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !tbaa !35
  %i.pz = load i32, ptr %1, align 4, !tbaa !35    ; 4 uses
  %.not446511 = icmp slt i32 %i.pz, 1
  br i1 %.not446511, label %._crit_edge515, label %.lr.ph514.preheader

.lr.ph514.preheader:                              ; preds = %.loopexit454
  %i.qa = zext nneg i32 %i.pz to i64              ; 2 uses
  %xtraiter788 = and i64 %i.qa, 7                 ; 3 uses
  %i.qb = icmp ult i32 %i.pz, 8
  br i1 %i.qb, label %.lr.ph514.epil.preheader, label %.lr.ph514.preheader.new

.lr.ph514.preheader.new:                          ; preds = %.lr.ph514.preheader
  %unroll_iter792 = and i64 %i.qa, 2147483640
  br label %.lr.ph514

.lr.ph514:                                        ; preds = %.lr.ph514, %.lr.ph514.preheader.new
  %indvars.iv609 = phi i64 [ 1, %.lr.ph514.preheader.new ], [ %indvars.iv.next610.7, %.lr.ph514 ] ; 9 uses
  %niter793 = phi i64 [ 0, %.lr.ph514.preheader.new ], [ %niter793.next.7, %.lr.ph514 ]
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv609
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !35
  %i.qe = sext i32 %i.qd to i64
  %i.qf = getelementptr [4 x i8], ptr %i.b, i64 %i.qe
  %i.qg = getelementptr i8, ptr %i.qf, i64 -4     ; 2 uses
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !35
  %i.qi = add nsw i32 %i.qh, 1
  store i32 %i.qi, ptr %i.qg, align 4, !tbaa !35
  %i.qj = getelementptr [4 x i8], ptr %15, i64 %indvars.iv609
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !35
  %i.ql = sext i32 %i.qk to i64
  %i.qm = getelementptr [4 x i8], ptr %i.b, i64 %i.ql
  %i.qn = getelementptr i8, ptr %i.qm, i64 -4     ; 2 uses
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !35
  %i.qp = add nsw i32 %i.qo, 1
  store i32 %i.qp, ptr %i.qn, align 4, !tbaa !35
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv609
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !35
  %i.qt = sext i32 %i.qs to i64
  %i.qu = getelementptr [4 x i8], ptr %i.b, i64 %i.qt
  %i.qv = getelementptr i8, ptr %i.qu, i64 -4     ; 2 uses
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !35
  %i.qx = add nsw i32 %i.qw, 1
  store i32 %i.qx, ptr %i.qv, align 4, !tbaa !35
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv609
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 12
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !35
  %i.rb = sext i32 %i.ra to i64
  %i.rc = getelementptr [4 x i8], ptr %i.b, i64 %i.rb
  %i.rd = getelementptr i8, ptr %i.rc, i64 -4     ; 2 uses
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !35
  %i.rf = add nsw i32 %i.re, 1
  store i32 %i.rf, ptr %i.rd, align 4, !tbaa !35
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv609
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 16
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !35
  %i.rj = sext i32 %i.ri to i64
  %i.rk = getelementptr [4 x i8], ptr %i.b, i64 %i.rj
  %i.rl = getelementptr i8, ptr %i.rk, i64 -4     ; 2 uses
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !35
  %i.rn = add nsw i32 %i.rm, 1
  store i32 %i.rn, ptr %i.rl, align 4, !tbaa !35
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv609
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 20
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !35
  %i.rr = sext i32 %i.rq to i64
  %i.rs = getelementptr [4 x i8], ptr %i.b, i64 %i.rr
  %i.rt = getelementptr i8, ptr %i.rs, i64 -4     ; 2 uses
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !35
  %i.rv = add nsw i32 %i.ru, 1
  store i32 %i.rv, ptr %i.rt, align 4, !tbaa !35
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv609
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 24
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !35
  %i.rz = sext i32 %i.ry to i64
  %i.sa = getelementptr [4 x i8], ptr %i.b, i64 %i.rz
  %i.sb = getelementptr i8, ptr %i.sa, i64 -4     ; 2 uses
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !35
  %i.sd = add nsw i32 %i.sc, 1
  store i32 %i.sd, ptr %i.sb, align 4, !tbaa !35
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv609
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 28
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !35
  %i.sh = sext i32 %i.sg to i64
  %i.si = getelementptr [4 x i8], ptr %i.b, i64 %i.sh
  %i.sj = getelementptr i8, ptr %i.si, i64 -4     ; 2 uses
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !35
  %i.sl = add nsw i32 %i.sk, 1
  store i32 %i.sl, ptr %i.sj, align 4, !tbaa !35
  %indvars.iv.next610.7 = add nuw nsw i64 %indvars.iv609, 8 ; 2 uses
  %niter793.next.7 = add i64 %niter793, 8         ; 2 uses
  %niter793.ncmp.7 = icmp eq i64 %niter793.next.7, %unroll_iter792
  br i1 %niter793.ncmp.7, label %._crit_edge515.loopexit.unr-lcssa, label %.lr.ph514, !llvm.loop !27

._crit_edge515.loopexit.unr-lcssa:                ; preds = %.lr.ph514
  %lcmp.mod790.not = icmp eq i64 %xtraiter788, 0
  br i1 %lcmp.mod790.not, label %._crit_edge515.loopexit, label %.lr.ph514.epil.preheader

.lr.ph514.epil.preheader:                         ; preds = %._crit_edge515.loopexit.unr-lcssa, %.lr.ph514.preheader
  %indvars.iv609.epil.init = phi i64 [ 1, %.lr.ph514.preheader ], [ %indvars.iv.next610.7, %._crit_edge515.loopexit.unr-lcssa ]
  %lcmp.mod791 = icmp ne i64 %xtraiter788, 0
  call void @llvm.assume(i1 %lcmp.mod791)
  br label %.lr.ph514.epil

.lr.ph514.epil:                                   ; preds = %.lr.ph514.epil, %.lr.ph514.epil.preheader
  %indvars.iv609.epil = phi i64 [ %indvars.iv609.epil.init, %.lr.ph514.epil.preheader ], [ %indvars.iv.next610.epil, %.lr.ph514.epil ] ; 2 uses
  %epil.iter789 = phi i64 [ 0, %.lr.ph514.epil.preheader ], [ %epil.iter789.next, %.lr.ph514.epil ]
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv609.epil
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !35
  %i.so = sext i32 %i.sn to i64
  %i.sp = getelementptr [4 x i8], ptr %i.b, i64 %i.so
  %i.sq = getelementptr i8, ptr %i.sp, i64 -4     ; 2 uses
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !35
  %i.ss = add nsw i32 %i.sr, 1
  store i32 %i.ss, ptr %i.sq, align 4, !tbaa !35
  %indvars.iv.next610.epil = add nuw nsw i64 %indvars.iv609.epil, 1
  %epil.iter789.next = add i64 %epil.iter789, 1   ; 2 uses
  %epil.iter789.cmp.not = icmp eq i64 %epil.iter789.next, %xtraiter788
  br i1 %epil.iter789.cmp.not, label %._crit_edge515.loopexit, label %.lr.ph514.epil, !llvm.loop !28

._crit_edge515.loopexit:                          ; preds = %.lr.ph514.epil, %._crit_edge515.loopexit.unr-lcssa
  %.pre636 = load i32, ptr %i.b, align 16, !tbaa !35
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.pre637 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !35
  %.phi.trans.insert638 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre639 = load i32, ptr %.phi.trans.insert638, align 8, !tbaa !35
  %.phi.trans.insert640 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.pre641 = load i32, ptr %.phi.trans.insert640, align 4, !tbaa !35
  %17 = freeze i32 %.pre636
  %18 = freeze i32 %.pre637
  %19 = freeze i32 %.pre639
  br label %._crit_edge515

._crit_edge515:                                   ; preds = %._crit_edge515.loopexit, %.loopexit454
  %i.st = phi i32 [ %.pre641, %._crit_edge515.loopexit ], [ 0, %.loopexit454 ]
  %i.su = phi i32 [ %19, %._crit_edge515.loopexit ], [ 0, %.loopexit454 ]
  %i.sv = phi i32 [ %18, %._crit_edge515.loopexit ], [ 0, %.loopexit454 ] ; 2 uses
  %i.sw = phi i32 [ %17, %._crit_edge515.loopexit ], [ 0, %.loopexit454 ] ; 4 uses
  %20 = add i32 %i.sw, 1                          ; 2 uses
  %21 = zext i32 %20 to i64
  %22 = shl nuw i64 %21, 32
  %23 = or disjoint i64 %22, 1
  store i64 %23, ptr %i.g, align 16
  %i.sx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.sy = add i32 %i.sv, %20                      ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ta = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.tb = add i32 %i.sy, %i.su
  %24 = zext i32 %i.sy to i64
  %25 = zext i32 %i.tb to i64
  %26 = shl nuw i64 %25, 32
  %27 = or disjoint i64 %26, %24
  store i64 %27, ptr %i.sz, align 8
  %i.tc = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.td = sub nsw i32 %i.pz, %i.st
  store i32 %i.td, ptr %0, align 4, !tbaa !35
  %i.te = load i32, ptr %1, align 4, !tbaa !35    ; 3 uses
  %.not447516 = icmp slt i32 %i.te, 1
  br i1 %.not447516, label %._crit_edge520, label %.lr.ph519.preheader

.lr.ph519.preheader:                              ; preds = %._crit_edge515
  %i.tf = zext nneg i32 %i.te to i64              ; 2 uses
  %xtraiter794 = and i64 %i.tf, 3                 ; 3 uses
  %i.tg = icmp ult i32 %i.te, 4
  br i1 %i.tg, label %.lr.ph519.epil.preheader, label %.lr.ph519.preheader.new

.lr.ph519.preheader.new:                          ; preds = %.lr.ph519.preheader
  %unroll_iter798 = and i64 %i.tf, 2147483644
  br label %.lr.ph519

.lr.ph519:                                        ; preds = %.lr.ph519, %.lr.ph519.preheader.new
  %indvars.iv614 = phi i64 [ 1, %.lr.ph519.preheader.new ], [ %indvars.iv.next615.3, %.lr.ph519 ] ; 7 uses
  %niter799 = phi i64 [ 0, %.lr.ph519.preheader.new ], [ %niter799.next.3, %.lr.ph519 ]
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv614
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !35 ; 2 uses
  %i.tj = sext i32 %i.ti to i64
  %i.tk = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.tj
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !35
  %i.tm = sext i32 %i.tl to i64
  %i.tn = getelementptr [4 x i8], ptr %i.g, i64 %i.tm
  %i.to = getelementptr i8, ptr %i.tn, i64 -4     ; 2 uses
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !35 ; 2 uses
  %i.tq = sext i32 %i.tp to i64                   ; 2 uses
  %i.tr = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.tq
  store i32 %i.ti, ptr %i.tr, align 4, !tbaa !35
  %i.ts = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.tq
  %i.tt = trunc nuw nsw i64 %indvars.iv614 to i32
  store i32 %i.tt, ptr %i.ts, align 4, !tbaa !35
  %i.tu = add nsw i32 %i.tp, 1
  store i32 %i.tu, ptr %i.to, align 4, !tbaa !35
  %i.tv = getelementptr [4 x i8], ptr %14, i64 %indvars.iv614
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !35 ; 2 uses
  %i.tx = sext i32 %i.tw to i64
  %i.ty = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.tx
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !35
  %i.ua = sext i32 %i.tz to i64
  %i.ub = getelementptr [4 x i8], ptr %i.g, i64 %i.ua
  %i.uc = getelementptr i8, ptr %i.ub, i64 -4     ; 2 uses
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !35 ; 2 uses
  %i.ue = sext i32 %i.ud to i64                   ; 2 uses
  %i.uf = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ue
  store i32 %i.tw, ptr %i.uf, align 4, !tbaa !35
  %i.ug = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ue
  %i.uh = trunc i64 %indvars.iv614 to i32
  %i.ui = add i32 %i.uh, 1
  store i32 %i.ui, ptr %i.ug, align 4, !tbaa !35
  %i.uj = add nsw i32 %i.ud, 1
  store i32 %i.uj, ptr %i.uc, align 4, !tbaa !35
  %indvars.iv.next615.1 = add nuw nsw i64 %indvars.iv614, 2 ; 2 uses
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next615.1
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !35 ; 2 uses
  %i.um = sext i32 %i.ul to i64
  %i.un = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.um
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !35
  %i.up = sext i32 %i.uo to i64
  %i.uq = getelementptr [4 x i8], ptr %i.g, i64 %i.up
  %i.ur = getelementptr i8, ptr %i.uq, i64 -4     ; 2 uses
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !35 ; 2 uses
  %i.ut = sext i32 %i.us to i64                   ; 2 uses
  %i.uu = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ut
  store i32 %i.ul, ptr %i.uu, align 4, !tbaa !35
  %i.uv = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ut
  %i.uw = trunc nuw nsw i64 %indvars.iv.next615.1 to i32
  store i32 %i.uw, ptr %i.uv, align 4, !tbaa !35
  %i.ux = add nsw i32 %i.us, 1
  store i32 %i.ux, ptr %i.ur, align 4, !tbaa !35
  %indvars.iv.next615.2 = add nuw nsw i64 %indvars.iv614, 3 ; 2 uses
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next615.2
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !35 ; 2 uses
  %i.va = sext i32 %i.uz to i64
  %i.vb = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.va
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !35
  %i.vd = sext i32 %i.vc to i64
  %i.ve = getelementptr [4 x i8], ptr %i.g, i64 %i.vd
  %i.vf = getelementptr i8, ptr %i.ve, i64 -4     ; 2 uses
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !35 ; 2 uses
  %i.vh = sext i32 %i.vg to i64                   ; 2 uses
  %i.vi = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.vh
  store i32 %i.uz, ptr %i.vi, align 4, !tbaa !35
  %i.vj = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.vh
  %i.vk = trunc nuw nsw i64 %indvars.iv.next615.2 to i32
  store i32 %i.vk, ptr %i.vj, align 4, !tbaa !35
  %i.vl = add nsw i32 %i.vg, 1
  store i32 %i.vl, ptr %i.vf, align 4, !tbaa !35
  %indvars.iv.next615.3 = add nuw nsw i64 %indvars.iv614, 4 ; 2 uses
  %niter799.next.3 = add i64 %niter799, 4         ; 2 uses
  %niter799.ncmp.3 = icmp eq i64 %niter799.next.3, %unroll_iter798
  br i1 %niter799.ncmp.3, label %._crit_edge520.loopexit.unr-lcssa, label %.lr.ph519, !llvm.loop !29

._crit_edge520.loopexit.unr-lcssa:                ; preds = %.lr.ph519
  %lcmp.mod796.not = icmp eq i64 %xtraiter794, 0
  br i1 %lcmp.mod796.not, label %._crit_edge520, label %.lr.ph519.epil.preheader

.lr.ph519.epil.preheader:                         ; preds = %._crit_edge520.loopexit.unr-lcssa, %.lr.ph519.preheader
  %indvars.iv614.epil.init = phi i64 [ 1, %.lr.ph519.preheader ], [ %indvars.iv.next615.3, %._crit_edge520.loopexit.unr-lcssa ]
  %lcmp.mod797 = icmp ne i64 %xtraiter794, 0
  call void @llvm.assume(i1 %lcmp.mod797)
  br label %.lr.ph519.epil

.lr.ph519.epil:                                   ; preds = %.lr.ph519.epil, %.lr.ph519.epil.preheader
  %indvars.iv614.epil = phi i64 [ %indvars.iv614.epil.init, %.lr.ph519.epil.preheader ], [ %indvars.iv.next615.epil, %.lr.ph519.epil ] ; 3 uses
  %epil.iter795 = phi i64 [ 0, %.lr.ph519.epil.preheader ], [ %epil.iter795.next, %.lr.ph519.epil ]
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv614.epil
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !35 ; 2 uses
  %i.vo = sext i32 %i.vn to i64
  %i.vp = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.vo
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !35
  %i.vr = sext i32 %i.vq to i64
  %i.vs = getelementptr [4 x i8], ptr %i.g, i64 %i.vr
  %i.vt = getelementptr i8, ptr %i.vs, i64 -4     ; 2 uses
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !35 ; 2 uses
  %i.vv = sext i32 %i.vu to i64                   ; 2 uses
  %i.vw = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.vv
  store i32 %i.vn, ptr %i.vw, align 4, !tbaa !35
  %i.vx = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.vv
  %i.vy = trunc nuw nsw i64 %indvars.iv614.epil to i32
  store i32 %i.vy, ptr %i.vx, align 4, !tbaa !35
  %i.vz = add nsw i32 %i.vu, 1
  store i32 %i.vz, ptr %i.vt, align 4, !tbaa !35
  %indvars.iv.next615.epil = add nuw nsw i64 %indvars.iv614.epil, 1
  %epil.iter795.next = add i64 %epil.iter795, 1   ; 2 uses
  %epil.iter795.cmp.not = icmp eq i64 %epil.iter795.next, %xtraiter794
  br i1 %epil.iter795.cmp.not, label %._crit_edge520, label %.lr.ph519.epil, !llvm.loop !30

._crit_edge520:                                   ; preds = %._crit_edge520.loopexit.unr-lcssa, %.lr.ph519.epil, %._crit_edge515
  %i.wa = add nsw i32 %i.sv, %i.sw
  %i.wb = load i32, ptr %2, align 4, !tbaa !35
  %i.wc = mul nsw i32 %i.wb, %i.wa
  %i.wd = add nsw i32 %i.wc, 1                    ; 2 uses
  store i32 %i.sw, ptr %i.a, align 4, !tbaa !35
  %.not448521 = icmp slt i32 %i.sw, 1
  br i1 %.not448521, label %._crit_edge527, label %.lr.ph526

.lr.ph526:                                        ; preds = %._crit_edge520, %.lr.ph526
  %indvars.iv619 = phi i64 [ %indvars.iv.next620, %.lr.ph526 ], [ 1, %._crit_edge520 ] ; 4 uses
  %.0406524 = phi i32 [ %i.wr, %.lr.ph526 ], [ 1, %._crit_edge520 ] ; 2 uses
  %indvars621 = trunc i64 %indvars.iv619 to i32
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv619
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !35 ; 2 uses
  %i.wg = mul nsw i32 %i.wf, %i.i
  %i.wh = sext i32 %i.wg to i64
  %i.wi = getelementptr [8 x i8], ptr %i.k, i64 %i.wh
  %i.wj = getelementptr i8, ptr %i.wi, i64 8
  %i.wk = sext i32 %.0406524 to i64
  %i.wl = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.wk
  call void @dcopy_(ptr noundef nonnull %2, ptr noundef %i.wj, ptr noundef nonnull @c__1, ptr noundef nonnull %i.wl, ptr noundef nonnull @c__1) #6
  %i.wm = sext i32 %i.wf to i64
  %i.wn = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.wm
  %i.wo = load double, ptr %i.wn, align 8, !tbaa !37
  %i.wp = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv619
  store double %i.wo, ptr %i.wp, align 8, !tbaa !37
  %indvars.iv.next620 = add nuw nsw i64 %indvars.iv619, 1 ; 2 uses
  %i.wq = load i32, ptr %2, align 4, !tbaa !35
  %i.wr = add nsw i32 %i.wq, %.0406524            ; 2 uses
  %i.ws = load i32, ptr %i.a, align 4, !tbaa !35
  %.not448.not = icmp sgt i32 %i.ws, %indvars621
  br i1 %.not448.not, label %.lr.ph526, label %._crit_edge527.loopexit, !llvm.loop !31

._crit_edge527.loopexit:                          ; preds = %.lr.ph526
  %i.wt = trunc nuw i64 %indvars.iv.next620 to i32
  br label %._crit_edge527

._crit_edge527:                                   ; preds = %._crit_edge527.loopexit, %._crit_edge520
  %.6424.lcssa = phi i32 [ 1, %._crit_edge520 ], [ %i.wt, %._crit_edge527.loopexit ] ; 2 uses
  %.0406.lcssa = phi i32 [ 1, %._crit_edge520 ], [ %i.wr, %._crit_edge527.loopexit ]
  %i.wu = load i32, ptr %i.sx, align 4, !tbaa !35 ; 2 uses
  store i32 %i.wu, ptr %i.a, align 4, !tbaa !35
  %.not449530 = icmp slt i32 %i.wu, 1
  br i1 %.not449530, label %._crit_edge537, label %.lr.ph536.preheader

.lr.ph536.preheader:                              ; preds = %._crit_edge527
  %i.wv = zext i32 %.6424.lcssa to i64
  br label %.lr.ph536

.lr.ph536:                                        ; preds = %.lr.ph536.preheader, %.lr.ph536
  %indvars.iv624 = phi i64 [ %i.wv, %.lr.ph536.preheader ], [ %indvars.iv.next625, %.lr.ph536 ] ; 3 uses
  %.1534 = phi i32 [ %i.wd, %.lr.ph536.preheader ], [ %i.xs, %.lr.ph536 ] ; 2 uses
  %.1407533 = phi i32 [ %.0406.lcssa, %.lr.ph536.preheader ], [ %i.xq, %.lr.ph536 ] ; 2 uses
  %.7532 = phi i32 [ 1, %.lr.ph536.preheader ], [ %i.xt, %.lr.ph536 ] ; 2 uses
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv624
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !35 ; 2 uses
  %i.wy = mul nsw i32 %i.wx, %i.i                 ; 2 uses
  %i.wz = sext i32 %i.wy to i64
  %i.xa = getelementptr [8 x i8], ptr %i.k, i64 %i.wz
  %i.xb = getelementptr i8, ptr %i.xa, i64 8
  %i.xc = sext i32 %.1407533 to i64
  %i.xd = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.xc
  call void @dcopy_(ptr noundef nonnull %2, ptr noundef %i.xb, ptr noundef nonnull @c__1, ptr noundef nonnull %i.xd, ptr noundef nonnull @c__1) #6
  %i.xe = load i32, ptr %2, align 4, !tbaa !35
  %i.xf = add i32 %i.wy, 1
  %i.xg = add i32 %i.xf, %i.xe
  %i.xh = sext i32 %i.xg to i64
  %i.xi = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.xh
end_hunk_1
