loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@hypre_SMGResidual:bb.a
  %i.is = add nuw nsw i32 %i.io, 1
  %i.it = mul nsw i32 %i.ir, %i.is
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.iu = phi i32 [ %i.it, %bb.n ], [ 0, %bb.m ]
  %i.iv = load i32, ptr %i.qc, align 4, !tbaa !4
  %i.iw = load i32, ptr %i.hd, align 4, !tbaa !4
  %i.ix = sub nsw i32 %i.iv, %i.iw                ; 2 uses
  %i.iy = add nsw i32 %i.iu, %i.in
  %i.iz = add nuw nsw i32 %i.ix, 1
  %i.ja = mul nsw i32 %i.iz, %i.iy
  %.inv.us = icmp slt i32 %i.ix, 0
  %i.jb = select i1 %.inv.us, i32 0, i32 %i.ja
  %i.jc = add i32 %i.jb, %i.il
  %i.jd = sext i32 %i.jc to i64                   ; 2 uses
  %i.je = getelementptr inbounds [8 x i8], ptr %i.ij, i64 %i.jd ; 4 uses
  %i.jf = call i32 @hypre_BoxGetStrideSize(ptr noundef %i.hr, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #5 ; 0 uses
  %i.jg = load i32, ptr %i.hr, align 4, !tbaa !4  ; 3 uses
  %i.jh = load i32, ptr %i.ha, align 4, !tbaa !4  ; 2 uses
  %i.ji = sub i32 %i.jg, %i.jh
  %i.jj = load i32, ptr %i.hs, align 4, !tbaa !4  ; 3 uses
  %i.jk = load i32, ptr %i.qf, align 4, !tbaa !4  ; 2 uses
  %i.jl = sub i32 %i.jj, %i.jk
  %i.jm = load i32, ptr %i.qh, align 4, !tbaa !4
  %i.jn = sub nsw i32 %i.jm, %i.jk                ; 3 uses
  %i.jo = icmp sgt i32 %i.jn, -1                  ; 2 uses
  br i1 %i.jo, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.jp = load i32, ptr %i.ht, align 4, !tbaa !4
  %i.jq = load i32, ptr %i.qi, align 4, !tbaa !4
  %i.jr = sub nsw i32 %i.jp, %i.jq
  %i.js = add nuw nsw i32 %i.jn, 1
  %i.jt = mul nsw i32 %i.jr, %i.js
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ju = phi i32 [ %i.jt, %bb.p ], [ 0, %bb.o ]
  %i.jv = load i32, ptr %i.qg, align 4, !tbaa !4
  %i.jw = sub nsw i32 %i.jv, %i.jh                ; 2 uses
  %i.jx = icmp sgt i32 %i.jw, -1                  ; 2 uses
  %i.jy = add nsw i32 %i.jl, %i.ju
  %i.jz = add nuw nsw i32 %i.jw, 1                ; 3 uses
  %i.ka = mul nsw i32 %i.jz, %i.jy
  %i.kb = select i1 %i.jx, i32 %i.ka, i32 0
  %i.kc = add nsw i32 %i.ji, %i.kb
  %i.kd = load i32, ptr %i.hd, align 4, !tbaa !4  ; 2 uses
  %i.ke = sub i32 %i.jg, %i.kd
  %i.kf = load i32, ptr %i.qe, align 4, !tbaa !4  ; 4 uses
  %i.kg = sub i32 %i.jj, %i.kf
  %i.kh = load i32, ptr %i.qd, align 4, !tbaa !4  ; 3 uses
  %i.ki = sub nsw i32 %i.kh, %i.kf                ; 3 uses
  %i.kj = icmp sgt i32 %i.ki, -1                  ; 2 uses
  br i1 %i.kj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.kk = load i32, ptr %i.ht, align 4, !tbaa !4
  %i.kl = load i32, ptr %i.qj, align 4, !tbaa !4
  %i.km = sub nsw i32 %i.kk, %i.kl
  %i.kn = add nuw nsw i32 %i.ki, 1
  %i.ko = mul nsw i32 %i.km, %i.kn
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.kp = phi i32 [ %i.ko, %bb.r ], [ 0, %bb.q ]
  %i.kq = load i32, ptr %i.qc, align 4, !tbaa !4
  %i.kr = sub nsw i32 %i.kq, %i.kd                ; 2 uses
  %i.ks = icmp sgt i32 %i.kr, -1                  ; 2 uses
  %i.kt = add nsw i32 %i.kg, %i.kp
  %i.ku = add nuw nsw i32 %i.kr, 1                ; 3 uses
  %i.kv = mul nsw i32 %i.ku, %i.kt
  %i.kw = select i1 %i.ks, i32 %i.kv, i32 0
  %i.kx = add nsw i32 %i.ke, %i.kw
  %i.ky = load i32, ptr %i.hg, align 4, !tbaa !4  ; 2 uses
  %i.kz = sub i32 %i.jg, %i.ky
  %i.la = load i32, ptr %i.qk, align 4, !tbaa !4  ; 2 uses
  %i.lb = sub i32 %i.jj, %i.la
  %i.lc = load i32, ptr %i.qm, align 4, !tbaa !4
  %i.ld = sub nsw i32 %i.lc, %i.la                ; 3 uses
  %i.le = icmp sgt i32 %i.ld, -1                  ; 2 uses
  br i1 %i.le, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.lf = load i32, ptr %i.ht, align 4, !tbaa !4
  %i.lg = load i32, ptr %i.qn, align 4, !tbaa !4
  %i.lh = sub nsw i32 %i.lf, %i.lg
  %i.li = add nuw nsw i32 %i.ld, 1
  %i.lj = mul nsw i32 %i.lh, %i.li
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.lk = phi i32 [ %i.lj, %bb.t ], [ 0, %bb.s ]
  %i.ll = load i32, ptr %i.ql, align 4, !tbaa !4
  %i.lm = sub nsw i32 %i.ll, %i.ky                ; 2 uses
  %i.ln = icmp sgt i32 %i.lm, -1                  ; 2 uses
  %i.lo = add nsw i32 %i.lb, %i.lk
  %i.lp = add nuw nsw i32 %i.lm, 1                ; 3 uses
  %i.lq = mul nsw i32 %i.lp, %i.lo
  %i.lr = select i1 %i.ln, i32 %i.lq, i32 0
  %i.ls = add nsw i32 %i.kz, %i.lr
  %i.lt = load i32, ptr %i.c, align 4, !tbaa !4   ; 3 uses
  br i1 %i.jx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.lu = load i32, ptr %i.y, align 8, !tbaa !4
  %i.lv = mul nsw i32 %i.lu, %i.jz
  %i.lw = load i32, ptr %i.z, align 4, !tbaa !4
  %i.lx = mul nsw i32 %i.lw, %i.jz
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.ly = phi i32 [ %i.lv, %bb.v ], [ 0, %bb.u ]  ; 2 uses
  %i.lz = phi i32 [ %i.lx, %bb.v ], [ 0, %bb.u ]
  %i.ma = add nuw nsw i32 %i.jn, 1
  %i.mb = mul nsw i32 %i.lz, %i.ma
  %i.mc = select i1 %i.jo, i32 %i.mb, i32 0
  br i1 %i.ks, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.md = load i32, ptr %i.y, align 8, !tbaa !4
  %i.me = mul nsw i32 %i.md, %i.ku
  %i.mf = load i32, ptr %i.z, align 4, !tbaa !4
  %i.mg = mul nsw i32 %i.mf, %i.ku
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.mh = phi i32 [ %i.me, %bb.x ], [ 0, %bb.w ]  ; 2 uses
  %i.mi = phi i32 [ %i.mg, %bb.x ], [ 0, %bb.w ]
  %i.mj = add nuw nsw i32 %i.ki, 1
  %i.mk = mul nsw i32 %i.mi, %i.mj
  %i.ml = select i1 %i.kj, i32 %i.mk, i32 0
  br i1 %i.ln, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.mm = load i32, ptr %i.y, align 8, !tbaa !4
  %i.mn = mul nsw i32 %i.mm, %i.lp
  %i.mo = load i32, ptr %i.z, align 4, !tbaa !4
  %i.mp = mul nsw i32 %i.mo, %i.lp
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.mq = phi i32 [ %i.mn, %bb.z ], [ 0, %bb.y ]  ; 2 uses
  %i.mr = phi i32 [ %i.mp, %bb.z ], [ 0, %bb.y ]
  %i.ms = load i32, ptr %i.b, align 4, !tbaa !4   ; 9 uses
  %i.mt = load i32, ptr %i.aa, align 4, !tbaa !4  ; 6 uses
  %i.mu = load i32, ptr %i.ab, align 4, !tbaa !4  ; 3 uses
  %.0454.us = call i32 @llvm.smax.i32(i32 %i.mt, i32 %i.ms)
  %.1.us = call i32 @llvm.smax.i32(i32 %i.mu, i32 %.0454.us)
  %i.mv = icmp sgt i32 %.1.us, 0
  br i1 %i.mv, label %.preheader555.lr.ph.us, label %._crit_edge622.split.us

._crit_edge622.split.us:                          ; preds = %._crit_edge600.split.us.us.us.us, %.preheader555.lr.ph.us, %bb.aa
  %indvars.iv.next690 = add nuw nsw i64 %indvars.iv689, 1 ; 2 uses
  %exitcond692.not = icmp eq i64 %indvars.iv.next690, %wide.trip.count
  br i1 %exitcond692.not, label %._crit_edge630.us, label %bb.m, !llvm.loop !78

._crit_edge634.us.loopexit:                       ; preds = %._crit_edge630.us
  %.pre700 = load i32, ptr %i.gr, align 8, !tbaa !69
  br label %._crit_edge634.us

._crit_edge634.us:                                ; preds = %._crit_edge634.us.loopexit, %.lr.ph637.split.us
  %i.mw = phi i32 [ %.pre700, %._crit_edge634.us.loopexit ], [ %i.gu, %.lr.ph637.split.us ] ; 2 uses
  %indvars.iv.next697 = add nuw nsw i64 %indvars.iv696, 1 ; 2 uses
  %i.mx = sext i32 %i.mw to i64
  %i.my = icmp slt i64 %indvars.iv.next697, %i.mx
  br i1 %i.my, label %.lr.ph637.split.us, label %._crit_edge638, !llvm.loop !79

.preheader555.lr.ph.us:                           ; preds = %bb.aa
  %factor.op.mul621.us = mul i32 %i.mt, %i.mq
  %factor.op.mul620.us = mul i32 %i.mt, %i.mh
  %factor.op.mul619.us = mul i32 %i.mt, %i.ly
  %factor.op.mul618.us = mul i32 %i.lt, %i.ms     ; 3 uses
  %i.mz = add nuw nsw i32 %i.ld, 1
  %i.na = mul nsw i32 %i.mr, %i.mz
  %i.nb = select i1 %i.le, i32 %i.na, i32 0
  %i.nc = icmp sgt i32 %i.mu, 0
  %i.nd = icmp sgt i32 %i.mt, 0
  %i.ne = sub i32 %i.ly, %factor.op.mul618.us
  %i.nf = sub i32 %i.mh, %factor.op.mul618.us
  %i.ng = sub i32 %i.mq, %factor.op.mul618.us
  %i.nh = sub i32 %i.mc, %factor.op.mul619.us
  %i.ni = sub i32 %i.ml, %factor.op.mul620.us
  %i.nj = sub i32 %i.nb, %factor.op.mul621.us
  %brmerge646.not732 = and i1 %i.nc, %i.nd
  %i.nk = icmp sgt i32 %i.ms, 0
  %or.cond727 = and i1 %brmerge646.not732, %i.nk
  br i1 %or.cond727, label %.preheader554.us.us.us.preheader, label %._crit_edge622.split.us

.preheader554.us.us.us.preheader:                 ; preds = %.preheader555.lr.ph.us
  %i.nl = sext i32 %i.lt to i64                   ; 9 uses
  %i.nm = add nsw i32 %i.ms, -1
  %i.nn = zext i32 %i.nm to i64
  %i.no = shl nuw nsw i64 %i.nn, 3                ; 3 uses
  %scevgep742 = getelementptr i8, ptr %scevgep741, i64 %i.no
  %i.np = shl nsw i64 %i.ic, 3                    ; 2 uses
  %scevgep744 = getelementptr i8, ptr %i.hw, i64 %i.np
  %scevgep746 = getelementptr i8, ptr %i.hw, i64 8
  %i.nq = getelementptr i8, ptr %scevgep746, i64 %i.np
  %scevgep747 = getelementptr i8, ptr %i.nq, i64 %i.no
  %5 = add nsw i64 %i.ii, %i.jd
  %i.nr = shl nsw i64 %5, 3                       ; 2 uses
  %scevgep749 = getelementptr i8, ptr %i.ie, i64 %i.nr
  %scevgep751 = getelementptr i8, ptr %i.ie, i64 8
  %i.ns = getelementptr i8, ptr %scevgep751, i64 %i.nr
  %scevgep752 = getelementptr i8, ptr %i.ns, i64 %i.no
  %i.nt = zext nneg i32 %i.ms to i64              ; 2 uses
  %min.iters.check = icmp ugt i32 %i.ms, 5
  %ident.check.not = icmp eq i32 %i.lt, 1
  %or.cond783 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %i.nt, 2147483644              ; 6 uses
  %i.nu = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.nt
  br label %.preheader554.us.us.us

.preheader554.us.us.us:                           ; preds = %.preheader554.us.us.us.preheader, %._crit_edge600.split.us.us.us.us
  %.3615.us.us.us = phi i32 [ %i.py, %._crit_edge600.split.us.us.us.us ], [ 0, %.preheader554.us.us.us.preheader ]
  %.3489614.us.us.us = phi i32 [ %i.px, %._crit_edge600.split.us.us.us.us ], [ %i.ls, %.preheader554.us.us.us.preheader ]
  %.0493613.us.us.us = phi i32 [ %i.pw, %._crit_edge600.split.us.us.us.us ], [ %i.kx, %.preheader554.us.us.us.preheader ]
  %.0496612.us.us.us = phi i32 [ %i.pv, %._crit_edge600.split.us.us.us.us ], [ %i.kc, %.preheader554.us.us.us.preheader ]
  br label %.preheader.us.us.us.us

.preheader.us.us.us.us:                           ; preds = %._crit_edge592.us.us.us.us, %.preheader554.us.us.us
  %.3476599.us.us.us.us = phi i32 [ 0, %.preheader554.us.us.us ], [ %i.pu, %._crit_edge592.us.us.us.us ]
  %.4598.us.us.us.us = phi i32 [ %.3489614.us.us.us, %.preheader554.us.us.us ], [ %i.pt, %._crit_edge592.us.us.us.us ]
  %.1494597.us.us.us.us = phi i32 [ %.0493613.us.us.us, %.preheader554.us.us.us ], [ %i.ps, %._crit_edge592.us.us.us.us ]
  %.1497596.us.us.us.us = phi i32 [ %.0496612.us.us.us, %.preheader554.us.us.us ], [ %i.pr, %._crit_edge592.us.us.us.us ]
  %i.nv = sext i32 %.4598.us.us.us.us to i64      ; 5 uses
  %i.nw = sext i32 %.1494597.us.us.us.us to i64   ; 5 uses
  %i.nx = sext i32 %.1497596.us.us.us.us to i64   ; 5 uses
  br i1 %or.cond783, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.preheader.us.us.us.us
  %i.ny = shl nsw i64 %i.nv, 3                    ; 2 uses
  %scevgep739 = getelementptr i8, ptr %scevgep, i64 %i.ny ; 2 uses
  %scevgep743 = getelementptr i8, ptr %scevgep742, i64 %i.ny ; 2 uses
  %i.nz = shl nsw i64 %i.nx, 3                    ; 2 uses
  %scevgep745 = getelementptr i8, ptr %scevgep744, i64 %i.nz
  %scevgep748 = getelementptr i8, ptr %scevgep747, i64 %i.nz
  %i.oa = shl nsw i64 %i.nw, 3                    ; 2 uses
  %scevgep750 = getelementptr i8, ptr %scevgep749, i64 %i.oa
  %scevgep753 = getelementptr i8, ptr %scevgep752, i64 %i.oa
  %bound0 = icmp ult ptr %scevgep739, %scevgep748
  %bound1 = icmp ult ptr %scevgep745, %scevgep743
  %found.conflict = and i1 %bound0, %bound1
  %bound0754 = icmp ult ptr %scevgep739, %scevgep753
  %bound1755 = icmp ult ptr %scevgep750, %scevgep743
  %found.conflict756 = and i1 %bound0754, %bound1755
  %conflict.rdx = or i1 %found.conflict, %found.conflict756
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ob = add nsw i64 %n.vec, %i.nx               ; 2 uses
  %i.oc = add nsw i64 %n.vec, %i.nw               ; 2 uses
  %i.od = add nsw i64 %n.vec, %i.nv               ; 2 uses
  %invariant.gep807 = getelementptr [8 x i8], ptr %i.id, i64 %i.nx
  %invariant.gep809 = getelementptr [8 x i8], ptr %i.je, i64 %i.nw
  %invariant.gep811 = getelementptr [8 x i8], ptr %i.hm, i64 %i.nv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %gep808 = getelementptr [8 x i8], ptr %invariant.gep807, i64 %index ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %gep808, i64 16
  %wide.load = load <2 x double>, ptr %gep808, align 8, !tbaa !54, !alias.scope !80
  %wide.load757 = load <2 x double>, ptr %i.oe, align 8, !tbaa !54, !alias.scope !80
  %gep810 = getelementptr [8 x i8], ptr %invariant.gep809, i64 %index ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %gep810, i64 16
  %wide.load758 = load <2 x double>, ptr %gep810, align 8, !tbaa !54, !alias.scope !83
  %wide.load759 = load <2 x double>, ptr %i.of, align 8, !tbaa !54, !alias.scope !83
  %gep812 = getelementptr [8 x i8], ptr %invariant.gep811, i64 %index ; 3 uses
  %i.og = getelementptr inbounds nuw i8, ptr %gep812, i64 16 ; 2 uses
  %wide.load760 = load <2 x double>, ptr %gep812, align 8, !tbaa !54, !alias.scope !85, !noalias !87
  %wide.load761 = load <2 x double>, ptr %i.og, align 8, !tbaa !54, !alias.scope !85, !noalias !87
  %i.oh = fneg <2 x double> %wide.load
  %i.oi = fneg <2 x double> %wide.load757
  %i.oj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oh, <2 x double> %wide.load758, <2 x double> %wide.load760)
  %i.ok = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oi, <2 x double> %wide.load759, <2 x double> %wide.load761)
  store <2 x double> %i.oj, ptr %gep812, align 8, !tbaa !54, !alias.scope !85, !noalias !87
  store <2 x double> %i.ok, ptr %i.og, align 8, !tbaa !54, !alias.scope !85, !noalias !87
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ol = icmp eq i64 %index.next, %n.vec
  br i1 %i.ol, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge592.us.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.us.us.us, %middle.block
  %indvars.iv679.ph = phi i64 [ %i.nx, %vector.memcheck ], [ %i.nx, %.preheader.us.us.us.us ], [ %i.ob, %middle.block ] ; 3 uses
  %indvars.iv677.ph = phi i64 [ %i.nw, %vector.memcheck ], [ %i.nw, %.preheader.us.us.us.us ], [ %i.oc, %middle.block ] ; 3 uses
  %indvars.iv675.ph = phi i64 [ %i.nv, %vector.memcheck ], [ %i.nv, %.preheader.us.us.us.us ], [ %i.od, %middle.block ] ; 3 uses
  %.3480590.us.us.us.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us.us.us.us ], [ %i.nu, %middle.block ] ; 4 uses
  %i.om = sub i32 %i.ms, %.3480590.us.us.us.us.ph
  %.neg = add i32 %.3480590.us.us.us.us.ph, 1
  %xtraiter795 = and i32 %i.om, 1
  %lcmp.mod796.not = icmp eq i32 %xtraiter795, 0
  br i1 %lcmp.mod796.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.on = getelementptr inbounds [8 x i8], ptr %i.id, i64 %indvars.iv679.ph
  %i.oo = load double, ptr %i.on, align 8, !tbaa !54
  %i.op = getelementptr inbounds [8 x i8], ptr %i.je, i64 %indvars.iv677.ph
  %i.oq = load double, ptr %i.op, align 8, !tbaa !54
  %i.or = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %indvars.iv675.ph ; 2 uses
  %i.os = load double, ptr %i.or, align 8, !tbaa !54
  %i.ot = fneg double %i.oo
  %i.ou = call double @llvm.fmuladd.f64(double %i.ot, double %i.oq, double %i.os)
  store double %i.ou, ptr %i.or, align 8, !tbaa !54
  %indvars.iv.next680.prol = add nsw i64 %indvars.iv679.ph, %i.nl ; 2 uses
  %indvars.iv.next678.prol = add nsw i64 %indvars.iv677.ph, %i.nl ; 2 uses
  %indvars.iv.next676.prol = add nsw i64 %indvars.iv675.ph, %i.nl ; 2 uses
  %i.ov = add nuw nsw i32 %.3480590.us.us.us.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next680.lcssa789.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next680.prol, %scalar.ph.prol ]
  %indvars.iv.next678.lcssa788.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next678.prol, %scalar.ph.prol ]
  %indvars.iv.next676.lcssa787.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next676.prol, %scalar.ph.prol ]
  %indvars.iv679.unr = phi i64 [ %indvars.iv679.ph, %scalar.ph.preheader ], [ %indvars.iv.next680.prol, %scalar.ph.prol ]
  %indvars.iv677.unr = phi i64 [ %indvars.iv677.ph, %scalar.ph.preheader ], [ %indvars.iv.next678.prol, %scalar.ph.prol ]
  %indvars.iv675.unr = phi i64 [ %indvars.iv675.ph, %scalar.ph.preheader ], [ %indvars.iv.next676.prol, %scalar.ph.prol ]
  %.3480590.us.us.us.us.unr = phi i32 [ %.3480590.us.us.us.us.ph, %scalar.ph.preheader ], [ %i.ov, %scalar.ph.prol ]
  %i.ow = icmp eq i32 %i.ms, %.neg
  br i1 %i.ow, label %._crit_edge592.us.us.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv679 = phi i64 [ %indvars.iv.next680.1, %scalar.ph ], [ %indvars.iv679.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %indvars.iv677 = phi i64 [ %indvars.iv.next678.1, %scalar.ph ], [ %indvars.iv677.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %indvars.iv675 = phi i64 [ %indvars.iv.next676.1, %scalar.ph ], [ %indvars.iv675.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %.3480590.us.us.us.us = phi i32 [ %i.pn, %scalar.ph ], [ %.3480590.us.us.us.us.unr, %scalar.ph.prol.loopexit ]
  %i.ox = getelementptr inbounds [8 x i8], ptr %i.id, i64 %indvars.iv679
  %i.oy = load double, ptr %i.ox, align 8, !tbaa !54
  %i.oz = getelementptr inbounds [8 x i8], ptr %i.je, i64 %indvars.iv677
  %i.pa = load double, ptr %i.oz, align 8, !tbaa !54
  %i.pb = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %indvars.iv675 ; 2 uses
  %i.pc = load double, ptr %i.pb, align 8, !tbaa !54
  %i.pd = fneg double %i.oy
  %i.pe = call double @llvm.fmuladd.f64(double %i.pd, double %i.pa, double %i.pc)
  store double %i.pe, ptr %i.pb, align 8, !tbaa !54
  %indvars.iv.next680 = add nsw i64 %indvars.iv679, %i.nl ; 2 uses
  %indvars.iv.next678 = add nsw i64 %indvars.iv677, %i.nl ; 2 uses
  %indvars.iv.next676 = add nsw i64 %indvars.iv675, %i.nl ; 2 uses
  %i.pf = getelementptr inbounds [8 x i8], ptr %i.id, i64 %indvars.iv.next680
  %i.pg = load double, ptr %i.pf, align 8, !tbaa !54
  %i.ph = getelementptr inbounds [8 x i8], ptr %i.je, i64 %indvars.iv.next678
  %i.pi = load double, ptr %i.ph, align 8, !tbaa !54
  %i.pj = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %indvars.iv.next676 ; 2 uses
  %i.pk = load double, ptr %i.pj, align 8, !tbaa !54
  %i.pl = fneg double %i.pg
  %i.pm = call double @llvm.fmuladd.f64(double %i.pl, double %i.pi, double %i.pk)
  store double %i.pm, ptr %i.pj, align 8, !tbaa !54
  %indvars.iv.next680.1 = add nsw i64 %indvars.iv.next680, %i.nl ; 2 uses
  %indvars.iv.next678.1 = add nsw i64 %indvars.iv.next678, %i.nl ; 2 uses
  %indvars.iv.next676.1 = add nsw i64 %indvars.iv.next676, %i.nl ; 2 uses
  %i.pn = add nuw nsw i32 %.3480590.us.us.us.us, 2 ; 2 uses
  %exitcond686.not.1 = icmp eq i32 %i.pn, %i.ms
  br i1 %exitcond686.not.1, label %._crit_edge592.us.us.us.us, label %scalar.ph, !llvm.loop !89

._crit_edge592.us.us.us.us:                       ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next680.lcssa = phi i64 [ %i.ob, %middle.block ], [ %indvars.iv.next680.lcssa789.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next680.1, %scalar.ph ]
  %indvars.iv.next678.lcssa = phi i64 [ %i.oc, %middle.block ], [ %indvars.iv.next678.lcssa788.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next678.1, %scalar.ph ]
  %indvars.iv.next676.lcssa = phi i64 [ %i.od, %middle.block ], [ %indvars.iv.next676.lcssa787.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next676.1, %scalar.ph ]
  %i.po = trunc nsw i64 %indvars.iv.next680.lcssa to i32
  %i.pp = trunc nsw i64 %indvars.iv.next678.lcssa to i32
  %i.pq = trunc nsw i64 %indvars.iv.next676.lcssa to i32
  %i.pr = add nsw i32 %i.ne, %i.po                ; 2 uses
  %i.ps = add nsw i32 %i.nf, %i.pp                ; 2 uses
  %i.pt = add nsw i32 %i.ng, %i.pq                ; 2 uses
  %i.pu = add nuw nsw i32 %.3476599.us.us.us.us, 1 ; 2 uses
  %exitcond687.not = icmp eq i32 %i.pu, %i.mt
  br i1 %exitcond687.not, label %._crit_edge600.split.us.us.us.us, label %.preheader.us.us.us.us, !llvm.loop !90

._crit_edge600.split.us.us.us.us:                 ; preds = %._crit_edge592.us.us.us.us
  %i.pv = add nsw i32 %i.nh, %i.pr
  %i.pw = add nsw i32 %i.ni, %i.ps
  %i.px = add nsw i32 %i.nj, %i.pt
  %i.py = add nuw nsw i32 %.3615.us.us.us, 1      ; 2 uses
  %exitcond688.not = icmp eq i32 %i.py, %i.mu
  br i1 %exitcond688.not, label %._crit_edge622.split.us, label %.preheader554.us.us.us, !llvm.loop !91

._crit_edge630.us:                                ; preds = %._crit_edge622.split.us
  %indvars.iv.next694 = add nuw nsw i64 %indvars.iv693, 1 ; 2 uses
  %i.pz = load i32, ptr %i.hn, align 8, !tbaa !50
  %i.qa = sext i32 %i.pz to i64
  %i.qb = icmp slt i64 %indvars.iv.next694, %i.qa
  br i1 %i.qb, label %.lr.ph629.us, label %._crit_edge634.us.loopexit, !llvm.loop !92

.lr.ph633.us:                                     ; preds = %.lr.ph637.split.us
  %i.qc = getelementptr inbounds nuw i8, ptr %i.hd, i64 12 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.hd, i64 16 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.hd, i64 4 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  %i.qg = getelementptr inbounds nuw i8, ptr %i.ha, i64 12
  %i.qh = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.qi = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.qj = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.qk = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  %i.ql = getelementptr inbounds nuw i8, ptr %i.hg, i64 12
  %i.qm = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.qn = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %.pre.pre = load i32, ptr %i.qd, align 4, !tbaa !4
  %.pre699.pre = load i32, ptr %i.qe, align 4, !tbaa !4
  %i.qo = shl nsw i64 %i.hl, 3                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.hh, i64 %i.qo
  %scevgep740 = getelementptr i8, ptr %i.hh, i64 8
end_hunk_0
