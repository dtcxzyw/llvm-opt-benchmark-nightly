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
  %i.m = or i64 %i.k, %i.e
  %i.n = shl nsw i64 %i.m, 3                      ; 2 uses
  %i.o = shl nsw i64 %i.k, 3
  %i.p = or i64 %i.j, %i.b
  %i.q = shl nsw i64 %i.p, 3                      ; 2 uses
  %i.r = shl nsw i64 %i.j, 3
  %i.s = getelementptr i8, ptr %5, i64 %i.n
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = getelementptr i8, ptr %5, i64 %i.n
  %i.v = getelementptr i8, ptr %3, i64 %i.q
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = getelementptr i8, ptr %3, i64 %i.q
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph81, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph81 ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %indvars.iv106 = phi i64 [ 1, %.lr.ph81 ], [ %indvars.iv.next107, %._crit_edge ] ; 7 uses
  %7 = trunc i64 %indvars.iv106 to i32
  %smin246 = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %7)
  %8 = add i32 %smin246, 1
  %9 = zext i32 %8 to i64                         ; 2 uses
  %i.y = trunc i64 %indvars.iv106 to i32
  %smin158 = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %i.y)
  %i.z = add i32 %smin158, 1
  %i.aa = zext i32 %i.z to i64
  %i.ab = add nsw i64 %i.aa, -1                   ; 7 uses
  %i.ac = mul i64 %i.o, %indvar                   ; 2 uses
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.ac
  %scevgep152 = getelementptr i8, ptr %i.u, i64 %i.ac
  %i.ad = trunc i64 %indvars.iv106 to i32
  %smin153 = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %i.ad)
  %i.ae = add i32 %smin153, 1
  %i.af = zext i32 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 3                ; 2 uses
  %scevgep154 = getelementptr i8, ptr %scevgep152, i64 %i.ag
  %i.ah = mul i64 %i.r, %indvar                   ; 2 uses
  %scevgep155 = getelementptr i8, ptr %i.w, i64 %i.ah
  %scevgep156 = getelementptr i8, ptr %i.x, i64 %i.ah
  %scevgep157 = getelementptr i8, ptr %scevgep156, i64 %i.ag
  br i1 %.not7376, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.c
  %i.ai = trunc nuw nsw i64 %indvars.iv106 to i32
  %smin = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %i.ai)
  %i.aj = add i32 %smin, 1
  %i.ak = mul nsw i64 %indvars.iv106, %i.j
  %i.al = mul nsw i64 %indvars.iv106, %i.k
  %wide.trip.count = zext i32 %i.aj to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.c, i64 %i.ak ; 11 uses
  %invariant.gep140 = getelementptr [8 x i8], ptr %i.f, i64 %i.al ; 11 uses
  %min.iters.check = icmp ult i64 %i.ab, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %bound0 = icmp ult ptr %scevgep, %scevgep157
  %bound1 = icmp ult ptr %scevgep155, %scevgep154
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check159 = icmp ult i64 %i.ab, 16
  br i1 %min.iters.check159, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.am = and i64 %i.ab, 12
  %n.vec = and i64 %i.ab, -16                     ; 4 uses
  %i.an = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = or disjoint i64 %index, 1               ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ao ; 4 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 32
  %i.ar = getelementptr i8, ptr %i.ap, i64 64
  %i.as = getelementptr i8, ptr %i.ap, i64 96
  %wide.load = load <4 x double>, ptr %i.ap, align 8, !tbaa !9, !alias.scope !11
  %wide.load160 = load <4 x double>, ptr %i.aq, align 8, !tbaa !9, !alias.scope !11
  %wide.load161 = load <4 x double>, ptr %i.ar, align 8, !tbaa !9, !alias.scope !11
  %wide.load162 = load <4 x double>, ptr %i.as, align 8, !tbaa !9, !alias.scope !11
  %i.at = getelementptr [8 x i8], ptr %invariant.gep140, i64 %i.ao ; 4 uses
  %i.au = getelementptr i8, ptr %i.at, i64 32
  %i.av = getelementptr i8, ptr %i.at, i64 64
  %i.aw = getelementptr i8, ptr %i.at, i64 96
  store <4 x double> %wide.load, ptr %i.at, align 8, !tbaa !9, !alias.scope !14, !noalias !11
  store <4 x double> %wide.load160, ptr %i.au, align 8, !tbaa !9, !alias.scope !14, !noalias !11
  store <4 x double> %wide.load161, ptr %i.av, align 8, !tbaa !9, !alias.scope !14, !noalias !11
  store <4 x double> %wide.load162, ptr %i.aw, align 8, !tbaa !9, !alias.scope !14, !noalias !11
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.am, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec163 = and i64 %i.ab, -4                   ; 3 uses
  %i.ay = or disjoint i64 %n.vec163, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index164 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next166, %vec.epilog.vector.body ] ; 2 uses
  %i.az = or disjoint i64 %index164, 1            ; 2 uses
  %i.ba = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.az
  %wide.load165 = load <4 x double>, ptr %i.ba, align 8, !tbaa !9, !alias.scope !11
  %i.bb = getelementptr [8 x i8], ptr %invariant.gep140, i64 %i.az
  store <4 x double> %wide.load165, ptr %i.bb, align 8, !tbaa !9, !alias.scope !14, !noalias !11
  %index.next166 = add nuw i64 %index164, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next166, %n.vec163
  br i1 %i.bc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !21

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n167 = icmp eq i64 %i.ab, %n.vec163
  br i1 %cmp.n167, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.an, %vec.epilog.iter.check ], [ %i.ay, %vec.epilog.middle.block ] ; 4 uses
  %i.bd = sub nsw i64 %9, %indvars.iv.ph
  %xtraiter = and i64 %i.bd, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.be = load double, ptr %gep.prol, align 8, !tbaa !9
  %gep141.prol = getelementptr [8 x i8], ptr %invariant.gep140, i64 %indvars.iv.prol
  store double %i.be, ptr %gep141.prol, align 8, !tbaa !9
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !22

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.bf = sub nsw i64 %indvars.iv.ph, %9
  %i.bg = icmp ugt i64 %i.bf, -8
  br i1 %i.bg, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bh = load double, ptr %gep, align 8, !tbaa !9
  %gep141 = getelementptr [8 x i8], ptr %invariant.gep140, i64 %indvars.iv
  store double %i.bh, ptr %gep141, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.bi = load double, ptr %gep.1, align 8, !tbaa !9
  %gep141.1 = getelementptr [8 x i8], ptr %invariant.gep140, i64 %indvars.iv.next
  store double %i.bi, ptr %gep141.1, align 8, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.bj = load double, ptr %gep.2, align 8, !tbaa !9
  %gep141.2 = getelementptr [8 x i8], ptr %invariant.gep140, i64 %indvars.iv.next.1
  store double %i.bj, ptr %gep141.2, align 8, !tbaa !9
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.bk = load double, ptr %gep.3, align 8, !tbaa !9
  %gep141.3 = getelementptr [8 x i8], ptr %invariant.gep140, i64 %indvars.iv.next.2
  store double %i.bk, ptr %gep141.3, align 8, !tbaa !9
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %gep.4 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.3
  %i.bl = load double, ptr %gep.4, align 8, !tbaa !9
  %gep141.4 = getelementptr [8 x i8], ptr %invariant.gep140, i64 %indvars.iv.next.3
  store double %i.bl, ptr %gep141.4, align 8, !tbaa !9
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %gep.5 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.4
  %i.bm = load double, ptr %gep.5, align 8, !tbaa !9
  %gep141.5 = getelementptr [8 x i8], ptr %invariant.gep140, i64 %indvars.iv.next.4
  store double %i.bm, ptr %gep141.5, align 8, !tbaa !9
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %gep.6 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.5
  %i.bn = load double, ptr %gep.6, align 8, !tbaa !9
  %gep141.6 = getelementptr [8 x i8], ptr %invariant.gep140, i64 %indvars.iv.next.5
  store double %i.bn, ptr %gep141.6, align 8, !tbaa !9
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 2 uses
  %gep.7 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.6
  %i.bo = load double, ptr %gep.7, align 8, !tbaa !9
  %gep141.7 = getelementptr [8 x i8], ptr %invariant.gep140, i64 %indvars.iv.next.6
  store double %i.bo, ptr %gep141.7, align 8, !tbaa !9
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !24

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.c
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond110.not, label %.loopexit, label %bb.c, !llvm.loop !25

bb.d:                                             ; preds = %bb.a
  %i.bp = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #3
  %.not66 = icmp eq i32 %i.bp, 0
  %i.bq = load i32, ptr %2, align 4, !tbaa !8     ; 3 uses
  %.not6796 = icmp slt i32 %i.bq, 1               ; 2 uses
  br i1 %.not66, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not6796, label %.loopexit, label %.lr.ph90

.lr.ph90:                                         ; preds = %bb.e
  %i.br = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  %i.bs = add i32 %i.br, 1
  %i.bt = sext i32 %i.br to i64
  %i.bu = sext i32 %i.a to i64                    ; 4 uses
  %i.bv = sext i32 %i.d to i64                    ; 4 uses
  %i.bw = add nuw i32 %i.bq, 1
  %wide.trip.count122 = zext i32 %i.bw to i64
  %wide.trip.count119 = zext i32 %i.bs to i64     ; 5 uses
  %i.bx = shl nsw i64 %i.bv, 3
  %i.by = or i64 %i.bv, %i.e
  %i.bz = shl nsw i64 %i.by, 3                    ; 2 uses
  %i.ca = add nsw i64 %i.bx, 8
  %i.cb = shl nuw nsw i64 %wide.trip.count119, 3  ; 2 uses
  %i.cc = shl nsw i64 %i.bv, 3
  %i.cd = shl nsw i64 %i.bu, 3
  %i.ce = or i64 %i.bu, %i.b
  %i.cf = shl nsw i64 %i.ce, 3                    ; 2 uses
  %i.cg = add nsw i64 %i.cd, 8
  %i.ch = shl nsw i64 %i.bu, 3
  %i.ci = getelementptr i8, ptr %5, i64 %i.bz
  %i.cj = getelementptr i8, ptr %i.ci, i64 8
  %i.ck = getelementptr i8, ptr %5, i64 %i.bz
  %i.cl = getelementptr i8, ptr %i.ck, i64 %i.cb
  %i.cm = getelementptr i8, ptr %3, i64 %i.cf
  %i.cn = getelementptr i8, ptr %i.cm, i64 8
  %i.co = getelementptr i8, ptr %3, i64 %i.cf
  %i.cp = getelementptr i8, ptr %i.co, i64 %i.cb
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph90, %._crit_edge86
  %indvar170 = phi i64 [ 0, %.lr.ph90 ], [ %indvar.next171, %._crit_edge86 ] ; 6 uses
  %indvars.iv114 = phi i64 [ 1, %.lr.ph90 ], [ %indvars.iv.next115, %._crit_edge86 ] ; 10 uses
  %i.cq = xor i64 %indvar170, -1
  %i.cr = add i64 %i.cq, %wide.trip.count119      ; 7 uses
  %i.cs = mul i64 %i.ca, %indvar170
  %scevgep172 = getelementptr i8, ptr %i.cj, i64 %i.cs
  %i.ct = mul i64 %i.cc, %indvar170
  %scevgep173 = getelementptr i8, ptr %i.cl, i64 %i.ct
  %i.cu = mul i64 %i.cg, %indvar170
  %scevgep174 = getelementptr i8, ptr %i.cn, i64 %i.cu
  %i.cv = mul i64 %i.ch, %indvar170
  %scevgep175 = getelementptr i8, ptr %i.cp, i64 %i.cv
  %.not7082 = icmp sgt i64 %indvars.iv114, %i.bt
  br i1 %.not7082, label %._crit_edge86, label %iter.check194

iter.check194:                                    ; preds = %bb.f
  %i.cw = mul nsw i64 %indvars.iv114, %i.bu
  %i.cx = mul nsw i64 %indvars.iv114, %i.bv
  %invariant.gep142 = getelementptr [8 x i8], ptr %i.c, i64 %i.cw ; 11 uses
  %invariant.gep144 = getelementptr [8 x i8], ptr %i.f, i64 %i.cx ; 11 uses
  %min.iters.check179 = icmp ult i64 %i.cr, 4
  br i1 %min.iters.check179, label %vec.epilog.scalar.ph195.preheader, label %vector.memcheck169

vector.memcheck169:                               ; preds = %iter.check194
  %bound0176 = icmp ult ptr %scevgep172, %scevgep175
  %bound1177 = icmp ult ptr %scevgep174, %scevgep173
  %found.conflict178 = and i1 %bound0176, %bound1177
  br i1 %found.conflict178, label %vec.epilog.scalar.ph195.preheader, label %vector.main.loop.iter.check180

vector.main.loop.iter.check180:                   ; preds = %vector.memcheck169
  %min.iters.check181 = icmp ult i64 %i.cr, 16
  br i1 %min.iters.check181, label %vec.epilog.ph198, label %vector.ph182

vector.ph182:                                     ; preds = %vector.main.loop.iter.check180
  %i.cy = and i64 %i.cr, 12
  %n.vec183 = and i64 %i.cr, -16                  ; 4 uses
  %i.cz = add i64 %indvars.iv114, %n.vec183
  br label %vector.body184

vector.body184:                                   ; preds = %vector.body184, %vector.ph182
  %index185 = phi i64 [ 0, %vector.ph182 ], [ %index.next190, %vector.body184 ] ; 2 uses
  %i.da = add nuw i64 %indvars.iv114, %index185   ; 2 uses
  %i.db = getelementptr [8 x i8], ptr %invariant.gep142, i64 %i.da ; 4 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 32
  %i.dd = getelementptr i8, ptr %i.db, i64 64
  %i.de = getelementptr i8, ptr %i.db, i64 96
  %wide.load186 = load <4 x double>, ptr %i.db, align 8, !tbaa !9, !alias.scope !26
  %wide.load187 = load <4 x double>, ptr %i.dc, align 8, !tbaa !9, !alias.scope !26
  %wide.load188 = load <4 x double>, ptr %i.dd, align 8, !tbaa !9, !alias.scope !26
  %wide.load189 = load <4 x double>, ptr %i.de, align 8, !tbaa !9, !alias.scope !26
  %i.df = getelementptr [8 x i8], ptr %invariant.gep144, i64 %i.da ; 4 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 32
  %i.dh = getelementptr i8, ptr %i.df, i64 64
  %i.di = getelementptr i8, ptr %i.df, i64 96
  store <4 x double> %wide.load186, ptr %i.df, align 8, !tbaa !9, !alias.scope !29, !noalias !26
  store <4 x double> %wide.load187, ptr %i.dg, align 8, !tbaa !9, !alias.scope !29, !noalias !26
  store <4 x double> %wide.load188, ptr %i.dh, align 8, !tbaa !9, !alias.scope !29, !noalias !26
  store <4 x double> %wide.load189, ptr %i.di, align 8, !tbaa !9, !alias.scope !29, !noalias !26
  %index.next190 = add nuw i64 %index185, 16      ; 2 uses
  %i.dj = icmp eq i64 %index.next190, %n.vec183
  br i1 %i.dj, label %middle.block191, label %vector.body184, !llvm.loop !31

middle.block191:                                  ; preds = %vector.body184
  %cmp.n192 = icmp eq i64 %i.cr, %n.vec183
  br i1 %cmp.n192, label %._crit_edge86, label %vec.epilog.iter.check196

vec.epilog.iter.check196:                         ; preds = %middle.block191
  %min.epilog.iters.check197 = icmp eq i64 %i.cy, 0
  br i1 %min.epilog.iters.check197, label %vec.epilog.scalar.ph195.preheader, label %vec.epilog.ph198, !prof !20

vec.epilog.ph198:                                 ; preds = %vector.main.loop.iter.check180, %vec.epilog.iter.check196
  %vec.epilog.resume.val193 = phi i64 [ %n.vec183, %vec.epilog.iter.check196 ], [ 0, %vector.main.loop.iter.check180 ]
  %n.vec199 = and i64 %i.cr, -4                   ; 3 uses
  %i.dk = add i64 %indvars.iv114, %n.vec199
  br label %vec.epilog.vector.body200

vec.epilog.vector.body200:                        ; preds = %vec.epilog.vector.body200, %vec.epilog.ph198
  %index201 = phi i64 [ %vec.epilog.resume.val193, %vec.epilog.ph198 ], [ %index.next203, %vec.epilog.vector.body200 ] ; 2 uses
  %i.dl = add nuw i64 %indvars.iv114, %index201   ; 2 uses
  %i.dm = getelementptr [8 x i8], ptr %invariant.gep142, i64 %i.dl
  %wide.load202 = load <4 x double>, ptr %i.dm, align 8, !tbaa !9, !alias.scope !26
  %i.dn = getelementptr [8 x i8], ptr %invariant.gep144, i64 %i.dl
  store <4 x double> %wide.load202, ptr %i.dn, align 8, !tbaa !9, !alias.scope !29, !noalias !26
  %index.next203 = add nuw i64 %index201, 4       ; 2 uses
  %i.do = icmp eq i64 %index.next203, %n.vec199
  br i1 %i.do, label %vec.epilog.middle.block204, label %vec.epilog.vector.body200, !llvm.loop !32

vec.epilog.middle.block204:                       ; preds = %vec.epilog.vector.body200
  %cmp.n205 = icmp eq i64 %i.cr, %n.vec199
  br i1 %cmp.n205, label %._crit_edge86, label %vec.epilog.scalar.ph195.preheader

vec.epilog.scalar.ph195.preheader:                ; preds = %vector.memcheck169, %iter.check194, %vec.epilog.iter.check196, %vec.epilog.middle.block204
  %indvars.iv116.ph = phi i64 [ %indvars.iv114, %iter.check194 ], [ %indvars.iv114, %vector.memcheck169 ], [ %i.cz, %vec.epilog.iter.check196 ], [ %i.dk, %vec.epilog.middle.block204 ] ; 4 uses
  %i.dp = sub i64 %wide.trip.count119, %indvars.iv116.ph
  %xtraiter247 = and i64 %i.dp, 7                 ; 2 uses
  %lcmp.mod248.not = icmp eq i64 %xtraiter247, 0
  br i1 %lcmp.mod248.not, label %vec.epilog.scalar.ph195.prol.loopexit, label %vec.epilog.scalar.ph195.prol

vec.epilog.scalar.ph195.prol:                     ; preds = %vec.epilog.scalar.ph195.preheader, %vec.epilog.scalar.ph195.prol
  %indvars.iv116.prol = phi i64 [ %indvars.iv.next117.prol, %vec.epilog.scalar.ph195.prol ], [ %indvars.iv116.ph, %vec.epilog.scalar.ph195.preheader ] ; 3 uses
  %prol.iter249 = phi i64 [ %prol.iter249.next, %vec.epilog.scalar.ph195.prol ], [ 0, %vec.epilog.scalar.ph195.preheader ]
  %gep143.prol = getelementptr [8 x i8], ptr %invariant.gep142, i64 %indvars.iv116.prol
  %i.dq = load double, ptr %gep143.prol, align 8, !tbaa !9
  %gep145.prol = getelementptr [8 x i8], ptr %invariant.gep144, i64 %indvars.iv116.prol
  store double %i.dq, ptr %gep145.prol, align 8, !tbaa !9
end_hunk_0
