Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlanhs?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@c__1 = internal global i32 1, align 4

; Function Attrs: nounwind uwtable
define double @dlanhs_(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [2 x double], align 16            ; 6 uses
  %i.c = alloca double, align 8                   ; 12 uses
  %i.d = alloca [2 x double], align 16            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.e = load i32, ptr %3, align 4, !tbaa !22     ; 5 uses
  %narrow = xor i32 %i.e, -1
  %i.f = sext i32 %narrow to i64                  ; 2 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %2, i64 %i.f ; 4 uses
  %i.h = getelementptr inbounds i8, ptr %4, i64 -8 ; 2 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !22
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #7
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %1, align 4, !tbaa !22     ; 2 uses
  %.not125137 = icmp slt i32 %i.l, 1
  br i1 %.not125137, label %.loopexit, label %.lr.ph140.preheader

.lr.ph140.preheader:                              ; preds = %bb.c
  %i.m = sext i32 %i.e to i64
  %i.n = add nuw i32 %i.l, 1
  %wide.trip.count = zext i32 %i.n to i64
  br label %.lr.ph140

.loopexit132:                                     ; preds = %._crit_edge210, %.lr.ph140
  %.1.lcssa = phi double [ %.0139, %.lr.ph140 ], [ %.2, %._crit_edge210 ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next179, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph140, !llvm.loop !8

.lr.ph140:                                        ; preds = %.lr.ph140.preheader, %.loopexit132
  %indvars.iv178 = phi i64 [ 1, %.lr.ph140.preheader ], [ %indvars.iv.next179, %.loopexit132 ] ; 2 uses
  %.0139 = phi double [ 0.000000e+00, %.lr.ph140.preheader ], [ %.1.lcssa, %.loopexit132 ] ; 2 uses
  %i.o = load i32, ptr %1, align 4, !tbaa !22     ; 2 uses
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1 ; 3 uses
  %.not127134 = icmp slt i32 %i.o, 1
  br i1 %.not127134, label %.loopexit132, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph140
  %i.p = trunc nsw i64 %indvars.iv.next179 to i32
  %i.q = call i32 @llvm.smin.i32(i32 %i.o, i32 %i.p)
  %i.r = mul nsw i64 %indvars.iv178, %i.m
  %invariant.gep = getelementptr [8 x i8], ptr %i.g, i64 %i.r
  %5 = zext nneg i32 %i.q to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %._crit_edge210
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %._crit_edge210 ] ; 3 uses
  %.1136 = phi double [ %.0139, %.lr.ph ], [ %.2, %._crit_edge210 ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.s = load double, ptr %gep, align 8, !tbaa !25 ; 3 uses
  %i.t = fcmp oge double %i.s, 0.000000e+00
  %i.u = fneg double %i.s
  %i.v = select i1 %i.t, double %i.s, double %i.u ; 3 uses
  store double %i.v, ptr %i.c, align 8, !tbaa !25
  %i.w = fcmp olt double %.1136, %i.v
  br i1 %i.w, label %._crit_edge210, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = call i32 @disnan_(ptr noundef nonnull %i.c) #7
  %.not128 = icmp eq i32 %i.x, 0
  %.pre = load double, ptr %i.c, align 8
  %spec.select = select i1 %.not128, double %.1136, double %.pre
  br label %._crit_edge210

._crit_edge210:                                   ; preds = %bb.e, %bb.d
  %.2 = phi double [ %spec.select, %bb.e ], [ %i.v, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not127.not = icmp samesign ult i64 %indvars.iv, %5
  br i1 %.not127.not, label %bb.d, label %.loopexit132, !llvm.loop !9

bb.f:                                             ; preds = %bb.b
  %i.y = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #7
  %.not109 = icmp eq i32 %i.y, 0
  br i1 %.not109, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = load i8, ptr %0, align 1, !tbaa !26
  %i.aa = icmp eq i8 %i.z, 49
  br i1 %i.aa, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ab = load i32, ptr %1, align 4, !tbaa !22    ; 2 uses
  %.not121167 = icmp slt i32 %i.ab, 1
  br i1 %.not121167, label %.loopexit, label %.lr.ph171.preheader

.lr.ph171.preheader:                              ; preds = %bb.h
  %i.ac = sext i32 %i.e to i64
  %i.ad = add nuw i32 %i.ab, 1
  %wide.trip.count208 = zext i32 %i.ad to i64
  br label %.lr.ph171

.lr.ph171:                                        ; preds = %.lr.ph171.preheader, %._crit_edge215
  %indvars.iv205 = phi i64 [ 1, %.lr.ph171.preheader ], [ %indvars.iv.next206, %._crit_edge215 ] ; 2 uses
  %.3169 = phi double [ 0.000000e+00, %.lr.ph171.preheader ], [ %.4, %._crit_edge215 ] ; 2 uses
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !25
  %i.ae = load i32, ptr %1, align 4, !tbaa !22    ; 2 uses
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 1 ; 3 uses
  %.not123161 = icmp slt i32 %i.ae, 1
  br i1 %.not123161, label %bb.k, label %.lr.ph164

.lr.ph164:                                        ; preds = %.lr.ph171
  %i.af = trunc nsw i64 %indvars.iv.next206 to i32
  %i.ag = call i32 @llvm.smin.i32(i32 %i.ae, i32 %i.af) ; 2 uses
  %i.ah = mul nsw i64 %indvars.iv205, %i.ac
  %6 = zext nneg i32 %i.ag to i64                 ; 2 uses
  %invariant.gep229 = getelementptr [8 x i8], ptr %i.g, i64 %i.ah ; 9 uses
  %xtraiter = and i64 %6, 7                       ; 3 uses
  %7 = icmp ult i32 %i.ag, 8
  br i1 %7, label %.epil.preheader, label %.lr.ph164.new

.lr.ph164.new:                                    ; preds = %.lr.ph164
  %unroll_iter = and i64 %6, 2147483640
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph164.new
  %indvars.iv202 = phi i64 [ 1, %.lr.ph164.new ], [ %indvars.iv.next203.7, %bb.i ] ; 9 uses
  %i.ai = phi double [ 0.000000e+00, %.lr.ph164.new ], [ %i.cd, %bb.i ]
  %niter = phi i64 [ 0, %.lr.ph164.new ], [ %niter.next.7, %bb.i ]
  %gep230 = getelementptr [8 x i8], ptr %invariant.gep229, i64 %indvars.iv202
  %i.aj = load double, ptr %gep230, align 8, !tbaa !25 ; 3 uses
  %i.ak = fcmp oge double %i.aj, 0.000000e+00
  %i.al = fneg double %i.aj
  %i.am = select i1 %i.ak, double %i.aj, double %i.al
  %i.an = fadd double %i.ai, %i.am
  %i.ao = getelementptr [8 x i8], ptr %invariant.gep229, i64 %indvars.iv202
  %gep230.1 = getelementptr i8, ptr %i.ao, i64 8
  %i.ap = load double, ptr %gep230.1, align 8, !tbaa !25 ; 3 uses
  %i.aq = fcmp oge double %i.ap, 0.000000e+00
  %i.ar = fneg double %i.ap
  %i.as = select i1 %i.aq, double %i.ap, double %i.ar
  %i.at = fadd double %i.an, %i.as
  %i.au = getelementptr [8 x i8], ptr %invariant.gep229, i64 %indvars.iv202
  %gep230.2 = getelementptr i8, ptr %i.au, i64 16
  %i.av = load double, ptr %gep230.2, align 8, !tbaa !25 ; 3 uses
  %i.aw = fcmp oge double %i.av, 0.000000e+00
  %i.ax = fneg double %i.av
  %i.ay = select i1 %i.aw, double %i.av, double %i.ax
  %i.az = fadd double %i.at, %i.ay
  %i.ba = getelementptr [8 x i8], ptr %invariant.gep229, i64 %indvars.iv202
  %gep230.3 = getelementptr i8, ptr %i.ba, i64 24
  %i.bb = load double, ptr %gep230.3, align 8, !tbaa !25 ; 3 uses
  %i.bc = fcmp oge double %i.bb, 0.000000e+00
  %i.bd = fneg double %i.bb
  %i.be = select i1 %i.bc, double %i.bb, double %i.bd
  %i.bf = fadd double %i.az, %i.be
  %i.bg = getelementptr [8 x i8], ptr %invariant.gep229, i64 %indvars.iv202
  %gep230.4 = getelementptr i8, ptr %i.bg, i64 32
  %i.bh = load double, ptr %gep230.4, align 8, !tbaa !25 ; 3 uses
  %i.bi = fcmp oge double %i.bh, 0.000000e+00
  %i.bj = fneg double %i.bh
  %i.bk = select i1 %i.bi, double %i.bh, double %i.bj
  %i.bl = fadd double %i.bf, %i.bk
  %i.bm = getelementptr [8 x i8], ptr %invariant.gep229, i64 %indvars.iv202
  %gep230.5 = getelementptr i8, ptr %i.bm, i64 40
  %i.bn = load double, ptr %gep230.5, align 8, !tbaa !25 ; 3 uses
  %i.bo = fcmp oge double %i.bn, 0.000000e+00
  %i.bp = fneg double %i.bn
  %i.bq = select i1 %i.bo, double %i.bn, double %i.bp
  %i.br = fadd double %i.bl, %i.bq
  %i.bs = getelementptr [8 x i8], ptr %invariant.gep229, i64 %indvars.iv202
  %gep230.6 = getelementptr i8, ptr %i.bs, i64 48
  %i.bt = load double, ptr %gep230.6, align 8, !tbaa !25 ; 3 uses
  %i.bu = fcmp oge double %i.bt, 0.000000e+00
  %i.bv = fneg double %i.bt
  %i.bw = select i1 %i.bu, double %i.bt, double %i.bv
  %i.bx = fadd double %i.br, %i.bw
  %i.by = getelementptr [8 x i8], ptr %invariant.gep229, i64 %indvars.iv202
  %gep230.7 = getelementptr i8, ptr %i.by, i64 56
  %i.bz = load double, ptr %gep230.7, align 8, !tbaa !25 ; 3 uses
  %i.ca = fcmp oge double %i.bz, 0.000000e+00
  %i.cb = fneg double %i.bz
  %i.cc = select i1 %i.ca, double %i.bz, double %i.cb
  %i.cd = fadd double %i.bx, %i.cc                ; 3 uses
  %indvars.iv.next203.7 = add nuw nsw i64 %indvars.iv202, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7.not = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %._crit_edge165.unr-lcssa, label %bb.i, !llvm.loop !10

._crit_edge165.unr-lcssa:                         ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge165, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge165.unr-lcssa, %.lr.ph164
  %indvars.iv202.epil.init = phi i64 [ 1, %.lr.ph164 ], [ %indvars.iv.next203.7, %._crit_edge165.unr-lcssa ]
  %.epil.init = phi double [ 0.000000e+00, %.lr.ph164 ], [ %i.cd, %._crit_edge165.unr-lcssa ]
  %lcmp.mod260 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod260)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %indvars.iv202.epil = phi i64 [ %indvars.iv202.epil.init, %.epil.preheader ], [ %indvars.iv.next203.epil, %bb.j ] ; 2 uses
  %i.ce = phi double [ %.epil.init, %.epil.preheader ], [ %i.cj, %bb.j ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %gep230.epil = getelementptr [8 x i8], ptr %invariant.gep229, i64 %indvars.iv202.epil
  %i.cf = load double, ptr %gep230.epil, align 8, !tbaa !25 ; 3 uses
  %i.cg = fcmp oge double %i.cf, 0.000000e+00
  %i.ch = fneg double %i.cf
  %i.ci = select i1 %i.cg, double %i.cf, double %i.ch
  %i.cj = fadd double %i.ce, %i.ci                ; 2 uses
  %indvars.iv.next203.epil = add nuw nsw i64 %indvars.iv202.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge165, label %bb.j, !llvm.loop !11

._crit_edge165:                                   ; preds = %bb.j, %._crit_edge165.unr-lcssa
  %.lcssa = phi double [ %i.cd, %._crit_edge165.unr-lcssa ], [ %i.cj, %bb.j ] ; 2 uses
  store double %.lcssa, ptr %i.c, align 8, !tbaa !25
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge165, %.lr.ph171
  %i.ck = phi double [ %.lcssa, %._crit_edge165 ], [ 0.000000e+00, %.lr.ph171 ] ; 2 uses
  %i.cl = fcmp olt double %.3169, %i.ck
  br i1 %i.cl, label %._crit_edge215, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cm = call i32 @disnan_(ptr noundef nonnull %i.c) #7
  %.not124 = icmp eq i32 %i.cm, 0
  %.pre216 = load double, ptr %i.c, align 8
  %spec.select231 = select i1 %.not124, double %.3169, double %.pre216
  br label %._crit_edge215

._crit_edge215:                                   ; preds = %bb.l, %bb.k
  %.4 = phi double [ %spec.select231, %bb.l ], [ %i.ck, %bb.k ] ; 2 uses
  %exitcond209.not = icmp eq i64 %indvars.iv.next206, %wide.trip.count208
  br i1 %exitcond209.not, label %.loopexit, label %.lr.ph171, !llvm.loop !12

bb.m:                                             ; preds = %bb.g
  %i.cn = tail call i32 @lsame_(ptr noundef nonnull %0, ptr noundef nonnull @.str.2) #7
  %.not110 = icmp eq i32 %i.cn, 0
  br i1 %.not110, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.co = load i32, ptr %1, align 4, !tbaa !22    ; 6 uses
  %.not115142 = icmp slt i32 %i.co, 1
  br i1 %.not115142, label %.loopexit, label %.lr.ph150.preheader

.lr.ph150.preheader:                              ; preds = %bb.n
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = shl nuw nsw i64 %i.cp, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %4, i8 0, i64 %i.cq, i1 false), !tbaa !25
  %i.cr = sext i32 %i.e to i64                    ; 3 uses
  %i.cs = add nuw i32 %i.co, 1
  %i.ct = zext i32 %i.cs to i64
  %i.cu = or i64 %i.cr, %i.f
  %i.cv = shl nsw i64 %i.cu, 3
  %i.cw = shl nsw i64 %i.cr, 3
  %i.cx = getelementptr i8, ptr %2, i64 %i.cv
  %i.cy = getelementptr i8, ptr %i.cx, i64 8
  br label %iter.check

.loopexit130:                                     ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %exitcond191.not = icmp eq i64 %indvars.iv.next188, %i.ct
  %indvar.next = add i32 %indvar, 1
  %indvar.next236 = add i64 %indvar235, 1
  br i1 %exitcond191.not, label %.lr.ph155.preheader, label %iter.check, !llvm.loop !13

.lr.ph155.preheader:                              ; preds = %.loopexit130
  %i.cz = add nuw i32 %i.co, 1
  %wide.trip.count195 = zext i32 %i.cz to i64
  br label %.lr.ph155

iter.check:                                       ; preds = %.loopexit130, %.lr.ph150.preheader
  %indvar235 = phi i64 [ %indvar.next236, %.loopexit130 ], [ 0, %.lr.ph150.preheader ] ; 2 uses
  %indvar = phi i32 [ %indvar.next, %.loopexit130 ], [ 0, %.lr.ph150.preheader ] ; 2 uses
  %indvars.iv187 = phi i64 [ %indvars.iv.next188, %.loopexit130 ], [ 1, %.lr.ph150.preheader ] ; 2 uses
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 3 uses
  %i.da = trunc nsw i64 %indvars.iv.next188 to i32
  %i.db = tail call i32 @llvm.smin.i32(i32 %i.co, i32 %i.da) ; 3 uses
  %i.dc = mul nsw i64 %indvars.iv187, %i.cr
  %8 = zext nneg i32 %i.db to i64                 ; 6 uses
  %invariant.gep227 = getelementptr [8 x i8], ptr %i.g, i64 %i.dc ; 3 uses
  %min.iters.check = icmp ult i32 %i.db, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.dd = mul i64 %i.cw, %indvar235
  %scevgep237 = getelementptr i8, ptr %i.cy, i64 %i.dd ; 2 uses
  %i.de = add i32 %indvar, 2
  %smin = tail call i32 @llvm.smin.i32(i32 %i.co, i32 %i.de)
  %9 = zext i32 %smin to i64
  %i.df = shl nuw nsw i64 %9, 3                   ; 2 uses
  %scevgep238 = getelementptr i8, ptr %scevgep237, i64 %i.df
  %scevgep = getelementptr i8, ptr %4, i64 %i.df
  %bound0 = icmp ult ptr %4, %scevgep238
  %bound1 = icmp ult ptr %scevgep237, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check239 = icmp ult i32 %i.db, 16
  br i1 %min.iters.check239, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dg = and i64 %8, 12
  %n.vec = and i64 %8, 2147483632                 ; 4 uses
  %i.dh = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.di = getelementptr [8 x i8], ptr %invariant.gep227, i64 %index ; 4 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 8
  %i.dk = getelementptr i8, ptr %i.di, i64 40
  %i.dl = getelementptr i8, ptr %i.di, i64 72
  %i.dm = getelementptr i8, ptr %i.di, i64 104
  %wide.load = load <4 x double>, ptr %i.dj, align 8, !tbaa !25, !alias.scope !28 ; 3 uses
  %wide.load242.a = load <4 x double>, ptr %i.dk, align 8, !tbaa !25, !alias.scope !28 ; 3 uses
  %wide.load243.a = load <4 x double>, ptr %i.dl, align 8, !tbaa !25, !alias.scope !28 ; 3 uses
  %wide.load244.a = load <4 x double>, ptr %i.dm, align 8, !tbaa !25, !alias.scope !28 ; 3 uses
  %i.dn = fcmp oge <4 x double> %wide.load, zeroinitializer
  %i.do = fcmp oge <4 x double> %wide.load242.a, zeroinitializer
  %i.dp = fcmp oge <4 x double> %wide.load243.a, zeroinitializer
  %i.dq = fcmp oge <4 x double> %wide.load244.a, zeroinitializer
  %i.dr = fneg <4 x double> %wide.load
  %i.ds = fneg <4 x double> %wide.load242.a
  %i.dt = fneg <4 x double> %wide.load243.a
  %i.du = fneg <4 x double> %wide.load244.a
  %i.dv = select <4 x i1> %i.dn, <4 x double> %wide.load, <4 x double> %i.dr
  %i.dw = select <4 x i1> %i.do, <4 x double> %wide.load242.a, <4 x double> %i.ds
  %i.dx = select <4 x i1> %i.dp, <4 x double> %wide.load243.a, <4 x double> %i.dt
  %i.dy = select <4 x i1> %i.dq, <4 x double> %wide.load244.a, <4 x double> %i.du
  %i.dz = getelementptr [8 x i8], ptr %4, i64 %index ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 32 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 64 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 96 ; 2 uses
  %wide.load245.a = load <4 x double>, ptr %i.dz, align 8, !tbaa !25, !alias.scope !29, !noalias !28
  %wide.load246.a = load <4 x double>, ptr %i.ea, align 8, !tbaa !25, !alias.scope !29, !noalias !28
  %wide.load247 = load <4 x double>, ptr %i.eb, align 8, !tbaa !25, !alias.scope !29, !noalias !28
  %wide.load248 = load <4 x double>, ptr %i.ec, align 8, !tbaa !25, !alias.scope !29, !noalias !28
  %i.ed = fadd <4 x double> %wide.load245.a, %i.dv
  %i.ee = fadd <4 x double> %wide.load246.a, %i.dw
  %i.ef = fadd <4 x double> %wide.load247, %i.dx
  %i.eg = fadd <4 x double> %wide.load248, %i.dy
  store <4 x double> %i.ed, ptr %i.dz, align 8, !tbaa !25, !alias.scope !29, !noalias !28
  store <4 x double> %i.ee, ptr %i.ea, align 8, !tbaa !25, !alias.scope !29, !noalias !28
  store <4 x double> %i.ef, ptr %i.eb, align 8, !tbaa !25, !alias.scope !29, !noalias !28
  store <4 x double> %i.eg, ptr %i.ec, align 8, !tbaa !25, !alias.scope !29, !noalias !28
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.eh = icmp eq i64 %index.next, %n.vec
  br i1 %i.eh, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %8
  br i1 %cmp.n, label %.loopexit130, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dg, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !32

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec249 = and i64 %8, 2147483644              ; 3 uses
  %i.ei = or disjoint i64 %n.vec249, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index250 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next253, %vec.epilog.vector.body ] ; 3 uses
  %i.ej = getelementptr [8 x i8], ptr %invariant.gep227, i64 %index250
  %i.ek = getelementptr i8, ptr %i.ej, i64 8
  %wide.load251 = load <4 x double>, ptr %i.ek, align 8, !tbaa !25, !alias.scope !28 ; 3 uses
  %i.el = fcmp oge <4 x double> %wide.load251, zeroinitializer
  %i.em = fneg <4 x double> %wide.load251
  %i.en = select <4 x i1> %i.el, <4 x double> %wide.load251, <4 x double> %i.em
  %i.eo = getelementptr [8 x i8], ptr %4, i64 %index250 ; 2 uses
  %wide.load252 = load <4 x double>, ptr %i.eo, align 8, !tbaa !25, !alias.scope !29, !noalias !28
  %i.ep = fadd <4 x double> %wide.load252, %i.en
  store <4 x double> %i.ep, ptr %i.eo, align 8, !tbaa !25, !alias.scope !29, !noalias !28
  %index.next253 = add nuw i64 %index250, 4       ; 2 uses
  %i.eq = icmp eq i64 %index.next253, %n.vec249
  br i1 %i.eq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !18

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n254 = icmp eq i64 %n.vec249, %8
  br i1 %cmp.n254, label %.loopexit130, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv184.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.dh, %vec.epilog.iter.check ], [ %i.ei, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv184 = phi i64 [ %indvars.iv.next185, %vec.epilog.scalar.ph ], [ %indvars.iv184.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %gep228 = getelementptr [8 x i8], ptr %invariant.gep227, i64 %indvars.iv184
  %i.er = load double, ptr %gep228, align 8, !tbaa !25 ; 3 uses
  %i.es = fcmp oge double %i.er, 0.000000e+00
  %i.et = fneg double %i.er
  %i.eu = select i1 %i.es, double %i.er, double %i.et
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv184 ; 2 uses
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !25
  %i.ex = fadd double %i.ew, %i.eu
  store double %i.ex, ptr %i.ev, align 8, !tbaa !25
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1
  %.not120.not = icmp samesign ult i64 %indvars.iv184, %8
  br i1 %.not120.not, label %vec.epilog.scalar.ph, label %.loopexit130, !llvm.loop !19

.lr.ph155:                                        ; preds = %.lr.ph155.preheader, %._crit_edge211
  %indvars.iv192 = phi i64 [ 1, %.lr.ph155.preheader ], [ %indvars.iv.next193, %._crit_edge211 ] ; 2 uses
  %.5154 = phi double [ 0.000000e+00, %.lr.ph155.preheader ], [ %.6, %._crit_edge211 ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv192
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !25 ; 3 uses
  store double %i.ez, ptr %i.c, align 8, !tbaa !25
  %i.fa = fcmp olt double %.5154, %i.ez
  br i1 %i.fa, label %._crit_edge211, label %bb.o

bb.o:                                             ; preds = %.lr.ph155
  %i.fb = call i32 @disnan_(ptr noundef nonnull %i.c) #7
  %.not118 = icmp eq i32 %i.fb, 0
  %.pre212 = load double, ptr %i.c, align 8
  %spec.select232 = select i1 %.not118, double %.5154, double %.pre212
  br label %._crit_edge211

._crit_edge211:                                   ; preds = %bb.o, %.lr.ph155
  %.6 = phi double [ %spec.select232, %bb.o ], [ %i.ez, %.lr.ph155 ] ; 2 uses
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %exitcond196.not = icmp eq i64 %indvars.iv.next193, %wide.trip.count195
  br i1 %exitcond196.not, label %.loopexit, label %.lr.ph155, !llvm.loop !20

bb.p:                                             ; preds = %bb.m
  %i.fc = tail call i32 @lsame_(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #7
  %.not111 = icmp eq i32 %i.fc, 0
  br i1 %.not111, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fd = tail call i32 @lsame_(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #7
  %.not112 = icmp eq i32 %i.fd, 0
  br i1 %.not112, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.fe = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.d, align 16, !tbaa !25
  %i.ff = load i32, ptr %1, align 4, !tbaa !22    ; 2 uses
  %.not113157 = icmp slt i32 %i.ff, 1
  br i1 %.not113157, label %._crit_edge, label %.lr.ph159

.lr.ph159:                                        ; preds = %bb.r
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.fh = sext i32 %i.e to i64
  %i.fi = add nuw i32 %i.ff, 1
  %wide.trip.count200 = zext i32 %i.fi to i64
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph159, %bb.s
  %indvars.iv197 = phi i64 [ 1, %.lr.ph159 ], [ %indvars.iv.next198, %bb.s ] ; 2 uses
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.b, align 16, !tbaa !25
  %i.fj = load i32, ptr %1, align 4, !tbaa !22
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1 ; 3 uses
  %i.fk = trunc nsw i64 %indvars.iv.next198 to i32
  %i.fl = call i32 @llvm.smin.i32(i32 %i.fj, i32 %i.fk)
  store i32 %i.fl, ptr %i.a, align 4, !tbaa !22
  %i.fm = mul nsw i64 %indvars.iv197, %i.fh
  %i.fn = getelementptr [8 x i8], ptr %i.g, i64 %i.fm
  %i.fo = getelementptr i8, ptr %i.fn, i64 8
  call void @dlassq_(ptr noundef nonnull %i.a, ptr noundef %i.fo, ptr noundef nonnull @c__1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.fg) #7
  call void @dcombssq_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #7
  %exitcond201.not = icmp eq i64 %indvars.iv.next198, %wide.trip.count200
  br i1 %exitcond201.not, label %._crit_edge.loopexit, label %bb.s, !llvm.loop !21

._crit_edge.loopexit:                             ; preds = %bb.s
  %.pre213 = load double, ptr %i.d, align 16, !tbaa !25
  %.pre214 = load double, ptr %i.fe, align 8, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.r
  %i.fp = phi double [ %.pre214, %._crit_edge.loopexit ], [ 1.000000e+00, %bb.r ]
  %i.fq = phi double [ %.pre213, %._crit_edge.loopexit ], [ 0.000000e+00, %bb.r ]
  %i.fr = call double @sqrt(double noundef %i.fp) #7
  %i.fs = fmul double %i.fq, %i.fr
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit132, %._crit_edge211, %._crit_edge215, %bb.n, %bb.c, %bb.h, %bb.a, %._crit_edge, %bb.q
  %.7 = phi double [ undef, %bb.q ], [ 0.000000e+00, %bb.n ], [ 0.000000e+00, %bb.a ], [ %.6, %._crit_edge211 ], [ %i.fs, %._crit_edge ], [ 0.000000e+00, %bb.h ], [ %.4, %._crit_edge215 ], [ 0.000000e+00, %bb.c ], [ %.1.lcssa, %.loopexit132 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret double %.7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @disnan_(ptr noundef) local_unnamed_addr #2

declare void @dlassq_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dcombssq_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

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
!8 = distinct !{!8, !23}
!9 = distinct !{!9, !23}
!10 = distinct !{!10, !23}
!11 = distinct !{!11, !27}
!12 = distinct !{!12, !23}
!13 = distinct !{!13, !23}
!14 = distinct !{!14, i1 false, !"LVerDomain"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !23, !30, !31}
!18 = distinct !{!18, !23, !30, !31}
!19 = distinct !{!19, !23, !30}
!20 = distinct !{!20, !23}
!21 = distinct !{!21, !23}
!22 = !{!5, !5, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"double", !4, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!4, !4, i64 0}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = !{!15}
!29 = !{!16}
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = !{!"llvm.loop.unroll.runtime.disable"}
!32 = !{!"branch_weights", i32 4, i32 12}
end_hunk_0
