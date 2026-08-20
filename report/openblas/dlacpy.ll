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
  %i.i = load i32, ptr %1, align 4, !tbaa !8      ; 5 uses
  %i.j = sext i32 %i.a to i64                     ; 3 uses
  %i.k = sext i32 %i.d to i64                     ; 3 uses
  %i.l = add nuw i32 %i.h, 1
  %wide.trip.count109 = zext i32 %i.l to i64
  %.not7376 = icmp slt i32 %i.i, 1
  %7 = or i64 %i.k, %i.e
  %i.m = shl nsw i64 %7, 3                        ; 2 uses
  %i.n = shl nsw i64 %i.k, 3
  %8 = or i64 %i.j, %i.b
  %i.o = shl nsw i64 %8, 3                        ; 2 uses
  %i.p = shl nsw i64 %i.j, 3
  %i.q = getelementptr i8, ptr %5, i64 %i.m
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %i.s = getelementptr i8, ptr %5, i64 %i.m
  %i.t = getelementptr i8, ptr %3, i64 %i.o
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = getelementptr i8, ptr %3, i64 %i.o
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph81, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph81 ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %indvars.iv106 = phi i64 [ 1, %.lr.ph81 ], [ %indvars.iv.next107, %._crit_edge ] ; 7 uses
  %i.w = trunc i64 %indvars.iv106 to i32
  %smin246 = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %i.w)
  %i.x = add i32 %smin246, 1
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = trunc i64 %indvars.iv106 to i32
  %smin158 = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %i.z)
  %i.aa = add i32 %smin158, 1
  %i.ab = zext i32 %i.aa to i64
  %i.ac = add nsw i64 %i.ab, -1                   ; 7 uses
  %i.ad = mul i64 %i.n, %indvar                   ; 2 uses
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.ad
  %scevgep152 = getelementptr i8, ptr %i.s, i64 %i.ad
  %i.ae = trunc i64 %indvars.iv106 to i32
  %smin153 = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %i.ae)
  %i.af = add i32 %smin153, 1
  %i.ag = zext i32 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 3                ; 2 uses
  %scevgep154 = getelementptr i8, ptr %scevgep152, i64 %i.ah
  %i.ai = mul i64 %i.p, %indvar                   ; 2 uses
  %scevgep155 = getelementptr i8, ptr %i.u, i64 %i.ai
  %scevgep156 = getelementptr i8, ptr %i.v, i64 %i.ai
  %scevgep157 = getelementptr i8, ptr %scevgep156, i64 %i.ah
  br i1 %.not7376, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.c
  %i.aj = trunc nuw nsw i64 %indvars.iv106 to i32
  %smin = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %i.aj)
  %i.ak = add i32 %smin, 1
  %i.al = mul nsw i64 %indvars.iv106, %i.j
  %i.am = mul nsw i64 %indvars.iv106, %i.k
  %wide.trip.count = zext i32 %i.ak to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.c, i64 %i.al ; 11 uses
  %invariant.gep140 = getelementptr [8 x i8], ptr %i.f, i64 %i.am ; 11 uses
  %min.iters.check = icmp ult i64 %i.ac, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %bound0 = icmp ult ptr %scevgep, %scevgep157
  %bound1 = icmp ult ptr %scevgep155, %scevgep154
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check159 = icmp ult i64 %i.ac, 16
  br i1 %min.iters.check159, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.an = and i64 %i.ac, 12
  %n.vec = and i64 %i.ac, -16                     ; 4 uses
  %i.ao = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = or disjoint i64 %index, 1               ; 2 uses
  %i.aq = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ap ; 4 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 32
  %i.as = getelementptr i8, ptr %i.aq, i64 64
  %i.at = getelementptr i8, ptr %i.aq, i64 96
  %wide.load = load <4 x double>, ptr %i.aq, align 8, !tbaa !9, !alias.scope !11
  %wide.load160 = load <4 x double>, ptr %i.ar, align 8, !tbaa !9, !alias.scope !11
  %wide.load161 = load <4 x double>, ptr %i.as, align 8, !tbaa !9, !alias.scope !11
  %wide.load162 = load <4 x double>, ptr %i.at, align 8, !tbaa !9, !alias.scope !11
  %i.au = getelementptr [8 x i8], ptr %invariant.gep140, i64 %i.ap ; 4 uses
  %i.av = getelementptr i8, ptr %i.au, i64 32
  %i.aw = getelementptr i8, ptr %i.au, i64 64
  %i.ax = getelementptr i8, ptr %i.au, i64 96
  store <4 x double> %wide.load, ptr %i.au, align 8, !tbaa !9, !alias.scope !14, !noalias !11
  store <4 x double> %wide.load160, ptr %i.av, align 8, !tbaa !9, !alias.scope !14, !noalias !11
  store <4 x double> %wide.load161, ptr %i.aw, align 8, !tbaa !9, !alias.scope !14, !noalias !11
  store <4 x double> %wide.load162, ptr %i.ax, align 8, !tbaa !9, !alias.scope !14, !noalias !11
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.an, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec163 = and i64 %i.ac, -4                   ; 3 uses
  %i.az = or disjoint i64 %n.vec163, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index164 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next166, %vec.epilog.vector.body ] ; 2 uses
  %i.ba = or disjoint i64 %index164, 1            ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ba
  %wide.load165 = load <4 x double>, ptr %i.bb, align 8, !tbaa !9, !alias.scope !11
  %i.bc = getelementptr [8 x i8], ptr %invariant.gep140, i64 %i.ba
  store <4 x double> %wide.load165, ptr %i.bc, align 8, !tbaa !9, !alias.scope !14, !noalias !11
  %index.next166 = add nuw i64 %index164, 4       ; 2 uses
  %i.bd = icmp eq i64 %index.next166, %n.vec163
  br i1 %i.bd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !21

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n167 = icmp eq i64 %i.ac, %n.vec163
  br i1 %cmp.n167, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.ao, %vec.epilog.iter.check ], [ %i.az, %vec.epilog.middle.block ] ; 4 uses
  %i.be = sub nsw i64 %i.y, %indvars.iv.ph
  %xtraiter = and i64 %i.be, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.bf = load double, ptr %gep.prol, align 8, !tbaa !9
  %gep141.prol = getelementptr [8 x i8], ptr %invariant.gep140, i64 %indvars.iv.prol
  store double %i.bf, ptr %gep141.prol, align 8, !tbaa !9
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !22

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.bg = sub nsw i64 %indvars.iv.ph, %i.y
  %i.bh = icmp ugt i64 %i.bg, -8
  br i1 %i.bh, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bi = load double, ptr %gep, align 8, !tbaa !9
  %gep141 = getelementptr [8 x i8], ptr %invariant.gep140, i64 %indvars.iv
  store double %i.bi, ptr %gep141, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.bj = load double, ptr %gep.1, align 8, !tbaa !9
  %gep141.1 = getelementptr [8 x i8], ptr %invariant.gep140, i64 %indvars.iv.next
  store double %i.bj, ptr %gep141.1, align 8, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.bk = load double, ptr %gep.2, align 8, !tbaa !9
  %gep141.2 = getelementptr [8 x i8], ptr %invariant.gep140, i64 %indvars.iv.next.1
  store double %i.bk, ptr %gep141.2, align 8, !tbaa !9
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.bl = load double, ptr %gep.3, align 8, !tbaa !9
  %gep141.3 = getelementptr [8 x i8], ptr %invariant.gep140, i64 %indvars.iv.next.2
  store double %i.bl, ptr %gep141.3, align 8, !tbaa !9
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %gep.4 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.3
  %i.bm = load double, ptr %gep.4, align 8, !tbaa !9
  %gep141.4 = getelementptr [8 x i8], ptr %invariant.gep140, i64 %indvars.iv.next.3
  store double %i.bm, ptr %gep141.4, align 8, !tbaa !9
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %gep.5 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.4
  %i.bn = load double, ptr %gep.5, align 8, !tbaa !9
  %gep141.5 = getelementptr [8 x i8], ptr %invariant.gep140, i64 %indvars.iv.next.4
  store double %i.bn, ptr %gep141.5, align 8, !tbaa !9
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %gep.6 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.5
  %i.bo = load double, ptr %gep.6, align 8, !tbaa !9
  %gep141.6 = getelementptr [8 x i8], ptr %invariant.gep140, i64 %indvars.iv.next.5
  store double %i.bo, ptr %gep141.6, align 8, !tbaa !9
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 2 uses
  %gep.7 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.6
  %i.bp = load double, ptr %gep.7, align 8, !tbaa !9
  %gep141.7 = getelementptr [8 x i8], ptr %invariant.gep140, i64 %indvars.iv.next.6
  store double %i.bp, ptr %gep141.7, align 8, !tbaa !9
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !24

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.c
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond110.not, label %.loopexit, label %bb.c, !llvm.loop !25

bb.d:                                             ; preds = %bb.a
  %i.bq = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #3
  %.not66 = icmp eq i32 %i.bq, 0
  %i.br = load i32, ptr %2, align 4, !tbaa !8     ; 3 uses
  %.not6796 = icmp slt i32 %i.br, 1               ; 2 uses
  br i1 %.not66, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not6796, label %.loopexit, label %.lr.ph90

.lr.ph90:                                         ; preds = %bb.e
  %i.bs = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  %i.bt = add i32 %i.bs, 1
  %i.bu = sext i32 %i.bs to i64
  %i.bv = sext i32 %i.a to i64                    ; 4 uses
  %i.bw = sext i32 %i.d to i64                    ; 4 uses
  %i.bx = add nuw i32 %i.br, 1
  %wide.trip.count122 = zext i32 %i.bx to i64
  %wide.trip.count119 = zext i32 %i.bt to i64     ; 5 uses
  %i.by = shl nsw i64 %i.bw, 3
  %i.bz = or i64 %i.bw, %i.e
  %i.ca = shl nsw i64 %i.bz, 3                    ; 2 uses
  %i.cb = add nsw i64 %i.by, 8
  %i.cc = shl nuw nsw i64 %wide.trip.count119, 3  ; 2 uses
  %i.cd = shl nsw i64 %i.bw, 3
  %i.ce = shl nsw i64 %i.bv, 3
  %i.cf = or i64 %i.bv, %i.b
  %i.cg = shl nsw i64 %i.cf, 3                    ; 2 uses
  %i.ch = add nsw i64 %i.ce, 8
  %i.ci = shl nsw i64 %i.bv, 3
  %i.cj = getelementptr i8, ptr %5, i64 %i.ca
  %i.ck = getelementptr i8, ptr %i.cj, i64 8
  %i.cl = getelementptr i8, ptr %5, i64 %i.ca
  %i.cm = getelementptr i8, ptr %i.cl, i64 %i.cc
  %i.cn = getelementptr i8, ptr %3, i64 %i.cg
  %i.co = getelementptr i8, ptr %i.cn, i64 8
  %i.cp = getelementptr i8, ptr %3, i64 %i.cg
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.cc
  br label %bb.f

end_hunk_0
