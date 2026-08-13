loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1

; Function Attrs: nounwind uwtable
define void @dlacpy_(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %4, align 4, !tbaa !8      ; 5 uses
  %narrow = xor i32 %i.a, -1
  %i.b = sext i32 %narrow to i64                  ; 4 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %3, i64 %i.b ; 3 uses
  %i.d = load i32, ptr %6, align 4, !tbaa !8      ; 5 uses
  %narrow65 = xor i32 %i.d, -1
  %i.e = sext i32 %narrow65 to i64                ; 4 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %5, i64 %i.e ; 3 uses
  %i.g = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #3
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %2, align 4, !tbaa !8      ; 2 uses
  %.not7178 = icmp slt i32 %i.h, 1
  br i1 %.not7178, label %.loopexit, label %.lr.ph81

.lr.ph81:                                         ; preds = %bb.b
  %7 = load i32, ptr %1, align 4, !tbaa !8        ; 5 uses
  %8 = sext i32 %i.a to i64                       ; 3 uses
  %9 = sext i32 %i.d to i64                       ; 3 uses
  %10 = add nuw i32 %i.h, 1
  %wide.trip.count109 = zext i32 %10 to i64
  %.not7376 = icmp slt i32 %7, 1
  br i1 %.not7376, label %.loopexit, label %.lr.ph81.a

.lr.ph81.a:                                       ; preds = %.lr.ph81
  %i.i = or i64 %9, %i.e
  %i.j = shl nsw i64 %i.i, 3                      ; 2 uses
  %i.k = shl nsw i64 %9, 3
  %i.l = or i64 %8, %i.b
  %i.m = shl nsw i64 %i.l, 3                      ; 2 uses
  %i.n = shl nsw i64 %8, 3
  %i.o = getelementptr i8, ptr %3, i64 %i.m
  %i.p = getelementptr i8, ptr %3, i64 %i.m
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %i.r = getelementptr i8, ptr %5, i64 %i.j
  %i.s = getelementptr i8, ptr %5, i64 %i.j
  %i.t = getelementptr i8, ptr %i.s, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph81.a, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph81.a ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %indvars.iv106 = phi i64 [ 1, %.lr.ph81.a ], [ %indvars.iv.next107, %._crit_edge ] ; 7 uses
  %i.u = trunc i64 %indvars.iv106 to i32
  %smin246 = tail call i32 @llvm.smin.i32(i32 %7, i32 %i.u)
  %i.v = add i32 %smin246, 1
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = trunc i64 %indvars.iv106 to i32
  %smin158 = tail call i32 @llvm.smin.i32(i32 %7, i32 %i.x)
  %i.y = add i32 %smin158, 1
  %i.z = zext i32 %i.y to i64
  %i.aa = add nsw i64 %i.z, -1                    ; 7 uses
  %i.ab = trunc nuw nsw i64 %indvars.iv106 to i32
  %smin153.a = tail call i32 @llvm.smin.i32(i32 %7, i32 %i.ab)
  %i.ac = add i32 %smin153.a, 1
  %11 = mul nsw i64 %indvars.iv106, %8
  %12 = mul nsw i64 %indvars.iv106, %9
  %wide.trip.count = zext i32 %i.ac to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.c, i64 %11 ; 11 uses
  %invariant.gep140 = getelementptr [8 x i8], ptr %i.f, i64 %12 ; 11 uses
  %min.iters.check = icmp ult i64 %i.aa, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %iter.check

iter.check:                                       ; preds = %bb.c
  %13 = mul i64 %i.n, %indvar                     ; 2 uses
  %scevgep156 = getelementptr i8, ptr %i.o, i64 %13
  %i.ad = trunc i64 %indvars.iv106 to i32
  %smin = tail call i32 @llvm.smin.i32(i32 %7, i32 %i.ad)
  %i.ae = add i32 %smin, 1
  %14 = zext i32 %i.ae to i64
  %15 = shl nuw nsw i64 %14, 3                    ; 2 uses
  %scevgep157 = getelementptr i8, ptr %scevgep156, i64 %15
  %scevgep155 = getelementptr i8, ptr %i.q, i64 %13
  %i.af = mul i64 %i.k, %indvar                   ; 2 uses
  %scevgep152 = getelementptr i8, ptr %i.r, i64 %i.af
  %scevgep154 = getelementptr i8, ptr %scevgep152, i64 %15
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.af
  %bound0 = icmp ult ptr %scevgep, %scevgep157
  %min.iters.check.a = icmp ult ptr %scevgep155, %scevgep154
  %found.conflict = and i1 %bound0, %min.iters.check.a
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check159 = icmp ult i64 %i.aa, 16
  br i1 %min.iters.check159, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ag = and i64 %i.aa, 12
  %n.vec = and i64 %i.aa, -16                     ; 4 uses
  %i.ah = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = or disjoint i64 %index, 1               ; 2 uses
  %i.aj = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ai ; 4 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 32
  %i.al = getelementptr i8, ptr %i.aj, i64 64
  %i.am = getelementptr i8, ptr %i.aj, i64 96
  %wide.load = load <4 x double>, ptr %i.aj, align 8, !tbaa !9, !alias.scope !11
  %wide.load160 = load <4 x double>, ptr %i.ak, align 8, !tbaa !9, !alias.scope !11
  %wide.load161 = load <4 x double>, ptr %i.al, align 8, !tbaa !9, !alias.scope !11
  %wide.load162 = load <4 x double>, ptr %i.am, align 8, !tbaa !9, !alias.scope !11
  %i.an = getelementptr [8 x i8], ptr %invariant.gep140, i64 %i.ai ; 4 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 32
  %i.ap = getelementptr i8, ptr %i.an, i64 64
  %i.aq = getelementptr i8, ptr %i.an, i64 96
  store <4 x double> %wide.load, ptr %i.an, align 8, !tbaa !9, !alias.scope !14, !noalias !11
  store <4 x double> %wide.load160, ptr %i.ao, align 8, !tbaa !9, !alias.scope !14, !noalias !11
  store <4 x double> %wide.load161, ptr %i.ap, align 8, !tbaa !9, !alias.scope !14, !noalias !11
  store <4 x double> %wide.load162, ptr %i.aq, align 8, !tbaa !9, !alias.scope !14, !noalias !11
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ag, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec163 = and i64 %i.aa, -4                   ; 3 uses
  %i.as = or disjoint i64 %n.vec163, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index164 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next166, %vec.epilog.vector.body ] ; 2 uses
  %i.at = or disjoint i64 %index164, 1            ; 2 uses
  %i.au = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.at
  %wide.load165 = load <4 x double>, ptr %i.au, align 8, !tbaa !9, !alias.scope !11
  %i.av = getelementptr [8 x i8], ptr %invariant.gep140, i64 %i.at
  store <4 x double> %wide.load165, ptr %i.av, align 8, !tbaa !9, !alias.scope !14, !noalias !11
  %index.next166 = add nuw i64 %index164, 4       ; 2 uses
  %i.aw = icmp eq i64 %index.next166, %n.vec163
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !21

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n167 = icmp eq i64 %i.aa, %n.vec163
  br i1 %cmp.n167, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %bb.c, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %bb.c ], [ 1, %iter.check ], [ %i.ah, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ] ; 4 uses
  %i.ax = sub nsw i64 %i.w, %indvars.iv.ph
  %xtraiter = and i64 %i.ax, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.ay = load double, ptr %gep.prol, align 8, !tbaa !9
  %gep141.prol = getelementptr [8 x i8], ptr %invariant.gep140, i64 %indvars.iv.prol
  store double %i.ay, ptr %gep141.prol, align 8, !tbaa !9
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !22

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.az = sub nsw i64 %indvars.iv.ph, %i.w
  %i.ba = icmp ugt i64 %i.az, -8
  br i1 %i.ba, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bb = load double, ptr %gep, align 8, !tbaa !9
  %gep141 = getelementptr [8 x i8], ptr %invariant.gep140, i64 %indvars.iv
  store double %i.bb, ptr %gep141, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.bc = load double, ptr %gep.1, align 8, !tbaa !9
  %gep141.1 = getelementptr [8 x i8], ptr %invariant.gep140, i64 %indvars.iv.next
  store double %i.bc, ptr %gep141.1, align 8, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.bd = load double, ptr %gep.2, align 8, !tbaa !9
  %gep141.2 = getelementptr [8 x i8], ptr %invariant.gep140, i64 %indvars.iv.next.1
  store double %i.bd, ptr %gep141.2, align 8, !tbaa !9
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.be = load double, ptr %gep.3, align 8, !tbaa !9
  %gep141.3 = getelementptr [8 x i8], ptr %invariant.gep140, i64 %indvars.iv.next.2
  store double %i.be, ptr %gep141.3, align 8, !tbaa !9
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %gep.4 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.3
  %i.bf = load double, ptr %gep.4, align 8, !tbaa !9
  %gep141.4 = getelementptr [8 x i8], ptr %invariant.gep140, i64 %indvars.iv.next.3
  store double %i.bf, ptr %gep141.4, align 8, !tbaa !9
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %gep.5 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.4
  %i.bg = load double, ptr %gep.5, align 8, !tbaa !9
  %gep141.5 = getelementptr [8 x i8], ptr %invariant.gep140, i64 %indvars.iv.next.4
  store double %i.bg, ptr %gep141.5, align 8, !tbaa !9
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %gep.6 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.5
  %i.bh = load double, ptr %gep.6, align 8, !tbaa !9
  %gep141.6 = getelementptr [8 x i8], ptr %invariant.gep140, i64 %indvars.iv.next.5
  store double %i.bh, ptr %gep141.6, align 8, !tbaa !9
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 2 uses
  %gep.7 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.6
  %i.bi = load double, ptr %gep.7, align 8, !tbaa !9
  %gep141.7 = getelementptr [8 x i8], ptr %invariant.gep140, i64 %indvars.iv.next.6
  store double %i.bi, ptr %gep141.7, align 8, !tbaa !9
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !24

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond110.not, label %.loopexit, label %bb.c, !llvm.loop !25

bb.d:                                             ; preds = %bb.a
  %i.bj = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #3
  %.not66 = icmp eq i32 %i.bj, 0
  %i.bk = load i32, ptr %2, align 4, !tbaa !8     ; 3 uses
  %.not6796 = icmp slt i32 %i.bk, 1               ; 2 uses
  br i1 %.not66, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not6796, label %.loopexit, label %.lr.ph90

.lr.ph90:                                         ; preds = %bb.e
  %i.bl = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  %i.bm = add i32 %i.bl, 1
  %i.bn = sext i32 %i.bl to i64
  %i.bo = sext i32 %i.a to i64                    ; 4 uses
  %i.bp = sext i32 %i.d to i64                    ; 4 uses
  %i.bq = add nuw i32 %i.bk, 1
  %wide.trip.count122 = zext i32 %i.bq to i64
  %wide.trip.count119 = zext i32 %i.bm to i64     ; 5 uses
  %i.br = shl nsw i64 %i.bp, 3
  %i.bs = or i64 %i.bp, %i.e
  %i.bt = shl nsw i64 %i.bs, 3                    ; 2 uses
  %i.bu = add nsw i64 %i.br, 8
  %i.bv = shl nuw nsw i64 %wide.trip.count119, 3  ; 2 uses
  %i.bw = shl nsw i64 %i.bp, 3
  %i.bx = shl nsw i64 %i.bo, 3
  %i.by = or i64 %i.bo, %i.b
  %i.bz = shl nsw i64 %i.by, 3                    ; 2 uses
  %i.ca = add nsw i64 %i.bx, 8
  %i.cb = shl nsw i64 %i.bo, 3
  %i.cc = getelementptr i8, ptr %5, i64 %i.bt
  %i.cd = getelementptr i8, ptr %i.cc, i64 8
  %i.ce = getelementptr i8, ptr %5, i64 %i.bt
  %i.cf = getelementptr i8, ptr %i.ce, i64 %i.bv
  %i.cg = getelementptr i8, ptr %3, i64 %i.bz
  %i.ch = getelementptr i8, ptr %i.cg, i64 8
  %i.ci = getelementptr i8, ptr %3, i64 %i.bz
  %i.cj = getelementptr i8, ptr %i.ci, i64 %i.bv
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph90, %._crit_edge86
  %indvar170 = phi i64 [ 0, %.lr.ph90 ], [ %indvar.next171, %._crit_edge86 ] ; 6 uses
  %indvars.iv114 = phi i64 [ 1, %.lr.ph90 ], [ %indvars.iv.next115, %._crit_edge86 ] ; 10 uses
  %i.ck = xor i64 %indvar170, -1
  %i.cl = add i64 %i.ck, %wide.trip.count119      ; 7 uses
  %i.cm = mul i64 %i.bu, %indvar170
  %scevgep172 = getelementptr i8, ptr %i.cd, i64 %i.cm
  %i.cn = mul i64 %i.bw, %indvar170
  %scevgep173 = getelementptr i8, ptr %i.cf, i64 %i.cn
  %i.co = mul i64 %i.ca, %indvar170
  %scevgep174 = getelementptr i8, ptr %i.ch, i64 %i.co
  %i.cp = mul i64 %i.cb, %indvar170
  %scevgep175 = getelementptr i8, ptr %i.cj, i64 %i.cp
  %.not7082 = icmp sgt i64 %indvars.iv114, %i.bn
  br i1 %.not7082, label %._crit_edge86, label %iter.check194

iter.check194:                                    ; preds = %bb.f
  %i.cq = mul nsw i64 %indvars.iv114, %i.bo
  %i.cr = mul nsw i64 %indvars.iv114, %i.bp
  %invariant.gep142 = getelementptr [8 x i8], ptr %i.c, i64 %i.cq ; 11 uses
  %invariant.gep144 = getelementptr [8 x i8], ptr %i.f, i64 %i.cr ; 11 uses
  %min.iters.check179 = icmp ult i64 %i.cl, 4
  br i1 %min.iters.check179, label %vec.epilog.scalar.ph195.preheader, label %vector.memcheck169

vector.memcheck169:                               ; preds = %iter.check194
  %bound0176 = icmp ult ptr %scevgep172, %scevgep175
  %bound1177 = icmp ult ptr %scevgep174, %scevgep173
  %found.conflict178 = and i1 %bound0176, %bound1177
  br i1 %found.conflict178, label %vec.epilog.scalar.ph195.preheader, label %vector.main.loop.iter.check180

vector.main.loop.iter.check180:                   ; preds = %vector.memcheck169
  %min.iters.check181 = icmp ult i64 %i.cl, 16
  br i1 %min.iters.check181, label %vec.epilog.ph198, label %vector.ph182

vector.ph182:                                     ; preds = %vector.main.loop.iter.check180
  %i.cs = and i64 %i.cl, 12
  %n.vec183 = and i64 %i.cl, -16                  ; 4 uses
  %i.ct = add i64 %indvars.iv114, %n.vec183
  br label %vector.body184

vector.body184:                                   ; preds = %vector.body184, %vector.ph182
  %index185 = phi i64 [ 0, %vector.ph182 ], [ %index.next190, %vector.body184 ] ; 2 uses
  %i.cu = add nuw i64 %indvars.iv114, %index185   ; 2 uses
  %i.cv = getelementptr [8 x i8], ptr %invariant.gep142, i64 %i.cu ; 4 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 32
  %i.cx = getelementptr i8, ptr %i.cv, i64 64
  %i.cy = getelementptr i8, ptr %i.cv, i64 96
  %wide.load186 = load <4 x double>, ptr %i.cv, align 8, !tbaa !9, !alias.scope !26
  %wide.load187 = load <4 x double>, ptr %i.cw, align 8, !tbaa !9, !alias.scope !26
  %wide.load188 = load <4 x double>, ptr %i.cx, align 8, !tbaa !9, !alias.scope !26
  %wide.load189 = load <4 x double>, ptr %i.cy, align 8, !tbaa !9, !alias.scope !26
  %i.cz = getelementptr [8 x i8], ptr %invariant.gep144, i64 %i.cu ; 4 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 32
  %i.db = getelementptr i8, ptr %i.cz, i64 64
  %i.dc = getelementptr i8, ptr %i.cz, i64 96
  store <4 x double> %wide.load186, ptr %i.cz, align 8, !tbaa !9, !alias.scope !29, !noalias !26
  store <4 x double> %wide.load187, ptr %i.da, align 8, !tbaa !9, !alias.scope !29, !noalias !26
  store <4 x double> %wide.load188, ptr %i.db, align 8, !tbaa !9, !alias.scope !29, !noalias !26
  store <4 x double> %wide.load189, ptr %i.dc, align 8, !tbaa !9, !alias.scope !29, !noalias !26
  %index.next190 = add nuw i64 %index185, 16      ; 2 uses
  %i.dd = icmp eq i64 %index.next190, %n.vec183
  br i1 %i.dd, label %middle.block191, label %vector.body184, !llvm.loop !31

middle.block191:                                  ; preds = %vector.body184
  %cmp.n192 = icmp eq i64 %i.cl, %n.vec183
  br i1 %cmp.n192, label %._crit_edge86, label %vec.epilog.iter.check196

vec.epilog.iter.check196:                         ; preds = %middle.block191
  %min.epilog.iters.check197 = icmp eq i64 %i.cs, 0
  br i1 %min.epilog.iters.check197, label %vec.epilog.scalar.ph195.preheader, label %vec.epilog.ph198, !prof !20

vec.epilog.ph198:                                 ; preds = %vector.main.loop.iter.check180, %vec.epilog.iter.check196
  %vec.epilog.resume.val193 = phi i64 [ %n.vec183, %vec.epilog.iter.check196 ], [ 0, %vector.main.loop.iter.check180 ]
  %n.vec199 = and i64 %i.cl, -4                   ; 3 uses
  %i.de = add i64 %indvars.iv114, %n.vec199
  br label %vec.epilog.vector.body200

vec.epilog.vector.body200:                        ; preds = %vec.epilog.vector.body200, %vec.epilog.ph198
  %index201 = phi i64 [ %vec.epilog.resume.val193, %vec.epilog.ph198 ], [ %index.next203, %vec.epilog.vector.body200 ] ; 2 uses
  %i.df = add nuw i64 %indvars.iv114, %index201   ; 2 uses
  %i.dg = getelementptr [8 x i8], ptr %invariant.gep142, i64 %i.df
  %wide.load202 = load <4 x double>, ptr %i.dg, align 8, !tbaa !9, !alias.scope !26
  %i.dh = getelementptr [8 x i8], ptr %invariant.gep144, i64 %i.df
  store <4 x double> %wide.load202, ptr %i.dh, align 8, !tbaa !9, !alias.scope !29, !noalias !26
  %index.next203 = add nuw i64 %index201, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next203, %n.vec199
  br i1 %i.di, label %vec.epilog.middle.block204, label %vec.epilog.vector.body200, !llvm.loop !32

vec.epilog.middle.block204:                       ; preds = %vec.epilog.vector.body200
  %cmp.n205 = icmp eq i64 %i.cl, %n.vec199
  br i1 %cmp.n205, label %._crit_edge86, label %vec.epilog.scalar.ph195.preheader

vec.epilog.scalar.ph195.preheader:                ; preds = %vector.memcheck169, %iter.check194, %vec.epilog.iter.check196, %vec.epilog.middle.block204
  %indvars.iv116.ph = phi i64 [ %indvars.iv114, %iter.check194 ], [ %indvars.iv114, %vector.memcheck169 ], [ %i.ct, %vec.epilog.iter.check196 ], [ %i.de, %vec.epilog.middle.block204 ] ; 4 uses
  %i.dj = sub i64 %wide.trip.count119, %indvars.iv116.ph
  %xtraiter247 = and i64 %i.dj, 7                 ; 2 uses
  %lcmp.mod248.not = icmp eq i64 %xtraiter247, 0
  br i1 %lcmp.mod248.not, label %vec.epilog.scalar.ph195.prol.loopexit, label %vec.epilog.scalar.ph195.prol

vec.epilog.scalar.ph195.prol:                     ; preds = %vec.epilog.scalar.ph195.preheader, %vec.epilog.scalar.ph195.prol
  %indvars.iv116.prol = phi i64 [ %indvars.iv.next117.prol, %vec.epilog.scalar.ph195.prol ], [ %indvars.iv116.ph, %vec.epilog.scalar.ph195.preheader ] ; 3 uses
  %prol.iter249 = phi i64 [ %prol.iter249.next, %vec.epilog.scalar.ph195.prol ], [ 0, %vec.epilog.scalar.ph195.preheader ]
  %gep143.prol = getelementptr [8 x i8], ptr %invariant.gep142, i64 %indvars.iv116.prol
  %i.dk = load double, ptr %gep143.prol, align 8, !tbaa !9
  %gep145.prol = getelementptr [8 x i8], ptr %invariant.gep144, i64 %indvars.iv116.prol
  store double %i.dk, ptr %gep145.prol, align 8, !tbaa !9
  %indvars.iv.next117.prol = add nuw nsw i64 %indvars.iv116.prol, 1 ; 2 uses
  %prol.iter249.next = add i64 %prol.iter249, 1   ; 2 uses
  %prol.iter249.cmp.not = icmp eq i64 %prol.iter249.next, %xtraiter247
  br i1 %prol.iter249.cmp.not, label %vec.epilog.scalar.ph195.prol.loopexit, label %vec.epilog.scalar.ph195.prol, !llvm.loop !33

vec.epilog.scalar.ph195.prol.loopexit:            ; preds = %vec.epilog.scalar.ph195.prol, %vec.epilog.scalar.ph195.preheader
  %indvars.iv116.unr = phi i64 [ %indvars.iv116.ph, %vec.epilog.scalar.ph195.preheader ], [ %indvars.iv.next117.prol, %vec.epilog.scalar.ph195.prol ]
  %i.dl = sub i64 %indvars.iv116.ph, %wide.trip.count119
  %i.dm = icmp ugt i64 %i.dl, -8
  br i1 %i.dm, label %._crit_edge86, label %vec.epilog.scalar.ph195

vec.epilog.scalar.ph195:                          ; preds = %vec.epilog.scalar.ph195.prol.loopexit, %vec.epilog.scalar.ph195
  %indvars.iv116 = phi i64 [ %indvars.iv.next117.7, %vec.epilog.scalar.ph195 ], [ %indvars.iv116.unr, %vec.epilog.scalar.ph195.prol.loopexit ] ; 10 uses
  %gep143 = getelementptr [8 x i8], ptr %invariant.gep142, i64 %indvars.iv116
  %i.dn = load double, ptr %gep143, align 8, !tbaa !9
  %gep145 = getelementptr [8 x i8], ptr %invariant.gep144, i64 %indvars.iv116
  store double %i.dn, ptr %gep145, align 8, !tbaa !9
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %gep143.1 = getelementptr [8 x i8], ptr %invariant.gep142, i64 %indvars.iv.next117
  %i.do = load double, ptr %gep143.1, align 8, !tbaa !9
  %gep145.1 = getelementptr [8 x i8], ptr %invariant.gep144, i64 %indvars.iv.next117
  store double %i.do, ptr %gep145.1, align 8, !tbaa !9
  %indvars.iv.next117.1 = add nuw nsw i64 %indvars.iv116, 2 ; 2 uses
  %gep143.2 = getelementptr [8 x i8], ptr %invariant.gep142, i64 %indvars.iv.next117.1
  %i.dp = load double, ptr %gep143.2, align 8, !tbaa !9
  %gep145.2 = getelementptr [8 x i8], ptr %invariant.gep144, i64 %indvars.iv.next117.1
  store double %i.dp, ptr %gep145.2, align 8, !tbaa !9
  %indvars.iv.next117.2 = add nuw nsw i64 %indvars.iv116, 3 ; 2 uses
  %gep143.3 = getelementptr [8 x i8], ptr %invariant.gep142, i64 %indvars.iv.next117.2
  %i.dq = load double, ptr %gep143.3, align 8, !tbaa !9
  %gep145.3 = getelementptr [8 x i8], ptr %invariant.gep144, i64 %indvars.iv.next117.2
  store double %i.dq, ptr %gep145.3, align 8, !tbaa !9
  %indvars.iv.next117.3 = add nuw nsw i64 %indvars.iv116, 4 ; 2 uses
  %gep143.4 = getelementptr [8 x i8], ptr %invariant.gep142, i64 %indvars.iv.next117.3
  %i.dr = load double, ptr %gep143.4, align 8, !tbaa !9
  %gep145.4 = getelementptr [8 x i8], ptr %invariant.gep144, i64 %indvars.iv.next117.3
  store double %i.dr, ptr %gep145.4, align 8, !tbaa !9
  %indvars.iv.next117.4 = add nuw nsw i64 %indvars.iv116, 5 ; 2 uses
  %gep143.5 = getelementptr [8 x i8], ptr %invariant.gep142, i64 %indvars.iv.next117.4
  %i.ds = load double, ptr %gep143.5, align 8, !tbaa !9
  %gep145.5 = getelementptr [8 x i8], ptr %invariant.gep144, i64 %indvars.iv.next117.4
  store double %i.ds, ptr %gep145.5, align 8, !tbaa !9
  %indvars.iv.next117.5 = add nuw nsw i64 %indvars.iv116, 6 ; 2 uses
  %gep143.6 = getelementptr [8 x i8], ptr %invariant.gep142, i64 %indvars.iv.next117.5
  %i.dt = load double, ptr %gep143.6, align 8, !tbaa !9
  %gep145.6 = getelementptr [8 x i8], ptr %invariant.gep144, i64 %indvars.iv.next117.5
  store double %i.dt, ptr %gep145.6, align 8, !tbaa !9
  %indvars.iv.next117.6 = add nuw nsw i64 %indvars.iv116, 7 ; 2 uses
  %gep143.7 = getelementptr [8 x i8], ptr %invariant.gep142, i64 %indvars.iv.next117.6
end_hunk_0
begin_hunk_1_@dlacpy_:bb.a
  %indvars.iv.next117.7 = add nuw nsw i64 %indvars.iv116, 8 ; 2 uses
  %exitcond120.not.7 = icmp eq i64 %indvars.iv.next117.7, %wide.trip.count119
  br i1 %exitcond120.not.7, label %._crit_edge86, label %vec.epilog.scalar.ph195, !llvm.loop !34

._crit_edge86:                                    ; preds = %vec.epilog.scalar.ph195.prol.loopexit, %vec.epilog.scalar.ph195, %middle.block191, %vec.epilog.middle.block204, %bb.f
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count122
  %indvar.next171 = add i64 %indvar170, 1
  br i1 %exitcond123.not, label %.loopexit, label %bb.f, !llvm.loop !35

bb.g:                                             ; preds = %bb.d
  br i1 %.not6796, label %.loopexit, label %.lr.ph99

.lr.ph99:                                         ; preds = %bb.g
  %i.dv = load i32, ptr %1, align 4, !tbaa !8     ; 6 uses
  %.not6891 = icmp slt i32 %i.dv, 1
  br i1 %.not6891, label %.loopexit, label %.lr.ph94.preheader

.lr.ph94.preheader:                               ; preds = %.lr.ph99
  %i.dw = add nuw i32 %i.dv, 1
  %i.dx = sext i32 %i.a to i64                    ; 3 uses
  %i.dy = sext i32 %i.d to i64                    ; 3 uses
  %i.dz = add nuw i32 %i.bk, 1
  %wide.trip.count133 = zext i32 %i.dz to i64     ; 2 uses
  %wide.trip.count128 = zext i32 %i.dw to i64     ; 3 uses
  %i.ea = shl nsw i64 %i.dy, 3
  %i.eb = shl nsw i64 %i.e, 3                     ; 2 uses
  %i.ec = getelementptr i8, ptr %5, i64 %i.ea
  %i.ed = getelementptr i8, ptr %i.ec, i64 %i.eb
  %scevgep208 = getelementptr i8, ptr %i.ed, i64 8
  %i.ee = shl nuw nsw i64 %wide.trip.count133, 3
  %i.ef = add nsw i64 %i.ee, -8                   ; 2 uses
  %i.eg = mul i64 %i.ef, %i.dy
  %i.eh = shl nuw nsw i64 %wide.trip.count128, 3  ; 2 uses
  %i.ei = getelementptr i8, ptr %5, i64 %i.eg
  %i.ej = getelementptr i8, ptr %i.ei, i64 %i.eb
  %scevgep209 = getelementptr i8, ptr %i.ej, i64 %i.eh
  %i.ek = shl nsw i64 %i.dx, 3
  %i.el = shl nsw i64 %i.b, 3                     ; 2 uses
  %i.em = getelementptr i8, ptr %3, i64 %i.ek
  %i.en = getelementptr i8, ptr %i.em, i64 %i.el
  %scevgep210 = getelementptr i8, ptr %i.en, i64 8
  %i.eo = mul i64 %i.ef, %i.dx
  %i.ep = getelementptr i8, ptr %3, i64 %i.eo
  %i.eq = getelementptr i8, ptr %i.ep, i64 %i.el
  %scevgep211 = getelementptr i8, ptr %i.eq, i64 %i.eh
  %i.er = zext nneg i32 %i.dv to i64              ; 5 uses
  %i.es = zext nneg i32 %i.dv to i64
  %min.iters.check216 = icmp ult i32 %i.dv, 4
  %bound0212 = icmp ult ptr %scevgep208, %scevgep211
  %bound1213 = icmp ult ptr %scevgep210, %scevgep209
  %found.conflict214 = and i1 %bound0212, %bound1213
  %i.et = or i32 %i.a, %i.d
  %i.eu = icmp slt i32 %i.et, 0
  %i.ev = or i1 %found.conflict214, %i.eu
  %min.iters.check218 = icmp ult i32 %i.dv, 16
  %i.ew = and i64 %i.er, 12
  %n.vec220 = and i64 %i.er, 2147483632           ; 4 uses
  %i.ex = or disjoint i64 %n.vec220, 1
  %cmp.n229 = icmp eq i64 %n.vec220, %i.er
  %min.epilog.iters.check234 = icmp eq i64 %i.ew, 0
  %n.vec236 = and i64 %i.er, 2147483644           ; 3 uses
  %i.ey = or disjoint i64 %n.vec236, 1
  %cmp.n242 = icmp eq i64 %n.vec236, %i.er
  br label %iter.check231

iter.check231:                                    ; preds = %.lr.ph94.preheader, %._crit_edge95
  %indvars.iv130 = phi i64 [ 1, %.lr.ph94.preheader ], [ %indvars.iv.next131, %._crit_edge95 ] ; 3 uses
  %i.ez = mul nsw i64 %indvars.iv130, %i.dx
  %i.fa = mul nsw i64 %indvars.iv130, %i.dy
  %invariant.gep146 = getelementptr [8 x i8], ptr %i.c, i64 %i.ez ; 11 uses
  %invariant.gep148 = getelementptr [8 x i8], ptr %i.f, i64 %i.fa ; 11 uses
  %brmerge = select i1 %min.iters.check216, i1 true, i1 %i.ev
  br i1 %brmerge, label %vec.epilog.scalar.ph232.preheader, label %vector.main.loop.iter.check217

vector.main.loop.iter.check217:                   ; preds = %iter.check231
  br i1 %min.iters.check218, label %vec.epilog.ph235, label %vector.body221

vector.body221:                                   ; preds = %vector.main.loop.iter.check217, %vector.body221
  %index222 = phi i64 [ %index.next227, %vector.body221 ], [ 0, %vector.main.loop.iter.check217 ] ; 2 uses
  %i.fb = or disjoint i64 %index222, 1            ; 2 uses
  %i.fc = getelementptr [8 x i8], ptr %invariant.gep146, i64 %i.fb ; 4 uses
  %i.fd = getelementptr i8, ptr %i.fc, i64 32
  %i.fe = getelementptr i8, ptr %i.fc, i64 64
  %i.ff = getelementptr i8, ptr %i.fc, i64 96
  %wide.load223 = load <4 x double>, ptr %i.fc, align 8, !tbaa !9, !alias.scope !36
  %wide.load224 = load <4 x double>, ptr %i.fd, align 8, !tbaa !9, !alias.scope !36
  %wide.load225 = load <4 x double>, ptr %i.fe, align 8, !tbaa !9, !alias.scope !36
  %wide.load226 = load <4 x double>, ptr %i.ff, align 8, !tbaa !9, !alias.scope !36
  %i.fg = getelementptr [8 x i8], ptr %invariant.gep148, i64 %i.fb ; 4 uses
  %i.fh = getelementptr i8, ptr %i.fg, i64 32
  %i.fi = getelementptr i8, ptr %i.fg, i64 64
  %i.fj = getelementptr i8, ptr %i.fg, i64 96
  store <4 x double> %wide.load223, ptr %i.fg, align 8, !tbaa !9, !alias.scope !39, !noalias !36
  store <4 x double> %wide.load224, ptr %i.fh, align 8, !tbaa !9, !alias.scope !39, !noalias !36
  store <4 x double> %wide.load225, ptr %i.fi, align 8, !tbaa !9, !alias.scope !39, !noalias !36
  store <4 x double> %wide.load226, ptr %i.fj, align 8, !tbaa !9, !alias.scope !39, !noalias !36
  %index.next227 = add nuw i64 %index222, 16      ; 2 uses
  %i.fk = icmp eq i64 %index.next227, %n.vec220
  br i1 %i.fk, label %middle.block228, label %vector.body221, !llvm.loop !41

middle.block228:                                  ; preds = %vector.body221
  br i1 %cmp.n229, label %._crit_edge95, label %vec.epilog.iter.check233

vec.epilog.iter.check233:                         ; preds = %middle.block228
  br i1 %min.epilog.iters.check234, label %vec.epilog.scalar.ph232.preheader, label %vec.epilog.ph235, !prof !20

vec.epilog.ph235:                                 ; preds = %vector.main.loop.iter.check217, %vec.epilog.iter.check233
  %vec.epilog.resume.val230 = phi i64 [ %n.vec220, %vec.epilog.iter.check233 ], [ 0, %vector.main.loop.iter.check217 ]
  br label %vec.epilog.vector.body237

vec.epilog.vector.body237:                        ; preds = %vec.epilog.vector.body237, %vec.epilog.ph235
  %index238 = phi i64 [ %vec.epilog.resume.val230, %vec.epilog.ph235 ], [ %index.next240, %vec.epilog.vector.body237 ] ; 2 uses
  %i.fl = or disjoint i64 %index238, 1            ; 2 uses
  %i.fm = getelementptr [8 x i8], ptr %invariant.gep146, i64 %i.fl
  %wide.load239 = load <4 x double>, ptr %i.fm, align 8, !tbaa !9, !alias.scope !36
  %i.fn = getelementptr [8 x i8], ptr %invariant.gep148, i64 %i.fl
  store <4 x double> %wide.load239, ptr %i.fn, align 8, !tbaa !9, !alias.scope !39, !noalias !36
  %index.next240 = add nuw i64 %index238, 4       ; 2 uses
  %i.fo = icmp eq i64 %index.next240, %n.vec236
  br i1 %i.fo, label %vec.epilog.middle.block241, label %vec.epilog.vector.body237, !llvm.loop !42

vec.epilog.middle.block241:                       ; preds = %vec.epilog.vector.body237
  br i1 %cmp.n242, label %._crit_edge95, label %vec.epilog.scalar.ph232.preheader

vec.epilog.scalar.ph232.preheader:                ; preds = %iter.check231, %vec.epilog.iter.check233, %vec.epilog.middle.block241
  %indvars.iv125.ph = phi i64 [ 1, %iter.check231 ], [ %i.ey, %vec.epilog.middle.block241 ], [ %i.ex, %vec.epilog.iter.check233 ] ; 4 uses
  %i.fp = sub nsw i64 %wide.trip.count128, %indvars.iv125.ph
  %i.fq = sub nsw i64 %i.es, %indvars.iv125.ph
  %xtraiter250 = and i64 %i.fp, 7                 ; 2 uses
  %lcmp.mod251.not = icmp eq i64 %xtraiter250, 0
  br i1 %lcmp.mod251.not, label %vec.epilog.scalar.ph232.prol.loopexit, label %vec.epilog.scalar.ph232.prol

vec.epilog.scalar.ph232.prol:                     ; preds = %vec.epilog.scalar.ph232.preheader, %vec.epilog.scalar.ph232.prol
  %indvars.iv125.prol = phi i64 [ %indvars.iv.next126.prol, %vec.epilog.scalar.ph232.prol ], [ %indvars.iv125.ph, %vec.epilog.scalar.ph232.preheader ] ; 3 uses
  %prol.iter252 = phi i64 [ %prol.iter252.next, %vec.epilog.scalar.ph232.prol ], [ 0, %vec.epilog.scalar.ph232.preheader ]
  %gep147.prol = getelementptr [8 x i8], ptr %invariant.gep146, i64 %indvars.iv125.prol
  %i.fr = load double, ptr %gep147.prol, align 8, !tbaa !9
  %gep149.prol = getelementptr [8 x i8], ptr %invariant.gep148, i64 %indvars.iv125.prol
  store double %i.fr, ptr %gep149.prol, align 8, !tbaa !9
  %indvars.iv.next126.prol = add nuw nsw i64 %indvars.iv125.prol, 1 ; 2 uses
  %prol.iter252.next = add i64 %prol.iter252, 1   ; 2 uses
  %prol.iter252.cmp.not = icmp eq i64 %prol.iter252.next, %xtraiter250
  br i1 %prol.iter252.cmp.not, label %vec.epilog.scalar.ph232.prol.loopexit, label %vec.epilog.scalar.ph232.prol, !llvm.loop !43

vec.epilog.scalar.ph232.prol.loopexit:            ; preds = %vec.epilog.scalar.ph232.prol, %vec.epilog.scalar.ph232.preheader
  %indvars.iv125.unr = phi i64 [ %indvars.iv125.ph, %vec.epilog.scalar.ph232.preheader ], [ %indvars.iv.next126.prol, %vec.epilog.scalar.ph232.prol ]
  %i.fs = icmp ult i64 %i.fq, 7
  br i1 %i.fs, label %._crit_edge95, label %vec.epilog.scalar.ph232

vec.epilog.scalar.ph232:                          ; preds = %vec.epilog.scalar.ph232.prol.loopexit, %vec.epilog.scalar.ph232
  %indvars.iv125 = phi i64 [ %indvars.iv.next126.7, %vec.epilog.scalar.ph232 ], [ %indvars.iv125.unr, %vec.epilog.scalar.ph232.prol.loopexit ] ; 10 uses
  %gep147 = getelementptr [8 x i8], ptr %invariant.gep146, i64 %indvars.iv125
  %i.ft = load double, ptr %gep147, align 8, !tbaa !9
  %gep149 = getelementptr [8 x i8], ptr %invariant.gep148, i64 %indvars.iv125
  store double %i.ft, ptr %gep149, align 8, !tbaa !9
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %gep147.1 = getelementptr [8 x i8], ptr %invariant.gep146, i64 %indvars.iv.next126
  %i.fu = load double, ptr %gep147.1, align 8, !tbaa !9
  %gep149.1 = getelementptr [8 x i8], ptr %invariant.gep148, i64 %indvars.iv.next126
  store double %i.fu, ptr %gep149.1, align 8, !tbaa !9
  %indvars.iv.next126.1 = add nuw nsw i64 %indvars.iv125, 2 ; 2 uses
  %gep147.2 = getelementptr [8 x i8], ptr %invariant.gep146, i64 %indvars.iv.next126.1
  %i.fv = load double, ptr %gep147.2, align 8, !tbaa !9
  %gep149.2 = getelementptr [8 x i8], ptr %invariant.gep148, i64 %indvars.iv.next126.1
  store double %i.fv, ptr %gep149.2, align 8, !tbaa !9
  %indvars.iv.next126.2 = add nuw nsw i64 %indvars.iv125, 3 ; 2 uses
  %gep147.3 = getelementptr [8 x i8], ptr %invariant.gep146, i64 %indvars.iv.next126.2
  %i.fw = load double, ptr %gep147.3, align 8, !tbaa !9
  %gep149.3 = getelementptr [8 x i8], ptr %invariant.gep148, i64 %indvars.iv.next126.2
  store double %i.fw, ptr %gep149.3, align 8, !tbaa !9
  %indvars.iv.next126.3 = add nuw nsw i64 %indvars.iv125, 4 ; 2 uses
  %gep147.4 = getelementptr [8 x i8], ptr %invariant.gep146, i64 %indvars.iv.next126.3
  %i.fx = load double, ptr %gep147.4, align 8, !tbaa !9
  %gep149.4 = getelementptr [8 x i8], ptr %invariant.gep148, i64 %indvars.iv.next126.3
  store double %i.fx, ptr %gep149.4, align 8, !tbaa !9
  %indvars.iv.next126.4 = add nuw nsw i64 %indvars.iv125, 5 ; 2 uses
  %gep147.5 = getelementptr [8 x i8], ptr %invariant.gep146, i64 %indvars.iv.next126.4
  %i.fy = load double, ptr %gep147.5, align 8, !tbaa !9
  %gep149.5 = getelementptr [8 x i8], ptr %invariant.gep148, i64 %indvars.iv.next126.4
  store double %i.fy, ptr %gep149.5, align 8, !tbaa !9
  %indvars.iv.next126.5 = add nuw nsw i64 %indvars.iv125, 6 ; 2 uses
  %gep147.6 = getelementptr [8 x i8], ptr %invariant.gep146, i64 %indvars.iv.next126.5
  %i.fz = load double, ptr %gep147.6, align 8, !tbaa !9
  %gep149.6 = getelementptr [8 x i8], ptr %invariant.gep148, i64 %indvars.iv.next126.5
  store double %i.fz, ptr %gep149.6, align 8, !tbaa !9
  %indvars.iv.next126.6 = add nuw nsw i64 %indvars.iv125, 7 ; 2 uses
  %gep147.7 = getelementptr [8 x i8], ptr %invariant.gep146, i64 %indvars.iv.next126.6
  %i.ga = load double, ptr %gep147.7, align 8, !tbaa !9
  %gep149.7 = getelementptr [8 x i8], ptr %invariant.gep148, i64 %indvars.iv.next126.6
  store double %i.ga, ptr %gep149.7, align 8, !tbaa !9
  %indvars.iv.next126.7 = add nuw nsw i64 %indvars.iv125, 8 ; 2 uses
  %exitcond129.not.7 = icmp eq i64 %indvars.iv.next126.7, %wide.trip.count128
  br i1 %exitcond129.not.7, label %._crit_edge95, label %vec.epilog.scalar.ph232, !llvm.loop !44

._crit_edge95:                                    ; preds = %vec.epilog.scalar.ph232.prol.loopexit, %vec.epilog.scalar.ph232, %vec.epilog.middle.block241, %middle.block228
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %exitcond134.not = icmp eq i64 %indvars.iv.next131, %wide.trip.count133
  br i1 %exitcond134.not, label %.loopexit, label %iter.check231, !llvm.loop !45

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge86, %._crit_edge95, %.lr.ph81, %bb.b, %bb.e, %bb.g, %.lr.ph99
  ret void
}

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !6, i64 0}
!11 = !{!12}
!12 = distinct !{!12, !13}
!13 = distinct !{!13, !"LVerDomain"}
!14 = !{!15}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !17, !18, !19}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = !{!"branch_weights", i32 4, i32 12}
!21 = distinct !{!21, !17, !18, !19}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = distinct !{!24, !17, !18}
!25 = distinct !{!25, !17}
!26 = !{!27}
!27 = distinct !{!27, !28}
!28 = distinct !{!28, !"LVerDomain"}
!29 = !{!30}
!30 = distinct !{!30, !28}
!31 = distinct !{!31, !17, !18, !19}
!32 = distinct !{!32, !17, !18, !19}
!33 = distinct !{!33, !23}
!34 = distinct !{!34, !17, !18}
!35 = distinct !{!35, !17}
!36 = !{!37}
!37 = distinct !{!37, !38}
!38 = distinct !{!38, !"LVerDomain"}
!39 = !{!40}
!40 = distinct !{!40, !38}
!41 = distinct !{!41, !17, !18, !19}
!42 = distinct !{!42, !17, !18, !19}
!43 = distinct !{!43, !23}
!44 = distinct !{!44, !17, !18}
!45 = distinct !{!45, !17}
end_hunk_1
